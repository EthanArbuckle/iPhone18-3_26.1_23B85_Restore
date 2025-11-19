uint64_t parse_line(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  for (i = *(a4 + 40); i; i = *i)
  {
    LODWORD(v9) = parse_keyword(a1, a3, a2, i, a5);
    if (v9 < SHIDWORD(v9))
    {
      HIDWORD(v9) = v9;
    }
  }

  if (HIDWORD(v9) || (*a5 & 0x100) != 0)
  {
    return HIDWORD(v9);
  }

  else
  {
    archive_set_error(a1, 79, "Missing type keyword in mtree specification", a4, a5, a6, a7, a8, v9);
    return -20;
  }
}

uint64_t parse_keyword(_DWORD *a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v62 = a1;
  v61 = a2;
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v57 = 0;
  v56 = 0;
  v56 = *(a4 + 8);
  if (!*v56)
  {
    return 0;
  }

  if (!strcmp(v56, "nochange"))
  {
    *v58 |= 0x1000u;
    return 0;
  }

  if (!strcmp(v56, "optional"))
  {
    *v58 |= 0x800u;
    return 0;
  }

  if (!strcmp(v56, "ignore"))
  {
    return 0;
  }

  v57 = strchr(v56, 61);
  if (!v57)
  {
    v37 = *v56;
    archive_set_error(v62, 79, "Malformed attribute %s (%d)", v5, v6, v7, v8, v9, v56);
    return -20;
  }

  *v57++ = 0;
  v47 = *v56;
  if (v47 == 99)
  {
    if (!strcmp(v56, "content") || !strcmp(v56, "contents"))
    {
      parse_escapes(v57, 0);
      *(v61 + 128) = 0;
      v46 = (v61 + 120);
      if (v57)
      {
        v45 = strlen(v57);
        archive_strncat(v46, v57, v45);
      }

      else
      {
        archive_strncat(v46, 0, 0);
      }

      return 0;
    }

    if (!strcmp(v56, "cksum"))
    {
      return 0;
    }

    goto LABEL_130;
  }

  if (v47 == 100)
  {
    if (strcmp(v56, "device"))
    {
      goto LABEL_130;
    }

    v55 = 0;
    v54 = 0;
    *v58 |= 1u;
    v55 = parse_device(&v54, v62, v57);
    if (!v55)
    {
      archive_entry_set_rdev(v60, v54);
    }

    return v55;
  }

  else
  {
    switch(v47)
    {
      case 'f':
        if (!strcmp(v56, "flags"))
        {
          *v58 |= 2u;
          archive_entry_copy_fflags_text(v60, v57);
          return 0;
        }

        goto LABEL_130;
      case 'g':
        if (!strcmp(v56, "gid"))
        {
          *v58 |= 4u;
          v44 = v60;
          v10 = mtree_atol(&v57, 10);
          archive_entry_set_gid(v44, v10);
          return 0;
        }

        if (!strcmp(v56, "gname"))
        {
          *v58 |= 8u;
          archive_entry_copy_gname(v60, v57);
          return 0;
        }

        goto LABEL_130;
      case 'i':
        if (!strcmp(v56, "inode"))
        {
          v43 = v60;
          v11 = mtree_atol(&v57, 10);
          archive_entry_set_ino(v43, v11);
          return 0;
        }

        goto LABEL_130;
      case 'l':
        if (!strcmp(v56, "link"))
        {
          parse_escapes(v57, 0);
          archive_entry_copy_symlink(v60, v57);
          return 0;
        }

        goto LABEL_130;
      case 'm':
        if (!strcmp(v56, "md5") || !strcmp(v56, "md5digest"))
        {
          return parse_digest(v62, v60, v57, 1, v12, v13, v14, v15);
        }

        if (!strcmp(v56, "mode"))
        {
          if (*v57 >= 48 && *v57 <= 55)
          {
            *v58 |= 0x40u;
            v42 = v60;
            v16 = mtree_atol(&v57, 8);
            archive_entry_set_perm(v42, v16);
            return 0;
          }

          else
          {
            archive_set_error(v62, 79, "Symbolic or non-octal mode %s unsupported", v5, v6, v7, v8, v9, v57);
            return -20;
          }
        }

        goto LABEL_130;
      case 'n':
        if (!strcmp(v56, "nlink"))
        {
          *v58 |= 0x20u;
          v41 = v60;
          v17 = mtree_atol(&v57, 10);
          archive_entry_set_nlink(v41, v17);
          return 0;
        }

        goto LABEL_130;
    }

    if (v47 != 114)
    {
      if (v47 == 115)
      {
        if (!strcmp(v56, "sha1") || !strcmp(v56, "sha1digest"))
        {
          return parse_digest(v62, v60, v57, 3, v18, v19, v20, v21);
        }

        if (!strcmp(v56, "sha256") || !strcmp(v56, "sha256digest"))
        {
          return parse_digest(v62, v60, v57, 4, v22, v23, v24, v25);
        }

        if (!strcmp(v56, "sha384") || !strcmp(v56, "sha384digest"))
        {
          return parse_digest(v62, v60, v57, 5, v26, v27, v28, v29);
        }

        if (!strcmp(v56, "sha512") || !strcmp(v56, "sha512digest"))
        {
          return parse_digest(v62, v60, v57, 6, v30, v31, v32, v33);
        }

        if (!strcmp(v56, "size"))
        {
          v40 = v60;
          v34 = mtree_atol(&v57, 10);
          archive_entry_set_size(v40, v34);
          return 0;
        }
      }

      else
      {
        if (v47 != 116)
        {
          if (v47 == 117)
          {
            if (!strcmp(v56, "uid"))
            {
              *v58 |= 0x200u;
              v38 = v60;
              v35 = mtree_atol(&v57, 10);
              archive_entry_set_uid(v38, v35);
              return 0;
            }

            if (!strcmp(v56, "uname"))
            {
              *v58 |= 0x400u;
              archive_entry_copy_uname(v60, v57);
              return 0;
            }
          }

          goto LABEL_130;
        }

        if (!strcmp(v56, "tags"))
        {
          return 0;
        }

        if (!strcmp(v56, "time"))
        {
          time_t_max = get_time_t_max();
          time_t_min = get_time_t_min();
          v48 = 0;
          *v58 |= 0x10u;
          v51 = mtree_atol(&v57, 10);
          if (*v57 == 46)
          {
            ++v57;
            v48 = mtree_atol(&v57, 10);
            if (v48 < 0)
            {
              v48 = 0;
            }

            else if (v48 > 999999999)
            {
              v48 = 999999999;
            }
          }

          if (v51 <= time_t_max)
          {
            if (v51 < time_t_min)
            {
              v51 = time_t_min;
            }

            archive_entry_set_mtime(v60, v51, v48);
          }

          else
          {
            archive_entry_set_mtime(v60, time_t_max, v48);
          }

          return 0;
        }

        if (!strcmp(v56, "type"))
        {
          v39 = *v57;
          switch(v39)
          {
            case 'b':
              if (!strcmp(v57, "block"))
              {
                *v58 |= 0x100u;
                archive_entry_set_filetype(v60, 24576);
                return 0;
              }

              break;
            case 'c':
              if (!strcmp(v57, "char"))
              {
                *v58 |= 0x100u;
                archive_entry_set_filetype(v60, 0x2000);
                return 0;
              }

              break;
            case 'd':
              if (!strcmp(v57, "dir"))
              {
                *v58 |= 0x100u;
                archive_entry_set_filetype(v60, 0x4000);
                return 0;
              }

              break;
            case 'f':
              if (!strcmp(v57, "fifo"))
              {
                *v58 |= 0x100u;
                archive_entry_set_filetype(v60, 4096);
                return 0;
              }

              if (!strcmp(v57, "file"))
              {
                *v58 |= 0x100u;
                archive_entry_set_filetype(v60, 0x8000);
                return 0;
              }

              break;
            default:
              if (v39 == 108 && !strcmp(v57, "link"))
              {
                *v58 |= 0x100u;
                archive_entry_set_filetype(v60, 40960);
                return 0;
              }

              break;
          }

          archive_set_error(v62, 79, "Unrecognized file type %s; assuming file", v5, v6, v7, v8, v9, v57);
          archive_entry_set_filetype(v60, 0x8000);
          return -20;
        }
      }

LABEL_130:
      archive_set_error(v62, 79, "Unrecognized key %s=%s", v5, v6, v7, v8, v9, v56);
      return -20;
    }

    if (strcmp(v56, "resdevice"))
    {
      if (!strcmp(v56, "rmd160") || !strcmp(v56, "rmd160digest"))
      {
        return parse_digest(v62, v60, v57, 2, v6, v7, v8, v9);
      }

      goto LABEL_130;
    }

    v53 = 0;
    v52 = 0;
    v53 = parse_device(&v52, v62, v57);
    if (!v53)
    {
      archive_entry_set_dev(v60, v52);
    }

    return v53;
  }
}

uint64_t parse_device(_DWORD *a1, _DWORD *a2, char *a3)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v31 = a1;
  v30 = a2;
  __s = a3;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  __memset_chk();
  v27 = strchr(__s, 44);
  if (!v27)
  {
    v24 = mtree_atol(&__s, 0);
    goto LABEL_17;
  }

  v3 = v27++;
  *v3 = 0;
  v25 = pack_find(__s);
  if (v25)
  {
    v26 = 0;
    while (1)
    {
      v28 = la_strsep(&v27, ",");
      if (!v28)
      {
        break;
      }

      if (!*v28)
      {
        archive_set_error(v30, 79, "Missing number", v9, v10, v11, v12, v13, v22);
        v32 = -20;
        goto LABEL_18;
      }

      if (v26 >= 3)
      {
        archive_set_error(v30, 79, "Too many arguments", v9, v10, v11, v12, v13, v22);
        v32 = -20;
        goto LABEL_18;
      }

      v14 = mtree_atol(&v28, 0);
      v15 = v26++;
      v33[v15] = v14;
    }

    if (v26 < 2)
    {
      archive_set_error(v30, 79, "Not enough arguments", v9, v10, v11, v12, v13, v22);
      v32 = -20;
      goto LABEL_18;
    }

    v24 = v25(v26, v33, &v23);
    if (v23)
    {
      archive_set_error(v30, 79, "%s", v16, v17, v18, v19, v20, v23);
      v32 = -20;
      goto LABEL_18;
    }

LABEL_17:
    *v31 = v24;
    v32 = 0;
    goto LABEL_18;
  }

  v32 = -20;
LABEL_18:
  *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t mtree_atol(char **a1, int a2)
{
  v13 = a2;
  if (!a2)
  {
    if (**a1 == 48)
    {
      if ((*a1)[1] == 120 || (*a1)[1] == 88)
      {
        *a1 += 2;
        v13 = 16;
      }

      else
      {
        v13 = 8;
      }
    }

    else
    {
      v13 = 10;
    }
  }

  if (**a1 == 45)
  {
    v9 = 0x8000000000000000 / v13;
    ++*a1;
    v11 = 0;
    for (i = parsedigit(**a1); ; i = parsedigit(v2[1]))
    {
      v6 = 0;
      if ((i & 0x80000000) == 0)
      {
        v6 = i < v13;
      }

      if (!v6)
      {
        break;
      }

      if (v11 < v9 || v11 == v9 && i >= -(0x8000000000000000 % v13))
      {
        return 0x8000000000000000;
      }

      v11 = v11 * v13 - i;
      v2 = (*a1)++;
    }

    return v11;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL / v13;
    v12 = 0;
    for (j = parsedigit(**a1); ; j = parsedigit(v3[1]))
    {
      v5 = 0;
      if ((j & 0x80000000) == 0)
      {
        v5 = j < v13;
      }

      if (!v5)
      {
        break;
      }

      if (v12 > v10 || v12 == v10 && j > 0x7FFFFFFFFFFFFFFFLL % v13)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v12 = v12 * v13 + j;
      v3 = (*a1)++;
    }

    return v12;
  }
}

uint64_t parse_digest(_DWORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = a4;
  switch(a4)
  {
    case 1:
      v20 = 16;
      break;
    case 2:
      v20 = 20;
      break;
    case 3:
      v20 = 20;
      break;
    case 4:
      v20 = 32;
      break;
    case 5:
      v20 = 48;
      break;
    case 6:
      v20 = 64;
      break;
    default:
      archive_set_error(a1, 22, "Internal error: Unknown digest type", a4, a5, a6, a7, a8, v19);
      v30 = -30;
      goto LABEL_23;
  }

  v21 = 2 * v20;
  if (strnlen(a3, v21 + 1) == v21)
  {
    v23 = 0;
    v22 = 0;
    while (v23 < v21)
    {
      v25 = parse_hex_nibble(a3[v23]);
      v24 = parse_hex_nibble(a3[v23 + 1]);
      if (v25 == -1 || v24 == -1)
      {
        archive_set_error(a1, 79, "invalid digest data, ignoring", v13, v14, v15, v16, v17, v19);
        v30 = -20;
        goto LABEL_23;
      }

      v31[v22] = v24 | (16 * v25);
      v23 += 2;
      ++v22;
    }

    v30 = archive_entry_set_digest(a2, v26);
  }

  else
  {
    archive_set_error(a1, 79, "incorrect digest length, ignoring", v8, v9, v10, v11, v12, v19);
    v30 = -20;
  }

LABEL_23:
  *MEMORY[0x1E69E9840];
  return v30;
}

char *la_strsep(const char **a1, const char *a2)
{
  if (!a1 || !*a1 || !**a1)
  {
    return 0;
  }

  __s = *a1;
  v4 = *a1;
  v6 = &v4[strcspn(*a1, a2)];
  if (*v6)
  {
    v2 = v6++;
    *v2 = 0;
  }

  *a1 = v6;
  return __s;
}

uint64_t parsedigit(char a1)
{
  if (a1 < 48 || a1 > 57)
  {
    if (a1 < 97 || a1 > 102)
    {
      if (a1 < 65 || a1 > 70)
      {
        return -1;
      }

      else
      {
        return (a1 - 65);
      }
    }

    else
    {
      return (a1 - 97);
    }
  }

  else
  {
    return (a1 - 48);
  }
}

uint64_t parse_hex_nibble(char a1)
{
  if (a1 < 48 || a1 > 57)
  {
    if (a1 < 97 || a1 > 102)
    {
      return -1;
    }

    else
    {
      return (a1 - 87);
    }
  }

  else
  {
    return (a1 - 48);
  }
}

uint64_t archive_write_set_format_cpio_odc(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_cpio_odc") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x1020040D6C25179uLL);
    if (v8)
    {
      *(a1 + 248) = v8;
      *(a1 + 256) = "cpio";
      *(a1 + 272) = archive_write_odc_options;
      *(a1 + 288) = archive_write_odc_header;
      *(a1 + 296) = archive_write_odc_data;
      *(a1 + 280) = archive_write_odc_finish_entry;
      *(a1 + 304) = archive_write_odc_close;
      *(a1 + 312) = archive_write_odc_free;
      *(a1 + 16) = 65537;
      *(a1 + 24) = "POSIX cpio";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate cpio data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_write_odc_options(uint64_t a1, const char *a2, const char *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = *(a1 + 248);
  v22 = -25;
  if (!strcmp(a2, "hdrcharset"))
  {
    if (v24 && *v24)
    {
      *(v23 + 40) = archive_string_conversion_to_charset(v26, v24, 0);
      if (*(v23 + 40))
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
      archive_set_error(v26, -1, "%s: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, *(v26 + 32));
    }

    return v22;
  }

  else if (!strcmp(v25, "starting-inode"))
  {
    if (v24 && *v24)
    {
      __endptr = 0;
      v20 = strtoll(v24, &__endptr, 0);
      if ((!*__endptr || *__endptr == 46) && v20)
      {
        *(v23 + 8) = v20;
        return 0;
      }

      else
      {
        archive_set_error(v26, -1, "%s: starting-inode value invalid", v13, v14, v15, v16, v17, *(v26 + 32));
        return -30;
      }
    }

    else
    {
      archive_set_error(v26, -1, "%s: starting-inode option needs an integer value", v8, v9, v10, v11, v12, *(v26 + 32));
    }

    return v22;
  }

  else if (!strcmp(v25, "skip-trailer"))
  {
    v19 = 0;
    if (v24)
    {
      v19 = *v24 != 0;
    }

    *(v23 + 60) = v19;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_write_odc_header(_DWORD *a1, _DWORD *a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  if (archive_entry_filetype(a2) || archive_entry_hardlink(v23))
  {
    v20 = v23;
    sconv = get_sconv(v24);
    if (_archive_entry_pathname_l(v23, &v22, &v21, sconv) && *__error() == 12)
    {
      archive_set_error(v24, 12, "Can't allocate memory for Pathname", v8, v9, v10, v11, v12, v20);
      return -30;
    }

    else if (v21 && v22 && *v22)
    {
      if (archive_entry_size_is_set(v23) && (archive_entry_size(v23) & 0x8000000000000000) == 0)
      {
        return write_header(v24, v23);
      }

      else
      {
        archive_set_error(v24, -1, "Size required", v13, v14, v15, v16, v17, v20);
        return -25;
      }
    }

    else
    {
      archive_set_error(v24, -1, "Pathname required", v8, v9, v10, v11, v12, v20);
      return -25;
    }
  }

  else
  {
    archive_set_error(v24, -1, "Filetype required", v2, v3, v4, v5, v6, v19);
    return -25;
  }
}

uint64_t archive_write_odc_data(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *v5)
  {
    v6 = *v5;
  }

  v4 = __archive_write_output(a1, a2, v6);
  *v5 -= v6;
  if (v4 < 0)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t archive_write_odc_close(uint64_t a1)
{
  v3 = 0;
  if (!*(*(a1 + 248) + 60))
  {
    v2 = archive_entry_new2(0);
    archive_entry_set_nlink(v2, 1);
    archive_entry_set_size(v2, 0);
    archive_entry_set_pathname(v2, "TRAILER!!!");
    v3 = write_header(a1, v2);
    archive_entry_free(v2);
  }

  return v3;
}

uint64_t archive_write_odc_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  free(v2[2]);
  free(v2);
  *(a1 + 248) = 0;
  return 0;
}

uint64_t get_sconv(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = *(v3 + 40);
  if (!v2)
  {
    if (!*(v3 + 56))
    {
      *(v3 + 48) = archive_string_default_conversion_for_write();
      *(v3 + 56) = 1;
    }

    return *(v3 + 48);
  }

  return v2;
}

uint64_t write_header(uint64_t a1, _DWORD *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v60 = a1;
  v59 = a2;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  sconv = 0;
  v50 = 0;
  v49 = 0;
  v58 = *(a1 + 248);
  v53 = 0;
  sconv = get_sconv(a1);
  v50 = 0;
  v54 = _archive_entry_pathname_l(v59, &v56, &v49, sconv);
  if (v54)
  {
    if (*__error() == 12)
    {
      archive_set_error(v60, 12, "Can't allocate memory for Pathname", v2, v3, v4, v5, v6, v44);
      v53 = -30;
      goto LABEL_34;
    }

    v48 = v60;
    v47 = archive_entry_pathname(v59);
    archive_string_conversion_charset_name(sconv);
    archive_set_error(v48, 79, "Can't translate pathname '%s' to %s", v7, v8, v9, v10, v11, v47);
    v53 = -20;
  }

  v55 = v49 + 1;
  memset(__b, 0, sizeof(__b));
  format_octal_0(29127, __b, 6);
  v12 = archive_entry_dev(v59);
  format_octal_0(v12, &__b[6], 6);
  v52 = synthesize_ino_value(v58, v59);
  if (v52 < 0)
  {
    archive_set_error(v60, 12, "No memory for ino translation table", v13, v14, v15, v16, v17, v44);
    v53 = -30;
  }

  else if (v52 < 0x40000)
  {
    format_octal_0(v52 & 0x3FFFF, &__b[12], 6);
    v18 = archive_entry_mode(v59);
    format_octal_0(v18, &__b[18], 6);
    v19 = archive_entry_uid(v59);
    format_octal_0(v19, &__b[24], 6);
    v20 = archive_entry_gid(v59);
    format_octal_0(v20, &__b[30], 6);
    v21 = archive_entry_nlink(v59);
    format_octal_0(v21, &__b[36], 6);
    if (archive_entry_filetype(v59) == 24576 || archive_entry_filetype(v59) == 0x2000)
    {
      v22 = archive_entry_rdev(v59);
      format_octal_0(v22, &__b[42], 6);
    }

    else
    {
      format_octal_0(0, &__b[42], 6);
    }

    v23 = archive_entry_mtime(v59);
    format_octal_0(v23, &__b[48], 11);
    format_octal_0(v55, &__b[59], 6);
    if (archive_entry_filetype(v59) != 0x8000)
    {
      archive_entry_set_size(v59, 0);
    }

    v54 = _archive_entry_symlink_l(v59, &v57, &v49, sconv);
    if (v54)
    {
      if (*__error() == 12)
      {
        archive_set_error(v60, 12, "Can't allocate memory for Linkname", v24, v25, v26, v27, v28, v44);
        v53 = -30;
        goto LABEL_34;
      }

      v46 = v60;
      v45 = archive_entry_symlink(v59);
      archive_string_conversion_charset_name(sconv);
      archive_set_error(v46, 79, "Can't translate linkname '%s' to %s", v29, v30, v31, v32, v33, v45);
      v53 = -20;
    }

    if (v49 && v57 && *v57)
    {
      v34 = strlen(v57);
      v54 = format_octal_0(v34, &__b[65], 11);
    }

    else
    {
      v40 = archive_entry_size(v59);
      v54 = format_octal_0(v40, &__b[65], 11);
    }

    if (v54)
    {
      archive_set_error(v60, 34, "File is too large for cpio format.", v35, v36, v37, v38, v39, v44);
      v53 = -25;
    }

    else
    {
      v54 = __archive_write_output(v60, __b, 76);
      if (v54)
      {
        v53 = -30;
      }

      else
      {
        v54 = __archive_write_output(v60, v56, v55);
        if (v54)
        {
          v53 = -30;
        }

        else
        {
          v41 = archive_entry_size(v59);
          *v58 = v41;
          if (v57)
          {
            if (*v57)
            {
              v42 = strlen(v57);
              v54 = __archive_write_output(v60, v57, v42);
              if (v54)
              {
                v53 = -30;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    archive_set_error(v60, 34, "Too many files for this cpio format", v13, v14, v15, v16, v17, v44);
    v53 = -30;
  }

LABEL_34:
  archive_entry_free(v50);
  *MEMORY[0x1E69E9840];
  return v53;
}

uint64_t format_octal_0(uint64_t a1, _BYTE *a2, char a3)
{
  v5 = (1 << (3 * a3)) - 1;
  if (a1 < 0 || a1 > v5)
  {
    format_octal_recursive(v5, a2, a3);
    return -1;
  }

  else
  {
    format_octal_recursive(a1, a2, a3);
    return 0;
  }
}

uint64_t synthesize_ino_value(uint64_t a1, uint64_t a2)
{
  v9 = archive_entry_ino64(a2);
  if (v9)
  {
    if (archive_entry_nlink(a2) >= 2)
    {
      for (i = 0; i < *(a1 + 32); ++i)
      {
        if (*(*(a1 + 16) + 16 * i) == v9)
        {
          return *(*(a1 + 16) + 16 * i + 8);
        }
      }

      v3 = *(a1 + 8) + 1;
      *(a1 + 8) = v3;
      v8 = v3;
      if (*(a1 + 24) <= *(a1 + 32))
      {
        if (*(a1 + 24) >= 0x200uLL)
        {
          v5 = 2 * *(a1 + 24);
        }

        else
        {
          v5 = 512;
        }

        v6 = malloc_type_realloc(*(a1 + 16), 16 * v5, 0x1000040D9A13B51uLL);
        if (!v6)
        {
          return -1;
        }

        *(a1 + 24) = v5;
        *(a1 + 16) = v6;
      }

      *(*(a1 + 16) + 16 * *(a1 + 32)) = v9;
      *(*(a1 + 16) + 16 * (*(a1 + 32))++ + 8) = v8;
      return v8;
    }

    v2 = *(a1 + 8) + 1;
    *(a1 + 8) = v2;
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t format_octal_recursive(uint64_t a1, _BYTE *a2, int a3)
{
  if (!a3)
  {
    return a1;
  }

  v3 = format_octal_recursive(a1, a2 + 1, (a3 - 1));
  *a2 = (v3 & 7) + 48;
  return v3 >> 3;
}

uint64_t archive_read_support_format_raw(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_raw") == -30)
  {
    return -30;
  }

  else
  {
    v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x10000400CE834B2uLL);
    if (v10)
    {
      register_format = __archive_read_register_format(a1, v10, "raw", archive_read_format_raw_bid, 0, archive_read_format_raw_read_header, archive_read_format_raw_read_data, archive_read_format_raw_read_data_skip, 0, archive_read_format_raw_cleanup, 0, 0);
      if (register_format)
      {
        free(v10);
      }

      return register_format;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate raw_info data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t archive_read_format_raw_bid(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 1 && __archive_read_ahead(a1, 1uLL, 0, a4, a5, a6, a7, a8))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_raw_read_header(uint64_t a1, uint64_t a2)
{
  if (*(**(a1 + 2072) + 16))
  {
    return 1;
  }

  else
  {
    *(a1 + 16) = 589824;
    *(a1 + 24) = "raw";
    archive_entry_set_pathname(a2, "data");
    archive_entry_set_filetype(a2, 0x8000);
    archive_entry_set_perm(a2, 420);
    return __archive_read_header(a1, a2);
  }
}

uint64_t archive_read_format_raw_read_data(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v10 = 0;
  v11 = **(a1 + 2072);
  if (*(v11 + 8))
  {
    __archive_read_consume(v15, *(v11 + 8));
    *(v11 + 8) = 0;
  }

  if (*(v11 + 16))
  {
    return 1;
  }

  else
  {
    v8 = __archive_read_ahead(v15, 1uLL, &v10, a4, a5, a6, a7, a8);
    *v14 = v8;
    if (v10 <= 0)
    {
      if (v10)
      {
        *v13 = 0;
        *v12 = *v11;
        return v10;
      }

      else
      {
        *(v11 + 16) = 1;
        *v13 = 0;
        *v12 = *v11;
        return 1;
      }
    }

    else
    {
      *v13 = v10;
      *v12 = *v11;
      *v11 += *v13;
      *(v11 + 8) = v10;
      return 0;
    }
  }
}

uint64_t archive_read_format_raw_read_data_skip(uint64_t a1)
{
  v2 = **(a1 + 2072);
  if (*(v2 + 8))
  {
    __archive_read_consume(a1, *(v2 + 8));
    *(v2 + 8) = 0;
  }

  *(v2 + 16) = 1;
  return 0;
}

uint64_t archive_read_format_raw_cleanup(uint64_t a1)
{
  free(**(a1 + 2072));
  **(a1 + 2072) = 0;
  return 0;
}

uint64_t archive_read_support_format_gnutar(int *a1)
{
  if (__archive_check_magic(a1, 14594245, 1, "archive_read_support_format_gnutar") == -30)
  {
    return -30;
  }

  else
  {
    return archive_read_support_format_tar(a1);
  }
}

uint64_t archive_read_format_tar_options(uint64_t a1, const char *a2, const char *a3)
{
  v13 = -25;
  v14 = **(a1 + 2072);
  if (!strcmp(a2, "compat-2x"))
  {
    v12 = 0;
    if (a3)
    {
      v12 = *a3 != 0;
    }

    *(v14 + 436) = v12;
    *(v14 + 432) = *(v14 + 436);
    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v14 + 400) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v14 + 400))
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
      archive_set_error(a1, -1, "tar: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v9);
    }

    return v13;
  }

  else if (!strcmp(a2, "mac-ext"))
  {
    v11 = 0;
    if (a3)
    {
      v11 = *a3 != 0;
    }

    *(v14 + 440) = v11;
    return 0;
  }

  else if (!strcmp(a2, "read_concatenated_archives"))
  {
    v10 = 0;
    if (a3)
    {
      v10 = *a3 != 0;
    }

    *(v14 + 444) = v10;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t tar_atol256(_BYTE *a1, unint64_t a2)
{
  v8 = a1;
  v6 = *a1;
  if ((*a1 & 0x40) != 0)
  {
    v5 = -1;
    v7 = v6 | 0x80;
    v9 = -1;
  }

  else
  {
    v5 = 0;
    v7 = v6 & 0x7F;
    v9 = 0;
  }

  while (a2 > 8)
  {
    --a2;
    if (v7 != v5)
    {
      v2 = 0x8000000000000000;
      if (!v5)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      return v2;
    }

    v7 = *++v8;
  }

  if (((v7 ^ v5) & 0x80) != 0)
  {
    v3 = 0x8000000000000000;
    if (!v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return v3;
  }

  else
  {
    while (--a2)
    {
      v9 = v7 | (v9 << 8);
      v7 = *++v8;
    }

    return v7 | (v9 << 8);
  }
}

uint64_t header_Solaris_ACL(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v29 = tar_atol((a4 + 124), 0xCuLL);
  body_to_string = read_body_to_string(a1, a2, a2, a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      v22 = *a2;
      v20 = *a2;
      v24 = 0;
      while (1)
      {
        v19 = 0;
        if (*v20)
        {
          v19 = v20 < v22 + v29;
        }

        if (!v19)
        {
          break;
        }

        if (*v20 < 48 || *v20 > 55)
        {
          archive_set_error(a1, -1, "Malformed Solaris ACL attribute (invalid digit)", v5, v6, v7, v8, v9, v17);
          return -20;
        }

        v24 = 8 * v24 + *v20 - 48;
        if (v24 > 0xFFFFFF)
        {
          archive_set_error(a1, -1, "Malformed Solaris ACL attribute (count too large)", v5, v6, v7, v8, v9, v17);
          return -20;
        }

        ++v20;
      }

      if ((v24 & 0xFFFC0000) == 0x40000)
      {
        v25 = 256;
      }

      else
      {
        if ((v24 & 0xFFFC0000) != 0xC0000)
        {
          archive_set_error(a1, -1, "Malformed Solaris ACL attribute (unsupported type %o)", v5, v6, v7, v8, v9, v24);
          return -20;
        }

        v25 = 15360;
      }

      v21 = v20 + 1;
      if (v21 < v22 + v29)
      {
        v30 = v29 - &v21[-v22];
        v23 = v21;
        while (1)
        {
          v18 = 0;
          if (*v21)
          {
            v18 = v21 < v23 + v30;
          }

          if (!v18)
          {
            break;
          }

          ++v21;
        }

        if (a2[52] || (a2[52] = archive_string_conversion_from_charset(a1, "UTF-8", 1)) != 0)
        {
          a2[48] = 0;
          archive_strncat(a2 + 47, v23, &v21[-v23]);
          v10 = archive_entry_acl(a3);
          v28 = archive_acl_from_text_l(v10, a2[47], v25, a2[52]);
          if (v28)
          {
            if (*__error() == 12)
            {
              archive_set_error(a1, 12, "Can't allocate memory for ACL", v11, v12, v13, v14, v15, v17);
            }

            else
            {
              archive_set_error(a1, -1, "Malformed Solaris ACL attribute (unparsable)", v11, v12, v13, v14, v15, v17);
            }
          }

          return v28;
        }

        else
        {
          return -30;
        }
      }

      else
      {
        archive_set_error(a1, -1, "Malformed Solaris ACL attribute (body overflow)", v5, v6, v7, v8, v9, v17);
        return -20;
      }
    }

    else
    {
      return header;
    }
  }
}

uint64_t header_pax_global(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, (a2 + 216), a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    return tar_read_header(a1, a2, a3, a5);
  }
}

uint64_t header_longlink(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, (a2 + 144), a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      archive_entry_copy_link(a3, *(a2 + 144));
      return 0;
    }

    else
    {
      return header;
    }
  }
}

uint64_t header_longname(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  body_to_string = read_body_to_string(a1, a2, (a2 + 168), a4, a5);
  if (body_to_string)
  {
    return body_to_string;
  }

  else
  {
    header = tar_read_header(a1, a2, a3, a5);
    if (!header || header == -20)
    {
      if (_archive_entry_copy_pathname_l(a3, *(a2 + 168), *(a2 + 176), *(a2 + 408)))
      {
        return set_conversion_failed_error(a1, *(a2 + 408), "Pathname");
      }

      return header;
    }

    else
    {
      return header;
    }
  }
}

uint64_t header_gnutar(_DWORD *a1, uint64_t a2, _DWORD *a3, _BYTE *a4, unint64_t *a5)
{
  v9 = header_common(a1, a2, a3, a4);
  if (v9 == -30)
  {
    return -30;
  }

  else if (_archive_entry_copy_pathname_l(a3, a4, 0x64uLL, *(a2 + 408)) && (LODWORD(v9) = set_conversion_failed_error(a1, *(a2 + 408), "Pathname"), v9 == -30))
  {
    return -30;
  }

  else if (_archive_entry_copy_uname_l(a3, a4 + 265, 0x20uLL, *(a2 + 408)) && (LODWORD(v9) = set_conversion_failed_error(a1, *(a2 + 408), "Uname"), v9 == -30))
  {
    return -30;
  }

  else
  {
    if (!_archive_entry_copy_gname_l(a3, a4 + 297, 0x20uLL, *(a2 + 408)) || (LODWORD(v9) = set_conversion_failed_error(a1, *(a2 + 408), "Gname"), v9 != -30))
    {
      if (a4[156] == 51 || a4[156] == 52)
      {
        v5 = tar_atol(a4 + 329, 8uLL);
        archive_entry_set_rdevmajor(a3, v5);
        v6 = tar_atol(a4 + 337, 8uLL);
        archive_entry_set_rdevminor(a3, v6);
      }

      else
      {
        archive_entry_set_rdev(a3, 0);
      }

      *(a2 + 296) = -*(a2 + 280) & 0x1FFLL;
      v10 = tar_atol(a4 + 345, 0xCuLL);
      if (v10 > 0)
      {
        archive_entry_set_atime(a3, v10, 0);
      }

      v11 = tar_atol(a4 + 357, 0xCuLL);
      if (v11 > 0)
      {
        archive_entry_set_ctime(a3, v11, 0);
      }

      if (a4[483])
      {
        *(a2 + 312) = tar_atol(a4 + 483, 0xCuLL);
        archive_entry_set_size(a3, *(a2 + 312));
        *(a2 + 448) = 1;
      }

      if (a4[386])
      {
        if (gnu_sparse_old_read(a1, a2, a4, a5))
        {
          return -30;
        }
      }

      else
      {
        v7 = a4[482];
      }

      return v9;
    }

    return -30;
  }
}

uint64_t header_old_tar(_DWORD *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  if (_archive_entry_copy_pathname_l(a3, a4, 0x64uLL, a2[51]) && (v6 = set_conversion_failed_error(a1, a2[51], "Pathname"), v6 == -30))
  {
    return -30;
  }

  else
  {
    v5 = header_common(a1, a2, a3, a4);
    if (v6 > v5)
    {
      v6 = v5;
    }

    a2[37] = -a2[35] & 0x1FFLL;
    return v6;
  }
}

uint64_t gnu_sparse_10_read(char *a1, uint64_t a2, unint64_t *a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  gnu_clear_sparse_list(a2);
  v6 = *(v13 + 280);
  v10 = gnu_sparse_10_atol(v14, v13, &v6);
  if (v10 < 0)
  {
    return -30;
  }

  while (1)
  {
    v3 = v10--;
    if (v3 <= 0)
    {
      break;
    }

    v9 = gnu_sparse_10_atol(v14, v13, &v6);
    if (v9 < 0)
    {
      return -30;
    }

    v8 = gnu_sparse_10_atol(v14, v13, &v6);
    if (v8 < 0)
    {
      return -30;
    }

    if (gnu_add_sparse_entry(v14, v13, v9, v8))
    {
      return -30;
    }
  }

  tar_flush_unconsumed(v14, v12);
  v11 = *(v13 + 280) - v6;
  v7 = -v11 & 0x1FF;
  if (v7 > v6)
  {
    return -30;
  }

  v5 = v7;
  if (v5 == __archive_read_consume(v14, v7))
  {
    return v11 + v7;
  }

  else
  {
    return -30;
  }
}

uint64_t set_conversion_failed_error(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (*__error() == 12)
  {
    archive_set_error(a1, 12, "Can't allocate memory for %s", v3, v4, v5, v6, v7, a3);
    return -30;
  }

  else
  {
    archive_string_conversion_charset_name(a2);
    archive_set_error(a1, 79, "%s can't be converted from %s to current locale.", v8, v9, v10, v11, v12, a3);
    return -20;
  }
}

uint64_t gnu_sparse_01_parse(_DWORD *a1, uint64_t a2, _BYTE *a3)
{
  v6 = -1;
  while (1)
  {
    for (i = a3; ; ++i)
    {
      v4 = 0;
      if (*i)
      {
        v4 = *i != 44;
      }

      if (!v4)
      {
        break;
      }

      if (*i < 48 || *i > 57)
      {
        return -20;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = tar_atol10(a3, i - a3);
      if ((v6 & 0x8000000000000000) != 0)
      {
        return -20;
      }
    }

    else
    {
      v5 = tar_atol10(a3, i - a3);
      if ((v5 & 0x8000000000000000) != 0)
      {
        return -20;
      }

      if (gnu_add_sparse_entry(a1, a2, v6, v5))
      {
        return -30;
      }

      v6 = -1;
    }

    if (!*i)
    {
      break;
    }

    a3 = i + 1;
  }

  return 0;
}

uint64_t pax_attribute_acl(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a5;
  if (a5 == 256 || a5 == 512 || a5 == 15360)
  {
    if (*(a2 + 416) || (*(a2 + 416) = archive_string_conversion_from_charset(a1, "UTF-8", 1)) != 0)
    {
      v8 = archive_entry_acl(a3);
      v15 = archive_acl_from_text_l(v8, a4, v16, *(a2 + 416));
      if (v15)
      {
        if (v15 == -30)
        {
          archive_set_error(a1, 12, "%s %s", v9, v10, v11, v12, v13, "Can't allocate memory for ");
          return -30;
        }

        archive_set_error(a1, -1, "%s %s", v9, v10, v11, v12, v13, "Parse error: ");
      }

      return v15;
    }

    return -30;
  }

  else
  {
    archive_set_error(a1, -1, "Unknown ACL type: %d", a4, a5, a6, a7, a8, a5);
    return -30;
  }
}

uint64_t solaris_sparse_parse(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = 1;
  v7 = 0;
  if (*a4 == 32)
  {
    v10 = a4 + 1;
    while (1)
    {
      for (i = v10; ; ++i)
      {
        v5 = 0;
        if (*i)
        {
          v5 = *i != 32;
        }

        if (!v5)
        {
          break;
        }

        if (*i < 48 || *i > 57)
        {
          return -20;
        }
      }

      v8 = v7;
      v7 = tar_atol10(v10, i - v10);
      if (v7 < 0)
      {
        return -20;
      }

      if (v8 < v7)
      {
        if (gnu_add_sparse_entry(a1, a2, v8, v7 - v8))
        {
          return -30;
        }

        *(*(a2 + 336) + 24) = v6;
      }

      if (!*i)
      {
        break;
      }

      v10 = i + 1;
      v6 = !v6;
    }

    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t tohex(int a1)
{
  if (a1 < 48 || a1 > 57)
  {
    if (a1 < 65 || a1 > 70)
    {
      if (a1 < 97 || a1 > 102)
      {
        return -1;
      }

      else
      {
        return (a1 - 87);
      }
    }

    else
    {
      return (a1 - 55);
    }
  }

  else
  {
    return (a1 - 48);
  }
}

uint64_t gnu_sparse_old_read(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v15 = 0;
  if (gnu_sparse_old_parse(a1, a2, (a3 + 386), 4))
  {
    return -30;
  }

  else if (*(v19 + 482))
  {
    do
    {
      tar_flush_unconsumed(v21, v18);
      v16 = __archive_read_ahead(v21, 0x200uLL, &v17, v4, v5, v6, v7, v8);
      if (v17 < 0)
      {
        return -30;
      }

      if (v17 < 512)
      {
        archive_set_error(v21, 79, "Truncated tar archive detected while reading sparse file data", v9, v10, v11, v12, v13, v15);
        return -30;
      }

      *v18 = 512;
      v15 = v16;
      if (gnu_sparse_old_parse(v21, v20, v16, 21))
      {
        return -30;
      }
    }

    while (v16[504]);
    if (*(v20 + 328))
    {
      *(v20 + 288) = *(*(v20 + 328) + 8);
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t gnu_sparse_old_parse(_DWORD *a1, uint64_t a2, _BYTE *a3, int a4)
{
  while (1)
  {
    v7 = 0;
    if (a4 > 0)
    {
      v7 = *a3 != 0;
    }

    if (!v7)
    {
      break;
    }

    v6 = tar_atol(a3, 0xCuLL);
    v4 = tar_atol(a3 + 12, 0xCuLL);
    if (gnu_add_sparse_entry(a1, a2, v6, v4))
    {
      return -30;
    }

    a3 += 24;
    --a4;
  }

  return 0;
}

uint64_t gnu_sparse_10_atol(const char *a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  do
  {
    if (*a3 < 100)
    {
      v4 = *a3;
    }

    v6 = readline_0(a1);
    if (v6 <= 0)
    {
      return -30;
    }

    *a3 -= v6;
  }

  while (MEMORY[0] == 35);
  v8 = 0;
  while (v6 > 0)
  {
    if (*v7 == 10)
    {
      return v8;
    }

    if (*v7 < 48 || *v7 >= 58)
    {
      return -20;
    }

    v5 = *v7 - 48;
    if (v8 > 0xCCCCCCCCCCCCCCCLL || v8 == 0xCCCCCCCCCCCCCCCLL && v5 > 7)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = 10 * v8 + v5;
    }

    ++v7;
    --v6;
  }

  return -20;
}

char *__cdecl readline_0(const char *a1)
{
  v36 = a1;
  v35 = v1;
  v34 = v2;
  v33 = v3;
  v32 = v4;
  __n = 0;
  v30 = 0;
  tar_flush_unconsumed(a1, v4);
  __s = __archive_read_ahead(v36, 1uLL, &__n, v5, v6, v7, v8, v9);
  if (__n <= 0)
  {
    return -30;
  }

  v27 = memchr(__s, 10, __n);
  if (v27)
  {
    __n = v27 + 1 - __s;
    if (__n <= v33)
    {
      *v32 = __n;
      *v34 = __s;
      return __n;
    }
  }

  else
  {
    *v32 = __n;
    while (&v30[__n] <= v33)
    {
      if (!archive_string_ensure(v35 + 240, &v30[__n]))
      {
        archive_set_error(v36, 12, "Can't allocate working buffer", v15, v16, v17, v18, v19, &__n);
        return -30;
      }

      v20 = *(v35 + 240);
      __memcpy_chk();
      tar_flush_unconsumed(v36, v32);
      v30 += __n;
      if (v27)
      {
        *v34 = *(v35 + 240);
        return v30;
      }

      __sa = __archive_read_ahead(v36, 1uLL, &__n, v21, v22, v23, v24, v25);
      if (__n <= 0)
      {
        return -30;
      }

      v27 = memchr(__sa, 10, __n);
      if (v27)
      {
        __n = v27 + 1 - __sa;
      }

      *v32 = __n;
    }
  }

  archive_set_error(v36, 79, "Line too long", v10, v11, v12, v13, v14, &__n);
  return -30;
}

uint64_t *acl_new_entry(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((a2 & 0x3C00) != 0)
  {
    if ((*(a1 + 48) & 0xFFFFC3FF) != 0)
    {
      return 0;
    }

    if ((a3 & 0x80FF0006) != 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 0x300) == 0)
    {
      return 0;
    }

    if ((*(a1 + 48) & 0xFFFFFCFF) != 0)
    {
      return 0;
    }

    if ((a3 & 0xFFFFFFF8) != 0)
    {
      return 0;
    }
  }

  if ((a4 - 10001) > 3)
  {
    if (a4 != 10006 && a4 != 10005)
    {
      if (a4 != 10107)
      {
        return 0;
      }

      if ((a2 & 0xFFFFC3FF) != 0)
      {
        return 0;
      }
    }

    else if ((a2 & 0xFFFFFCFF) != 0)
    {
      return 0;
    }
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  v7 = *(a1 + 8);
  v6 = 0;
  while (v7)
  {
    if ((a2 & 0x3C00) == 0 && *(v7 + 2) == a2 && *(v7 + 3) == a4 && *(v7 + 5) == a5 && (a5 != -1 || a4 != 10001 && a4 != 10003))
    {
      *(v7 + 4) = a3;
      return v7;
    }

    v6 = v7;
    v7 = *v7;
  }

  v8 = malloc_type_calloc(1uLL, 0x80uLL, 0x10300404B7343C4uLL);
  if (!v8)
  {
    return 0;
  }

  if (v6)
  {
    *v6 = v8;
  }

  else
  {
    *(a1 + 8) = v8;
  }

  v8[2] = a2;
  v8[3] = a4;
  v8[5] = a5;
  v8[4] = a3;
  *(a1 + 48) |= a2;
  return v8;
}

uint64_t archive_acl_add_entry(_WORD *a1, int a2, int a3, int a4, int a5, const char *a6)
{
  if (acl_special(a1, a2, a3, a4))
  {
    v7 = acl_new_entry(a1, a2, a3, a4, a5);
    if (v7)
    {
      if (a6 && *a6)
      {
        archive_mstring_copy_mbs((v7 + 3), a6);
      }

      else
      {
        archive_mstring_clean((v7 + 3));
      }

      return 0;
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

uint64_t acl_special(_WORD *a1, int a2, int a3, int a4)
{
  if (a2 != 256 || (a3 & 0xFFFFFFF8) != 0)
  {
    return 1;
  }

  switch(a4)
  {
    case 10002:
      *a1 &= 0xFE3Fu;
      *a1 |= (a3 & 7) << 6;
      return 0;
    case 10004:
      *a1 &= 0xFFC7u;
      *a1 |= 8 * (a3 & 7);
      return 0;
    case 10006:
      *a1 &= 0xFFF8u;
      *a1 |= a3 & 7;
      return 0;
    default:
      return 1;
  }
}

uint64_t archive_acl_add_entry_w_len(_WORD *a1, int a2, int a3, int a4, int a5, const __int32 *a6, size_t a7)
{
  if (acl_special(a1, a2, a3, a4))
  {
    v8 = acl_new_entry(a1, a2, a3, a4, a5);
    if (v8)
    {
      if (a6 && *a6 && a7)
      {
        archive_mstring_copy_wcs_len((v8 + 3), a6, a7);
      }

      else
      {
        archive_mstring_clean((v8 + 3));
      }

      return 0;
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

uint64_t archive_acl_count(uint64_t a1, int a2)
{
  v4 = 0;
  for (i = *(a1 + 8); i; i = *i)
  {
    if ((i[1] & a2) != 0)
    {
      ++v4;
    }
  }

  if (v4 > 0 && (a2 & 0x100) != 0)
  {
    v4 += 3;
  }

  return v4;
}

uint64_t archive_acl_reset(uint64_t a1, int a2)
{
  v5 = a2;
  v4 = archive_acl_count(a1, a2);
  if ((v5 & 0x100) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v4 <= v3)
  {
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 24) = 10002;
  }

  *(a1 + 16) = *(a1 + 8);
  return v4;
}

uint64_t archive_acl_next(_DWORD *a1, unsigned __int16 *a2, int a3, _DWORD *a4, int *a5, _DWORD *a6, _DWORD *a7, void *a8)
{
  *a8 = 0;
  *a7 = -1;
  if (*(a2 + 6))
  {
    if ((a3 & 0x100) != 0)
    {
      v10 = *(a2 + 6);
      switch(v10)
      {
        case 10002:
          *a5 = (*a2 >> 6) & 7;
          *a4 = 256;
          *a6 = 10002;
          *(a2 + 6) = 10004;
          return 0;
        case 10004:
          *a5 = (*a2 >> 3) & 7;
          *a4 = 256;
          *a6 = 10004;
          *(a2 + 6) = 10006;
          return 0;
        case 10006:
          *a5 = *a2 & 7;
          *a4 = 256;
          *a6 = 10006;
          *(a2 + 6) = -1;
          *(a2 + 2) = *(a2 + 1);
          return 0;
      }
    }

    while (1)
    {
      v9 = 0;
      if (*(a2 + 2))
      {
        v9 = (*(*(a2 + 2) + 8) & a3) == 0;
      }

      if (!v9)
      {
        break;
      }

      *(a2 + 2) = **(a2 + 2);
    }

    if (*(a2 + 2))
    {
      *a4 = *(*(a2 + 2) + 8);
      *a5 = *(*(a2 + 2) + 16);
      *a6 = *(*(a2 + 2) + 12);
      *a7 = *(*(a2 + 2) + 20);
      if (archive_mstring_get_mbs(a1, *(a2 + 2) + 24, a8))
      {
        if (*__error() == 12)
        {
          return -30;
        }

        *a8 = 0;
      }

      *(a2 + 2) = **(a2 + 2);
      return 0;
    }

    *(a2 + 6) = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
    *a7 = -1;
    *a8 = 0;
    return 1;
  }

  else
  {
    return -20;
  }
}

__int32 *archive_acl_to_text_w(uint64_t a1, int64_t *a2, int a3, _DWORD *a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  i = 0;
  v13 = 0;
  wcs = 0;
  v10 = 0;
  v11 = archive_acl_text_want_type(a1, a3);
  if (!v11)
  {
    return 0;
  }

  if (v11 == 768)
  {
    v22 |= 2u;
  }

  v19 = archive_acl_text_len(v24, v11, v22, 1, v21, 0);
  if (!v19)
  {
    return 0;
  }

  if ((v22 & 8) != 0)
  {
    v15 = 44;
  }

  else
  {
    v15 = 10;
  }

  v9 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    if ((v11 & 0x100) != 0)
    {
      append_entry_w(&v10, 0, 256, 10002, v22, 0, *v24 & 0x1C0, -1);
      v4 = v10++;
      *v4 = v15;
      append_entry_w(&v10, 0, 256, 10004, v22, 0, *v24 & 0x38, -1);
      v5 = v10++;
      *v5 = v15;
      append_entry_w(&v10, 0, 256, 10006, v22, 0, *v24 & 7, -1);
      v20 += 3;
    }

    for (i = *(v24 + 8); i; i = *i)
    {
      if ((i[1] & v11) != 0 && (*(i + 2) != 256 || *(i + 3) != 10002 && *(i + 3) != 10004 && *(i + 3) != 10006))
      {
        if (*(i + 2) == 512 && (v22 & 2) != 0)
        {
          v16 = "d";
        }

        else
        {
          v16 = 0;
        }

        wcs = archive_mstring_get_wcs(v21, (i + 3), &v17);
        if (wcs)
        {
          if (wcs < 0 && *__error() == 12)
          {
            free(v9);
            return 0;
          }
        }

        else
        {
          if (v20 > 0)
          {
            v6 = v10++;
            *v6 = v15;
          }

          if (v22)
          {
            v13 = *(i + 5);
          }

          else
          {
            v13 = -1;
          }

          append_entry_w(&v10, v16, *(i + 2), *(i + 3), v22, v17, *(i + 4), v13);
          ++v20;
        }
      }
    }

    v7 = v10++;
    *v7 = 0;
    v18 = wcslen(v9);
    if (v18 > v19 - 1)
    {
      __archive_errx(1, "Buffer overrun");
    }

    if (v23)
    {
      *v23 = v18;
    }

    return v9;
  }

  else
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }
}

uint64_t archive_acl_text_want_type(uint64_t a1, __int16 a2)
{
  if ((*(a1 + 48) & 0x3C00) != 0)
  {
    if ((*(a1 + 48) & 0x300) != 0)
    {
      return 0;
    }

    else
    {
      return 15360;
    }
  }

  else
  {
    v3 = 0;
    if ((a2 & 0x100) != 0)
    {
      v3 = 256;
    }

    if ((a2 & 0x200) != 0)
    {
      v3 |= 0x200u;
    }

    if (v3)
    {
      return v3;
    }

    else
    {
      return 768;
    }
  }
}

uint64_t archive_acl_text_len(uint64_t a1, int a2, int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  i = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  wcs = 0;
  v8 = 0;
  v13 = 0;
  v9 = 0;
  for (i = *(a1 + 8); i; i = *i)
  {
    if ((i[1] & v21) == 0 || *(i + 2) == 256 && (*(i + 3) == 10002 || *(i + 3) == 10004 || *(i + 3) == 10006))
    {
      continue;
    }

    ++v13;
    if ((v21 & 0x200) != 0 && (i[1] & 0x200) != 0)
    {
      v9 += 8;
    }

    v7 = *(i + 3);
    if (v7 == 10001)
    {
      goto LABEL_22;
    }

    if (v7 == 10002)
    {
      if (v21 == 15360)
      {
        v9 += 6;
        goto LABEL_27;
      }

LABEL_22:
      v9 += 4;
      goto LABEL_27;
    }

    if (v7 != 10003)
    {
      if (v7 == 10004)
      {
        if (v21 == 15360)
        {
          v9 += 6;
          goto LABEL_27;
        }
      }

      else
      {
        if (v7 == 10005)
        {
          goto LABEL_22;
        }

        if (v7 != 10006)
        {
          if (v7 == 10107)
          {
            v9 += 9;
          }

          goto LABEL_27;
        }
      }
    }

    v9 += 5;
LABEL_27:
    ++v9;
    if (*(i + 3) == 10001 || *(i + 3) == 10003)
    {
      if (v19)
      {
        wcs = archive_mstring_get_wcs(v18, (i + 3), &v14);
        if (wcs || !v14)
        {
          if (wcs < 0 && *__error() == 12)
          {
            return 0;
          }

          v9 += 13;
        }

        else
        {
          v9 += wcslen(v14);
        }
      }

      else
      {
        wcs = archive_mstring_get_mbs_l(v18, (i + 3), &v15, &v8, v17);
        if (wcs)
        {
          return 0;
        }

        if (v8 && v15)
        {
          v9 += v8;
        }

        else
        {
          v9 += 13;
        }
      }

      ++v9;
    }

    else if (v21 != 15360)
    {
      ++v9;
    }

    if ((v20 & 4) != 0 && (v21 & 0x300) != 0 && (*(i + 3) == 10006 || *(i + 3) == 10005))
    {
      --v9;
    }

    if (v21 == 15360)
    {
      v9 += 27;
      if ((i[1] & 0x800) == 0)
      {
        ++v9;
      }
    }

    else
    {
      v9 += 3;
    }

    if (*(i + 3) == 10001 || *(i + 3) == 10003) && (v20)
    {
      ++v9;
      v12 = 1;
      v11 = *(i + 5);
      while (v11 > 9)
      {
        v11 /= 10;
        ++v12;
      }

      v9 += v12;
    }

    ++v9;
  }

  if ((v21 & 0x100) != 0)
  {
    if ((v20 & 4) != 0)
    {
      v9 += 31;
    }

    else
    {
      v9 += 32;
    }

    return v9;
  }

  else
  {
    if (v13)
    {
      return v9;
    }

    return 0;
  }
}

uint64_t append_entry_w(__int32 **a1, const __int32 *a2, int a3, int a4, char a5, const __int32 *a6, int a7, int a8)
{
  if (a2)
  {
    wcscpy(*a1, a2);
    *a1 += wcslen(*a1);
  }

  switch(a4)
  {
    case 10001:
      goto LABEL_13;
    case 10002:
      a6 = 0;
      a8 = -1;
      if ((a3 & 0x3C00) != 0)
      {
        strcpy(*a1, "o");
        break;
      }

LABEL_13:
      strcpy(*a1, "u");
      break;
    case 10003:
      goto LABEL_15;
    case 10004:
      a6 = 0;
      a8 = -1;
LABEL_15:
      strcpy(*a1, "g");
      break;
    case 10005:
      strcpy(*a1, "m");
      a6 = 0;
      a8 = -1;
      break;
    case 10006:
      strcpy(*a1, "o");
      a6 = 0;
      a8 = -1;
      break;
    case 10107:
      strcpy(*a1, "e");
      a6 = 0;
      a8 = -1;
      break;
  }

  result = wcslen(*a1);
  *a1 += result;
  v9 = (*a1)++;
  *v9 = 58;
  if ((a3 & 0x300) != 0 || a4 == 10001 || a4 == 10003)
  {
    if (a6)
    {
      wcscpy(*a1, a6);
      result = wcslen(*a1);
      *a1 += result;
    }

    else if (a4 == 10001 || a4 == 10003)
    {
      result = append_id_w(a1, a8);
      if ((a3 & 0x3C00) == 0)
      {
        a8 = -1;
      }
    }

    if ((a5 & 4) == 0 || a4 != 10006 && a4 != 10005)
    {
      v10 = (*a1)++;
      *v10 = 58;
    }
  }

  if ((a3 & 0x300) == 0)
  {
    for (i = 0; i < 14; ++i)
    {
      if ((a7 & *&nfsv4_acl_perm_map[12 * i]) != 0)
      {
        v17 = *&nfsv4_acl_perm_map[12 * i + 8];
        v18 = (*a1)++;
        *v18 = v17;
      }

      else if ((a5 & 0x10) == 0)
      {
        v19 = (*a1)++;
        *v19 = 45;
      }
    }

    v20 = (*a1)++;
    *v20 = 58;
    for (j = 0; j < 7; ++j)
    {
      if ((a7 & nfsv4_acl_flag_map[3 * j]) != 0)
      {
        v21 = nfsv4_acl_flag_map[3 * j + 2];
        v22 = (*a1)++;
        *v22 = v21;
      }

      else if ((a5 & 0x10) == 0)
      {
        v23 = (*a1)++;
        *v23 = 45;
      }
    }

    v24 = (*a1)++;
    *v24 = 58;
    if (a3 != 1024)
    {
      if (a3 == 2048)
      {
        strcpy(*a1, "d");
LABEL_66:
        result = wcslen(*a1);
        *a1 += result;
        goto LABEL_67;
      }

      if (a3 != 4096 && a3 != 0x2000)
      {
        goto LABEL_66;
      }
    }

    strcpy(*a1, "a");
    goto LABEL_66;
  }

  if ((a7 & 0x124) != 0)
  {
    v11 = 114;
  }

  else
  {
    v11 = 45;
  }

  v12 = (*a1)++;
  *v12 = v11;
  if ((a7 & 0x92) != 0)
  {
    v13 = 119;
  }

  else
  {
    v13 = 45;
  }

  v14 = (*a1)++;
  *v14 = v13;
  if ((a7 & 0x49) != 0)
  {
    v15 = 120;
  }

  else
  {
    v15 = 45;
  }

  v16 = (*a1)++;
  *v16 = v15;
LABEL_67:
  if (a8 != -1)
  {
    v25 = (*a1)++;
    *v25 = 58;
    return append_id_w(a1, a8);
  }

  return result;
}

char *archive_acl_to_text_l(uint64_t a1, int64_t *a2, int a3, uint64_t a4)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  i = 0;
  v13 = 0;
  mbs_l = 0;
  v10 = 0;
  v11 = archive_acl_text_want_type(a1, a3);
  if (!v11)
  {
    return 0;
  }

  if (v11 == 768)
  {
    v22 |= 2u;
  }

  v19 = archive_acl_text_len(v24, v11, v22, 0, 0, v21);
  if (!v19)
  {
    return 0;
  }

  if ((v22 & 8) != 0)
  {
    v15 = 44;
  }

  else
  {
    v15 = 10;
  }

  __s = malloc_type_malloc(v19, 0x100004077774924uLL);
  v10 = __s;
  if (__s)
  {
    v20 = 0;
    if ((v11 & 0x100) != 0)
    {
      append_entry(&v10, 0, 256, 10002, v22, 0, *v24 & 0x1C0, -1);
      v4 = v10++;
      *v4 = v15;
      append_entry(&v10, 0, 256, 10004, v22, 0, *v24 & 0x38, -1);
      v5 = v10++;
      *v5 = v15;
      append_entry(&v10, 0, 256, 10006, v22, 0, *v24 & 7, -1);
      v20 += 3;
    }

    for (i = *(v24 + 8); i; i = *i)
    {
      if ((i[1] & v11) != 0 && (*(i + 2) != 256 || *(i + 3) != 10002 && *(i + 3) != 10004 && *(i + 3) != 10006))
      {
        if (*(i + 2) == 512 && (v22 & 2) != 0)
        {
          v16 = "default:";
        }

        else
        {
          v16 = 0;
        }

        mbs_l = archive_mstring_get_mbs_l(0, (i + 3), &v17, &v18, v21);
        if (mbs_l)
        {
          free(__s);
          return 0;
        }

        if (v20 > 0)
        {
          v6 = v10++;
          *v6 = v15;
        }

        if (v17 && (v22 & 1) == 0)
        {
          v13 = -1;
        }

        else
        {
          v13 = *(i + 5);
        }

        append_entry(&v10, v16, *(i + 2), *(i + 3), v22, v17, *(i + 4), v13);
        ++v20;
      }
    }

    v7 = v10++;
    *v7 = 0;
    v18 = strlen(__s);
    if (v18 > (v19 - 1))
    {
      __archive_errx(1, "Buffer overrun");
    }

    if (v23)
    {
      *v23 = v18;
    }

    return __s;
  }

  else
  {
    if (*__error() == 12)
    {
      __archive_errx(1, "No memory");
    }

    return 0;
  }
}

uint64_t append_entry(const char **a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, int a7, int a8)
{
  if (a2)
  {
    v8 = *a1;
    __strcpy_chk();
    *a1 += strlen(*a1);
  }

  switch(a4)
  {
    case 10001:
      goto LABEL_14;
    case 10002:
      a6 = 0;
      a8 = -1;
LABEL_14:
      v9 = *a1;
      __strcpy_chk();
      break;
    case 10003:
      goto LABEL_14;
    case 10004:
      a6 = 0;
      a8 = -1;
      goto LABEL_14;
    case 10005:
    case 10006:
    case 10107:
      v10 = *a1;
      __strcpy_chk();
      a6 = 0;
      a8 = -1;
      break;
  }

  result = strlen(*a1);
  *a1 += result;
  v12 = (*a1)++;
  *v12 = 58;
  if ((a3 & 0x300) != 0 || a4 == 10001 || a4 == 10003)
  {
    if (a6)
    {
      v13 = *a1;
      __strcpy_chk();
      result = strlen(*a1);
      *a1 += result;
    }

    else if (a4 == 10001 || a4 == 10003)
    {
      result = append_id(a1, a8);
      if ((a3 & 0x3C00) == 0)
      {
        a8 = -1;
      }
    }

    if ((a5 & 4) == 0 || a4 != 10006 && a4 != 10005)
    {
      v14 = (*a1)++;
      *v14 = 58;
    }
  }

  if ((a3 & 0x300) != 0)
  {
    if ((a7 & 0x124) != 0)
    {
      v15 = 114;
    }

    else
    {
      v15 = 45;
    }

    v16 = (*a1)++;
    *v16 = v15;
    if ((a7 & 0x92) != 0)
    {
      v17 = 119;
    }

    else
    {
      v17 = 45;
    }

    v18 = (*a1)++;
    *v18 = v17;
    if ((a7 & 0x49) != 0)
    {
      v19 = 120;
    }

    else
    {
      v19 = 45;
    }

    v20 = (*a1)++;
    *v20 = v19;
  }

  else
  {
    for (i = 0; i < 14; ++i)
    {
      if ((a7 & *&nfsv4_acl_perm_map[12 * i]) != 0)
      {
        v21 = nfsv4_acl_perm_map[12 * i + 4];
        v22 = (*a1)++;
        *v22 = v21;
      }

      else if ((a5 & 0x10) == 0)
      {
        v23 = (*a1)++;
        *v23 = 45;
      }
    }

    v24 = (*a1)++;
    *v24 = 58;
    for (j = 0; j < 7; ++j)
    {
      if ((a7 & nfsv4_acl_flag_map[3 * j]) != 0)
      {
        v25 = nfsv4_acl_flag_map[3 * j + 1];
        v26 = (*a1)++;
        *v26 = v25;
      }

      else if ((a5 & 0x10) == 0)
      {
        v27 = (*a1)++;
        *v27 = 45;
      }
    }

    v28 = (*a1)++;
    *v28 = 58;
    if (a3 == 1024 || a3 == 2048 || a3 == 4096 || a3 == 0x2000)
    {
      v29 = *a1;
      __strcpy_chk();
    }

    result = strlen(*a1);
    *a1 += result;
  }

  if (a8 != -1)
  {
    v30 = (*a1)++;
    *v30 = 58;
    return append_id(a1, a8);
  }

  return result;
}

uint64_t archive_acl_from_text_w(_WORD *a1, _DWORD *a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0uLL;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  i = 0;
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v15 = 0;
  v13 = 0;
  switch(a3)
  {
    case 256:
    case 512:
      goto LABEL_7;
    case 768:
      v24 = 256;
LABEL_7:
      v20 = 5;
      goto LABEL_9;
    case 15360:
      v20 = 6;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            do
            {
LABEL_9:
              v5 = 0;
              if (v25)
              {
                v5 = *v25 != 0;
              }

              if (!v5)
              {
                archive_acl_reset(v26, v13);
                v27 = v15;
                goto LABEL_126;
              }

              v19 = 0;
              do
              {
                v7 = 0;
                v6 = 0;
                next_field_w(&v25, &v7, &v6, &v8);
                if (v19 < v20)
                {
                  (&v28)[2 * v19] = v7;
                  *(&v28 + 2 * v19 + 1) = v6;
                }

                ++v19;
              }

              while (v8 == 58);
              for (i = v19; i < v20; ++i)
              {
                *(&v28 + 2 * i + 1) = 0;
                (&v28)[2 * i] = 0;
              }
            }

            while (v28 && *v28 == 35);
            i = 0;
            v16 = 0;
            v10 = -1;
            v11 = 0;
            v23 = 0uLL;
            if (v24 != 15360)
            {
              break;
            }

            v22 = v28;
            v9 = (v29 - v28) / 4;
            v12 = 0;
            switch(v9)
            {
              case 4uLL:
                if (!wmemcmp(v22, "u", 4uLL))
                {
                  v12 = 10001;
                }

                break;
              case 5uLL:
                if (!wmemcmp(v22, "g", 5uLL))
                {
                  v12 = 10003;
                }

                break;
              case 6uLL:
                if (!wmemcmp(v22, "o", 6uLL))
                {
                  v12 = 10002;
                }

                else if (!wmemcmp(v22, "g", v9))
                {
                  v12 = 10004;
                }

                break;
              default:
                if (v9 == 9 && !wmemcmp(v22, "e", 9uLL))
                {
                  v12 = 10107;
                }

                break;
            }

            if (v12)
            {
              if (v12 == 10001 || v12 == 10003)
              {
                i = 1;
                v23 = v30;
                isint_w(v30, *(&v30 + 1), &v10);
              }

              else
              {
                i = 0;
              }

              if (is_nfs4_perms_w(*(&v28 + 2 * i + 2), *(&v28 + 2 * i + 3), &v11))
              {
                if (is_nfs4_flags_w((&v28)[2 * i + 1], *(&v28 + 2 * i + 2), &v11))
                {
                  v22 = *(&v28 + 2 * i + 6);
                  v9 = *(&v28 + 2 * i + 7) - *(&v28 + 2 * i + 6);
                  v14 = 0;
                  if (v9 == 4)
                  {
                    if (!wmemcmp(v22, "d", 4uLL))
                    {
                      v14 = 2048;
                    }
                  }

                  else if (v9 == 5)
                  {
                    if (!wmemcmp(v22, "a", 5uLL))
                    {
                      v14 = 1024;
                    }

                    else if (!wmemcmp(v22, "a", 5uLL))
                    {
                      v14 = 4096;
                    }

                    else if (!wmemcmp(v22, "a", 5uLL))
                    {
                      v14 = 0x2000;
                    }
                  }

                  if (v14)
                  {
                    isint_w((&v28)[2 * i + 2], *(&v28 + 2 * i + 3), &v10);
                    goto LABEL_120;
                  }

                  v15 = -20;
                }

                else
                {
                  v15 = -20;
                }
              }

              else
              {
                v15 = -20;
              }
            }

            else
            {
              v15 = -20;
            }
          }

          v22 = v28;
          v9 = (v29 - v28) / 4;
          if (*v28 == 100 && (v9 == 1 || v9 >= 7 && !wmemcmp(v22 + 1, "e", 6uLL)))
          {
            v14 = 512;
            if (v9 <= 7)
            {
              i = 1;
            }

            else
            {
              v28 += 7;
            }
          }

          else
          {
            v14 = v24;
          }

          isint_w(*(&v28 + 2 * i + 2), *(&v28 + 2 * i + 3), &v10);
          if (v10 == -1 && v19 > i + 3)
          {
            isint_w(*(&v28 + 2 * i + 6), *(&v28 + 2 * i + 7), &v10);
          }

          v12 = 0;
          v22 = (&v28)[2 * i];
          v21 = (&v28)[2 * i] + 1;
          v9 = *(&v28 + 2 * i + 1) - (&v28)[2 * i];
          v4 = *v22;
          if (*v22 == 103)
          {
            if (v9 == 1 || v9 == 5 && !wmemcmp(v21, "r", 4uLL))
            {
              v12 = 10004;
            }
          }

          else if (v4 == 109)
          {
            if (v9 == 1 || v9 == 4 && !wmemcmp(v21, "a", 3uLL))
            {
              v12 = 10005;
            }
          }

          else if (v4 == 111)
          {
            if (v9 == 1 || v9 == 5 && !wmemcmp(v21, "t", 4uLL))
            {
              v12 = 10006;
            }
          }

          else if (v4 == 117 && (v9 == 1 || v9 == 4 && !wmemcmp(v21, "s", 3uLL)))
          {
            v12 = 10002;
          }

          if (v12 == 10002 || v12 == 10004)
          {
            if (v10 != -1 || *(&v28 + 2 * i + 2) < *(&v28 + 2 * i + 3))
            {
              v23 = *(&v28 + i + 1);
              if (v12 == 10002)
              {
                v12 = 10001;
              }

              else
              {
                v12 = 10003;
              }
            }

            goto LABEL_74;
          }

          if (v12 == 10006 || v12 == 10005)
          {
            break;
          }

          v15 = -20;
        }

        if (v19 == i + 2 && *(&v28 + 2 * i + 2) < *(&v28 + 2 * i + 3) && ismode_w(*(&v28 + 2 * i + 2), *(&v28 + 2 * i + 3), &v11))
        {
          v16 = 1;
LABEL_74:
          if (v11 || ismode_w((&v28)[2 * (i + 2 - v16)], *(&v28 + 2 * (i + 2 - v16) + 1), &v11))
          {
LABEL_120:
            v17 = archive_acl_add_entry_w_len(v26, v14, v11, v12, v10, v23, (*(&v23 + 1) - v23) / 4);
            if (v17 < -20)
            {
              v27 = v17;
              goto LABEL_126;
            }

            if (v17)
            {
              v15 = -20;
            }

            v13 |= v14;
          }

          else
          {
            v15 = -20;
          }
        }

        else
        {
          if (v19 != i + 3 || *(&v28 + 2 * i + 2) >= *(&v28 + 2 * i + 3))
          {
            goto LABEL_74;
          }

          v15 = -20;
        }
      }
  }

  v27 = -30;
LABEL_126:
  *MEMORY[0x1E69E9840];
  return v27;
}

_DWORD **next_field_w(_DWORD **result, void *a2, void *a3, _DWORD *a4)
{
  while (1)
  {
    v7 = 1;
    if (**result != 32)
    {
      v7 = 1;
      if (**result != 9)
      {
        v7 = **result == 10;
      }
    }

    if (!v7)
    {
      break;
    }

    ++*result;
  }

  *a2 = *result;
  while (1)
  {
    v6 = 0;
    if (**result)
    {
      v6 = 0;
      if (**result != 44)
      {
        v6 = 0;
        if (**result != 58)
        {
          v6 = 0;
          if (**result != 10)
          {
            v6 = **result != 35;
          }
        }
      }
    }

    if (!v6)
    {
      break;
    }

    ++*result;
  }

  *a4 = **result;
  if (*result == *a2)
  {
    *a3 = *result;
  }

  else
  {
    for (*a3 = *result - 1; ; *a3 -= 4)
    {
      v5 = 1;
      if (**a3 != 32)
      {
        v5 = 1;
        if (**a3 != 9)
        {
          v5 = **a3 == 10;
        }
      }

      if (!v5)
      {
        break;
      }
    }

    *a3 += 4;
  }

  if (*a4 == 35)
  {
    while (1)
    {
      v4 = 0;
      if (**result)
      {
        v4 = 0;
        if (**result != 44)
        {
          v4 = **result != 10;
        }
      }

      if (!v4)
      {
        break;
      }

      ++*result;
    }

    *a4 = **result;
  }

  if (**result)
  {
    ++*result;
  }

  return result;
}

uint64_t isint_w(int *a1, unint64_t a2, int *a3)
{
  v5 = a1;
  v4 = 0;
  if (a1 < a2)
  {
    while (v5 < a2)
    {
      if (*v5 < 48 || *v5 > 57)
      {
        return 0;
      }

      if (v4 > 214748364 || v4 == 214748364 && *v5 - 48 > 7)
      {
        v4 = 0x7FFFFFFF;
      }

      else
      {
        v4 = 10 * v4 + *v5 - 48;
      }

      ++v5;
    }

    *a3 = v4;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ismode_w(int *a1, unint64_t a2, _DWORD *a3)
{
  if (a1 < a2)
  {
    v6 = a1;
    *a3 = 0;
    while (1)
    {
      do
      {
        if (v6 >= a2)
        {
          return 1;
        }

        v3 = v6++;
        v5 = *v3;
      }

      while (*v3 == 45);
      switch(v5)
      {
        case 'R':
          goto LABEL_13;
        case 'W':
          goto LABEL_14;
        case 'X':
          goto LABEL_15;
        case 'r':
LABEL_13:
          *a3 |= 4u;
          break;
        case 'w':
LABEL_14:
          *a3 |= 2u;
          break;
        case 'x':
LABEL_15:
          *a3 |= 1u;
          break;
        default:
          return 0;
      }
    }
  }

  return 0;
}

uint64_t is_nfs4_perms_w(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  while (2)
  {
    if (a1 >= a2)
    {
      return 1;
    }

    else
    {
      v3 = a1++;
      switch(*v3)
      {
        case '-':
          continue;
        case 'A':
          *a3 |= 0x400u;
          continue;
        case 'C':
          *a3 |= 0x2000u;
          continue;
        case 'D':
          *a3 |= 0x100u;
          continue;
        case 'R':
          *a3 |= 0x40u;
          continue;
        case 'W':
          *a3 |= 0x80u;
          continue;
        case 'a':
          *a3 |= 0x200u;
          continue;
        case 'c':
          *a3 |= 0x1000u;
          continue;
        case 'd':
          *a3 |= 0x800u;
          continue;
        case 'o':
          *a3 |= 0x4000u;
          continue;
        case 'p':
          *a3 |= 0x20u;
          continue;
        case 'r':
          *a3 |= 8u;
          continue;
        case 's':
          *a3 |= 0x8000u;
          continue;
        case 'w':
          *a3 |= 0x10u;
          continue;
        case 'x':
          *a3 |= 1u;
          continue;
        default:
          v6 = 0;
          break;
      }
    }

    return v6;
  }
}

uint64_t is_nfs4_flags_w(int *a1, unint64_t a2, _DWORD *a3)
{
  while (a1 < a2)
  {
    v3 = a1++;
    v5 = *v3;
    if (*v3 != 45)
    {
      switch(v5)
      {
        case 'F':
          *a3 |= 0x40000000u;
          break;
        case 'I':
          *a3 |= 0x1000000u;
          break;
        case 'S':
          *a3 |= 0x20000000u;
          break;
        case 'd':
          *a3 |= 0x4000000u;
          break;
        case 'f':
          *a3 |= 0x2000000u;
          break;
        case 'i':
          *a3 |= 0x10000000u;
          break;
        case 'n':
          *a3 |= 0x8000000u;
          break;
        default:
          return 0;
      }
    }
  }

  return 1;
}

uint64_t archive_acl_from_text_l(_WORD *a1, _BYTE *a2, int a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0uLL;
  v24 = 0;
  __s1 = 0;
  v22 = 0;
  v21 = 0;
  i = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  switch(a3)
  {
    case 256:
    case 512:
      goto LABEL_7;
    case 768:
      v27 = 256;
LABEL_7:
      v22 = 5;
LABEL_9:
      v17 = 0;
      v15 = 0;
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
                v7 = 0;
                if (v28)
                {
                  v7 = *v28 != 0;
                }

                if (!v7)
                {
                  archive_acl_reset(v29, v15);
                  v30 = v17;
                  goto LABEL_129;
                }

                v21 = 0;
                do
                {
                  v9 = 0;
                  v8 = 0;
                  next_field(&v28, &v9, &v8, &v10);
                  if (v21 < v22)
                  {
                    (&v31)[2 * v21] = v9;
                    (&v31)[2 * v21 + 1] = v8;
                  }

                  ++v21;
                }

                while (v10 == 58);
                for (i = v21; i < v22; ++i)
                {
                  (&v31)[2 * i + 1] = 0;
                  (&v31)[2 * i] = 0;
                }
              }

              while (v31 && *v31 == 35);
              i = 0;
              v18 = 0;
              v12 = -1;
              v13 = 0;
              v25 = 0uLL;
              if (v27 != 15360)
              {
                break;
              }

              v24 = v31;
              v11 = v32 - v31;
              v14 = 0;
              v5 = v32 - v31;
              if (v32 - v31 == 4)
              {
                if (!memcmp(v24, "user", 4uLL))
                {
                  v14 = 10001;
                }
              }

              else if (v5 == 5)
              {
                if (!memcmp(v24, "group", 5uLL))
                {
                  v14 = 10003;
                }
              }

              else if (v5 == 6)
              {
                if (!memcmp(v24, "owner@", 6uLL))
                {
                  v14 = 10002;
                }

                else if (!memcmp(v24, "group@", 6uLL))
                {
                  v14 = 10004;
                }
              }

              else if (v5 == 9 && !memcmp(v24, "everyone@", 9uLL))
              {
                v14 = 10107;
              }

              if (v14)
              {
                if (v14 == 10001 || v14 == 10003)
                {
                  i = 1;
                  v25 = v33;
                  isint(v33, *(&v33 + 1), &v12);
                }

                else
                {
                  i = 0;
                }

                if (is_nfs4_perms((&v31)[2 * i + 2], (&v31)[2 * i + 3], &v13))
                {
                  if (is_nfs4_flags((&v31)[2 * i + 4], (&v31)[2 * i + 5], &v13))
                  {
                    v24 = (&v31)[2 * i + 6];
                    v11 = (&v31)[2 * i + 7] - (&v31)[2 * i + 6];
                    v16 = 0;
                    if (v11 == 4)
                    {
                      if (!memcmp(v24, "deny", 4uLL))
                      {
                        v16 = 2048;
                      }
                    }

                    else if (v11 == 5)
                    {
                      if (!memcmp(v24, "allow", 5uLL))
                      {
                        v16 = 1024;
                      }

                      else if (!memcmp(v24, "audit", 5uLL))
                      {
                        v16 = 4096;
                      }

                      else if (!memcmp(v24, "alarm", 5uLL))
                      {
                        v16 = 0x2000;
                      }
                    }

                    if (v16)
                    {
                      isint((&v31)[2 * i + 8], (&v31)[2 * i + 9], &v12);
                      goto LABEL_123;
                    }

                    v17 = -20;
                  }

                  else
                  {
                    v17 = -20;
                  }
                }

                else
                {
                  v17 = -20;
                }
              }

              else
              {
                v17 = -20;
              }
            }

            v24 = v31;
            v11 = v32 - v31;
            if (*v31 == 100 && (v11 == 1 || v11 >= 7 && !memcmp(v24 + 1, "efault", 6uLL)))
            {
              v16 = 512;
              if (v11 <= 7)
              {
                i = 1;
              }

              else
              {
                v31 += 7;
              }
            }

            else
            {
              v16 = v27;
            }

            isint((&v31)[2 * i + 2], (&v31)[2 * i + 3], &v12);
            if (v12 == -1 && v21 > i + 3)
            {
              isint((&v31)[2 * i + 6], (&v31)[2 * i + 7], &v12);
            }

            v14 = 0;
            v24 = (&v31)[2 * i];
            __s1 = (&v31)[2 * i] + 1;
            v11 = (&v31)[2 * i + 1] - (&v31)[2 * i];
            if (v11)
            {
              break;
            }

            v17 = -20;
          }

          v6 = *v24;
          switch(v6)
          {
            case 'g':
              if (v11 == 1 || v11 == 5 && !memcmp(__s1, "roup", 4uLL))
              {
                v14 = 10004;
              }

              break;
            case 'm':
              if (v11 == 1 || v11 == 4 && !memcmp(__s1, "ask", 3uLL))
              {
                v14 = 10005;
              }

              break;
            case 'o':
              if (v11 == 1 || v11 == 5 && !memcmp(__s1, "ther", 4uLL))
              {
                v14 = 10006;
              }

              break;
            default:
              if (v6 == 117 && (v11 == 1 || v11 == 4 && !memcmp(__s1, "ser", 3uLL)))
              {
                v14 = 10002;
              }

              break;
          }

          if (v14 == 10002 || v14 == 10004)
          {
            if (v12 != -1 || (&v31)[2 * i + 2] < (&v31)[2 * i + 3])
            {
              v25 = *&(&v31)[2 * i + 2];
              if (v14 == 10002)
              {
                v14 = 10001;
              }

              else
              {
                v14 = 10003;
              }
            }

            goto LABEL_77;
          }

          if (v14 == 10006 || v14 == 10005)
          {
            break;
          }

          v17 = -20;
        }

        if (v21 == i + 2 && (&v31)[2 * i + 2] < (&v31)[2 * i + 3] && ismode((&v31)[2 * i + 2], (&v31)[2 * i + 3], &v13))
        {
          v18 = 1;
LABEL_77:
          if (v13 || ismode((&v31)[2 * (i + 2 - v18)], (&v31)[2 * (i + 2 - v18) + 1], &v13))
          {
LABEL_123:
            v19 = archive_acl_add_entry_len_l(v29, v16, v13, v14, v12, v25, *(&v25 + 1) - v25, v26);
            if (v19 < -20)
            {
              v30 = v19;
              goto LABEL_129;
            }

            if (v19)
            {
              v17 = -20;
            }

            v15 |= v16;
          }

          else
          {
            v17 = -20;
          }
        }

        else
        {
          if (v21 != i + 3 || (&v31)[2 * i + 2] >= (&v31)[2 * i + 3])
          {
            goto LABEL_77;
          }

          v17 = -20;
        }
      }

    case 15360:
      v22 = 6;
      goto LABEL_9;
  }

  v30 = -30;
LABEL_129:
  *MEMORY[0x1E69E9840];
  return v30;
}

_BYTE **next_field(_BYTE **result, void *a2, void *a3, _BYTE *a4)
{
  while (1)
  {
    v7 = 1;
    if (**result != 32)
    {
      v7 = 1;
      if (**result != 9)
      {
        v7 = **result == 10;
      }
    }

    if (!v7)
    {
      break;
    }

    ++*result;
  }

  *a2 = *result;
  while (1)
  {
    v6 = 0;
    if (**result)
    {
      v6 = 0;
      if (**result != 44)
      {
        v6 = 0;
        if (**result != 58)
        {
          v6 = 0;
          if (**result != 10)
          {
            v6 = **result != 35;
          }
        }
      }
    }

    if (!v6)
    {
      break;
    }

    ++*result;
  }

  *a4 = **result;
  if (*result == *a2)
  {
    *a3 = *result;
  }

  else
  {
    for (*a3 = *result - 1; ; --*a3)
    {
      v5 = 1;
      if (**a3 != 32)
      {
        v5 = 1;
        if (**a3 != 9)
        {
          v5 = **a3 == 10;
        }
      }

      if (!v5)
      {
        break;
      }
    }

    ++*a3;
  }

  if (*a4 == 35)
  {
    while (1)
    {
      v4 = 0;
      if (**result)
      {
        v4 = 0;
        if (**result != 44)
        {
          v4 = **result != 10;
        }
      }

      if (!v4)
      {
        break;
      }

      ++*result;
    }

    *a4 = **result;
  }

  if (**result)
  {
    ++*result;
  }

  return result;
}

uint64_t isint(char *a1, unint64_t a2, int *a3)
{
  v5 = a1;
  v4 = 0;
  if (a1 < a2)
  {
    while (v5 < a2)
    {
      if (*v5 < 48 || *v5 > 57)
      {
        return 0;
      }

      if (v4 > 214748364 || v4 == 214748364 && *v5 - 48 > 7)
      {
        v4 = 0x7FFFFFFF;
      }

      else
      {
        v4 = 10 * v4 + *v5 - 48;
      }

      ++v5;
    }

    *a3 = v4;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ismode(char *a1, unint64_t a2, _DWORD *a3)
{
  if (a1 < a2)
  {
    v6 = a1;
    *a3 = 0;
    while (1)
    {
      do
      {
        if (v6 >= a2)
        {
          return 1;
        }

        v3 = v6++;
        v5 = *v3;
      }

      while (v5 == 45);
      switch(v5)
      {
        case 'R':
          goto LABEL_13;
        case 'W':
          goto LABEL_14;
        case 'X':
          goto LABEL_15;
        case 'r':
LABEL_13:
          *a3 |= 4u;
          break;
        case 'w':
LABEL_14:
          *a3 |= 2u;
          break;
        case 'x':
LABEL_15:
          *a3 |= 1u;
          break;
        default:
          return 0;
      }
    }
  }

  return 0;
}

uint64_t is_nfs4_perms(_BYTE *a1, unint64_t a2, _DWORD *a3)
{
  while (2)
  {
    if (a1 >= a2)
    {
      return 1;
    }

    else
    {
      v3 = a1++;
      switch(*v3)
      {
        case '-':
          continue;
        case 'A':
          *a3 |= 0x400u;
          continue;
        case 'C':
          *a3 |= 0x2000u;
          continue;
        case 'D':
          *a3 |= 0x100u;
          continue;
        case 'R':
          *a3 |= 0x40u;
          continue;
        case 'W':
          *a3 |= 0x80u;
          continue;
        case 'a':
          *a3 |= 0x200u;
          continue;
        case 'c':
          *a3 |= 0x1000u;
          continue;
        case 'd':
          *a3 |= 0x800u;
          continue;
        case 'o':
          *a3 |= 0x4000u;
          continue;
        case 'p':
          *a3 |= 0x20u;
          continue;
        case 'r':
          *a3 |= 8u;
          continue;
        case 's':
          *a3 |= 0x8000u;
          continue;
        case 'w':
          *a3 |= 0x10u;
          continue;
        case 'x':
          *a3 |= 1u;
          continue;
        default:
          v6 = 0;
          break;
      }
    }

    return v6;
  }
}

uint64_t is_nfs4_flags(char *a1, unint64_t a2, _DWORD *a3)
{
  while (a1 < a2)
  {
    v3 = a1++;
    v5 = *v3;
    if (v5 != 45)
    {
      switch(v5)
      {
        case 'F':
          *a3 |= 0x40000000u;
          break;
        case 'I':
          *a3 |= 0x1000000u;
          break;
        case 'S':
          *a3 |= 0x20000000u;
          break;
        case 'd':
          *a3 |= 0x4000000u;
          break;
        case 'f':
          *a3 |= 0x2000000u;
          break;
        case 'i':
          *a3 |= 0x10000000u;
          break;
        case 'n':
          *a3 |= 0x8000000u;
          break;
        default:
          return 0;
      }
    }
  }

  return 1;
}

uint64_t archive_acl_add_entry_len_l(_WORD *a1, int a2, int a3, int a4, int a5, _BYTE *a6, unint64_t a7, uint64_t a8)
{
  if (acl_special(a1, a2, a3, a4))
  {
    v10 = acl_new_entry(a1, a2, a3, a4, a5);
    if (v10)
    {
      if (a6 && *a6 && a7)
      {
        v9 = archive_mstring_copy_mbs_len_l((v10 + 3), a6, a7, a8);
      }

      else
      {
        v9 = 0;
        archive_mstring_clean((v10 + 3));
      }

      if (v9)
      {
        if (*__error() == 12)
        {
          return -30;
        }

        else
        {
          return -20;
        }
      }

      else
      {
        return 0;
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

uint64_t append_id_w(uint64_t result, int a2)
{
  v5 = result;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = 0;
  }

  if (v4 > 9)
  {
    result = append_id_w(result, (v4 / 10));
  }

  v2 = dword_1BF33BB48[v4 % 10];
  v3 = (*v5)++;
  *v3 = v2;
  return result;
}

uint64_t append_id(uint64_t result, int a2)
{
  v5 = result;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = 0;
  }

  if (v4 > 9)
  {
    result = append_id(result, (v4 / 10));
  }

  v2 = a0123456789[v4 % 10];
  v3 = (*v5)++;
  *v3 = v2;
  return result;
}

void *archive_match_new()
{
  v1 = malloc_type_calloc(1uLL, 0x1F8uLL, 0x10F0040201FFAAFuLL);
  if (!v1)
  {
    return 0;
  }

  *v1 = 212668873;
  *(v1 + 1) = 1;
  *(v1 + 37) = 1;
  match_list_init(v1 + 192);
  match_list_init(v1 + 152);
  __archive_rb_tree_init(v1 + 42, rb_ops_mbs);
  entry_list_init(v1 + 352);
  match_list_init(v1 + 424);
  match_list_init(v1 + 464);
  time(v1 + 29);
  return v1;
}

uint64_t match_list_init(uint64_t result)
{
  *result = 0;
  *(result + 8) = result;
  *(result + 16) = 0;
  return result;
}

uint64_t entry_list_init(uint64_t result)
{
  *result = 0;
  *(result + 8) = result;
  *(result + 16) = 0;
  return result;
}

uint64_t archive_match_free(uint64_t a1)
{
  if (a1)
  {
    if (__archive_check_magic(a1, 212668873, 0xFFFF, "archive_match_free") == -30)
    {
      return -30;
    }

    else
    {
      match_list_free((a1 + 192));
      match_list_free((a1 + 152));
      entry_list_free((a1 + 352));
      free(*(a1 + 392));
      free(*(a1 + 416));
      match_list_free((a1 + 424));
      match_list_free((a1 + 464));
      free(a1);
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void match_list_free(void **a1)
{
  v2 = *a1;
  while (v2)
  {
    v1 = v2;
    v2 = *v2;
    archive_mstring_clean(v1 + 16);
    free(v1);
  }
}

void entry_list_free(void *a1)
{
  v2 = *a1;
  while (v2)
  {
    v1 = v2;
    v2 = v2[3];
    archive_mstring_clean(v1 + 32);
    free(v1);
  }
}

uint64_t archive_match_excluded(int *a1, _DWORD **a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_excluded_ae") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    v10 = 0;
    if ((a1[36] & 1) != 0 && (v7 = archive_entry_pathname(a2), (v10 = path_excluded(a1, 1, v7)) != 0))
    {
      return v10;
    }

    else if ((a1[36] & 2) != 0 && (v10 = time_excluded(a1, a2)) != 0)
    {
      return v10;
    }

    else
    {
      if ((a1[36] & 4) != 0)
      {
        return owner_excluded(a1, a2);
      }

      return v10;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL", v2, v3, v4, v5, v6, v9);
    return -25;
  }
}

uint64_t path_excluded(uint64_t a1, int a2, __int32 *a3)
{
  if (a1)
  {
    v7 = 0;
    for (i = *(a1 + 192); i; i = *i)
    {
      if (!*(i + 8))
      {
        matched = match_path_inclusion(a1, i, a2, a3);
        if (matched)
        {
          if ((matched & 0x80000000) != 0)
          {
            return matched;
          }

          --*(a1 + 212);
          ++*(i + 8);
          v7 = i;
        }
      }
    }

    for (j = *(a1 + 152); j; j = *j)
    {
      v5 = match_path_exclusion(a1, j, a2, a3);
      if (v5)
      {
        return v5;
      }
    }

    if (v7)
    {
      return 0;
    }

    else
    {
      for (k = *(a1 + 192); ; k = *k)
      {
        if (!k)
        {
          return *(a1 + 192) != 0;
        }

        if (*(k + 8) > 0)
        {
          v6 = match_path_inclusion(a1, k, a2, a3);
          if (v6)
          {
            break;
          }
        }
      }

      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }

      else
      {
        ++*(k + 8);
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t time_excluded(uint64_t a1, _DWORD **a2)
{
  if (*(a1 + 264))
  {
    if (archive_entry_ctime_is_set(a2))
    {
      v9 = archive_entry_ctime(a2);
    }

    else
    {
      v9 = archive_entry_mtime(a2);
    }

    if (v9 < *(a1 + 272))
    {
      return 1;
    }

    if (v9 == *(a1 + 272))
    {
      if (archive_entry_ctime_is_set(a2))
      {
        v5 = archive_entry_ctime_nsec(a2);
      }

      else
      {
        v5 = archive_entry_mtime_nsec(a2);
      }

      if (v5 < *(a1 + 280))
      {
        return 1;
      }

      if (v5 == *(a1 + 280) && (*(a1 + 264) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 312))
  {
    if (archive_entry_ctime_is_set(a2))
    {
      v10 = archive_entry_ctime(a2);
    }

    else
    {
      v10 = archive_entry_mtime(a2);
    }

    if (v10 > *(a1 + 320))
    {
      return 1;
    }

    if (v10 == *(a1 + 320))
    {
      if (archive_entry_ctime_is_set(a2))
      {
        v6 = archive_entry_ctime_nsec(a2);
      }

      else
      {
        v6 = archive_entry_mtime_nsec(a2);
      }

      if (v6 > *(a1 + 328))
      {
        return 1;
      }

      if (v6 == *(a1 + 328) && (*(a1 + 312) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 240))
  {
    v11 = archive_entry_mtime(a2);
    if (v11 < *(a1 + 248))
    {
      return 1;
    }

    if (v11 == *(a1 + 248))
    {
      v7 = archive_entry_mtime_nsec(a2);
      if (v7 < *(a1 + 256))
      {
        return 1;
      }

      if (v7 == *(a1 + 256) && (*(a1 + 240) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 288))
  {
    v12 = archive_entry_mtime(a2);
    if (v12 > *(a1 + 296))
    {
      return 1;
    }

    v8 = archive_entry_mtime_nsec(a2);
    if (v12 == *(a1 + 296))
    {
      if (v8 > *(a1 + 304))
      {
        return 1;
      }

      if (v8 == *(a1 + 304) && (*(a1 + 288) & 0x10) == 0)
      {
        return 1;
      }
    }
  }

  if (*(a1 + 368))
  {
    v15 = archive_entry_pathname(a2);
    *(a1 + 344) = rb_ops_mbs;
    if (v15)
    {
      node = __archive_rb_tree_find_node((a1 + 336), v15);
      if (node)
      {
        if ((*(node + 136) & 0x200) != 0)
        {
          v13 = archive_entry_ctime(a2);
          if (*(node + 160) <= v13)
          {
            if (*(node + 160) < v13)
            {
              if (*(node + 136))
              {
                return 1;
              }
            }

            else
            {
              v2 = archive_entry_ctime_nsec(a2);
              if (*(node + 168) <= v2)
              {
                if (*(node + 168) >= v2)
                {
                  if ((*(node + 136) & 0x10) != 0)
                  {
                    return 1;
                  }
                }

                else if (*(node + 136))
                {
                  return 1;
                }
              }

              else if ((*(node + 136) & 2) != 0)
              {
                return 1;
              }
            }
          }

          else if ((*(node + 136) & 2) != 0)
          {
            return 1;
          }
        }

        if ((*(node + 136) & 0x100) != 0)
        {
          v14 = archive_entry_mtime(a2);
          if (*(node + 144) <= v14)
          {
            if (*(node + 144) < v14)
            {
              if (*(node + 136))
              {
                return 1;
              }
            }

            else
            {
              v3 = archive_entry_mtime_nsec(a2);
              if (*(node + 152) <= v3)
              {
                if (*(node + 152) >= v3)
                {
                  if ((*(node + 136) & 0x10) != 0)
                  {
                    return 1;
                  }
                }

                else if (*(node + 136))
                {
                  return 1;
                }
              }

              else if ((*(node + 136) & 2) != 0)
              {
                return 1;
              }
            }
          }

          else if ((*(node + 136) & 2) != 0)
          {
            return 1;
          }
        }

        return 0;
      }

      return 0;
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

uint64_t owner_excluded(uint64_t a1, _DWORD **a2)
{
  if (!*(a1 + 384) || (v2 = archive_entry_uid(a2), match_owner_id(a1 + 376, v2)))
  {
    if (!*(a1 + 408) || (v3 = archive_entry_gid(a2), match_owner_id(a1 + 400, v3)))
    {
      if (*(a1 + 440))
      {
        v4 = archive_entry_uname(a2);
        matched = match_owner_name_mbs(a1, (a1 + 424), v4);
        if (!matched)
        {
          return 1;
        }

        if ((matched & 0x80000000) != 0)
        {
          return matched;
        }
      }

      if (*(a1 + 480))
      {
        v5 = archive_entry_gname(a2);
        v8 = match_owner_name_mbs(a1, (a1 + 464), v5);
        if (!v8)
        {
          return 1;
        }

        if ((v8 & 0x80000000) != 0)
        {
          return v8;
        }
      }

      return 0;
    }

    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_match_exclude_pattern(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v9 = add_pattern_mbs(a1, (a1 + 38), a2);
    if (v9)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty", v2, v3, v4, v5, v6, v8);
    return -25;
  }
}

uint64_t add_pattern_mbs(_DWORD *a1, uint64_t a2, const char *a3)
{
  v12 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040B4CB4576uLL);
  if (v12)
  {
    v11 = strlen(a3);
    if (v11 && a3[v11 - 1] == 47)
    {
      --v11;
    }

    archive_mstring_copy_mbs_len(v12 + 16, a3, v11);
    match_list_add(a2, v12);
    a1[36] |= 1u;
    return 0;
  }

  else
  {
    return error_nomem(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t archive_match_exclude_pattern_w(int *a1, const __int32 *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern_w") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v9 = add_pattern_wcs(a1, (a1 + 38), a2);
    if (v9)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty", v2, v3, v4, v5, v6, v8);
    return -25;
  }
}

uint64_t add_pattern_wcs(_DWORD *a1, uint64_t a2, const __int32 *a3)
{
  v12 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040B4CB4576uLL);
  if (v12)
  {
    v11 = wcslen(a3);
    if (v11 && a3[v11 - 1] == 47)
    {
      --v11;
    }

    archive_mstring_copy_wcs_len(v12 + 16, a3, v11);
    match_list_add(a2, v12);
    a1[36] |= 1u;
    return 0;
  }

  else
  {
    return error_nomem(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t archive_match_exclude_pattern_from_file(int *a1, __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern_from_file") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 38), 1, a2, a3);
  }
}

uint64_t add_pattern_from_file(_DWORD *a1, uint64_t a2, int a3, __int32 *a4, int a5)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v26 = archive_read_new();
  if (v26)
  {
    archive_read_support_format_raw(v26);
    support_format_empty = archive_read_support_format_empty(v26);
    if (support_format_empty || (!v29 ? (support_format_empty = archive_read_open_filename_w(v26, v28, 10240)) : (support_format_empty = archive_read_open_filename(v26, v28, 10240)), support_format_empty))
    {
      archive_copy_error(v31, v26);
      archive_read_free(v26);
      return support_format_empty;
    }

    else
    {
      next_header = archive_read_next_header(v26, &v25);
      if (next_header)
      {
        archive_read_free(v26);
        if (next_header == 1)
        {
          return 0;
        }

        else
        {
          archive_copy_error(v31, v26);
          return next_header;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_14:
        while (1)
        {
          data_block = archive_read_data_block(v26, &v21, &v20, &v19);
          if (data_block)
          {
            break;
          }

          v14 = v21;
          while (v20)
          {
            v13 = v14;
            v12 = 0;
            v11 = 0;
            while (v12 < v20)
            {
              if (v27)
              {
                if (!*v14)
                {
                  v11 = 1;
                  break;
                }
              }

              else if (*v14 == 13 || *v14 == 10)
              {
                v11 = 1;
                break;
              }

              ++v14;
              ++v12;
            }

            if (!v11)
            {
              archive_strncat(&v22, v13, v12);
              goto LABEL_14;
            }

            ++v14;
            v20 -= v12 + 1;
            archive_strncat(&v22, v13, v12);
            if (v23)
            {
              v18 = add_pattern_mbs(v31, v30, v22);
              if (v18)
              {
                goto LABEL_31;
              }

              v23 = 0;
            }
          }
        }

        if ((data_block & 0x80000000) != 0)
        {
          archive_copy_error(v31, v26);
          archive_read_free(v26);
          archive_string_free(&v22);
          return data_block;
        }

        else if (data_block == 1 && v23 && (v18 = add_pattern_mbs(v31, v30, v22)) != 0)
        {
LABEL_31:
          archive_read_free(v26);
          archive_string_free(&v22);
          return v18;
        }

        else
        {
          archive_read_free(v26);
          archive_string_free(&v22);
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(v31, 12, "No memory", v5, v6, v7, v8, v9, &v31);
    return -30;
  }
}

uint64_t archive_match_exclude_pattern_from_file_w(int *a1, __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_exclude_pattern_from_file_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 38), 0, a2, a3);
  }
}

uint64_t archive_match_include_pattern(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v9 = add_pattern_mbs(a1, (a1 + 48), a2);
    if (v9)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty", v2, v3, v4, v5, v6, v8);
    return -25;
  }
}

uint64_t archive_match_include_pattern_w(int *a1, const __int32 *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern_w") == -30)
  {
    return -30;
  }

  else if (a2 && *a2)
  {
    v9 = add_pattern_wcs(a1, (a1 + 48), a2);
    if (v9)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "pattern is empty", v2, v3, v4, v5, v6, v8);
    return -25;
  }
}

uint64_t archive_match_include_pattern_from_file(int *a1, __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern_from_file") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 48), 1, a2, a3);
  }
}

uint64_t archive_match_include_pattern_from_file_w(int *a1, __int32 *a2, int a3)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_pattern_from_file_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_pattern_from_file(a1, (a1 + 48), 0, a2, a3);
  }
}

uint64_t archive_match_path_excluded(int *a1, _DWORD **a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_path_excluded") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    if (a1[36])
    {
      v7 = archive_entry_pathname(a2);
      return path_excluded(a1, 1, v7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL", v2, v3, v4, v5, v6, v9);
    return -25;
  }
}

uint64_t archive_match_set_inclusion_recursion(int *a1, int a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_set_inclusion_recursion") == -30)
  {
    return -30;
  }

  else
  {
    a1[37] = a2;
    return 0;
  }
}

uint64_t archive_match_path_unmatched_inclusions(uint64_t a1)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_unmatched_inclusions") == -30)
  {
    return -30;
  }

  else
  {
    return *(a1 + 212);
  }
}

uint64_t archive_match_path_unmatched_inclusions_next(_DWORD *a1, void *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_unmatched_inclusions_next") == -30)
  {
    return -30;
  }

  else
  {
    v5 = v7;
    matched = match_list_unmatched_inclusions_next(v7, (v7 + 48), 1, &v4);
    *v6 = v4;
    return matched;
  }
}

uint64_t match_list_unmatched_inclusions_next(_DWORD *a1, uint64_t a2, int a3, void *a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  i = 0;
  *a4 = 0;
  if (*(v25 + 32))
  {
    *(v25 + 32) = 0;
    return 1;
  }

  else
  {
    if (!*(v25 + 24))
    {
      if (!*(v25 + 20))
      {
        return 1;
      }

      *(v25 + 24) = *v25;
    }

    for (i = *(v25 + 24); ; i = *i)
    {
      if (!i)
      {
        *(v25 + 24) = 0;
        return 1;
      }

      mbs = 0;
      if (!*(i + 2))
      {
        break;
      }
    }

    if (v24)
    {
      v20 = 0;
      mbs = archive_mstring_get_mbs(v26, (i + 2), &v20);
      if (mbs < 0 && *__error() == 12)
      {
        return error_nomem(v26, v4, v5, v6, v7, v8, v9, v10);
      }

      if (!v20)
      {
        v20 = &unk_1BF3442C6;
      }

      *v23 = v20;
    }

    else
    {
      v19 = 0;
      mbs = archive_mstring_get_wcs(v26, (i + 2), &v19);
      if (mbs < 0 && *__error() == 12)
      {
        return error_nomem(v26, v11, v12, v13, v14, v15, v16, v17);
      }

      if (!v19)
      {
        v19 = &unk_1BF33BB74;
      }

      *v23 = v19;
    }

    *(v25 + 24) = *i;
    if (!*(v25 + 24))
    {
      *(v25 + 32) = 1;
    }

    return 0;
  }
}

uint64_t archive_match_path_unmatched_inclusions_next_w(_DWORD *a1, void *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_unmatched_inclusions_next_w") == -30)
  {
    return -30;
  }

  else
  {
    v5 = v7;
    matched = match_list_unmatched_inclusions_next(v7, (v7 + 48), 0, &v4);
    *v6 = v4;
    return matched;
  }
}

uint64_t archive_match_include_time(int *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = validate_time_flag(a1, a2, "archive_match_include_time");
  if (v5)
  {
    return v5;
  }

  else
  {
    return set_timefilter(a1, a2, a3, a4, a3, a4);
  }
}

uint64_t validate_time_flag(int *a1, __int16 a2, const char *a3)
{
  if (__archive_check_magic(a1, 212668873, 1, a3) == -30)
  {
    return -30;
  }

  else if ((a2 & 0xFC00) != 0)
  {
    archive_set_error(a1, 22, "Invalid time flag", v3, v4, v5, v6, v7, v9);
    return -25;
  }

  else if ((a2 & 0x300) != 0)
  {
    if ((a2 & 0xEC) != 0)
    {
      archive_set_error(a1, 22, "Invalid comparison flag", v3, v4, v5, v6, v7, v9);
      return -25;
    }

    else if ((a2 & 0x13) != 0)
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 22, "No comparison flag", v3, v4, v5, v6, v7, v9);
      return -25;
    }
  }

  else
  {
    archive_set_error(a1, 22, "No time flag", v3, v4, v5, v6, v7, v9);
    return -25;
  }
}

uint64_t set_timefilter(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x100) != 0)
  {
    if ((a2 & 1) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 240) = a2;
      *(a1 + 248) = a3;
      *(a1 + 256) = a4;
      *(a1 + 144) |= 2u;
    }

    if ((a2 & 2) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 288) = a2;
      *(a1 + 296) = a3;
      *(a1 + 304) = a4;
      *(a1 + 144) |= 2u;
    }
  }

  if ((a2 & 0x200) != 0)
  {
    if ((a2 & 1) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 264) = a2;
      *(a1 + 272) = a5;
      *(a1 + 280) = a6;
      *(a1 + 144) |= 2u;
    }

    if ((a2 & 2) != 0 || (a2 & 0x13) == 0x10)
    {
      *(a1 + 312) = a2;
      *(a1 + 320) = a5;
      *(a1 + 328) = a6;
      *(a1 + 144) |= 2u;
    }
  }

  return 0;
}

uint64_t archive_match_include_date(int *a1, int a2, _BYTE *a3)
{
  v9 = validate_time_flag(a1, a2, "archive_match_include_date");
  if (v9)
  {
    return v9;
  }

  else
  {
    return set_timefilter_date(a1, a2, a3, v3, v4, v5, v6, v7);
  }
}

uint64_t set_timefilter_date(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 && *a3)
  {
    v8 = *(a1 + 232);
    date = __archive_get_date();
    if (date == -1)
    {
      archive_set_error(a1, 22, "invalid date string", v9, v10, v11, v12, v13, v15);
      return -25;
    }

    else
    {
      return set_timefilter(a1, a2, date, 0, date, 0);
    }
  }

  else
  {
    archive_set_error(a1, 22, "date is empty", a4, a5, a6, a7, a8, v15);
    return -25;
  }
}

uint64_t archive_match_include_date_w(int *a1, int a2, __int32 *a3)
{
  v9 = validate_time_flag(a1, a2, "archive_match_include_date_w");
  if (v9)
  {
    return v9;
  }

  else
  {
    return set_timefilter_date_w(a1, a2, a3, v3, v4, v5, v6, v7);
  }
}

uint64_t set_timefilter_date_w(_DWORD *a1, int a2, __int32 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (a3 && *v28)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = wcslen(v28);
    if ((archive_string_append_from_wcs(&v25, v28, v8) & 0x80000000) != 0)
    {
      archive_string_free(&v25);
      if (*__error() == 12)
      {
        return error_nomem(v30, v9, v10, v11, v12, v13, v14, v15);
      }

      else
      {
        archive_set_error(v30, -1, "Failed to convert WCS to MBS", v11, v12, v13, v14, v15, v23);
        return -25;
      }
    }

    else
    {
      v16 = *(v30 + 29);
      date = __archive_get_date();
      archive_string_free(&v25);
      if (date == -1)
      {
        archive_set_error(v30, 22, "invalid date string", v17, v18, v19, v20, v21, &v25);
        return -25;
      }

      else
      {
        return set_timefilter(v30, v29, date, 0, date, 0);
      }
    }
  }

  else
  {
    archive_set_error(v30, 22, "date is empty", a4, a5, a6, a7, a8, v23);
    return -25;
  }
}

uint64_t archive_match_include_file_time(int *a1, int a2, const char *a3)
{
  v4 = validate_time_flag(a1, a2, "archive_match_include_file_time");
  if (v4)
  {
    return v4;
  }

  else
  {
    return set_timefilter_pathname_mbs(a1, a2, a3);
  }
}

uint64_t set_timefilter_pathname_mbs(_DWORD *a1, int a2, const char *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  memset(&__b, 0, sizeof(__b));
  if (v18 && *v18)
  {
    if (stat(v18, &__b))
    {
      v16 = v20;
      v8 = __error();
      archive_set_error(v16, *v8, "Failed to stat()", v9, v10, v11, v12, v13, v15);
      return -25;
    }

    else
    {
      return set_timefilter_stat(v20, v19, &__b);
    }
  }

  else
  {
    archive_set_error(v20, 22, "pathname is empty", v3, v4, v5, v6, v7, v15);
    return -25;
  }
}

uint64_t archive_match_include_file_time_w(int *a1, int a2, __int32 *a3)
{
  v9 = validate_time_flag(a1, a2, "archive_match_include_file_time_w");
  if (v9)
  {
    return v9;
  }

  else
  {
    return set_timefilter_pathname_wcs(a1, a2, a3, v3, v4, v5, v6, v7);
  }
}

uint64_t set_timefilter_pathname_wcs(_DWORD *a1, int a2, __int32 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (a3 && *v22)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v8 = wcslen(v22);
    if ((archive_string_append_from_wcs(&v19, v22, v8) & 0x80000000) != 0)
    {
      archive_string_free(&v19);
      if (*__error() == 12)
      {
        return error_nomem(v24, v9, v10, v11, v12, v13, v14, v15);
      }

      else
      {
        archive_set_error(v24, -1, "Failed to convert WCS to MBS", v11, v12, v13, v14, v15, v17);
        return -25;
      }
    }

    else
    {
      v18 = set_timefilter_pathname_mbs(v24, v23, v19);
      archive_string_free(&v19);
      return v18;
    }
  }

  else
  {
    archive_set_error(v24, 22, "pathname is empty", a4, a5, a6, a7, a8, v17);
    return -25;
  }
}

uint64_t archive_match_exclude_entry(int *a1, int a2, _DWORD **a3)
{
  v9 = __archive_check_magic(a1, 212668873, 1, "archive_match_time_include_entry");
  if (v9 == -30)
  {
    return -30;
  }

  else if (a3)
  {
    v10 = validate_time_flag(a1, a2, "archive_match_exclude_entry");
    if (v10)
    {
      return v10;
    }

    else
    {
      return add_entry(a1, a2, a3);
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL", v3, v4, v5, v6, v7, v9);
    return -25;
  }
}

uint64_t add_entry(uint64_t a1, int a2, _DWORD **a3)
{
  v19 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1030040515BCFD8uLL);
  if (v19)
  {
    v18 = archive_entry_pathname(a3);
    if (v18)
    {
      archive_mstring_copy_mbs((v19 + 8), v18);
      *(a1 + 344) = rb_ops_mbs;
      v19[34] = a2;
      *(v19 + 18) = archive_entry_mtime(a3);
      *(v19 + 19) = archive_entry_mtime_nsec(a3);
      *(v19 + 20) = archive_entry_ctime(a3);
      *(v19 + 21) = archive_entry_ctime_nsec(a3);
      if (__archive_rb_tree_insert_node((a1 + 336), v19))
      {
        entry_list_add(a1 + 352, v19);
        *(a1 + 144) |= 2u;
        return 0;
      }

      else
      {
        node = __archive_rb_tree_find_node((a1 + 336), v18);
        if (node)
        {
          *(node + 136) = v19[34];
          *(node + 144) = *(v19 + 18);
          *(node + 152) = *(v19 + 19);
          *(node + 160) = *(v19 + 20);
          *(node + 168) = *(v19 + 21);
        }

        archive_mstring_clean((v19 + 8));
        free(v19);
        return 0;
      }
    }

    else
    {
      free(v19);
      archive_set_error(a1, 22, "pathname is NULL", v10, v11, v12, v13, v14, v16);
      return -25;
    }
  }

  else
  {
    return error_nomem(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t archive_match_time_excluded(int *a1, _DWORD **a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_time_excluded_ae") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    if ((a1[36] & 2) != 0)
    {
      return time_excluded(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL", v2, v3, v4, v5, v6, v8);
    return -25;
  }
}

uint64_t archive_match_include_uid(int *a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_uid") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_id(a1, (a1 + 94), a2);
  }
}

uint64_t add_owner_id(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) + 1) >= *a2)
  {
    if (*a2)
    {
      *a2 *= 2;
    }

    else
    {
      *a2 = 8;
    }

    v16 = malloc_type_realloc(*(a2 + 16), 8 * *a2, 0x100004000313F17uLL);
    if (!v16)
    {
      return error_nomem(a1, v3, v4, v5, v6, v7, v8, v9);
    }

    *(a2 + 16) = v16;
  }

    ;
  }

  if (i == *(a2 + 8))
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 8);
    *(a2 + 8) = v11 + 1;
    *(v10 + 8 * v11) = a3;
  }

  else if (*(*(a2 + 16) + 8 * i) != a3)
  {
    v12 = *(a2 + 16) + 8 * (i + 1);
    v13 = *(a2 + 16) + 8 * i;
    v14 = *(a2 + 8);
    __memmove_chk();
    *(*(a2 + 16) + 8 * i) = a3;
    ++*(a2 + 8);
  }

  a1[36] |= 4u;
  return 0;
}

uint64_t archive_match_include_gid(int *a1, uint64_t a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_gid") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_id(a1, (a1 + 100), a2);
  }
}

uint64_t archive_match_include_uname(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_uname") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 106), 1, a2);
  }
}

uint64_t add_owner_name(_DWORD *a1, uint64_t a2, int a3, const char *a4)
{
  v12 = malloc_type_calloc(1uLL, 0x78uLL, 0x1030040B4CB4576uLL);
  if (v12)
  {
    if (a3)
    {
      archive_mstring_copy_mbs(v12 + 16, a4);
    }

    else
    {
      archive_mstring_copy_wcs(v12 + 16, a4);
    }

    match_list_add(a2, v12);
    a1[36] |= 4u;
    return 0;
  }

  else
  {
    return error_nomem(a1, v4, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t archive_match_include_uname_w(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_uname_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 106), 0, a2);
  }
}

uint64_t archive_match_include_gname(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_gname") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 116), 1, a2);
  }
}

uint64_t archive_match_include_gname_w(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_include_gname_w") == -30)
  {
    return -30;
  }

  else
  {
    return add_owner_name(a1, (a1 + 116), 0, a2);
  }
}

uint64_t archive_match_owner_excluded(int *a1, _DWORD **a2)
{
  if (__archive_check_magic(a1, 212668873, 1, "archive_match_id_excluded_ae") == -30)
  {
    return -30;
  }

  else if (a2)
  {
    if ((a1[36] & 4) != 0)
    {
      return owner_excluded(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 22, "entry is NULL", v2, v3, v4, v5, v6, v8);
    return -25;
  }
}

uint64_t cmp_node_mbs(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = a1;
  v5 = a2;
  __s1 = 0;
  __s2 = 0;
  archive_mstring_get_mbs(0, a1 + 32, &__s1);
  archive_mstring_get_mbs(0, v5 + 32, &__s2);
  if (__s1)
  {
    if (__s2)
    {
      return strcmp(__s1, __s2);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t cmp_key_mbs(char *a1, char *a2)
{
  v5 = a1;
  __s2 = a2;
  __s1[1] = a1;
  __s1[0] = 0;
  archive_mstring_get_mbs(0, (a1 + 32), __s1);
  if (__s1[0])
  {
    return strcmp(__s1[0], __s2);
  }

  else
  {
    return -1;
  }
}

uint64_t error_nomem(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  archive_set_error(a1, 12, "No memory", a4, a5, a6, a7, a8, v9);
  a1[1] = 0x8000;
  return 4294967266;
}

uint64_t match_list_add(uint64_t result, uint64_t a2)
{
  **(result + 8) = a2;
  *(result + 8) = a2;
  ++*(result + 16);
  ++*(result + 20);
  return result;
}

uint64_t match_path_inclusion(_DWORD *a1, uint64_t a2, int a3, __int32 *a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  if (a1[37])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  mbs = 0;
  if (v18)
  {
    v14 = 0;
    mbs = archive_mstring_get_mbs(v20, v19 + 16, &v14);
    if (!mbs)
    {
      return __archive_pathmatch(v14, v17, v16);
    }
  }

  else
  {
    v13 = 0;
    mbs = archive_mstring_get_wcs(v20, v19 + 16, &v13);
    if (!mbs)
    {
      return __archive_pathmatch_w(v13, v17, v16);
    }
  }

  if (*__error() == 12)
  {
    return error_nomem(v20, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    return 0;
  }
}

uint64_t match_path_exclusion(_DWORD *a1, uint64_t a2, int a3, __int32 *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = 3;
  mbs = 0;
  if (a3)
  {
    v13 = 0;
    mbs = archive_mstring_get_mbs(v19, v18 + 16, &v13);
    if (!mbs)
    {
      return __archive_pathmatch(v13, v16, v15);
    }
  }

  else
  {
    v12 = 0;
    mbs = archive_mstring_get_wcs(v19, v18 + 16, &v12);
    if (!mbs)
    {
      return __archive_pathmatch_w(v12, v16, v15);
    }
  }

  if (*__error() == 12)
  {
    return error_nomem(v19, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    return 0;
  }
}

uint64_t set_timefilter_stat(_DWORD *a1, int a2, uint64_t a3)
{
  v15 = archive_entry_new();
  if (v15)
  {
    archive_entry_copy_stat(v15, a3);
    v14 = archive_entry_ctime(v15);
    v12 = archive_entry_ctime_nsec(v15);
    v13 = archive_entry_mtime(v15);
    v11 = archive_entry_mtime_nsec(v15);
    archive_entry_free(v15);
    return set_timefilter(a1, a2, v13, v11, v14, v12);
  }

  else
  {
    return error_nomem(a1, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t entry_list_add(uint64_t result, uint64_t a2)
{
  **(result + 8) = a2;
  *(result + 8) = a2 + 24;
  ++*(result + 16);
  return result;
}

uint64_t match_owner_id(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v5 = *(a1 + 8);
  while (v3 < v5)
  {
    v4 = (v3 + v5) >> 1;
    if (*(*(a1 + 16) + 8 * v4) == a2)
    {
      return 1;
    }

    if (*(*(a1 + 16) + 8 * v4) < a2)
    {
      v3 = v4 + 1;
    }

    else
    {
      v5 = (v3 + v5) >> 1;
    }
  }

  return 0;
}

uint64_t match_owner_name_mbs(_DWORD *a1, uint64_t **a2, char *a3)
{
  v15 = a1;
  v14 = a2;
  __s2 = a3;
  i = 0;
  __s1 = 0;
  if (a3 && *__s2)
  {
    for (i = *v14; i; i = *i)
    {
      if ((archive_mstring_get_mbs(v15, (i + 2), &__s1) & 0x80000000) != 0 && *__error() == 12)
      {
        return error_nomem(v15, v3, v4, v5, v6, v7, v8, v9);
      }

      if (__s1 && !strcmp(__s1, __s2))
      {
        ++*(i + 2);
        return 1;
      }
    }

    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_write_set_format_7zip(uint64_t a1)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_format_7zip") == -30)
  {
    return -30;
  }

  else
  {
    if (*(a1 + 312))
    {
      (*(a1 + 312))(a1);
    }

    v8 = malloc_type_calloc(1uLL, 0xF140uLL, 0x10F0040EC31971FuLL);
    if (v8)
    {
      *v8 = -1;
      __archive_rb_tree_init(v8 + 7718, archive_write_set_format_7zip_rb_ops);
      file_init_register_0(v8);
      file_init_register_empty(v8);
      *(v8 + 32) = 196865;
      *(v8 + 33) = 6;
      *(a1 + 248) = v8;
      *(a1 + 256) = "7zip";
      *(a1 + 272) = _7z_options;
      *(a1 + 288) = _7z_write_header;
      *(a1 + 296) = _7z_write_data;
      *(a1 + 280) = _7z_finish_entry;
      *(a1 + 304) = _7z_close;
      *(a1 + 312) = _7z_free;
      *(a1 + 16) = 917504;
      *(a1 + 24) = "7zip";
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate 7-Zip data", v1, v2, v3, v4, v5, v7);
      return -30;
    }
  }
}

uint64_t file_cmp_node_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    return memcmp(*(a1 + 40), *(a2 + 40), *(a1 + 32));
  }

  else if (*(a1 + 32) > *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t file_init_register_0(uint64_t result)
{
  *(result + 61712) = 0;
  *(result + 61720) = result + 61712;
  return result;
}

uint64_t file_init_register_empty(uint64_t result)
{
  *(result + 61728) = 0;
  *(result + 61736) = result + 61728;
  return result;
}

uint64_t _7z_options(uint64_t a1, const char *a2, const char *a3)
{
  v14 = *(a1 + 248);
  if (!strcmp(a2, "compression"))
  {
    if (!a3 || !strcmp(a3, "copy") || !strcmp(a3, "COPY") || !strcmp(a3, "store") || !strcmp(a3, "STORE"))
    {
      *(v14 + 128) = 0;
      return 0;
    }

    if (!strcmp(a3, "deflate") || !strcmp(a3, "DEFLATE"))
    {
      *(v14 + 128) = 262408;
      return 0;
    }

    if (!strcmp(a3, "bzip2") || !strcmp(a3, "BZIP2"))
    {
      *(v14 + 128) = 262658;
      return 0;
    }

    if (!strcmp(a3, "lzma1") || !strcmp(a3, "LZMA1"))
    {
      *(v14 + 128) = 196865;
      return 0;
    }

    if (!strcmp(a3, "lzma2") || !strcmp(a3, "LZMA2"))
    {
      *(v14 + 128) = 33;
      return 0;
    }

    if (!strcmp(a3, "ppmd") || !strcmp(a3, "PPMD") || !strcmp(a3, "PPMd"))
    {
      *(v14 + 128) = 197633;
      return 0;
    }

    return -25;
  }

  else if (!strcmp(a2, "compression-level"))
  {
    if (a3 && *a3 >= 48 && *a3 <= 57 && !a3[1])
    {
      *(v14 + 132) = *a3 - 48;
      return 0;
    }

    else
    {
      return -25;
    }
  }

  else
  {
    return -20;
  }
}

uint64_t _7z_write_header(uint64_t a1, _DWORD **a2)
{
  v10 = a1;
  v9 = a2;
  v8 = 0;
  v7 = 0;
  v8 = *(a1 + 248);
  *(v8 + 16) = 0;
  *(v8 + 104) = 0;
  if (*(v8 + 256) || (*(v8 + 256) = archive_string_conversion_to_charset(v10, "UTF-16LE", 1)) != 0)
  {
    inited = file_new_0(v10, v9, &v7);
    if (inited >= -20)
    {
      if (v7[6] || (v7[15] & 1) == 0 || __archive_rb_tree_insert_node((v8 + 61744), v7))
      {
        if (v7[7])
        {
          ++*(v8 + 64);
        }

        if ((v7[7] & 4) != 0)
        {
          ++*(v8 + 80);
        }

        if ((v7[7] & 2) != 0)
        {
          ++*(v8 + 72);
        }

        ++*(v8 + 24);
        *(v8 + 56) += (*(v7 + 8) + 2);
        if (v7[6])
        {
          if (*(v8 + 24) - *(v8 + 40) != 1 || (inited = _7z_compression_init_encoder(v10, *(v8 + 128), *(v8 + 132)), (inited & 0x80000000) == 0))
          {
            file_register_0(v8, v7);
            *(v8 + 16) = v7;
            *(v8 + 104) = v7[6];
            *(v8 + 112) = 0;
            if (archive_entry_filetype(v9) == 40960)
            {
              buf = archive_entry_symlink(v9);
              len = compress_out(v10, buf, v7[6], 1u);
              if (len < 0)
              {
                return len;
              }

              v2 = crc32(*(v8 + 112), buf, len);
              *(v8 + 112) = v2;
              *(v8 + 104) -= len;
            }

            return inited;
          }

          file_free_0(v7);
          return -30;
        }

        else
        {
          ++*(v8 + 40);
          if (v7[15])
          {
            ++*(v8 + 48);
          }

          else
          {
            file_register_empty(v8, v7);
          }

          return inited;
        }
      }

      else
      {
        file_free_0(v7);
        return 0;
      }
    }

    else
    {
      if (v7)
      {
        file_free_0(v7);
      }

      return inited;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t _7z_write_data(uint64_t a1, const Bytef *a2, unint64_t a3)
{
  v6 = a3;
  v5 = *(a1 + 248);
  if (a3 > *(v5 + 104))
  {
    v6 = *(v5 + 104);
  }

  if (!v6 || !*(v5 + 16))
  {
    return 0;
  }

  len = compress_out(a1, a2, v6, 1u);
  if ((len & 0x8000000000000000) == 0)
  {
    *(v5 + 112) = crc32(*(v5 + 112), a2, len);
    *(v5 + 104) -= len;
  }

  return len;
}

uint64_t _7z_finish_entry(uint64_t a1)
{
  v4 = *(a1 + 248);
  if (*(v4 + 16))
  {
    while (*(v4 + 104))
    {
      v3 = *(v4 + 104);
      if (v3 > *(a1 + 176))
      {
        v3 = *(a1 + 176);
      }

      v2 = _7z_write_data(a1, *(a1 + 168), v3);
      if (v2 < 0)
      {
        return v2;
      }
    }

    *(v4 + 88) += *(v4 + 152);
    *(v4 + 96) += *(v4 + 176);
    *(*(v4 + 16) + 116) = *(v4 + 112);
    *(v4 + 16) = 0;
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _7z_close(uint64_t a1)
{
  v21 = *(a1 + 248);
  if (*(v21 + 24))
  {
    v7 = compress_out(a1, 0, 0, 0);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    v5 = *(v21 + 176);
    v4 = *(v21 + 152);
    *(v21 + 232) = *(v21 + 128);
    *(v21 + 240) = *(v21 + 184);
    *(v21 + 248) = *(v21 + 192);
    *(v21 + 184) = 0;
    *(v21 + 192) = 0;
    *(v21 + 32) = *(v21 + 24) - *(v21 + 40);
    if (*(v21 + 61728))
    {
      **(v21 + 61720) = *(v21 + 61728);
      *(v21 + 61720) = *(v21 + 61736);
    }

    for (i = __archive_rb_tree_iterate((v21 + 61744), 0, 0); i; i = __archive_rb_tree_iterate((v21 + 61744), i, 1u))
    {
      file_register_0(v21, i);
    }

    v3 = 196865;
    if (*(v21 + 128) == 33 || !*(v21 + 128))
    {
      v3 = *(v21 + 128);
    }

    if (*(v21 + 24) == 1)
    {
      v3 = 0;
    }

    inited = _7z_compression_init_encoder(a1, v3, *(v21 + 132));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    *(v21 + 124) = 1;
    *(v21 + 116) = 0;
    header = make_header(a1, 0, v5, v4, 1, (v21 + 232));
    if ((header & 0x80000000) != 0)
    {
      return header;
    }

    v10 = compress_out(a1, 0, 0, 0);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v20 = v5;
    v19 = *(v21 + 176);
    v16 = *(v21 + 116);
    v18 = *(v21 + 152);
    if (v3)
    {
      free(*(v21 + 248));
      *(v21 + 232) = v3;
      *(v21 + 240) = *(v21 + 184);
      *(v21 + 248) = *(v21 + 192);
      *(v21 + 184) = 0;
      *(v21 + 192) = 0;
      v11 = _7z_compression_init_encoder(a1, 0, 0);
      if ((v11 & 0x80000000) != 0)
      {
        return v11;
      }

      *(v21 + 124) = 2;
      *(v21 + 120) = 0;
      v12 = enc_uint64(a1, 0x17uLL);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      streamsInfo = make_streamsInfo(a1, v5, v19, v18, 1, (v21 + 232), 0, v16);
      if ((streamsInfo & 0x80000000) != 0)
      {
        return streamsInfo;
      }

      v14 = compress_out(a1, 0, 0, 0);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v20 = v5 + v19;
      v19 = *(v21 + 176);
      v16 = *(v21 + 120);
    }

    *(v21 + 124) = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v16 = 0;
  }

  v17 = *(v21 + 8);
  *(v21 + 61704) = 61440;
  __memcpy_chk();
  *(v21 + 270) = 0;
  *(v21 + 271) = 3;
  archive_le64enc_1(v21 + 276, v20);
  archive_le64enc_1(v21 + 284, v19);
  archive_le32enc_4(v21 + 292, v16);
  v1 = crc32(0, (v21 + 276), 0x14u);
  archive_le32enc_4(v21 + 272, v1);
  *(v21 + 61704) -= 32;
  v15 = copy_out_0(a1, 0, v17);
  if (v15)
  {
    return v15;
  }

  else
  {
    return flush_wbuff_0(a1);
  }
}

uint64_t _7z_free(uint64_t a1)
{
  v2 = *(a1 + 248);
  if ((*v2 & 0x80000000) == 0)
  {
    close(*v2);
  }

  file_free_register_0(v2);
  compression_end_0(a1, v2 + 136);
  free(*(v2 + 31));
  free(v2);
  return 0;
}

uint64_t file_new_0(uint64_t a1, _DWORD **a2, void **a3)
{
  v43 = a1;
  v42 = a2;
  v41 = a3;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v40 = *(a1 + 248);
  *a3 = 0;
  v39 = malloc_type_calloc(1uLL, 0x80uLL, 0x1030040E66F03BBuLL);
  if (v39)
  {
    if (_archive_entry_pathname_l(v42, &v38, &v37, *(v40 + 256)) < 0)
    {
      if (*__error() == 12)
      {
        free(v39);
        archive_set_error(v43, 12, "Can't allocate memory for UTF-16LE", v13, v14, v15, v16, v17, v35);
        return -30;
      }

      archive_set_error(v43, -1, "A filename cannot be converted to UTF-16LE;You should disable making Joliet extension", v8, v9, v10, v11, v12, v35);
      v36 = -20;
    }

    v18 = malloc_type_malloc(v37 + 2, 0x9BEB1BC7uLL);
    *(v39 + 5) = v18;
    if (*(v39 + 5))
    {
      v24 = *(v39 + 5);
      __memcpy_chk();
      *(*(v39 + 5) + v37) = 0;
      *(*(v39 + 5) + v37 + 1) = 0;
      *(v39 + 8) = v37;
      v25 = archive_entry_mode(v42);
      *(v39 + 56) = v25;
      if (archive_entry_filetype(v42) == 0x8000)
      {
        v26 = archive_entry_size(v42);
        *(v39 + 6) = v26;
      }

      else
      {
        archive_entry_set_size(v42, 0);
      }

      if (archive_entry_filetype(v42) == 0x4000)
      {
        *(v39 + 120) = *(v39 + 120) & 0xFE | 1;
      }

      else if (archive_entry_filetype(v42) == 40960)
      {
        v27 = archive_entry_symlink(v42);
        *(v39 + 6) = strlen(v27);
      }

      if (archive_entry_mtime_is_set(v42))
      {
        *(v39 + 14) |= 1u;
        v28 = archive_entry_mtime(v42);
        *(v39 + 8) = v28;
        v29 = archive_entry_mtime_nsec(v42);
        *(v39 + 9) = v29;
      }

      if (archive_entry_atime_is_set(v42))
      {
        *(v39 + 14) |= 2u;
        v30 = archive_entry_atime(v42);
        *(v39 + 10) = v30;
        v31 = archive_entry_atime_nsec(v42);
        *(v39 + 11) = v31;
      }

      if (archive_entry_ctime_is_set(v42))
      {
        *(v39 + 14) |= 4u;
        v32 = archive_entry_ctime(v42);
        *(v39 + 12) = v32;
        v33 = archive_entry_ctime_nsec(v42);
        *(v39 + 13) = v33;
      }

      *v41 = v39;
      return v36;
    }

    else
    {
      free(v39);
      archive_set_error(v43, 12, "Can't allocate memory for Name", v19, v20, v21, v22, v23, v35);
      return -30;
    }
  }

  else
  {
    archive_set_error(v43, 12, "Can't allocate memory", v3, v4, v5, v6, v7, v35);
    return -30;
  }
}

uint64_t file_register_empty(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 61736) = a2;
  *(result + 61736) = a2 + 24;
  return result;
}

uint64_t _7z_compression_init_encoder(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 248);
  if (a2)
  {
    switch(a2)
    {
      case 33:
        inited = compression_init_encoder_lzma2(a1, (v5 + 17), a3);
        goto LABEL_14;
      case 196865:
        inited = compression_init_encoder_lzma1(a1, (v5 + 17), a3);
        goto LABEL_14;
      case 197633:
        inited = compression_init_encoder_ppmd(a1, (v5 + 17), 6, 0x1000000u);
        goto LABEL_14;
      case 262408:
        inited = compression_init_encoder_deflate(a1, (v5 + 17), a3, 0);
        goto LABEL_14;
      case 262658:
        inited = compression_init_encoder_bzip2_0(a1, (v5 + 17), a3);
        goto LABEL_14;
    }
  }

  inited = compression_init_encoder_copy(a1, (v5 + 17));
LABEL_14:
  if (!inited)
  {
    v5[19] = 0;
    v5[20] = v5 + 33;
    v5[21] = 61440;
    v5[22] = 0;
  }

  return inited;
}

uint64_t file_register_0(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = 0;
  **(result + 61720) = a2;
  *(result + 61720) = a2 + 24;
  return result;
}

uint64_t compress_out(uint64_t a1, const Bytef *a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a1 + 248);
  if (a4 || *(v7 + 152) || a3)
  {
    if ((*(v7 + 124) & 1) != 0 && a3)
    {
      *(v7 + 116) = crc32(*(v7 + 116), a2, a3);
    }

    *(v7 + 136) = a2;
    *(v7 + 144) = a3;
    do
    {
      do
      {
        v6 = compression_code_0(a1, v7 + 136, a4);
        if (v6 >= 2)
        {
          return -30;
        }

        if (*(v7 + 168))
        {
          break;
        }

        if (write_to_temp_1(a1, (v7 + 264), 0xF000uLL))
        {
          return -30;
        }

        *(v7 + 160) = v7 + 264;
        *(v7 + 168) = 61440;
        if ((*(v7 + 124) & 2) != 0)
        {
          *(v7 + 120) = crc32(*(v7 + 120), (v7 + 264), 0xF000u);
        }
      }

      while (!a4 && v6 != 1);
    }

    while (*(v7 + 144));
    if (!a4)
    {
      v5 = 61440 - *(v7 + 168);
      if (write_to_temp_1(a1, (v7 + 264), v5))
      {
        return -30;
      }

      if ((*(v7 + 124) & 2) != 0 && v5)
      {
        *(v7 + 120) = crc32(*(v7 + 120), (v7 + 264), v5);
      }
    }

    return a3;
  }

  return 0;
}

uint64_t compression_init_encoder_deflate(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
  }

  strm = malloc_type_calloc(1uLL, 0x70uLL, 0x10B0040E8CA615DuLL);
  if (strm)
  {
    strm->next_in = *a2;
    strm->avail_in = *(a2 + 8);
    strm->total_in = *(a2 + 16);
    strm->next_out = *(a2 + 24);
    strm->avail_out = *(a2 + 32);
    strm->total_out = *(a2 + 40);
    if (a4)
    {
      v9 = 15;
    }

    else
    {
      v9 = -15;
    }

    if (deflateInit2_(strm, a3, 8, v9, 8, 0, "1.2.12", 112))
    {
      free(strm);
      *(a2 + 72) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library", v10, v11, v12, v13, v14, v16);
      return -30;
    }

    else
    {
      *(a2 + 72) = strm;
      *(a2 + 64) = 1;
      *(a2 + 80) = compression_code_deflate;
      *(a2 + 88) = compression_end_deflate;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for gzip stream", v4, v5, v6, v7, v8, v16);
    return -30;
  }
}

uint64_t compression_init_encoder_bzip2_0(_DWORD *a1, uint64_t a2, int a3)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
  }

  strm = malloc_type_calloc(1uLL, 0x50uLL, 0x10900403A81BCDDuLL);
  if (strm)
  {
    strm->next_in = *a2;
    strm->avail_in = *(a2 + 8);
    *&strm->total_in_lo32 = *(a2 + 16);
    strm->next_out = *(a2 + 24);
    strm->avail_out = *(a2 + 32);
    *&strm->total_out_lo32 = *(a2 + 40);
    if (BZ2_bzCompressInit(strm, a3, 0, 30))
    {
      free(strm);
      *(a2 + 72) = 0;
      archive_set_error(a1, -1, "Internal error initializing compression library", v8, v9, v10, v11, v12, v14);
      return -30;
    }

    else
    {
      *(a2 + 72) = strm;
      *(a2 + 64) = 1;
      *(a2 + 80) = compression_code_bzip2_0;
      *(a2 + 88) = compression_end_bzip2_0;
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for bzip2 stream", v3, v4, v5, v6, v7, v14);
    return -30;
  }
}

uint64_t compression_init_encoder_ppmd(_DWORD *a1, uint64_t a2, int a3, unsigned int a4)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
  }

  v27 = malloc_type_calloc(1uLL, 0x4B48uLL, 0x10B0040A3FB22B0uLL);
  if (v27)
  {
    v27[2405] = malloc_type_malloc(0x20uLL, 0x44F2E7CDuLL);
    if (v27[2405])
    {
      v27[2406] = v27[2405];
      v27[2407] = v27[2405] + 32;
      v26 = malloc_type_malloc(5uLL, 0x34F1FCB7uLL);
      if (v26)
      {
        *v26 = a3;
        archive_le32enc_4((v26 + 1), a4);
        __archive_ppmd7_functions((v27 + 1));
        if ((off_1F3DE4D68[0])((v27 + 1), a4))
        {
          off_1F3DE4D78((v27 + 1), a3);
          v27[2403] = a1;
          v27[2404] = ppmd_write;
          v27[2402] = v27 + 2403;
          (off_1F3DE4DA8[0])((v27 + 2399));
          *v27 = 0;
          *(a2 + 72) = v27;
          *(a2 + 64) = 1;
          *(a2 + 80) = compression_code_ppmd;
          *(a2 + 88) = compression_end_ppmd;
          *(a2 + 48) = 5;
          *(a2 + 56) = v26;
          return 0;
        }

        else
        {
          free(v27[2405]);
          free(v27);
          free(v26);
          archive_set_error(a1, 12, "Coludn't allocate memory for PPMd", v19, v20, v21, v22, v23, v25);
          return -30;
        }
      }

      else
      {
        free(v27[2405]);
        free(v27);
        archive_set_error(a1, 12, "Coludn't allocate memory for PPMd", v14, v15, v16, v17, v18, v25);
        return -30;
      }
    }

    else
    {
      free(v27);
      archive_set_error(a1, 12, "Can't allocate memory for PPMd", v9, v10, v11, v12, v13, v25);
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for PPMd", v4, v5, v6, v7, v8, v25);
    return -30;
  }
}

uint64_t compression_init_encoder_copy(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    compression_end_0(a1, a2);
  }

  *(a2 + 64) = 1;
  *(a2 + 80) = compression_code_copy;
  *(a2 + 88) = compression_end_copy;
  return 0;
}

uint64_t compression_end_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    *(a2 + 48) = 0;
    free(*(a2 + 56));
    *(a2 + 56) = 0;
    return (*(a2 + 88))(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_deflate(_DWORD *a1, Bytef **a2, int a3)
{
  strm = a2[9];
  strm->next_in = *a2;
  strm->avail_in = a2[1];
  strm->total_in = a2[2];
  strm->next_out = a2[3];
  strm->avail_out = a2[4];
  strm->total_out = a2[5];
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  v10 = deflate(strm, v3);
  *a2 = strm->next_in;
  a2[1] = strm->avail_in;
  a2[2] = strm->total_in;
  a2[3] = strm->next_out;
  a2[4] = strm->avail_out;
  a2[5] = strm->total_out;
  if (v10)
  {
    if (v10 == 1)
    {
      return 1;
    }

    else
    {
      archive_set_error(a1, -1, "GZip compression failed: deflate() call returned status %d", v4, v5, v6, v7, v8, v10);
      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end_deflate(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 72);
  v9 = deflateEnd(strm);
  free(strm);
  *(a2 + 72) = 0;
  *(a2 + 64) = 0;
  if (v9)
  {
    archive_set_error(a1, -1, "Failed to clean up compressor", v2, v3, v4, v5, v6, v8);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t compression_code_bzip2_0(_DWORD *a1, char **a2, int a3)
{
  strm = a2[9];
  strm->next_in = *a2;
  strm->avail_in = a2[1];
  *&strm->total_in_lo32 = a2[2];
  strm->next_out = a2[3];
  strm->avail_out = a2[4];
  *&strm->total_out_lo32 = a2[5];
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v10 = BZ2_bzCompress(strm, v3);
  *a2 = strm->next_in;
  a2[1] = strm->avail_in;
  a2[2] = (strm->total_in_lo32 + (strm->total_in_hi32 << 32));
  a2[3] = strm->next_out;
  a2[4] = strm->avail_out;
  a2[5] = (strm->total_out_lo32 + (strm->total_out_hi32 << 32));
  if (v10 == 1 || v10 == 3)
  {
    return 0;
  }

  else if (v10 == 4)
  {
    return 1;
  }

  else
  {
    archive_set_error(a1, -1, "Bzip2 compression failed: BZ2_bzCompress() call returned status %d", v4, v5, v6, v7, v8, v10);
    return -30;
  }
}

uint64_t compression_end_bzip2_0(_DWORD *a1, uint64_t a2)
{
  strm = *(a2 + 72);
  v9 = BZ2_bzCompressEnd(strm);
  free(strm);
  *(a2 + 72) = 0;
  *(a2 + 64) = 0;
  if (v9)
  {
    archive_set_error(a1, -1, "Failed to clean up compressor", v2, v3, v4, v5, v6, v8);
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t compression_init_encoder_lzma_0(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = 0;
  v39 = 0;
  memset(__b, 0, sizeof(__b));
  if (*(v43 + 64))
  {
    compression_end_0(v44, v43);
  }

  v40 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10F00405178BF3FuLL);
  if (v40)
  {
    v39 = v40 + 136;
    if (v42 > 9)
    {
      v42 = 9;
    }

    if (lzma_lzma_preset())
    {
      free(v40);
      *(v43 + 72) = 0;
      archive_set_error(v44, 12, "Internal error initializing compression library", v9, v10, v11, v12, v13, v36);
      return -30;
    }

    else
    {
      *v39 = v41;
      v39[1] = __b;
      v39[2] = -1;
      if (lzma_properties_size())
      {
        free(v40);
        *(v43 + 72) = 0;
        archive_set_error(v44, -1, "lzma_properties_size failed", v14, v15, v16, v17, v18, v36);
        return -30;
      }

      else
      {
        if (*(v43 + 48))
        {
          *(v43 + 56) = malloc_type_malloc(*(v43 + 48), 0xCBD65F51uLL);
          if (!*(v43 + 56))
          {
            free(v40);
            *(v43 + 72) = 0;
            archive_set_error(v44, 12, "Cannot allocate memory", v19, v20, v21, v22, v23, v36);
            return -30;
          }

          v24 = *(v43 + 56);
          if (lzma_properties_encode())
          {
            free(v40);
            *(v43 + 72) = 0;
            archive_set_error(v44, -1, "lzma_properties_encode failed", v25, v26, v27, v28, v29, v36);
            return -30;
          }
        }

        memcpy(v40, &compression_init_encoder_lzma_lzma_init_data_0, 0x88uLL);
        HIDWORD(v36) = lzma_raw_encoder();
        if (HIDWORD(v36))
        {
          free(v40);
          *(v43 + 72) = 0;
          if (HIDWORD(v36) == 5)
          {
            archive_set_error(v44, 12, "Internal error initializing compression library: Cannot allocate memory", v30, v31, v32, v33, v34, v36);
          }

          else
          {
            archive_set_error(v44, -1, "Internal error initializing compression library: It's a bug in liblzma", v30, v31, v32, v33, v34, v36);
          }

          return -30;
        }

        else
        {
          *(v43 + 72) = v40;
          *(v43 + 64) = 1;
          *(v43 + 80) = compression_code_lzma_0;
          *(v43 + 88) = compression_end_lzma_0;
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(v44, 12, "Can't allocate memory for lzma stream", v4, v5, v6, v7, v8, v36);
    return -30;
  }
}

uint64_t compression_code_lzma_0(_DWORD *a1, void *a2)
{
  v15 = a2[9];
  *v15 = *a2;
  v15[1] = a2[1];
  v15[2] = a2[2];
  v15[3] = a2[3];
  v15[4] = a2[4];
  v15[5] = a2[5];
  v14 = lzma_code();
  *a2 = *v15;
  a2[1] = v15[1];
  a2[2] = v15[2];
  a2[3] = v15[3];
  a2[4] = v15[4];
  a2[5] = v15[5];
  if (v14)
  {
    if (v14 == 1)
    {
      return 1;
    }

    else
    {
      if (v14 == 6)
      {
        v7 = lzma_memusage();
        archive_set_error(a1, 12, "lzma compression error: %ju MiB would have been needed", v8, v9, v10, v11, v12, (v7 + 0xFFFFF) / 0x100000uLL);
      }

      else
      {
        archive_set_error(a1, -1, "lzma compression failed: lzma_code() call returned status %d", v2, v3, v4, v5, v6, v14);
      }

      return -30;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t compression_end_lzma_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  lzma_end();
  free(v3);
  result = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t archive_le32enc_4(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t ppmd_write(uint64_t result, char a2)
{
  v6 = *(*result + 248);
  if (v6[21])
  {
    v2 = v6[20];
    v6[20] = v2 + 1;
    *v2 = a2;
    --v6[21];
    ++v6[22];
  }

  else
  {
    v5 = v6[26];
    if (v5[2406] < v5[2407])
    {
      v3 = v6[26];
      v4 = v5[2406];
      v5[2406] = v4 + 1;
      *v4 = a2;
      ++v5[2408];
    }
  }

  return result;
}

uint64_t compression_code_ppmd(uint64_t a1, void *a2, int a3)
{
  v11 = a2[9];
  if (*(v11 + 19264))
  {
    v10 = (*(v11 + 19248) - *(v11 + 19264));
    while (1)
    {
      v9 = 0;
      if (a2[4])
      {
        v9 = *(v11 + 19264) != 0;
      }

      if (!v9)
      {
        break;
      }

      v3 = v10++;
      LOBYTE(v3) = *v3;
      v4 = a2[3];
      a2[3] = v4 + 1;
      *v4 = v3;
      --a2[4];
      ++a2[5];
      --*(v11 + 19264);
    }

    if (*(v11 + 19264))
    {
      return 0;
    }

    if (*v11 == 1)
    {
      return 1;
    }

    *(v11 + 19248) = *(v11 + 19240);
  }

  while (1)
  {
    v8 = 0;
    if (a2[1])
    {
      v8 = a2[4] != 0;
    }

    if (!v8)
    {
      break;
    }

    v5 = off_1F3DE4DB8[0];
    v6 = (*a2)++;
    v5((v11 + 8), v11 + 19192, *v6);
    --a2[1];
    ++a2[2];
  }

  v14 = 0;
  if (!a2[1] && !a3)
  {
    off_1F3DE4DB0(v11 + 19192);
    *v11 = 1;
    if (!*(v11 + 19264))
    {
      return 1;
    }
  }

  return v14;
}

uint64_t compression_end_ppmd(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  off_1F3DE4D70((v3 + 1));
  free(v3[2405]);
  free(v3);
  *(a2 + 72) = 0;
  result = 0;
  *(a2 + 64) = 0;
  return result;
}

BOOL compression_code_copy(uint64_t a1, uint64_t *a2, int a3)
{
  if (a2[4] > a2[1])
  {
    v6 = a2[1];
  }

  else
  {
    v6 = a2[4];
  }

  if (v6)
  {
    v3 = a2[3];
    v4 = *a2;
    __memcpy_chk();
    *a2 += v6;
    a2[1] -= v6;
    a2[2] += v6;
    a2[3] += v6;
    a2[4] -= v6;
    a2[5] += v6;
  }

  return !a3 && !a2[1];
}

uint64_t compression_end_copy(uint64_t a1, uint64_t a2)
{
  result = 0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t compression_code_0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 64))
  {
    return (*(a2 + 80))(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t write_to_temp_1(uint64_t a1, char *a2, size_t a3)
{
  v19 = *(a1 + 248);
  if (*v19 == -1 && (*(v19 + 8) = 0, *v19 = __archive_mktemp(0), (*v19 & 0x80000000) != 0))
  {
    v3 = __error();
    archive_set_error(a1, *v3, "Couldn't create temporary file", v4, v5, v6, v7, v8, v16);
    return -30;
  }

  else
  {
    __buf = a2;
    while (a3)
    {
      v17 = write(*v19, __buf, a3);
      if (v17 < 0)
      {
        v9 = __error();
        archive_set_error(a1, *v9, "fwrite function failed", v10, v11, v12, v13, v14, v16);
        return -30;
      }

      a3 -= v17;
      __buf += v17;
      *(v19 + 8) += v17;
    }

    return 0;
  }
}

uint64_t make_header(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, _DWORD *a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = *(a1 + 248);
  *&v11[8] = 0;
  v10 = 0;
  v9 = 0;
  *v11 = enc_uint64(a1, 1uLL);
  if ((*v11 & 0x80000000) != 0)
  {
    return *v11;
  }

  else
  {
    if (v12[4])
    {
      *v11 = enc_uint64(v18, 4uLL);
      if ((*v11 & 0x80000000) != 0)
      {
        return *v11;
      }

      *v11 = make_streamsInfo(v18, v17, v16, v15, v14, v13, 1, 0);
      if ((*v11 & 0x80000000) != 0)
      {
        return *v11;
      }
    }

    *v11 = enc_uint64(v18, 5uLL);
    if ((*v11 & 0x80000000) != 0)
    {
      return *v11;
    }

    else
    {
      *v11 = enc_uint64(v18, v12[3]);
      if ((*v11 & 0x80000000) != 0)
      {
        return *v11;
      }

      else
      {
        if (v12[5])
        {
          *v11 = enc_uint64(v18, 0xEuLL);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          *v11 = enc_uint64(v18, (v12[3] + 7) >> 3);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          v10 = 0;
          v9 = 0x80;
          for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
          {
            if (!*(*&v11[4] + 48))
            {
              v10 |= v9;
            }

            v9 = v9 >> 1;
            if (!v9)
            {
              *v11 = compress_out(v18, &v10, 1, 1u);
              if ((*v11 & 0x80000000) != 0)
              {
                return *v11;
              }

              v9 = 0x80;
              v10 = 0;
            }
          }

          if (v9 != 128)
          {
            *v11 = compress_out(v18, &v10, 1, 1u);
            if ((*v11 & 0x80000000) != 0)
            {
              return *v11;
            }
          }
        }

        if (v12[5] > v12[6])
        {
          *v11 = enc_uint64(v18, 0xFuLL);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          *v11 = enc_uint64(v18, (v12[5] + 7) >> 3);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          v10 = 0;
          v9 = 0x80;
          for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
          {
            if (!*(*&v11[4] + 48))
            {
              if ((*(*&v11[4] + 120) & 1) == 0)
              {
                v10 |= v9;
              }

              v9 = v9 >> 1;
              if (!v9)
              {
                *v11 = compress_out(v18, &v10, 1, 1u);
                if ((*v11 & 0x80000000) != 0)
                {
                  return *v11;
                }

                v9 = 0x80;
                v10 = 0;
              }
            }
          }

          if (v9 != 128)
          {
            *v11 = compress_out(v18, &v10, 1, 1u);
            if ((*v11 & 0x80000000) != 0)
            {
              return *v11;
            }
          }
        }

        *v11 = enc_uint64(v18, 0x11uLL);
        if ((*v11 & 0x80000000) != 0)
        {
          return *v11;
        }

        else
        {
          *v11 = enc_uint64(v18, v12[7] + 1);
          if ((*v11 & 0x80000000) != 0)
          {
            return *v11;
          }

          else
          {
            *v11 = enc_uint64(v18, 0);
            if ((*v11 & 0x80000000) != 0)
            {
              return *v11;
            }

            else
            {
              for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
              {
                *v11 = compress_out(v18, *(*&v11[4] + 40), (*(*&v11[4] + 32) + 2), 1u);
                if ((*v11 & 0x80000000) != 0)
                {
                  return *v11;
                }
              }

              *v11 = make_time(v18, 0x14u, 1, 0);
              if ((*v11 & 0x80000000) != 0)
              {
                return *v11;
              }

              else
              {
                *v11 = make_time(v18, 0x12u, 4, 2);
                if ((*v11 & 0x80000000) != 0)
                {
                  return *v11;
                }

                else
                {
                  *v11 = make_time(v18, 0x13u, 2, 1);
                  if ((*v11 & 0x80000000) != 0)
                  {
                    return *v11;
                  }

                  else
                  {
                    *v11 = enc_uint64(v18, 0x15uLL);
                    if ((*v11 & 0x80000000) != 0)
                    {
                      return *v11;
                    }

                    else
                    {
                      *v11 = enc_uint64(v18, 4 * v12[3] + 2);
                      if ((*v11 & 0x80000000) != 0)
                      {
                        return *v11;
                      }

                      else
                      {
                        *v11 = enc_uint64(v18, 1uLL);
                        if ((*v11 & 0x80000000) != 0)
                        {
                          return *v11;
                        }

                        else
                        {
                          *v11 = enc_uint64(v18, 0);
                          if ((*v11 & 0x80000000) != 0)
                          {
                            return *v11;
                          }

                          else
                          {
                            for (*&v11[4] = v12[7714]; *&v11[4]; *&v11[4] = *(*&v11[4] + 24))
                            {
                              *v8 = 0;
                              if (*(*&v11[4] + 120))
                              {
                                v7 = 16;
                              }

                              else
                              {
                                v7 = 32;
                              }

                              if ((*(*&v11[4] + 112) & 0x92) == 0)
                              {
                                v7 |= 1u;
                              }

                              archive_le32enc_4(v8, v7 | 0x8000 | (*(*&v11[4] + 112) << 16));
                              *v11 = compress_out(v18, v8, 4, 1u);
                              if ((*v11 & 0x80000000) != 0)
                              {
                                return *v11;
                              }
                            }

                            *v11 = enc_uint64(v18, 0);
                            if ((*v11 & 0x80000000) != 0)
                            {
                              return *v11;
                            }

                            else
                            {
                              *v11 = enc_uint64(v18, 0);
                              if ((*v11 & 0x80000000) != 0)
                              {
                                return *v11;
                              }

                              else
                              {
                                return 0;
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
}

uint64_t enc_uint64(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 128;
  v7[0] = 0;
  for (i = 1; i < 9; ++i)
  {
    if (a2 < v5)
    {
      v7[0] |= a2;
      break;
    }

    v7[i] = a2;
    a2 >>= 8;
    v7[0] |= v5;
    v5 >>= 1;
  }

  v3 = compress_out(a1, v7, i, 1u);
  *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t make_streamsInfo(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, _DWORD *a6, int a7, unsigned int a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = *(a1 + 248);
  v17 = 0;
  j = 0;
  m = 0;
  k = 0;
  substreamsInfo = 0;
  if (*a6)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(v18 + 32);
  }

  substreamsInfo = enc_uint64(v26, 6uLL);
  if ((substreamsInfo & 0x80000000) != 0)
  {
    v27 = substreamsInfo;
  }

  else
  {
    substreamsInfo = enc_uint64(v26, v25);
    if ((substreamsInfo & 0x80000000) != 0)
    {
      v27 = substreamsInfo;
    }

    else
    {
      substreamsInfo = enc_uint64(v26, v17);
      if ((substreamsInfo & 0x80000000) != 0)
      {
        v27 = substreamsInfo;
      }

      else
      {
        substreamsInfo = enc_uint64(v26, 9uLL);
        if ((substreamsInfo & 0x80000000) != 0)
        {
          v27 = substreamsInfo;
        }

        else
        {
          if (v17 <= 1)
          {
            substreamsInfo = enc_uint64(v26, v24);
            if ((substreamsInfo & 0x80000000) != 0)
            {
              v27 = substreamsInfo;
              goto LABEL_85;
            }
          }

          else
          {
            for (i = *(v18 + 61712); i && *(i + 48); i = *(i + 24))
            {
              substreamsInfo = enc_uint64(v26, *(i + 48));
              if ((substreamsInfo & 0x80000000) != 0)
              {
                v27 = substreamsInfo;
                goto LABEL_85;
              }
            }
          }

          substreamsInfo = enc_uint64(v26, 0);
          if ((substreamsInfo & 0x80000000) != 0)
          {
            v27 = substreamsInfo;
          }

          else
          {
            substreamsInfo = enc_uint64(v26, 7uLL);
            if ((substreamsInfo & 0x80000000) != 0)
            {
              v27 = substreamsInfo;
            }

            else
            {
              substreamsInfo = enc_uint64(v26, 0xBuLL);
              if ((substreamsInfo & 0x80000000) != 0)
              {
                v27 = substreamsInfo;
              }

              else
              {
                substreamsInfo = enc_uint64(v26, v17);
                if ((substreamsInfo & 0x80000000) != 0)
                {
                  v27 = substreamsInfo;
                }

                else
                {
                  substreamsInfo = enc_uint64(v26, 0);
                  if ((substreamsInfo & 0x80000000) != 0)
                  {
                    v27 = substreamsInfo;
                  }

                  else
                  {
                    for (j = 0; j < v17; ++j)
                    {
                      substreamsInfo = enc_uint64(v26, v22);
                      if ((substreamsInfo & 0x80000000) != 0)
                      {
                        v27 = substreamsInfo;
                        goto LABEL_85;
                      }

                      for (k = 0; k < v22; ++k)
                      {
                        v11 = v21[6 * k];
                        archive_be64enc_0(v28, v11);
                          ;
                        }

                        if (!m)
                        {
                          m = 1;
                        }

                        if (*&v21[6 * k + 2])
                        {
                          substreamsInfo = enc_uint64(v26, m | 0x20);
                        }

                        else
                        {
                          substreamsInfo = enc_uint64(v26, m);
                        }

                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                          goto LABEL_85;
                        }

                        m &= 0xFu;
                        substreamsInfo = compress_out(v26, &v28[8 - m], m, 1u);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                          goto LABEL_85;
                        }

                        if (*&v21[6 * k + 2])
                        {
                          substreamsInfo = enc_uint64(v26, *&v21[6 * k + 2]);
                          if ((substreamsInfo & 0x80000000) != 0)
                          {
                            v27 = substreamsInfo;
                            goto LABEL_85;
                          }

                          substreamsInfo = compress_out(v26, *&v21[6 * k + 4], *&v21[6 * k + 2], 1u);
                          if ((substreamsInfo & 0x80000000) != 0)
                          {
                            v27 = substreamsInfo;
                            goto LABEL_85;
                          }
                        }
                      }
                    }

                    substreamsInfo = enc_uint64(v26, 0xCuLL);
                    if ((substreamsInfo & 0x80000000) != 0)
                    {
                      v27 = substreamsInfo;
                    }

                    else
                    {
                      if (v17 <= 1)
                      {
                        substreamsInfo = enc_uint64(v26, v23);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                          goto LABEL_85;
                        }
                      }

                      else
                      {
                        for (n = *(v18 + 61712); n && *(n + 48); n = *(n + 24))
                        {
                          substreamsInfo = enc_uint64(v26, *(n + 48));
                          if ((substreamsInfo & 0x80000000) != 0)
                          {
                            v27 = substreamsInfo;
                            goto LABEL_85;
                          }
                        }
                      }

                      if (!v20)
                      {
                        substreamsInfo = enc_uint64(v26, 0xAuLL);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                          goto LABEL_85;
                        }

                        substreamsInfo = enc_uint64(v26, 1uLL);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                          goto LABEL_85;
                        }

                        archive_le32enc_4(v9, v19);
                        substreamsInfo = compress_out(v26, v9, 4, 1u);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                          goto LABEL_85;
                        }
                      }

                      substreamsInfo = enc_uint64(v26, 0);
                      if ((substreamsInfo & 0x80000000) != 0)
                      {
                        v27 = substreamsInfo;
                      }

                      else if (v20 && (substreamsInfo = make_substreamsInfo(v26, v21), (substreamsInfo & 0x80000000) != 0))
                      {
                        v27 = substreamsInfo;
                      }

                      else
                      {
                        substreamsInfo = enc_uint64(v26, 0);
                        if ((substreamsInfo & 0x80000000) != 0)
                        {
                          v27 = substreamsInfo;
                        }

                        else
                        {
                          v27 = 0;
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

LABEL_85:
  *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t archive_le64enc_1(uint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a2);
  archive_le32enc_4(a1, a2);
  return archive_le32enc_4(a1 + 4, v4);
}

uint64_t copy_out_0(uint64_t a1, off_t a2, size_t a3)
{
  v25 = *(a1 + 248);
  if (*(v25 + 8) && lseek(*v25, a2, 0) < 0)
  {
    v3 = __error();
    archive_set_error(a1, *v3, "lseek failed", v4, v5, v6, v7, v8, v22);
    return -30;
  }

  else
  {
    while (a3)
    {
      if (a3 > *(v25 + 61704))
      {
        v9 = read(*v25, (v25 + 264 + 61440 - *(v25 + 61704)), *(v25 + 61704));
      }

      else
      {
        v9 = read(*v25, (v25 + 264 + 61440 - *(v25 + 61704)), a3);
      }

      v23 = v9;
      if (v9 < 0)
      {
        v15 = __error();
        archive_set_error(a1, *v15, "Can't read temporary file(%jd)", v16, v17, v18, v19, v20, v23);
        return -30;
      }

      if (!v9)
      {
        archive_set_error(a1, 0, "Truncated 7-Zip archive", v10, v11, v12, v13, v14, v22);
        return -30;
      }

      *(v25 + 61704) -= v9;
      a3 -= v9;
      if (!*(v25 + 61704))
      {
        v24 = flush_wbuff_0(a1);
        if (v24)
        {
          return v24;
        }
      }
    }

    return 0;
  }
}

uint64_t flush_wbuff_0(uint64_t a1)
{
  v3 = *(a1 + 248);
  v2 = __archive_write_output(a1, v3 + 264, 61440 - *(v3 + 61704));
  if (v2)
  {
    return v2;
  }

  else
  {
    *(v3 + 61704) = 61440;
    return 0;
  }
}

uint64_t make_time(uint64_t a1, unsigned __int8 a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = *(a1 + 248);
  i = 0;
  v8 = 0;
  v7 = 0;
  if (*(v10 + 64 + 8 * a4) == *(v10 + 24))
  {
    v8 = enc_uint64(v14, v13);
    if ((v8 & 0x80000000) != 0)
    {
      v15 = v8;
      goto LABEL_38;
    }

    v8 = enc_uint64(v14, 8 * *(v10 + 24) + 2);
    if ((v8 & 0x80000000) != 0)
    {
      v15 = v8;
      goto LABEL_38;
    }

    v8 = enc_uint64(v14, 1uLL);
    if ((v8 & 0x80000000) != 0)
    {
      v15 = v8;
      goto LABEL_38;
    }
  }

  else
  {
    if (!*(v10 + 64 + 8 * v11))
    {
      v15 = 0;
      goto LABEL_38;
    }

    v8 = enc_uint64(v14, v13);
    if ((v8 & 0x80000000) != 0)
    {
      v15 = v8;
      goto LABEL_38;
    }

    v8 = enc_uint64(v14, ((*(v10 + 24) + 7) >> 3) + 2 + 8 * *(v10 + 64 + 8 * v11));
    if ((v8 & 0x80000000) != 0)
    {
      v15 = v8;
      goto LABEL_38;
    }

    v8 = enc_uint64(v14, 0);
    if ((v8 & 0x80000000) != 0)
    {
      v15 = v8;
      goto LABEL_38;
    }

    v7 = 0;
    v6 = 0x80;
    for (i = *(v10 + 61712); i; i = *(i + 24))
    {
      if ((*(i + 56) & v12) != 0)
      {
        v7 |= v6;
      }

      v6 = v6 >> 1;
      if (!v6)
      {
        v8 = compress_out(v14, &v7, 1, 1u);
        if ((v8 & 0x80000000) != 0)
        {
          v15 = v8;
          goto LABEL_38;
        }

        v6 = 0x80;
        v7 = 0;
      }
    }

    if (v6 != 128)
    {
      v8 = compress_out(v14, &v7, 1, 1u);
      if ((v8 & 0x80000000) != 0)
      {
        v15 = v8;
        goto LABEL_38;
      }
    }
  }

  v8 = enc_uint64(v14, 0);
  if ((v8 & 0x80000000) != 0)
  {
    v15 = v8;
  }

  else
  {
    for (i = *(v10 + 61712); i; i = *(i + 24))
    {
      if ((*(i + 56) & v12) != 0)
      {
        v4 = utcToFiletime(*(i + 64 + 16 * v11), *(i + 64 + 16 * v11 + 8));
        archive_le64enc_1(v16, v4);
        v8 = compress_out(v14, v16, 8, 1u);
        if ((v8 & 0x80000000) != 0)
        {
          v15 = v8;
          goto LABEL_38;
        }
      }
    }

    v15 = 0;
  }

LABEL_38:
  *MEMORY[0x1E69E9840];
  return v15;
}

_BYTE *archive_be64enc_0(_BYTE *a1, uint64_t a2)
{
  v4 = a2;
  archive_be32enc_2(a1, SHIDWORD(a2));
  return archive_be32enc_2(a1 + 4, v4);
}

uint64_t make_substreamsInfo(uint64_t a1, _DWORD *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = *(a1 + 248);
  *&v4[8] = 0;
  *v4 = enc_uint64(a1, 8uLL);
  if ((*v4 & 0x80000000) != 0)
  {
    return *v4;
  }

  else
  {
    if (*(v5 + 32) > 1uLL && *v6)
    {
      *v4 = enc_uint64(v7, 0xDuLL);
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      *v4 = enc_uint64(v7, *(v5 + 32));
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      *v4 = enc_uint64(v7, 9uLL);
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      for (*&v4[4] = *(v5 + 61712); *&v4[4] && *(*&v4[4] + 24) && *(*(*&v4[4] + 24) + 48); *&v4[4] = *(*&v4[4] + 24))
      {
        *v4 = enc_uint64(v7, *(*&v4[4] + 48));
        if ((*v4 & 0x80000000) != 0)
        {
          return *v4;
        }
      }
    }

    *v4 = enc_uint64(v7, 0xAuLL);
    if ((*v4 & 0x80000000) != 0)
    {
      return *v4;
    }

    else
    {
      *v4 = enc_uint64(v7, 1uLL);
      if ((*v4 & 0x80000000) != 0)
      {
        return *v4;
      }

      else
      {
        for (*&v4[4] = *(v5 + 61712); *&v4[4] && *(*&v4[4] + 48); *&v4[4] = *(*&v4[4] + 24))
        {
          archive_le32enc_4(v3, *(*&v4[4] + 116));
          *v4 = compress_out(v7, v3, 4, 1u);
          if ((*v4 & 0x80000000) != 0)
          {
            return *v4;
          }
        }

        *v4 = enc_uint64(v7, 0);
        if ((*v4 & 0x80000000) != 0)
        {
          return *v4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

_BYTE *archive_be32enc_2(_BYTE *result, int a2)
{
  *result = HIBYTE(a2);
  result[1] = BYTE2(a2);
  result[2] = BYTE1(a2);
  result[3] = a2;
  return result;
}

void file_free_register_0(uint64_t a1)
{
  for (i = *(a1 + 61712); i; i = v1)
  {
    v1 = *(i + 24);
    file_free_0(i);
  }
}

uint64_t archive_write_set_passphrase(int *a1, const char *a2)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_passphrase") == -30)
  {
    return -30;
  }

  else
  {
    return set_passphrase(a1, a2, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t set_passphrase(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && *a2)
  {
    free(*(a1 + 320));
    *(a1 + 320) = strdup(a2);
    if (*(a1 + 320))
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 12, "Can't allocate data for passphrase", v8, v9, v10, v11, v12, v14);
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, -1, "Empty passphrase is unacceptable", a4, a5, a6, a7, a8, v14);
    return -25;
  }
}

uint64_t archive_write_set_passphrase_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__archive_check_magic(a1, -1329217314, 1, "archive_write_set_passphrase_callback") == -30)
  {
    return -30;
  }

  else
  {
    *(a1 + 328) = a3;
    *(a1 + 336) = a2;
    return 0;
  }
}

uint64_t __archive_write_get_passphrase(uint64_t a1)
{
  if (*(a1 + 320))
  {
    return *(a1 + 320);
  }

  if (*(a1 + 328))
  {
    v1 = (*(a1 + 328))(a1, *(a1 + 336));
    set_passphrase(a1, v1, v2, v3, v4, v5, v6, v7);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
  }

  return *(a1 + 320);
}

uint64_t rar5_read_header(_DWORD *a1, uint64_t a2)
{
  context = get_context(a1);
  if (!*context)
  {
    init_header(a1);
    v12 = try_skip_sfx(a1, v2, v3, v4, v5, v6, v7, v8);
    if (v12 < -20)
    {
      return v12;
    }

    *context = 1;
  }

  if (!*(context + 4))
  {
    if (consume(a1, 8uLL))
    {
      return 1;
    }

    *(context + 4) = 1;
  }

  do
  {
    v13 = process_base_block(a1, a2);
    v11 = 1;
    if (v13 != -10)
    {
      v10 = 0;
      if (!__OFSUB__(v13, -10) && ((*(context + 44) >> 2) & 1) != 0)
      {
        v10 = v13 == 0;
      }

      v11 = v10;
    }
  }

  while ((v11 & 1) != 0);
  return v13;
}

uint64_t rar5_read_data(_DWORD *a1, void *a2, void *a3, void *a4)
{
  context = get_context(a1);
  if (a3)
  {
    *a3 = 0;
  }

  if (v4 | (((*(context + 19400) >> 3) & 1) == 0))
  {
    if (*(context + 8) || *(context + 120) <= *(context + 19376))
    {
      if (use_data(context, a2, a3, a4))
      {
        if (((*(context + 19400) >> 2) & 1) == 1)
        {
          return 1;
        }

        else
        {
          v16 = do_unpack(a1, context, a2, a3, a4, v10, v11, v12);
          if (v16)
          {
            return v16;
          }

          else if (*(context + 19368) || *(context + 120) != *(context + 19376))
          {
            return 0;
          }

          else
          {
            *(context + 19400) = *(context + 19400) & 0xFB | 4;
            return verify_global_checksums(a1);
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      archive_set_error(a1, 22, "Unpacker has written too many bytes", v5, v6, v7, v8, v9, v14);
      return -30;
    }
  }

  else
  {
    archive_set_error(a1, 79, "Can't decompress an entry marked as a directory", v5, v6, v7, v8, v9, v14);
    return -25;
  }
}

uint64_t rar5_read_data_skip(_DWORD *a1)
{
  context = get_context(a1);
  if (*(context + 44))
  {
    while (*(context + 19368) > 0)
    {
      ++*(context + 8);
      data = rar5_read_data(a1, 0, 0, 0);
      --*(context + 8);
      if ((data & 0x80000000) != 0 || data == 1)
      {
        return data;
      }
    }

    return 0;
  }

  if (!consume(a1, *(context + 19368)))
  {
    *(context + 19368) = 0;
    return 0;
  }

  return -30;
}

uint64_t bid_standard(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a1;
  __s2 = 0;
  rar5_signature(__s1);
  if (read_ahead(v8, 8uLL, &__s2, v1, v2, v3, v4, v5))
  {
    if (!memcmp(__s1, __s2, 8uLL))
    {
      v9 = 30;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = -1;
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t bid_sfx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = a1;
  __s1 = __archive_read_ahead(a1, 7uLL, 0, a4, a5, a6, a7, a8);
  if (__s1)
  {
    if (*__s1 == 77 && *(__s1 + 1) == 90 || !memcmp(__s1, "\x7FELF", 4uLL))
    {
      v17 = 0x10000;
      v16 = 4096;
      v15 = 0;
      rar5_signature(__s2);
      while (v17 + v16 <= 0x80000)
      {
        v14 = __archive_read_ahead(v19, v17 + v16, &v15, v8, v9, v10, v11, v12);
        if (v14)
        {
          for (__s1 = (v14 + v17); __s1 + 8 < v14 + v15; __s1 = __s1 + 16)
          {
            if (!memcmp(__s1, __s2, 8uLL))
            {
              v20 = 30;
              goto LABEL_19;
            }
          }

          v17 = __s1 - v14;
        }

        else
        {
          v16 >>= 1;
          if (v16 < 64)
          {
            v20 = 0;
            goto LABEL_19;
          }
        }
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

LABEL_19:
  *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t rar5_signature(uint64_t result)
{
  for (i = 0; i < 8; ++i)
  {
    *(result + i) = rar5_signature_xor[i] ^ 0xA1;
  }

  return result;
}

BOOL read_ahead(uint64_t a1, size_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = -1;
  if (a3)
  {
    v8 = __archive_read_ahead(v13, v12, &v10, a4, a5, a6, a7, a8);
    *v11 = v8;
    return *v11 != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t init_header(uint64_t result)
{
  *(result + 16) = 0x100000;
  *(result + 24) = "RAR5";
  return result;
}

uint64_t try_skip_sfx(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = a1;
  ahead = __archive_read_ahead(a1, 7uLL, 0, a4, a5, a6, a7, a8);
  if (ahead)
  {
    if (*ahead == 77 && ahead[1] == 90 || !memcmp(ahead, "\x7FELF", 4uLL))
    {
      v20 = 0;
      v19 = 0;
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v15 = 4096;
      rar5_signature(__s2);
      while ((v17 + v15) <= 0x80000)
      {
        v20 = __archive_read_ahead(v22, v15, &v16, v8, v9, v10, v11, v12);
        if (v20)
        {
          if (v16 < 64)
          {
LABEL_19:
            archive_set_error(v22, 79, "Couldn't find out RAR header", v8, v9, v10, v11, v12, v14);
            v23 = -30;
            goto LABEL_20;
          }

          ahead = v20;
          v19 = &v20[v16];
          while (ahead + 8 < v19)
          {
            if (!memcmp(ahead, __s2, 8uLL))
            {
              v18 = (ahead - v20);
              __archive_read_consume(v22, ahead - v20);
              v23 = 0;
              goto LABEL_20;
            }

            ahead += 16;
          }

          v18 = (ahead - v20);
          __archive_read_consume(v22, ahead - v20);
          v17 += v18;
        }

        else
        {
          v15 >>= 1;
          if (v15 < 64)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

LABEL_20:
  *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t consume(uint64_t a1, unint64_t a2)
{
  v2 = __archive_read_consume(a1, a2);
  v3 = 0;
  if (a2 != v2)
  {
    return -30;
  }

  return v3;
}

uint64_t process_base_block(_DWORD *a1, uint64_t a2)
{
  v56 = a1;
  v55 = a2;
  v54 = 3;
  context = get_context(a1);
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  *len = 0;
  v47 = 0;
  v46 = 0;
  *&v45[8] = 0;
  *v45 = skip_unprocessed_bytes(v56);
  if (*v45)
  {
    return *v45;
  }

  else if (read_u32(v56, &v52, v2, v3, v4, v5, v6, v7))
  {
    if (read_var_sized(v56, &v50, &v49, v8, v9, v10, v11, v12))
    {
      *len = v50 + v49;
      if (v50 + v49 <= 0x200000)
      {
        if (v50 && v49 && *len >= 3uLL)
        {
          if (read_ahead(v56, *len, &v45[4], v13, v14, v15, v16, v17))
          {
            v51 = crc32(0, *&v45[4], len[0]);
            if (v51 == v52)
            {
              if (consume(v56, v49))
              {
                return 1;
              }

              else if (read_var_sized(v56, &v47, 0, v23, v24, v25, v26, v27))
              {
                if (read_var_sized(v56, &v46, 0, v28, v29, v30, v31, v32))
                {
                  *(context + 32) = *(context + 32) & 0xFE | ((v46 & 0x10) != 0);
                  *(context + 32) = *(context + 32) & 0xFD | (2 * ((v46 & 8) != 0));
                  *(context + 36) = len[0];
                  *(context + 40) = v47;
                  *(context + 44) &= ~4u;
                  if (v47)
                  {
                    switch(v47)
                    {
                      case 1:
                        *v45 = process_head_main(v56, context, v55, v46, v34, v35, v36, v37);
                        if (*v45)
                        {
                          return *v45;
                        }

                        else
                        {
                          return -10;
                        }

                      case 2:
                        return process_head_file();
                      case 3:
                        return process_head_service(v56, context);
                      case 4:
                        archive_set_error(v56, 79, "Encryption is not supported", v33, v34, v35, v36, v37, v44);
                        return -30;
                      case 5:
                        *(context + 44) = *(context + 44) & 0xFB | 4;
                        if ((*(context + 44) & 2) != 0)
                        {
                          if (scan_for_signature(v56) == -30)
                          {
                            return 1;
                          }

                          else if (*(context + 21272) == -1)
                          {
                            archive_set_error(v56, 79, "Header error", v38, v39, v40, v41, v42, v44);
                            return -30;
                          }

                          else
                          {
                            *(context + 21272) = *(context + 48) + 1;
                            return 0;
                          }
                        }

                        else
                        {
                          return 1;
                        }

                      default:
                        if ((v46 & 4) != 0)
                        {
                          return -10;
                        }

                        else
                        {
                          archive_set_error(v56, 79, "Header type error", v33, v34, v35, v36, v37, v44);
                          return -30;
                        }
                    }
                  }

                  else
                  {
                    return 1;
                  }
                }

                else
                {
                  return 1;
                }
              }

              else
              {
                return 1;
              }
            }

            else
            {
              archive_set_error(v56, 79, "Header CRC error", v18, v19, v20, v21, v22, v44);
              return -30;
            }
          }

          else
          {
            return 1;
          }
        }

        else
        {
          archive_set_error(v56, 79, "Too small block encountered (%zu bytes)", v13, v14, v15, v16, v17, v50);
          return -30;
        }
      }

      else
      {
        archive_set_error(v56, 79, "Base block header is too large", v13, v14, v15, v16, v17, v44);
        return -30;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t skip_unprocessed_bytes(_DWORD *a1)
{
  context = get_context(a1);
  if (!*(context + 19368))
  {
    return 0;
  }

  if (!*(context + 12))
  {
    data_skip = rar5_read_data_skip(a1);
    if (data_skip)
    {
      return data_skip;
    }

    return 0;
  }

  v2 = consume(a1, *(context + 19368));
  if (!v2)
  {
    *(context + 19368) = 0;
    return 0;
  }

  return v2;
}

BOOL read_u32(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  if (read_ahead(a1, 4uLL, &v10, a4, a5, a6, a7, a8))
  {
    v8 = archive_le32dec_6(v10);
    *v11 = v8;
    return consume(v12, 4uLL) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t read_var_sized(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = 0;
  v10 = 0;
  if (a3)
  {
    v9 = read_var(v14, &v11, &v10, a4, a5, a6, a7, a8);
  }

  else
  {
    v9 = read_var(v14, &v11, 0, a4, a5, a6, a7, a8);
  }

  if (v9 == 1 && v13)
  {
    *v13 = v11;
  }

  if (v12)
  {
    *v12 = v10;
  }

  return v9;
}

uint64_t process_head_main(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  if (a4)
  {
    if (!read_var_sized(v35, &v30, 0, a4, a5, a6, a7, a8))
    {
      return 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (read_var_sized(v35, &v27, 0, a4, a5, a6, a7, a8))
  {
    *(v34 + 44) = *(v34 + 44) & 0xFD | (2 * ((v27 & 1) != 0));
    *(v34 + 44) = *(v34 + 44) & 0xFE | ((v27 & 4) != 0);
    if ((v27 & 2) != 0)
    {
      v26 = 0;
      if (!read_var_sized(v35, &v26, 0, v8, v9, v10, v11, v12))
      {
        return 1;
      }

      if (v26 > 0xFFFFFFFF)
      {
        archive_set_error(v35, 79, "Invalid volume number", v8, v9, v10, v11, v12, v25);
        return -30;
      }

      *(v34 + 48) = v26;
    }

    else
    {
      *(v34 + 48) = 0;
    }

    if (!*(v34 + 21272) || *(v34 + 48) == *(v34 + 21272))
    {
      if (v30)
      {
        if (read_var_sized(v35, &v29, 0, v8, v9, v10, v11, v12))
        {
          if (read_var_sized(v35, &v28, 0, v13, v14, v15, v16, v17))
          {
            if (v29)
            {
              if (v28 == 1)
              {
                v31 = process_main_locator_extra_block(v35, v34, v18, v19, v20, v21, v22, v23);
                return v31 && v31;
              }

              else
              {
                archive_set_error(v35, 79, "Unsupported extra type (0x%x)", v19, v20, v21, v22, v23, v28);
                return -30;
              }
            }

            else
            {
              archive_set_error(v35, 79, "Invalid extra field size", v19, v20, v21, v22, v23, v25);
              return -30;
            }
          }

          else
          {
            return 1;
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 1;
  }
}