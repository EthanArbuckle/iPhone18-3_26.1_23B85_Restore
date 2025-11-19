uint64_t (*__call_test_hook(const char *a1))(void)
{
  if (!dlhandle)
  {
    dlhandle = dlopen(0, 1);
  }

  result = dlsym(dlhandle, a1);
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t archive_read_support_filter_by_code(int *a1, int a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_filter_by_code") == -30)
  {
    return -30;
  }

  else
  {
    switch(a2)
    {
      case 0:
        support_filter_none = archive_read_support_filter_none(a1);
        break;
      case 1:
        support_filter_none = archive_read_support_filter_gzip(a1);
        break;
      case 2:
        support_filter_none = archive_read_support_filter_bzip2(a1);
        break;
      case 3:
        support_filter_none = archive_read_support_filter_compress(a1);
        break;
      case 5:
        support_filter_none = archive_read_support_filter_lzma(a1);
        break;
      case 6:
        support_filter_none = archive_read_support_filter_xz(a1);
        break;
      case 7:
        support_filter_none = archive_read_support_filter_uu(a1);
        break;
      case 8:
        support_filter_none = archive_read_support_filter_rpm(a1);
        break;
      case 9:
        support_filter_none = archive_read_support_filter_lzip(a1);
        break;
      case 10:
        support_filter_none = archive_read_support_filter_lrzip(a1);
        break;
      case 11:
        support_filter_none = archive_read_support_filter_lzop(a1);
        break;
      case 12:
        support_filter_none = archive_read_support_filter_grzip(a1);
        break;
      case 13:
        support_filter_none = archive_read_support_filter_lz4(a1);
        break;
      case 14:
        support_filter_none = archive_read_support_filter_zstd(a1);
        break;
      default:
        support_filter_none = -30;
        break;
    }
  }

  return support_filter_none;
}

uint64_t errmsg(const char *a1)
{
  v3 = a1;
  result = strlen(a1);
  for (__nbyte = result; __nbyte; __nbyte -= result)
  {
    result = write(2, v3, __nbyte);
    if (result <= 0)
    {
      break;
    }

    v3 += result;
  }

  return result;
}

_BYTE *write_all_states(_BYTE *result, int a2)
{
  *result = 0;
  while (1)
  {
    v2 = a2 & -a2;
    if (!v2)
    {
      break;
    }

    a2 &= ~v2;
    state_name(v2);
    result = __strcat_chk();
    if (a2)
    {
      result = __strcat_chk();
    }
  }

  return result;
}

const char *state_name(int a1)
{
  switch(a1)
  {
    case 1:
      return "new";
    case 2:
      return "header";
    case 4:
      return "data";
    case 0x10:
      return "eof";
    case 0x20:
      return "closed";
    case 0x8000:
      return "fatal";
  }

  return "??";
}

uint64_t aes_ctr_init(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 40) = a3;
  __memcpy_chk();
  __memset_chk();
  *(a1 + 76) = 16;
  if (CCCryptorCreateWithMode(0, 1u, 0, 0, 0, a2, a3, 0, 0, 0, 0, a1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t aes_ctr_update(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v11 = a1 + 60;
  v9 = *(a1 + 76);
  if (a3 >= *a5)
  {
    v7 = *a5;
  }

  else
  {
    LODWORD(v7) = a3;
  }

  for (i = 0; i < v7; ++i)
  {
    if (v9 == 16)
    {
      aes_ctr_increase_counter(a1);
      if (aes_ctr_encrypt_counter(a1))
      {
        return -1;
      }

      while (v7 - i >= 0x10)
      {
        for (j = 0; j < 0x10; ++j)
        {
          *(a4 + i + j) = *(a2 + i + j) ^ *(v11 + j);
        }

        i += 16;
        aes_ctr_increase_counter(a1);
        if (aes_ctr_encrypt_counter(a1))
        {
          return -1;
        }
      }

      v9 = 0;
      if (i >= v7)
      {
        break;
      }
    }

    v5 = v9++;
    *(a4 + i) = *(a2 + i) ^ *(v11 + v5);
  }

  *(a1 + 76) = v9;
  *a5 = i;
  return 0;
}

uint64_t aes_ctr_release(uint64_t a1)
{
  v1 = *(a1 + 40);
  __memset_chk();
  __memset_chk();
  if (*a1)
  {
    CCCryptorRelease(*a1);
    *a1 = 0;
  }

  return 0;
}

uint64_t aes_ctr_increase_counter(uint64_t result)
{
  for (i = 0; i < 8; ++i)
  {
    v1 = (result + 44 + i);
    v2 = *v1 + 1;
    *v1 = v2;
    if (v2)
    {
      break;
    }
  }

  return result;
}

uint64_t aes_ctr_encrypt_counter(CCCryptorRef *a1)
{
  cryptorRef = *a1;
  v3 = CCCryptorReset(*a1, 0);
  if (!v3 || v3 == -4305)
  {
    if (CCCryptorUpdate(cryptorRef, a1 + 44, 0x10uLL, a1 + 60, 0x10uLL, 0))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t archive_entry_dev(_DWORD *a1)
{
  if (a1[32])
  {
    return (a1[35] | (a1[34] << 24));
  }

  else
  {
    return a1[33];
  }
}

uint64_t archive_entry_devmajor(_DWORD *a1)
{
  if (a1[32])
  {
    return a1[34];
  }

  else
  {
    return HIBYTE(a1[33]);
  }
}

uint64_t archive_entry_devminor(_DWORD *a1)
{
  if (a1[32])
  {
    return a1[35];
  }

  else
  {
    return a1[33] & 0xFFFFFF;
  }
}

uint64_t archive_entry_fflags_text(_DWORD **a1)
{
  v4 = a1;
  v3 = 0;
  if (archive_mstring_get_mbs(*a1, (a1 + 21), &v3))
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }
  }

  else if (v3)
  {
    return v3;
  }

  if (!v4[34] && !v4[35])
  {
    return 0;
  }

  v2 = ae_fflagstostr(v4[34], v4[35]);
  if (!v2)
  {
    return 0;
  }

  archive_mstring_copy_mbs((v4 + 21), v2);
  free(v2);
  if (!archive_mstring_get_mbs(*v4, (v4 + 21), &v3))
  {
    return v3;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

_BYTE *ae_fflagstostr(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v9 = a1 | a2;
  size = 0;
  for (i = &fileflags; *i; i += 4)
  {
    if ((v9 & (i[2] | i[3])) != 0)
    {
      size += strlen(*i) + 1;
      v9 &= ~(i[2] | i[3]);
    }
  }

  if (size)
  {
    v12 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v12)
    {
      return 0;
    }

    v11 = v12;
    for (j = &fileflags; ; j += 4)
    {
      if (!*j)
      {
        *v11 = 0;
        return v12;
      }

      if ((v14 & j[2]) != 0 || (v13 & j[3]) != 0)
      {
        v10 = (*j + 2);
      }

      else
      {
        if ((v14 & j[3]) == 0 && (v13 & j[2]) == 0)
        {
          continue;
        }

        v10 = *j;
      }

      v14 &= ~(j[2] | j[3]);
      v13 &= ~(j[2] | j[3]);
      if (v11 > v12)
      {
        v2 = v11++;
        *v2 = 44;
      }

      do
      {
        v3 = v10++;
        LODWORD(v3) = *v3;
        v4 = v11++;
        *v4 = v3;
      }

      while (v3);
      --v11;
    }
  }

  return 0;
}

uint64_t archive_entry_gname(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_mbs(*a1, (a1 + 36), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_gname_utf8(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_utf8(*a1, (a1 + 36), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_gname_w(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_wcs(*a1, (a1 + 36), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_hardlink_utf8(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 1) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_utf8(*v3, (v3 + 49), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_hardlink_w(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 1) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_wcs(*v3, (v3 + 49), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t _archive_entry_hardlink_l(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*(a1 + 160))
  {
    return archive_mstring_get_mbs_l(*a1, a1 + 392, a2, a3, a4);
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    return 0;
  }
}

uint64_t archive_entry_rdev(_DWORD *a1)
{
  if (a1[36])
  {
    return (a1[39] | (a1[38] << 24));
  }

  else
  {
    return a1[37];
  }
}

uint64_t archive_entry_rdevmajor(_DWORD *a1)
{
  if (a1[36])
  {
    return a1[38];
  }

  else
  {
    return HIBYTE(a1[37]);
  }
}

uint64_t archive_entry_rdevminor(_DWORD *a1)
{
  if (a1[36])
  {
    return a1[39];
  }

  else
  {
    return a1[37] & 0xFFFFFF;
  }
}

uint64_t archive_entry_sourcepath(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_mbs(*a1, (a1 + 101), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_sourcepath_w(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (archive_mstring_get_wcs(*a1, (a1 + 101), v2))
  {
    return 0;
  }

  else
  {
    return v2[0];
  }
}

uint64_t archive_entry_symlink_utf8(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 2) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_utf8(*v3, (v3 + 75), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_symlink_w(uint64_t a1)
{
  v3 = a1;
  v2 = 0;
  if ((*(a1 + 160) & 2) == 0)
  {
    return 0;
  }

  if (!archive_mstring_get_wcs(*v3, (v3 + 75), &v2))
  {
    return v2;
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t _archive_entry_symlink_l(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if ((*(a1 + 160) & 2) != 0)
  {
    return archive_mstring_get_mbs_l(*a1, a1 + 600, a2, a3, a4);
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    return 0;
  }
}

uint64_t archive_entry_uname(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_mbs(*a1, (a1 + 88), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_uname_utf8(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_utf8(*a1, (a1 + 88), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

uint64_t archive_entry_uname_w(_DWORD **a1)
{
  v2[1] = a1;
  v2[0] = 0;
  if (!archive_mstring_get_wcs(*a1, (a1 + 88), v2))
  {
    return v2[0];
  }

  if (*__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return 0;
}

void archive_entry_set_fflags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  archive_mstring_clean(a1 + 168);
  *(a1 + 272) = a2;
  *(a1 + 280) = a3;
}

_BYTE *ae_strtofflags(_BYTE *k, void *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  while (1)
  {
    v6 = 1;
    if (*k != 9)
    {
      v6 = 1;
      if (*k != 32)
      {
        v6 = *k == 44;
      }
    }

    if (!v6)
    {
      break;
    }

    ++k;
  }

  while (*k)
  {
    for (i = k; ; ++i)
    {
      v5 = 0;
      if (*i)
      {
        v5 = 0;
        if (*i != 9)
        {
          v5 = 0;
          if (*i != 32)
          {
            v5 = *i != 44;
          }
        }
      }

      if (!v5)
      {
        break;
      }
    }

    __n = i - k;
    for (j = &fileflags; *j; j += 4)
    {
      v7 = strlen(*j);
      if (__n == v7 && !memcmp(k, *j, __n))
      {
        v10 |= j[2];
        v11 |= j[3];
        break;
      }

      if (__n == v7 - 2 && !memcmp(k, *j + 2, __n))
      {
        v11 |= j[2];
        v10 |= j[3];
        break;
      }
    }

    if (!*j && !v9)
    {
      v9 = k;
    }

    for (k = i; ; ++k)
    {
      v4 = 1;
      if (*k != 9)
      {
        v4 = 1;
        if (*k != 32)
        {
          v4 = *k == 44;
        }
      }

      if (!v4)
      {
        break;
      }
    }
  }

  if (a2)
  {
    *a2 = v11;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v9;
}

const __int32 *ae_wcstofflags(const __int32 *k, void *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  while (1)
  {
    v6 = 1;
    if (*k != 9)
    {
      v6 = 1;
      if (*k != 32)
      {
        v6 = *k == 44;
      }
    }

    if (!v6)
    {
      break;
    }

    ++k;
  }

  while (*k)
  {
    for (i = k; ; ++i)
    {
      v5 = 0;
      if (*i)
      {
        v5 = 0;
        if (*i != 9)
        {
          v5 = 0;
          if (*i != 32)
          {
            v5 = *i != 44;
          }
        }
      }

      if (!v5)
      {
        break;
      }
    }

    v8 = i - k;
    for (j = &fileflags; j[1]; j += 4)
    {
      v7 = wcslen(j[1]);
      if (v8 == v7 && !wmemcmp(k, j[1], v8))
      {
        v10 |= j[2];
        v11 |= j[3];
        break;
      }

      if (v8 == v7 - 2 && !wmemcmp(k, j[1] + 2, v8))
      {
        v11 |= j[2];
        v10 |= j[3];
        break;
      }
    }

    if (!j[1] && !v9)
    {
      v9 = k;
    }

    for (k = i; ; ++k)
    {
      v4 = 1;
      if (*k != 9)
      {
        v4 = 1;
        if (*k != 32)
        {
          v4 = *k == 44;
        }
      }

      if (!v4)
      {
        break;
      }
    }
  }

  if (a2)
  {
    *a2 = v11;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v9;
}

uint64_t archive_entry_update_gname_utf8(_DWORD **a1, char *a2)
{
  if (archive_mstring_update_utf8(*a1, (a1 + 36), a2))
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_entry_set_ino64(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v2 = 0;
  }

  *(result + 16) = 0;
  *(result + 160) |= 0x80u;
  *(result + 96) = v2;
  return result;
}

uint64_t archive_entry_set_hardlink(uint64_t a1, const char *a2)
{
  result = archive_mstring_copy_mbs(a1 + 392, a2);
  if (a2)
  {
    *(a1 + 160) |= 1u;
  }

  else
  {
    *(a1 + 160) &= ~1u;
  }

  return result;
}

uint64_t archive_entry_set_hardlink_utf8(uint64_t a1, const char *a2)
{
  result = archive_mstring_copy_utf8(a1 + 392, a2);
  if (a2)
  {
    *(a1 + 160) |= 1u;
  }

  else
  {
    *(a1 + 160) &= ~1u;
  }

  return result;
}

uint64_t archive_entry_copy_hardlink(uint64_t a1, const char *a2)
{
  result = archive_mstring_copy_mbs(a1 + 392, a2);
  if (a2)
  {
    *(a1 + 160) |= 1u;
  }

  else
  {
    *(a1 + 160) &= ~1u;
  }

  return result;
}

uint64_t archive_entry_copy_hardlink_w(uint64_t a1, const __int32 *a2)
{
  result = archive_mstring_copy_wcs(a1 + 392, a2);
  if (a2)
  {
    *(a1 + 160) |= 1u;
  }

  else
  {
    *(a1 + 160) &= ~1u;
  }

  return result;
}

uint64_t archive_entry_update_hardlink_utf8(uint64_t a1, char *a2)
{
  if (a2)
  {
    *(a1 + 160) |= 1u;
  }

  else
  {
    *(a1 + 160) &= ~1u;
  }

  if (archive_mstring_update_utf8(*a1, a1 + 392, a2))
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t _archive_entry_copy_hardlink_l(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v5 = archive_mstring_copy_mbs_len_l(a1 + 392, a2, a3, a4);
  if (!a2 || v5)
  {
    *(a1 + 160) &= ~1u;
  }

  else
  {
    *(a1 + 160) |= 1u;
  }

  return v5;
}

uint64_t archive_entry_set_atime(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3 / 1000000000;
  v3 = a3 % 1000000000;
  if (a3 % 1000000000 < 0)
  {
    --v4;
    LODWORD(v3) = v3 + 1000000000;
  }

  *(result + 16) = 0;
  *(result + 160) |= 4u;
  *(result + 24) = v4;
  *(result + 32) = v3;
  return result;
}

uint64_t archive_entry_unset_atime(uint64_t a1)
{
  result = archive_entry_set_atime(a1, 0, 0);
  *(a1 + 160) &= ~4u;
  return result;
}

uint64_t archive_entry_set_birthtime(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3 / 1000000000;
  v3 = a3 % 1000000000;
  if (a3 % 1000000000 < 0)
  {
    --v4;
    LODWORD(v3) = v3 + 1000000000;
  }

  *(result + 16) = 0;
  *(result + 160) |= 0x20u;
  *(result + 72) = v4;
  *(result + 80) = v3;
  return result;
}

uint64_t archive_entry_unset_birthtime(uint64_t a1)
{
  result = archive_entry_set_birthtime(a1, 0, 0);
  *(a1 + 160) &= ~0x20u;
  return result;
}

uint64_t archive_entry_set_ctime(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3 / 1000000000;
  v3 = a3 % 1000000000;
  if (a3 % 1000000000 < 0)
  {
    --v4;
    LODWORD(v3) = v3 + 1000000000;
  }

  *(result + 16) = 0;
  *(result + 160) |= 8u;
  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t archive_entry_unset_ctime(uint64_t a1)
{
  result = archive_entry_set_ctime(a1, 0, 0);
  *(a1 + 160) &= ~8u;
  return result;
}

_DWORD *archive_entry_set_devmajor(_DWORD *result, int a2)
{
  result[4] = 0;
  result[40] |= 0x100u;
  result[32] = 1;
  result[34] = a2;
  return result;
}

_DWORD *archive_entry_set_devminor(_DWORD *result, int a2)
{
  result[4] = 0;
  result[40] |= 0x100u;
  result[32] = 1;
  result[35] = a2;
  return result;
}

uint64_t archive_entry_set_link(uint64_t a1, const char *a2)
{
  if ((*(a1 + 160) & 2) != 0)
  {
    return archive_mstring_copy_mbs(a1 + 600, a2);
  }

  else
  {
    return archive_mstring_copy_mbs(a1 + 392, a2);
  }
}

uint64_t archive_entry_set_link_utf8(uint64_t a1, const char *a2)
{
  if ((*(a1 + 160) & 2) != 0)
  {
    return archive_mstring_copy_utf8(a1 + 600, a2);
  }

  else
  {
    return archive_mstring_copy_utf8(a1 + 392, a2);
  }
}

uint64_t archive_entry_copy_link(uint64_t a1, const char *a2)
{
  if ((*(a1 + 160) & 2) != 0)
  {
    return archive_mstring_copy_mbs(a1 + 600, a2);
  }

  else
  {
    return archive_mstring_copy_mbs(a1 + 392, a2);
  }
}

uint64_t archive_entry_copy_link_w(uint64_t a1, const __int32 *a2)
{
  if ((*(a1 + 160) & 2) != 0)
  {
    return archive_mstring_copy_wcs(a1 + 600, a2);
  }

  else
  {
    return archive_mstring_copy_wcs(a1 + 392, a2);
  }
}

uint64_t archive_entry_update_link_utf8(_DWORD **a1, char *a2)
{
  if ((a1[20] & 2) != 0)
  {
    updated = archive_mstring_update_utf8(*a1, (a1 + 75), a2);
  }

  else
  {
    updated = archive_mstring_update_utf8(*a1, (a1 + 49), a2);
  }

  if (updated)
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t _archive_entry_copy_link_l(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  if ((*(a1 + 160) & 2) != 0)
  {
    return archive_mstring_copy_mbs_len_l(a1 + 600, a2, a3, a4);
  }

  else
  {
    return archive_mstring_copy_mbs_len_l(a1 + 392, a2, a3, a4);
  }
}

uint64_t archive_entry_unset_mtime(uint64_t a1)
{
  result = archive_entry_set_mtime(a1, 0, 0);
  *(a1 + 160) &= ~0x10u;
  return result;
}

uint64_t archive_entry_set_nlink(uint64_t result, int a2)
{
  *(result + 16) = 0;
  *(result + 104) = a2;
  return result;
}

uint64_t archive_entry_update_pathname_utf8(_DWORD **a1, char *a2)
{
  if (archive_mstring_update_utf8(*a1, (a1 + 62), a2))
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_entry_set_perm(uint64_t result, __int16 a2)
{
  *(result + 16) = 0;
  *(result + 1136) &= 0xF000u;
  *(result + 1136) |= a2 & 0xFFF;
  *(result + 160) |= 0x200u;
  return result;
}

_DWORD *archive_entry_set_rdev(_DWORD *result, int a2)
{
  result[4] = 0;
  result[37] = a2;
  result[36] = 0;
  return result;
}

_DWORD *archive_entry_set_rdevmajor(_DWORD *result, int a2)
{
  result[4] = 0;
  result[36] = 1;
  result[38] = a2;
  return result;
}

_DWORD *archive_entry_set_rdevminor(_DWORD *result, int a2)
{
  result[4] = 0;
  result[36] = 1;
  result[39] = a2;
  return result;
}

uint64_t archive_entry_unset_size(uint64_t a1)
{
  result = archive_entry_set_size(a1, 0);
  *(a1 + 160) &= ~0x40u;
  return result;
}

uint64_t archive_entry_set_symlink(uint64_t a1, const char *a2)
{
  result = archive_mstring_copy_mbs(a1 + 600, a2);
  if (a2)
  {
    *(a1 + 160) |= 2u;
  }

  else
  {
    *(a1 + 160) &= ~2u;
  }

  return result;
}

uint64_t archive_entry_set_symlink_utf8(uint64_t a1, const char *a2)
{
  result = archive_mstring_copy_utf8(a1 + 600, a2);
  if (a2)
  {
    *(a1 + 160) |= 2u;
  }

  else
  {
    *(a1 + 160) &= ~2u;
  }

  return result;
}

uint64_t archive_entry_copy_symlink(uint64_t a1, const char *a2)
{
  result = archive_mstring_copy_mbs(a1 + 600, a2);
  if (a2)
  {
    *(a1 + 160) |= 2u;
  }

  else
  {
    *(a1 + 160) &= ~2u;
  }

  return result;
}

uint64_t archive_entry_copy_symlink_w(uint64_t a1, const __int32 *a2)
{
  result = archive_mstring_copy_wcs(a1 + 600, a2);
  if (a2)
  {
    *(a1 + 160) |= 2u;
  }

  else
  {
    *(a1 + 160) &= ~2u;
  }

  return result;
}

uint64_t archive_entry_update_symlink_utf8(uint64_t a1, char *a2)
{
  if (a2)
  {
    *(a1 + 160) |= 2u;
  }

  else
  {
    *(a1 + 160) &= ~2u;
  }

  if (archive_mstring_update_utf8(*a1, a1 + 600, a2))
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t _archive_entry_copy_symlink_l(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  v5 = archive_mstring_copy_mbs_len_l(a1 + 600, a2, a3, a4);
  if (!a2 || v5)
  {
    *(a1 + 160) &= ~2u;
  }

  else
  {
    *(a1 + 160) |= 2u;
  }

  return v5;
}

uint64_t archive_entry_update_uname_utf8(_DWORD **a1, char *a2)
{
  if (archive_mstring_update_utf8(*a1, (a1 + 88), a2))
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_entry_set_is_data_encrypted(uint64_t result, char a2)
{
  if (a2)
  {
    *(result + 912) |= 1u;
  }

  else
  {
    *(result + 912) &= ~1u;
  }

  return result;
}

uint64_t archive_entry_set_is_metadata_encrypted(uint64_t result, char a2)
{
  if (a2)
  {
    *(result + 912) |= 2u;
  }

  else
  {
    *(result + 912) &= ~2u;
  }

  return result;
}

uint64_t archive_entry_digest(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 1:
      return a1 + 936;
    case 2:
      return a1 + 952;
    case 3:
      return a1 + 972;
    case 4:
      return a1 + 992;
    case 5:
      return a1 + 1024;
    case 6:
      return a1 + 1072;
  }

  return 0;
}

uint64_t archive_entry_set_digest(uint64_t a1, int a2)
{
  if (a2 == 1 || a2 == 2 || a2 == 3 || a2 == 4 || a2 == 5 || a2 == 6)
  {
    __memcpy_chk();
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_entry_acl_next(uint64_t a1, int a2, _DWORD *a3, int *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  v8 = archive_acl_next(*a1, (a1 + 1136), a2, a3, a4, a5, a6, a7);
  if (v8 == -30 && *__error() == 12)
  {
    __archive_errx(1, "No memory");
  }

  return v8;
}

uint64_t archive_entry_acl_text_w(uint64_t a1, int a2)
{
  v5 = a1;
  v4 = a2;
  free(*(a1 + 1168));
  *(v5 + 1168) = 0;
  if (!archive_entry_acl_text_compat(&v4))
  {
    v2 = archive_acl_to_text_w(v5 + 1136, 0, v4, *v5);
    *(v5 + 1168) = v2;
  }

  return *(v5 + 1168);
}

uint64_t archive_entry_acl_text_compat(_DWORD *a1)
{
  if ((*a1 & 0x300) != 0)
  {
    if ((*a1 & 0x400) != 0)
    {
      *a1 |= 1u;
    }

    if ((*a1 & 0x800) != 0)
    {
      *a1 |= 2u;
    }

    *a1 |= 8u;
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_entry_acl_text(uint64_t a1, int a2)
{
  v5 = a1;
  v4 = a2;
  free(*(a1 + 1176));
  *(v5 + 1176) = 0;
  if (!archive_entry_acl_text_compat(&v4))
  {
    v2 = archive_acl_to_text_l(v5 + 1136, 0, v4, 0);
    *(v5 + 1176) = v2;
  }

  return *(v5 + 1176);
}

uint64_t archive_write_add_filter_lrzip(int *a1)
{
  v18 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lrzip") == -30)
  {
    return -30;
  }

  else
  {
    v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
    if (v17)
    {
      *v17 = __archive_write_program_allocate("lrzip");
      if (*v17)
      {
        v18[10] = "lrzip";
        *(v18 + 22) = 10;
        v18[9] = v17;
        v18[4] = archive_write_lrzip_open;
        v18[3] = archive_write_lrzip_options;
        v18[5] = archive_write_lrzip_write;
        v18[7] = archive_write_lrzip_close;
        v18[8] = archive_write_lrzip_free;
        archive_set_error(a1, -1, "Using external lrzip program for lrzip compression", v6, v7, v8, v9, v10, archive_write_lrzip_open);
        return -20;
      }

      else
      {
        free(v17);
        archive_set_error(a1, 12, "Can't allocate memory", v11, v12, v13, v14, v15, archive_write_lrzip_open);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate memory", v1, v2, v3, v4, v5, archive_write_lrzip_open);
      return -30;
    }
  }
}

uint64_t archive_write_lrzip_open(uint64_t a1)
{
  v7 = a1;
  v6 = *(a1 + 72);
  memset(v5, 0, sizeof(v5));
  archive_strncat(v5, "lrzip -q", 8uLL);
  v3 = *(v6 + 12);
  if (v3)
  {
    switch(v3)
    {
      case 1:
        archive_strcat(v5, " -b");
        break;
      case 2:
        archive_strcat(v5, " -g");
        break;
      case 3:
        archive_strcat(v5, " -l");
        break;
      case 4:
        archive_strcat(v5, " -n");
        break;
      case 5:
        archive_strcat(v5, " -z");
        break;
    }
  }

  if (*(v6 + 8) > 0)
  {
    archive_strcat(v5, " -L ");
    v1 = (*(v6 + 8) + 48);
    archive_strappend_char(v5, *(v6 + 8) + 48);
  }

  v4 = __archive_write_program_open(v7, *v6, v5[0]);
  archive_string_free(v5);
  return v4;
}

uint64_t archive_write_lrzip_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = *(a1 + 72);
  if (!strcmp(a2, "compression"))
  {
    if (a3)
    {
      if (!strcmp(a3, "bzip2"))
      {
        *(v4 + 12) = 1;
      }

      else if (!strcmp(a3, "gzip"))
      {
        *(v4 + 12) = 2;
      }

      else if (!strcmp(a3, "lzo"))
      {
        *(v4 + 12) = 3;
      }

      else if (!strcmp(a3, "none"))
      {
        *(v4 + 12) = 4;
      }

      else
      {
        if (strcmp(a3, "zpaq"))
        {
          return -20;
        }

        *(v4 + 12) = 5;
      }

      return 0;
    }

    return -20;
  }

  else if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 49 && *a3 <= 57 && !a3[1])
    {
      *(v4 + 8) = *a3 - 48;
      return 0;
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_lrzip_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(*v2);
  free(v2);
  return 0;
}

uint64_t archive_write_set_format_v7tar(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_v7tar") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200404DE2C876uLL);
    if (v8)
    {
      *(a1 + 248) = v8;
      *(a1 + 256) = "tar (non-POSIX)";
      *(a1 + 272) = archive_write_v7tar_options;
      *(a1 + 288) = archive_write_v7tar_header;
      *(a1 + 296) = archive_write_v7tar_data;
      *(a1 + 304) = archive_write_v7tar_close;
      *(a1 + 312) = archive_write_v7tar_free;
      *(a1 + 280) = archive_write_v7tar_finish_entry;
      *(a1 + 16) = 196608;
      *(a1 + 24) = "tar (non-POSIX)";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate v7tar data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_write_v7tar_options(uint64_t a1, const char *a2, const char *a3)
{
  v10 = *(a1 + 248);
  v9 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v10 + 16) = archive_string_conversion_to_charset(a1, a3, 0);
      if (*(v10 + 16))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "%s: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, *(a1 + 256));
    }

    return v9;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_v7tar_header(uint64_t a1, _DWORD **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v22 = *(a1 + 248);
  if (*(v22 + 16))
  {
    v20 = *(v22 + 16);
  }

  else
  {
    if (!*(v22 + 32))
    {
      *(v22 + 24) = archive_string_default_conversion_for_write();
      *(v22 + 32) = 1;
    }

    v20 = *(v22 + 24);
  }

  if (archive_entry_pathname(v25))
  {
    if (archive_entry_hardlink(v25) || archive_entry_symlink(v25) || archive_entry_filetype(v25) != 0x8000)
    {
      archive_entry_set_size(v25, 0);
    }

    if (archive_entry_filetype(v25) == 0x4000)
    {
      v18 = 0;
      __s = archive_entry_pathname(v25);
      if (__s)
      {
        if (*__s && __s[strlen(__s) - 1] != 47)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = strlen(__s);
          if (!archive_string_ensure(&v15, v18 + 2))
          {
            archive_set_error(v26, 12, "Can't allocate v7tar data", v7, v8, v9, v10, v11, v14);
            archive_string_free(&v15);
            v27 = -30;
            goto LABEL_26;
          }

          v16 = 0;
          archive_strncat(&v15, __s, v18);
          archive_strappend_char(&v15, 47);
          archive_entry_copy_pathname(v25, v15);
          archive_string_free(&v15);
        }
      }
    }

    v21 = 0;
    v24 = format_header_v7tar(v26, v28, v25, 1, v20);
    if (v24 >= -20)
    {
      v23 = __archive_write_output(v26, v28, 512);
      if (v23 >= -20)
      {
        if (v23 < v24)
        {
          v24 = v23;
        }

        v12 = archive_entry_size(v25);
        *v22 = v12;
        *(v22 + 8) = -*v22 & 0x1FFLL;
        archive_entry_free(v21);
        v27 = v24;
      }

      else
      {
        archive_entry_free(v21);
        v27 = v23;
      }
    }

    else
    {
      archive_entry_free(v21);
      v27 = v24;
    }
  }

  else
  {
    archive_set_error(v26, -1, "Can't record entry in tar file without pathname", v2, v3, v4, v5, v6, v14);
    v27 = -25;
  }

LABEL_26:
  *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t archive_write_v7tar_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_v7tar_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t archive_write_v7tar_finish_entry(uint64_t a1)
{
  v2 = *(a1 + 248);
  LODWORD(result) = __archive_write_nulls(a1, *v2 + v2[1]);
  v2[1] = 0;
  *v2 = 0;
  return result;
}

uint64_t format_header_v7tar(_DWORD *a1, _BYTE *a2, _DWORD **a3, int a4, uint64_t a5)
{
  v91 = a1;
  v90 = a2;
  v89 = a3;
  v88 = a4;
  v87 = a5;
  v86 = 0;
  i = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v83 = 0;
  v79 = -1;
  __memcpy_chk();
  v84 = _archive_entry_pathname_l(v89, &v80, &v82, v87);
  if (v84)
  {
    if (*__error() == 12)
    {
      archive_set_error(v91, 12, "Can't allocate memory for Pathname", v10, v11, v12, v13, v14, v71);
      return -30;
    }

    v78 = v91;
    v77 = v80;
    archive_string_conversion_charset_name(v87);
    archive_set_error(v78, 79, "Can't translate pathname '%s' to %s", v15, v16, v17, v18, v19, v77);
    v83 = -20;
  }

  if (v88 && v82 < 0x64 || !v88 && v82 <= 0x64)
  {
    __memcpy_chk();
  }

  else
  {
    archive_set_error(v91, 63, "Pathname too long", v5, v6, v7, v8, v9, v71);
    v83 = -25;
  }

  v84 = _archive_entry_hardlink_l(v89, &v81, &v82, v87);
  if (v84)
  {
    if (*__error() == 12)
    {
LABEL_13:
      archive_set_error(v91, 12, "Can't allocate memory for Linkname", v25, v26, v27, v28, v29, v71);
      return -30;
    }

    v76 = v91;
    v75 = v81;
    archive_string_conversion_charset_name(v87);
    archive_set_error(v76, 79, "Can't translate linkname '%s' to %s", v30, v31, v32, v33, v34, v75);
    v83 = -20;
  }

  if (v82)
  {
    v79 = 49;
  }

  else
  {
    v84 = _archive_entry_symlink_l(v89, &v81, &v82, v87);
    if (v84)
    {
      if (*__error() == 12)
      {
        goto LABEL_13;
      }

      v74 = v91;
      v73 = v81;
      archive_string_conversion_charset_name(v87);
      archive_set_error(v74, 79, "Can't translate linkname '%s' to %s", v35, v36, v37, v38, v39, v73);
      v83 = -20;
    }
  }

  if (v82)
  {
    if (v82 >= 0x64)
    {
      archive_set_error(v91, 63, "Link contents too long", v20, v21, v22, v23, v24, v71);
      v83 = -25;
      v82 = 100;
    }

    __memcpy_chk();
  }

  v40 = archive_entry_mode(v89);
  if (format_number(v40 & 0xFFF, v90 + 100, 6, 8, v88))
  {
    archive_set_error(v91, 34, "Numeric mode too large", v41, v42, v43, v44, v45, v71);
    v83 = -25;
  }

  v46 = archive_entry_uid(v89);
  if (format_number(v46, v90 + 108, 6, 8, v88))
  {
    archive_set_error(v91, 34, "Numeric user ID too large", v47, v48, v49, v50, v51, v71);
    v83 = -25;
  }

  v52 = archive_entry_gid(v89);
  if (format_number(v52, v90 + 116, 6, 8, v88))
  {
    archive_set_error(v91, 34, "Numeric group ID too large", v53, v54, v55, v56, v57, v71);
    v83 = -25;
  }

  v58 = archive_entry_size(v89);
  if (format_number(v58, v90 + 124, 11, 12, v88))
  {
    archive_set_error(v91, 34, "File size out of range", v59, v60, v61, v62, v63, v71);
    v83 = -25;
  }

  v64 = archive_entry_mtime(v89);
  if (format_number(v64, v90 + 136, 11, 12, v88))
  {
    archive_set_error(v91, 34, "File modification time too large", v65, v66, v67, v68, v69, v71);
    v83 = -25;
  }

  if (v79 < 0)
  {
    v72 = archive_entry_filetype(v89);
    if (v72 != 0x4000 && v72 != 0x8000)
    {
      if (v72 == 40960)
      {
        v90[156] = 50;
      }

      else
      {
        __archive_write_entry_filetype_unsupported(v91, v89);
        v83 = -25;
      }
    }
  }

  else
  {
    v90[156] = v79;
  }

  v86 = 0;
  for (i = 0; i < 512; ++i)
  {
    v86 += v90[i];
  }

  format_octal(v86, v90 + 148, 6);
  v90[154] = 0;
  return v83;
}

uint64_t format_number(uint64_t a1, _BYTE *a2, int a3, int a4, int a5)
{
  v7 = a3;
  v6 = 1 << (3 * a3);
  if (a5)
  {
    return format_octal(a1, a2, v7);
  }

  else
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      while (v7 <= a4)
      {
        if (a1 < v6)
        {
          return format_octal(a1, a2, v7);
        }

        ++v7;
        v6 *= 8;
      }
    }

    return format_256(a1, a2, a4);
  }
}

uint64_t format_octal(uint64_t a1, _BYTE *a2, int a3)
{
  v13 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a3;
  if (a1 < 0)
  {
    while (1)
    {
      v3 = v9--;
      if (v3 <= 0)
      {
        break;
      }

      v4 = v11++;
      *v4 = 48;
    }

    return -1;
  }

  else
  {
    v12 = &a2[a3];
    while (1)
    {
      v5 = v10--;
      if (v5 <= 0)
      {
        break;
      }

      *--v12 = (v13 & 7) + 48;
      v13 >>= 3;
    }

    if (v13)
    {
      while (1)
      {
        v6 = v9--;
        if (v6 <= 0)
        {
          break;
        }

        v7 = v12++;
        *v7 = 55;
      }

      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t format_256(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v6 = (a2 + a3);
  while (1)
  {
    v3 = v5--;
    if (v3 <= 0)
    {
      break;
    }

    *--v6 = a1;
    a1 >>= 8;
  }

  *v6 |= 0x80u;
  return 0;
}

uint64_t archive_write_add_filter_uuencode(int *a1)
{
  v9 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_uu") == -30)
  {
    return -30;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x1010040A33E50F3uLL);
    if (v8)
    {
      v8[2] = 0;
      archive_strncat(v8 + 1, "-", 1uLL);
      *v8 = 420;
      v9[9] = v8;
      v9[10] = "uuencode";
      *(v9 + 22) = 7;
      v9[4] = archive_filter_uuencode_open;
      v9[3] = archive_filter_uuencode_options;
      v9[5] = archive_filter_uuencode_write;
      v9[7] = archive_filter_uuencode_close;
      v9[8] = archive_filter_uuencode_free;
      return 0;
    }

    else
    {
      archive_set_error(v9[1], 12, "Can't allocate data for uuencode filter", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_filter_uuencode_open(uint64_t a1)
{
  v12 = *(a1 + 72);
  v11 = 0x10000;
  if (**(a1 + 8) == -1329217314)
  {
    v10 = archive_write_get_bytes_per_block(*(a1 + 8));
    if (v10 <= 0x10000)
    {
      if (v10)
      {
        v11 = 0x10000 - 0x10000 % v10;
      }
    }

    else
    {
      v11 = v10;
    }
  }

  v12[7] = v11;
  if (archive_string_ensure((v12 + 4), v11 + 512))
  {
    v9 = v12[1];
    archive_string_sprintf(v12 + 4, "begin %o %s\n", v1, v2, v3, v4, v5, v6, *v12);
    *(a1 + 72) = v12;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for uuencode buffer", v2, v3, v4, v5, v6, v8);
    return -30;
  }
}

uint64_t archive_filter_uuencode_options(uint64_t a1, const char *a2, char *a3)
{
  v17 = *(a1 + 72);
  if (!strcmp(a2, "mode"))
  {
    if (a3)
    {
      v8 = strlen(a3);
      *v17 = atol8(a3, v8) & 0x1FF;
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "mode option requires octal digits", v3, v4, v5, v6, v7, v15);
      return -25;
    }
  }

  else if (!strcmp(a2, "name"))
  {
    if (a3)
    {
      *(v17 + 16) = 0;
      v16 = strlen(a3);
      archive_strncat((v17 + 8), a3, v16);
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "name option requires a string", v9, v10, v11, v12, v13, v15);
      return -25;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_filter_uuencode_write(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v14 = a3;
  v13 = *(a1 + 72);
  v11 = 0;
  if (a3)
  {
    if (*(v13 + 64))
    {
      while (1)
      {
        v10 = 0;
        if (*(v13 + 64) < 0x2DuLL)
        {
          v10 = v14 != 0;
        }

        if (!v10)
        {
          break;
        }

        v3 = a2++;
        LOBYTE(v3) = *v3;
        v4 = *(v13 + 64);
        *(v13 + 64) = v4 + 1;
        *(v13 + 72 + v4) = v3;
        --v14;
      }

      if (*(v13 + 64) < 0x2DuLL)
      {
        return 0;
      }

      uu_encode((v13 + 32), (v13 + 72), 0x2DuLL);
      *(v13 + 64) = 0;
    }

    while (v14 >= 0x2D)
    {
      uu_encode((v13 + 32), a2, 0x2DuLL);
      v14 -= 45;
      a2 += 45;
    }

    if (v14)
    {
      __memcpy_chk();
      *(v13 + 64) = v14;
    }

    while (*(v13 + 40) >= *(v13 + 56))
    {
      v11 = __archive_write_filter(*(a1 + 16), *(v13 + 32), *(v13 + 56));
      v5 = *(v13 + 32);
      v6 = v5 + *(v13 + 56);
      v7 = *(v13 + 40);
      v8 = *(v13 + 56);
      __memmove_chk();
      *(v13 + 40) -= *(v13 + 56);
    }

    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_filter_uuencode_close(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 72);
  if (*(v9 + 64))
  {
    uu_encode((v9 + 32), (v9 + 72), *(v9 + 64));
  }

  archive_write_set_bytes_in_last_block(*(a1 + 8), 1);
  return __archive_write_filter(*(a1 + 16), *(v10 + 32), *(v10 + 40));
}

uint64_t archive_filter_uuencode_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  archive_string_free(v2 + 8);
  archive_string_free(v2 + 32);
  free(v2);
  return 0;
}

uint64_t atol8(char *a1, uint64_t a2)
{
  for (i = 0; ; i = (8 * i) | v4)
  {
    v2 = a2--;
    if (!v2 || *a1 < 48 || *a1 > 55)
    {
      break;
    }

    v4 = *a1++ - 48;
  }

  return i;
}

uint64_t *uu_encode(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  v11 = a3;
  if (a3)
  {
    archive_strappend_char(a1, a3 + 32);
  }

  else
  {
    archive_strappend_char(a1, 96);
  }

  while (v11 >= 3)
  {
    v4 = *a2 >> 2;
    if (v4)
    {
      archive_strappend_char(a1, v4 + 32);
    }

    else
    {
      archive_strappend_char(a1, 96);
    }

    v5 = ((a2[1] & 0xF0) >> 4) | (16 * (*a2 & 3));
    if (v5)
    {
      archive_strappend_char(a1, v5 + 32);
    }

    else
    {
      archive_strappend_char(a1, 96);
    }

    v6 = ((a2[2] & 0xC0) >> 6) | (4 * (a2[1] & 0xF));
    if (v6)
    {
      archive_strappend_char(a1, v6 + 32);
    }

    else
    {
      archive_strappend_char(a1, 96);
    }

    if ((a2[2] & 0x3F) != 0)
    {
      archive_strappend_char(a1, (a2[2] & 0x3F) + 32);
    }

    else
    {
      archive_strappend_char(a1, 96);
    }

    a2 += 3;
    v11 -= 3;
  }

  if (v11)
  {
    v7 = *a2 >> 2;
    if (v7)
    {
      archive_strappend_char(a1, v7 + 32);
    }

    else
    {
      archive_strappend_char(a1, 96);
    }

    v8 = 16 * (*a2 & 3);
    if (v11 == 1)
    {
      if (v8)
      {
        archive_strappend_char(a1, v8 + 32);
      }

      else
      {
        archive_strappend_char(a1, 96);
      }

      archive_strappend_char(a1, 96);
      archive_strappend_char(a1, 96);
    }

    else
    {
      v9 = v8 | ((a2[1] & 0xF0) >> 4);
      if (v9)
      {
        archive_strappend_char(a1, v9 + 32);
      }

      else
      {
        archive_strappend_char(a1, 96);
      }

      v10 = 4 * (a2[1] & 0xF);
      if (v10)
      {
        archive_strappend_char(a1, v10 + 32);
      }

      else
      {
        archive_strappend_char(a1, 96);
      }

      archive_strappend_char(a1, 96);
    }
  }

  return archive_strappend_char(a1, 10);
}

uint64_t _archive_set_option(int *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, int a5, const char *a6, uint64_t (*a7)(int *, unint64_t, _BYTE *, _BYTE *))
{
  if (__archive_check_magic(a1, a5, 1, a6) == -30)
  {
    return -30;
  }

  else
  {
    if (a2 && *a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0;
    }

    if (a3 && *a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = 0;
    }

    if (a4 && *a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = 0;
    }

    if (v21 || v20)
    {
      if (v21)
      {
        v23 = a7(a1, v22, v21, v20);
        if (v23 == -21)
        {
          return -25;
        }

        else if (v23 == -20)
        {
          v17 = &unk_1BF3442C6;
          if (!v20)
          {
            v17 = "!";
          }

          return -25;
        }

        else
        {
          return v23;
        }
      }

      else
      {
        archive_set_error(a1, -1, "Empty option", v7, v8, v9, v10, v11, v19);
        return -25;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _archive_set_either_option(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 || a4)
  {
    if (a3)
    {
      v9 = a5(a1, a2, a3, a4);
      if (v9 == -30)
      {
        return -30;
      }

      else
      {
        v8 = a6(a1, a2, a3, a4);
        if (v8 == -30)
        {
          return -30;
        }

        else if (v8 == -21)
        {
          return v9;
        }

        else if (v9 <= v8)
        {
          return v8;
        }

        else
        {
          return v9;
        }
      }
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t _archive_set_options(_DWORD *a1, const char *a2, int a3, const char *a4, uint64_t (*a5)(_DWORD *, char *, char *, void))
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = 1;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  __s2 = 0;
  *&v20[8] = 0;
  *v20 = __archive_check_magic(a1, a3, 1, a4);
  if (*v20 == -30)
  {
    return -30;
  }

  else if (v32 && *v32)
  {
    v24 = strdup(v32);
    if (v24)
    {
      v23 = v24;
      do
      {
        *&v20[4] = 0;
        __s2 = 0;
        v22 = 0;
        parse_option(&v23, &v22, &__s2, &v20[4]);
        if (!v22 && __s2 && !strcmp("__ignore_wrong_module_name__", __s2))
        {
          if (*&v20[4])
          {
            v26 = 1;
            v27 = 1;
          }
        }

        else
        {
          v25 = v29(v33, v22, __s2, *&v20[4]);
          if (v25 == -30)
          {
            free(v24);
            return -30;
          }

          if (v25 == -25 && v22)
          {
            free(v24);
            return -25;
          }

          if (v25 == -21)
          {
            if (!v26)
            {
              free(v24);
              return -25;
            }
          }

          else
          {
            if (v25 == -20)
            {
              if (v22)
              {
                v19 = v22;
              }

              else
              {
                v19 = &unk_1BF3442C6;
              }

              free(v24);
              return -25;
            }

            if (v25)
            {
              v28 = 0;
            }

            else
            {
              v27 = 1;
            }
          }
        }
      }

      while (v23);
      free(v24);
      if (v28)
      {
        return 0;
      }

      else if (v27)
      {
        return -20;
      }

      else
      {
        return -25;
      }
    }

    else
    {
      archive_set_error(v33, 12, "Out of memory adding file to list", v5, v6, v7, v8, v9, v17);
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

char *parse_option(char **a1, char **a2, char **a3, const char **a4)
{
  v11 = 0;
  v10 = 0;
  __s = *a1;
  v8 = "1";
  v5 = strchr(*a1, 44);
  if (v5)
  {
    *v5 = 0;
    v11 = v5 + 1;
  }

  if (strlen(__s))
  {
    v6 = strchr(__s, 58);
    if (v6)
    {
      *v6 = 0;
      v10 = __s;
      __s = v6 + 1;
    }

    v7 = strchr(__s, 61);
    if (v7)
    {
      *v7 = 0;
      v8 = v7 + 1;
    }

    else if (*__s == 33)
    {
      ++__s;
      v8 = 0;
    }

    *a1 = v11;
    *a2 = v10;
    *a3 = __s;
    *a4 = v8;
    return v11;
  }

  else
  {
    *a1 = v11;
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    return v11;
  }
}

uint64_t archive_write_add_filter_program(int *a1, const char *a2)
{
  v11 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_program") == -30)
  {
    return -30;
  }

  else
  {
    v11[9] = malloc_type_calloc(1uLL, 0x28uLL, 0x1030040A4690949uLL);
    if (v11[9] && (v10 = v11[9], (v10[4] = strdup(a2)) != 0) && (*v10 = __archive_write_program_allocate(a2)) != 0 && (v2 = strlen(a2), archive_string_ensure((v10 + 1), v2 + 10)))
    {
      v10[2] = 0;
      archive_strncat(v10 + 1, "Program: ", 9uLL);
      archive_strcat(v10 + 1, a2);
      v11[10] = v10[1];
      *(v11 + 22) = 4;
      v11[4] = archive_compressor_program_open;
      v11[5] = archive_compressor_program_write;
      v11[7] = archive_compressor_program_close;
      v11[8] = archive_compressor_program_free;
      return 0;
    }

    else
    {
      archive_compressor_program_free(v11);
      archive_set_error(a1, 12, "Can't allocate memory for filter program", v3, v4, v5, v6, v7, v9);
      return -30;
    }
  }
}

_DWORD *__archive_write_program_allocate(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x10100405A4032B0uLL);
  if (!v2)
  {
    return 0;
  }

  v2[1] = -1;
  v2[2] = -1;
  *(v2 + 5) = strdup(a1);
  return v2;
}

uint64_t archive_compressor_program_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2[4]);
    archive_string_free((v2 + 1));
    __archive_write_program_free(*v2);
    free(v2);
    *(a1 + 72) = 0;
  }

  return 0;
}

uint64_t __archive_write_program_free(void **a1)
{
  if (a1)
  {
    free(a1[5]);
    free(a1[2]);
    free(a1);
  }

  return 0;
}

uint64_t __archive_write_program_open(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 16) || (*(a2 + 24) = 0x10000, *(a2 + 32) = 0, (*(a2 + 16) = malloc_type_malloc(*(a2 + 24), 0x7F68CBFuLL)) != 0))
  {
    if (__archive_create_child(a3, (a2 + 4), (a2 + 8), a2))
    {
      archive_set_error(*(a1 + 8), 22, "Can't launch external program: %s", v8, v9, v10, v11, v12, a3);
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate compression buffer", v3, v4, v5, v6, v7, v14);
    return -30;
  }
}

uint64_t __archive_write_program_write(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  if (*a2)
  {
    while (a4)
    {
      v11 = child_write(a1, a2, a3, a4);
      if (v11 == -1 || !v11)
      {
        archive_set_error(*(a1 + 8), 5, "Can't write to program: %s", v4, v5, v6, v7, v8, *(a2 + 40));
        return -30;
      }

      a4 -= v11;
      a3 += v11;
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t child_write(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  if (*(a2 + 4) == -1)
  {
    return -1;
  }

  if (!a4)
  {
    return -1;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            v7 = write(*(a2 + 4), a3, a4);
            v6 = 0;
            if (v7 == -1)
            {
              v6 = *__error() == 4;
            }
          }

          while (v6);
          if (v7 > 0)
          {
            return v7;
          }

          if (!v7)
          {
            close(*(a2 + 4));
            *(a2 + 4) = -1;
            fcntl(*(a2 + 8), 4, 0);
            return 0;
          }

          if (v7 == -1 && *__error() != 35)
          {
            return -1;
          }

          if (*(a2 + 8) != -1)
          {
            break;
          }

          fcntl(*(a2 + 4), 4, 0);
          __archive_check_child(*(a2 + 4), *(a2 + 8));
        }

        do
        {
          v8 = read(*(a2 + 8), (*(a2 + 16) + *(a2 + 32)), *(a2 + 24) - *(a2 + 32));
          v5 = 0;
          if (v8 == -1)
          {
            v5 = *__error() == 4;
          }
        }

        while (v5);
        if (v8 && (v8 != -1 || *__error() != 32))
        {
          break;
        }

        close(*(a2 + 8));
        *(a2 + 8) = -1;
        fcntl(*(a2 + 4), 4, 0);
      }

      if (v8 != -1 || *__error() != 35)
      {
        break;
      }

      __archive_check_child(*(a2 + 4), *(a2 + 8));
    }

    if (v8 == -1)
    {
      return -1;
    }

    *(a2 + 32) += v8;
    if (__archive_write_filter(*(a1 + 16), *(a2 + 16), *(a2 + 32)))
    {
      break;
    }

    *(a2 + 32) = 0;
  }

  return -1;
}

uint64_t __archive_write_program_close(uint64_t a1, _DWORD *a2)
{
  v21 = a1;
  v20 = a2;
  v19 = 0;
  v18 = 0;
  if (*a2)
  {
    v19 = 0;
    close(v20[1]);
    v20[1] = -1;
    fcntl(v20[2], 4, 0);
    while (1)
    {
      do
      {
        v17 = read(v20[2], (*(v20 + 2) + *(v20 + 4)), *(v20 + 3) - *(v20 + 4));
        v16 = 0;
        if (v17 == -1)
        {
          v16 = *__error() == 4;
        }
      }

      while (v16);
      if (!v17 || v17 == -1 && *__error() == 32)
      {
        break;
      }

      if (v17 == -1)
      {
        v15 = *(v21 + 8);
        v2 = __error();
        archive_set_error(v15, *v2, "Error reading from program: %s", v3, v4, v5, v6, v7, *(v20 + 5));
        v19 = -30;
        break;
      }

      *(v20 + 4) += v17;
      v19 = __archive_write_filter(*(v21 + 16), *(v20 + 2), *(v20 + 4));
      if (v19)
      {
        v19 = -30;
        break;
      }

      *(v20 + 4) = 0;
    }

    if (v20[1] != -1)
    {
      close(v20[1]);
    }

    if (v20[2] != -1)
    {
      close(v20[2]);
    }

    do
    {
      v14 = 0;
      if (waitpid(*v20, &v18, 0) == -1)
      {
        v14 = *__error() == 4;
      }
    }

    while (v14);
    *v20 = 0;
    if (v18)
    {
      archive_set_error(*(v21 + 8), 5, "Error closing program: %s", v8, v9, v10, v11, v12, *(v20 + 5));
      return -30;
    }

    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_cab_options(uint64_t a1, const char *a2, const char *a3)
{
  HIDWORD(v9) = -25;
  v11 = **(a1 + 2072);
  if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v11 + 184) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v11 + 184))
      {
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "cab: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v9);
    }

    return v10;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_cab_read_header(uint64_t a1, _DWORD **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  header = 0;
  v29 = **(a1 + 2072);
  if (!*(v29 + 144))
  {
    header = cab_read_header(a1, a2, a3, a4, a5, a6, a7, a8);
    if (header < -20)
    {
      return header;
    }

    *(v29 + 144) = 1;
  }

  if (*(v29 + 112) >= *(v29 + 82))
  {
    *(v29 + 145) = 1;
    return 1;
  }

  v8 = *(v29 + 104);
  v9 = (*(v29 + 112))++;
  v27 = (v8 + 48 * v9);
  *(v29 + 146) = 0;
  *(v29 + 147) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = 0;
  *(v29 + 48) = v27;
  v28 = *(v29 + 40);
  v23 = *(v27 + 8);
  if (v23 != 65533)
  {
    if (v23 == 65534)
    {
      *(v29 + 40) = *(v29 + 96) + 96 * (*(v29 + 80) - 1);
      goto LABEL_13;
    }

    if (v23 != 0xFFFF)
    {
      *(v29 + 40) = *(v29 + 96) + 96 * *(v27 + 8);
      goto LABEL_13;
    }
  }

  *(v29 + 40) = *(v29 + 96);
LABEL_13:
  if (v28 != *(v29 + 40))
  {
    *(v29 + 56) = 0;
  }

  if ((*(v27 + 18) & 0x80) != 0)
  {
    if (!*(v29 + 200))
    {
      *(v29 + 200) = archive_string_conversion_from_charset(a1, "UTF-8", 1);
      if (!*(v29 + 200))
      {
        return -30;
      }
    }

    v26 = *(v29 + 200);
  }

  else if (*(v29 + 184))
  {
    v26 = *(v29 + 184);
  }

  else
  {
    if (!*(v29 + 176))
    {
      *(v29 + 192) = archive_string_default_conversion_for_read();
      *(v29 + 176) = 1;
    }

    v26 = *(v29 + 192);
  }

  v24 = cab_convert_path_separator_1(v27 + 3, *(v27 + 18));
  if (_archive_entry_copy_pathname_l(a2, *(v27 + 3), *(v27 + 4), v26))
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, 12, "Can't allocate memory for Pathname", v10, v11, v12, v13, v14, v22);
      return -30;
    }

    v15 = archive_string_conversion_charset_name(v26);
    archive_set_error(a1, 79, "Pathname cannot be converted from %s to current locale.", v16, v17, v18, v19, v20, v15);
    header = -20;
  }

  if (v24 < 0)
  {
    cab_convert_path_separator_2(v29, a2);
  }

  archive_entry_set_size(a2, *v27);
  if (*(v27 + 18))
  {
    archive_entry_set_mode(a2, 33133);
  }

  else
  {
    archive_entry_set_mode(a2, 33206);
  }

  archive_entry_set_mtime(a2, *(v27 + 1), 0);
  *(v29 + 8) = *v27;
  *v29 = 0;
  if (!*v27)
  {
    *(v29 + 146) = 1;
    *(v29 + 147) = 1;
  }

  __snprintf_chk((v29 + 208), 0x40uLL, 0, 0x40uLL, "CAB %d.%d (%s)", *(v29 + 90), *(v29 + 91), *(*(v29 + 40) + 16));
  *(a1 + 24) = v29 + 208;
  return header;
}

uint64_t archive_read_format_cab_read_data(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = **(a1 + 2072);
  if (*(*(v17 + 48) + 16) - 65533 > 2)
  {
    if (!*(v17 + 148))
    {
      if (*(v17 + 152))
      {
        if (!*(v17 + 56))
        {
          cfdata = cab_next_cfdata(a1, a2, a3, a4, a5, a6, a7, a8);
          if ((cfdata & 0x80000000) != 0)
          {
            return cfdata;
          }
        }

        if (cab_consume_cfdata(a1, *(v17 + 152)) < 0)
        {
          return -30;
        }

        *(v17 + 152) = 0;
      }

      *(v17 + 148) = 1;
    }

    if (*(v17 + 16) && (v16 = cab_consume_cfdata(a1, *(v17 + 16)), *(v17 + 16) = 0, (v16 & 0x80000000) != 0))
    {
      return v16;
    }

    else if (*(v17 + 145) || *(v17 + 146))
    {
      if (!*(v17 + 147))
      {
        *(v17 + 147) = 1;
      }

      *a4 = *v17;
      *a3 = 0;
      *a2 = 0;
      return 1;
    }

    else
    {
      return cab_read_data(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    archive_clear_error(a1);
    archive_set_error(a1, 79, "Cannot restore this file split in multivolume.", v8, v9, v10, v11, v12, v14);
    return -25;
  }
}

uint64_t archive_read_format_cab_read_data_skip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = **(a1 + 2072);
  if (*(v11 + 145))
  {
    return 1;
  }

  else if (*(v11 + 148))
  {
    if (*(v11 + 16))
    {
      v9 = cab_consume_cfdata(a1, *(v11 + 16));
      *(v11 + 16) = 0;
      if ((v9 & 0x80000000) != 0)
      {
        return v9;
      }
    }

    else if (!*(v11 + 56))
    {
      cfdata = cab_next_cfdata(a1, a2, a3, a4, a5, a6, a7, a8);
      if ((cfdata & 0x80000000) != 0)
      {
        return cfdata;
      }
    }

    if (*(v11 + 147))
    {
      return 0;
    }

    else if (cab_consume_cfdata(a1, *(v11 + 8)) < 0)
    {
      return -30;
    }

    else
    {
      if (!*(*(v11 + 40) + 6) && *(v11 + 56))
      {
        *(*(v11 + 56) + 16) = 0;
      }

      *(v11 + 146) = 1;
      *(v11 + 147) = 1;
      return 0;
    }
  }

  else
  {
    *(v11 + 152) += *(v11 + 8);
    *(v11 + 8) = 0;
    *(v11 + 146) = 1;
    *(v11 + 147) = 1;
    return 0;
  }
}

uint64_t find_cab_magic(char *a1)
{
  v2 = a1[4];
  if (a1[4])
  {
    switch(v2)
    {
      case 'C':
        return 2;
      case 'F':
        return 1;
      case 'M':
        return 4;
      case 'S':
        return 3;
      default:
        return 5;
    }
  }

  else if (!memcmp(a1, "MSCF", 8uLL))
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t cab_read_header(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a1;
  ahead = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  i = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  a1[4] = 786432;
  if (!*(v67 + 3))
  {
    *(v67 + 3) = "CAB";
  }

  ahead = __archive_read_ahead(v67, 0x2AuLL, 0, a4, a5, a6, a7, a8);
  if (!ahead)
  {
    return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
  }

  v65 = **(v67 + 259);
  if (!*(v65 + 144) && *ahead == 77 && ahead[1] == 90)
  {
    v59 = cab_skip_sfx(v67, v8, v9, v10, v11, v12, v13, v14);
    if (v59 < -20)
    {
      return v59;
    }

    ahead = __archive_read_ahead(v67, 0x2AuLL, 0, v15, v16, v17, v18, v19);
    if (!ahead)
    {
      return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *(v65 + 64) = 0;
  v64 = v65 + 72;
  if (*ahead != 77 || ahead[1] != 83 || ahead[2] != 67 || ahead[3] != 70)
  {
    archive_set_error(v67, 79, "Couldn't find out CAB header", v10, v11, v12, v13, v14, v48);
    return -30;
  }

  *v64 = archive_le32dec(ahead + 8);
  *(v64 + 4) = archive_le32dec(ahead + 16);
  *(v64 + 19) = ahead[24];
  *(v64 + 18) = ahead[25];
  *(v64 + 8) = archive_le16dec(ahead + 26);
  if (!*(v64 + 8))
  {
    goto LABEL_85;
  }

  *(v64 + 10) = archive_le16dec(ahead + 28);
  if (!*(v64 + 10))
  {
    goto LABEL_85;
  }

  *(v64 + 12) = archive_le16dec(ahead + 30);
  *(v64 + 14) = archive_le16dec(ahead + 32);
  *(v64 + 16) = archive_le16dec(ahead + 34);
  v62 = 36;
  if ((*(v64 + 12) & 4) != 0)
  {
    v54 = archive_le16dec(ahead + 36);
    if (v54 > 0xEA60u)
    {
      goto LABEL_85;
    }

    *(v64 + 20) = ahead[38];
    *(v64 + 21) = ahead[39];
    v62 += 4 + v54;
  }

  else
  {
    *(v64 + 20) = 0;
  }

  if ((*(v64 + 12) & 1) == 0)
  {
    goto LABEL_29;
  }

  ahead = __archive_read_ahead(v67, v62 + 256, 0, v20, v21, v22, v23, v24);
  if (!ahead)
  {
    return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
  }

  v61 = cab_strnlen(&ahead[v62], 0xFFuLL);
  if (v61 <= 0)
  {
    goto LABEL_85;
  }

  v62 += v61 + 1;
  ahead = __archive_read_ahead(v67, v62 + 256, 0, v20, v21, v22, v23, v24);
  if (!ahead)
  {
    return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
  }

  v61 = cab_strnlen(&ahead[v62], 0xFFuLL);
  if (v61 <= 0)
  {
    goto LABEL_85;
  }

  v62 += v61 + 1;
LABEL_29:
  if ((*(v64 + 12) & 2) == 0)
  {
    goto LABEL_36;
  }

  ahead = __archive_read_ahead(v67, v62 + 256, 0, v20, v21, v22, v23, v24);
  if (!ahead)
  {
    return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
  }

  v61 = cab_strnlen(&ahead[v62], 0xFFuLL);
  if (v61 <= 0)
  {
    goto LABEL_85;
  }

  v62 += v61 + 1;
  ahead = __archive_read_ahead(v67, v62 + 256, 0, v20, v21, v22, v23, v24);
  if (!ahead)
  {
    return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
  }

  v61 = cab_strnlen(&ahead[v62], 0xFFuLL);
  if (v61 <= 0)
  {
LABEL_85:
    archive_set_error(v67, 79, "Invalid CAB header", v20, v21, v22, v23, v24, v48);
    return -30;
  }

  v62 += v61 + 1;
LABEL_36:
  __archive_read_consume(v67, v62);
  *(v65 + 64) += v62;
  v62 = 0;
  *(v64 + 24) = malloc_type_calloc(*(v64 + 8), 0x60uLL, 0x10D004043342C3BuLL);
  if (!*(v64 + 24))
  {
    goto LABEL_86;
  }

  v63 = 8;
  if ((*(v64 + 12) & 4) != 0)
  {
    v63 += *(v64 + 20);
  }

  v63 *= *(v64 + 8);
  ahead = __archive_read_ahead(v67, v63, 0, v20, v21, v22, v23, v24);
  if (!ahead)
  {
    return truncated_error(v67, v8, v9, v10, v11, v12, v13, v14);
  }

  v55 = 0;
  for (i = 0; i < *(v64 + 8); ++i)
  {
    v53 = *(v64 + 24) + 96 * i;
    *v53 = archive_le32dec(ahead);
    *(v53 + 4) = archive_le16dec(ahead + 4);
    *(v53 + 6) = archive_le16dec(ahead + 6) & 0xF;
    *(v53 + 8) = archive_le16dec(ahead + 6) >> 8;
    if (*(v53 + 6) >= 4uLL)
    {
      *(v53 + 16) = "UNKNOWN";
    }

    else
    {
      *(v53 + 16) = (&compression_name_0)[*(v53 + 6)];
    }

    ahead += 8;
    v62 += 8;
    if ((*(v64 + 12) & 4) != 0)
    {
      ahead += *(v64 + 20);
      v62 += *(v64 + 20);
    }

    if (v55 >= *v53)
    {
      goto LABEL_85;
    }

    v55 = *v53;
    *(v53 + 92) = 0;
  }

  __archive_read_consume(v67, v62);
  *(v65 + 64) += v62;
  v60 = *(v64 + 4) - *(v65 + 64);
  if ((v60 & 0x8000000000000000) != 0)
  {
    v49 = *(v65 + 64);
    archive_set_error(v67, -1, "Invalid offset of CFFILE %jd < %jd", v25, v26, v27, v28, v29, *(v64 + 4));
    return -30;
  }

  if (v60)
  {
    __archive_read_consume(v67, v60);
    *(v65 + 64) += v60;
  }

  *(v64 + 32) = malloc_type_calloc(*(v64 + 10), 0x30uLL, 0x10100402A02C140uLL);
  if (!*(v64 + 32))
  {
LABEL_86:
    archive_set_error(v67, 12, "Can't allocate memory for CAB data", v20, v21, v22, v23, v24, v48);
    return -30;
  }

  v56 = -1;
  for (i = 0; i < *(v64 + 10); ++i)
  {
    v52 = (*(v64 + 32) + 48 * i);
    v51 = 0;
    ahead = __archive_read_ahead(v67, 0x10uLL, 0, v20, v21, v22, v23, v24);
    if (!ahead)
    {
      return truncated_error(v67, v30, v31, v32, v33, v34, v35, v36);
    }

    v37 = archive_le32dec(ahead);
    *v52 = v37;
    v38 = archive_le32dec(ahead + 4);
    v52[1] = v38;
    v39 = archive_le16dec(ahead + 8);
    *(v52 + 8) = v39;
    v40 = cab_dos_time(ahead + 10);
    *(v52 + 1) = v40;
    v41 = archive_le16dec(ahead + 14);
    *(v52 + 18) = v41;
    __archive_read_consume(v67, 0x10uLL);
    *(v65 + 64) += 16;
    ahead = cab_read_ahead_remaining(v67, 0x100uLL, &v51, v42, v43, v44, v45, v46);
    if (!ahead)
    {
      return truncated_error(v67, v30, v31, v32, v33, v34, v35, v36);
    }

    v61 = cab_strnlen(ahead, v51 - 1);
    if (v61 <= 0)
    {
      goto LABEL_85;
    }

    *(v52 + 3) = 0;
    *(v52 + 4) = 0;
    *(v52 + 5) = 0;
    *(v52 + 4) = 0;
    archive_strncat(v52 + 3, ahead, v61);
    __archive_read_consume(v67, v61 + 1);
    *(v65 + 64) += v61 + 1;
    if (*v52 > 0x7FFF8000 || (v52[1] + *v52) > 2147450880)
    {
      goto LABEL_85;
    }

    v50 = *(v52 + 8);
    switch(v50)
    {
      case 0xFFFD:
        goto LABEL_70;
      case 0xFFFE:
        if (i != *(v64 + 10) - 1)
        {
          goto LABEL_85;
        }

        v57 = *(v64 + 8) - 1;
        goto LABEL_74;
      case 0xFFFF:
        if (*(v64 + 10) != 1)
        {
          goto LABEL_85;
        }

LABEL_70:
        if (i)
        {
          goto LABEL_85;
        }

        v57 = 0;
        v56 = 0;
        v55 = v52[1];
        goto LABEL_74;
    }

    if (*(v52 + 8) >= *(v64 + 8))
    {
      goto LABEL_85;
    }

    v57 = *(v52 + 8);
LABEL_74:
    if (v57 >= v56)
    {
      if (v57 != v56)
      {
        v55 = 0;
      }

      v56 = v57;
      if (v55 == v52[1])
      {
        v55 += *v52;
        if (!*v52 || *(*(v64 + 24) + 96 * v57 + 4))
        {
          continue;
        }
      }
    }

    goto LABEL_85;
  }

  if (*(v64 + 16) || (*(v64 + 12) & 3) != 0)
  {
    archive_set_error(v67, 79, "Multivolume cabinet file is unsupported", v20, v21, v22, v23, v24, v48);
    return -20;
  }

  else
  {
    return 0;
  }
}

uint64_t cab_convert_path_separator_1(void *a1, char a2)
{
  v3 = 0;
  for (i = 0; i < a1[1]; ++i)
  {
    if (*(*a1 + i) == 92)
    {
      if (v3)
      {
        break;
      }

      *(*a1 + i) = 47;
      v3 = 0;
    }

    else
    {
      v3 = (*(*a1 + i) & 0x80) != 0 && (a2 & 0x80) == 0;
    }
  }

  if (i == a1[1])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

const __int32 *cab_convert_path_separator_2(uint64_t a1, _DWORD **a2)
{
  result = archive_entry_pathname_w(a2);
  v5 = result;
  if (result)
  {
    *(a1 + 128) = 0;
    v3 = wcslen(result);
    archive_wstrncat((a1 + 120), v5, v3);
    for (i = 0; i < *(a1 + 128); ++i)
    {
      if (*(*(a1 + 120) + 4 * i) == 92)
      {
        *(*(a1 + 120) + 4 * i) = 47;
      }
    }

    return archive_entry_copy_pathname_w(a2, *(a1 + 120));
  }

  return result;
}

uint64_t cab_skip_sfx(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  for (i = 4096; i >= 128; i >>= 1)
  {
    while (1)
    {
      v11 = __archive_read_ahead(v17, i, &v13, a4, a5, a6, a7, a8);
      if (!v11)
      {
        break;
      }

      v16 = v11;
      v15 = v11 + v13;
      while ((v16 + 8) < v15)
      {
        cab_magic = find_cab_magic(v16);
        if (!cab_magic)
        {
          v14 = &v16[-v11];
          __archive_read_consume(v17, &v16[-v11]);
          return 0;
        }

        v16 += cab_magic;
      }

      v14 = &v16[-v11];
      __archive_read_consume(v17, &v16[-v11]);
    }
  }

  archive_set_error(v17, 79, "Couldn't find out CAB header", a4, a5, a6, a7, a8, v9);
  return -30;
}

uint64_t cab_strnlen(uint64_t a1, unint64_t a2)
{
    ;
  }

  if (i <= a2)
  {
    return i;
  }

  else
  {
    return -1;
  }
}

time_t cab_dos_time(unsigned __int8 *a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v3 = archive_le16dec(v5);
  v4 = archive_le16dec(v5 + 2);
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = ((v3 >> 9) & 0x7F) + 80;
  __b.tm_mon = ((v3 >> 5) & 0xF) - 1;
  __b.tm_mday = v3 & 0x1F;
  __b.tm_hour = (v4 >> 11) & 0x1F;
  __b.tm_min = (v4 >> 5) & 0x3F;
  __b.tm_sec = (2 * v4) & 0x3E;
  __b.tm_isdst = -1;
  return mktime(&__b);
}

uint64_t cab_read_ahead_remaining(uint64_t a1, size_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (a2)
  {
    ahead = __archive_read_ahead(a1, a2, a3, a4, a5, a6, a7, a8);
    if (ahead)
    {
      return ahead;
    }

    --a2;
  }

  return 0;
}

uint64_t cab_next_cfdata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = **(a1 + 2072);
  v36 = *(v38 + 56);
  if (!v36 || !v36[5])
  {
    if (!v36)
    {
      *(*(v38 + 40) + 88) = 0;
      v35 = **(v38 + 40) - *(v38 + 64);
      if (v35 < 0)
      {
        v31 = *(*(v38 + 48) + 16);
        if (v31 != 65533)
        {
          if (v31 == 65534)
          {
            v34 = *(v38 + 80) - 1;
            goto LABEL_12;
          }

          if (v31 != 0xFFFF)
          {
            v34 = *(*(v38 + 48) + 16);
            goto LABEL_12;
          }
        }

        v34 = 0;
LABEL_12:
        v28 = **(v38 + 40);
        v29 = *(v38 + 64);
        archive_set_error(a1, -1, "Invalid offset of CFDATA in folder(%d) %jd < %jd", a4, a5, a6, a7, a8, v34);
        return -30;
      }

      if (v35 > 0)
      {
        if (__archive_read_consume(a1, v35) < 0)
        {
          return -30;
        }

        *(v38 + 64) = **(v38 + 40);
      }
    }

    if (*(*(v38 + 40) + 88) >= *(*(v38 + 40) + 4))
    {
      if (*(*(v38 + 40) + 4))
      {
        v36[2] = 0;
        v36[4] = 0;
        v36[3] = 0;
        v36[5] = 0;
      }

      else
      {
        *(v38 + 56) = *(v38 + 40) + 24;
        __memset_chk();
      }
    }

    else
    {
      v37 = *(v38 + 40) + 24;
      ++*(*(v38 + 40) + 88);
      *(v38 + 56) = v37;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      size = 8;
      if ((*(v38 + 84) & 4) != 0)
      {
        size = *(v38 + 93) + 8;
      }

      size_4 = __archive_read_ahead(a1, size, 0, a4, a5, a6, a7, a8);
      if (!size_4)
      {
        return truncated_error(a1, v8, v9, v10, v11, v12, v13, v14);
      }

      *v37 = archive_le32dec(size_4);
      *(v37 + 4) = archive_le16dec(size_4 + 4);
      *(v37 + 6) = *(v37 + 4);
      *(v37 + 8) = archive_le16dec(size_4 + 6);
      *(v37 + 10) = *(v37 + 8);
      *(v37 + 12) = 0;
      *(v37 + 14) = 0;
      *(v37 + 16) = 0;
      if (!*(v37 + 4) || *(v37 + 4) > 0x9800u || *(v37 + 8) > 0x8000u || !*(v37 + 8) && ((v30 = *(*(v38 + 48) + 16), v30 == 65533) || v30 != 0xFFFF && v30 != 65534) || *(*(v38 + 40) + 88) < *(*(v38 + 40) + 4) && *(v37 + 8) != 0x8000 || !*(*(v38 + 40) + 6) && *(v37 + 4) != *(v37 + 8))
      {
        archive_set_error(a1, 79, "Invalid CFDATA", v15, v16, v17, v18, v19, v27);
        return -30;
      }

      if (*(v37 + 24) < size)
      {
        free(*(v37 + 32));
        *(v37 + 32) = malloc_type_malloc(size, 0x6729523BuLL);
        if (!*(v37 + 32))
        {
          archive_set_error(a1, 12, "Can't allocate memory for CAB data", v20, v21, v22, v23, v24, v27);
          return -30;
        }

        *(v37 + 24) = size;
      }

      v25 = *(v37 + 32);
      __memcpy_chk();
      __archive_read_consume(a1, size);
      *(v38 + 64) += size;
    }

    return 0;
  }

  return 0;
}

uint64_t cab_consume_cfdata(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v23 = **(a1 + 2072);
  v22 = 0;
  v21 = 0;
  cfdata = 0;
  v20 = cab_minimum_consume_cfdata(a1, a2);
  if (v20 < 0)
  {
    return -30;
  }

  v22 = v23[7];
  while (v20 > 0)
  {
    v18 = 0;
    if (!v22[2])
    {
      archive_set_error(v25, 79, "Invalid CFDATA", v4, v5, v6, v7, v8, v17);
      return -30;
    }

    v21 = v22[5];
    if (v21 > v20)
    {
      v21 = v20;
    }

    v20 -= v21;
    if (!v22[6] && (*(v23[6] + 16) == 0xFFFF || *(v23[6] + 16) == 65533))
    {
      if (v21 != v22[5])
      {
        v22[7] += v21;
        v22[5] -= v21;
        return v24;
      }

      __archive_read_consume(v25, v22[2]);
      v23[8] += v22[2];
      v22[3] = 0;
      v22[5] = 0;
      cfdata = cab_next_cfdata(v25, v9, v10, v11, v12, v13, v14, v15);
      if (cfdata < 0)
      {
        return cfdata;
      }

      v22 = v23[7];
      if (!v22[4] && *(v23[6] + 16) - 65533 <= 2)
      {
        v20 = 0;
      }
    }

    else if (v21)
    {
      while (v21 > 0)
      {
        cab_read_ahead_cfdata(v25, &v18, v3, v4, v5, v6, v7, v8);
        if (v18 <= 0)
        {
          return -30;
        }

        if (v18 > v21)
        {
          v18 = v21;
        }

        if (cab_minimum_consume_cfdata(v25, v18) < 0)
        {
          return -30;
        }

        v21 -= v18;
      }
    }

    else
    {
      cfdata = cab_next_cfdata(v25, v2, v3, v4, v5, v6, v7, v8);
      if (cfdata < 0)
      {
        return cfdata;
      }

      v22 = v23[7];
      if (!v22[4] && *(v23[6] + 16) - 65533 <= 2)
      {
        return -30;
      }
    }
  }

  return v24;
}

uint64_t cab_read_data(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = **(a1 + 2072);
  v16 = 0;
  if (*(v17 + 8))
  {
    v8 = cab_read_ahead_cfdata(v21, &v16, a3, a4, a5, a6, a7, a8);
    *v20 = v8;
    if (v16 > 0)
    {
      if (v16 > *(v17 + 8))
      {
        v16 = *(v17 + 8);
      }

      *v19 = v16;
      *v18 = *v17;
      *v17 += v16;
      *(v17 + 8) -= v16;
      if (!*(v17 + 8))
      {
        *(v17 + 146) = 1;
      }

      *(v17 + 16) = v16;
      if (!*(*(v17 + 40) + 6) && *(*(v17 + 56) + 16) > *(v17 + 16))
      {
        *(*(v17 + 56) + 16) = *(v17 + 16);
      }

      return 0;
    }

    else
    {
      *v20 = 0;
      *v19 = 0;
      *v18 = 0;
      if (v16 || *(*(v17 + 56) + 8))
      {
        return v16;
      }

      else
      {
        archive_set_error(v21, 79, "Invalid CFDATA", v9, v10, v11, v12, v13, v15);
        return -30;
      }
    }
  }

  else
  {
    *v20 = 0;
    *v19 = 0;
    *v18 = *v17;
    *(v17 + 146) = 1;
    return 0;
  }
}

uint64_t cab_minimum_consume_cfdata(uint64_t a1, uint64_t a2)
{
  v9 = **(a1 + 2072);
  v8 = v9[7];
  v5 = a2;
  if (*(v9[5] + 6))
  {
    v7 = *(v8 + 12) - *(v8 + 14);
    if (v7 > 0)
    {
      v2 = *(v8 + 12) - *(v8 + 14);
      if (a2 < v7)
      {
        v7 = a2;
      }

      v5 = a2 - v7;
      *(v8 + 14) += v7;
      *(v8 + 10) -= v7;
    }

    if (*(v8 + 16))
    {
      v6 = *(v8 + 16);
      *(v8 + 16) = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (a2 < *(v8 + 16))
    {
      v6 = a2;
    }

    else
    {
      v6 = *(v8 + 16);
    }

    v5 = a2 - v6;
    *(v8 + 14) += v6;
    *(v8 + 10) -= v6;
    *(v8 + 16) -= v6;
  }

  if (v6 && (cab_checksum_update(a1, v6), __archive_read_consume(a1, v6), v9[8] += v6, (*(v8 + 6) -= v6) == 0) && (v4 = cab_checksum_finish(a1), v4 < 0))
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t cab_read_ahead_cfdata(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = **(a1 + 2072);
  cfdata = cab_next_cfdata(a1, a2, a3, a4, a5, a6, a7, a8);
  if (cfdata < 0)
  {
    *a2 = cfdata;
    return 0;
  }

  else
  {
    v15 = *(*(v17 + 40) + 6);
    if (*(*(v17 + 40) + 6))
    {
      if (v15 == 1)
      {
        return cab_read_ahead_cfdata_deflate(a1, a2, v8, v9, v10, v11, v12, v13);
      }

      else if (v15 == 3)
      {
        return cab_read_ahead_cfdata_lzx(a1, a2);
      }

      else
      {
        archive_set_error(a1, 79, "Unsupported CAB compression : %s", v9, v10, v11, v12, v13, *(*(v17 + 40) + 16));
        *a2 = -25;
        return 0;
      }
    }

    else
    {
      return cab_read_ahead_cfdata_none(a1, a2, v8, v9, v10, v11, v12, v13);
    }
  }
}

uint64_t cab_checksum_update(uint64_t result, uint64_t a2)
{
  v8 = *(**(result + 2072) + 56);
  if (*v8 && *(v8 + 56))
  {
    v7 = *(v8 + 56);
    if (*(v8 + 48))
    {
      while (1)
      {
        v4 = 0;
        if (*(v8 + 48) < 4)
        {
          v4 = a2 != 0;
        }

        if (!v4)
        {
          break;
        }

        v2 = v7++;
        LOBYTE(v2) = *v2;
        v3 = (*(v8 + 48))++;
        *(v8 + 44 + v3) = v2;
        --a2;
      }

      if (*(v8 + 48) == 4)
      {
        result = cab_checksum_cfdata_4((v8 + 44), 4u, *(v8 + 40));
        *(v8 + 40) = result;
        *(v8 + 48) = 0;
      }
    }

    if (a2)
    {
      v5 = a2 & 3;
      if (a2 - v5 > 0)
      {
        result = cab_checksum_cfdata_4(v7, a2 - v5, *(v8 + 40));
        *(v8 + 40) = result;
      }

      if ((a2 & 3) != 0)
      {
        result = __memcpy_chk();
      }

      *(v8 + 48) = v5;
    }

    *(v8 + 56) = 0;
  }

  return result;
}

uint64_t cab_checksum_finish(uint64_t a1)
{
  v12 = **(a1 + 2072);
  v11 = *(v12 + 56);
  if (*v11)
  {
    if (*(v11 + 12))
    {
      *(v11 + 10) = cab_checksum_cfdata(v11 + 44, *(v11 + 12), *(v11 + 10));
      *(v11 + 12) = 0;
    }

    v10 = 4;
    if ((*(v12 + 84) & 4) != 0)
    {
      v10 = *(v12 + 93) + 4;
    }

    *(v11 + 10) = cab_checksum_cfdata((*(v11 + 4) + 4), v10, *(v11 + 10));
    if (*(v11 + 10) == *v11)
    {
      return 0;
    }

    else
    {
      v7 = *v11;
      v8 = *(v11 + 10);
      v9 = *(v11 + 2);
      archive_set_error(a1, 79, "Checksum error CFDATA[%d] %x:%x in %d bytes", v1, v2, v3, v4, v5, (*(*(v12 + 40) + 88) - 1));
      return -25;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t cab_checksum_cfdata_4(unsigned __int8 *a1, unsigned int a2, unsigned int a3)
{
  for (i = a2 / 4; i; --i)
  {
    a3 ^= archive_le32dec(a1);
    a1 += 4;
  }

  return a3;
}

uint64_t cab_checksum_cfdata(unsigned __int8 *a1, uint64_t a2, unsigned int a3)
{
  v7 = cab_checksum_cfdata_4(a1, a2, a3);
  v8 = &a1[a2 & 0xFFFFFFFFFFFFFFFCLL];
  v6 = 0;
  v5 = a2 & 3;
  switch(v5)
  {
    case 1:
      goto LABEL_6;
    case 2:
LABEL_5:
      v3 = v8++;
      v6 |= *v3 << 8;
LABEL_6:
      v6 |= *v8;
      return v7 ^ v6;
    case 3:
      ++v8;
      v6 = a1[a2 & 0xFFFFFFFFFFFFFFFCLL] << 16;
      goto LABEL_5;
  }

  return v7 ^ v6;
}

uint64_t cab_read_ahead_cfdata_none(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(**(a1 + 2072) + 56);
  ahead = __archive_read_ahead(a1, 1uLL, a2, a4, a5, a6, a7, a8);
  if (*a2 > 0)
  {
    if (*a2 > *(v17 + 10))
    {
      *a2 = *(v17 + 10);
    }

    *(v17 + 12) = *(v17 + 8);
    *(v17 + 16) = *a2;
    *(v17 + 56) = ahead;
    return ahead;
  }

  else
  {
    *a2 = truncated_error(a1, v8, v9, v10, v11, v12, v13, v14);
    return 0;
  }
}

uint64_t cab_read_ahead_cfdata_deflate(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v42 = a2;
  v41 = **(a1 + 2072);
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v40 = *(v41 + 56);
  if (!*(v41 + 160))
  {
    *(v41 + 168) = 0x8000;
    *(v41 + 160) = malloc_type_malloc(*(v41 + 168), 0x100004077774924uLL);
    if (!*(v41 + 160))
    {
      archive_set_error(v43, 12, "No memory for CAB reader", a4, a5, a6, a7, a8, v30);
      *v42 = -30;
      return 0;
    }
  }

  v36 = *(v40 + 12);
  if (v36 == *(v40 + 8))
  {
    v39 = *(v41 + 160) + *(v40 + 14);
    *v42 = v36 - *(v40 + 14);
    return v39;
  }

  if (!*(*(v41 + 40) + 92))
  {
    *(v41 + 272) = 0;
    *(v41 + 280) = 0;
    *(v41 + 288) = 0;
    *(v41 + 296) = 0;
    *(v41 + 304) = 0;
    *(v41 + 312) = 0;
    if (*(v41 + 384))
    {
      v38 = inflateReset((v41 + 272));
    }

    else
    {
      v38 = inflateInit2_((v41 + 272), -15, "1.2.12", 112);
    }

    if (v38)
    {
      archive_set_error(v43, -1, "Can't initialize deflate decompression.", a4, a5, a6, a7, a8, v30);
      *v42 = -30;
      return 0;
    }

    *(v41 + 384) = 1;
    *(*(v41 + 40) + 92) = 1;
  }

  if (*(v40 + 6) == *(v40 + 4))
  {
    v37 = 2;
  }

  else
  {
    v37 = 0;
  }

  v35 = 0;
  *(v41 + 312) = v36;
  while (1)
  {
    v32 = 0;
    if (!v35)
    {
      v32 = *(v41 + 312) < *(v40 + 8);
    }

    if (!v32)
    {
      break;
    }

    v34 = 0;
    *(v41 + 296) = *(v41 + 160) + *(v41 + 312);
    *(v41 + 304) = *(v40 + 8) - *(v41 + 312);
    v39 = __archive_read_ahead(v43, 1uLL, &v34, a4, a5, a6, a7, a8);
    if (v34 <= 0)
    {
      v15 = truncated_error(v43, v8, v9, v10, v11, v12, v13, v14);
      *v42 = v15;
      return 0;
    }

    if (v34 > *(v40 + 6))
    {
      v34 = *(v40 + 6);
    }

    *(v41 + 272) = v39;
    *(v41 + 280) = v34;
    *(v41 + 288) = 0;
    if (v37 <= 0)
    {
      goto LABEL_43;
    }

    if (v34 <= 0)
    {
      goto LABEL_66;
    }

    if (v34 > v37)
    {
      if (v37 == 1 && **(v41 + 272) != 75 || v37 == 2 && (**(v41 + 272) != 67 || *(*(v41 + 272) + 1) != 75))
      {
LABEL_66:
        archive_set_error(v43, -1, "CFDATA incorrect(no MSZIP signature)", v10, v11, v12, v13, v14, v30);
        *v42 = -30;
        return 0;
      }

      *(v41 + 272) += v37;
      *(v41 + 280) -= v37;
      *(v41 + 288) += v37;
      v37 = 0;
LABEL_43:
      v38 = inflate((v41 + 272), 0);
      if (v38)
      {
        if (v38 != 1)
        {
          goto LABEL_62;
        }

        v35 = 1;
      }

      *(v40 + 16) = *(v41 + 288);
      *(v40 + 56) = v39;
      if (cab_minimum_consume_cfdata(v43, *(v40 + 16)) < 0)
      {
        *v42 = -30;
        return 0;
      }
    }

    else
    {
      if (v37 == 2)
      {
        if (**(v41 + 272) != 67 || v34 > 1 && *(*(v41 + 272) + 1) != 75)
        {
          goto LABEL_66;
        }
      }

      else if (**(v41 + 272) != 75)
      {
        goto LABEL_66;
      }

      *(v40 + 16) = v34;
      *(v40 + 56) = v39;
      if (cab_minimum_consume_cfdata(v43, *(v40 + 16)) < 0)
      {
        *v42 = -30;
        return 0;
      }

      v37 -= v34;
    }
  }

  v36 = *(v41 + 312);
  if (v36 < *(v40 + 8))
  {
    v31 = *(v40 + 8);
    archive_set_error(v43, -1, "Invalid uncompressed size (%d < %d)", a4, a5, a6, a7, a8, v36);
    *v42 = -30;
    return 0;
  }

  if (*(v40 + 6))
  {
    v33 = 0;
    v39 = __archive_read_ahead(v43, *(v40 + 6), &v33, a4, a5, a6, a7, a8);
    if (v33 <= 0)
    {
      v28 = truncated_error(v43, v21, v22, v23, v24, v25, v26, v27);
      *v42 = v28;
      return 0;
    }

    *(v40 + 16) = *(v40 + 6);
    *(v40 + 56) = v39;
    if (cab_minimum_consume_cfdata(v43, *(v40 + 16)) < 0)
    {
      *v42 = -30;
      return 0;
    }
  }

  if (*(*(v41 + 40) + 88) >= *(*(v41 + 40) + 4) || (v38 = inflateReset((v41 + 272))) == 0 && (v38 = inflateSetDictionary((v41 + 272), *(v41 + 160), *(v40 + 8))) == 0)
  {
    v39 = *(v41 + 160) + *(v40 + 14);
    *v42 = v36 - *(v40 + 14);
    *(v40 + 12) = v36;
    return v39;
  }

LABEL_62:
  if (v38 == -4)
  {
    archive_set_error(v43, 12, "Out of memory for deflate decompression", v16, v17, v18, v19, v20, v30);
  }

  else
  {
    archive_set_error(v43, -1, "Deflate decompression failed (%d)", v16, v17, v18, v19, v20, v38);
  }

  *v42 = -30;
  return 0;
}

uint64_t cab_read_ahead_cfdata_lzx(uint64_t a1, void *a2)
{
  v46 = a1;
  v45 = a2;
  v44 = **(a1 + 2072);
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v43 = *(v44 + 56);
  if (*(v44 + 160) || (*(v44 + 168) = 0x8000, (*(v44 + 160) = malloc_type_malloc(*(v44 + 168), 0x100004077774924uLL)) != 0))
  {
    v40 = *(v43 + 12);
    if (v40 != *(v43 + 8))
    {
      if (!*(*(v44 + 40) + 92))
      {
        v41 = lzx_decode_init(v44 + 392, *(*(v44 + 40) + 8));
        if (v41)
        {
          archive_set_error(v46, -1, "Can't initialize LZX decompression.", v7, v8, v9, v10, v11, v37);
          *v45 = -30;
          return 0;
        }

        *(*(v44 + 40) + 92) = 1;
      }

      lzx_cleanup_bitstream(v44 + 392);
      *(v44 + 432) = v40;
      while (*(v44 + 432) < *(v43 + 8))
      {
        v39 = 0;
        *(v44 + 416) = *(v44 + 160) + *(v44 + 432);
        *(v44 + 424) = *(v43 + 8) - *(v44 + 432);
        v42 = __archive_read_ahead(v46, 1uLL, &v39, v12, v13, v14, v15, v16);
        if (v39 <= 0)
        {
          archive_set_error(v46, 79, "Truncated CAB file data", v17, v18, v19, v20, v21, v37);
          *v45 = -30;
          return 0;
        }

        if (v39 > *(v43 + 6))
        {
          v39 = *(v43 + 6);
        }

        *(v44 + 392) = v42;
        *(v44 + 400) = v39;
        *(v44 + 408) = 0;
        v41 = lzx_decode((v44 + 392), *(v43 + 6) == v39);
        if (v41 > 1)
        {
          archive_set_error(v46, -1, "LZX decompression failed (%d)", v22, v23, v24, v25, v26, v41);
          *v45 = -30;
          return 0;
        }

        *(v43 + 16) = *(v44 + 408);
        *(v43 + 56) = v42;
        v27 = cab_minimum_consume_cfdata(v46, *(v43 + 16));
        if (v27 < 0)
        {
          *v45 = -30;
          return 0;
        }
      }

      v40 = *(v44 + 432);
      if (*(v43 + 6))
      {
        v38 = 0;
        v42 = __archive_read_ahead(v46, *(v43 + 6), &v38, v12, v13, v14, v15, v16);
        if (v38 <= 0)
        {
          v35 = truncated_error(v46, v28, v29, v30, v31, v32, v33, v34);
          *v45 = v35;
          return 0;
        }

        *(v43 + 16) = *(v43 + 6);
        *(v43 + 56) = v42;
        if (cab_minimum_consume_cfdata(v46, *(v43 + 16)) < 0)
        {
          *v45 = -30;
          return 0;
        }
      }

      lzx_translation(v44 + 392, *(v44 + 160), *(v43 + 8), (*(*(v44 + 40) + 88) - 1) << 15);
      v42 = *(v44 + 160) + *(v43 + 14);
      *v45 = v40 - *(v43 + 14);
      *(v43 + 12) = v40;
      return v42;
    }

    v42 = *(v44 + 160) + *(v43 + 14);
    *v45 = v40 - *(v43 + 14);
    return v42;
  }

  else
  {
    archive_set_error(v46, 12, "No memory for CAB reader", v2, v3, v4, v5, v6, v37);
    *v45 = -30;
    return 0;
  }
}

uint64_t lzx_decode_init(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) || (*(a1 + 48) = malloc_type_calloc(1uLL, 0x220uLL, 0x1030040BBC8BCA4uLL)) != 0)
  {
    v10 = *(a1 + 48);
    *(v10 + 540) = -25;
    if (a2 >= 15 && a2 <= 21)
    {
      *(v10 + 540) = -30;
      v8 = *(v10 + 4);
      v7 = slots[a2 - 15];
      *(v10 + 4) = 1 << a2;
      *(v10 + 8) = *(v10 + 4) - 1;
      if (!*(v10 + 16) || v8 != *(v10 + 4))
      {
        free(*(v10 + 16));
        *(v10 + 16) = malloc_type_malloc(*(v10 + 4), 0xB856AFC5uLL);
        if (!*(v10 + 16))
        {
          v13 = -30;
          goto LABEL_37;
        }

        free(*(v10 + 96));
        *(v10 + 96) = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
        if (!*(v10 + 96))
        {
          v13 = -30;
          goto LABEL_37;
        }
      }

      for (i = 0; i < 18; ++i)
      {
        v14[i] = 1 << i;
      }

      v5 = 0;
      v6 = 0;
      for (j = 0; j < v7; ++j)
      {
        if (v5)
        {
          v6 += v14[v5];
        }

        else
        {
          v6 = j;
        }

        if (v5 < 17)
        {
          v5 = -2;
          for (k = v6; k; k >>= 1)
          {
            ++v5;
          }

          if (v5 <= 0)
          {
            v5 = 0;
          }
        }

        *(*(v10 + 96) + 8 * j) = v6;
        *(*(v10 + 96) + 8 * j + 4) = v5;
      }

      *(v10 + 24) = 0;
      *v10 = 0;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 72) = 1;
      *(v10 + 68) = 1;
      *(v10 + 64) = 1;
      if (lzx_huffman_init(v10 + 120, 8uLL, 8))
      {
        v13 = -30;
      }

      else if (lzx_huffman_init(v10 + 432, 0x14uLL, 10))
      {
        v13 = -30;
      }

      else if (lzx_huffman_init(v10 + 328, 8 * v7 + 256, 16))
      {
        v13 = -30;
      }

      else if (lzx_huffman_init(v10 + 224, 0xF9uLL, 16))
      {
        v13 = -30;
      }

      else
      {
        *(v10 + 540) = 0;
        v13 = 0;
      }
    }

    else
    {
      v13 = -25;
    }
  }

  else
  {
    v13 = -30;
  }

LABEL_37:
  *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t lzx_cleanup_bitstream(uint64_t result)
{
  *(*(result + 48) + 112) = 0;
  *(*(result + 48) + 117) = 0;
  return result;
}

uint64_t lzx_decode(void *a1, int a2)
{
  v7 = a1[6];
  if (*(v7 + 540))
  {
    return *(v7 + 540);
  }

  else
  {
    v6 = a1[1];
    lzx_br_fixup(a1, v7 + 104);
    do
    {
      if (*v7 >= 18)
      {
        v3 = a1[4];
        blocks = lzx_decode_blocks(a1, a2);
        v4 = v3 - a1[4];
        a1[3] += v4;
        a1[5] += v4;
      }

      else
      {
        blocks = lzx_read_blocks(a1, a2);
      }
    }

    while (blocks == 100);
    a1[2] += v6 - a1[1];
    return blocks;
  }
}

uint64_t lzx_translation(uint64_t result, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v10 = a2;
  v8 = *(result + 48);
  if (*(v8 + 40) && a3 > 0xA)
  {
    __s = a2;
    v6 = &a2[a3 - 10];
    while (1)
    {
      v4 = 0;
      if (__s < v6)
      {
        result = memchr(__s, 232, v6 - __s);
        __s = result;
        v4 = result != 0;
      }

      if (!v4)
      {
        break;
      }

      v5 = a4 + __s - v10;
      result = archive_le32dec(__s + 1);
      if (result >= -v5 && result < *(v8 + 36))
      {
        if ((result & 0x80000000) != 0)
        {
          result = archive_le32enc((__s + 1), result + *(v8 + 36));
        }

        else
        {
          result = archive_le32enc((__s + 1), result - v5);
        }
      }

      __s += 5;
    }
  }

  return result;
}

uint64_t lzx_huffman_init(uint64_t a1, size_t a2, int a3)
{
  if (*(a1 + 72) && *a1 == a2)
  {
    v3 = *(a1 + 72);
    __memset_chk();
LABEL_7:
    if (!*(a1 + 96))
    {
      *(a1 + 96) = malloc_type_malloc(2 * (1 << a3), 0x1000040BDFB0063uLL);
      if (!*(a1 + 96))
      {
        return -30;
      }

      *(a1 + 84) = a3;
    }

    return 0;
  }

  free(*(a1 + 72));
  *(a1 + 72) = malloc_type_calloc(a2, 1uLL, 0x100004077774924uLL);
  if (*(a1 + 72))
  {
    *a1 = a2;
    goto LABEL_7;
  }

  return -30;
}

void *lzx_br_fixup(void *result, uint64_t a2)
{
  if (*(a2 + 13) && 64 - *(a2 + 8) >= 16 && result[1] > 0)
  {
    *a2 = (*(*result)++ << 8) | (*a2 << 16) | *(a2 + 12);
    --result[1];
    *(a2 + 8) += 16;
    *(a2 + 13) = 0;
  }

  return result;
}

uint64_t lzx_read_blocks(uint64_t a1, int a2)
{
  v22 = *(a1 + 48);
  v21 = (v22 + 104);
  while (2)
  {
    switch(*v22)
    {
      case 0:
        if (*(v22 + 112) < 1 && !lzx_br_fillup(a1, v21) && *(v22 + 112) < 1)
        {
          *v22 = 0;
          if (!a2)
          {
            return 0;
          }

LABEL_124:
          *(v22 + 540) = -25;
          return -25;
        }

        *(v22 + 40) = (*(v22 + 104) >> ((*(v22 + 112))-- - 1)) & 1;
LABEL_9:
        if (*(v22 + 40))
        {
          if (*(v22 + 112) < 32 && !lzx_br_fillup(a1, v21) && *(v22 + 112) < 32)
          {
            *v22 = 1;
            if (!a2)
            {
              return 0;
            }

            goto LABEL_124;
          }

          *(v22 + 36) = (*(v22 + 104) >> (*(v22 + 112) - 16));
          *(v22 + 112) -= 16;
          *(v22 + 36) <<= 16;
          *(v22 + 36) |= (*(v22 + 104) >> (*(v22 + 112) - 16));
          *(v22 + 112) -= 16;
        }

LABEL_16:
        if (*(v22 + 112) < 3 && !lzx_br_fillup(a1, v21) && *(v22 + 112) < 3)
        {
          *v22 = 2;
          if (!a2)
          {
            return 0;
          }

          goto LABEL_124;
        }

        *(v22 + 41) = (*(v22 + 104) >> (*(v22 + 112) - 3)) & 7;
        *(v22 + 112) -= 3;
        if ((*(v22 + 41) - 1) > 2)
        {
          goto LABEL_124;
        }

LABEL_22:
        if (*(v22 + 112) < 24 && !lzx_br_fillup(a1, v21) && *(v22 + 112) < 24)
        {
          *v22 = 3;
          if (!a2)
          {
            return 0;
          }

          goto LABEL_124;
        }

        *(v22 + 48) = (*(v22 + 104) >> (*(v22 + 112) - 8));
        *(v22 + 112) -= 8;
        *(v22 + 48) <<= 16;
        *(v22 + 48) |= (*(v22 + 104) >> (*(v22 + 112) - 16));
        *(v22 + 112) -= 16;
        if (!*(v22 + 48))
        {
          goto LABEL_124;
        }

        *(v22 + 56) = *(v22 + 48);
        if (*(v22 + 41) != 3)
        {
          if (*(v22 + 41) == 1)
          {
            *v22 = 11;
          }

          else
          {
            *v22 = 10;
          }

          continue;
        }

LABEL_32:
        if ((*(v22 + 112) & 0xF) != 0)
        {
          *(v22 + 112) &= 0xFFFFFFF0;
        }

        else
        {
          if (*(v22 + 112) < 16 && !lzx_br_fillup(a1, v21) && *(v22 + 112) < 16)
          {
            *v22 = 4;
            if (!a2)
            {
              return 0;
            }

            goto LABEL_124;
          }

          *(v22 + 112) -= 16;
        }

        *(v22 + 80) = 0;
        *v22 = 5;
        do
        {
LABEL_41:
          if (*(v22 + 112) < 32)
          {
            if (*(v22 + 112) >= 16)
            {
              v16 = *(v22 + 104) >> (*(v22 + 112) - 16);
              *(v22 + 112) -= 16;
              archive_le16enc((v22 + 76), v16);
              *(v22 + 80) = 2;
            }
          }

          else
          {
            v14 = *(v22 + 104) >> (*(v22 + 112) - 16);
            *(v22 + 112) -= 16;
            archive_le16enc((v22 + 76), v14);
            v2 = (*(v22 + 112) - 16);
            v15 = *(v22 + 104) >> (*(v22 + 112) - 16);
            *(v22 + 112) -= 16;
            archive_le16enc((v22 + 78), v15);
            *(v22 + 80) = 4;
          }

          if (*(v22 + 80) < 4 && *(v22 + 117))
          {
            v3 = *(v22 + 116);
            v4 = (*(v22 + 80))++;
            *(v22 + 76 + v4) = v3;
            *(v22 + 117) = 0;
          }

          while (*(v22 + 80) < 4)
          {
            if (*(a1 + 8) <= 0)
            {
              if (!a2)
              {
                return 0;
              }

              goto LABEL_124;
            }

            v5 = (*a1)++;
            LOBYTE(v5) = *v5;
            v6 = (*(v22 + 80))++;
            *(v22 + 76 + v6) = v5;
            --*(a1 + 8);
          }

          *(v22 + 80) = 0;
          switch(*v22)
          {
            case 5:
              *(v22 + 64) = archive_le32dec((v22 + 76));
              if ((*(v22 + 64) & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              *v22 = 6;
              break;
            case 6:
              *(v22 + 68) = archive_le32dec((v22 + 76));
              if ((*(v22 + 68) & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              *v22 = 7;
              break;
            case 7:
              *(v22 + 72) = archive_le32dec((v22 + 76));
              if ((*(v22 + 72) & 0x80000000) != 0)
              {
                goto LABEL_124;
              }

              *v22 = 8;
              break;
          }
        }

        while (*v22 != 8);
LABEL_63:
        while (*(v22 + 56))
        {
          if (*(a1 + 32) <= 0)
          {
            return 0;
          }

          if (*(a1 + 8) <= 0)
          {
            if (a2)
            {
              goto LABEL_124;
            }

            return 0;
          }

          v13 = *(v22 + 56);
          if (v13 > *(v22 + 4) - *(v22 + 24))
          {
            v13 = *(v22 + 4) - *(v22 + 24);
          }

          if (v13 > *(a1 + 32))
          {
            v13 = *(a1 + 32);
          }

          if (v13 > *(a1 + 8))
          {
            v13 = *(a1 + 8);
          }

          v7 = *(a1 + 24);
          v8 = *a1;
          __memcpy_chk();
          v9 = *(v22 + 16) + *(v22 + 24);
          v10 = *a1;
          __memcpy_chk();
          *a1 += v13;
          *(a1 + 8) -= v13;
          *(a1 + 24) += v13;
          *(a1 + 32) -= v13;
          *(a1 + 40) += v13;
          *(v22 + 24) = (*(v22 + 24) + v13) & *(v22 + 8);
          *(v22 + 56) -= v13;
        }

LABEL_76:
        if ((*(v22 + 48) & 1) == 0)
        {
LABEL_81:
          *v22 = 2;
          return 1;
        }

        if (*(a1 + 8) > 0)
        {
          ++*a1;
          --*(a1 + 8);
          goto LABEL_81;
        }

        *v22 = 9;
        if (a2)
        {
          goto LABEL_124;
        }

        return 0;
      case 1:
        goto LABEL_9;
      case 2:
        goto LABEL_16;
      case 3:
        goto LABEL_22;
      case 4:
        goto LABEL_32;
      case 5:
      case 6:
      case 7:
        goto LABEL_41;
      case 8:
        goto LABEL_63;
      case 9:
        goto LABEL_76;
      case 0xA:
        if (*(v22 + 112) >= 3 * *(v22 + 120) || lzx_br_fillup(a1, v21) || *(v22 + 112) >= 3 * *(v22 + 120))
        {
          __memset_chk();
          for (i = 0; i < *(v22 + 120); ++i)
          {
            *(*(v22 + 192) + i) = (*(v22 + 104) >> (*(v22 + 112) - 3)) & 7;
            v11 = *(*(v22 + 192) + i);
            ++*(v22 + 124 + 4 * v11);
            *(v22 + 112) -= 3;
          }

          if (!lzx_make_huffman_table((v22 + 120)))
          {
            goto LABEL_124;
          }

LABEL_91:
          *(v22 + 536) = 0;
LABEL_92:
          if (lzx_read_pre_tree(a1))
          {
            if (!lzx_make_huffman_table((v22 + 432)))
            {
              goto LABEL_124;
            }

            *(v22 + 536) = 0;
LABEL_97:
            bitlen = lzx_read_bitlen(a1, (v22 + 328), 256);
            if (bitlen < 0)
            {
              goto LABEL_124;
            }

            if (bitlen)
            {
              *(v22 + 536) = 0;
LABEL_102:
              if (lzx_read_pre_tree(a1))
              {
                if (!lzx_make_huffman_table((v22 + 432)))
                {
                  goto LABEL_124;
                }

                *(v22 + 536) = 256;
LABEL_107:
                v18 = lzx_read_bitlen(a1, (v22 + 328), -1);
                if (v18 < 0)
                {
                  goto LABEL_124;
                }

                if (v18)
                {
                  if (!lzx_make_huffman_table((v22 + 328)))
                  {
                    goto LABEL_124;
                  }

                  *(v22 + 536) = 0;
LABEL_113:
                  if (lzx_read_pre_tree(a1))
                  {
                    if (!lzx_make_huffman_table((v22 + 432)))
                    {
                      goto LABEL_124;
                    }

                    *(v22 + 536) = 0;
LABEL_118:
                    v19 = lzx_read_bitlen(a1, (v22 + 224), -1);
                    if (v19 < 0)
                    {
                      goto LABEL_124;
                    }

                    if (v19)
                    {
                      if (!lzx_make_huffman_table((v22 + 224)))
                      {
                        goto LABEL_124;
                      }

                      *v22 = 18;
                      return 100;
                    }

                    else
                    {
                      *v22 = 17;
                      if (a2)
                      {
                        goto LABEL_124;
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    *v22 = 16;
                    if (a2)
                    {
                      goto LABEL_124;
                    }

                    return 0;
                  }
                }

                else
                {
                  *v22 = 15;
                  if (a2)
                  {
                    goto LABEL_124;
                  }

                  return 0;
                }
              }

              else
              {
                *v22 = 14;
                if (a2)
                {
                  goto LABEL_124;
                }

                return 0;
              }
            }

            else
            {
              *v22 = 13;
              if (a2)
              {
                goto LABEL_124;
              }

              return 0;
            }
          }

          else
          {
            *v22 = 12;
            if (a2)
            {
              goto LABEL_124;
            }

            return 0;
          }
        }

        else
        {
          *v22 = 10;
          if (a2)
          {
            goto LABEL_124;
          }

          return 0;
        }

      case 0xB:
        goto LABEL_91;
      case 0xC:
        goto LABEL_92;
      case 0xD:
        goto LABEL_97;
      case 0xE:
        goto LABEL_102;
      case 0xF:
        goto LABEL_107;
      case 0x10:
        goto LABEL_113;
      case 0x11:
        goto LABEL_118;
      default:
        continue;
    }
  }
}

uint64_t lzx_decode_blocks(uint64_t a1, int a2)
{
  v43 = a1;
  v42 = a2;
  v41 = *(a1 + 48);
  v40 = 0uLL;
  v40 = *(v41 + 104);
  v39 = v41 + 120;
  v38 = v41 + 224;
  v37 = v41 + 328;
  v36 = *(v41 + 96);
  v35 = *(a1 + 24);
  v34 = &v35[*(a1 + 32)];
  v33 = *(v41 + 16);
  v32 = *(v41 + 192);
  v31 = *(v41 + 296);
  v30 = *(v41 + 400);
  v29 = *(v41 + 56);
  v28 = *(v41 + 200);
  v27 = *(v41 + 304);
  v26 = *(v41 + 408);
  v21 = *(v41 + 32);
  v19 = *(v41 + 28);
  v18 = *(v41 + 24);
  v17 = *(v41 + 8);
  v16 = *(v41 + 4);
  v15 = *(v41 + 84);
  v14 = *(v41 + 92);
  v13 = *(v41 + 88);
  v12 = *(v41 + 64);
  v11 = *(v41 + 68);
  v10 = *(v41 + 72);
  v9 = *v41;
  v8 = *(v41 + 41);
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        while (v9 != 18)
        {
          switch(v9)
          {
            case 19:
              goto LABEL_21;
            case 20:
              goto LABEL_40;
            case 21:
              goto LABEL_63;
            case 22:
              goto LABEL_64;
          }
        }

        while (1)
        {
          if (!v29)
          {
            *v41 = 2;
            *(v41 + 104) = v40;
            *(v41 + 56) = 0;
            *(v41 + 32) = v21;
            *(v41 + 28) = v19;
            *(v41 + 84) = v15;
            *(v41 + 88) = v13;
            *(v41 + 64) = v12;
            *(v41 + 68) = v11;
            *(v41 + 72) = v10;
            *(v41 + 24) = v18;
            v43[4] = (v34 - v35);
            return 1;
          }

          if (v35 >= v34)
          {
            goto LABEL_84;
          }

          if (SDWORD2(v40) >= v26 || lzx_br_fillup(v43, &v40) || SDWORD2(v40) >= v26)
          {
            v22 = lzx_decode_huffman(v37, (v40 >> (BYTE8(v40) - v26)) & cache_masks[v26]);
            DWORD2(v40) -= *(v30 + v22);
          }

          else
          {
            if (!v42)
            {
              goto LABEL_84;
            }

            v22 = lzx_decode_huffman(v37, (v40 << (v26 - BYTE8(v40))) & cache_masks[v26]);
            DWORD2(v40) -= *(v30 + v22);
            if ((DWORD2(v40) & 0x80000000) != 0)
            {
              goto LABEL_83;
            }
          }

          if (v22 > 255)
          {
            break;
          }

          *(v33 + v18) = v22;
          v18 = (v18 + 1) & v17;
          v2 = v35++;
          *v2 = v22;
          --v29;
        }

        v23 = v22 - 256;
        v15 = v23 & 7;
        v13 = v23 >> 3;
LABEL_21:
        if (v15 == 7)
        {
          if (SDWORD2(v40) >= v27 || lzx_br_fillup(v43, &v40) || SDWORD2(v40) >= v27)
          {
            v24 = lzx_decode_huffman(v38, (v40 >> (BYTE8(v40) - v27)) & cache_masks[v27]);
            DWORD2(v40) -= *(v31 + v24);
          }

          else
          {
            if (!v42)
            {
              v9 = 19;
              goto LABEL_84;
            }

            v24 = lzx_decode_huffman(v38, (v40 << (v27 - BYTE8(v40))) & cache_masks[v27]);
            DWORD2(v40) -= *(v31 + v24);
            if ((DWORD2(v40) & 0x80000000) != 0)
            {
              goto LABEL_83;
            }
          }

          v21 = v24 + 9;
        }

        else
        {
          v21 = v15 + 2;
        }

        if (v21 > v29)
        {
          goto LABEL_83;
        }

        if (v13)
        {
          break;
        }

        v19 = v12;
        v9 = 21;
      }

      if (v13 != 1)
      {
        break;
      }

      v19 = v11;
      v11 = v12;
      v12 = v19;
      v9 = 21;
    }

    if (v13 != 2)
    {
      break;
    }

    v19 = v10;
    v10 = v12;
    v12 = v19;
    v9 = 21;
  }

  v14 = *(v36 + 8 * v13 + 4);
LABEL_40:
  if (v8 == 2 && v14 >= 3)
  {
    v7 = v14 - 3;
    if (SDWORD2(v40) < v14 - 3 && !lzx_br_fillup(v43, &v40) && SDWORD2(v40) < v7)
    {
      v9 = 20;
      if (!v42)
      {
        goto LABEL_84;
      }

LABEL_83:
      *(v41 + 540) = -25;
      return -25;
    }

    v19 = 8 * ((v40 >> (BYTE8(v40) - v7)) & cache_masks[v7]);
    if (SDWORD2(v40) >= v7 + v28 || lzx_br_fillup(v43, &v40) || SDWORD2(v40) >= v7 + v28)
    {
      DWORD2(v40) -= v7;
      v25 = lzx_decode_huffman(v39, (v40 >> (BYTE8(v40) - v28)) & cache_masks[v28]);
      DWORD2(v40) -= *(v32 + v25);
    }

    else
    {
      if (!v42)
      {
        v9 = 20;
        goto LABEL_84;
      }

      DWORD2(v40) -= v7;
      v25 = lzx_decode_huffman(v39, (v40 << (v28 - BYTE8(v40))) & cache_masks[v28]);
      DWORD2(v40) -= *(v32 + v25);
      if ((DWORD2(v40) & 0x80000000) != 0)
      {
        goto LABEL_83;
      }
    }

    v20 = v19 + v25;
  }

  else
  {
    if (SDWORD2(v40) < v14 && !lzx_br_fillup(v43, &v40) && SDWORD2(v40) < v14)
    {
      v9 = 20;
      if (!v42)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    v20 = (v40 >> (BYTE8(v40) - v14)) & cache_masks[v14];
    DWORD2(v40) -= v14;
  }

  v19 = v20 + *(v36 + 8 * v13) - 2;
  v10 = v11;
  v11 = v12;
  v12 = v19;
LABEL_63:
  v19 = (v18 - v19) & v17;
  do
  {
LABEL_64:
    v6 = v21;
    if (v19 <= v18)
    {
      if (v21 > v16 - v18)
      {
        v6 = v16 - v18;
      }
    }

    else if (v21 > v16 - v19)
    {
      v6 = v16 - v19;
    }

    if (&v35[v6] >= v34)
    {
      v6 = v34 - v35;
    }

    if (v6 < 8 || v19 + v6 >= v18 && v18 + v6 >= v19)
    {
      for (i = 0; i < v6; ++i)
      {
        v3 = *(v33 + v19 + i);
        *(v33 + v18 + i) = v3;
        v35[i] = v3;
      }
    }

    else
    {
      __memcpy_chk();
      __memcpy_chk();
    }

    v35 += v6;
    v19 = (v19 + v6) & v17;
    v18 = (v18 + v6) & v17;
    v29 -= v6;
    if (v21 <= v6)
    {
      v9 = 18;
      goto LABEL_2;
    }

    v21 -= v6;
  }

  while (v35 < v34);
  v9 = 22;
LABEL_84:
  *(v41 + 104) = v40;
  *(v41 + 56) = v29;
  *(v41 + 32) = v21;
  *(v41 + 28) = v19;
  *(v41 + 84) = v15;
  *(v41 + 92) = v14;
  *(v41 + 88) = v13;
  *(v41 + 64) = v12;
  *(v41 + 68) = v11;
  *(v41 + 72) = v10;
  *v41 = v9;
  *(v41 + 24) = v18;
  v43[4] = (v34 - v35);
  return 0;
}

uint64_t lzx_br_fillup(unsigned __int8 **a1, unint64_t *a2)
{
  for (i = 64 - *(a2 + 2); ; i -= 16)
  {
    v5 = i >> 4;
    if (!(i >> 4))
    {
      return 1;
    }

    if (v5 == 3)
    {
      if (a1[1] >= 6)
      {
        *a2 = ((*a1)[1] << 40) | (*a2 << 48) | (**a1 << 32) | ((*a1)[3] << 24) | ((*a1)[2] << 16) | ((*a1)[5] << 8) | (*a1)[4];
        *a1 += 6;
        a1[1] -= 6;
        *(a2 + 2) += 48;
        return 1;
      }
    }

    else if (v5 == 4 && a1[1] >= 8)
    {
      *a2 = (**a1 << 48) | ((*a1)[1] << 56) | ((*a1)[3] << 40) | ((*a1)[2] << 32) | ((*a1)[5] << 24) | ((*a1)[4] << 16) | ((*a1)[7] << 8) | (*a1)[6];
      *a1 += 8;
      a1[1] -= 8;
      *(a2 + 2) += 64;
      return 1;
    }

    if (a1[1] < 2)
    {
      break;
    }

    v4 = *a2;
    *a2 = archive_le16dec(*a1) | (v4 << 16);
    *a1 += 2;
    a1[1] -= 2;
    *(a2 + 2) += 16;
  }

  if (a1[1] == 1)
  {
    v2 = (*a1)++;
    *(a2 + 12) = *v2;
    --a1[1];
    *(a2 + 13) = 1;
  }

  return 0;
}

uint64_t lzx_make_huffman_table(int *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0;
  v10 = 1;
  v5 = 0x8000;
  while (v10 <= 16)
  {
    v16[v10 + 17] = v7;
    v16[v10] = v5;
    if (a1[v10 + 1])
    {
      v7 += a1[v10 + 1] * v5;
      v9 = v10;
    }

    ++v10;
    v5 >>= 1;
  }

  if (v7 || v9 > a1[21])
  {
    v15 = 0;
  }

  else
  {
    a1[20] = v9;
    if (v9 < 16)
    {
      v3 = 16 - v9;
      for (i = 1; i <= v9; ++i)
      {
        v16[i + 17] = v16[i + 17] >> v3;
        v16[i] = v16[i] >> v3;
      }
    }

    v6 = 1 << a1[21];
    v14 = *(a1 + 12);
    v13 = *(a1 + 9);
    v4 = *a1;
    a1[22] = 0;
    for (j = 0; j < v4; ++j)
    {
      if (*(v13 + j))
      {
        if (*(v13 + j) > v6)
        {
          v15 = 0;
          goto LABEL_24;
        }

        v8 = v16[*(v13 + j) + 17];
        v2 = v16[*(v13 + j)];
        v16[*(v13 + j) + 17] = v8 + v2;
        if (v8 + v2 > v6)
        {
          v15 = 0;
          goto LABEL_24;
        }

        while ((--v2 & 0x80000000) == 0)
        {
          *(v14 + 2 * v8 + 2 * v2) = j;
        }
      }
    }

    v15 = 1;
  }

LABEL_24:
  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t lzx_read_pre_tree(uint64_t a1)
{
  v4 = *(a1 + 48);
  if (!*(v4 + 536))
  {
    __memset_chk();
  }

  for (i = *(v4 + 536); i < *(v4 + 432); ++i)
  {
    if (*(v4 + 112) < 4 && !lzx_br_fillup(a1, (v4 + 104)) && *(v4 + 112) < 4)
    {
      *(v4 + 536) = i;
      return 0;
    }

    *(*(v4 + 504) + i) = (*(v4 + 104) >> (*(v4 + 112) - 4)) & 0xF;
    v1 = *(*(v4 + 504) + i);
    ++*(v4 + 436 + 4 * v1);
    *(v4 + 112) -= 4;
  }

  *(v4 + 536) = i;
  return 1;
}

uint64_t lzx_read_bitlen(uint64_t a1, int *a2, int a3)
{
  v20 = *(a1 + 48);
  v19 = (v20 + 104);
  v15 = *(v20 + 536);
  if (!v15)
  {
    __memset_chk();
  }

  v12 = 0;
  if (a3 < 0)
  {
    a3 = *a2;
  }

  while (v15 < a3)
  {
    *(v20 + 536) = v15;
    if (*(v20 + 112) < *(v20 + 512) && !lzx_br_fillup(a1, v19) && *(v20 + 112) < *(v20 + 512))
    {
      goto LABEL_43;
    }

    v16 = lzx_decode_huffman(v20 + 432, (*(v20 + 104) >> (*(v20 + 112) - *(v20 + 512))) & cache_masks[*(v20 + 512)]);
    switch(v16)
    {
      case 17:
        if (*(v20 + 112) < *(*(v20 + 504) + 17) + 4 && !lzx_br_fillup(a1, v19) && *(v20 + 112) < *(*(v20 + 504) + 17) + 4)
        {
          goto LABEL_43;
        }

        *(v20 + 112) -= *(*(v20 + 504) + 17);
        v9 = ((*(v20 + 104) >> (*(v20 + 112) - 4)) & 0xF) + 4;
        if (v15 + v9 > a3)
        {
          return -1;
        }

        *(v20 + 112) -= 4;
        for (i = 0; i < v9; ++i)
        {
          v3 = v15++;
          *(*(a2 + 9) + v3) = 0;
        }

        break;
      case 18:
        if (*(v20 + 112) < *(*(v20 + 504) + 18) + 5 && !lzx_br_fillup(a1, v19) && *(v20 + 112) < *(*(v20 + 504) + v16) + 5)
        {
          goto LABEL_43;
        }

        *(v20 + 112) -= *(*(v20 + 504) + v16);
        v10 = ((*(v20 + 104) >> (*(v20 + 112) - 5)) & 0x1F) + 20;
        if (v15 + v10 > a3)
        {
          return -1;
        }

        *(v20 + 112) -= 5;
        v4 = *(a2 + 9);
        __memset_chk();
        v15 += v10;
        break;
      case 19:
        if (*(v20 + 112) < *(*(v20 + 504) + 19) + 1 + *(v20 + 512) && !lzx_br_fillup(a1, v19) && *(v20 + 112) < *(*(v20 + 504) + v16) + 1 + *(v20 + 512))
        {
          goto LABEL_43;
        }

        *(v20 + 112) -= *(*(v20 + 504) + v16);
        v11 = ((*(v20 + 104) >> (*(v20 + 112) - 1)) & 1) + 4;
        if (v15 + v11 > a3)
        {
          return -1;
        }

        v5 = lzx_decode_huffman(v20 + 432, (*(v20 + 104) >> (--*(v20 + 112) - *(v20 + 512))) & cache_masks[*(v20 + 512)]);
        *(v20 + 112) -= *(*(v20 + 504) + v5);
        v17 = (*(*(a2 + 9) + v15) - v5 + 17) % 17;
        if (v17 < 0)
        {
          return -1;
        }

        for (j = 0; j < v11; ++j)
        {
          v6 = v15++;
          *(*(a2 + 9) + v6) = v17;
        }

        a2[v17 + 1] += v11;
        break;
      default:
        *(v20 + 112) -= *(*(v20 + 504) + v16);
        v18 = (*(*(a2 + 9) + v15) - v16 + 17) % 17;
        if (v18 < 0)
        {
          return -1;
        }

        ++a2[v18 + 1];
        v7 = v15++;
        *(*(a2 + 9) + v7) = v18;
        break;
    }
  }

  v12 = 1;
LABEL_43:
  *(v20 + 536) = v15;
  return v12;
}

uint64_t lzx_decode_huffman(uint64_t a1, unsigned int a2)
{
  if (*(*(a1 + 96) + 2 * a2) >= *a1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 96) + 2 * a2);
  }
}

uint64_t archive_le32enc(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t archive_entry_copy_stat(_DWORD *a1, uint64_t a2)
{
  archive_entry_set_atime(a1, *(a2 + 32), *(a2 + 40));
  archive_entry_set_ctime(a1, *(a2 + 64), *(a2 + 72));
  archive_entry_set_mtime(a1, *(a2 + 48), *(a2 + 56));
  archive_entry_set_birthtime(a1, *(a2 + 80), *(a2 + 88));
  archive_entry_set_dev(a1, *a2);
  archive_entry_set_gid(a1, *(a2 + 20));
  archive_entry_set_uid(a1, *(a2 + 16));
  archive_entry_set_ino(a1, *(a2 + 8));
  archive_entry_set_nlink(a1, *(a2 + 6));
  archive_entry_set_rdev(a1, *(a2 + 24));
  archive_entry_set_size(a1, *(a2 + 96));
  return archive_entry_set_mode(a1, *(a2 + 4));
}

void *archive_entry_linkresolver_new()
{
  v1 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004050C3A8F3uLL);
  if (!v1)
  {
    return 0;
  }

  v1[3] = 1024;
  *v1 = malloc_type_calloc(v1[3], 8uLL, 0x2004093837F09uLL);
  if (*v1)
  {
    return v1;
  }

  free(v1);
  return 0;
}

uint64_t archive_entry_linkresolver_set_strategy(uint64_t result, int a2)
{
  v2 = a2 & 0xFF0000;
  if ((a2 & 0xFF0000) == 0x10000)
  {
    if (a2 != 65541 && a2 != 65540)
    {
      *(result + 32) = 2;
    }

    else
    {
      *(result + 32) = 3;
    }
  }

  else
  {
    switch(v2)
    {
      case 131072:
      case 196608:
      case 262144:
        goto LABEL_15;
      case 327680:
      case 458752:
        goto LABEL_10;
      case 524288:
        *(result + 32) = 1;
        return result;
      case 655360:
LABEL_15:
        *(result + 32) = 0;
        break;
      case 917504:
LABEL_10:
        *(result + 32) = 2;
        return result;
      default:
        *(result + 32) = 2;
        break;
    }
  }

  return result;
}

void *next_entry(uint64_t a1, char a2)
{
  if (*(a1 + 8))
  {
    archive_entry_free(*(*(a1 + 8) + 16));
    archive_entry_free(*(*(a1 + 8) + 24));
    free(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  v3 = 0;
LABEL_4:
  if (v3 >= *(a1 + 24))
  {
    return 0;
  }

  for (i = *(*a1 + 8 * v3); ; i = *i)
  {
    if (!i)
    {
      ++v3;
      goto LABEL_4;
    }

    if (!i[3] || (a2) && (i[3] || (a2 & 2) != 0))
    {
      break;
    }
  }

  if (*i)
  {
    *(*i + 8) = i[1];
  }

  if (i[1])
  {
    *i[1] = *i;
  }

  else
  {
    *(*a1 + 8 * v3) = *i;
  }

  --*(a1 + 16);
  *(a1 + 8) = i;
  return i;
}

void *archive_entry_linkify(uint64_t a1, uint64_t *a2, void *a3)
{
  *a3 = 0;
  if (!*a2)
  {
    result = next_entry(a1, 1);
    if (result)
    {
      *a2 = result[3];
      result[3] = 0;
    }

    return result;
  }

  result = archive_entry_nlink(*a2);
  if (result != 1)
  {
    result = archive_entry_filetype(*a2);
    if (result != 0x4000)
    {
      result = archive_entry_filetype(*a2);
      if (result != 24576)
      {
        result = archive_entry_filetype(*a2);
        if (result != 0x2000)
        {
          v10 = *(a1 + 32);
          if (v10)
          {
            if (v10 != 1)
            {
              if (v10 == 3)
              {
                entry = find_entry(a1, *a2);
                if (entry)
                {
                  v11 = *a2;
                  *a2 = entry[3];
                  entry[3] = v11;
                  archive_entry_unset_size(*a2);
                  v7 = *a2;
                  v6 = archive_entry_pathname(entry[2]);
                  result = archive_entry_copy_hardlink(v7, v6);
                  if (!*(entry + 10))
                  {
                    *a3 = entry[3];
                    entry[3] = 0;
                  }
                }

                else
                {
                  result = insert_entry(a1, *a2);
                  if (result)
                  {
                    result[3] = *a2;
                    *a2 = 0;
                  }
                }
              }

              return result;
            }

            v13 = find_entry(a1, *a2);
            if (v13)
            {
              v8 = *a2;
              v5 = archive_entry_pathname(v13[2]);
              return archive_entry_copy_hardlink(v8, v5);
            }
          }

          else
          {
            v12 = find_entry(a1, *a2);
            if (v12)
            {
              archive_entry_unset_size(*a2);
              v9 = *a2;
              v4 = archive_entry_pathname(v12[2]);
              return archive_entry_copy_hardlink(v9, v4);
            }
          }

          return insert_entry(a1, *a2);
        }
      }
    }
  }

  return result;
}

uint64_t *find_entry(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 8))
  {
    archive_entry_free(*(*(a1 + 8) + 16));
    archive_entry_free(*(*(a1 + 8) + 24));
    free(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  v4 = archive_entry_dev(a2);
  v3 = archive_entry_ino64(a2);
  v5 = (v4 ^ v3) & (*(a1 + 24) - 1);
  for (i = *(*a1 + 8 * v5); ; i = *i)
  {
    if (!i)
    {
      return 0;
    }

    if (i[4] == (v4 ^ v3) && v4 == archive_entry_dev(i[2]) && v3 == archive_entry_ino64(i[2]))
    {
      break;
    }
  }

  if (--*(i + 10))
  {
    return i;
  }

  if (i[1])
  {
    *i[1] = *i;
  }

  if (*i)
  {
    *(*i + 8) = i[1];
  }

  if (*(*a1 + 8 * v5) == i)
  {
    *(*a1 + 8 * v5) = *i;
  }

  --*(a1 + 16);
  *(a1 + 8) = i;
  return i;
}

void *insert_entry(void *a1, uint64_t *a2)
{
  v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x102004063BC1FCFuLL);
  if (!v7)
  {
    return 0;
  }

  v7[2] = archive_entry_clone(a2);
  if (a1[2] > (2 * a1[3]))
  {
    grow_hash(a1);
  }

  v4 = archive_entry_dev(a2);
  v6 = v4 ^ archive_entry_ino64(a2);
  v5 = v6 & (a1[3] - 1);
  if (*(*a1 + 8 * v5))
  {
    v2 = v6 & (a1[3] - 1);
    *(*(*a1 + 8 * v5) + 8) = v7;
  }

  ++a1[2];
  *v7 = *(*a1 + 8 * v5);
  v7[1] = 0;
  *(*a1 + 8 * v5) = v7;
  v7[4] = v6;
  *(v7 + 10) = archive_entry_nlink(a2) - 1;
  return v7;
}

uint64_t archive_entry_partial_links(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 8))
  {
    archive_entry_free(*(*(a1 + 8) + 16));
    archive_entry_free(*(*(a1 + 8) + 24));
    free(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  entry = next_entry(a1, 2);
  if (entry)
  {
    v4 = entry[2];
    if (a2)
    {
      *a2 = *(entry + 10);
    }

    entry[2] = 0;
  }

  else
  {
    v4 = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return v4;
}

void grow_hash(uint64_t a1)
{
  count = 2 * *(a1 + 24);
  if (count >= *(a1 + 24))
  {
    v5 = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
      for (i = 0; i < *(a1 + 24); ++i)
      {
        while (*(*a1 + 8 * i))
        {
          v6 = *(*a1 + 8 * i);
          *(*a1 + 8 * i) = *v6;
          v2 = v6[4] & (count - 1);
          if (v5[v2])
          {
            v1 = v6[4] & (count - 1);
            *(v5[v2] + 8) = v6;
          }

          *v6 = v5[v2];
          v6[1] = 0;
          v5[v2] = v6;
        }
      }

      free(*a1);
      *a1 = v5;
      *(a1 + 24) = count;
    }
  }
}

uint64_t archive_read_support_filter_none(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_filter_none") == -30)
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_add_filter_compress(int *a1)
{
  v2 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_compress") == -30)
  {
    return -30;
  }

  else
  {
    v2[4] = archive_compressor_compress_open;
    *(v2 + 22) = 3;
    v2[10] = "compress";
    return 0;
  }
}

uint64_t archive_compressor_compress_open(uint64_t a1)
{
  v14 = 0x10000;
  *(a1 + 88) = 3;
  *(a1 + 80) = "compress";
  v15 = malloc_type_calloc(1uLL, 0x65190uLL, 0x10100404BA02100uLL);
  if (v15)
  {
    if (**(a1 + 8) == -1329217314)
    {
      v13 = archive_write_get_bytes_per_block(*(a1 + 8));
      if (v13 <= 0x10000)
      {
        if (v13)
        {
          v14 = 0x10000 - 0x10000 % v13;
        }
      }

      else
      {
        v14 = v13;
      }
    }

    v15[51760] = v14;
    v15[51759] = malloc_type_malloc(v15[51760], 0xA66DCD5uLL);
    if (v15[51759])
    {
      *(a1 + 40) = archive_compressor_compress_write;
      *(a1 + 56) = archive_compressor_compress_close;
      *(a1 + 64) = archive_compressor_compress_free;
      *(v15 + 8) = 0x10000;
      *v15 = 0;
      *(v15 + 414064) = 0;
      *(v15 + 103515) = 0;
      v15[1] = 3;
      *(v15 + 103512) = 0;
      v15[2] = 10000;
      *(v15 + 6) = 9;
      *(v15 + 7) = (1 << *(v15 + 6)) - 1;
      *(v15 + 103511) = 257;
      __memset_chk();
      *v15[51759] = 31;
      *(v15[51759] + 1) = -99;
      *(v15[51759] + 2) = -112;
      v15[51761] = 3;
      *(a1 + 72) = v15;
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 8), 12, "Can't allocate data for compression buffer", v6, v7, v8, v9, v10, v12);
      free(v15);
      return -30;
    }
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for compression", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t archive_compressor_compress_write(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v15 = a3;
  v14 = *(a1 + 72);
  if (a3)
  {
    v7 = a2;
    if (!*v14)
    {
      v7 = a2 + 1;
      *(v14 + 414052) = *a2;
      ++*v14;
      v15 = a3 - 1;
    }

    while (v15--)
    {
      v4 = v7++;
      v11 = *v4;
      ++*v14;
      *(v14 + 414056) = *(v14 + 414052) | (v11 << 16);
      v13 = *(v14 + 414052) ^ (v11 << 8);
      if (*(v14 + 36 + 4 * v13) == *(v14 + 414056))
      {
        *(v14 + 414052) = *(v14 + 276040 + 2 * v13);
      }

      else if ((*(v14 + 36 + 4 * v13) & 0x80000000) != 0)
      {
LABEL_17:
        v8 = output_code(a1, *(v14 + 414052));
        if (v8)
        {
          return v8;
        }

        *(v14 + 414052) = v11;
        if (*(v14 + 414044) >= *(v14 + 32))
        {
          if (*v14 >= *(v14 + 16))
          {
            *(v14 + 16) = *v14 + 10000;
            if (*v14 < 0x800000 && *(v14 + 8))
            {
              v12 = (*v14 << 8) / *(v14 + 8);
            }

            else if ((*(v14 + 8) / 256))
            {
              v12 = *v14 / (*(v14 + 8) / 256);
            }

            else
            {
              v12 = 0x7FFFFFFF;
            }

            if (v12 <= *(v14 + 414048))
            {
              *(v14 + 414048) = 0;
              __memset_chk();
              *(v14 + 414044) = 257;
              v9 = output_code(a1, 256);
              if (v9)
              {
                return v9;
              }
            }

            else
            {
              *(v14 + 414048) = v12;
            }
          }
        }

        else
        {
          v5 = *(v14 + 414044);
          *(v14 + 414044) = v5 + 1;
          *(v14 + 276040 + 2 * v13) = v5;
          *(v14 + 36 + 4 * v13) = *(v14 + 414056);
        }
      }

      else
      {
        if (v13)
        {
          v10 = 69001 - v13;
        }

        else
        {
          v10 = 1;
        }

        while (1)
        {
          v13 -= v10;
          if (v13 < 0)
          {
            v13 += 69001;
          }

          if (*(v14 + 36 + 4 * v13) == *(v14 + 414056))
          {
            break;
          }

          if ((*(v14 + 36 + 4 * v13) & 0x80000000) != 0)
          {
            goto LABEL_17;
          }
        }

        *(v14 + 414052) = *(v14 + 276040 + 2 * v13);
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_compressor_compress_close(uint64_t a1)
{
  v4 = *(a1 + 72);
  v2 = output_code(a1, *(v4 + 414052));
  if (v2)
  {
    return v2;
  }

  else
  {
    v3 = output_flush(a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      return __archive_write_filter(*(a1 + 16), *(v4 + 414072), *(v4 + 414088));
    }
  }
}

uint64_t archive_compressor_compress_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  free(v2[51759]);
  free(v2);
  return 0;
}

uint64_t output_code(uint64_t a1, int a2)
{
  v7 = *(a1 + 72);
  v4 = a2 == 256;
  v3 = *(v7 + 414060) % 8;
  *(v7 + 414064) |= a2 << v3;
  output_byte(a1, *(v7 + 414064));
  v6 = *(v7 + 24) - (8 - v3);
  v9 = a2 >> (8 - v3);
  if (v6 >= 8)
  {
    output_byte(a1, v9);
    v9 >>= 8;
    v6 -= 8;
  }

  *(v7 + 414060) += *(v7 + 24);
  *(v7 + 414064) = v9 & rmask[v6];
  if (*(v7 + 414060) == 8 * *(v7 + 24))
  {
    *(v7 + 414060) = 0;
  }

  if (v4 || *(v7 + 414044) > *(v7 + 28))
  {
    if (*(v7 + 414060) > 0)
    {
      while (*(v7 + 414060) < 8 * *(v7 + 24))
      {
        v5 = output_byte(a1, *(v7 + 414064));
        if (v5)
        {
          return v5;
        }

        *(v7 + 414060) += 8;
        *(v7 + 414064) = 0;
      }
    }

    *(v7 + 414064) = 0;
    *(v7 + 414060) = 0;
    if (v4)
    {
      *(v7 + 24) = 9;
      *(v7 + 28) = (1 << *(v7 + 24)) - 1;
    }

    else if (++*(v7 + 24) == 16)
    {
      *(v7 + 28) = *(v7 + 32);
    }

    else
    {
      *(v7 + 28) = (1 << *(v7 + 24)) - 1;
    }
  }

  return 0;
}

uint64_t output_byte(uint64_t a1, char a2)
{
  v5 = *(a1 + 72);
  v2 = v5[51759];
  v3 = v5[51761];
  v5[51761] = v3 + 1;
  *(v2 + v3) = a2;
  ++v5[1];
  if (v5[51760] != v5[51761])
  {
    return 0;
  }

  if (!__archive_write_filter(*(a1 + 16), v5[51759], v5[51760]))
  {
    v5[51761] = 0;
    return 0;
  }

  return -30;
}

uint64_t output_flush(uint64_t a1)
{
  v3 = *(a1 + 72);
  if (*(v3 + 414060) % 8 && (*(v3 + 24) = (*(v3 + 414060) % 8 + 7) / 8, (v2 = output_byte(a1, *(v3 + 414064))) != 0))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_support_filter_lrzip(int *a1)
{
  if (archive_allow_entitlement_filter("lrzip"))
  {
    if (__archive_read_register_bidder(a1, 0, "lrzip", lrzip_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external lrzip program for lrzip decompression", v6, v7, v8, v9, v10, v12);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Format not allow-listed in entitlements", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t lrzip_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  __s1 = 0;
  v9 = 0;
  __s1 = __archive_read_filter_ahead(a2, 6uLL, &v9, a4, a5, a6, a7, a8);
  if (__s1 && v9)
  {
    if (!memcmp(__s1, "LRZI", 4uLL))
    {
      if (*(__s1 + 4))
      {
        return 0;
      }

      else if (*(__s1 + 5) >= 6u && *(__s1 + 5) <= 0xAu)
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t lrzip_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "lrzip -d -q");
  *(a1 + 56) = 10;
  *(a1 + 48) = "lrzip";
  return result;
}

uint64_t archive_read_append_filter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 0:
      support_filter_gzip = 0;
      goto LABEL_16;
    case 1:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_gzip(a1);
      goto LABEL_16;
    case 2:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_bzip2(a1);
      goto LABEL_16;
    case 3:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_compress(a1);
      goto LABEL_16;
    case 4:
      archive_set_error(a1, 22, "Cannot append program filter using archive_read_append_filter", a4, a5, a6, a7, a8, v14);
      v23 = -30;
      goto LABEL_34;
    case 5:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_lzma(a1);
      goto LABEL_16;
    case 6:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_xz(a1);
      goto LABEL_16;
    case 7:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_uu(a1);
      goto LABEL_16;
    case 8:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_rpm(a1);
      goto LABEL_16;
    case 9:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_lzip(a1);
      goto LABEL_16;
    case 10:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_lrzip(a1);
      goto LABEL_16;
    case 13:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_lz4(a1);
      goto LABEL_16;
    case 14:
      __strcpy_chk();
      support_filter_gzip = archive_read_support_filter_zstd(a1);
LABEL_16:
      if (!a2)
      {
        goto LABEL_30;
      }

      v18 = a1 + 248;
      for (i = 0; i < 16 && *(v18 + 8) && strcmp(*(v18 + 8), __s2); ++i)
      {
        v18 += 24;
      }

      if (*(v18 + 8) && !strcmp(*(v18 + 8), __s2))
      {
        v17 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F004046953F9BuLL);
        if (v17)
        {
          v17[1] = v18;
          v17[3] = a1;
          v17[2] = *(a1 + 632);
          *(a1 + 632) = v17;
          if ((*(*(v18 + 16) + 8))(*(a1 + 632)))
          {
            __archive_read_free_filters(a1);
            v23 = -30;
          }

          else
          {
LABEL_30:
            *(a1 + 640) = 1;
            if (support_filter_gzip < 0)
            {
              v15 = support_filter_gzip;
            }

            else
            {
              v15 = 0;
            }

            v23 = v15;
          }
        }

        else
        {
          archive_set_error(a1, 12, "Out of memory", v8, v9, v10, v11, v12, v14);
          v23 = -30;
        }
      }

      else
      {
        archive_set_error(a1, 22, "Internal error: Unable to append filter", a4, a5, a6, a7, a8, v14);
        v23 = -30;
      }

LABEL_34:
      *MEMORY[0x1E69E9840];
      return v23;
    default:
      archive_set_error(a1, 22, "Invalid filter code specified", a4, a5, a6, a7, a8, v14);
      v23 = -30;
      goto LABEL_34;
  }
}

uint64_t archive_read_append_filter_program_signature(unint64_t a1, const char *a2, uint64_t a3, size_t a4)
{
  if (archive_read_support_filter_program_signature(a1, a2, a3, a4))
  {
    return -30;
  }

  else
  {
    v17 = (a1 + 248);
    for (i = 0; i < 16 && (!*v17 || v17[1]); ++i)
    {
      v17 += 3;
    }

    if (*v17)
    {
      v16 = malloc_type_calloc(1uLL, 0x90uLL, 0x10F004046953F9BuLL);
      if (v16)
      {
        v16[1] = v17;
        v16[3] = a1;
        v16[2] = *(a1 + 632);
        *(a1 + 632) = v16;
        if ((*(v17[2] + 8))(*(a1 + 632)))
        {
          __archive_read_free_filters(a1);
          return -30;
        }

        else
        {
          v17[1] = *(*(a1 + 632) + 48);
          *(a1 + 640) = 1;
          return 0;
        }
      }

      else
      {
        archive_set_error(a1, 12, "Out of memory", v9, v10, v11, v12, v13, a1);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 22, "Internal error: Unable to append program filter", v4, v5, v6, v7, v8, a1);
      return -30;
    }
  }
}

uint64_t archive_write_add_filter_b64encode(int *a1)
{
  v9 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_uu") == -30)
  {
    return -30;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x88uLL, 0x1010040D0CB9195uLL);
    if (v8)
    {
      v8[2] = 0;
      archive_strncat(v8 + 1, "-", 1uLL);
      *v8 = 420;
      v9[9] = v8;
      v9[10] = "b64encode";
      *(v9 + 22) = 7;
      v9[4] = archive_filter_b64encode_open;
      v9[3] = archive_filter_b64encode_options;
      v9[5] = archive_filter_b64encode_write;
      v9[7] = archive_filter_b64encode_close;
      v9[8] = archive_filter_b64encode_free;
      return 0;
    }

    else
    {
      archive_set_error(v9[1], 12, "Can't allocate data for b64encode filter", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_filter_b64encode_open(uint64_t a1)
{
  v12 = *(a1 + 72);
  v11 = 0x10000;
  if (**(a1 + 8) == -1329217314)
  {
    v10 = archive_write_get_bytes_per_block(*(a1 + 8));
    if (v10 <= 0x10000)
    {
      if (v10)
      {
        v11 = 0x10000 - 0x10000 % v10;
      }
    }

    else
    {
      v11 = v10;
    }
  }

  v12[7] = v11;
  if (archive_string_ensure((v12 + 4), v11 + 512))
  {
    v9 = v12[1];
    archive_string_sprintf(v12 + 4, "begin-base64 %o %s\n", v1, v2, v3, v4, v5, v6, *v12);
    *(a1 + 72) = v12;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for b64encode buffer", v2, v3, v4, v5, v6, v8);
    return -30;
  }
}

uint64_t archive_filter_b64encode_options(uint64_t a1, const char *a2, char *a3)
{
  v17 = *(a1 + 72);
  if (!strcmp(a2, "mode"))
  {
    if (a3)
    {
      v8 = strlen(a3);
      *v17 = atol8_0(a3, v8) & 0x1FF;
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "mode option requires octal digits", v3, v4, v5, v6, v7, v15);
      return -25;
    }
  }

  else if (!strcmp(a2, "name"))
  {
    if (a3)
    {
      *(v17 + 16) = 0;
      v16 = strlen(a3);
      archive_strncat((v17 + 8), a3, v16);
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "name option requires a string", v9, v10, v11, v12, v13, v15);
      return -25;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_filter_b64encode_write(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v14 = a3;
  v13 = *(a1 + 72);
  v11 = 0;
  if (a3)
  {
    if (*(v13 + 64))
    {
      while (1)
      {
        v10 = 0;
        if (*(v13 + 64) < 0x39uLL)
        {
          v10 = v14 != 0;
        }

        if (!v10)
        {
          break;
        }

        v3 = a2++;
        LOBYTE(v3) = *v3;
        v4 = *(v13 + 64);
        *(v13 + 64) = v4 + 1;
        *(v13 + 72 + v4) = v3;
        --v14;
      }

      if (*(v13 + 64) < 0x39uLL)
      {
        return 0;
      }

      la_b64_encode((v13 + 32), (v13 + 72), 0x39uLL);
      *(v13 + 64) = 0;
    }

    while (v14 >= 0x39)
    {
      la_b64_encode((v13 + 32), a2, 0x39uLL);
      v14 -= 57;
      a2 += 57;
    }

    if (v14)
    {
      __memcpy_chk();
      *(v13 + 64) = v14;
    }

    while (*(v13 + 40) >= *(v13 + 56))
    {
      v11 = __archive_write_filter(*(a1 + 16), *(v13 + 32), *(v13 + 56));
      v5 = *(v13 + 32);
      v6 = v5 + *(v13 + 56);
      v7 = *(v13 + 40);
      v8 = *(v13 + 56);
      __memmove_chk();
      *(v13 + 40) -= *(v13 + 56);
    }

    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_filter_b64encode_close(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 72);
  if (*(v9 + 64))
  {
    la_b64_encode((v9 + 32), (v9 + 72), *(v9 + 64));
  }

  archive_string_sprintf((v9 + 32), "====\n", a3, a4, a5, a6, a7, a8, v9);
  archive_write_set_bytes_in_last_block(*(a1 + 8), 1);
  return __archive_write_filter(*(a1 + 16), *(v10 + 32), *(v10 + 40));
}

uint64_t archive_filter_b64encode_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  archive_string_free(v2 + 8);
  archive_string_free(v2 + 32);
  free(v2);
  return 0;
}

uint64_t atol8_0(char *a1, uint64_t a2)
{
  for (i = 0; ; i = (8 * i) | v4)
  {
    v2 = a2--;
    if (!v2 || *a1 < 48 || *a1 > 55)
    {
      break;
    }

    v4 = *a1++ - 48;
  }

  return i;
}

uint64_t *la_b64_encode(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  while (a3 >= 3)
  {
    archive_strappend_char(a1, base64[*a2 >> 2]);
    archive_strappend_char(a1, base64[((a2[1] & 0xF0) >> 4) | (16 * (*a2 & 3))]);
    archive_strappend_char(a1, base64[((a2[2] & 0xC0) >> 6) | (4 * (a2[1] & 0xF))]);
    archive_strappend_char(a1, base64[a2[2] & 0x3F]);
    a2 += 3;
    a3 -= 3;
  }

  if (a3)
  {
    archive_strappend_char(a1, base64[*a2 >> 2]);
    v4 = 16 * (*a2 & 3);
    if (a3 == 1)
    {
      archive_strappend_char(a1, base64[v4]);
      archive_strappend_char(a1, 61);
    }

    else
    {
      archive_strappend_char(a1, base64[v4 | ((a2[1] & 0xF0) >> 4)]);
      archive_strappend_char(a1, base64[4 * (a2[1] & 0xF)]);
    }

    archive_strappend_char(a1, 61);
  }

  return archive_strappend_char(a1, 10);
}

uint64_t archive_write_set_format_raw(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_raw") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v7 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    if (v7)
    {
      *v7 = 0;
      *(a1 + 248) = v7;
      *(a1 + 256) = "raw";
      *(a1 + 272) = 0;
      *(a1 + 288) = archive_write_raw_header;
      *(a1 + 296) = archive_write_raw_data;
      *(a1 + 280) = 0;
      *(a1 + 304) = 0;
      *(a1 + 312) = archive_write_raw_free;
      *(a1 + 16) = 589824;
      *(a1 + 24) = "RAW";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate raw data", v1, v2, v3, v4, v5, archive_write_raw_header);
      return -30;
    }
  }
}

uint64_t archive_write_raw_header(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 248);
  if (archive_entry_filetype(a2) == 0x8000)
  {
    if (*v8 <= 0)
    {
      ++*v8;
      return 0;
    }

    else
    {
      archive_set_error(a1, 34, "Raw format only supports one entry per archive", v2, v3, v4, v5, v6, v8);
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 34, "Raw format only supports filetype AE_IFREG", v2, v3, v4, v5, v6, v8);
    return -30;
  }
}

uint64_t archive_write_raw_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __archive_write_output(a1, a2, a3);
  if (v4 < 0)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

uint64_t archive_write_raw_free(uint64_t a1)
{
  free(*(a1 + 248));
  *(a1 + 248) = 0;
  return 0;
}

uint64_t archive_write_add_filter_lzip(int *a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lzip") == -30)
  {
    return -30;
  }

  else
  {
    v3 = __archive_write_allocate_filter(a1);
    v2 = common_setup(v3);
    if (!v2)
    {
      *(v3 + 22) = 9;
      v3[10] = "lzip";
    }

    return v2;
  }
}

uint64_t archive_write_add_filter_lzma(int *a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lzma") == -30)
  {
    return -30;
  }

  else
  {
    v3 = __archive_write_allocate_filter(a1);
    v2 = common_setup(v3);
    if (!v2)
    {
      *(v3 + 22) = 5;
      v3[10] = "lzma";
    }

    return v2;
  }
}

uint64_t archive_write_add_filter_xz(int *a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_xz") == -30)
  {
    return -30;
  }

  else
  {
    v3 = __archive_write_allocate_filter(a1);
    v2 = common_setup(v3);
    if (!v2)
    {
      *(v3 + 22) = 6;
      v3[10] = "xz";
    }

    return v2;
  }
}

uint64_t common_setup(void *a1)
{
  v7 = a1[1];
  v8 = malloc_type_calloc(1uLL, 0x148uLL, 0x10F0040FB0E8E87uLL);
  if (v8)
  {
    a1[9] = v8;
    *v8 = 6;
    v8[1] = 1;
    a1[4] = archive_compressor_xz_open;
    a1[7] = archive_compressor_xz_close;
    a1[8] = archive_compressor_xz_free;
    a1[3] = archive_compressor_xz_options;
    return 0;
  }

  else
  {
    archive_set_error(v7, 12, "Out of memory", v1, v2, v3, v4, v5, archive_compressor_xz_open);
    return -30;
  }
}

uint64_t archive_compressor_xz_open(uint64_t a1)
{
  v17 = *(a1 + 72);
  if (*(v17 + 37))
  {
    goto LABEL_9;
  }

  v16 = 0x10000;
  if (**(a1 + 8) == -1329217314)
  {
    v15 = archive_write_get_bytes_per_block(*(a1 + 8));
    if (v15 <= 0x10000)
    {
      if (v15)
      {
        v16 = 0x10000 - 0x10000 % v15;
      }
    }

    else
    {
      v16 = v15;
    }
  }

  *(v17 + 38) = v16;
  *(v17 + 37) = malloc_type_malloc(*(v17 + 38), 0x100004077774924uLL);
  if (*(v17 + 37))
  {
LABEL_9:
    *(a1 + 40) = archive_compressor_xz_write;
    if (*(a1 + 88) == 9)
    {
      v14 = (&option_values + 12 * *v17);
      v17[44] = *v14;
      *(v17 + 23) = 0;
      v17[48] = 0;
      v17[49] = 3;
      v17[50] = 0;
      v17[51] = 2;
      if (*v17 <= 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      v17[52] = v6;
      v17[53] = v14[1];
      v17[54] = v14[2];
      v17[55] = 0;
      *(v17 + 18) = 0x4000000000000001;
      *(v17 + 19) = v17 + 44;
      *(v17 + 20) = -1;
    }

    else
    {
      v7 = *v17;
      if (lzma_lzma_preset())
      {
        archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library", v8, v9, v10, v11, v12, archive_compressor_xz_write);
      }

      *(v17 + 18) = 33;
      *(v17 + 19) = v17 + 44;
      *(v17 + 20) = -1;
    }

    if (archive_compressor_xz_init_stream(a1, v17))
    {
      return -30;
    }

    else
    {
      *(a1 + 72) = v17;
      return 0;
    }
  }

  else
  {
    archive_set_error(*(a1 + 8), 12, "Can't allocate data for compression buffer", v1, v2, v3, v4, v5, archive_compressor_xz_write);
    return -30;
  }
}

uint64_t archive_compressor_xz_close(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = drive_compressor(a1, v3, 1);
  if (!v2)
  {
    *(v3 + 312) += *(v3 + 304) - *(v3 + 40);
    v2 = __archive_write_filter(*(a1 + 16), *(v3 + 296), *(v3 + 304) - *(v3 + 40));
    if (*(a1 + 88) == 9 && !v2)
    {
      archive_le32enc_0(*(v3 + 296), *(v3 + 320));
      archive_le64enc(*(v3 + 296) + 4, *(v3 + 288));
      archive_le64enc(*(v3 + 296) + 12, *(v3 + 312) + 20);
      v2 = __archive_write_filter(*(a1 + 16), *(v3 + 296), 20);
    }
  }

  lzma_end();
  return v2;
}

uint64_t archive_compressor_xz_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  free(v2[37]);
  free(v2);
  *(a1 + 72) = 0;
  return 0;
}

uint64_t archive_compressor_xz_options(uint64_t a1, char *a2, char *a3)
{
  v9 = a1;
  __s1 = a2;
  __str = a3;
  v6 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (__str && *__str >= 48 && *__str <= 57 && !__str[1])
    {
      *v6 = *__str - 48;
      if (*v6 > 9)
      {
        *v6 = 9;
      }

      return 0;
    }

    else
    {
      return -20;
    }
  }

  else if (!strcmp(__s1, "threads"))
  {
    v5 = 0;
    if (__str)
    {
      *__error() = 0;
      v3 = strtoul(__str, &v5, 10);
      v6[1] = v3;
      if (*__error() || *v5)
      {
        v6[1] = 1;
        return -20;
      }

      else
      {
        if (!v6[1])
        {
          v6[1] = 1;
        }

        return 0;
      }
    }

    else
    {
      return -20;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t archive_compressor_xz_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  *(v6 + 288) += a3;
  if (*(a1 + 88) == 9)
  {
    v3 = *(v6 + 320);
    *(v6 + 320) = lzma_crc32();
  }

  *(v6 + 8) = a2;
  *(v6 + 16) = a3;
  v5 = drive_compressor(a1, v6, 0);
  if (v5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_compressor_xz_init_stream(uint64_t a1, uint64_t a2)
{
  memcpy((a2 + 8), &archive_compressor_xz_init_stream_lzma_stream_init_data, 0x88uLL);
  *(a2 + 32) = *(a2 + 296);
  *(a2 + 40) = *(a2 + 304);
  if (*(a1 + 88) == 6)
  {
    v17 = lzma_stream_encoder();
  }

  else if (*(a1 + 88) == 5)
  {
    v17 = lzma_alone_encoder();
  }

  else
  {
    v16 = *(a2 + 176);
    if (v16 < 4096 || v16 > 0x20000000)
    {
      archive_set_error(*(a1 + 8), -1, "Unacceptable dictionary size for lzip: %d", v2, v3, v4, v5, v6, v16);
      return -30;
    }

      ;
    }

    if (v16 <= 1 << i)
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      LOBYTE(i) = i + 1;
      v14 = ((1 << i) - v16) / (1 << (i - 4));
    }

    *(a2 + 320) = 0;
    **(a2 + 296) = 76;
    *(*(a2 + 296) + 1) = 90;
    *(*(a2 + 296) + 2) = 73;
    *(*(a2 + 296) + 3) = 80;
    *(*(a2 + 296) + 4) = 1;
    *(*(a2 + 296) + 5) = (32 * v14) | i & 0x1F;
    *(a2 + 32) += 6;
    *(a2 + 40) -= 6;
    v17 = lzma_raw_encoder();
  }

  if (v17)
  {
    if (v17 == 5)
    {
      archive_set_error(*(a1 + 8), 12, "Internal error initializing compression library: Cannot allocate memory", v7, v8, v9, v10, v11, v13);
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "Internal error initializing compression library: It's a bug in liblzma", v7, v8, v9, v10, v11, v13);
    }

    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t drive_compressor(uint64_t a1, void *a2, int a3)
{
  while (1)
  {
    if (!a2[5])
    {
      a2[39] += a2[38];
      if (__archive_write_filter(*(a1 + 16), a2[37], a2[38]))
      {
        return -30;
      }

      a2[4] = a2[37];
      a2[5] = a2[38];
    }

    if (!a3 && !a2[2])
    {
      return 0;
    }

    v17 = lzma_code();
    if (v17)
    {
      break;
    }

    if (!a3 && !a2[2])
    {
      return 0;
    }
  }

  if (v17 == 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "lzma compression data error", v3, v4, v5, v6, v7, v15);
      return -30;
    }
  }

  else
  {
    if (v17 == 6)
    {
      v16 = *(a1 + 8);
      v8 = lzma_memusage();
      archive_set_error(v16, 12, "lzma compression error: %ju MiB would have been needed", v9, v10, v11, v12, v13, (v8 + 0xFFFFF) / 0x100000uLL);
    }

    else
    {
      archive_set_error(*(a1 + 8), -1, "lzma compression failed: lzma_code() call returned status %d", v3, v4, v5, v6, v7, v17);
    }

    return -30;
  }
}

uint64_t archive_le32enc_0(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t archive_le64enc(uint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a2);
  archive_le32enc_0(a1, a2);
  return archive_le32enc_0(a1 + 4, v4);
}

uint64_t archive_entry_stat(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    *(a1 + 8) = malloc_type_calloc(1uLL, 0x90uLL, 0x1000040B72DA15FuLL);
    if (!*(a1 + 8))
    {
      return 0;
    }

    *(a1 + 16) = 0;
  }

  if (*(a1 + 16))
  {
    return *(a1 + 8);
  }

  v2 = *(a1 + 8);
  *(v2 + 32) = archive_entry_atime(a1);
  *(v2 + 80) = archive_entry_birthtime(a1);
  *(v2 + 64) = archive_entry_ctime(a1);
  *(v2 + 48) = archive_entry_mtime(a1);
  *v2 = archive_entry_dev(a1);
  *(v2 + 20) = archive_entry_gid(a1);
  *(v2 + 16) = archive_entry_uid(a1);
  *(v2 + 8) = archive_entry_ino64(a1);
  *(v2 + 6) = archive_entry_nlink(a1);
  *(v2 + 24) = archive_entry_rdev(a1);
  *(v2 + 96) = archive_entry_size(a1);
  *(v2 + 4) = archive_entry_mode(a1);
  *(v2 + 40) = archive_entry_atime_nsec(a1);
  *(v2 + 72) = archive_entry_ctime_nsec(a1);
  *(v2 + 56) = archive_entry_mtime_nsec(a1);
  *(v2 + 88) = archive_entry_birthtime_nsec(a1);
  *(a1 + 16) = 1;
  return v2;
}

void *archive_entry_sparse_add_entry(void *result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if ((a2 & 0x8000000000000000) == 0 && (a3 & 0x8000000000000000) == 0 && a2 <= 0x7FFFFFFFFFFFFFFFLL - a3)
  {
    result = archive_entry_size(result);
    if (a2 + a3 <= result)
    {
      v4 = v7[152];
      if (!v4)
      {
        goto LABEL_11;
      }

      if (*(v4 + 8) + *(v4 + 16) > a2)
      {
        return result;
      }

      if (*(v4 + 8) + *(v4 + 16) == a2)
      {
        if (((*(v4 + 8) + *(v4 + 16) + a3) & 0x8000000000000000) == 0)
        {
          v3 = v7[152];
          *(v4 + 16) += a3;
        }
      }

      else
      {
LABEL_11:
        result = malloc_type_malloc(0x18uLL, 0x102004024DAA5DEuLL);
        if (result)
        {
          result[1] = a2;
          result[2] = a3;
          *result = 0;
          if (v7[151])
          {
            if (v7[152])
            {
              *v7[152] = result;
            }

            v7[152] = result;
          }

          else
          {
            v7[152] = result;
            v7[151] = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t archive_entry_sparse_count(uint64_t a1)
{
  v3 = 0;
  for (i = *(a1 + 1208); i; i = *i)
  {
    ++v3;
  }

  if (v3 == 1)
  {
    v5 = *(a1 + 1208);
    if (!*(v5 + 8))
    {
      v2 = *(v5 + 16);
      if (v2 >= archive_entry_size(a1))
      {
        v3 = 0;
        archive_entry_sparse_clear(a1);
      }
    }
  }

  return v3;
}

uint64_t archive_entry_sparse_next(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 1224))
  {
    *a2 = *(*(a1 + 1224) + 8);
    *a3 = *(*(a1 + 1224) + 16);
    *(a1 + 1224) = **(a1 + 1224);
    return 0;
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    return -20;
  }
}

_BYTE *archive_entry_strmode(uint64_t a1)
{
  v5 = (a1 + 1232);
  __strcpy_chk();
  v4 = archive_entry_mode(a1);
  v2 = archive_entry_filetype(a1);
  switch(v2)
  {
    case 4096:
      *v5 = 112;
      break;
    case 8192:
      *v5 = 99;
      break;
    case 16384:
      *v5 = 100;
      break;
    case 24576:
      *v5 = 98;
      break;
    case 32768:
      *v5 = 45;
      break;
    case 40960:
      *v5 = 108;
      break;
    case 49152:
      *v5 = 115;
      break;
    default:
      if (archive_entry_hardlink(a1))
      {
        *v5 = 104;
      }

      break;
  }

  for (i = 0; i < 9; ++i)
  {
    if ((v4 & archive_entry_strmode_permbits[i]) == 0)
    {
      v5[i + 1] = 45;
    }
  }

  if ((v4 & 0x800) != 0)
  {
    if ((v4 & 0x40) != 0)
    {
      v5[3] = 115;
    }

    else
    {
      v5[3] = 83;
    }
  }

  if ((v4 & 0x400) != 0)
  {
    if ((v4 & 8) != 0)
    {
      v5[6] = 115;
    }

    else
    {
      v5[6] = 83;
    }
  }

  if ((v4 & 0x200) != 0)
  {
    if (v4)
    {
      v5[9] = 116;
    }

    else
    {
      v5[9] = 84;
    }
  }

  if (archive_entry_acl_types(a1))
  {
    v5[10] = 43;
  }

  return v5;
}

uint64_t archive_entry_xattr_count(uint64_t a1)
{
  v2 = 0;
  for (i = *(a1 + 1192); i; i = *i)
  {
    ++v2;
  }

  return v2;
}

uint64_t archive_entry_xattr_next(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*(a1 + 1200))
  {
    *a2 = *(*(a1 + 1200) + 8);
    *a3 = *(*(a1 + 1200) + 16);
    *a4 = *(*(a1 + 1200) + 24);
    *(a1 + 1200) = **(a1 + 1200);
    return 0;
  }

  else
  {
    *a2 = 0;
    *a3 = 0;
    *a4 = 0;
    return -20;
  }
}

uint64_t archive_read_format_7zip_read_header(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v52 = a2;
  v51 = **(a1 + 2072);
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  i = 0;
  if (*(v51 + 5184) == -1)
  {
    *(v51 + 5184) = 0;
  }

  v53[4] = 917504;
  if (!*(v53 + 3))
  {
    *(v53 + 3) = "7-Zip";
  }

  if (v51[20])
  {
    v51[21] = v51[21] + 88;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v49 = slurp_central_directory(v53, v51, __b, v2, v3, v4, v5, v6);
    free_Header(__b);
    if (v49)
    {
      return v49;
    }

    v51[18] = v51[19];
    v51[21] = v51[20];
  }

  v50 = v51[21];
  if (v51[18] && v50)
  {
    v51[18] = v51[18] - 1;
    v51[23] = 0;
    *(v51 + 208) = 0;
    v51[25] = crc32(0, 0, 0);
    if (v51[2583] || (v7 = archive_string_conversion_from_charset(v53, "UTF-16LE", 1), (v51[2583] = v7) != 0))
    {
      if (v50 && v50[4] < v51[6])
      {
        v47 = (v51[7] + 104 * v50[4]);
        for (i = 0; ; ++i)
        {
          v35 = 0;
          if (v47)
          {
            v35 = i < *v47;
          }

          if (!v35)
          {
            break;
          }

          v34 = *(v47[1] + 40 * i);
          if (v34 == 116457729 || v34 == 116458243 || v34 == 116459265)
          {
            archive_entry_set_is_data_encrypted(v52, 1);
            *(v51 + 5184) = 1;
          }
        }
      }

      if (*(v51 + 5184) == -1)
      {
        *(v51 + 5184) = 0;
      }

      if (_archive_entry_copy_pathname_l(v52, *(v50 + 1), *v50, v51[2583]))
      {
        if (*__error() == 12)
        {
          archive_set_error(v53, 12, "Can't allocate memory for Pathname", v8, v9, v10, v11, v12, v32);
          return -30;
        }

        v33 = v53;
        v13 = archive_string_conversion_charset_name(v51[2583]);
        archive_set_error(v33, 79, "Pathname cannot be converted from %s to current locale.", v14, v15, v16, v17, v18, v13);
        v48 = -20;
      }

      v19 = v50[20];
      archive_entry_set_mode(v52, v50[20]);
      if (v50[6])
      {
        archive_entry_set_mtime(v52, *(v50 + 4), *(v50 + 7));
      }

      if ((v50[6] & 4) != 0)
      {
        archive_entry_set_ctime(v52, *(v50 + 6), *(v50 + 9));
      }

      if ((v50[6] & 2) != 0)
      {
        archive_entry_set_atime(v52, *(v50 + 5), *(v50 + 8));
      }

      if (v50[5] == -1)
      {
        v51[24] = 0;
        archive_entry_set_size(v52, 0);
      }

      else
      {
        v51[24] = *(v51[10] + v50[5]);
        archive_entry_set_size(v52, v51[24]);
      }

      v44 = 7;
      if ((v50[21] & 7) != 0)
      {
        v42 = 0;
        v43 = malloc_type_malloc(0x16uLL, 0x100004077774924uLL);
        if (v43)
        {
          v42 = v43;
          if (v50[21])
          {
            __strcpy_chk();
            v42 += 7;
          }

          if ((v50[21] & 2) != 0)
          {
            __strcpy_chk();
            v42 += 7;
          }

          if ((v50[21] & 4) != 0)
          {
            __strcpy_chk();
            v42 += 7;
          }

          if (v42 > v43)
          {
            *(v42 - 1) = 0;
            archive_entry_copy_fflags_text(v52, v43);
          }

          free(v43);
        }
      }

      if (!v51[24])
      {
        *(v51 + 208) = 1;
      }

      if ((v50[20] & 0xF000) == 0xA000)
      {
        ptr = 0;
        v40 = 0;
        while (v51[24])
        {
          v39 = 0;
          v38 = 0;
          v37 = 0;
          v36 = 0;
          v49 = archive_read_format_7zip_read_data(v53, &v39, &v37, &v36, v20, v21, v22, v23);
          if (v49 < -20)
          {
            free(ptr);
            return v49;
          }

          v24 = malloc_type_realloc(ptr, v40 + v37 + 1, 0x4E834420uLL);
          v38 = v24;
          if (!v24)
          {
            free(ptr);
            archive_set_error(v53, 12, "Can't allocate memory for Symname", v25, v26, v27, v28, v29, v32);
            return -30;
          }

          ptr = v38;
          __memcpy_chk();
          v40 += v37;
        }

        if (v40)
        {
          *(ptr + v40) = 0;
          archive_entry_copy_symlink(v52, ptr);
        }

        else
        {
          v50[20] &= 0xFFFF0FFF;
          v50[20] |= 0x8000u;
          v30 = v50[20];
          archive_entry_set_mode(v52, v50[20]);
        }

        free(ptr);
        archive_entry_set_size(v52, 0);
      }

      __snprintf_chk(v51 + 20672, 0x40uLL, 0, 0x40uLL, "7-Zip");
      *(v53 + 3) = v51 + 2584;
      return v48;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_7zip_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  v19 = **(a1 + 2072);
  if (*(v19 + 20736) == -1)
  {
    *(v19 + 20736) = 0;
  }

  if (*(v19 + 288))
  {
    read_consume(a1);
  }

  *a4 = *(v19 + 184);
  *a3 = 0;
  *a2 = 0;
  if (*(v19 + 208))
  {
    return 1;
  }

  else
  {
    v16 = 0x1000000;
    if (*(v19 + 192) < 0x1000000uLL)
    {
      v16 = *(v19 + 192);
    }

    len = read_stream(a1, a2, v16, 0, a5, a6, a7, a8);
    if (len < 0)
    {
      return len;
    }

    else if (len)
    {
      *(v19 + 192) -= len;
      if (!*(v19 + 192))
      {
        *(v19 + 208) = 1;
      }

      if ((*(*(v19 + 168) + 24) & 8) != 0)
      {
        *(v19 + 200) = crc32(*(v19 + 200), *a2, len);
      }

      if (*(v19 + 208) && (*(*(v19 + 168) + 24) & 8) != 0 && *(*(v19 + 96) + 4 * *(*(v19 + 168) + 20)) != *(v19 + 200))
      {
        v15 = *(*(v19 + 96) + 4 * *(*(v19 + 168) + 20));
        archive_set_error(a1, -1, "7-Zip bad CRC: 0x%lx should be 0x%lx", v8, v9, v10, v11, v12, *(v19 + 200));
        v17 = -20;
      }

      *a3 = len;
      *a4 = *(v19 + 184);
      *(v19 + 184) += len;
      return v17;
    }

    else
    {
      archive_set_error(a1, 79, "Truncated 7-Zip file body", v8, v9, v10, v11, v12, v14);
      return -30;
    }
  }
}

uint64_t archive_read_format_7zip_read_data_skip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(a1 + 2072);
  if (*(v9 + 288))
  {
    read_consume(a1);
  }

  if (*(v9 + 208))
  {
    return 0;
  }

  else if (skip_stream(a1, *(v9 + 192), a3, a4, a5, a6, a7, a8) < 0)
  {
    return -30;
  }

  else
  {
    *(v9 + 192) = 0;
    *(v9 + 208) = 1;
    return 0;
  }
}

uint64_t archive_read_format_7zip_has_encrypted_entries(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && (v2 = **(a1 + 2072)) != 0)
  {
    return *(v2 + 20736);
  }

  else
  {
    return -1;
  }
}

uint64_t check_7zip_header_in_sfx(uint64_t a1)
{
  v3 = *(a1 + 5);
  switch(v3)
  {
    case 28:
      if (!memcmp(a1, "7z\xBC\xAF'\x1C", 6uLL))
      {
        v2 = crc32(0, (a1 + 12), 0x14u);
        if (v2 == archive_le32dec_0((a1 + 8)))
        {
          return 0;
        }

        else
        {
          return 6;
        }
      }

      else
      {
        return 6;
      }

    case 39:
      return 1;
    case 55:
      return 5;
    case 122:
      return 4;
    case 175:
      return 2;
    case 188:
      return 3;
    default:
      return 6;
  }
}

uint64_t slurp_central_directory(_DWORD *a1, void **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a1;
  v74 = a2;
  v73 = a3;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v72 = __archive_read_ahead(a1, 0x20uLL, &v68, a4, a5, a6, a7, a8);
  if (!v72)
  {
    return -30;
  }

  if (*v72 == 77 && v72[1] == 90 || !memcmp(v72, "\x7FELF", 4uLL))
  {
    v65 = skip_sfx(v75, v68);
    if (v65 < -20)
    {
      return v65;
    }

    v72 = __archive_read_ahead(v75, 0x20uLL, &v68, v8, v9, v10, v11, v12);
    if (!v72)
    {
      return -30;
    }
  }

  v74[17] = v74[17] + 32;
  if (memcmp(v72, "7z\xBC\xAF'\x1C", 6uLL))
  {
    archive_set_error(v75, -1, "Not 7-Zip archive file", v13, v14, v15, v16, v17, v63);
    return -30;
  }

  crc32(0, v72 + 12, 0x14u);
  archive_le32dec_0(v72 + 8);
  v71 = archive_le64dec(v72 + 12);
  v70 = archive_le64dec(v72 + 20);
  v69 = archive_le32dec_0(v72 + 28);
  if (!v70)
  {
    return 1;
  }

  if (v71 < 0)
  {
LABEL_48:
    archive_set_error(v75, -1, "Malformed 7-Zip archive", v18, v19, v20, v21, v22, v63);
    return -30;
  }

  __archive_read_consume(v75, 0x20uLL);
  if (v71)
  {
    if (v68 < v71)
    {
      if (__archive_read_seek(v75, v74[17] + v71, 0) < 0)
      {
        return -30;
      }
    }

    else
    {
      __archive_read_consume(v75, v71);
    }
  }

  v74[31] = v71;
  v74[16] = v71;
  v74[14] = v70;
  v74[15] = 0;
  *(v74 + 27) = 0;
  *(v74 + 26) = 1;
  *(v74 + 5184) = 0;
  v67 = 1;
  v72 = header_bytes(v75, 1uLL, v23, v24, v25, v26, v27, v28);
  if (!v72)
  {
    archive_set_error(v75, 79, "Truncated 7-Zip file body", v29, v30, v31, v32, v33, v63);
    return -30;
  }

  v64 = *v72;
  if (v64 != 1)
  {
    if (v64 != 23)
    {
      archive_set_error(v75, -1, "Unexpected Property ID = %X", v29, v30, v31, v32, v33, *v72);
      return -30;
    }

    v66 = decode_encoded_header_info(v75, v74);
    if (!v66 && v74[15] != v69)
    {
      archive_set_error(v75, -1, "Damaged 7-Zip archive", v34, v35, v36, v37, v38, v63);
      v66 = -1;
    }

    if (!v66)
    {
      if (*(v74[7] + 72))
      {
        v69 = *(v74[7] + 19);
      }

      else
      {
        v67 = 0;
      }

      if (v74[36])
      {
        read_consume(v75);
      }

      v66 = setup_decode_folder(v75, v74[7], 1);
      if (!v66)
      {
        v74[14] = v74[33];
        v66 = seek_pack(v75, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    free_StreamsInfo(v74);
    __memset_chk();
    if (v66 < 0)
    {
      return -30;
    }

    *(v74 + 27) = 1;
    v74[15] = 0;
  }

  *__error() = 0;
  if ((read_Header(v75, v73, *(v74 + 27), v46, v47, v48, v49, v50) & 0x80000000) == 0)
  {
    v72 = header_bytes(v75, 1uLL, v51, v52, v53, v54, v55, v56);
    if (v72 && !*v72 && (!v67 || v74[15] == v69))
    {
      *(v74 + 69) = 0;
      *(v74 + 68) = 0;
      v74[33] = 0;
      v74[30] = 0;
      v74[36] = 0;
      *(v74 + 26) = 0;
      return 0;
    }

    goto LABEL_48;
  }

  if (*__error() == 12)
  {
    archive_set_error(v75, -1, "Couldn't allocate memory", v57, v58, v59, v60, v61, v63);
  }

  else
  {
    archive_set_error(v75, -1, "Damaged 7-Zip archive", v57, v58, v59, v60, v61, v63);
  }

  return -30;
}

void free_Header(void **a1)
{
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
  free(a1[4]);
}

uint64_t skip_sfx(_DWORD *a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (a2 <= 159744)
  {
    if (__archive_read_seek(v19, 159744, 0) < 0)
    {
      return -30;
    }
  }

  else
  {
    __archive_read_consume(v19, 0x27000uLL);
  }

  v13 = 0;
  v11 = 1;
  while ((v13 + v11) <= 0x39000)
  {
    v17 = __archive_read_ahead(v19, v11, &v12, v2, v3, v4, v5, v6);
    if (v17)
    {
      if (v12 >= 6)
      {
        v16 = v17;
        v15 = v17 + v12;
        while (v16 + 32 < v15)
        {
          v10 = check_7zip_header_in_sfx(v16);
          if (!v10)
          {
            v9 = **(v19 + 259);
            v14 = v16 - v17;
            __archive_read_consume(v19, v16 - v17);
            *(v9 + 136) = v13 + 159744 + v14;
            return 0;
          }

          v16 += v10;
        }

        v14 = v16 - v17;
        __archive_read_consume(v19, v16 - v17);
        v13 += v14;
        if (v11 == 1)
        {
          v11 = 4096;
        }
      }

      else
      {
        v11 = 4096;
      }
    }

    else
    {
      v11 >>= 1;
      if (v11 < 64)
      {
        break;
      }
    }
  }

  archive_set_error(v19, 79, "Couldn't find out 7-Zip header", v2, v3, v4, v5, v6, v8);
  return -30;
}

Bytef *header_bytes(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = **(a1 + 2072);
  buf = 0;
  if (*(v13 + 112) >= a2)
  {
    if (*(v13 + 288))
    {
      read_consume(v15);
    }

    if (*(v13 + 108))
    {
      v11 = 0;
      stream = read_stream(v15, &v11, v14, v14, a5, a6, a7, a8);
      if (stream <= 0)
      {
        return 0;
      }

      *(v13 + 112) -= stream;
      buf = v11;
    }

    else
    {
      buf = __archive_read_ahead(v15, v14, 0, a4, a5, a6, a7, a8);
      if (!buf)
      {
        return 0;
      }

      *(v13 + 112) -= v14;
      *(v13 + 288) = v14;
    }

    v8 = crc32(*(v13 + 120), buf, v14);
    *(v13 + 120) = v8;
    return buf;
  }

  return 0;
}

uint64_t decode_encoded_header_info(uint64_t a1, uint64_t a2)
{
  v13 = **(a1 + 2072);
  *__error() = 0;
  if ((read_StreamsInfo(a1, a2) & 0x80000000) != 0)
  {
    if (*__error() == 12)
    {
      archive_set_error(a1, -1, "Couldn't allocate memory", v7, v8, v9, v10, v11, v13);
    }

    else
    {
      archive_set_error(a1, -1, "Malformed 7-Zip archive", v7, v8, v9, v10, v11, v13);
    }

    return -30;
  }

  else if (*(a2 + 8) && *(a2 + 48))
  {
    if (*(v13 + 128) < *a2 + **(a2 + 16) || ((*a2 + **(a2 + 16)) & 0x8000000000000000) != 0 || !**(a2 + 16) || (*a2 & 0x8000000000000000) != 0)
    {
      archive_set_error(a1, -1, "Malformed Header offset", v2, v3, v4, v5, v6, v13);
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Malformed 7-Zip archive", v2, v3, v4, v5, v6, v13);
    return -30;
  }
}

uint64_t read_consume(uint64_t result)
{
  v1 = **(result + 2072);
  if (*(v1 + 288))
  {
    result = __archive_read_consume(result, *(v1 + 288));
    *(v1 + 248) += *(v1 + 288);
    *(v1 + 288) = 0;
  }

  return result;
}

uint64_t setup_decode_folder(uint64_t a1, void *a2, int a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v57 = a1;
  v56 = a2;
  v55 = a3;
  v54 = **(a1 + 2072);
  v53 = 0;
  v52 = 0;
  v3 = "archive header";
  if (!a3)
  {
    v3 = "file content";
  }

  v51 = v3;
  inited = 0;
  v48 = 0;
  for (i = 0; i < 3; ++i)
  {
    free(*(v54 + 20024 + 8 * i));
    *(v54 + 20024 + 8 * i) = 0;
  }

  *(v54 + 276) = v56[4];
  *(v54 + 272) = *(v56 + 22);
  *(v54 + 264) = folder_uncompressed_size(v56);
  *(v54 + 240) = 0;
  for (i = 0; ; ++i)
  {
    if (i >= *v56)
    {
      if (*(v54 + 20736) == -1)
      {
        *(v54 + 20736) = 0;
      }

      if (*v56 > 2uLL && !v48 || v48 > 1)
      {
        archive_set_error(v57, -1, "The %s is encoded with many filters, but currently not supported", v6, v7, v8, v9, v10, v51);
        v58 = -30;
        goto LABEL_83;
      }

      v53 = v56[1];
      if (*v56 == 2)
      {
        v52 = (v56[1] + 40);
      }

      else
      {
        v52 = 0;
      }

      if (!v48)
      {
LABEL_80:
        inited = init_decompression(v57, v54, v53, v52, v7, v8, v9, v10);
        if (inited)
        {
          v58 = -30;
        }

        else
        {
          v58 = 0;
        }

        goto LABEL_83;
      }

      v47 = v56[1];
      v67 = xmmword_1E80B8400;
      v68 = &setup_decode_folder_coder_copy;
      v46 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v62 = xmmword_1BF33B0F0;
      v63 = -1;
      memset(v61, 0, sizeof(v61));
      v59 = 0x100000000;
      v60 = 2;
      if (*v56 == 4 && v47[15] == 50528539 && v56[6] == 7 && v56[7] == 4 && *(v54 + 276) == 4)
      {
        if (*v56[3] == 5)
        {
          v59 = 0x200000001;
          v60 = 0;
          *(&v67 + 1) = v47 + 5;
          v68 = v47;
          *(&v62 + 1) = *(v56[8] + 8);
          v63 = *v56[8];
          v53 = v47 + 10;
LABEL_44:
          v52 = v47 + 15;
          *(v54 + 20016) = *(v56[8] + 16);
LABEL_52:
          inited = seek_pack(v57, v4, v5, v6, v7, v8, v9, v10);
          if ((inited & 0x80000000) != 0)
          {
            v58 = inited;
            goto LABEL_83;
          }

          *(v54 + 288) = *(v54 + 280);
          read_consume(v57);
          for (i = 0; i < 3; ++i)
          {
            v44 = *(&v67 + i);
            inited = seek_pack(v57, v11, v12, v13, v14, v15, v16, v17);
            if ((inited & 0x80000000) != 0)
            {
LABEL_57:
              free(v64);
              free(v65);
              free(v66);
              v58 = inited;
              goto LABEL_83;
            }

            if (*(&v62 + i) == -1)
            {
              *(v54 + 264) = *(v54 + 280);
            }

            else
            {
              *(v54 + 264) = *(&v62 + i);
            }

            inited = init_decompression(v57, v54, v44, 0, v18, v19, v20, v21);
            if (inited)
            {
              free(v64);
              free(v65);
              free(v66);
              v58 = -30;
              goto LABEL_83;
            }

            v22 = malloc_type_malloc(*(v54 + 264), 0x6DB11D7CuLL);
            *(&v64 + i) = v22;
            if (!*(&v64 + i))
            {
              free(v64);
              free(v65);
              free(v66);
              archive_set_error(v57, 12, "No memory for 7-Zip decompression", v23, v24, v25, v26, v27, v42);
              v58 = -30;
              goto LABEL_83;
            }

            while (*(v54 + 280))
            {
              inited = extract_pack_stream(v57, 0, v12, v13, v14, v15, v16, v17);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_57;
              }

              uncompressed_data = get_uncompressed_data(v57, &v46, *(v54 + 240), 0, v28, v29, v30, v31);
              if (uncompressed_data < 0)
              {
                free(v64);
                free(v65);
                free(v66);
                v58 = uncompressed_data;
                goto LABEL_83;
              }

              v32 = *(&v64 + i);
              v33 = v61[i];
              __memcpy_chk();
              v61[i] += uncompressed_data;
              if (*(v54 + 288))
              {
                read_consume(v57);
              }
            }
          }

          for (i = 0; i < 3; ++i)
          {
            *(v54 + 20024 + 8 * i) = *(&v64 + *(&v59 + i));
            *(v54 + 20048 + 8 * i) = v61[*(&v59 + i)];
            *(v54 + 20072 + 8 * i) = v61[*(&v59 + i)];
          }

          if (!*(v54 + 20096))
          {
            *(v54 + 20104) = 0x8000;
            v34 = malloc_type_malloc(*(v54 + 20104), 0x2CB6963DuLL);
            *(v54 + 20096) = v34;
            if (!*(v54 + 20096))
            {
              archive_set_error(v57, 12, "No memory for 7-Zip decompression", v35, v36, v37, v38, v39, v42);
              v58 = -30;
              goto LABEL_83;
            }
          }

          *(v54 + 20112) = 0;
          *(v54 + 20120) = 0;
          *(v54 + 19984) = 0;
          *(v54 + 20656) = 0;
          *(v54 + 276) = 1;
          *(v54 + 272) = *(v56 + 22);
          v40 = folder_uncompressed_size(v56);
          *(v54 + 264) = v40;
          *(v54 + 240) = 0;
          goto LABEL_80;
        }

        if (!*v47 && !v47[5])
        {
          v53 = (v56[1] + 80);
          goto LABEL_44;
        }

        if (!*v47 && !v47[10])
        {
          v53 = (v56[1] + 40);
          goto LABEL_44;
        }

        if (!v47[5] && !v47[10])
        {
          v53 = v56[1];
          goto LABEL_44;
        }
      }

      else if (v52 && *v52 == 50528539 && *(v54 + 276) == 4 && v56[6] == 5 && v56[7] == 2)
      {
        *(v54 + 20016) = *v56[8];
        goto LABEL_52;
      }

      archive_set_error(v57, -1, "Unsupported form of BCJ2 streams", v6, v7, v8, v9, v10, v42);
      v58 = -30;
      goto LABEL_83;
    }

    v43 = *(v56[1] + 40 * i);
    if (v43 == 50528539)
    {
      ++v48;
      continue;
    }

    if (v43 == 116457729 || v43 == 116458243 || v43 == 116459265)
    {
      break;
    }
  }

  *(v54 + 20736) = 1;
  if (*(v57 + 18))
  {
    archive_entry_set_is_data_encrypted(*(v57 + 18), 1);
    archive_entry_set_is_metadata_encrypted(*(v57 + 18), 1);
  }

  archive_set_error(v57, -1, "The %s is encrypted, but currently not supported", v6, v7, v8, v9, v10, v51);
  v58 = -30;
LABEL_83:
  *MEMORY[0x1E69E9840];
  return v58;
}

uint64_t seek_pack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = **(a1 + 2072);
  if (*(v10 + 276))
  {
    *(v10 + 280) = *(*(v10 + 16) + 8 * *(v10 + 272));
    v9 = *(*(v10 + 40) + 8 * *(v10 + 272));
    if (*(v10 + 248) != v9)
    {
      if (__archive_read_seek(a1, v9 + *(v10 + 136), 0) < 0)
      {
        return -30;
      }

      *(v10 + 248) = v9;
    }

    ++*(v10 + 272);
    --*(v10 + 276);
    return 0;
  }

  archive_set_error(a1, -1, "Damaged 7-Zip archive", a4, a5, a6, a7, a8, 0);
  return -30;
}

uint64_t read_Header(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = a1;
  v96 = a2;
  v95 = a3;
  v94 = **(a1 + 2072);
  v93 = 0;
  v92 = 0;
  v91 = v94;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  i = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  if (a3)
  {
    v93 = header_bytes(v97, 1uLL, a3, a4, a5, a6, a7, a8);
    if (!v93)
    {
      return -1;
    }

    if (*v93 != 1)
    {
      return -1;
    }
  }

  v93 = header_bytes(v97, 1uLL, a3, a4, a5, a6, a7, a8);
  if (!v93)
  {
    return -1;
  }

  if (*v93 == 2)
  {
    while (1)
    {
      v83 = 0;
      v93 = header_bytes(v97, 1uLL, v8, v9, v10, v11, v12, v13);
      if (!v93)
      {
        return -1;
      }

      if (!*v93)
      {
        break;
      }

      if ((parse_7zip_uint64(v97, &v83, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
      {
        return -1;
      }
    }

    v20 = header_bytes(v97, 1uLL, v14, v15, v16, v17, v18, v19);
    v93 = v20;
    if (!v20)
    {
      return -1;
    }
  }

  if (*v93 == 4)
  {
    if ((read_StreamsInfo(v97, v94) & 0x80000000) != 0)
    {
      return -1;
    }

    v93 = header_bytes(v97, 1uLL, v21, v22, v23, v24, v25, v26);
    if (!v93)
    {
      return -1;
    }
  }

  if (!*v93)
  {
    return 0;
  }

  if (*v93 != 5)
  {
    return -1;
  }

  if ((parse_7zip_uint64(v97, v94 + 19, v8, v9, v10, v11, v12, v13) & 0x80000000) != 0)
  {
    return -1;
  }

  if (v94[19] > 0x5F5E100)
  {
    return -1;
  }

  v27 = malloc_type_calloc(v94[19], 0x58uLL, 0x1010040723F4071uLL);
  v94[20] = v27;
  if (!v94[20])
  {
    return -1;
  }

  v90 = v94[20];
  v85 = 0;
  while (1)
  {
    v82 = 0;
    v81 = 0;
    v93 = header_bytes(v97, 1uLL, v28, v29, v30, v31, v32, v33);
    if (!v93)
    {
      return -1;
    }

    v82 = *v93;
    if (!v82)
    {
      break;
    }

    if ((parse_7zip_uint64(v97, &v81, v34, v35, v36, v37, v38, v39) & 0x80000000) != 0)
    {
      return -1;
    }

    if (v94[14] < v81)
    {
      return -1;
    }

    size = v81;
    switch(v82)
    {
      case 14:
        if (v96[1])
        {
          return -1;
        }

        v40 = malloc_type_calloc(v94[19], 1uLL, 0x100004077774924uLL);
        v96[1] = v40;
        if (!v96[1])
        {
          return -1;
        }

        if ((read_Bools(v97, v96[1], v94[19], v41, v42, v43, v44, v45) & 0x80000000) != 0)
        {
          return -1;
        }

        v85 = 0;
        for (i = 0; i < v94[19]; ++i)
        {
          if (*(v96[1] + i))
          {
            ++v85;
          }
        }

        break;
      case 15:
        if (v85 > 0)
        {
          if (v96[2])
          {
            return -1;
          }

          v46 = malloc_type_calloc(v85, 1uLL, 0x100004077774924uLL);
          v96[2] = v46;
          if (!v96[2])
          {
            return -1;
          }

          if ((read_Bools(v97, v96[2], v85, v47, v48, v49, v50, v51) & 0x80000000) != 0)
          {
            return -1;
          }
        }

        else if (!header_bytes(v97, v81, v28, v29, v30, v31, v32, v33))
        {
          return -1;
        }

        break;
      case 16:
        if (v85 > 0)
        {
          if (v96[3])
          {
            return -1;
          }

          v52 = malloc_type_calloc(v85, 1uLL, 0x100004077774924uLL);
          v96[3] = v52;
          if (!v96[3])
          {
            return -1;
          }

          if ((read_Bools(v97, v96[3], v85, v53, v54, v55, v56, v57) & 0x80000000) != 0)
          {
            return -1;
          }
        }

        else if (!header_bytes(v97, v81, v28, v29, v30, v31, v32, v33))
        {
          return -1;
        }

        break;
      case 17:
        v93 = header_bytes(v97, 1uLL, v28, v29, v30, v31, v32, v33);
        if (!v93)
        {
          return -1;
        }

        sizea = size - 1;
        if ((sizea & 1) != 0 || sizea < 4 * v94[19])
        {
          return -1;
        }

        if (v94[22])
        {
          return -1;
        }

        v58 = malloc_type_malloc(sizea, 0x5E86BF44uLL);
        v94[22] = v58;
        if (!v94[22])
        {
          return -1;
        }

        v77 = v94[22];
        for (j = sizea; j; j -= v74)
        {
          if (j <= 0x10000)
          {
            v74 = j;
            v59 = header_bytes(v97, j, v28, v29, v30, v31, v32, v33);
          }

          else
          {
            v74 = 0x10000;
            v59 = header_bytes(v97, 0x10000uLL, v28, v29, v30, v31, v32, v33);
          }

          v93 = v59;
          if (!v59)
          {
            return -1;
          }

          __memcpy_chk();
          v77 += v74;
        }

        v78 = v94[22];
        v76 = sizea;
        for (i = 0; i < v94[19]; ++i)
        {
          *(v90 + 88 * i + 8) = v78;
          while (1)
          {
            v71 = 0;
            if (v76 >= 2)
            {
              v70 = 1;
              if (!*v78)
              {
                v70 = v78[1] != 0;
              }

              v71 = v70;
            }

            if (!v71)
            {
              break;
            }

            v78 += 2;
            v76 -= 2;
          }

          if (v76 < 2)
          {
            return -1;
          }

          *(v90 + 88 * i) = &v78[-*(v90 + 88 * i + 8)];
          v78 += 2;
          v76 -= 2;
        }

        break;
      default:
        if ((v82 - 18) <= 2)
        {
          if ((read_Times(v97, v96, v82) & 0x80000000) != 0)
          {
            return -1;
          }
        }

        else if (v82 == 21)
        {
          v93 = header_bytes(v97, 2uLL, v28, v29, v30, v31, v32, v33);
          if (!v93)
          {
            return -1;
          }

          v73 = *v93;
          if (v96[4])
          {
            return -1;
          }

          v60 = malloc_type_calloc(v94[19], 1uLL, 0x100004077774924uLL);
          v96[4] = v60;
          if (!v96[4])
          {
            return -1;
          }

          if (v73)
          {
            v66 = v96[4];
            v67 = v94[19];
            __memset_chk();
          }

          else if ((read_Bools(v97, v96[4], v94[19], v61, v62, v63, v64, v65) & 0x80000000) != 0)
          {
            return -1;
          }

          for (i = 0; i < v94[19]; ++i)
          {
            if (*(v96[4] + i))
            {
              v93 = header_bytes(v97, 4uLL, v28, v29, v30, v31, v32, v33);
              if (!v93)
              {
                return -1;
              }

              v68 = archive_le32dec_0(v93);
              *(v90 + 88 * i + 84) = v68;
            }
          }
        }

        else if ((v82 != 25 || v81) && !header_bytes(v97, v81, v28, v29, v30, v31, v32, v33))
        {
          return -1;
        }

        break;
    }
  }

  v92 = v91[7];
  v84 = 0;
  v86 = 0;
  v88 = 0;
  v89 = 0;
  for (i = 0; ; ++i)
  {
    if (i >= v94[19])
    {
      return 0;
    }

    if (!v96[1] || !*(v96[1] + i))
    {
      *(v90 + 88 * i + 24) |= 0x10u;
    }

    *(v90 + 88 * i + 80) = HIWORD(*(v90 + 88 * i + 84));
    if ((*(v90 + 88 * i + 84) & 0x8000) == 0)
    {
      if ((*(v90 + 88 * i + 84) & 0x10) != 0)
      {
        if (*(v90 + 88 * i + 84))
        {
          *(v90 + 88 * i + 80) = 16749;
        }

        else
        {
          *(v90 + 88 * i + 80) = 16877;
        }
      }

      else if (*(v90 + 88 * i + 84))
      {
        *(v90 + 88 * i + 80) = 33060;
      }

      else
      {
        *(v90 + 88 * i + 80) = 33188;
      }
    }

    if ((*(v90 + 88 * i + 24) & 0x10) != 0)
    {
      if (v84 >= v91[9])
      {
        return -1;
      }

      if (!*(v90 + 88 * i + 80))
      {
        *(v90 + 88 * i + 80) = 33206;
      }

      if (*(v91[11] + v84))
      {
        *(v90 + 88 * i + 24) |= 8u;
      }

      *(v90 + 88 * i + 20) = v84++;
    }

    else
    {
      if (v96[2])
      {
        v72 = *(v96[2] + v86++) == 0;
      }

      else
      {
        v72 = 1;
      }

      if (*(v90 + 88 * i + 80))
      {
        if (v72 && (*(v90 + 88 * i + 80) & 0xF000) != 0x4000)
        {
          *(v90 + 88 * i + 80) &= 0xFFFF0FFF;
          *(v90 + 88 * i + 80) |= 0x4000u;
        }
      }

      else if (v72)
      {
        *(v90 + 88 * i + 80) = 16895;
      }

      else
      {
        *(v90 + 88 * i + 80) = 33206;
      }

      if ((*(v90 + 88 * i + 80) & 0xF000) == 0x4000 && *(v90 + 88 * i) >= 2uLL && (*(*(v90 + 88 * i + 8) + *(v90 + 88 * i) - 2) != 47 || *(*(v90 + 88 * i + 8) + *(v90 + 88 * i) - 1)))
      {
        *(*(v90 + 88 * i + 8) + *(v90 + 88 * i)) = 47;
        *(*(v90 + 88 * i + 8) + *(v90 + 88 * i) + 1) = 0;
        *(v90 + 88 * i) += 2;
      }

      *(v90 + 88 * i + 20) = -1;
    }

    if (*(v90 + 88 * i + 84))
    {
      *(v90 + 88 * i + 80) &= 0xFFFFFF6D;
    }

    if ((*(v90 + 88 * i + 24) & 0x10) == 0 && !v88)
    {
      *(v90 + 88 * i + 16) = -1;
      continue;
    }

    if (!v88)
    {
      break;
    }

LABEL_185:
    *(v90 + 88 * i + 16) = v89;
    if ((*(v90 + 88 * i + 24) & 0x10) != 0 && ++v88 >= *(v92 + 104 * v89 + 80))
    {
      ++v89;
      v88 = 0;
    }
  }

  while (v89 < v91[6])
  {
    if (*(v92 + 104 * v89 + 80))
    {
      goto LABEL_185;
    }

    ++v89;
  }

  return -1;
}