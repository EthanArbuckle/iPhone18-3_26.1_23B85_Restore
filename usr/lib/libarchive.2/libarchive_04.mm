uint64_t archive_read_extract(_DWORD *a1, uint64_t a2, int a3)
{
  v10 = __archive_read_get_extract(a1);
  if (v10)
  {
    if (!*v10)
    {
      *v10 = archive_write_disk_new();
      if (!*v10)
      {
        archive_set_error(a1, 12, "Can't extract", v3, v4, v5, v6, v7, a1);
        return -30;
      }

      archive_write_disk_set_standard_lookup(*v10);
    }

    archive_write_disk_set_options(*v10, a3);
    return archive_read_extract2(a1, a2, *v10);
  }

  return -30;
}

uint64_t pack_native(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = *(a2 + 8) | (*a2 << 24);
    if (HIBYTE(v4) == *a2)
    {
      if ((*(a2 + 8) & 0xFFFFFF) != *(a2 + 8))
      {
        *a3 = "invalid minor number";
      }
    }

    else
    {
      *a3 = "invalid major number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_find(const void *a1)
{
  v2 = bsearch(a1, &formats, 0x10uLL, 0x10uLL, compare_format);
  if (v2)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t pack_8_8(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 8) & 0xFF00 | *(a2 + 8);
    if ((*a2 << 8) >> 8 != *a2)
    {
      *a3 = "invalid major number";
    }

    if (v4 != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_bsdos(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 20) | *(a2 + 8) & 0xFFFFF;
    if ((*a2 & 0xFFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFFF) != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else if (a1 == 3)
  {
    v4 = (*a2 << 20) | (*(a2 + 8) << 8) & 0xFFF00 | *(a2 + 16);
    if ((*a2 & 0xFFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFF00) >> 8 != *(a2 + 8))
    {
      *a3 = "invalid unit number";
    }

    if (v4 != *(a2 + 16))
    {
      *a3 = "invalid subunit number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_freebsd(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 8) & 0xFF00 | *(a2 + 8) & 0xFFFF00FF;
    if ((*a2 << 8) >> 8 != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFF00FF) != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_8_24(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 24) | *(a2 + 8) & 0xFFFFFF;
    if (*a2 != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFFFF) != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_netbsd(int a1, _DWORD *a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 8) & 0xFFF00 | (a2[2] << 12) & 0xFFF00000 | *(a2 + 1);
    if (((*a2 << 8) & 0xFFF00) >> 8 == *a2)
    {
      if ((v4 | ((v4 & 0xFFF00000) >> 12)) != *(a2 + 1))
      {
        *a3 = "invalid minor number";
      }
    }

    else
    {
      *a3 = "invalid major number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_12_20(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 20) | *(a2 + 8) & 0xFFFFF;
    if ((*a2 & 0xFFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0xFFFFF) != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t pack_14_18(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a1 == 2)
  {
    v4 = (*a2 << 18) | *(a2 + 8) & 0x3FFFF;
    if ((*a2 & 0x3FFF) != *a2)
    {
      *a3 = "invalid major number";
    }

    if ((v4 & 0x3FFFF) != *(a2 + 8))
    {
      *a3 = "invalid minor number";
    }
  }

  else
  {
    *a3 = "too many fields for format";
  }

  return v4;
}

uint64_t archive_read_open_fd(_DWORD *a1, unsigned int a2, size_t a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  memset(&__b, 0, sizeof(__b));
  archive_clear_error(v22);
  if (fstat(v21, &__b))
  {
    v16 = v22;
    v3 = __error();
    archive_set_error(v16, *v3, "Can't stat fd %d", v4, v5, v6, v7, v8, v21);
    return -30;
  }

  else
  {
    v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040E8018C35uLL);
    v17 = malloc_type_malloc(v20, 0xCB978130uLL);
    if (v18 && v17)
    {
      v18[1] = v20;
      v18[3] = v17;
      *v18 = v21;
      if ((__b.st_mode & 0xF000) == 0x8000)
      {
        archive_read_extract_set_skip_file(v22, __b.st_dev, __b.st_ino);
        *(v18 + 16) = 1;
      }

      archive_read_set_read_callback(v22, file_read);
      archive_read_set_skip_callback(v22, file_skip);
      archive_read_set_seek_callback(v22, file_seek);
      archive_read_set_close_callback(v22, file_close);
      archive_read_set_callback_data(v22, v18);
      return archive_read_open1(v22);
    }

    else
    {
      archive_set_error(v22, 12, "No memory", v9, v10, v11, v12, v13, v15);
      free(v18);
      free(v17);
      return -30;
    }
  }
}

ssize_t file_read(_DWORD *a1, unsigned int *a2, void *a3)
{
  *a3 = *(a2 + 3);
  while (1)
  {
    v10 = read(*a2, *(a2 + 3), *(a2 + 1));
    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = __error();
      archive_set_error(a1, *v3, "Error reading fd %d", v4, v5, v6, v7, v8, *a2);
      return v10;
    }
  }

  return v10;
}

uint64_t file_skip(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v12 = a3 / *(a2 + 8) * *(a2 + 8);
  if (!v12)
  {
    return 0;
  }

  v11 = lseek(*a2, 0, 1);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v10 = lseek(*a2, v12, 1);
    if ((v10 & 0x8000000000000000) == 0)
    {
      return v10 - v11;
    }
  }

  *(a2 + 16) = 0;
  if (*__error() == 29)
  {
    return 0;
  }

  v3 = __error();
  archive_set_error(a1, *v3, "Error seeking", v4, v5, v6, v7, v8, a1);
  return -1;
}

uint64_t file_seek(_DWORD *a1, int *a2, off_t a3, int a4)
{
  v17 = lseek(*a2, a3, a4);
  if ((v17 & 0x8000000000000000) == 0)
  {
    return v17;
  }

  if (*__error() == 29)
  {
    v4 = __error();
    archive_set_error(a1, *v4, "A file descriptor(%d) is not seekable(PIPE)", v5, v6, v7, v8, v9, *a2);
    return -25;
  }

  else
  {
    v10 = __error();
    archive_set_error(a1, *v10, "Error seeking in a file descriptor(%d)", v11, v12, v13, v14, v15, *a2);
    return -30;
  }
}

uint64_t file_close(uint64_t a1, void **a2)
{
  free(a2[3]);
  free(a2);
  return 0;
}

uint64_t archive_write_add_filter_lzop(int *a1)
{
  v18 = __archive_write_allocate_filter(a1);
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_add_filter_lzop") == -30)
  {
    return -30;
  }

  else
  {
    v17 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (v17)
    {
      v18[10] = "lzop";
      *(v18 + 22) = 11;
      v18[9] = v17;
      v18[4] = archive_write_lzop_open;
      v18[3] = archive_write_lzop_options;
      v18[5] = archive_write_lzop_write;
      v18[7] = archive_write_lzop_close;
      v18[8] = archive_write_lzop_free;
      v17[1] = __archive_write_program_allocate("lzop");
      if (v17[1])
      {
        *v17 = 0;
        archive_set_error(a1, -1, "Using external lzop program for lzop compression", v6, v7, v8, v9, v10, archive_write_lzop_open);
        return -20;
      }

      else
      {
        free(v17);
        archive_set_error(a1, 12, "Can't allocate memory", v11, v12, v13, v14, v15, archive_write_lzop_open);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate memory", v1, v2, v3, v4, v5, archive_write_lzop_open);
      return -30;
    }
  }
}

uint64_t archive_write_lzop_open(uint64_t a1)
{
  v6 = a1;
  v5 = *(a1 + 72);
  memset(v4, 0, sizeof(v4));
  archive_strncat(v4, "lzop", 4uLL);
  if (*v5 > 0)
  {
    archive_strappend_char(v4, 32);
    archive_strappend_char(v4, 45);
    v1 = (*v5 + 48);
    archive_strappend_char(v4, *v5 + 48);
  }

  v3 = __archive_write_program_open(v6, *(v5 + 8), v4[0]);
  archive_string_free(v4);
  return v3;
}

uint64_t archive_write_lzop_options(uint64_t a1, const char *a2, char *a3)
{
  v4 = *(a1 + 72);
  if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 49 && *a3 <= 57 && !a3[1])
    {
      *v4 = *a3 - 48;
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

uint64_t archive_write_lzop_free(uint64_t a1)
{
  v2 = *(a1 + 72);
  __archive_write_program_free(v2[1]);
  free(v2);
  return 0;
}

uint64_t archive_read_open_FILE(_DWORD *a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  memset(&__b, 0, sizeof(__b));
  archive_clear_error(v13);
  v10 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00406E3BE4FBuLL);
  v9 = malloc_type_malloc(0x20000uLL, 0xD675D822uLL);
  if (v10 && v9)
  {
    v10[1] = 0x20000;
    v10[2] = v9;
    *v10 = v12;
    v7 = fileno(*v10);
    if (!fstat(v7, &__b) && (__b.st_mode & 0xF000) == 0x8000)
    {
      archive_read_extract_set_skip_file(v13, __b.st_dev, __b.st_ino);
      *(v10 + 24) = 1;
    }

    archive_read_set_read_callback(v13, FILE_read);
    archive_read_set_skip_callback(v13, FILE_skip);
    archive_read_set_seek_callback(v13, FILE_seek);
    archive_read_set_close_callback(v13, FILE_close);
    archive_read_set_callback_data(v13, v10);
    return archive_read_open1(v13);
  }

  else
  {
    archive_set_error(v13, 12, "No memory", v2, v3, v4, v5, v6, FILE_read);
    free(v10);
    free(v9);
    return -30;
  }
}

size_t FILE_read(_DWORD *a1, uint64_t a2, void *a3)
{
  *a3 = *(a2 + 16);
  v10 = fread(*(a2 + 16), 1uLL, *(a2 + 8), *a2);
  if (v10 < *(a2 + 8) && ferror(*a2))
  {
    v3 = __error();
    archive_set_error(a1, *v3, "Error reading file", v4, v5, v6, v7, v8, a1);
  }

  return v10;
}

off_t FILE_skip(uint64_t a1, uint64_t a2, off_t a3)
{
  if (!*(a2 + 24))
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  if (!fseeko(*a2, a3, 1))
  {
    return a3;
  }

  *(a2 + 24) = 0;
  return 0;
}

off_t FILE_seek(_DWORD *a1, FILE **a2, off_t a3, int a4)
{
  if (!fseeko(*a2, a3, a4))
  {
    return ftello(*a2);
  }

  v4 = __error();
  archive_set_error(a1, *v4, "Error seeking in FILE* pointer", v5, v6, v7, v8, v9, v11);
  return -30;
}

uint64_t FILE_close(uint64_t a1, void **a2)
{
  free(a2[2]);
  free(a2);
  return 0;
}

uint64_t blake2s_init_param(uint64_t a1, unsigned __int8 *a2)
{
  blake2s_init0(a1);
  for (i = 0; i < 8; ++i)
  {
    *(a1 + 4 * i) ^= load32(&a2[4 * i]);
  }

  *(a1 + 120) = *a2;
  return 0;
}

uint64_t blake2s_init0(uint64_t a1)
{
  result = __memset_chk();
  for (i = 0; i < 8; ++i)
  {
    *(a1 + 4 * i) = blake2s_IV[i];
  }

  return result;
}

uint64_t store32(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t blake2s_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a3;
  if (a3)
  {
    v5 = 64 - *(a1 + 112);
    if (a3 > v5)
    {
      *(a1 + 112) = 0;
      __memcpy_chk();
      blake2s_increment_counter(a1, 0x40u);
      blake2s_compress(a1, a1 + 48);
      v7 = a2 + v5;
      for (v8 -= v5; v8 > 0x40; v8 -= 64)
      {
        blake2s_increment_counter(a1, 0x40u);
        blake2s_compress(a1, v7);
        v7 += 64;
      }
    }

    v3 = *(a1 + 112);
    __memcpy_chk();
    *(a1 + 112) += v8;
  }

  return 0;
}

uint64_t blake2s_increment_counter(uint64_t result, unsigned int a2)
{
  *(result + 32) += a2;
  v2 = *(result + 36);
  if (*(result + 32) < a2)
  {
    ++v2;
  }

  *(result + 36) = v2;
  return result;
}

uint64_t blake2s_compress(_DWORD *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  for (i = 0; i < 0x10; ++i)
  {
    *(&v24 + i) = load32((a2 + 4 * i));
  }

  for (j = 0; j < 8; ++j)
  {
    *(&v8 + j) = a1[j];
  }

  v16 = 1779033703;
  v17 = -1150833019;
  v18 = 1013904242;
  v19 = -1521486534;
  v20 = a1[8] ^ 0x510E527F;
  v21 = a1[9] ^ 0x9B05688C;
  v22 = a1[10] ^ 0x1F83D9AB;
  v23 = a1[11] ^ 0x5BE0CD19;
  v8 += v12 + *(&v24 + blake2s_sigma);
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B685);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v26;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B687);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v28;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B689);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v30;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B68B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v32;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B68D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v34;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B68F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v36;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B691);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v38;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B693);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v38;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B695);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v28;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B697);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v33;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B699);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v37;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B69B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v25;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B69D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v24;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B69F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v35;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6A1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v29;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6A3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v35;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6A5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v36;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + v24;
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v29;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6A9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v39;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6AB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v34;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6AD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v27;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6AF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v31;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6B1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v33;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6B3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v31;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6B5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v27;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6B7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v37;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6B9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v35;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6BB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v26;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6BD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v29;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6BF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v28;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + v24;
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v39;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6C3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v33;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + v24;
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v29;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6C7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v26;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6C9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v34;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6CB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v38;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6CD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v35;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6CF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v30;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6D1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v27;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6D3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v26;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6D5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v30;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6D7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v24;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6D9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v32;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6DB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v28;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6DD);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v31;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6DF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v39;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6E1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v25;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6E3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v36;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6E5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v25;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6E7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v38;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6E9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v28;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6EB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v24;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B6ED);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v30;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6EF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v33;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B6F1);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v32;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B6F3);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v37;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B6F5);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v31;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B6F7);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v36;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B6F9);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v27;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B6FB);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v29;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + v24;
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v39;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B6FF);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v32;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B701);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v26;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B703);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v30;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B705);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v38;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B707);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v35;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B709);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v24;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B70B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v36;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B70D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v37;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B70F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v25;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B711);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v34;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + *(&v24 + unk_1BF33B713);
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 7);
  v8 += v12 + v34;
  v20 = rotr32(v20 ^ v8, 16);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 12);
  v8 += v12 + *(&v24 + unk_1BF33B715);
  v20 = rotr32(v20 ^ v8, 8);
  v16 += v20;
  v12 = rotr32(v12 ^ v16, 7);
  v9 += v13 + v32;
  v21 = rotr32(v21 ^ v9, 16);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 12);
  v9 += v13 + *(&v24 + unk_1BF33B717);
  v21 = rotr32(v21 ^ v9, 8);
  v17 += v21;
  v13 = rotr32(v13 ^ v17, 7);
  v10 += v14 + v31;
  v22 = rotr32(v22 ^ v10, 16);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 12);
  v10 += v14 + *(&v24 + unk_1BF33B719);
  v22 = rotr32(v22 ^ v10, 8);
  v18 += v22;
  v14 = rotr32(v14 ^ v18, 7);
  v11 += v15 + v25;
  v23 = rotr32(v23 ^ v11, 16);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 12);
  v11 += v15 + *(&v24 + unk_1BF33B71B);
  v23 = rotr32(v23 ^ v11, 8);
  v19 += v23;
  v15 = rotr32(v15 ^ v19, 7);
  v8 += v13 + v39;
  v23 = rotr32(v23 ^ v8, 16);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 12);
  v8 += v13 + *(&v24 + unk_1BF33B71D);
  v23 = rotr32(v23 ^ v8, 8);
  v18 += v23;
  v13 = rotr32(v13 ^ v18, 7);
  v9 += v14 + v33;
  v20 = rotr32(v20 ^ v9, 16);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 12);
  v9 += v14 + *(&v24 + unk_1BF33B71F);
  v20 = rotr32(v20 ^ v9, 8);
  v19 += v20;
  v14 = rotr32(v14 ^ v19, 7);
  v10 += v15 + v27;
  v21 = rotr32(v21 ^ v10, 16);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 12);
  v10 += v15 + *(&v24 + unk_1BF33B721);
  v21 = rotr32(v21 ^ v10, 8);
  v16 += v21;
  v15 = rotr32(v15 ^ v16, 7);
  v11 += v12 + v37;
  v22 = rotr32(v22 ^ v11, 16);
  v17 += v22;
  v12 = rotr32(v12 ^ v17, 12);
  v11 += v12 + v24;
  v22 = rotr32(v22 ^ v11, 8);
  v17 += v22;
  result = rotr32(v12 ^ v17, 7);
  v12 = result;
  for (k = 0; k < 8; ++k)
  {
    a1[k] ^= *(&v8 + k) ^ *(&v8 + k + 8);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t blake2s_final(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  if (a2 && a3 >= *(a1 + 120))
  {
    if (blake2s_is_lastblock(a1))
    {
      v8 = -1;
    }

    else
    {
      blake2s_increment_counter(a1, *(a1 + 112));
      blake2s_set_lastblock(a1);
      v3 = a1 + 48 + *(a1 + 112);
      v4 = *(a1 + 112);
      __memset_chk();
      blake2s_compress(a1, a1 + 48);
      for (i = 0; i < 8; ++i)
      {
        store32(v9 + 4 * i, *(a1 + 4 * i));
      }

      __memcpy_chk();
      secure_zero_memory(v9, 32);
      v8 = 0;
    }
  }

  else
  {
    v8 = -1;
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t blake2s_set_lastblock(uint64_t result)
{
  v1 = result;
  if (*(result + 128))
  {
    result = blake2s_set_lastnode(result);
  }

  *(v1 + 40) = -1;
  return result;
}

uint64_t archive_read_open_filename(_DWORD *a1, const char *a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = 0;
  open_filenames = archive_read_open_filenames(a1, v5, a3);
  *MEMORY[0x1E69E9840];
  return open_filenames;
}

uint64_t archive_read_open_filenames(_DWORD *a1, const char **a2, uint64_t a3)
{
  v16 = a2;
  v13 = 0;
  if (a2)
  {
    v16 = a2 + 1;
    v13 = *a2;
  }

  archive_clear_error(a1);
  do
  {
    if (!v13)
    {
      v13 = &unk_1BF3442C6;
    }

    v3 = strlen(v13);
    v14 = malloc_type_calloc(1uLL, v3 + 40, 0x1080040C3949B75uLL);
    if (!v14)
    {
      archive_set_error(a1, 12, "No memory", v4, v5, v6, v7, v8, v11);
      return -30;
    }

    __strcpy_chk();
    v14[1] = a3;
    *v14 = -1;
    v14[2] = 0;
    *(v14 + 26) = 0;
    *(v14 + 12) = 0;
    *(v14 + 7) = v13 && *v13;
    if (archive_read_append_callback_data(a1, v14))
    {
      return -30;
    }

    if (!v16)
    {
      break;
    }

    v9 = v16++;
    v13 = *v9;
    v12 = 0;
    if (*v9)
    {
      v12 = *v13 != 0;
    }
  }

  while (v12);
  archive_read_set_open_callback(a1, file_open);
  archive_read_set_read_callback(a1, file_read_0);
  archive_read_set_skip_callback(a1, file_skip_0);
  archive_read_set_close_callback(a1, file_close_0);
  archive_read_set_switch_callback(a1, file_switch);
  archive_read_set_seek_callback(a1, file_seek_0);
  return archive_read_open1(a1);
}

uint64_t file_open(_DWORD *a1, uint64_t a2)
{
  v38 = a1;
  v37 = a2;
  memset(&__b, 0, sizeof(__b));
  v35 = v37;
  v32 = -1;
  v31 = 0;
  archive_clear_error(v38);
  if (*(v35 + 28))
  {
    if (*(v35 + 28) != 1)
    {
      archive_set_error(v38, -1, "Unexpedted operation in archive_read_open_filename", v2, v3, v4, v5, v6, v26);
      goto LABEL_24;
    }

    v33 = (v35 + 32);
    v32 = open((v35 + 32), 0x1000000);
    __archive_ensure_cloexec_flag(v32);
    if ((v32 & 0x80000000) != 0)
    {
      v29 = v38;
      v8 = __error();
      archive_set_error(v29, *v8, "Failed to open '%s'", v9, v10, v11, v12, v13, v33);
      return -30;
    }

    v7 = fstat(v32, &__b);
  }

  else
  {
    v32 = 0;
    v33 = &unk_1BF3442C6;
    v7 = fstat(0, &__b);
  }

  if (v7)
  {
    v28 = v38;
    v14 = __error();
    archive_set_error(v28, *v14, "Can't stat '%s'", v15, v16, v17, v18, v19, v33);
    goto LABEL_24;
  }

  if ((__b.st_mode & 0xF000) == 0x8000)
  {
    archive_read_extract_set_skip_file(v38, __b.st_dev, __b.st_ino);
    v31 = 1;
  }

  if (v31)
  {
    for (i = 0x10000; ; i *= 2)
    {
      v27 = 0;
      if (i < *(v35 + 8))
      {
        v27 = i < 0x4000000;
      }

      if (!v27)
      {
        break;
      }
    }

    *(v35 + 8) = i;
  }

  v34 = malloc_type_malloc(*(v35 + 8), 0x6C480703uLL);
  if (!v34)
  {
    archive_set_error(v38, 12, "No memory", v20, v21, v22, v23, v24, v26);
LABEL_24:
    if (v32 != -1 && v32)
    {
      close(v32);
    }

    return -30;
  }

  *(v35 + 16) = v34;
  *v35 = v32;
  *(v35 + 24) = __b.st_mode;
  if (v31)
  {
    *(v35 + 26) = 1;
  }

  return 0;
}

ssize_t file_read_0(_DWORD *a1, uint64_t a2, void *a3)
{
  *a3 = *(a2 + 16);
  while (1)
  {
    v23 = read(*a2, *(a2 + 16), *(a2 + 8));
    if ((v23 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      if (*(a2 + 28))
      {
        if (*(a2 + 28) == 1)
        {
          v9 = __error();
          archive_set_error(a1, *v9, "Error reading '%s'", v10, v11, v12, v13, v14, a2 + 32);
        }

        else
        {
          v15 = __error();
          archive_set_error(a1, *v15, "Error reading '%S'", v16, v17, v18, v19, v20, a2 + 32);
        }
      }

      else
      {
        v3 = __error();
        archive_set_error(a1, *v3, "Error reading stdin", v4, v5, v6, v7, v8, v22);
      }

      return v23;
    }
  }

  return v23;
}

uint64_t file_skip_0(_DWORD *a1, uint64_t a2, off_t a3)
{
  if (*(a2 + 26))
  {
    return file_skip_lseek(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t file_close_0(uint64_t a1, void *a2)
{
  file_close2(a1, a2);
  free(a2);
  return 0;
}

uint64_t file_seek_0(_DWORD *a1, int *a2, off_t a3, int a4)
{
  v24 = lseek(*a2, a3, a4);
  if ((v24 & 0x8000000000000000) == 0)
  {
    return v24;
  }

  if (a2[7])
  {
    if (a2[7] == 1)
    {
      v10 = __error();
      archive_set_error(a1, *v10, "Error seeking in '%s'", v11, v12, v13, v14, v15, (a2 + 8));
    }

    else
    {
      v16 = __error();
      archive_set_error(a1, *v16, "Error seeking in '%S'", v17, v18, v19, v20, v21, (a2 + 8));
    }
  }

  else
  {
    v4 = __error();
    archive_set_error(a1, *v4, "Error seeking in stdin", v5, v6, v7, v8, v9, v23);
  }

  return -30;
}

uint64_t archive_read_open_filename_w(_DWORD *a1, __int32 *a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v5[1] = 0;
  open_filenames_w = archive_read_open_filenames_w(a1, v5, a3);
  *MEMORY[0x1E69E9840];
  return open_filenames_w;
}

uint64_t archive_read_open_filenames_w(_DWORD *a1, __int32 **a2, uint64_t a3)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = 0;
  v28 = 0;
  if (a2)
  {
    v3 = v31++;
    v28 = *v3;
  }

  archive_clear_error(v32);
  while (1)
  {
    if (!v28)
    {
      v28 = &unk_1BF33B724;
    }

    v4 = wcslen(v28);
    v29 = malloc_type_calloc(1uLL, 4 * v4 + 40, 0x1080040C3949B75uLL);
    if (!v29)
    {
      archive_set_error(v32, 12, "No memory", v5, v6, v7, v8, v9, v24);
      return -30;
    }

    v29[1] = v30;
    *v29 = -1;
    if (v28)
    {
      if (*v28)
      {
        break;
      }
    }

    *(v29 + 7) = 0;
LABEL_17:
    if (archive_read_append_callback_data(v32, v29))
    {
      return -30;
    }

    if (v31)
    {
      v22 = v31++;
      v28 = *v22;
      v25 = 0;
      if (v28)
      {
        v25 = *v28 != 0;
      }

      if (v25)
      {
        continue;
      }
    }

    archive_read_set_open_callback(v32, file_open);
    archive_read_set_read_callback(v32, file_read_0);
    archive_read_set_skip_callback(v32, file_skip_0);
    archive_read_set_close_callback(v32, file_close_0);
    archive_read_set_switch_callback(v32, file_switch);
    archive_read_set_seek_callback(v32, file_seek_0);
    return archive_read_open1(v32);
  }

  memset(v27, 0, sizeof(v27));
  v10 = wcslen(v28);
  if (!archive_string_append_from_wcs(v27, v28, v10))
  {
    *(v29 + 7) = 1;
    __strcpy_chk();
    archive_string_free(v27);
    goto LABEL_17;
  }

  if (*__error() == 12)
  {
    v26 = v32;
    v16 = __error();
    archive_set_error(v26, *v16, "Can't allocate memory", v17, v18, v19, v20, v21, v24);
  }

  else
  {
    archive_set_error(v32, 22, "Failed to convert a wide-character filename to a multi-byte filename", v11, v12, v13, v14, v15, v24);
  }

  archive_string_free(v27);
  free(v29);
  return -30;
}

uint64_t file_skip_lseek(_DWORD *a1, uint64_t a2, off_t a3)
{
  v25 = lseek(*a2, 0, 1);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v24 = lseek(*a2, a3, 1);
    if ((v24 & 0x8000000000000000) == 0)
    {
      return v24 - v25;
    }
  }

  *(a2 + 26) = 0;
  if (*__error() == 29)
  {
    return 0;
  }

  if (*(a2 + 28))
  {
    if (*(a2 + 28) == 1)
    {
      v9 = __error();
      archive_set_error(a1, *v9, "Error seeking in '%s'", v10, v11, v12, v13, v14, a2 + 32);
    }

    else
    {
      v15 = __error();
      archive_set_error(a1, *v15, "Error seeking in '%S'", v16, v17, v18, v19, v20, a2 + 32);
    }
  }

  else
  {
    v3 = __error();
    archive_set_error(a1, *v3, "Error seeking in stdin", v4, v5, v6, v7, v8, v22);
  }

  return -1;
}

uint64_t file_close2(uint64_t a1, uint64_t a2)
{
  if ((*a2 & 0x80000000) == 0)
  {
    if ((*(a2 + 24) & 0xF000) != 0x8000 && (*(a2 + 24) & 0xF000) != 0x2000 && (*(a2 + 24) & 0xF000) != 0x6000)
    {
        ;
      }
    }

    if (*(a2 + 28))
    {
      close(*a2);
    }
  }

  free(*(a2 + 16));
  *(a2 + 16) = 0;
  *a2 = -1;
  return 0;
}

uint64_t __archive_cmdline_parse(void **a1, char *a2)
{
  v12 = a1;
  v11 = a2;
  __s = 0;
  v9 = 0;
  v10 = 0;
  argument = get_argument(&__s, a2);
  if (argument < 0)
  {
    v4 = -25;
  }

  else if (v9)
  {
    v4 = cmdline_set_path(v12, __s);
    if (!v4)
    {
      v7 = strrchr(__s, 47);
      v2 = v7 ? cmdline_add_arg(v12, v7 + 1) : cmdline_add_arg(v12, __s);
      v4 = v2;
      if (!v2)
      {
        v11 += argument;
        while (1)
        {
          v6 = get_argument(&__s, v11);
          if (v6 < 0)
          {
            v4 = -25;
            goto LABEL_19;
          }

          if (!v6)
          {
            break;
          }

          v11 += v6;
          if (!v9 && !*v11)
          {
            break;
          }

          v4 = cmdline_add_arg(v12, __s);
          if (v4)
          {
            goto LABEL_19;
          }
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = -25;
  }

LABEL_19:
  archive_string_free(&__s);
  return v4;
}

uint64_t get_argument(uint64_t *a1, char *a2)
{
  v6 = a2;
  a1[1] = 0;
  while (1)
  {
    v4 = 0;
    if (*v6)
    {
      v4 = *v6 == 32;
    }

    if (!v4)
    {
      break;
    }

    ++v6;
  }

  while (1)
  {
    v3 = 0;
    if (*v6)
    {
      v3 = *v6 != 32;
    }

    if (!v3)
    {
      break;
    }

    if (*v6 == 92)
    {
      if (!v6[1])
      {
        return ++v6 - a2;
      }

      archive_strappend_char(a1, v6[1]);
      v6 += 2;
    }

    else if (*v6 == 34)
    {
      quotation = extract_quotation(a1, v6);
      if (quotation < 0)
      {
        return -25;
      }

      v6 += quotation;
    }

    else
    {
      archive_strappend_char(a1, *v6++);
    }
  }

  return v6 - a2;
}

uint64_t cmdline_set_path(void **a1, const char *a2)
{
  ptr = *a1;
  v2 = strlen(a2);
  v6 = malloc_type_realloc(ptr, v2 + 1, 0x481F1DD0uLL);
  if (v6)
  {
    *a1 = v6;
    v3 = *a1;
    __strcpy_chk();
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t cmdline_add_arg(uint64_t a1, const char *a2)
{
  if (*a1)
  {
    v5 = malloc_type_realloc(*(a1 + 8), 8 * (*(a1 + 16) + 2), 0x10040436913F5uLL);
    if (v5)
    {
      *(a1 + 8) = v5;
      *(*(a1 + 8) + 8 * *(a1 + 16)) = strdup(a2);
      if (*(*(a1 + 8) + 8 * *(a1 + 16)))
      {
        v2 = *(a1 + 8);
        v3 = *(a1 + 16) + 1;
        *(a1 + 16) = v3;
        *(v2 + 8 * v3) = 0;
        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return -25;
  }
}

uint64_t __archive_cmdline_free(void **a1)
{
  if (a1)
  {
    free(*a1);
    if (a1[1])
    {
      for (i = 0; *(a1[1] + i); ++i)
      {
        free(*(a1[1] + i));
      }

      free(a1[1]);
    }

    free(a1);
  }

  return 0;
}

uint64_t extract_quotation(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + 1);
  while (*v3)
  {
    if (*v3 == 92)
    {
      if (v3[1])
      {
        archive_strappend_char(a1, v3[1]);
        v3 += 2;
      }

      else
      {
        ++v3;
      }
    }

    else
    {
      if (*v3 == 34)
      {
        break;
      }

      archive_strappend_char(a1, *v3++);
    }
  }

  if (*v3 == 34)
  {
    return &v3[-a2 + 1];
  }

  else
  {
    return -25;
  }
}

uint64_t memory_read_seek(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      a2[1] += a3;
    }

    else
    {
      if (a4 != 2)
      {
        return -30;
      }

      a2[1] = a2[2] + a3;
    }
  }

  else
  {
    a2[1] = *a2 + a3;
  }

  if (a2[1] >= *a2)
  {
    if (a2[1] > a2[2])
    {
      a2[1] = a2[2];
      return -25;
    }

    else
    {
      return a2[1] - *a2;
    }
  }

  else
  {
    a2[1] = *a2;
    return -25;
  }
}

uint64_t memory_read_skip(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  if (a3 > a2[2] - a2[1])
  {
    v5 = a2[2] - a2[1];
  }

  v3 = v5 / a2[3] * a2[3];
  a2[1] += v3;
  return v3;
}

uint64_t archive_read_support_filter_bzip2(int *a1)
{
  if (archive_allow_entitlement_filter("bzip2"))
  {
    if (__archive_read_register_bidder(a1, 0, "bzip2", bzip2_bidder_vtable))
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlements", v1, v2, v3, v4, v5, v7);
    return -30;
  }
}

uint64_t bzip2_reader_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  __s1 = 0;
  v9 = 0;
  __s1 = __archive_read_filter_ahead(a2, 0xEuLL, &v9, a4, a5, a6, a7, a8);
  if (__s1)
  {
    if (!memcmp(__s1, "BZh", 3uLL))
    {
      if (*(__s1 + 3) >= 0x31u && *(__s1 + 3) <= 0x39u)
      {
        if (!memcmp(__s1 + 4, "1AY&SY", 6uLL) || !memcmp(__s1 + 4, "\x17rE8P\x90", 6uLL))
        {
          return 77;
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

  else
  {
    return 0;
  }
}

uint64_t bzip2_reader_init(uint64_t a1)
{
  *(a1 + 56) = 2;
  *(a1 + 48) = "bzip2";
  v7 = malloc_type_calloc(1uLL, 0x68uLL, 0x1090040447FF9D5uLL);
  v9 = malloc_type_malloc(0x10000uLL, 0x100004077774924uLL);
  if (v7 && v9)
  {
    *(a1 + 40) = v7;
    v7[11] = 0x10000;
    v7[10] = v9;
    *(a1 + 32) = bzip2_reader_vtable;
    return 0;
  }

  else
  {
    archive_set_error(*(a1 + 24), 12, "Can't allocate data for bzip2 decompression", v1, v2, v3, v4, v5, v7);
    free(v9);
    free(v8);
    return -30;
  }
}

int64_t bzip2_filter_read(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v22 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v21 = *(a1 + 40);
  if (BYTE1(v21[1].total_in_hi32))
  {
    *v22 = 0;
    return 0;
  }

  v21->next_out = v21[1].next_in;
  v21->avail_out = *&v21[1].avail_in;
  while (1)
  {
    if (LOBYTE(v21[1].total_in_hi32))
    {
      goto LABEL_21;
    }

    if (!bzip2_reader_bid(*(v23 + 8), *(v23 + 16), a3, a4, a5, a6, a7, a8))
    {
      BYTE1(v21[1].total_in_hi32) = 1;
      *v22 = v21[1].next_in;
      return v21->next_out - v21[1].next_in;
    }

    v18 = BZ2_bzDecompressInit(v21, 0, 0);
    if (v18 == -3)
    {
      v18 = BZ2_bzDecompressInit(v21, 0, 1);
    }

    if (v18)
    {
      break;
    }

    LOBYTE(v21[1].total_in_hi32) = 1;
LABEL_21:
    v19 = __archive_read_filter_ahead(*(v23 + 16), 1uLL, &v18, a4, a5, a6, a7, a8);
    if (!v19)
    {
      archive_set_error(*(v23 + 24), -1, "truncated bzip2 input", v9, v10, v11, v12, v13, v15);
      return -30;
    }

    v21->next_in = v19;
    v21->avail_in = v18;
    if (!v18)
    {
      BYTE1(v21[1].total_in_hi32) = 1;
      *v22 = v21[1].next_in;
      return v21->next_out - v21[1].next_in;
    }

    v18 = BZ2_bzDecompress(v21);
    __archive_read_filter_consume(*(v23 + 16), &v21->next_in[-v19]);
    if (v18)
    {
      if (v18 != 4)
      {
        archive_set_error(*(v23 + 24), -1, "bzip decompression failed", a4, a5, a6, a7, a8, v15);
        return -30;
      }

      if (BZ2_bzDecompressEnd(v21))
      {
        archive_set_error(*(v23 + 24), -1, "Failed to clean up decompressor", a4, a5, a6, a7, a8, v15);
        return -30;
      }

      LOBYTE(v21[1].total_in_hi32) = 0;
    }

    if (!v21->avail_out)
    {
      *v22 = v21[1].next_in;
      return v21->next_out - v21[1].next_in;
    }
  }

  v17 = 0;
  v16 = -1;
  switch(v18)
  {
    case -9:
      v17 = "mis-compiled library";
      break;
    case -3:
      v16 = 12;
      v17 = "out of memory";
      break;
    case -2:
      v17 = "invalid setup parameter";
      break;
  }

  if (v17)
  {
    v8 = ": ";
  }

  else
  {
    v8 = &unk_1BF3442C6;
  }

  archive_set_error(*(v23 + 24), v16, "Internal error initializing decompressor%s%s", a4, a5, a6, a7, a8, v8);
  return -30;
}

uint64_t bzip2_filter_close(uint64_t a1)
{
  v8 = 0;
  strm = *(a1 + 40);
  if (LOBYTE(strm[1].total_in_hi32))
  {
    if (BZ2_bzDecompressEnd(strm))
    {
      archive_set_error(*(a1 + 24), -1, "Failed to clean up decompressor", v1, v2, v3, v4, v5, v7);
      v8 = -30;
    }

    LOBYTE(strm[1].total_in_hi32) = 0;
  }

  free(strm[1].next_in);
  free(strm);
  return v8;
}

uint64_t archive_read_format_ar_read_header(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v13 = a2;
  v12 = **(a1 + 2072);
  v11 = 0;
  if (!*(v12 + 48))
  {
    __archive_read_consume(v14, 8uLL);
    *(v12 + 48) = 1;
    *(v14 + 16) = 458752;
  }

  ahead = __archive_read_ahead(v14, 0x3CuLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    v11 = 60;
    v9 = _ar_read_header(v14, v13, v12, ahead, &v11);
    if (v11)
    {
      __archive_read_consume(v14, v11);
    }

    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_ar_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = 0;
  v22 = **(a1 + 2072);
  if (v22[1])
  {
    __archive_read_consume(v27, v22[1]);
    v22[1] = 0;
  }

  if (*v22 <= 0)
  {
    consume = __archive_read_consume(v27, v22[3]);
    if ((consume & 0x8000000000000000) == 0)
    {
      v22[3] -= consume;
    }

    if (v22[3])
    {
      if ((consume & 0x8000000000000000) == 0)
      {
        archive_set_error(v27, -1, "Truncated ar archive - failed consuming padding", v14, v15, v16, v17, v18, consume);
      }

      return -30;
    }

    else
    {
      *v26 = 0;
      *v25 = 0;
      *v24 = v22[2];
      return 1;
    }
  }

  else
  {
    v8 = __archive_read_ahead(v27, 1uLL, &v23, a4, a5, a6, a7, a8);
    *v26 = v8;
    if (v23)
    {
      if (v23 < 0)
      {
        return -30;
      }

      else
      {
        if (v23 > *v22)
        {
          v23 = *v22;
        }

        *v25 = v23;
        v22[1] = v23;
        *v24 = v22[2];
        v22[2] += v23;
        *v22 -= v23;
        return 0;
      }
    }

    else
    {
      archive_set_error(v27, -1, "Truncated ar archive", v9, v10, v11, v12, v13, v20);
      return -30;
    }
  }
}

uint64_t archive_read_format_ar_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (__archive_read_consume(a1, *v2 + v2[3] + v2[1]) < 0)
  {
    return -30;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v2[3] = 0;
    return 0;
  }
}

uint64_t _ar_read_header(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v76 = *MEMORY[0x1E69E9840];
  {
    __strncpy_chk();
    v75[1] = 0;
    if (*(a1 + 16) == 458752)
    {
      if (!strncmp(&__s1, "#1/", 3uLL))
      {
        *(a1 + 16) = 458754;
      }

      else if (strchr(&__s1, 47))
      {
        *(a1 + 16) = 458753;
      }

      else if (!strncmp(&__s1, "__.SYMDEF", 9uLL))
      {
        *(a1 + 16) = 458754;
      }
    }

    if (*(a1 + 16) == 458753)
    {
      *(a1 + 24) = "ar (GNU/SVR4)";
    }

    else if (*(a1 + 16) == 458754)
    {
      *(a1 + 24) = "ar (BSD)";
    }

    else
    {
      *(a1 + 24) = "ar";
    }

    for (i = v75; ; --i)
    {
      v59 = 0;
      if (i >= &__s1)
      {
        v59 = *i == 32;
      }

      if (!v59)
      {
        break;
      }

      *i = 0;
    }

    if (__s1 != 47 && i > &__s1 && *i == 47)
    {
      *i = 0;
    }

    if (i >= &__s1)
    {
      if (!strcmp(&__s1, "//"))
      {
        ar_parse_common_header(a3, a2, a4);
        archive_entry_copy_pathname(a2, &__s1);
        archive_entry_set_filetype(a2, 0x8000);
        v64 = ar_atol10((a4 + 48), 10);
        if (v64 <= 0x40000000)
        {
          if (v64)
          {
            if (a3[4])
            {
              archive_set_error(a1, 22, "More than one string table exists", v15, v16, v17, v18, v19, v58);
              v72 = -30;
            }

            else
            {
              v61 = malloc_type_malloc(v64, 0xB70E0F89uLL);
              if (v61)
              {
                a3[4] = v61;
                a3[5] = v64;
                if (*a5)
                {
                  __archive_read_consume(a1, *a5);
                  *a5 = 0;
                }

                if (__archive_read_ahead(a1, v64, 0, v20, v21, v22, v23, v24))
                {
                  __memcpy_chk();
                  __archive_read_consume(a1, v64);
                  *a3 = 0;
                  archive_entry_set_size(a2, *a3);
                  v72 = ar_parse_gnu_filename_table(a1, v25, v26, v27, v28, v29, v30, v31);
                }

                else
                {
                  v72 = -30;
                }
              }

              else
              {
                archive_set_error(a1, 12, "Can't allocate filename table buffer", v20, v21, v22, v23, v24, v58);
                v72 = -30;
              }
            }
          }

          else
          {
            archive_set_error(a1, 22, "Invalid string table", v15, v16, v17, v18, v19, v58);
            v72 = -30;
          }
        }

        else
        {
          archive_set_error(a1, -1, "Filename table too large", v15, v16, v17, v18, v19, v58);
          v72 = -30;
        }
      }

      else if (__s1 == 47 && v74 >= 48 && v74 <= 57)
      {
        v65 = ar_atol10((a4 + 1), 15);
        if (a3[4] && v65 < a3[5])
        {
          archive_entry_copy_pathname(a2, (a3[4] + v65));
          v72 = ar_parse_common_header(a3, a2, a4);
        }

        else
        {
          archive_set_error(a1, 22, "Can't find long filename for GNU/SVR4 archive entry", v32, v33, v34, v35, v36, v58);
          archive_entry_copy_pathname(a2, &__s1);
          ar_parse_common_header(a3, a2, a4);
          v72 = -30;
        }
      }

      else if (!strncmp(&__s1, "#1/", 3uLL))
      {
        ar_parse_common_header(a3, a2, a4);
        v66 = ar_atol10((a4 + 3), 13);
        if (v66 <= 0x100000 && v66 <= *a3)
        {
          *a3 -= v66;
          archive_entry_set_size(a2, *a3);
          if (*a5)
          {
            __archive_read_consume(a1, *a5);
            *a5 = 0;
          }

          if (__archive_read_ahead(a1, v66, 0, v42, v43, v44, v45, v46))
          {
            v63 = malloc_type_malloc(v66 + 1, 0x100004077774924uLL);
            if (v63)
            {
              __strncpy_chk();
              v63[v66] = 0;
              __archive_read_consume(a1, v66);
              archive_entry_copy_pathname(a2, v63);
              free(v63);
              v72 = 0;
            }

            else
            {
              archive_set_error(a1, 12, "Can't allocate fname buffer", v52, v53, v54, v55, v56, v58);
              v72 = -30;
            }
          }

          else
          {
            archive_set_error(a1, -1, "Truncated input file", v47, v48, v49, v50, v51, v58);
            v72 = -30;
          }
        }

        else
        {
          archive_set_error(a1, -1, "Bad input file size", v37, v38, v39, v40, v41, v58);
          v72 = -30;
        }
      }

      else if (!strcmp(&__s1, "/") || !strcmp(&__s1, "/SYM64/"))
      {
        archive_entry_copy_pathname(a2, &__s1);
        v60 = ar_parse_common_header(a3, a2, a4);
        archive_entry_set_filetype(a2, 0x8000);
        v72 = v60;
      }

      else
      {
        strcmp(&__s1, "__.SYMDEF");
        archive_entry_copy_pathname(a2, &__s1);
        v72 = ar_parse_common_header(a3, a2, a4);
      }
    }

    else
    {
      archive_set_error(a1, -1, "Found entry with empty filename", v10, v11, v12, v13, v14, v58);
      v72 = -30;
    }
  }

  else
  {
    archive_set_error(a1, 22, "Incorrect file header signature", v5, v6, v7, v8, v9, v58);
    v72 = -30;
  }

  *MEMORY[0x1E69E9840];
  return v72;
}

uint64_t ar_parse_common_header(unint64_t *a1, uint64_t a2, _BYTE *a3)
{
  archive_entry_set_filetype(a2, 0x8000);
  v3 = ar_atol10(a3 + 16, 12);
  archive_entry_set_mtime(a2, v3, 0);
  v4 = ar_atol10(a3 + 28, 6);
  archive_entry_set_uid(a2, v4);
  v5 = ar_atol10(a3 + 34, 6);
  archive_entry_set_gid(a2, v5);
  v6 = ar_atol8(a3 + 40, 8);
  archive_entry_set_mode(a2, v6);
  v8 = ar_atol10(a3 + 48, 10);
  a1[2] = 0;
  a1[3] = v8 % 2;
  archive_entry_set_size(a2, v8);
  *a1 = v8;
  return 0;
}

uint64_t ar_atol10(_BYTE *a1, int a2)
{
  while (1)
  {
    if (*a1 == 32 || (v6 = 0, *a1 == 9))
    {
      v2 = a2--;
      v6 = v2 != 0;
    }

    if (!v6)
    {
      break;
    }

    ++a1;
  }

  v8 = 0;
  for (i = *a1 - 48; ; i = *a1 - 48)
  {
    v5 = 0;
    if (*a1 >= 48)
    {
      v5 = 0;
      if (i < 0xA)
      {
        v3 = a2--;
        v5 = v3 != 0;
      }
    }

    if (!v5)
    {
      break;
    }

    if (v8 > 0x1999999999999999 || v8 == 0x1999999999999999 && i > 5uLL)
    {
      return -1;
    }

    v8 = 10 * v8 + i;
    ++a1;
  }

  return v8;
}

uint64_t ar_parse_gnu_filename_table(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = **(a1 + 2072);
  v11 = *(v13 + 40);
  for (i = *(v13 + 32); i < *(v13 + 32) + v11 - 1; ++i)
  {
    if (*i == 47)
    {
      v8 = i++;
      *v8 = 0;
      if (*i != 10)
      {
        goto LABEL_11;
      }

      *i = 0;
    }
  }

  if (i == (*(v13 + 32) + v11) || *i == 10 || *i == 96)
  {
    *(*(v13 + 32) + v11 - 1) = 0;
    return 0;
  }

LABEL_11:
  archive_set_error(a1, 22, "Invalid string table", a4, a5, a6, a7, a8, v10);
  free(*(v13 + 32));
  *(v13 + 32) = 0;
  return -30;
}

uint64_t ar_atol8(_BYTE *a1, int a2)
{
  while (1)
  {
    if (*a1 == 32 || (v6 = 0, *a1 == 9))
    {
      v2 = a2--;
      v6 = v2 != 0;
    }

    if (!v6)
    {
      break;
    }

    ++a1;
  }

  v8 = 0;
  for (i = *a1 - 48; ; i = *a1 - 48)
  {
    v5 = 0;
    if (*a1 >= 48)
    {
      v5 = 0;
      if (i < 8)
      {
        v3 = a2--;
        v5 = v3 != 0;
      }
    }

    if (!v5)
    {
      break;
    }

    if (v8 > 0x1FFFFFFFFFFFFFFFLL || v8 == 0x1FFFFFFFFFFFFFFFLL && i > 7uLL)
    {
      return -1;
    }

    v8 = 8 * v8 + i;
    ++a1;
  }

  return v8;
}

uint64_t archive_read_support_filter_zstd(int *a1)
{
  if (archive_allow_entitlement_filter("zstd"))
  {
    if (__archive_read_register_bidder(a1, 0, "zstd", zstd_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external zstd program for zstd decompression", v6, v7, v8, v9, v10, v12);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t zstd_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v11 = __archive_read_filter_ahead(a2, 4uLL, &v10, a4, a5, a6, a7, a8);
  if (v11)
  {
    v9 = archive_le32dec_4(v11);
    if (v9 == -47205080)
    {
      return 32;
    }

    else if ((v9 & 0xFFFFFFF0) == 0x184D2A50)
    {
      return 32;
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

uint64_t zstd_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "zstd -d -qq");
  *(a1 + 56) = 14;
  *(a1 + 48) = "zstd";
  return result;
}

uint64_t __archive_create_child(char *a1, int *a2, int *a3, pid_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = -1;
  v9 = 0;
  v8 = 0;
  v5 = __archive_cmdline_allocate();
  if (!v5 || __archive_cmdline_parse(v5, v14) || pipe(v17) == -1)
  {
    goto LABEL_26;
  }

  if (v17[0] == 1)
  {
    v9 = dup(1);
    if (v9 == -1)
    {
LABEL_25:
      close(v17[0]);
      close(v17[1]);
LABEL_26:
      __archive_cmdline_free(v5);
      v15 = -25;
      goto LABEL_27;
    }

    close(v17[0]);
    v17[0] = v9;
  }

  if (pipe(v16) == -1)
  {
    goto LABEL_25;
  }

  if (!v16[1])
  {
    v9 = dup(0);
    if (v9 == -1)
    {
LABEL_24:
      close(v16[0]);
      close(v16[1]);
      goto LABEL_25;
    }

    close(v16[1]);
    v16[1] = v9;
  }

  v6 = posix_spawn_file_actions_init(&v8);
  if (v6)
  {
    *__error() = v6;
    goto LABEL_24;
  }

  v7 = posix_spawn_file_actions_addclose(&v8, v17[1]);
  if (v7 || (v7 = posix_spawn_file_actions_addclose(&v8, v16[0])) != 0 || (v7 = posix_spawn_file_actions_adddup2(&v8, v17[0], 0)) != 0 || v17[0] && (v7 = posix_spawn_file_actions_addclose(&v8, v17[0])) != 0 || (v7 = posix_spawn_file_actions_adddup2(&v8, v16[1], 1)) != 0 || v16[1] != 1 && (v7 = posix_spawn_file_actions_addclose(&v8, v16[1])) != 0 || (v7 = posix_spawnp(&v10, *v5, &v8, 0, *(v5 + 1), 0)) != 0)
  {
    *__error() = v7;
    posix_spawn_file_actions_destroy(&v8);
    goto LABEL_24;
  }

  posix_spawn_file_actions_destroy(&v8);
  close(v17[0]);
  close(v16[1]);
  *v13 = v17[1];
  fcntl(*v13, 4, 4);
  *v12 = v16[0];
  fcntl(*v12, 4, 4);
  __archive_cmdline_free(v5);
  *v11 = v10;
  v15 = 0;
LABEL_27:
  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __archive_check_child(int a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if (a1 != -1)
  {
    v4[0].fd = a1;
    v4[0].events = 4;
    v3 = 1;
  }

  if (a2 != -1)
  {
    v4[v3].fd = a2;
    v4[v3++].events = 1;
  }

  result = poll(v4, v3, -1);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t archive_read_add_passphrase(int *a1, const char *a2)
{
  *&v8[4] = __archive_check_magic(a1, 14594245, 1, "archive_read_add_passphrase");
  if (*&v8[4] == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    passphrase = new_read_passphrase(a1, a2);
    if (passphrase)
    {
      add_passphrase_to_tail(a1, passphrase);
      return 0;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Empty passphrase is unacceptable", v2, v3, v4, v5, v6, *v8);
    return -25;
  }
}

void *new_read_passphrase(_DWORD *a1, const char *a2)
{
  v13 = malloc_type_malloc(0x10uLL, 0x30040EEE2E2AFuLL);
  if (v13)
  {
    *v13 = strdup(a2);
    if (*v13)
    {
      return v13;
    }

    else
    {
      free(v13);
      archive_set_error(a1, 12, "Can't allocate memory", v7, v8, v9, v10, v11, v13);
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory", v2, v3, v4, v5, v6, 0);
    return 0;
  }
}

uint64_t add_passphrase_to_tail(uint64_t result, uint64_t a2)
{
  **(result + 2104) = a2;
  *(result + 2104) = a2 + 8;
  *(a2 + 8) = 0;
  return result;
}

uint64_t archive_read_set_passphrase_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_set_passphrase_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 2120) = a3;
    *(a1 + 2128) = a2;
    return 0;
  }
}

const char *__archive_read_next_passphrase(uint64_t a1)
{
  if ((*(a1 + 2112) & 0x80000000) != 0)
  {
    v4 = 0;
    for (i = *(a1 + 2096); i; i = *(i + 8))
    {
      ++v4;
    }

    *(a1 + 2112) = v4;
    v7 = *(a1 + 2096);
  }

  else if (*(a1 + 2112) <= 1)
  {
    if (*(a1 + 2112) == 1)
    {
      *(a1 + 2112) = 0;
      if (*(*(a1 + 2096) + 8))
      {
        v2 = remove_passphrases_from_head(a1);
        add_passphrase_to_tail(a1, v2);
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    --*(a1 + 2112);
    v1 = remove_passphrases_from_head(a1);
    add_passphrase_to_tail(a1, v1);
    v7 = *(a1 + 2096);
  }

  if (v7)
  {
    return *v7;
  }

  if (!*(a1 + 2120))
  {
    return 0;
  }

  v5 = (*(a1 + 2120))(a1, *(a1 + 2128));
  if (!v5)
  {
    return v5;
  }

  passphrase = new_read_passphrase(a1, v5);
  if (passphrase)
  {
    insert_passphrase_to_head(a1, passphrase);
    *(a1 + 2112) = 1;
    return v5;
  }

  return 0;
}

uint64_t remove_passphrases_from_head(uint64_t a1)
{
  v2 = *(a1 + 2096);
  if (v2)
  {
    *(a1 + 2096) = *(v2 + 8);
  }

  return v2;
}

uint64_t insert_passphrase_to_head(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = *(result + 2096);
  *(result + 2096) = a2;
  if (result + 2096 == *(result + 2104))
  {
    *(result + 2104) = a2 + 8;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t archive_read_format_cpio_options(uint64_t a1, const char *a2, const char *a3)
{
  HIDWORD(v9) = -25;
  v11 = **(a1 + 2072);
  if (!strcmp(a2, "compat-2x"))
  {
    *(v11 + 72) = a3 != 0;
    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v11 + 56) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v11 + 56))
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
      archive_set_error(a1, -1, "cpio: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v9);
    }

    return v10;
  }

  else if (!strcmp(a2, "pwb"))
  {
    if (a3 && *a3)
    {
      *(v11 + 76) = 1;
    }

    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_cpio_read_header(uint64_t a1, _DWORD *a2)
{
  v46 = a1;
  v45 = a2;
  v44 = 0;
  ahead = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v44 = **(a1 + 2072);
  v41 = *(v44 + 56);
  if (!v41)
  {
    if (!*(v44 + 72))
    {
      *(v44 + 64) = archive_string_default_conversion_for_read();
      *(v44 + 72) = 1;
    }

    v41 = *(v44 + 64);
  }

  v38 = (*(v44 + 8))(v46, v44, v45, &v40, &v39);
  if (v38 >= -20)
  {
    ahead = __archive_read_ahead(v46, v40 + v39, 0, v2, v3, v4, v5, v6);
    if (ahead)
    {
      if (_archive_entry_copy_pathname_l(v45, ahead, v40, v41))
      {
        if (*__error() == 12)
        {
          archive_set_error(v46, 12, "Can't allocate memory for Pathname", v7, v8, v9, v10, v11, v35);
          return -30;
        }

        v37 = v46;
        v12 = archive_string_conversion_charset_name(v41);
        archive_set_error(v37, 79, "Pathname can't be converted from %s to current locale.", v13, v14, v15, v16, v17, v12);
        v38 = -20;
      }

      *(v44 + 40) = 0;
      __archive_read_consume(v46, v40 + v39);
      if (archive_entry_filetype(v45) == 40960)
      {
        if (*(v44 + 24) > 0x100000)
        {
          archive_set_error(v46, 12, "Rejecting malformed cpio archive: symlink contents exceed 1 megabyte", v18, v19, v20, v21, v22, v35);
          return -30;
        }

        v42 = __archive_read_ahead(v46, *(v44 + 24), 0, v18, v19, v20, v21, v22);
        if (!v42)
        {
          return -30;
        }

        if (_archive_entry_copy_symlink_l(v45, v42, *(v44 + 24), v41))
        {
          if (*__error() == 12)
          {
            archive_set_error(v46, 12, "Can't allocate memory for Linkname", v23, v24, v25, v26, v27, v35);
            return -30;
          }

          v36 = v46;
          v28 = archive_string_conversion_charset_name(v41);
          archive_set_error(v36, 79, "Linkname can't be converted from %s to current locale.", v29, v30, v31, v32, v33, v28);
          v38 = -20;
        }

        __archive_read_consume(v46, *(v44 + 24));
        *(v44 + 24) = 0;
      }

      if (v40 == 11 && !strncmp(ahead, "TRAILER!!!", 0xAuLL))
      {
        archive_clear_error(v46);
        return 1;
      }

      else if (record_hardlink(v46, v44, v45))
      {
        return -30;
      }

      else
      {
        return v38;
      }
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return v38;
  }
}

uint64_t archive_read_format_cpio_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = 0;
  v11 = **(a1 + 2072);
  if (v11[4])
  {
    __archive_read_consume(v16, v11[4]);
    v11[4] = 0;
  }

  if (v11[3] <= 0)
  {
    v10 = v11[6];
    if (v10 == __archive_read_consume(v16, v10))
    {
      v11[6] = 0;
      *v15 = 0;
      *v14 = 0;
      *v13 = v11[5];
      return 1;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    v8 = __archive_read_ahead(v16, 1uLL, &v12, a4, a5, a6, a7, a8);
    *v15 = v8;
    if (v12 > 0)
    {
      if (v12 > v11[3])
      {
        v12 = v11[3];
      }

      *v14 = v12;
      v11[4] = v12;
      *v13 = v11[5];
      v11[5] += v12;
      v11[3] -= v12;
      return 0;
    }

    else
    {
      return -30;
    }
  }
}

uint64_t archive_read_format_cpio_skip(uint64_t a1)
{
  v3 = **(a1 + 2072);
  v2 = v3[3] + v3[6] + v3[4];
  if (v2 == __archive_read_consume(a1, v2))
  {
    v3[3] = 0;
    v3[6] = 0;
    v3[4] = 0;
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t header_odc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 65537;
  *(a1 + 24) = "POSIX octet-oriented cpio";
  *v23 = find_odc_header(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*v23 >= -20)
  {
    if (*(a1 + 16) == 65542)
    {
      v22 = header_afiol(a1, a2, a3, a4, a5, v10, v11, v12);
      if (v22)
      {
        return v22;
      }

      else
      {
        return *v23;
      }
    }

    else
    {
      *&v23[4] = __archive_read_ahead(a1, 0x4CuLL, 0, v8, v9, v10, v11, v12);
      if (*&v23[4])
      {
        v13 = atol8_1((*&v23[4] + 6), 6);
        archive_entry_set_dev(a3, v13);
        v14 = atol8_1((*&v23[4] + 12), 6);
        archive_entry_set_ino(a3, v14);
        v15 = atol8_1((*&v23[4] + 18), 6);
        archive_entry_set_mode(a3, v15);
        v16 = atol8_1((*&v23[4] + 24), 6);
        archive_entry_set_uid(a3, v16);
        v17 = atol8_1((*&v23[4] + 30), 6);
        archive_entry_set_gid(a3, v17);
        v18 = atol8_1((*&v23[4] + 36), 6);
        archive_entry_set_nlink(a3, v18);
        v19 = atol8_1((*&v23[4] + 42), 6);
        archive_entry_set_rdev(a3, v19);
        v20 = atol8_1((*&v23[4] + 48), 11);
        archive_entry_set_mtime(a3, v20, 0);
        *a4 = atol8_1((*&v23[4] + 59), 6);
        *a5 = 0;
        *(a2 + 24) = atol8_1((*&v23[4] + 65), 11);
        archive_entry_set_size(a3, *(a2 + 24));
        *(a2 + 48) = 0;
        __archive_read_consume(a1, 0x4CuLL);
        return *v23;
      }

      else
      {
        return -30;
      }
    }
  }

  else
  {
    return *v23;
  }
}

uint64_t header_newc(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  newc_header = find_newc_header(a1, a2, a3, a4, a5, a6, a7, a8);
  if (newc_header < -20)
  {
    return newc_header;
  }

  else
  {
    ahead = __archive_read_ahead(a1, 0x6EuLL, 0, v8, v9, v10, v11, v12);
    v32 = ahead;
    if (ahead)
    {
      if (!memcmp(ahead, "070701", 6uLL))
      {
        *(a1 + 16) = 65540;
        *(a1 + 24) = "ASCII cpio (SVR4 with no CRC)";
      }

      else if (!memcmp(v32, "070702", 6uLL))
      {
        *(a1 + 16) = 65541;
        *(a1 + 24) = "ASCII cpio (SVR4 with CRC)";
      }

      v14 = atol16(v32 + 62, 8);
      archive_entry_set_devmajor(a3, v14);
      v15 = atol16(v32 + 70, 8);
      archive_entry_set_devminor(a3, v15);
      v16 = atol16(v32 + 6, 8);
      archive_entry_set_ino(a3, v16);
      v17 = atol16(v32 + 14, 8);
      archive_entry_set_mode(a3, v17);
      v18 = atol16(v32 + 22, 8);
      archive_entry_set_uid(a3, v18);
      v19 = atol16(v32 + 30, 8);
      archive_entry_set_gid(a3, v19);
      v20 = atol16(v32 + 38, 8);
      archive_entry_set_nlink(a3, v20);
      v21 = atol16(v32 + 78, 8);
      archive_entry_set_rdevmajor(a3, v21);
      v22 = atol16(v32 + 86, 8);
      archive_entry_set_rdevminor(a3, v22);
      v23 = atol16(v32 + 46, 8);
      archive_entry_set_mtime(a3, v23, 0);
      *a4 = atol16(v32 + 94, 8);
      *a5 = (2 - *a4) & 3;
      if (*a5 > (-1 - *a4))
      {
        archive_set_error(a1, 79, "cpio archive has invalid namelength", v24, v25, v26, v27, v28, v30);
        return -30;
      }

      else
      {
        *(a2 + 24) = atol16(v32 + 54, 8);
        archive_entry_set_size(a3, *(a2 + 24));
        *(a2 + 48) = -*(a2 + 24) & 3;
        __archive_read_consume(a1, 0x6EuLL);
        return newc_header;
      }
    }

    else
    {
      return -30;
    }
  }
}

uint64_t header_bin_be(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 65539;
  *(a1 + 24) = "cpio (big-endian binary)";
  ahead = __archive_read_ahead(a1, 0x1AuLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    v18 = ahead;
    archive_entry_set_dev(a3, ahead[3] + (ahead[2] << 8));
    archive_entry_set_ino(a3, v18[5] + (v18[4] << 8));
    archive_entry_set_mode(a3, v18[7] + (v18[6] << 8));
    if (*(a2 + 76))
    {
      v13 = archive_entry_mode(a3);
      archive_entry_set_mode(a3, v13 & 0x6FFF);
      if ((archive_entry_mode(a3) & 0xF000) == 0)
      {
        v14 = archive_entry_mode(a3);
        archive_entry_set_mode(a3, v14 | 0x8000);
      }
    }

    archive_entry_set_uid(a3, ahead[9] + (ahead[8] << 8));
    archive_entry_set_gid(a3, ahead[11] + (ahead[10] << 8));
    archive_entry_set_nlink(a3, ahead[13] + (ahead[12] << 8));
    archive_entry_set_rdev(a3, ahead[15] + (ahead[14] << 8));
    v15 = be4(ahead + 16);
    archive_entry_set_mtime(a3, v15, 0);
    *a4 = ahead[21] + (ahead[20] << 8);
    *a5 = *a4 & 1;
    *(a2 + 24) = be4(ahead + 22);
    archive_entry_set_size(a3, *(a2 + 24));
    *(a2 + 48) = *(a2 + 24) & 1;
    __archive_read_consume(a1, 0x1AuLL);
    return 0;
  }

  else
  {
    archive_set_error(a1, 0, "End of file trying to read next cpio header", v8, v9, v10, v11, v12, v17);
    return -30;
  }
}

uint64_t header_bin_le(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 65538;
  *(a1 + 24) = "cpio (little-endian binary)";
  ahead = __archive_read_ahead(a1, 0x1AuLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    v18 = ahead;
    archive_entry_set_dev(a3, ahead[2] + (ahead[3] << 8));
    archive_entry_set_ino(a3, v18[4] + (v18[5] << 8));
    archive_entry_set_mode(a3, v18[6] + (v18[7] << 8));
    if (*(a2 + 76))
    {
      v13 = archive_entry_mode(a3);
      archive_entry_set_mode(a3, v13 & 0x6FFF);
      if ((archive_entry_mode(a3) & 0xF000) == 0)
      {
        v14 = archive_entry_mode(a3);
        archive_entry_set_mode(a3, v14 | 0x8000);
      }
    }

    archive_entry_set_uid(a3, ahead[8] + (ahead[9] << 8));
    archive_entry_set_gid(a3, ahead[10] + (ahead[11] << 8));
    archive_entry_set_nlink(a3, ahead[12] + (ahead[13] << 8));
    archive_entry_set_rdev(a3, ahead[14] + (ahead[15] << 8));
    v15 = le4(ahead + 16);
    archive_entry_set_mtime(a3, v15, 0);
    *a4 = ahead[20] + (ahead[21] << 8);
    *a5 = *a4 & 1;
    *(a2 + 24) = le4(ahead + 22);
    archive_entry_set_size(a3, *(a2 + 24));
    *(a2 + 48) = *(a2 + 24) & 1;
    __archive_read_consume(a1, 0x1AuLL);
    return 0;
  }

  else
  {
    archive_set_error(a1, 0, "End of file trying to read next cpio header", v8, v9, v10, v11, v12, v17);
    return -30;
  }
}

uint64_t find_odc_header(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
LABEL_2:
  v20 = __archive_read_ahead(v21, 0x4CuLL, &v15, a4, a5, a6, a7, a8);
  if (v20)
  {
    v19 = v20;
    v18 = &v20[v15];
    if (!memcmp("070707", v20, 6uLL) && is_octal(v19, 76))
    {
      return 0;
    }

    else if (!memcmp("070727", v19, 6uLL) && is_afio_large(v19, v15))
    {
      v21[4] = 65542;
      return 0;
    }

    else
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v19 + 76 > v18)
            {
              v17 = v19 - v20;
              __archive_read_consume(v21, v19 - v20);
              v16 += v17;
              goto LABEL_2;
            }

            v14 = v19[5];
            if (v14 != 48)
            {
              break;
            }

            ++v19;
          }

          if (v14 == 55)
          {
            break;
          }

          v19 += 6;
        }

        if (!memcmp("070707", v19, 6uLL) && is_octal(v19, 76) || !memcmp("070727", v19, 6uLL) && is_afio_large(v19, v18 - v19))
        {
          break;
        }

        v19 += 2;
      }

      v17 = v19 - v20;
      __archive_read_consume(v21, v19 - v20);
      v16 += v17;
      if (v19[4] == 50)
      {
        v21[4] = 65542;
      }

      if (v16)
      {
        archive_set_error(v21, 0, "Skipped %d bytes before finding valid header", v8, v9, v10, v11, v12, v16);
        return -20;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -30;
  }
}

uint64_t header_afiol(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 65542;
  *(a1 + 24) = "afio large ASCII";
  ahead = __archive_read_ahead(a1, 0x74uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    v8 = atol16(ahead + 6, 8);
    archive_entry_set_dev(a3, v8);
    v28 = atol16(ahead + 14, 16);
    if (v28 < 0)
    {
      archive_set_error(a1, 0, "Nonsensical ino value", v9, v10, v11, v12, v13, v26);
      return -30;
    }

    else
    {
      archive_entry_set_ino(a3, v28);
      v14 = atol8_1(ahead + 31, 6);
      archive_entry_set_mode(a3, v14);
      v15 = atol16(ahead + 37, 8);
      archive_entry_set_uid(a3, v15);
      v16 = atol16(ahead + 45, 8);
      archive_entry_set_gid(a3, v16);
      v17 = atol16(ahead + 53, 8);
      archive_entry_set_nlink(a3, v17);
      v18 = atol16(ahead + 61, 8);
      archive_entry_set_rdev(a3, v18);
      v19 = atol16(ahead + 69, 16);
      archive_entry_set_mtime(a3, v19, 0);
      *a4 = atol16(ahead + 86, 4);
      *a5 = 0;
      v29 = atol16(ahead + 99, 16);
      if (v29 < 0)
      {
        archive_set_error(a1, 0, "Nonsensical file size", v20, v21, v22, v23, v24, a3);
        return -30;
      }

      else
      {
        *(a2 + 24) = v29;
        archive_entry_set_size(a3, *(a2 + 24));
        *(a2 + 48) = 0;
        __archive_read_consume(a1, 0x74uLL);
        return 0;
      }
    }
  }

  else
  {
    return -30;
  }
}

uint64_t atol8_1(char *a1, int a2)
{
  for (i = 0; a2--; i = (8 * i) | v4)
  {
    if (*a1 < 48 || *a1 > 55)
    {
      return i;
    }

    v4 = *a1++ - 48;
  }

  return i;
}

uint64_t is_octal(char *a1, uint64_t a2)
{
  while (a2--)
  {
    if (*a1 < 48 || *a1 > 55)
    {
      return 0;
    }

    ++a1;
  }

  return 1;
}

BOOL is_afio_large(char *a1, unint64_t a2)
{
  if (a2 >= 0x74)
  {
    if (a1[30] == 109 && a1[85] == 110 && a1[98] == 115 && a1[115] == 58)
    {
      if (is_hex(a1 + 6, 24))
      {
        if (is_hex(a1 + 31, 54))
        {
          return is_hex(a1 + 86, 12) && is_hex(a1 + 99, 16) != 0;
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

  else
  {
    return 0;
  }
}

uint64_t is_hex(char *a1, uint64_t a2)
{
  while (a2--)
  {
    if ((*a1 < 48 || *a1 > 57) && (*a1 < 97 || *a1 > 102) && (*a1 < 65 || *a1 > 70))
    {
      return 0;
    }

    ++a1;
  }

  return 1;
}

uint64_t atol16(char *a1, int a2)
{
  for (i = 0; a2--; i = (16 * i) | v4)
  {
    if (*a1 < 97 || *a1 > 102)
    {
      if (*a1 < 65 || *a1 > 70)
      {
        if (*a1 < 48 || *a1 > 57)
        {
          return i;
        }

        v4 = *a1 - 48;
      }

      else
      {
        v4 = *a1 - 55;
      }
    }

    else
    {
      v4 = *a1 - 87;
    }

    ++a1;
  }

  return i;
}

uint64_t find_newc_header(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
LABEL_2:
  v20 = __archive_read_ahead(v21, 0x6EuLL, &v15, a4, a5, a6, a7, a8);
  if (v20)
  {
    v19 = v20;
    v18 = &v20[v15];
    if (!memcmp("07070", v20, 5uLL) && (v19[5] == 49 || v19[5] == 50) && is_hex(v19, 110))
    {
      return 0;
    }

    else
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v19 + 110 > v18)
            {
              v17 = v19 - v20;
              __archive_read_consume(v21, v19 - v20);
              v16 += v17;
              goto LABEL_2;
            }

            v14 = v19[5];
            if (v14 != 48)
            {
              break;
            }

            ++v19;
          }

          if (v14 == 50 || v14 == 49)
          {
            break;
          }

          v19 += 6;
        }

        if (!memcmp("07070", v19, 5uLL) && is_hex(v19, 110))
        {
          break;
        }

        v19 += 2;
      }

      v17 = v19 - v20;
      __archive_read_consume(v21, v19 - v20);
      v16 += v17;
      if (v16)
      {
        archive_set_error(v21, 0, "Skipped %d bytes before finding valid header", v8, v9, v10, v11, v12, v16);
        return -20;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -30;
  }
}

uint64_t record_hardlink(_DWORD *a1, uint64_t a2, _DWORD *a3)
{
  if (archive_entry_nlink(a3) > 1)
  {
    v13 = archive_entry_dev(a3);
    v12 = archive_entry_ino64(a3);
    for (i = *(a2 + 16); i; i = *i)
    {
      if (*(i + 5) == v13 && *(i + 3) == v12)
      {
        archive_entry_copy_hardlink(a3, *(i + 4));
        v3 = *(i + 4) - 1;
        *(i + 4) = v3;
        if (!v3)
        {
          if (*(i + 1))
          {
            **(i + 1) = *i;
          }

          if (*i)
          {
            *(*i + 8) = *(i + 1);
          }

          if (*(a2 + 16) == i)
          {
            *(a2 + 16) = *i;
          }

          free(*(i + 4));
          free(i);
        }

        return 0;
      }
    }

    v15 = malloc_type_malloc(0x28uLL, 0x103004008A1EE6AuLL);
    if (!v15)
    {
      goto LABEL_18;
    }

    if (*(a2 + 16))
    {
      *(*(a2 + 16) + 8) = v15;
    }

    *v15 = *(a2 + 16);
    v15[1] = 0;
    *(a2 + 16) = v15;
    *(v15 + 5) = v13;
    v15[3] = v12;
    *(v15 + 4) = archive_entry_nlink(a3) - 1;
    v9 = archive_entry_pathname(a3);
    v15[4] = strdup(v9);
    if (v15[4])
    {
      return 0;
    }

    else
    {
LABEL_18:
      archive_set_error(a1, 12, "Out of memory adding file to list", v4, v5, v6, v7, v8, v11);
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t Ppmd8_Construct(uint64_t a1)
{
  *(a1 + 56) = 0;
  v8 = 0;
  v6 = 0;
  while (v8 < 0x26)
  {
    if (v8 >= 0xC)
    {
      v3 = 4;
    }

    else
    {
      v3 = (v8 >> 2) + 1;
    }

    v4 = v3;
    do
    {
      v1 = v6++;
      *(a1 + 166 + v1) = v8;
      --v4;
    }

    while (v4);
    *(a1 + 128 + v8++) = v6;
  }

  *(a1 + 600) = 0;
  *(a1 + 601) = 2;
  __memset_chk();
  result = __memset_chk();
  for (i = 0; i < 5; ++i)
  {
    *(a1 + 856 + i) = i;
  }

  v5 = i;
  v7 = 1;
  while (i < 0x104)
  {
    *(a1 + 856 + i) = v5;
    if (!--v7)
    {
      v7 = ++v5 - 4;
    }

    ++i;
  }

  return result;
}

void Ppmd8_Free(uint64_t a1)
{
  free(*(a1 + 56));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t Ppmd8_Alloc(uint64_t a1, int a2)
{
  if (*(a1 + 56) && *(a1 + 48) == a2)
  {
    return 1;
  }

  Ppmd8_Free(a1);
  *(a1 + 96) = 4 - (a2 & 3);
  v2 = malloc_type_malloc((*(a1 + 96) + a2), 0x100004077774924uLL);
  *(a1 + 56) = v2;
  if (v2)
  {
    *(a1 + 48) = a2;
    return 1;
  }

  return 0;
}

uint64_t Ppmd8_Init(uint64_t a1, int a2, int a3)
{
  *(a1 + 36) = a2;
  *(a1 + 100) = a3;
  result = RestartModel(a1);
  *(a1 + 1118) = 7;
  *(a1 + 1116) = 0;
  *(a1 + 1119) = 64;
  return result;
}

uint64_t RestartModel(uint64_t *a1)
{
  __memset_chk();
  result = __memset_chk();
  a1[10] = a1[7] + *(a1 + 24);
  a1[9] = a1[10] + *(a1 + 12);
  v2 = a1[9] - 84 * (*(a1 + 12) / 8u / 0xC);
  a1[11] = v2;
  a1[8] = v2;
  *(a1 + 13) = 0;
  *(a1 + 6) = *(a1 + 9);
  if (*(a1 + 9) >= 0xCu)
  {
    v6 = 12;
  }

  else
  {
    v6 = *(a1 + 9);
  }

  v3 = -v6 - 1;
  *(a1 + 11) = v3;
  *(a1 + 10) = v3;
  *(a1 + 8) = 0;
  v4 = a1[9] - 12;
  a1[9] = v4;
  a1[1] = v4;
  *a1 = v4;
  *(*a1 + 8) = 0;
  **a1 = -1;
  *(*a1 + 1) = 0;
  *(*a1 + 2) = 257;
  a1[2] = a1[8];
  a1[8] += 1536;
  *(*a1 + 4) = a1[2] - a1[7];
  for (i = 0; i < 0x100; ++i)
  {
    v8 = (a1[2] + 6 * i);
    *v8 = i;
    v8[1] = 1;
    result = SetSuccessor(v8, 0);
  }

  v10 = 0;
  v15 = 0;
  while (v10 < 0x19)
  {
    while (*(a1 + v15 + 856) == v10)
    {
      ++v15;
    }

    for (j = 0; j < 8; ++j)
    {
      v7 = 0x4000 - kInitBinEsc[j] / (v15 + 1);
      for (k = 0; k < 0x40; k += 8)
      {
        *(&a1[16 * v10 + 524] + j + k) = v7;
      }
    }

    ++v10;
  }

  v11 = 0;
  v16 = 0;
  while (v11 < 0x18)
  {
    while (*(a1 + (v16 + 3) + 856) == v11 + 3)
    {
      ++v16;
    }

    for (m = 0; m < 0x20; ++m)
    {
      v5 = &a1[16 * v11 + 140] + 4 * m;
      *(v5 + 2) = 3;
      *v5 = 8 * (2 * v16 + 5);
      *(v5 + 3) = 7;
    }

    ++v11;
  }

  return result;
}

unsigned __int16 *Ppmd8_MakeEscFreq(unsigned __int8 **a1, int a2, int *a3)
{
  if (**a1 == 255)
  {
    v6 = a1 + 558;
    *a3 = 1;
  }

  else
  {
    v6 = &(&a1[16 * (*(a1 + **a1 + 858) - 3) + 140])[2 * **a1 < a1[7][*(*a1 + 2)] + a2] + 2 * (*(*a1 + 1) > 11 * (**a1 + 1)) + 2 * (*a1)[1];
    v5 = *v6 >> *(v6 + 2);
    *v6 -= v5;
    v3 = v5;
    if (!v5)
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return v6;
}

unsigned __int8 **Ppmd8_Update1(unsigned __int8 **a1)
{
  v2 = a1[2];
  v2[1] += 4;
  *(*a1 + 1) += 4;
  if (v2[1] > *(v2 - 5))
  {
    SwapStates(v2, (v2 - 6));
    v3 = v2 - 6;
    a1[2] = v3;
    if (v3[1] > 0x7Cu)
    {
      Rescale(a1);
    }
  }

  return NextContext(a1);
}

int *SwapStates(int *result, int *a2)
{
  v2 = *result;
  v3 = *(result + 2);
  *result = *a2;
  *(result + 2) = *(a2 + 2);
  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

unsigned __int8 **Rescale(unsigned __int8 **result)
{
  v22 = result;
  v16 = &v22[7][*(*v22 + 1)];
  v14 = result[2];
  v12 = *v14;
  v13 = *(v14 + 2);
  while (v14 != v16)
  {
    *v14 = *(v14 - 6);
    *(v14 + 2) = *(v14 - 1);
    v14 -= 6;
  }

  *v14 = v12;
  *(v14 + 2) = v13;
  v17 = *(*result + 1) - v14[1];
  v14[1] += 4;
  v19 = *(result + 6) != 0;
  v14[1] = (v14[1] + v19) >> 1;
  v18 = v14[1];
  v20 = **result;
  do
  {
    v1 = v14;
    v14 += 6;
    v17 -= v1[7];
    v14[1] = (v14[1] + v19) >> 1;
    v18 += v14[1];
    if (v14[1] > *(v14 - 5))
    {
      v11 = v14;
      v9 = *v14;
      v10 = *(v14 + 2);
      do
      {
        *v11 = *(v11 - 6);
        *(v11 + 2) = *(v11 - 1);
        v11 -= 6;
        v4 = 0;
        if (v11 != v16)
        {
          v4 = BYTE1(v9) > *(v11 - 5);
        }
      }

      while (v4);
      *v11 = v9;
      *(v11 + 2) = v10;
    }

    --v20;
  }

  while (v20);
  if (v14[1])
  {
    goto LABEL_23;
  }

  v8 = **result;
  do
  {
    ++v20;
    v2 = v14;
    v14 -= 6;
  }

  while (!*(v2 - 5));
  v17 += v20;
  **result -= v20;
  if (**result)
  {
    v7 = (**result + 2) >> 1;
    if ((v8 + 2) >> 1 != v7)
    {
      result = ShrinkUnits(result, v16, (v8 + 2) >> 1, v7);
      *(*v22 + 1) = result - v22[7];
    }

    (*v22)[1] &= ~8u;
    v15 = &v22[7][*(*v22 + 1)];
    (*v22)[1] |= 8 * (*v15 >= 0x40u);
    v21 = **v22;
    do
    {
      v15 += 6;
      (*v22)[1] |= 8 * (*v15 >= 0x40u);
      --v21;
    }

    while (v21);
LABEL_23:
    *(*v22 + 1) = v18 + v17 - (v17 >> 1);
    (*v22)[1] |= 4u;
    v22[2] = &v22[7][*(*v22 + 1)];
    return result;
  }

  v5 = *v16;
  v6 = *(v16 + 2);
  BYTE1(v5) = (2 * BYTE1(*v16) + v17 - 1) / v17;
  if (BYTE1(v5) > 0x29u)
  {
    BYTE1(v5) = 41;
  }

  result = InsertNode(result, v16, *(result + ((v8 + 2) >> 1) + 165));
  (*v22)[1] = ((*v22)[1] & 0x10) + 8 * (v5 >= 0x40u);
  v3 = *v22;
  v22[2] = *v22 + 2;
  *(v3 + 2) = v5;
  *(v3 + 3) = v6;
  return result;
}

unsigned __int8 **NextContext(unsigned __int8 **result)
{
  v2 = result;
  v1 = &result[7][*(result[2] + 1) | (*(result[2] + 2) << 16)];
  if (*(result + 6) || v1 < result[11])
  {
    result = UpdateModel(result);
    *v2 = v2[1];
  }

  else
  {
    result[1] = v1;
    *result = v1;
  }

  return result;
}

unsigned __int8 **Ppmd8_Update1_0(unsigned __int8 **a1)
{
  *(a1 + 8) = 2 * a1[2][1] >= *(*a1 + 1);
  *(a1 + 10) += *(a1 + 8);
  *(*a1 + 1) += 4;
  v1 = a1[2];
  v2 = v1[1] + 4;
  v1[1] = v2;
  if (v2 > 0x7Cu)
  {
    Rescale(a1);
  }

  return NextContext(a1);
}

unsigned __int8 **Ppmd8_UpdateBin(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 1);
  if (v1 < 0xC4u)
  {
    ++v1;
  }

  *(*(a1 + 16) + 1) = v1;
  *(a1 + 32) = 1;
  ++*(a1 + 40);
  return NextContext(a1);
}

unsigned __int8 **Ppmd8_Update2(unsigned __int8 **a1)
{
  *(*a1 + 1) += 4;
  v1 = a1[2];
  v2 = v1[1] + 4;
  v1[1] = v2;
  if (v2 > 0x7Cu)
  {
    Rescale(a1);
  }

  *(a1 + 10) = *(a1 + 11);
  result = UpdateModel(a1);
  *a1 = a1[1];
  return result;
}

unsigned __int8 **UpdateModel(unsigned __int8 **result)
{
  v32 = result;
  v30 = *(result[2] + 1) | (*(result[2] + 2) << 16);
  v25 = result[2][1];
  v24 = *result[2];
  v23 = 0;
  if (v25 < 0x1F && *(*result + 2))
  {
    v28 = &result[7][*(*result + 2)];
    if (*v28)
    {
      v23 = &result[7][*(v28 + 1)];
      if (*v23 != *result[2])
      {
        do
        {
          v23 = (v23 + 6);
        }

        while (*v23 != *result[2]);
        if (*(v23 + 1) >= *(v23 - 5))
        {
          result = SwapStates(v23, (v23 - 6));
          v23 = (v23 - 6);
        }
      }

      if (*(v23 + 1) < 0x73u)
      {
        *(v23 + 1) += 2;
        *(v28 + 1) += 2;
      }
    }

    else
    {
      v23 = (v28 + 2);
      if (v28[3] < 0x20u)
      {
        ++v28[3];
      }
    }
  }

  v29 = v32[1];
  if (!*(v32 + 6) && v30)
  {
    Successors = CreateSuccessors(v32, 1, v23, *v32);
    if (Successors)
    {
      result = SetSuccessor(v32[2], Successors - v32[7]);
      v32[1] = Successors;
    }

    else
    {
      SetSuccessor(v32[2], 0);
      return RestoreModel(v32, v29);
    }

    return result;
  }

  v1 = *v32[2];
  v2 = v32[10];
  v32[10] = v2 + 1;
  *v2 = v1;
  v31 = v32[10] - v32[7];
  if (v32[10] >= v32[11])
  {
    return RestoreModel(v32, v29);
  }

  if (v30)
  {
    if (&v32[7][v30] < v32[11])
    {
      result = CreateSuccessors(v32, 0, v23, *v32);
      if (!result)
      {
        return RestoreModel(v32, v29);
      }

      v30 = result - v32[7];
    }
  }

  else
  {
    result = ReduceOrder(v32, v23, *v32);
    if (!result)
    {
      return RestoreModel(v32, v29);
    }

    v30 = result - v32[7];
  }

  v3 = *(v32 + 6) - 1;
  *(v32 + 6) = v3;
  if (!v3)
  {
    v31 = v30;
    v32[10] -= v32[1] != *v32;
  }

  v26 = **v32;
  v27 = *(*v32 + 1) - v26 - v25;
  while (v29 != *v32)
  {
    v21 = *v29;
    if (*v29)
    {
      if (v21)
      {
        v17 = (v21 + 1) >> 1;
        v16 = *(v32 + v17 + 165);
        if (v16 != *(v32 + v17 + 166))
        {
          v15 = AllocUnits(v32, v16 + 1);
          if (!v15)
          {
            return RestoreModel(v32, v29);
          }

          v14 = &v32[7][*(v29 + 1)];
          v13 = v15;
          v12 = v14;
          v11 = (v21 + 1) >> 1;
          do
          {
            *v13 = *v12;
            v13[1] = *(v12 + 1);
            v13[2] = *(v12 + 2);
            v12 += 12;
            v13 += 3;
            --v11;
          }

          while (v11);
          InsertNode(v32, v14, v16);
          *(v29 + 1) = v15 - v32[7];
        }
      }

      v4 = *(v29 + 1);
      if (3 * v21 + 1 < v26)
      {
        ++v4;
      }

      *(v29 + 1) = v4;
    }

    else
    {
      v10 = AllocUnits(v32, 0);
      if (!v10)
      {
        return RestoreModel(v32, v29);
      }

      *v10 = *(v29 + 2);
      *(v10 + 4) = *(v29 + 3);
      *(v29 + 1) = v10 - v32[7];
      if (*(v10 + 1) < 0x1Eu)
      {
        *(v10 + 1) *= 2;
      }

      else
      {
        *(v10 + 1) = 120;
      }

      v5 = *(v10 + 1) + *(v32 + 7);
      if (v26 > 2)
      {
        LOWORD(v5) = v5 + 1;
      }

      *(v29 + 1) = v5;
    }

    v19 = 2 * v25 * (*(v29 + 1) + 6);
    v18 = v27 + *(v29 + 1);
    if (v19 >= 6 * v18)
    {
      if (v19 <= 9 * v18)
      {
        v7 = 4;
      }

      else
      {
        v7 = 5;
      }

      if (v19 > 12 * v18)
      {
        ++v7;
      }

      if (v19 > 15 * v18)
      {
        ++v7;
      }

      v20 = v7;
      *(v29 + 1) += v7;
    }

    else
    {
      if (v19 <= v18)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (v19 >= 4 * v18)
      {
        ++v6;
      }

      v20 = v6;
      *(v29 + 1) += 4;
    }

    v9 = &v32[7][6 * v21 + 6 + *(v29 + 1)];
    result = SetSuccessor(v9, v31);
    *v9 = v24;
    v9[1] = v20;
    v29[1] |= 8 * (v24 >= 0x40u);
    *v29 = v21 + 1;
    v29 = &v32[7][*(v29 + 2)];
  }

  v8 = &v32[7][v30];
  *v32 = v8;
  v32[1] = v8;
  return result;
}

BOOL Ppmd8_RangeDec_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 104) = -1;
  *(a1 + 108) = 0;
  for (i = 0; i < 4; ++i)
  {
    v2 = *(a1 + 108);
    *(a1 + 108) = (*(*(a1 + 120) + 8))(*(a1 + 120)) | (v2 << 8);
  }

  return *(a1 + 108) != -1;
}

uint64_t Ppmd8_DecodeSymbol(unsigned __int8 **a1)
{
  v33[288] = *MEMORY[0x1E69E9840];
  v31 = a1;
  if (**a1)
  {
    v30 = &v31[7][*(*v31 + 1)];
    v29 = 0;
    Threshold = 0;
    v27 = 0;
    Threshold = RangeDec_GetThreshold(v31, *(*v31 + 1));
    v27 = v30[1];
    if (Threshold >= v27)
    {
      *(v31 + 8) = 0;
      v29 = **v31;
      do
      {
        v1 = v30;
        v30 += 6;
        v27 += v1[7];
        if (v27 > Threshold)
        {
          v25 = 0;
          RangeDec_Decode(v31, v27 - v30[1], v30[1]);
          v31[2] = v30;
          v25 = *v30;
          Ppmd8_Update1(v31);
          v32 = v25;
          goto LABEL_41;
        }

        --v29;
      }

      while (v29);
      if (Threshold < *(*v31 + 1))
      {
        RangeDec_Decode(v31, v27, *(*v31 + 1) - v27);
        for (i = 0; i < 0x20uLL; i += 8)
        {
          v33[i + 256] = -1;
          v33[i + 257] = -1;
          v33[i + 258] = -1;
          v33[i + 259] = -1;
          v33[i + 260] = -1;
          v33[i + 261] = -1;
          v33[i + 262] = -1;
          v33[i + 263] = -1;
        }

        *(&v33[256] + *v30) = 0;
        v29 = **v31;
        do
        {
          v30 -= 6;
          *(&v33[256] + *v30) = 0;
          --v29;
        }

        while (v29);
LABEL_22:
        while (1)
        {
          bzero(v33, 0x200uLL);
          v20 = 0;
          v19 = 0;
          v12 = **v31;
          do
          {
            ++*(v31 + 6);
            if (!*(*v31 + 2))
            {
              v32 = -1;
              goto LABEL_41;
            }

            *v31 = &v31[7][*(*v31 + 2)];
          }

          while (**v31 == v12);
          v16 = 0;
          v20 = &v31[7][*(*v31 + 1)];
          v14 = 0;
          v13 = **v31 - v12;
          do
          {
            v11 = *(&v33[256] + *v20);
            v16 += (v20[1] & v11);
            v5 = v20;
            v20 += 6;
            v33[v14] = v5;
            v14 -= v11;
          }

          while (v14 != v13);
          EscFreq = Ppmd8_MakeEscFreq(v31, v12, &v19);
          v19 += v16;
          v18 = RangeDec_GetThreshold(v31, v19);
          if (v18 < v16)
          {
            break;
          }

          if (v18 >= v19)
          {
            v32 = -2;
            goto LABEL_41;
          }

          RangeDec_Decode(v31, v16, v19 - v16);
          *EscFreq += v19;
          do
          {
            *(&v33[256] + *v33[--v14]) = 0;
          }

          while (v14);
        }

        v9 = v33;
        v17 = 0;
        while (1)
        {
          v17 += (*v9)[1];
          if (v17 > v18)
          {
            break;
          }

          ++v9;
        }

        v20 = *v9;
        RangeDec_Decode(v31, v17 - v20[1], v20[1]);
        if (*(EscFreq + 2) < 7u)
        {
          v6 = *(EscFreq + 3);
          *(EscFreq + 3) = v6 - 1;
          if (v6 == 1)
          {
            *EscFreq *= 2;
            v7 = *(EscFreq + 2);
            *(EscFreq + 2) = v7 + 1;
            *(EscFreq + 3) = 3 << v7;
          }
        }

        v31[2] = v20;
        v10 = *v20;
        Ppmd8_Update2(v31);
        v32 = v10;
      }

      else
      {
        v32 = -2;
      }
    }

    else
    {
      v26 = 0;
      RangeDec_Decode(v31, 0, v30[1]);
      v31[2] = v30;
      v26 = *v30;
      Ppmd8_Update1_0(v31);
      v32 = v26;
    }
  }

  else
  {
    v23 = &v31[16 * *(v31 + (*v31)[3] + 855) + 524] + *(v31 + v31[7][*(*v31 + 2)] + 600) + *(v31 + 8) + (*v31)[1] + ((*(v31 + 10) >> 26) & 0x20u);
    v2 = *(v31 + 27);
    v3 = *(v31 + 26) >> 14;
    *(v31 + 26) = v3;
    if (v2 / v3 >= *v23)
    {
      RangeDec_Decode(v31, *v23, 0x4000 - *v23);
      *v23 -= (*v23 + 32) >> 7;
      *(v31 + 7) = PPMD8_kExpEscape[*v23 >> 10];
      for (j = 0; j < 0x20uLL; j += 8)
      {
        v33[j + 256] = -1;
        v33[j + 257] = -1;
        v33[j + 258] = -1;
        v33[j + 259] = -1;
        v33[j + 260] = -1;
        v33[j + 261] = -1;
        v33[j + 262] = -1;
        v33[j + 263] = -1;
      }

      *(&v33[256] + (*v31)[2]) = 0;
      *(v31 + 8) = 0;
      goto LABEL_22;
    }

    v22 = 0;
    RangeDec_Decode(v31, 0, *v23);
    *v23 = *v23 + 128 - ((*v23 + 32) >> 7);
    v4 = *v31 + 2;
    v31[2] = v4;
    v22 = *v4;
    Ppmd8_UpdateBin(v31);
    v32 = v22;
  }

LABEL_41:
  *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t RangeDec_GetThreshold(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 108);
  v3 = *(a1 + 104) / a2;
  *(a1 + 104) = v3;
  return v2 / v3;
}

uint64_t RangeDec_Decode(uint64_t result, int a2, int a3)
{
  v7 = result;
  v6 = a2 * *(result + 104);
  *(result + 112) += v6;
  *(result + 108) -= v6;
  *(result + 104) *= a3;
  while (1)
  {
    v5 = 1;
    if ((*(v7 + 112) ^ (*(v7 + 112) + *(v7 + 104))) >= 0x1000000)
    {
      v4 = 0;
      if (*(v7 + 104) < 0x8000u)
      {
        *(v7 + 104) = -*(v7 + 112) & 0x7FFF;
        v4 = 1;
      }

      v5 = v4;
    }

    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 = *(v7 + 108);
    result = (*(*(v7 + 120) + 8))(*(v7 + 120));
    *(v7 + 108) = result | (v3 << 8);
    *(v7 + 104) <<= 8;
    *(v7 + 112) <<= 8;
  }

  return result;
}

uint64_t InsertNode(uint64_t result, _DWORD *a2, unsigned int a3)
{
  *a2 = -1;
  a2[1] = *(result + 296 + 4 * a3);
  a2[2] = *(result + 128 + a3);
  *(result + 296 + 4 * a3) = a2 - *(result + 56);
  ++*(result + 448 + 4 * a3);
  return result;
}

_DWORD *ShrinkUnits(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v10 = *(a1 + 166 + (a3 - 1));
  v9 = *(a1 + 166 + (a4 - 1));
  if (v10 == v9)
  {
    return a2;
  }

  if (*(a1 + 296 + 4 * *(a1 + 166 + (a4 - 1))))
  {
    v8 = RemoveNode(a1, v9);
    v7 = v8;
    v6 = a2;
    v5 = a4;
    do
    {
      *v7 = *v6;
      v7[1] = v6[1];
      v7[2] = v6[2];
      v6 += 3;
      v7 += 3;
      --v5;
    }

    while (v5);
    InsertNode(a1, a2, v10);
    return v8;
  }

  else
  {
    SplitBlock(a1, a2, v10, v9);
    return a2;
  }
}

uint64_t RemoveNode(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56) + *(a1 + 296 + 4 * a2);
  *(a1 + 296 + 4 * a2) = *(v3 + 4);
  --*(a1 + 448 + 4 * a2);
  return v3;
}

uint64_t SplitBlock(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a1 + 128 + a3) - *(a1 + 128 + a4);
  v8 = (a2 + 12 * *(a1 + 128 + a4));
  v7 = *(a1 + 166 + (v6 - 1));
  if (*(a1 + 128 + *(a1 + 166 + (v6 - 1))) != v6)
  {
    v5 = *(a1 + 128 + --v7);
    InsertNode(a1, (v8 + (12 * v5)), v6 - v5 - 1);
  }

  return InsertNode(a1, v8, v7);
}

unsigned __int8 *CreateSuccessors(uint64_t a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  __b[17] = *MEMORY[0x1E69E9840];
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v17 = 0;
  v18 = 0;
  v15 = *(*(a1 + 16) + 2) | (*(*(a1 + 16) + 4) << 16);
  memset(__b, 0, 0x88uLL);
  v14 = 0;
  if (!v21)
  {
    v14 = 1;
    __b[0] = *(v22 + 16);
  }

  while (*(v19 + 2))
  {
    v19 = (*(v22 + 56) + *(v19 + 2));
    if (v20)
    {
      i = v20;
      v20 = 0;
    }

    else if (*v19)
    {
        ;
      }

      if (i[1] < 0x73u)
      {
        ++i[1];
        ++*(v19 + 1);
      }
    }

    else
    {
      i = v19 + 2;
      v19[3] += *(*(v22 + 56) + *(v19 + 2)) == 0 && v19[3] < 0x18u;
    }

    v13 = *(i + 1) | (*(i + 2) << 16);
    if (v13 != v15)
    {
      v19 = (*(v22 + 56) + v13);
      if (!v14)
      {
        v23 = v19;
        goto LABEL_35;
      }

      break;
    }

    v4 = v14++;
    __b[v4] = i;
  }

  LOBYTE(v17) = *(*(v22 + 56) + v15);
  SetSuccessor(&v17, v15 + 1);
  v16 = 16 * (**(v22 + 16) >= 0x40u) + 8 * (v17 >= 0x40u);
  if (*v19)
  {
      ;
    }

    v11 = j[1] - 1;
    v10 = *(v19 + 1) - *v19 - v11;
    if (2 * v11 > v10)
    {
      v7 = (v11 + 2 * v10 - 3) / v10;
    }

    else
    {
      LOBYTE(v7) = 5 * v11 > v10;
    }

    BYTE1(v17) = v7 + 1;
  }

  else
  {
    BYTE1(v17) = v19[3];
  }

  do
  {
    if (*(v22 + 72) == *(v22 + 64))
    {
      if (*(v22 + 296))
      {
        v8 = RemoveNode(v22, 0);
      }

      else
      {
        v8 = AllocUnitsRare(v22, 0);
        if (!v8)
        {
          v23 = 0;
          goto LABEL_35;
        }
      }
    }

    else
    {
      v5 = *(v22 + 72) - 12;
      *(v22 + 72) = v5;
      v8 = v5;
    }

    *v8 = 0;
    *(v8 + 1) = v16;
    *(v8 + 2) = v17;
    *(v8 + 6) = v18;
    *(v8 + 8) = v19 - *(v22 + 56);
    SetSuccessor(__b[--v14], v8 - *(v22 + 56));
    v19 = v8;
  }

  while (v14);
  v23 = v19;
LABEL_35:
  *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t RestoreModel(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 80) = *(a1 + 56) + *(a1 + 96);
  for (i = *(a1 + 8); i != a2; i = (*(a1 + 56) + *(i + 2)))
  {
    v2 = (*i)--;
    if (v2 == 1)
    {
      v5 = (*(a1 + 56) + *(i + 1));
      i[1] = (i[1] & 0x10) + 8 * (*v5 >= 0x40u);
      *(i + 2) = *v5;
      *(i + 3) = *(v5 + 2);
      SpecialFreeUnit(a1, v5);
      i[3] = (i[3] + 11) >> 3;
    }

    else
    {
      Refresh(a1, i, (*i + 3) >> 1, 0);
    }
  }

  while (i != *a1)
  {
    if (*i)
    {
      v3 = *(i + 1) + 4;
      *(i + 1) = v3;
      if (4 * *i + 128 < v3)
      {
        Refresh(a1, i, (*i + 2) >> 1, 1);
      }
    }

    else
    {
      i[3] -= i[3] >> 1;
    }

    i = (*(a1 + 56) + *(i + 2));
  }

  if (!*(a1 + 100) || GetUsedMemory(a1) < *(a1 + 48) >> 1)
  {
    return RestartModel(a1);
  }

  while (*(*(a1 + 8) + 8))
  {
    *(a1 + 8) = *(a1 + 56) + *(*(a1 + 8) + 8);
  }

  do
  {
    CutOff(a1, *(a1 + 8), 0);
    ExpandTextArea(a1);
    result = GetUsedMemory(a1);
  }

  while (result > 3 * (*(a1 + 48) >> 2));
  *(a1 + 52) = 0;
  *(a1 + 24) = *(a1 + 36);
  return result;
}

uint64_t ReduceOrder(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v10 = a3;
  v7 = *(a1 + 80) - *(a1 + 56);
  SetSuccessor(*(a1 + 16), v7);
  ++*(a1 + 24);
  while (1)
  {
    if (a2)
    {
      v10 = *(a1 + 56) + *(v10 + 8);
      i = a2;
      a2 = 0;
    }

    else
    {
      if (!*(v10 + 8))
      {
        return v10;
      }

      v10 = *(a1 + 56) + *(v10 + 8);
      if (*v10)
      {
          ;
        }

        if (i[1] < 0x73u)
        {
          i[1] += 2;
          *(v10 + 2) += 2;
        }
      }

      else
      {
        i = (v10 + 2);
        v3 = *(v10 + 3);
        if (v3 < 0x20u)
        {
          ++v3;
        }

        *(v10 + 3) = v3;
      }
    }

    if (*(i + 1) | (*(i + 2) << 16))
    {
      break;
    }

    SetSuccessor(i, v7);
    ++*(a1 + 24);
  }

  if ((*(i + 1) | (*(i + 2) << 16)) <= v7)
  {
    v5 = *(a1 + 16);
    *(a1 + 16) = i;
    Successors = CreateSuccessors(a1, 0, 0, v10);
    if (Successors)
    {
      SetSuccessor(i, Successors - *(a1 + 56));
    }

    else
    {
      SetSuccessor(i, 0);
    }

    *(a1 + 16) = v5;
  }

  if (*(a1 + 24) == 1 && a3 == *(a1 + 8))
  {
    SetSuccessor(*(a1 + 16), *(i + 1) | (*(i + 2) << 16));
    --*(a1 + 80);
  }

  if (*(i + 1) | (*(i + 2) << 16))
  {
    return *(a1 + 56) + (*(i + 1) | (*(i + 2) << 16));
  }

  else
  {
    return 0;
  }
}

uint64_t AllocUnits(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 296 + 4 * a2))
  {
    return RemoveNode(a1, a2);
  }

  v4 = 12 * *(a1 + 128 + a2);
  if (v4 > *(a1 + 72) - *(a1 + 64))
  {
    return AllocUnitsRare(a1, a2);
  }

  v3 = *(a1 + 64);
  *(a1 + 64) = v3 + v4;
  return v3;
}

uint64_t AllocUnitsRare(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 52))
  {
    GlueFreeBlocks(a1);
    if (*(a1 + 296 + 4 * a2))
    {
      return RemoveNode(a1, a2);
    }
  }

  v7 = a2;
  while (++v7 != 38)
  {
    if (*(a1 + 296 + 4 * v7))
    {
      v6 = RemoveNode(a1, v7);
      SplitBlock(a1, v6, v7, a2);
      return v6;
    }
  }

  v5 = 12 * *(a1 + 128 + a2);
  --*(a1 + 52);
  if (*(a1 + 88) - *(a1 + 80) <= v5)
  {
    return 0;
  }

  v2 = *(a1 + 88) - v5;
  *(a1 + 88) = v2;
  return v2;
}

uint64_t GlueFreeBlocks(uint64_t a1)
{
  v11 = a1;
  v10 = 0;
  v9 = &v10;
  *(a1 + 52) = 0x2000;
  result = __memset_chk();
  if (*(v11 + 64) != *(v11 + 72))
  {
    **(v11 + 64) = 0;
  }

  for (i = 0; i < 0x26; ++i)
  {
    v6 = *(v11 + 296 + 4 * i);
    *(v11 + 296 + 4 * i) = 0;
    while (v6)
    {
      v5 = *(v11 + 56) + v6;
      if (*(v5 + 8))
      {
        *v9 = v6;
        v9 = (v5 + 4);
        while (1)
        {
          v4 = (v5 + 12 * *(v5 + 8));
          if (*v4 != -1)
          {
            break;
          }

          *(v5 + 8) += v4[2];
          v4[2] = 0;
        }
      }

      v6 = *(v5 + 4);
    }
  }

  *v9 = 0;
  while (v10)
  {
    v3 = (*(v11 + 56) + v10);
    v10 = v3[1];
    v2 = v3[2];
    if (v2)
    {
      while (v2 > 0x80)
      {
        InsertNode(v11, v3, 0x25u);
        v2 -= 128;
        v3 += 384;
      }

      v8 = *(v11 + 166 + v2 - 1);
      if (*(v11 + 128 + *(v11 + 166 + v2 - 1)) != v2)
      {
        --v8;
        InsertNode(v11, &v3[3 * *(v11 + 128 + v8)], v2 - *(v11 + 128 + v8) - 1);
      }

      result = InsertNode(v11, v3, v8);
    }
  }

  return result;
}

uint64_t SpecialFreeUnit(uint64_t result, _DWORD *a2)
{
  if (a2 != *(result + 88))
  {
    return InsertNode(result, a2, 0);
  }

  *(result + 88) += 12;
  return result;
}

unsigned __int8 *Refresh(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v12 = *a2;
  result = ShrinkUnits(a1, (*(a1 + 56) + *(a2 + 1)), a3, (v12 + 2) >> 1);
  v8 = result;
  *(a2 + 1) = result - *(a1 + 56);
  v9 = (a2[1] & (4 * a4 + 16)) + 8 * (*result >= 0x40u);
  v11 = *(a2 + 1) - result[1];
  v5 = (result[1] + a4) >> a4;
  result[1] = v5;
  v10 = v5;
  do
  {
    v6 = v8;
    v8 += 6;
    v11 -= v6[7];
    v7 = (v8[1] + a4) >> a4;
    v8[1] = v7;
    v10 += v7;
    v9 |= 8 * (*v8 >= 0x40u);
    --v12;
  }

  while (v12);
  *(a2 + 1) = v10 + ((v11 + a4) >> a4);
  a2[1] = v9;
  return result;
}

uint64_t GetUsedMemory(uint64_t a1)
{
  v3 = 0;
  for (i = 0; i < 0x26; ++i)
  {
    v3 += *(a1 + 448 + 4 * i) * *(a1 + 128 + i);
  }

  return *(a1 + 48) - (*(a1 + 72) - *(a1 + 64)) - (*(a1 + 88) - *(a1 + 80)) - 12 * v3;
}

uint64_t CutOff(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (*a2)
  {
    v11 = (*a2 + 2) >> 1;
    *(a2 + 1) = MoveUnitsUp(a1, (*(a1 + 56) + *(a2 + 1)), v11) - *(a1 + 56);
    v12 = *a2;
    for (i = *(a1 + 56) + *(a2 + 1) + 6 * *a2; i >= *(a1 + 56) + *(a2 + 1); i -= 6)
    {
      if (*(a1 + 56) + (*(i + 2) | (*(i + 4) << 16)) >= *(a1 + 88))
      {
        if (a3 >= *(a1 + 36))
        {
          SetSuccessor(i, 0);
        }

        else
        {
          v5 = CutOff(a1, *(a1 + 56) + (*(i + 2) | (*(i + 4) << 16)), a3 + 1);
          SetSuccessor(i, v5);
        }
      }

      else
      {
        v4 = v12--;
        v7 = (*(a1 + 56) + *(a2 + 1) + 6 * v4);
        SetSuccessor(i, 0);
        SwapStates(i, v7);
      }
    }

    if (v12 != *a2 && a3)
    {
      *a2 = v12;
      v10 = (*(a1 + 56) + *(a2 + 1));
      if (v12 < 0)
      {
        FreeUnits(a1, v10, v11);
        SpecialFreeUnit(a1, a2);
        return 0;
      }

      if (v12)
      {
        Refresh(a1, a2, v11, *(a2 + 1) > 16 * v12);
      }

      else
      {
        a2[1] = (a2[1] & 0x10) + 8 * (*v10 >= 0x40u);
        *(a2 + 2) = *v10;
        *(a2 + 3) = *(v10 + 2);
        FreeUnits(a1, v10, v11);
        a2[3] = (a2[3] + 11) >> 3;
      }
    }

    return (a2 - *(a1 + 56));
  }

  v8 = (a2 + 2);
  if (*(a1 + 56) + (*(a2 + 2) | (*(a2 + 3) << 16)) < *(a1 + 88))
  {
    goto LABEL_9;
  }

  if (a3 >= *(a1 + 36))
  {
    SetSuccessor(v8, 0);
  }

  else
  {
    v3 = CutOff(a1, *(a1 + 56) + (*(a2 + 2) | (*(a2 + 3) << 16)), a3 + 1);
    SetSuccessor(v8, v3);
  }

  if (*(v8 + 2) | (*(v8 + 4) << 16) || a3 <= 9)
  {
    return (a2 - *(a1 + 56));
  }

  else
  {
LABEL_9:
    SpecialFreeUnit(a1, a2);
    return 0;
  }
}

void *ExpandTextArea(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = memset(__b, 0, sizeof(__b));
  if (*(a1 + 64) != *(a1 + 72))
  {
    **(a1 + 64) = 0;
  }

  for (i = *(a1 + 88); *i == -1; i += 3 * i[2])
  {
    *i = 0;
    v2 = *(a1 + 166 + (i[2] - 1));
    ++__b[v2];
  }

  *(a1 + 88) = i;
  for (j = 0; j < 0x26; ++j)
  {
    v5 = (a1 + 296 + 4 * j);
    while (__b[j])
    {
      v4 = (*(a1 + 56) + *v5);
      do
      {
        if (*v4)
        {
          break;
        }

        *v5 = v4[1];
        v4 = (*(a1 + 56) + *v5);
        --*(a1 + 448 + 4 * j);
        v3 = __b[j] - 1;
        __b[j] = v3;
      }

      while (v3);
      v5 = v4 + 1;
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *MoveUnitsUp(uint64_t a1, _DWORD *a2, int a3)
{
  v8 = *(a1 + 166 + (a3 - 1));
  if (a2 > *(a1 + 88) + 0x4000 || a2 - *(a1 + 56) > *(a1 + 296 + 4 * *(a1 + 166 + (a3 - 1))))
  {
    return a2;
  }

  v7 = RemoveNode(a1, v8);
  v6 = v7;
  v5 = a2;
  v4 = a3;
  do
  {
    *v6 = *v5;
    v6[1] = v5[1];
    v6[2] = v5[2];
    v5 += 3;
    v6 += 3;
    --v4;
  }

  while (v4);
  if (a2 == *(a1 + 88))
  {
    *(a1 + 88) += 12 * *(a1 + 128 + v8);
  }

  else
  {
    InsertNode(a1, a2, v8);
  }

  return v7;
}

uint64_t archive_read_support_format_by_code(int *a1, int a2)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_by_code") == -30)
  {
    return -30;
  }

  else
  {
    HIDWORD(v8) = a2 & 0xFF0000;
    if ((a2 & 0xFF0000) == 0x10000)
    {
      return archive_read_support_format_cpio(a1);
    }

    else
    {
      switch(HIDWORD(v8))
      {
        case 0x30000:
          return archive_read_support_format_tar(a1);
        case 0x40000:
          return archive_read_support_format_iso9660(a1);
        case 0x50000:
          return archive_read_support_format_zip(a1);
        case 0x60000:
          return archive_read_support_format_empty(a1);
        case 0x70000:
          return archive_read_support_format_ar(a1);
        case 0x80000:
          return archive_read_support_format_mtree(a1);
        case 0x90000:
          return archive_read_support_format_raw(a1);
        case 0xA0000:
          return archive_read_support_format_xar(a1);
        case 0xB0000:
          return archive_read_support_format_lha(a1);
        case 0xC0000:
          return archive_read_support_format_cab(a1);
        case 0xD0000:
          return archive_read_support_format_rar(a1);
        case 0xE0000:
          return archive_read_support_format_7zip(a1);
        case 0xF0000:
          return archive_read_support_format_warc(a1);
        case 0x100000:
          return archive_read_support_format_rar5(a1);
        default:
          archive_set_error(a1, 22, "Invalid format code specified", v2, v3, v4, v5, v6, v8);
          return -30;
      }
    }
  }
}

uint64_t archive_read_format_empty_read_header(uint64_t a1)
{
  *(a1 + 16) = 393216;
  *(a1 + 24) = "Empty file";
  return 1;
}

uint64_t archive_read_format_iso9660_options(uint64_t a1, const char *a2, const char *a3)
{
  v4 = **(a1 + 2072);
  if (!strcmp(a2, "joliet"))
  {
    *(v4 + 4) = a3 && strcmp(a3, "off") && strcmp(a3, "ignore") && strcmp(a3, "disable") && strcmp(a3, "0");
    return 0;
  }

  else if (!strcmp(a2, "rockridge") || !strcmp(a2, "Rockridge"))
  {
    *(v4 + 8) = a3 != 0;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_iso9660_read_header(uint64_t a1, _DWORD *a2)
{
  v70 = a1;
  v69 = a2;
  v68 = 0;
  v67 = 0;
  v64 = 0;
  v68 = **(a1 + 2072);
  if (!*(a1 + 16))
  {
    v70[4] = 0x40000;
    *(v70 + 3) = "ISO9660";
  }

  if (!*(v68 + 160))
  {
    v65 = choose_volume(v70, v68);
    if (v65)
    {
      return v65;
    }
  }

  v67 = 0;
  entry_seek = next_entry_seek(v70, v68, &v67);
  if (entry_seek)
  {
    return entry_seek;
  }

  if (*(v68 + 42))
  {
    if (!*(v68 + 488))
    {
      v2 = archive_string_conversion_from_charset(v70, "UTF-16BE", 1);
      *(v68 + 488) = v2;
      if (!*(v68 + 488))
      {
        return -30;
      }
    }

    if (!*(v68 + 496) && (v3 = malloc_type_malloc(0x400uLL, 0xA9224449uLL), (*(v68 + 496) = v3) == 0) || !*(v68 + 512) && (v9 = malloc_type_malloc(0x400uLL, 0xA0CFAC19uLL), (*(v68 + 512) = v9) == 0))
    {
      archive_set_error(v70, 12, "No memory", v4, v5, v6, v7, v8, v52);
      return -30;
    }

    *(v68 + 504) = 0;
    if (build_pathname_utf16be(*(v68 + 496), 0x400uLL, (v68 + 504), v67))
    {
LABEL_18:
      archive_set_error(v70, 79, "Pathname is too long", v10, v11, v12, v13, v14, v52);
      return -30;
    }

    if (_archive_entry_copy_pathname_l(v69, *(v68 + 496), *(v68 + 504), *(v68 + 488)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v70, 12, "No memory for Pathname", v15, v16, v17, v18, v19, v52);
        return -30;
      }

      v60 = v70;
      v20 = archive_string_conversion_charset_name(*(v68 + 488));
      archive_set_error(v60, 79, "Pathname cannot be converted from %s to current locale.", v21, v22, v23, v24, v25, v20);
      v64 = -20;
    }
  }

  else
  {
    v63 = build_pathname((v68 + 16), v67, 0);
    if (!v63)
    {
      goto LABEL_18;
    }

    *(v68 + 24) = 0;
    archive_entry_set_pathname(v69, v63);
  }

  *(v68 + 216) = v67[7];
  *(v68 + 208) = 0;
  if (v67[6] + v67[7] > *(v68 + 176))
  {
    v59 = v70;
    v26 = archive_entry_pathname(v69);
    archive_set_error(v59, -1, "File is beyond end-of-media: %s", v27, v28, v29, v30, v31, v26);
    *(v68 + 216) = 0;
    return -20;
  }

  else
  {
    archive_entry_set_mode(v69, *(v67 + 68));
    archive_entry_set_uid(v69, *(v67 + 35));
    archive_entry_set_gid(v69, *(v67 + 36));
    archive_entry_set_nlink(v69, *(v67 + 40));
    if (*(v67 + 22))
    {
      archive_entry_set_birthtime(v69, v67[12], 0);
    }

    else
    {
      archive_entry_unset_birthtime(v69);
    }

    archive_entry_set_mtime(v69, v67[13], 0);
    archive_entry_set_ctime(v69, v67[15], 0);
    archive_entry_set_atime(v69, v67[14], 0);
    archive_entry_set_rdev(v69, v67[16]);
    archive_entry_set_size(v69, *(v68 + 216));
    if (v67[27])
    {
      archive_entry_copy_symlink(v69, v67[27]);
    }

    if (v67[19] != -1 && v67[19] == *(v68 + 72))
    {
      if (*(v68 + 42))
      {
        if (_archive_entry_copy_hardlink_l(v69, *(v68 + 512), *(v68 + 520), *(v68 + 488)))
        {
          if (*__error() == 12)
          {
            archive_set_error(v70, 12, "No memory for Linkname", v32, v33, v34, v35, v36, v52);
            return -30;
          }

          v58 = v70;
          v37 = archive_string_conversion_charset_name(*(v68 + 488));
          archive_set_error(v58, 79, "Linkname cannot be converted from %s to current locale.", v38, v39, v40, v41, v42, v37);
          v64 = -20;
        }
      }

      else
      {
        archive_entry_set_hardlink(v69, *(v68 + 80));
      }

      archive_entry_unset_size(v69);
      *(v68 + 216) = 0;
      return v64;
    }

    if ((v67[17] & 0xF000) != 0x4000 && v67[6] < *(v68 + 160))
    {
      seek = __archive_read_seek(v70, v67[6], 0);
      if (seek != v67[6])
      {
        v53 = *(v68 + 16);
        v54 = v67[6];
        v55 = *(v68 + 160);
        archive_set_error(v70, -1, "Ignoring out-of-order file @%jx (%s) %jd < %jd", v43, v44, v45, v46, v47, v67[19]);
        *(v68 + 216) = 0;
        return -20;
      }

      *(v68 + 160) = seek;
    }

    *(v68 + 232) = *(v67 + 61);
    if (*(v67 + 61))
    {
      v61 = v68 + 232;
      *(v68 + 248) = 0;
      *(v61 + 4) = *(v67 + 62);
      *(v61 + 8) = v67[32];
      *(v61 + 40) = 0;
      *(v61 + 64) = 0;
      *(v61 + 72) = 0;
      *(v61 + 104) = 0;
      archive_entry_set_size(v69, v67[32]);
    }

    *(v68 + 72) = v67[19];
    if (*(v68 + 42))
    {
      v48 = *(v68 + 512);
      v49 = *(v68 + 496);
      v50 = *(v68 + 504);
      __memcpy_chk();
      *(v68 + 520) = *(v68 + 504);
    }

    else
    {
      *(v68 + 88) = 0;
      v57 = (v68 + 80);
      if (*(v68 + 16))
      {
        v56 = strlen(*(v68 + 16));
        archive_strncat(v57, *(v68 + 16), v56);
      }

      else
      {
        archive_strncat(v57, 0, 0);
      }
    }

    *(v68 + 480) = v67[34];
    if (*(v68 + 480))
    {
      *(v68 + 216) = *(*(v68 + 480) + 8);
    }

    if (archive_entry_filetype(v69) == 0x4000)
    {
      archive_entry_set_nlink(v69, *(v67 + 8) + 2);
      *(v68 + 216) = 0;
    }

    if (v64)
    {
      return v64;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t archive_read_format_iso9660_read_data(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  v19 = **(a1 + 2072);
  if (*(v19 + 224))
  {
    __archive_read_consume(v24, *(v19 + 224));
    *(v19 + 224) = 0;
  }

  if (*(v19 + 216) <= 0)
  {
    if (*(v19 + 480))
    {
      *(v19 + 480) = *(*(v19 + 480) + 16);
    }

    if (!*(v19 + 480))
    {
      *v23 = 0;
      *v22 = 0;
      *v21 = *(v19 + 208);
      return 1;
    }

    if (*(v19 + 160) < **(v19 + 480))
    {
      consume = __archive_read_consume(v24, **(v19 + 480) - *(v19 + 160));
      if (consume < 0)
      {
        return consume;
      }

      *(v19 + 160) = **(v19 + 480);
    }

    if (**(v19 + 480) < *(v19 + 160))
    {
      v16 = **(v19 + 480);
      v17 = *(v19 + 160);
      archive_set_error(v24, -1, "Ignoring out-of-order file (%s) %jd < %jd", a4, a5, a6, a7, a8, *(v19 + 16));
      *v23 = 0;
      *v22 = 0;
      *v21 = *(v19 + 208);
      return -20;
    }

    *(v19 + 216) = *(*(v19 + 480) + 8);
  }

  if (*(v19 + 232))
  {
    return zisofs_read_data(v24, v23, v22, v21, a5, a6, a7, a8);
  }

  else
  {
    v8 = __archive_read_ahead(v24, 1uLL, &v20, a4, a5, a6, a7, a8);
    *v23 = v8;
    if (!v20)
    {
      archive_set_error(v24, -1, "Truncated input file", v9, v10, v11, v12, v13, v15);
    }

    if (*v23)
    {
      if (v20 > *(v19 + 216))
      {
        v20 = *(v19 + 216);
      }

      *v22 = v20;
      *v21 = *(v19 + 208);
      *(v19 + 208) += v20;
      *(v19 + 216) -= v20;
      *(v19 + 224) = v20;
      *(v19 + 160) += v20;
      return 0;
    }

    else
    {
      return -30;
    }
  }
}

uint64_t isPVD(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 1)
  {
    if (a2[6] == 1)
    {
      if (a2[7])
      {
        return 0;
      }

      else if (isNull(a1, a2, 0x48u, 8u))
      {
        if (isNull(a1, a2, 0x58u, 0x20u))
        {
          v2 = archive_le16dec_1(a2 + 128);
          v8 = v2;
          if (v2)
          {
            v7 = archive_le32dec_5(a2 + 80);
            if (v7 > 20)
            {
              if (a2[881] == 1)
              {
                v5 = archive_le32dec_5(a2 + 140);
                if (v5 >= 18 && v5 < v7)
                {
                  v6 = archive_be32dec_1((a2 + 148));
                  if ((v6 <= 0 || v6 >= 18) && v6 < v7)
                  {
                    for (i = 0; i < 1; ++i)
                    {
                      if (a2[i + 882] && a2[i + 882] != 32)
                      {
                        return 0;
                      }
                    }

                    if (isNull(a1, a2, 0x573u, 0x28Du))
                    {
                      if (a2[156] == 34)
                      {
                        if (!*(a1 + 188))
                        {
                          *(a1 + 168) = v8;
                          *(a1 + 184) = v7;
                          *(a1 + 176) = v8 * v7;
                          *(a1 + 188) = archive_le32dec_5(a2 + 158);
                          *(a1 + 192) = archive_le32dec_5(a2 + 166);
                        }

                        return 48;
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

uint64_t isJolietSVD(uint64_t a1, unsigned __int8 *a2)
{
  if (isSVD(a1, a2))
  {
    if (a2[88] != 37 || a2[89] != 47)
    {
      return 0;
    }

    switch(a2[90])
    {
      case '@':
        v3 = 1;
        break;
      case 'C':
        v3 = 2;
        break;
      case 'E':
        v3 = 3;
        break;
      default:
        return 0;
    }

    *(a1 + 42) = v3;
    v5 = archive_le16dec_1(a2 + 128);
    v4 = archive_le32dec_5(a2 + 80);
    *(a1 + 168) = v5;
    *(a1 + 184) = v4;
    *(a1 + 176) = v5 * v4;
    *(a1 + 196) = archive_le32dec_5(a2 + 158);
    *(a1 + 200) = archive_le32dec_5(a2 + 166);
    return 48;
  }

  return 0;
}

uint64_t isEVD(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 2)
  {
    if (a2[6] == 2)
    {
      if (a2[7])
      {
        return 0;
      }

      else if (isNull(a1, a2, 0x48u, 8u))
      {
        if (isNull(a1, a2, 0x58u, 0x20u))
        {
          if (archive_le16dec_1(a2 + 128))
          {
            v5 = archive_le32dec_5(a2 + 80);
            if (v5 > 20)
            {
              if (a2[881] == 2)
              {
                v3 = archive_le32dec_5(a2 + 140);
                if (v3 >= 18 && v3 < v5)
                {
                  v4 = archive_be32dec_1((a2 + 148));
                  if ((v4 <= 0 || v4 >= 18) && v4 < v5)
                  {
                    if (isNull(a1, a2, 0x372u, 1u))
                    {
                      if (isNull(a1, a2, 0x573u, 0x28Du))
                      {
                        if (a2[156] == 34)
                        {
                          return 48;
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

uint64_t isSVD(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 2)
  {
    if (isNull(a1, a2, 0x48u, 8u))
    {
      if (isNull(a1, a2, 0x372u, 1u))
      {
        if (isNull(a1, a2, 0x573u, 0x28Du))
        {
          if (a2[881] == 1)
          {
            if (archive_le16dec_1(a2 + 128))
            {
              v5 = archive_le32dec_5(a2 + 80);
              if (v5 > 20)
              {
                v3 = archive_le32dec_5(a2 + 140);
                if (v3 >= 18 && v3 < v5)
                {
                  v4 = archive_be32dec_1((a2 + 148));
                  if ((v4 <= 0 || v4 >= 18) && v4 < v5)
                  {
                    if (a2[156] == 34)
                    {
                      return 48;
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

  else
  {
    return 0;
  }
}

BOOL isVolumePartition(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 3)
  {
    if (a2[6] == 1)
    {
      if (a2[7])
      {
        return 0;
      }

      else
      {
        v3 = archive_le32dec_5(a2 + 72);
        return v3 > 16 && v3 < *(a1 + 184) && v3 == archive_be32dec_1((a2 + 76));
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

BOOL isVDSetTerminator(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 255)
  {
    return a2[6] == 1 && isNull(a1, a2, 7u, 0x7F9u);
  }

  else
  {
    return 0;
  }
}

BOOL isNull(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  while (a4 >= 0x800uLL)
  {
    if (!memcmp((a1 + 528), (a2 + a3), 0x800uLL))
    {
      return 0;
    }

    a3 += 2048;
    a4 -= 2048;
  }

  return !a4 || memcmp((a1 + 528), (a2 + a3), a4) == 0;
}

uint64_t choose_volume(uint64_t a1, uint64_t a2)
{
  HIBYTE(v22) = 0;
  v25 = (a2 + 188);
  if (!*(a2 + 4))
  {
    *(a2 + 42) = 0;
  }

  if (*(a2 + 42) && *v25 > *(a2 + 196))
  {
    v25 = (a2 + 196);
  }

  consume = __archive_read_consume(a1, *v25 << 11);
  if (consume < 0)
  {
    return consume;
  }

  *(a2 + 160) = consume;
  ahead = __archive_read_ahead(a1, v25[1], 0, v2, v3, v4, v5, v6);
  if (!ahead)
  {
LABEL_9:
    archive_set_error(a1, -1, "Failed to read full block when scanning ISO9660 directory list", v7, v8, v9, v10, v11, v22);
    return -30;
  }

  HIBYTE(v22) = *(a2 + 42);
  *(a2 + 42) = 0;
  v28 = parse_file_info(a1, 0, ahead, v25[1], v8, v9, v10, v11);
  if (!v28)
  {
    return -30;
  }

  *(a2 + 42) = HIBYTE(v22);
  if (v25 == (a2 + 188) && *(a2 + 40) && *(a2 + 42))
  {
    *(a2 + 42) = 0;
  }

  if (v25 == (a2 + 188) && !*(a2 + 40) && *(a2 + 42))
  {
    v27 = __archive_read_consume(a1, (*(a2 + 196) << 11) - *(a2 + 160));
    if (v27 < 0)
    {
      return v27;
    }

    *(a2 + 160) += v27;
    v24 = __archive_read_ahead(a1, *(a2 + 200), 0, v16, v17, v18, v19, v20);
    if (!v24)
    {
      goto LABEL_9;
    }

    *(a2 + 42) = 0;
    v28 = parse_file_info(a1, 0, v24, *(a2 + 200), v8, v9, v10, v11);
    if (!v28)
    {
      return -30;
    }

    *(a2 + 42) = HIBYTE(v22);
  }

  if (heap_add_entry(a1, a2 + 112, v28, v28[6], v12, v13, v14, v15))
  {
    return -30;
  }

  else
  {
    if (*(a2 + 40))
    {
      *(a1 + 16) = 262145;
      *(a1 + 24) = "ISO9660 with Rockridge extensions";
    }

    return 0;
  }
}

uint64_t next_entry_seek(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  cache_entry = next_cache_entry(a1, a2, a3);
  if (!cache_entry)
  {
    v7 = *a3;
    if (!*(*a3 + 56))
    {
      v3 = *a3;
      *(v7 + 48) = *(a2 + 160);
    }

    if (*(a2 + 224))
    {
      __archive_read_consume(a1, *(a2 + 224));
      *(a2 + 224) = 0;
    }

    if (*(a2 + 160) < *(v7 + 48))
    {
      consume = __archive_read_consume(a1, *(v7 + 48) - *(a2 + 160));
      if (consume < 0)
      {
        return consume;
      }

      *(a2 + 160) = *(v7 + 48);
    }

    return 0;
  }

  return cache_entry;
}

uint64_t build_pathname_utf16be(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  if (!a4[1] || !*(a4[1] + 200))
  {
LABEL_6:
    if (a4[25])
    {
      if (*a3 + a4[25] > a2)
      {
        return -1;
      }

      v4 = *a3;
      v5 = a4[24];
      v6 = a4[25];
      __memcpy_chk();
      *a3 += a4[25];
    }

    else
    {
      if (*a3 + 2 > a2)
      {
        return -1;
      }

      *(a1 + *a3) = 0;
      *(a1 + *a3 + 1) = 46;
      *a3 += 2;
    }

    return 0;
  }

  if (!build_pathname_utf16be(a1, a2, a3, a4[1]))
  {
    *(a1 + *a3) = 0;
    *(a1 + *a3 + 1) = 47;
    *a3 += 2;
    goto LABEL_6;
  }

  return -1;
}

uint64_t build_pathname(uint64_t *a1, void *a2, int a3)
{
  if (a3 > 1000)
  {
    return 0;
  }

  if (a2[1] && *(a2[1] + 176))
  {
    if (!build_pathname(a1, a2[1], (a3 + 1)))
    {
      return 0;
    }

    archive_strcat(a1, "/");
  }

  if (a2[22])
  {
    archive_string_concat(a1, a2 + 21);
  }

  else
  {
    archive_strcat(a1, ".");
  }

  return *a1;
}

uint64_t *parse_file_info(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = **(a1 + 2072);
  if (a4)
  {
    v39 = *a3;
    if (a4 >= v39 && v39 >= 0x22)
    {
      size = a3[32];
      v36 = archive_le32dec_5(a3 + 2);
      v38 = toi(a3 + 10, 4);
      if (v39 - 33 < size || !size)
      {
        archive_set_error(a1, -1, "Invalid length of file identifier", v8, v9, v10, v11, v12, v33);
        return 0;
      }

      if (v36 > 0 && v36 + (v38 + *(v47 + 168) - 1) / *(v47 + 168) > *(v47 + 184) || v38 && v36 < 0)
      {
        archive_set_error(a1, -1, "Invalid location of extent of file", v8, v9, v10, v11, v12, v33);
        return 0;
      }

      v37 = *(v47 + 168) * v36;
      for (i = a2; i; i = *(i + 8))
      {
        if (*(i + 48) == v37)
        {
          archive_set_error(a1, 79, "Directory structure contains loop", v8, v9, v10, v11, v12, v33);
          return 0;
        }
      }

      v46 = malloc_type_calloc(1uLL, 0x130uLL, 0x10B0040C474A8FDuLL);
      if (!v46)
      {
        archive_set_error(a1, 12, "No memory for file entry", v13, v14, v15, v16, v17, v33);
        return 0;
      }

      v46[1] = a2;
      v46[6] = v37;
      v46[7] = v38;
      v46[13] = isodate7(a3 + 18);
      v18 = v46[13];
      v46[14] = v18;
      v46[15] = v18;
      v46[36] = 0;
      v46[37] = (v46 + 36);
      __s1 = a3 + 33;
      v42 = &a3[size + 33 + ((size & 1) == 0)];
      v41 = &a3[v39];
      if (*(v47 + 42))
      {
        if (size > 0xCE)
        {
          size = 206;
        }

        sizea = size & 0xFFFFFFFFFFFFFFFELL;
        if (sizea > 4 && !__s1[sizea - 4] && __s1[sizea - 3] == 59 && !__s1[sizea - 2] && __s1[sizea - 1] == 49)
        {
          sizea -= 4;
        }

        v19 = malloc_type_malloc(sizea, 0x74D08E47uLL);
        v46[24] = v19;
        if (!v19)
        {
          archive_set_error(a1, 12, "No memory for file name", v20, v21, v22, v23, v24, v33);
LABEL_105:
          archive_string_free((v46 + 21));
          free(v46);
          return 0;
        }

        v25 = v46[24];
        __memcpy_chk();
        v46[25] = sizea;
      }

      else
      {
        if (size > 2 && __s1[size - 2] == 59 && __s1[size - 1] == 49)
        {
          size -= 2;
        }

        if (size > 1 && __s1[size - 1] == 46)
        {
          --size;
        }

        v46[22] = 0;
        archive_strncat(v46 + 21, __s1, size);
      }

      v35 = a3[25];
      if ((v35 & 2) != 0)
      {
        *(v46 + 68) = 16832;
      }

      else
      {
        *(v46 + 68) = -32512;
      }

      *(v46 + 66) = (v35 & 0x80) != 0;
      if (v46[7] || v36 < 0)
      {
        v46[19] = v36;
      }

      else
      {
        v46[19] = -1;
        v46[6] = -1;
      }

      if (*(v47 + 8))
      {
        if (!a2 && (v41 - v42) >= 7 && !memcmp(v42, "SP\a\x01\xBE\xEFrr_moved", 6uLL))
        {
          *(v47 + 43) = v42[6];
          *(v47 + 41) = 1;
          v42 += 7;
        }

        if (*(v47 + 41))
        {
          *(v46 + 208) = 0;
          *(v46 + 240) = 0;
          if (parse_rockridge(a1, v46, &v42[*(v47 + 43)], v41, v27, v28, v29, v30))
          {
            goto LABEL_105;
          }

          if (v46[7] && (v46[17] & 0xF000) == 0xA000)
          {
            v46[7] = 0;
            v46[19] = -1;
            v46[6] = -1;
          }
        }

        else
        {
          *(v47 + 8) = 0;
        }
      }

      *(v46 + 40) = 1;
      if (a2 && (v35 & 2) != 0)
      {
        ++*(a2 + 32);
      }

      if (*(v47 + 40))
      {
        if (a2 && !*(a2 + 8) && (v35 & 2) != 0 && !*(v47 + 48) && v46[21] && (!strcmp(v46[21], "rr_moved") || !strcmp(v46[21], ".rr_moved")))
        {
          *(v47 + 48) = v46;
          *(v46 + 72) = 1;
          *(v46 + 73) = 1;
          *(v46 + 74) = 0;
          --*(a2 + 32);
        }

        else if (*(v46 + 74))
        {
          if (!a2 || !*(a2 + 72))
          {
            goto LABEL_81;
          }

          if (v46[10])
          {
            archive_set_error(a1, -1, "Invalid Rockridge RE and CL", v26, v27, v28, v29, v30, v33);
            goto LABEL_105;
          }

          if ((v35 & 2) == 0)
          {
LABEL_81:
            archive_set_error(a1, -1, "Invalid Rockridge RE", v26, v27, v28, v29, v30, v33);
            goto LABEL_105;
          }
        }

        else if (a2 && *(a2 + 72))
        {
          *(v46 + 73) = 0;
        }

        else if (a2 && (v35 & 2) != 0 && (*(a2 + 74) || *(a2 + 75)))
        {
          *(v46 + 75) = 1;
        }

        if (v46[10])
        {
          j = 0;
          if (!a2 || !*(a2 + 8) || (v35 & 2) != 0)
          {
            goto LABEL_103;
          }

          ++*(a2 + 32);
          v31 = v46[10] + 1;
          v46[19] = v31;
          v46[6] = v31;
          for (j = a2; j; j = *(j + 8))
          {
            if (*(j + 48) == v46[10])
            {
              goto LABEL_103;
            }
          }

          if (v46[10] == v46[6] || *(a2 + 72))
          {
LABEL_103:
            archive_set_error(a1, -1, "Invalid Rockridge CL", v26, v27, v28, v29, v30, j);
            goto LABEL_105;
          }
        }
      }

      register_file(v47, v46);
      return v46;
    }
  }

  archive_set_error(a1, -1, "Invalid length of directory record", a4, a5, a6, a7, a8, v33);
  return 0;
}

uint64_t heap_add_entry(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = (a4 << 16) + *(a2 + 12);
  if (*(a2 + 12) >= *(a2 + 8))
  {
    HIDWORD(v17) = 2 * *(a2 + 8);
    if (*(a2 + 8) < 1024)
    {
      HIDWORD(v17) = 1024;
    }

    if (SHIDWORD(v17) <= *(a2 + 8))
    {
      archive_set_error(a1, 12, "Out of memory", a4, a5, a6, a7, a8, v17);
      return -30;
    }

    v18 = malloc_type_malloc(8 * SHIDWORD(v17), 0x2004093837F09uLL);
    if (!v18)
    {
      archive_set_error(a1, 12, "Out of memory", v8, v9, v10, v11, v12, v17);
      return -30;
    }

    if (*(a2 + 8))
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      __memcpy_chk();
    }

    free(*a2);
    *a2 = v18;
    *(a2 + 8) = HIDWORD(v17);
  }

  *(a3 + 40) = v21;
  v15 = *(a2 + 12);
  *(a2 + 12) = v15 + 1;
  for (i = v15; i > 0; i = (i - 1) / 2)
  {
    v19 = (i - 1) / 2;
    if (v21 >= *(*(*a2 + 8 * v19) + 40))
    {
      *(*a2 + 8 * i) = a3;
      return 0;
    }

    *(*a2 + 8 * i) = *(*a2 + 8 * v19);
  }

  **a2 = a3;
  return 0;
}

uint64_t toi(unsigned __int8 *a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      return *a1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = *a1;
    return v3 + (toi(a1 + 1, (a2 - 1)) << 8);
  }
}

time_t isodate7(unsigned __int8 *a1)
{
  v5 = a1;
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = *v5;
  __b.tm_mon = v5[1] - 1;
  __b.tm_mday = v5[2];
  __b.tm_hour = v5[3];
  __b.tm_min = v5[4];
  __b.tm_sec = v5[5];
  v3 = v5[6];
  if (v3 > -48 && v3 < 52)
  {
    __b.tm_hour -= v3 / 4;
    __b.tm_min -= 15 * (v3 % 4);
  }

  v2 = time_from_tm(&__b);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t parse_rockridge(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v23 = **(a1 + 2072);
  while (1)
  {
    v17 = 0;
    if ((a3 + 4) <= a4)
    {
      v17 = 0;
      if (*a3 >= 0x41u)
      {
        v17 = 0;
        if (*a3 <= 0x5Au)
        {
          v17 = 0;
          if (a3[1] >= 0x41u)
          {
            v17 = 0;
            if (a3[1] <= 0x5Au)
            {
              v17 = 0;
              if (a3[2] >= 4u)
              {
                v17 = &a3[a3[2]] <= a4;
              }
            }
          }
        }
      }
    }

    if (!v17)
    {
      break;
    }

    v21 = a3 + 4;
    v20 = a3[2] - 4;
    v19 = a3[3];
    v16 = *a3;
    switch(v16)
    {
      case 'C':
        if (a3[1] == 69)
        {
          if (v19 == 1 && a3[2] == 28)
          {
            v18 = archive_le32dec_5(v21);
            *(a2 + 64) = archive_le32dec_5(a3 + 12);
            *(a2 + 68) = archive_le32dec_5(a3 + 20);
            if (register_CE(a1, v18, a2, v8, v9, v10, v11, v12))
            {
              return -30;
            }
          }
        }

        else if (a3[1] == 76 && v19 == 1 && a3[2] == 12)
        {
          v15 = *(v23 + 168);
          *(a2 + 80) = v15 * archive_le32dec_5(v21);
          *(v23 + 40) = 1;
        }

        break;
      case 'N':
        if (a3[1] == 77 && v19 == 1)
        {
          parse_rockridge_NM1(a2, v21, v20);
          *(v23 + 40) = 1;
        }

        break;
      case 'P':
        if (a3[1] == 78)
        {
          if (v19 == 1 && a3[2] == 20)
          {
            *(a2 + 128) = toi(v21, 4);
            *(a2 + 128) <<= 32;
            *(a2 + 128) |= toi(a3 + 12, 4);
            *(v23 + 40) = 1;
          }
        }

        else if (a3[1] == 88 && v19 == 1)
        {
          if (v20 >= 8)
          {
            *(a2 + 136) = toi(v21, 4);
          }

          if (v20 >= 16)
          {
            *(a2 + 160) = toi(a3 + 12, 4);
          }

          if (v20 >= 24)
          {
            *(a2 + 140) = toi(a3 + 20, 4);
          }

          if (v20 >= 32)
          {
            *(a2 + 144) = toi(a3 + 28, 4);
          }

          if (v20 >= 40)
          {
            *(a2 + 152) = toi(a3 + 36, 4);
          }

          *(v23 + 40) = 1;
        }

        break;
      case 'R':
        if (a3[1] == 69 && v19 == 1)
        {
          *(a2 + 74) = 1;
          *(v23 + 40) = 1;
        }

        else
        {
          a3[1];
        }

        break;
      case 'S':
        if (a3[1] == 76)
        {
          if (v19 == 1)
          {
            parse_rockridge_SL1(a2, v21, v20);
            *(v23 + 40) = 1;
          }
        }

        else if (a3[1] == 84 && a3[2] == 4 && v19 == 1)
        {
          *(v23 + 41) = 0;
          *(v23 + 40) = 0;
          return 0;
        }

        break;
      case 'T':
        if (a3[1] == 70 && v19 == 1)
        {
          parse_rockridge_TF1(a2, v21, v20);
          *(v23 + 40) = 1;
        }

        break;
      default:
        if (v16 == 90 && a3[1] == 70 && v19 == 1)
        {
          parse_rockridge_ZF1(a2, v21, v20);
        }

        break;
    }

    a3 += a3[2];
    v22 = 1;
  }

  if (v22)
  {
    return 0;
  }

  else
  {
    archive_set_error(a1, 79, "Tried to parse Rockridge extensions, but none found", a4, a5, a6, a7, a8, v14);
    return -20;
  }
}

uint64_t register_file(uint64_t result, void *a2)
{
  *a2 = *(result + 104);
  *(result + 104) = a2;
  return result;
}

uint64_t register_CE(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = **(a1 + 2072);
  v21 = a2 * *(v24 + 168);
  if ((*(a3 + 136) & 0xF000) == 0x8000 && v21 >= *(a3 + 48) || v21 < *(v24 + 160) || *(a3 + 64) + *(a3 + 68) > *(v24 + 168) || v21 + *(a3 + 64) + *(a3 + 68) > *(v24 + 176))
  {
    archive_set_error(a1, -1, "Invalid parameter in SUSP CE extension", a4, a5, a6, a7, a8, v17);
    return -30;
  }

  else
  {
    v23 = (v24 + 56);
    if (*(v24 + 64) >= *(v24 + 68))
    {
      if (*(v24 + 68) < 16)
      {
        count = 16;
      }

      else
      {
        count = 2 * *(v24 + 68);
      }

      if (count <= *(v24 + 68))
      {
        archive_set_error(a1, 12, "Out of memory", a4, a5, a6, a7, a8, v17);
        return -30;
      }

      v22 = malloc_type_calloc(count, 0x10uLL, 0x10200405730B0C9uLL);
      if (!v22)
      {
        archive_set_error(a1, 12, "Out of memory", v8, v9, v10, v11, v12, v17);
        return -30;
      }

      if (*v23)
      {
        v13 = *v23;
        v14 = *(v24 + 64);
        __memcpy_chk();
        free(*v23);
      }

      *v23 = v22;
      *(v24 + 68) = count;
    }

    v15 = *(v24 + 64);
    *(v24 + 64) = v15 + 1;
    for (i = v15; i > 0; i = (i - 1) / 2)
    {
      count_4 = (i - 1) / 2;
      if (v21 >= *(*v23 + 2 * count_4))
      {
        *(*v23 + 2 * i) = v21;
        *(*v23 + 2 * i + 1) = a3;
        return 0;
      }

      *(*v23 + i) = *(*v23 + count_4);
    }

    **v23 = v21;
    *(*v23 + 1) = a3;
    return 0;
  }
}

uint64_t *parse_rockridge_NM1(uint64_t *result, _BYTE *a2, int a3)
{
  v4 = result;
  if (!*(result + 208))
  {
    result[22] = 0;
  }

  *(result + 208) = 0;
  if (a3 >= 1)
  {
    v3 = *a2;
    if (*a2)
    {
      switch(v3)
      {
        case 1:
          if (a3 >= 2)
          {
            result = archive_strncat(result + 21, (a2 + 1), a3 - 1);
            *(v4 + 208) = 1;
          }

          break;
        case 2:
          return archive_strcat(result + 21, ".");
        case 4:
          return archive_strcat(result + 21, "..");
      }
    }

    else if (a3 >= 2)
    {
      return archive_strncat(result + 21, (a2 + 1), a3 - 1);
    }
  }

  return result;
}

uint64_t *parse_rockridge_SL1(uint64_t *result, _BYTE *a2, int a3)
{
  v11 = result;
  v6 = &unk_1BF3442C6;
  if (!*(result + 240) || !result[28])
  {
    result[28] = 0;
  }

  *(result + 240) = 0;
  if (a3 >= 1)
  {
    if (*a2)
    {
      if (*a2 != 1)
      {
        return result;
      }

      *(result + 240) = 1;
    }

    v9 = a2 + 1;
    for (i = a3 - 1; i >= 2; i = v8 - v4)
    {
      v5 = *v9;
      v3 = (v9 + 1);
      v10 = (v9 + 2);
      v4 = *v3;
      v8 = i - 2;
      result = archive_strcat(v11 + 27, v6);
      v6 = "/";
      if (v5)
      {
        switch(v5)
        {
          case 1:
            if (v8 < v4)
            {
              return result;
            }

            result = archive_strncat(v11 + 27, v10, v4);
            v6 = &unk_1BF3442C6;
            break;
          case 2:
            result = archive_strcat(v11 + 27, ".");
            break;
          case 4:
            result = archive_strcat(v11 + 27, "..");
            break;
          case 8:
            result = archive_strcat(v11 + 27, "/");
            v6 = &unk_1BF3442C6;
            break;
          case 16:
            v11[28] = 0;
            result = archive_strcat(v11 + 27, "ROOT");
            break;
          case 32:
            result = archive_strcat(v11 + 27, "hostname");
            break;
          default:
            return result;
        }
      }

      else
      {
        if (v8 < v4)
        {
          return result;
        }

        result = archive_strncat(v11 + 27, v10, v4);
      }

      v9 = (v10 + v4);
    }
  }

  return result;
}

time_t parse_rockridge_TF1(time_t result, _BYTE *a2, int a3)
{
  v6 = result;
  if (a3 >= 1)
  {
    v3 = *a2;
    v5 = a2 + 1;
    v4 = a3 - 1;
    if ((*a2 & 0x80) != 0)
    {
      if ((v3 & 1) != 0 && v4 >= 17)
      {
        *(result + 88) = 1;
        result = isodate17(v5);
        v6[12] = result;
        v5 += 17;
        v4 -= 17;
      }

      if ((v3 & 2) != 0 && v4 >= 17)
      {
        result = isodate17(v5);
        v6[13] = result;
        v5 += 17;
        v4 -= 17;
      }

      if ((v3 & 4) != 0 && v4 >= 17)
      {
        result = isodate17(v5);
        v6[14] = result;
        v5 += 17;
        v4 -= 17;
      }

      if ((v3 & 8) != 0 && v4 >= 17)
      {
        result = isodate17(v5);
        v6[15] = result;
      }
    }

    else
    {
      if ((v3 & 1) != 0 && v4 >= 7)
      {
        *(result + 88) = 1;
        result = isodate7(v5);
        v6[12] = result;
        v5 += 7;
        v4 -= 7;
      }

      if ((v3 & 2) != 0 && v4 >= 7)
      {
        result = isodate7(v5);
        v6[13] = result;
        v5 += 7;
        v4 -= 7;
      }

      if ((v3 & 4) != 0 && v4 >= 7)
      {
        result = isodate7(v5);
        v6[14] = result;
        v5 += 7;
        v4 -= 7;
      }

      if ((v3 & 8) != 0 && v4 >= 7)
      {
        result = isodate7(v5);
        v6[15] = result;
      }
    }
  }

  return result;
}

uint64_t parse_rockridge_ZF1(uint64_t result, _BYTE *a2, int a3)
{
  v3 = result;
  if (*a2 == 112 && a2[1] == 122 && a3 == 12)
  {
    *(result + 244) = 1;
    *(result + 248) = a2[3];
    result = archive_le32dec_5(a2 + 4);
    *(v3 + 256) = result;
  }

  return result;
}

time_t isodate17(unsigned __int8 *a1)
{
  v5 = a1;
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = 1000 * (*v5 - 48) + 100 * (v5[1] - 48) + 10 * (v5[2] - 48) + v5[3] - 48 - 1900;
  __b.tm_mon = 10 * (v5[4] - 48) + v5[5] - 48;
  __b.tm_mday = 10 * (v5[6] - 48) + v5[7] - 48;
  __b.tm_hour = 10 * (v5[8] - 48) + v5[9] - 48;
  __b.tm_min = 10 * (v5[10] - 48) + v5[11] - 48;
  __b.tm_sec = 10 * (v5[12] - 48) + v5[13] - 48;
  v3 = v5[16];
  if (v3 > -48 && v3 < 52)
  {
    __b.tm_hour -= v3 / 4;
    __b.tm_min -= 15 * (v3 % 4);
  }

  v2 = time_from_tm(&__b);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t next_cache_entry(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  v29 = 0;
  v30 = 0;
  entry = cache_get_entry(a2);
  if (entry)
  {
    *v32 = entry;
    return 0;
  }

  else
  {
    while (1)
    {
LABEL_3:
      entry = heap_get_entry((v33 + 112));
      *v32 = entry;
      if (!entry)
      {
        if (*(v33 + 144) && *(v33 + 48) && *(*(v33 + 48) + 73))
        {
          cache_add_entry(v33, *(v33 + 48));
        }

        while (1)
        {
          v25 = re_get_entry(v33);
          if (!v25)
          {
            break;
          }

          while (1)
          {
            v22 = rede_get_entry(v25);
            if (!v22)
            {
              break;
            }

            cache_add_entry(v33, v22);
          }
        }

        if (*(v33 + 128))
        {
          return next_cache_entry(v34, v33, v32);
        }

        else
        {
          return 1;
        }
      }

      if (entry[10])
      {
        break;
      }

      if ((entry[17] & 0xF000) != 0x4000)
      {
        goto LABEL_44;
      }

      children = read_children(v34, entry, v3, v4, v5, v6, v7, v8);
      if (children)
      {
        return children;
      }

      if (*(entry + 72))
      {
        if (!*(entry + 73))
        {
          goto LABEL_44;
        }
      }

      else if (*(entry + 74))
      {
        re_add_entry(v33, entry);
      }

      else if (!*(entry + 75) || rede_add_entry(entry))
      {
        goto LABEL_44;
      }
    }

    v21 = 0;
    v20 = 0;
    while (1)
    {
      v26 = re_get_entry(v33);
      if (v26 == v21)
      {
        break;
      }

      if (!v21)
      {
        v21 = v26;
      }

      if (*(v26 + 48) == entry[10])
      {
        --*(*(v26 + 8) + 32);
        *(v26 + 8) = entry[1];
        *(v26 + 74) = 0;
        if (*(*(v26 + 8) + 75))
        {
          v20 = 1;
          *(v26 + 75) = 1;
          if ((rede_add_entry(v26) & 0x80000000) != 0)
          {
LABEL_69:
            v16 = entry[10];
            archive_set_error(v34, -1, "Failed to connect 'CL' pointer to 'RE' rr_moved pointer of Rockridge extensions: current position = %jd, CL offset = %jd", v9, v10, v11, v12, v13, *(v33 + 160));
            return -30;
          }

          while (1)
          {
            v23 = rede_get_entry(v26);
            if (!v23)
            {
              break;
            }

            if ((rede_add_entry(v23) & 0x80000000) != 0)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          entry = v26;
          *v32 = v26;
          while (1)
          {
            v24 = rede_get_entry(entry);
            if (!v24)
            {
              break;
            }

            cache_add_entry(v33, v24);
          }
        }

        break;
      }

      re_add_entry(v33, v26);
    }

    if (v20)
    {
      goto LABEL_3;
    }

LABEL_44:
    if ((entry[17] & 0xF000) == 0x8000 && entry[19] != -1)
    {
      v27 = 0;
      v28 = entry[19];
      *(v33 + 128) = 0;
      *(v33 + 136) = v33 + 128;
      v29 = 0;
      v30 = &v29;
      while (1)
      {
        v18 = 0;
        if (*(v33 + 124) > 0)
        {
          v17 = 1;
          if (*(**(v33 + 112) + 152) != -1)
          {
            v17 = *(**(v33 + 112) + 152) == v28;
          }

          v18 = v17;
        }

        if (!v18)
        {
          break;
        }

        if (entry[19] == -1)
        {
          entry[2] = 0;
          *v30 = entry;
          v30 = entry + 2;
        }

        else
        {
          ++v27;
          cache_add_entry(v33, entry);
        }

        entry = heap_get_entry((v33 + 112));
      }

      if (v27)
      {
        if (entry[19] == -1)
        {
          entry[2] = 0;
          *v30 = entry;
          v30 = entry + 2;
        }

        else
        {
          ++v27;
          cache_add_entry(v33, entry);
        }

        if (v27 > 1)
        {
          for (entry = *(v33 + 128); entry; entry = entry[2])
          {
            *(entry + 40) = v27;
          }
        }

        if (v29)
        {
          **(v33 + 136) = v29;
          *(v33 + 136) = v30;
        }

        v14 = cache_get_entry(v33);
        *v32 = v14;
        return *v32 == 0;
      }

      else
      {
        *v32 = entry;
        return entry == 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t cache_get_entry(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 128) = *(v2 + 16);
    if (!*(a1 + 128))
    {
      *(a1 + 136) = a1 + 128;
    }
  }

  return v2;
}

uint64_t heap_get_entry(_DWORD *a1)
{
  if (a1[3] < 1)
  {
    return 0;
  }

  v6 = **a1;
  v1 = *a1;
  v2 = a1[3] - 1;
  a1[3] = v2;
  **a1 = v1[v2];
  v9 = 0;
  v11 = *(**a1 + 40);
  while (1)
  {
    v8 = 2 * v9 + 1;
    if (v8 >= a1[3])
    {
      return v6;
    }

    v10 = *(*(*a1 + 8 * v8) + 40);
    v7 = 2 * v9 + 2;
    if (v7 < a1[3])
    {
      v3 = *(*(*a1 + 8 * v8) + 40);
      if (*(*(*a1 + 8 * v7) + 40) < v10)
      {
        v8 = 2 * v9 + 2;
        v10 = *(*(*a1 + 8 * v7) + 40);
      }
    }

    if (v11 <= v10)
    {
      break;
    }

    v5 = *(*a1 + 8 * v9);
    *(*a1 + 8 * v9) = *(*a1 + 8 * v8);
    *(*a1 + 8 * v8) = v5;
    v9 = v8;
  }

  return v6;
}

uint64_t cache_add_entry(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = 0;
  **(result + 136) = a2;
  *(result + 136) = a2 + 16;
  return result;
}

uint64_t re_get_entry(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 144) = *(v2 + 24);
    if (!*(a1 + 144))
    {
      *(a1 + 152) = a1 + 144;
    }
  }

  return v2;
}

uint64_t rede_get_entry(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    *(a1 + 288) = *(v2 + 24);
    if (!*(a1 + 288))
    {
      *(a1 + 296) = a1 + 288;
    }
  }

  return v2;
}

uint64_t rede_add_entry(uint64_t a1)
{
  for (i = *(a1 + 8); ; i = *(i + 8))
  {
    v2 = 0;
    if (i)
    {
      v2 = *(i + 74) == 0;
    }

    if (!v2)
    {
      break;
    }
  }

  if (i)
  {
    *(a1 + 24) = 0;
    **(i + 296) = a1;
    *(i + 296) = a1 + 24;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t re_add_entry(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 152) = a2;
  *(result + 152) = a2 + 24;
  return result;
}

uint64_t read_children(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = **(a1 + 2072);
  if (v37[28])
  {
    __archive_read_consume(a1, v37[28]);
    v37[28] = 0;
  }

  if (v37[20] <= a2[6])
  {
    if (a2[6] + a2[7] <= v37[22])
    {
      if (v37[20] < a2[6])
      {
        consume = __archive_read_consume(a1, a2[6] - v37[20]);
        if (consume < 0)
        {
          return consume;
        }

        v37[20] = a2[6];
      }

      v33 = (a2[7] + v37[21] - 1) / v37[21] * v37[21];
      ahead = __archive_read_ahead(a1, v33, 0, a4, a5, a6, a7, a8);
      if (ahead)
      {
        v37[20] += v33;
        v34 = 0;
        v32 = v33;
        while (v33)
        {
          v35 = ahead;
          ahead += v37[21];
          v33 -= v37[21];
          while (1)
          {
            v28 = 0;
            if (*v35)
            {
              v28 = 0;
              if ((v35 + 33) < ahead)
              {
                v28 = &v35[*v35] <= ahead;
              }
            }

            if (!v28)
            {
              break;
            }

            if ((v35 + 32) < ahead && (v35 + 33) < ahead && (v35[32] != 1 || v35[33]) && (v35[32] != 1 || v35[33] != 1))
            {
              v30 = parse_file_info(a1, a2, v35, ahead - v35, v9, v10, v11, v12);
              if (!v30)
              {
                __archive_read_consume(a1, v32);
                return -30;
              }

              if (!v30[10] && (*(v30 + 66) || v34))
              {
                if (!v34)
                {
                  v34 = v30;
                  v30[34] = 0;
                  v30[35] = (v30 + 34);
                }

                v29 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
                if (!v29)
                {
                  archive_set_error(a1, 12, "No memory for multi extent", v17, v9, v10, v11, v12, v25);
                  __archive_read_consume(a1, v32);
                  return -30;
                }

                *v29 = v30[6];
                v29[1] = v30[7];
                v29[2] = 0;
                *v34[35] = v29;
                v34[35] = (v29 + 2);
                if (v34 == v30)
                {
                  if (heap_add_entry(a1, (v37 + 14), v30, v30[6], v9, v10, v11, v12))
                  {
                    return -30;
                  }
                }

                else
                {
                  v34[7] += v30[7];
                  if (!*(v30 + 66))
                  {
                    v34 = 0;
                  }
                }
              }

              else if (heap_add_entry(a1, (v37 + 14), v30, v30[6], v13, v14, v15, v16))
              {
                return -30;
              }
            }

            v35 += *v35;
          }
        }

        __archive_read_consume(a1, v32);
        if (read_CE(a1, v37, v18, v19, v20, v21, v22, v23))
        {
          return -30;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        archive_set_error(a1, -1, "Failed to read full block when scanning ISO9660 directory list", v8, v9, v10, v11, v12, v25);
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "Directory is beyond end-of-media: %s", a4, a5, a6, a7, a8, a2[21]);
      return -20;
    }
  }

  else
  {
    v26 = v37[20];
    v27 = a2[6];
    archive_set_error(a1, -1, "Ignoring out-of-order directory (%s) %jd > %jd", a4, a5, a6, a7, a8, a2[21]);
    return -20;
  }
}

uint64_t read_CE(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = (a2 + 56);
  for (i = *(a2 + 168); ; *(a2 + 160) += i)
  {
    v21 = 0;
    if (*(v27 + 2))
    {
      v21 = **v27 == *(a2 + 160);
    }

    if (!v21)
    {
      break;
    }

    ahead = __archive_read_ahead(a1, i, 0, a4, a5, a6, a7, a8);
    if (!ahead)
    {
      archive_set_error(a1, -1, "Failed to read full block when scanning ISO9660 directory list", v8, v9, v10, v11, v12, v19);
      return -30;
    }

    do
    {
      v23 = (*v27)[1];
      if ((*(v23 + 64) + *(v23 + 68)) > i)
      {
        archive_set_error(a1, 79, "Malformed CE information", v8, v9, v10, v11, v12, v19);
        return -30;
      }

      v25 = (ahead + *(v23 + 64));
      v24 = &v25[*(v23 + 68)];
      next_CE(v27);
      if (parse_rockridge(a1, v23, v25, v24, v13, v14, v15, v16))
      {
        return -30;
      }

      v20 = 0;
      if (*(v27 + 2))
      {
        v20 = **v27 == *(a2 + 160);
      }
    }

    while (v20);
    __archive_read_consume(a1, i);
  }

  return 0;
}

uint64_t **next_CE(uint64_t **result)
{
  if (*(result + 2) >= 1)
  {
    v1 = *result;
    v2 = *result;
    v3 = *(result + 2) - 1;
    *(result + 2) = v3;
    *v1 = *&v2[2 * v3];
    v8 = 0;
    v10 = **result;
    while (1)
    {
      v7 = 2 * v8 + 1;
      if (v7 >= *(result + 2))
      {
        break;
      }

      v9 = (*result)[2 * v7];
      v6 = 2 * v8 + 2;
      if (v6 < *(result + 2))
      {
        v4 = (*result)[2 * v7];
        if ((*result)[2 * v6] < v9)
        {
          v7 = 2 * v8 + 2;
          v9 = (*result)[2 * v6];
        }
      }

      if (v10 <= v9)
      {
        break;
      }

      v5 = *&(*result)[2 * v8];
      *&(*result)[2 * v8] = *&(*result)[2 * v7];
      *&(*result)[2 * v7] = v5;
      v8 = v7;
    }
  }

  return result;
}

uint64_t zisofs_read_data(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a1;
  v56 = a2;
  v55 = a3;
  v54 = a4;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v53 = **(a1 + 2072);
  v52 = v53 + 29;
  v51 = __archive_read_ahead(a1, 1uLL, &v49, a4, a5, a6, a7, a8);
  if (v49 > 0)
  {
    if (v49 > v53[27])
    {
      v49 = v53[27];
    }

    v50 = v49;
    v48 = 0;
    if (*(v52 + 4))
    {
      goto LABEL_64;
    }

    v42 = 4 * (((v52[1] + (1 << *(v52 + 1)) - 1) >> *(v52 + 1)) + 1);
    if (v52[11] < v42)
    {
      if (v52[10])
      {
        free(v52[10]);
      }

      v13 = malloc_type_malloc(((v42 >> 10) + 1) << 10, 0x48B66B48uLL);
      v52[10] = v13;
      if (!v52[10])
      {
        goto LABEL_10;
      }

      v52[11] = ((v42 >> 10) + 1) << 10;
    }

    v52[12] = v42;
    v43 = 1 << *(v52 + 1);
    if (v52[4] < v43)
    {
      if (v52[3])
      {
        free(v52[3]);
      }

      v14 = malloc_type_malloc(v43, 0xFFC493ADuLL);
      v52[3] = v14;
      if (!v52[3])
      {
LABEL_10:
        archive_set_error(v57, 12, "No memory for zisofs decompression", v8, v9, v10, v11, v12, v38);
        return -30;
      }
    }

    v52[4] = v43;
    if (v52[8] < 0x10uLL)
    {
      v44 = 16 - v52[8];
      if (v50 < v44)
      {
        v44 = v50;
      }

      v15 = v52[8];
      __memcpy_chk();
      v52[8] += v44;
      v50 -= v44;
      v51 += v44;
    }

    if (!*(v52 + 18) && v52[8] == 16)
    {
      v41 = memcmp(v52 + 44, &zisofs_magic_0, 8uLL) != 0;
      v16 = archive_le32dec_5(v52 + 52);
      if (v16 != v52[1])
      {
        v41 = 1;
      }

      if (*(v52 + 56) != 4)
      {
        v41 = 1;
      }

      if (*(v52 + 57) != *(v52 + 1))
      {
        v41 = 1;
      }

      if (v41)
      {
        archive_set_error(v57, 79, "Illegal zisofs file body", v8, v9, v10, v11, v12, v38);
        return -30;
      }

      *(v52 + 18) = 1;
    }

    if (*(v52 + 18) && v52[13] < v52[12])
    {
      v45 = v52[12] - v52[13];
      if (v50 < v45)
      {
        v45 = v50;
      }

      v17 = v52[10];
      v18 = v52[13];
      __memcpy_chk();
      v52[13] += v45;
      v50 -= v45;
      v51 += v45;
      if (v52[13] == v52[12])
      {
        v52[14] = 0;
        *(v52 + 30) = 0;
        *(v52 + 4) = 1;
      }
    }

    if (*(v52 + 4))
    {
LABEL_64:
      if (!*(v52 + 30))
      {
        if ((v52[14] + 4) >= v52[12])
        {
          goto LABEL_45;
        }

        v19 = archive_le32dec_5((v52[10] + v52[14]));
        v40 = v19;
        if (v19 != *(v52 + 10) + v49 - v50)
        {
          archive_set_error(v57, 79, "Illegal zisofs block pointers(cannot seek)", v20, v21, v22, v23, v24, v38);
          return -30;
        }

        v39 = archive_le32dec_5((v52[10] + v52[14] + 4));
        if (v39 < v40)
        {
LABEL_45:
          archive_set_error(v57, 79, "Illegal zisofs block pointers", v8, v9, v10, v11, v12, v38);
          return -30;
        }

        *(v52 + 30) = v39 - v40;
        v52[14] += 4;
        if (*(v52 + 60))
        {
          v46 = inflateReset((v52 + 16));
        }

        else
        {
          v46 = inflateInit_((v52 + 16), "1.2.12", 112);
        }

        if (v46)
        {
          archive_set_error(v57, -1, "Can't initialize zisofs decompression.", v25, v26, v27, v28, v29, v38);
          return -30;
        }

        *(v52 + 60) = 1;
        v52[18] = 0;
        v52[21] = 0;
      }

      if (*(v52 + 30))
      {
        v52[16] = v51;
        if (v50 <= *(v52 + 30))
        {
          *(v52 + 34) = v50;
        }

        else
        {
          *(v52 + 34) = *(v52 + 30);
        }

        v52[19] = v52[3];
        *(v52 + 40) = v52[4];
        v47 = inflate((v52 + 16), 0);
        if (v47 > 1)
        {
          archive_set_error(v57, -1, "zisofs decompression failed (%d)", v32, v33, v34, v35, v36, v47);
          return -30;
        }

        v48 = v52[4] - *(v52 + 40);
        v50 -= v52[16] - v51;
        *(v52 + 30) -= *(v52 + 32) - v51;
      }

      else
      {
        v30 = v52[3];
        v31 = v52[4];
        __memset_chk();
        v48 = v52[4];
      }
    }

    v49 -= v50;
    *v56 = v52[3];
    *v55 = v48;
    *v54 = v53[26];
    v53[26] += v48;
    v53[27] -= v49;
    v53[20] += v49;
    *(v52 + 10) += v49;
    v53[28] += v49;
    return 0;
  }

  archive_set_error(v57, 79, "Truncated zisofs file body", v8, v9, v10, v11, v12, v38);
  return -30;
}

uint64_t archive_read_support_filter_lzop(int *a1)
{
  if (archive_allow_entitlement_filter("lzop"))
  {
    if (__archive_read_register_bidder(a1, 0, 0, lzop_bidder_vtable))
    {
      return -30;
    }

    else
    {
      archive_set_error(a1, -1, "Using external lzop program for lzop decompression", v6, v7, v8, v9, v10, v12);
      return -20;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Filter not allow-listed in entitlement", v1, v2, v3, v4, v5, v12);
    return -30;
  }
}

uint64_t lzop_bidder_bid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  __s1 = 0;
  v9 = 0;
  __s1 = __archive_read_filter_ahead(a2, 9uLL, &v9, a4, a5, a6, a7, a8);
  if (__s1 && v9)
  {
    if (!memcmp(__s1, &unk_1BF33B750, 9uLL))
    {
      return 72;
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

uint64_t lzop_bidder_init(uint64_t a1)
{
  LODWORD(result) = __archive_read_program(a1, "lzop -d");
  *(a1 + 56) = 11;
  *(a1 + 48) = "lzop";
  return result;
}

uint64_t archive_read_format_mtree_options(uint64_t a1, const char *a2, _BYTE *a3)
{
  v4 = **(a1 + 2072);
  if (!strcmp(a2, "checkfs"))
  {
    *(v4 + 176) = a3 && *a3;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t read_header(uint64_t a1, _DWORD *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  i = 0;
  mtree = 0;
  v10 = 0;
  v13 = **(a1 + 2072);
  if ((v13[6] & 0x80000000) == 0)
  {
    close(*(v13 + 12));
    *(v13 + 12) = -1;
  }

  if (!v13[8])
  {
    v13[18] = archive_entry_linkresolver_new();
    if (!v13[18])
    {
      return -30;
    }

    archive_entry_linkresolver_set_strategy(v13[18], 0x80000);
    mtree = read_mtree(v15, v13, v2, v3, v4, v5, v6, v7);
    if (mtree)
    {
      return mtree;
    }
  }

  *(v15 + 4) = *(v13 + 13);
  *(v15 + 3) = v13[7];
  while (1)
  {
    if (!v13[9])
    {
      return 1;
    }

    if (!strcmp(*(v13[9] + 48), ".."))
    {
      *(v13[9] + 57) = 1;
      if (v13[13])
      {
        for (i = (v13[12] + v13[13] - 1); ; --i)
        {
          v9 = 0;
          if (i >= v13[12])
          {
            v9 = *i != 47;
          }

          if (!v9)
          {
            break;
          }
        }

        if (i >= v13[12])
        {
          --i;
        }

        v13[13] = &i[-v13[12] + 1];
      }
    }

    if (!*(v13[9] + 57))
    {
      v10 = 0;
      mtree = parse_file(v15, v14, v13, v13[9], &v10);
      if (!v10)
      {
        break;
      }
    }

    v13[9] = *(v13[9] + 32);
  }

  return mtree;
}

uint64_t read_data(uint64_t a1, void *a2, ssize_t *a3, void *a4)
{
  v18 = **(a1 + 2072);
  if ((*(v18 + 48) & 0x80000000) != 0)
  {
    *a2 = 0;
    *a4 = 0;
    *a3 = 0;
    return 1;
  }

  else if (*(v18 + 32) || (*(v18 + 24) = 0x10000, (*(v18 + 32) = malloc_type_malloc(*(v18 + 24), 0x15D58C78uLL)) != 0))
  {
    *a2 = *(v18 + 32);
    *a4 = *(v18 + 40);
    if (*(v18 + 24) <= *(v18 + 168) - *(v18 + 40))
    {
      v9 = read(*(v18 + 48), *(v18 + 32), *(v18 + 24));
    }

    else
    {
      v9 = read(*(v18 + 48), *(v18 + 32), *(v18 + 168) - *(v18 + 40));
    }

    if (v9 < 0)
    {
      v10 = __error();
      archive_set_error(a1, *v10, "Can't read", v11, v12, v13, v14, v15, v17);
      return -20;
    }

    else if (v9)
    {
      *(v18 + 40) += v9;
      *a3 = v9;
      return 0;
    }

    else
    {
      *a3 = 0;
      return 1;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory", v4, v5, v6, v7, v8, v17);
    return -30;
  }
}

uint64_t skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if ((*(v2 + 48) & 0x80000000) == 0)
  {
    close(*(v2 + 48));
    *(v2 + 48) = -1;
  }

  return 0;
}

void free_options(void **a1)
{
  while (a1)
  {
    v1 = *a1;
    free(a1[1]);
    free(a1);
    a1 = v1;
  }
}

uint64_t bid_keyword_list(char *a1, uint64_t a2, int a3, int a4)
{
  v11 = 0;
  while (1)
  {
    v8 = 0;
    if (a2 > 0)
    {
      v8 = *a1 != 0;
    }

    if (!v8)
    {
      break;
    }

    for (i = 0; ; i = 1)
    {
      v7 = 0;
      if (a2 > 0)
      {
        v6 = 1;
        if (*a1 != 32)
        {
          v6 = *a1 == 9;
        }

        v7 = v6;
      }

      if (!v7)
      {
        break;
      }

      ++a1;
      --a2;
    }

    if (*a1 == 10 || *a1 == 13 || *a1 == 92 && (a1[1] == 10 || a1[1] == 13))
    {
      break;
    }

    if (!i && !a4)
    {
      return -1;
    }

    if (a4 && !a2)
    {
      return v11;
    }

    if (a3 && bid_keycmp(a1, "all", a2) > 0)
    {
      return 1;
    }

    v12 = bid_keyword(a1, a2);
    if (!v12)
    {
      return -1;
    }

    a1 += v12;
    a2 -= v12;
    ++v11;
    if (*a1 == 61)
    {
      v9 = 0;
      ++a1;
      --a2;
      while (1)
      {
        v5 = 0;
        if (a2 > 0)
        {
          v5 = 0;
          if (*a1 != 32)
          {
            v5 = *a1 != 9;
          }
        }

        if (!v5)
        {
          break;
        }

        ++a1;
        --a2;
        v9 = 1;
      }

      if (!a3 && !v9)
      {
        return -1;
      }
    }
  }

  return v11;
}

uint64_t bid_entry(unint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v12 = 0;
  v10 = a1;
  v9 = a1 + a2;
  *a4 = 0;
  while (v10 < v9)
  {
    if (!bid_entry_safe_char[*v10])
    {
      if (*v10 != 32 && *v10 != 9 && *v10 != 13 && *v10 != 10)
      {
        v12 = 0;
      }

      break;
    }

    v12 = 1;
    ++v10;
  }

  v11 = v9 - v10;
  if (v12)
  {
    return bid_keyword_list(v10, v11, 0, *a4);
  }

  v8 = (a1 + a2 - a3);
  v7 = 0;
  if ((v8 - 2) < a1 || *(v8 - 1) != 92 || *(v8 - 2) != 32 && *(v8 - 2) != 9)
  {
    if ((v8 - 1) >= a1 && *(v8 - 1) == 92)
    {
      return -1;
    }

    v6 = 0;
    while (1)
    {
      --v8;
      v5 = 0;
      if (a1 <= v8)
      {
        v5 = 0;
        if (*v8 != 32)
        {
          v5 = *v8 != 9;
        }
      }

      if (!v5)
      {
        break;
      }

      if (!bid_entry_safe_char[*v8])
      {
        return -1;
      }

      ++v7;
      if (*v8 == 47)
      {
        v6 = 1;
      }
    }

    if (!v7 || !v6)
    {
      return -1;
    }

    if (v8[1] == 47)
    {
      return -1;
    }

    v11 = a2 - a3 - v7;
    v10 = a1;
    *a4 = 1;
    return bid_keyword_list(v10, v11, 0, *a4);
  }

  return -1;
}

uint64_t bid_keycmp(char *a1, _BYTE *a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    v4 = 0;
    if (a3 > 0)
    {
      v4 = 0;
      if (*a1)
      {
        v4 = *a2 != 0;
      }
    }

    if (!v4)
    {
      break;
    }

    if (*a1 != *a2)
    {
      return 0;
    }

    --a3;
    ++a1;
    ++a2;
  }

  if (*a2)
  {
    return 0;
  }

  else if (*a1 == 61 || *a1 == 32 || *a1 == 9 || *a1 == 10 || *a1 == 13 || *a1 == 92 && (a1[1] == 10 || a1[1] == 13))
  {
    return i;
  }

  else
  {
    return 0;
  }
}

uint64_t bid_keyword(char *a1, uint64_t a2)
{
  v3 = *a1;
  switch(v3)
  {
    case 'c':
      v6 = bid_keyword_keys_c;
      break;
    case 'd':
    case 'f':
      v6 = bid_keyword_keys_df;
      break;
    case 'g':
      v6 = bid_keyword_keys_g;
      break;
    case 'i':
    case 'l':
      v6 = bid_keyword_keys_il;
      break;
    case 'm':
      v6 = bid_keyword_keys_m;
      break;
    default:
      if (v3 != 111 && v3 != 110)
      {
        switch(v3)
        {
          case 'r':
            v6 = bid_keyword_keys_r;
            break;
          case 's':
            v6 = bid_keyword_keys_s;
            break;
          case 't':
            v6 = bid_keyword_keys_t;
            break;
          case 'u':
            v6 = bid_keyword_keys_u;
            break;
          default:
            return 0;
        }
      }

      else
      {
        v6 = bid_keyword_keys_no;
      }

      break;
  }

  for (i = 0; v6[i]; ++i)
  {
    v4 = bid_keycmp(a1, v6[i], a2);
    if (v4 > 0)
    {
      return v4;
    }
  }

  return 0;
}

uint64_t read_mtree(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  i = 0;
  __s1 = 0;
  j = 0;
  v16 = 0;
  v15 = 0;
  *(a2 + 13) = 0x80000;
  v23[7] = "mtree";
  v18 = 0;
  v17 = 0;
  detect_form(v24, &v15, a3, a4, a5, a6, a7, a8);
  for (i = 1; ; ++i)
  {
    v16 = 0;
    v22 = readline(v24);
    if (!v22)
    {
      v23[9] = v23[8];
      free_options(v18);
      return 0;
    }

    if (v22 < 0)
    {
      free_options(v18);
      return v22;
    }

    while (1)
    {
      v14 = 1;
      if (*__s1 != 32)
      {
        v14 = *__s1 == 9;
      }

      if (!v14)
      {
        break;
      }

      ++__s1;
      --v22;
    }

    if (*__s1 == 35 || *__s1 == 13 || *__s1 == 10 || !*__s1)
    {
      continue;
    }

    for (j = __s1; j < &__s1[v22 - 1]; ++j)
    {
      if (!isprint(*j) && *j != 9)
      {
        v16 = -30;
        break;
      }
    }

    if (v16)
    {
      break;
    }

    if (*__s1 == 47)
    {
      if (v22 > 4 && !strncmp(__s1, "/set", 4uLL))
      {
        if (__s1[4] != 32 && __s1[4] != 9)
        {
          break;
        }

        v16 = process_global_set(v24, &v18, __s1);
      }

      else
      {
        if (v22 <= 6 || strncmp(__s1, "/unset", 6uLL) || __s1[6] != 32 && __s1[6] != 9)
        {
          break;
        }

        v16 = process_global_unset(v24, &v18, __s1);
      }
    }

    else
    {
      v16 = process_add_entry(v24, v23, &v18, __s1, v22, &v17, v15);
    }

    if (v16)
    {
      free_options(v18);
      return v16;
    }
  }

  archive_set_error(v24, 79, "Can't parse line %ju", v8, v9, v10, v11, v12, i);
  free_options(v18);
  return -30;
}

uint64_t parse_file(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v43 = 0;
  memset(__b, 0, sizeof(__b));
  v41 = 0;
  i = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  *(v45 + 57) = 1;
  archive_entry_set_filetype(v47, 0x8000);
  archive_entry_set_size(v47, 0);
  *(v46 + 128) = 0;
  v36 = 0;
  v38 = parse_line(v48, v47, v46, v45, &v36, v5, v6, v7);
  if (*(v45 + 56))
  {
    archive_entry_copy_pathname(v47, *(v45 + 48));
    for (i = __archive_rb_tree_find_node((v46 + 152), *(v45 + 48)); i; i = *(i + 24))
    {
      if (*(i + 56) && !*(i + 57))
      {
        *(i + 57) = 1;
        v37 = parse_line(v48, v47, v46, i, &v36, v8, v9, v10);
        if (v37 < v38)
        {
          v38 = v37;
        }
      }
    }
  }

  else
  {
    v35 = *(v46 + 104);
    if (v35)
    {
      archive_strcat((v46 + 96), "/");
    }

    archive_strcat((v46 + 96), *(v45 + 48));
    archive_entry_copy_pathname(v47, *(v46 + 96));
    if (archive_entry_filetype(v47) != 0x4000)
    {
      *(v46 + 104) = v35;
    }
  }

  if (!*(v46 + 176))
  {
    goto LABEL_80;
  }

  *(v46 + 48) = -1;
  if (*(v46 + 128))
  {
    v43 = *(v46 + 120);
  }

  else
  {
    v43 = archive_entry_pathname(v47);
  }

  if (archive_entry_filetype(v47) == 0x8000 || archive_entry_filetype(v47) == 0x4000)
  {
    v11 = open(v43, 0x1000000);
    *(v46 + 48) = v11;
    __archive_ensure_cloexec_flag(*(v46 + 48));
    if (*(v46 + 48) == -1 && (*__error() != 2 || *(v46 + 128)))
    {
      v34 = v48;
      v12 = __error();
      archive_set_error(v34, *v12, "Can't open %s", v13, v14, v15, v16, v17, v43);
      v38 = -20;
    }
  }

  v41 = __b;
  if ((*(v46 + 48) & 0x80000000) != 0)
  {
    if (lstat(v43, v41) == -1)
    {
      v41 = 0;
    }
  }

  else if (fstat(*(v46 + 48), v41) == -1)
  {
    v33 = v48;
    v18 = __error();
    archive_set_error(v33, *v18, "Could not fstat %s", v19, v20, v21, v22, v23, v43);
    v38 = -20;
    close(*(v46 + 48));
    *(v46 + 48) = -1;
    v41 = 0;
  }

  if (!v41 || (v41->st_mode & 0xF000) == 0x8000 && archive_entry_filetype(v47) == 0x8000 || (v41->st_mode & 0xF000) == 0xA000 && archive_entry_filetype(v47) == 40960 || (v41->st_mode & 0xC000) == 0xC000 && archive_entry_filetype(v47) == 49152 || (v41->st_mode & 0xF000) == 0x2000 && archive_entry_filetype(v47) == 0x2000 || (v41->st_mode & 0xF000) == 0x6000 && archive_entry_filetype(v47) == 24576 || (v41->st_mode & 0xF000) == 0x4000 && archive_entry_filetype(v47) == 0x4000 || (v41->st_mode & 0xF000) == 0x1000 && archive_entry_filetype(v47) == 4096)
  {
    if (v41)
    {
      if (((v36 & 1) == 0 || (v36 & 0x1000) != 0) && (archive_entry_filetype(v47) == 0x2000 || archive_entry_filetype(v47) == 24576))
      {
        archive_entry_set_rdev(v47, v41->st_rdev);
      }

      if ((v36 & 0xC) == 0 || (v36 & 0x1000) != 0)
      {
        archive_entry_set_gid(v47, v41->st_gid);
      }

      if ((v36 & 0x600) == 0 || (v36 & 0x1000) != 0)
      {
        archive_entry_set_uid(v47, v41->st_uid);
      }

      if ((v36 & 0x10) == 0 || (v36 & 0x1000) != 0)
      {
        archive_entry_set_mtime(v47, v41->st_mtimespec.tv_sec, v41->st_mtimespec.tv_nsec);
      }

      if ((v36 & 0x20) == 0 || (v36 & 0x1000) != 0)
      {
        archive_entry_set_nlink(v47, v41->st_nlink);
      }

      if ((v36 & 0x40) == 0 || (v36 & 0x1000) != 0)
      {
        archive_entry_set_perm(v47, v41->st_mode);
      }

      if ((v36 & 0x80) == 0 || (v36 & 0x1000) != 0)
      {
        archive_entry_set_size(v47, v41->st_size);
      }

      archive_entry_set_ino(v47, v41->st_ino);
      archive_entry_set_dev(v47, v41->st_dev);
      archive_entry_linkify(*(v46 + 144), &v47, &v39);
      goto LABEL_80;
    }

    if ((v36 & 0x800) == 0)
    {
LABEL_80:
      v30 = archive_entry_size(v47);
      *(v46 + 168) = v30;
      *(v46 + 40) = 0;
      return v38;
    }

    *v44 = 1;
    return 0;
  }

  else
  {
    if ((*(v46 + 48) & 0x80000000) == 0)
    {
      close(*(v46 + 48));
    }

    *(v46 + 48) = -1;
    if ((v36 & 0x800) != 0)
    {
      *v44 = 1;
    }

    else if (!v38)
    {
      v32 = v48;
      v24 = archive_entry_pathname(v47);
      archive_set_error(v32, -1, "mtree specification has different type for %s", v25, v26, v27, v28, v29, v24);
      return -20;
    }

    return v38;
  }
}

char *__cdecl readline(const char *a1)
{
  v30 = a1;
  v29 = v1;
  v28 = v2;
  v27 = v3;
  __n = 0;
  v25 = 0;
  for (i = 0; ; i = &j[-*v29])
  {
    __s = __archive_read_ahead(v30, 1uLL, &__n, v3, v4, v5, v6, v7);
    if (!__s)
    {
      return 0;
    }

    if ((__n & 0x8000000000000000) != 0)
    {
      return -30;
    }

    v22 = memchr(__s, 10, __n);
    if (v22)
    {
      __n = v22 - __s + 1;
    }

    if (&v25[__n + 1] > v27)
    {
      archive_set_error(v30, 79, "Line too long", v8, v9, v10, v11, v12, v20);
      return -30;
    }

    if (!archive_string_ensure(v29, &v25[__n + 1]))
    {
      break;
    }

    v18 = *v29;
    __memcpy_chk();
    __archive_read_consume(v30, __n);
    v25 += __n;
    v25[*v29] = 0;
    for (j = &i[*v29]; *j; ++j)
    {
      switch(*j)
      {
        case 0xA:
          *v28 = *v29;
          return v25;
        case 0x23:
          if (!v22)
          {
            goto LABEL_25;
          }

          break;
        case 0x5C:
          if (j[1] == 10)
          {
            v25 -= 2;
            v25[*v29] = 0;
            goto LABEL_25;
          }

          if (j[1])
          {
            ++j;
          }

          break;
      }
    }

LABEL_25:
    ;
  }

  archive_set_error(v30, 12, "Can't allocate working buffer", v13, v14, v15, v16, v17, v20);
  return -30;
}

uint64_t process_add_entry(_DWORD *a1, uint64_t a2, uint64_t ***a3, const char *a4, uint64_t a5, uint64_t a6, int a7)
{
  v31 = malloc_type_malloc(0x40uLL, 0x103004084F83F42uLL);
  if (!v31)
  {
    goto LABEL_2;
  }

  v31[4] = 0;
  v31[5] = 0;
  v31[6] = 0;
  *(v31 + 57) = 0;
  *(v31 + 56) = 0;
  if (*a6)
  {
    *(*a6 + 32) = v31;
  }

  else
  {
    *(a2 + 64) = v31;
  }

  *a6 = v31;
  if (a7)
  {
    while (a5 > 0)
    {
      v20 = a4[a5 - 1];
      if (v20 != 13 && v20 != 10 && v20 != 9 && v20 != 32)
      {
        break;
      }

      --a5;
    }

    v27 = a4;
    for (i = 0; i < a5; ++i)
    {
      if (a4[i] == 13 || a4[i] == 10 || a4[i] == 9 || a4[i] == 32)
      {
        v27 = &a4[i + 1];
      }
    }

    v25 = &a4[a5 - v27];
    v26 = v27;
  }

  else
  {
    v25 = strcspn(a4, " \t\r\n");
    a4 += v25;
    v26 = &a4[a5];
  }

  v13 = malloc_type_malloc(v25 + 1, 0xAE4D5522uLL);
  v31[6] = v13;
  if (v13)
  {
    v14 = v31[6];
    __memcpy_chk();
    *(v31[6] + v25) = 0;
    parse_escapes(v31[6], v31);
    v31[3] = 0;
    if (*(v31 + 56))
    {
      if (!__archive_rb_tree_insert_node((a2 + 152), v31))
      {
        node = __archive_rb_tree_find_node((a2 + 152), v31[6]);
        if (node)
        {
          while (*(node + 24))
          {
            node = *(node + 24);
          }

          *(node + 24) = v31;
        }
      }
    }

    for (j = *a3; j; j = *j)
    {
      v15 = strlen(j[1]);
      v22 = add_option(a1, v31 + 5, j[1], v15);
      if (v22)
      {
        return v22;
      }
    }

    while (1)
    {
      v28 = &a4[strspn(a4, " \t\r\n")];
      if (!*v28)
      {
        return 0;
      }

      if (v28 >= v26)
      {
        return 0;
      }

      v36 = v28;
      v29 = &v28[strcspn(v28, " \t\r\n")];
      v16 = strchr(v36, 61);
      v24 = v16 && v16 <= v29 ? v16 - v36 : v29 - v36;
      remove_option(v31 + 5, v36, v24);
      v23 = add_option(a1, v31 + 5, v36, v29 - v36);
      if (v23)
      {
        break;
      }

      a4 = v29;
    }

    return v23;
  }

  else
  {
LABEL_2:
    v7 = __error();
    archive_set_error(a1, *v7, "Can't allocate memory", v8, v9, v10, v11, v12, v18);
    return -30;
  }
}

uint64_t process_global_set(_DWORD *a1, void **a2, uint64_t a3)
{
  for (i = (a3 + 4); ; i = v8)
  {
    v7 = &i[strspn(i, " \t\r\n")];
    if (!*v7)
    {
      return 0;
    }

    v10 = v7;
    v8 = &v7[strcspn(v7, " \t\r\n")];
    v6 = strchr(v10, 61);
    v5 = v6 <= v8 ? v6 - v10 : v8 - v10;
    remove_option(a2, v10, v5);
    v4 = add_option(a1, a2, v10, v8 - v10);
    if (v4)
    {
      break;
    }
  }

  return v4;
}

uint64_t process_global_unset(_DWORD *a1, void ***a2, uint64_t a3)
{
  __s = (a3 + 6);
  if (strchr((a3 + 6), 61))
  {
    return -30;
  }

  else
  {
    while (1)
    {
      v11 = &__s[strspn(__s, " \t\r\n")];
      if (!*v11)
      {
        break;
      }

      v10 = strcspn(v11, " \t\r\n");
      if (v10 == 3 && !strncmp(v11, "all", 3uLL))
      {
        free_options(*a2);
        *a2 = 0;
      }

      else
      {
        remove_option(a2, v11, v10);
      }

      __s = &v11[v10];
    }

    return 0;
  }
}

char *parse_escapes(char *result, uint64_t a2)
{
  v8 = result;
  v6 = result;
  if (a2)
  {
    result = strcmp(result, ".");
    if (!result)
    {
      *(a2 + 56) = 1;
    }
  }

  while (*v8)
  {
    v2 = v8++;
    v5 = *v2;
    if (*v2 == 47 && a2)
    {
      *(a2 + 56) = 1;
    }

    if (v5 == 92)
    {
      v4 = *v8;
      if (v4 == 48)
      {
        if (v8[1] < 48 || v8[1] > 55)
        {
          v5 = 0;
          ++v8;
          goto LABEL_39;
        }
      }

      else if ((v4 - 49) > 2)
      {
        switch(v4)
        {
          case '\\':
            v5 = 92;
            ++v8;
            break;
          case 'a':
            v5 = 7;
            ++v8;
            break;
          case 'b':
            v5 = 8;
            ++v8;
            break;
          case 'f':
            v5 = 12;
            ++v8;
            break;
          case 'n':
            v5 = 10;
            ++v8;
            break;
          case 'r':
            v5 = 13;
            ++v8;
            break;
          case 's':
            v5 = 32;
            ++v8;
            break;
          case 't':
            v5 = 9;
            ++v8;
            break;
          case 'v':
            v5 = 11;
            ++v8;
            break;
        }

        goto LABEL_39;
      }

      if (v8[1] >= 48 && v8[1] <= 55 && v8[2] >= 48 && v8[2] <= 55)
      {
        v5 = ((*v8 - 48) << 6) | (8 * (v8[1] - 48)) | (v8[2] - 48);
        v8 += 3;
      }
    }

LABEL_39:
    v3 = v6++;
    *v3 = v5;
  }

  *v6 = 0;
  return result;
}

uint64_t add_option(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = malloc_type_malloc(0x10uLL, 0x30040E4270A41uLL);
  if (v20)
  {
    v10 = malloc_type_malloc(a4 + 1, 0x45D9BEF5uLL);
    v20[1] = v10;
    if (v10)
    {
      v17 = v20[1];
      __memcpy_chk();
      *(v20[1] + a4) = 0;
      *v20 = *a2;
      *a2 = v20;
      return 0;
    }

    else
    {
      free(v20);
      v11 = __error();
      archive_set_error(a1, *v11, "Can't allocate memory", v12, v13, v14, v15, v16, a1);
      return -30;
    }
  }

  else
  {
    v4 = __error();
    archive_set_error(a1, *v4, "Can't allocate memory", v5, v6, v7, v8, v9, v19);
    return -30;
  }
}

void remove_option(void **a1, const char *a2, size_t a3)
{
  v3 = 0;
  for (i = *a1; i && (strncmp(*(i + 1), a2, a3) || *(*(i + 1) + a3) && *(*(i + 1) + a3) != 61); i = *i)
  {
    v3 = i;
  }

  if (i)
  {
    if (v3)
    {
      *v3 = *i;
    }

    else
    {
      *a1 = *i;
    }

    free(*(i + 1));
    free(i);
  }
}