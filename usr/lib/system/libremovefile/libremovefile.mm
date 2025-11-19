int removefile(const char *path, removefile_state_t state, removefile_flags_t flags)
{
  v30[2] = *MEMORY[0x29EDCA608];
  v30[0] = 0;
  v30[1] = 0;
  if ((flags & 0x100) != 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 1024;
  }

  if (!path)
  {
    v12 = __error();
    v13 = 22;
LABEL_19:
    *v12 = v13;
    v14 = -1;
    goto LABEL_28;
  }

  if (strnlen(path, v3) >= v3)
  {
    v12 = __error();
    v13 = 63;
    goto LABEL_19;
  }

  v7 = state;
  if (state)
  {
    goto LABEL_9;
  }

  v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B00406DF828A6uLL);
  if (!v8)
  {
    v12 = __error();
    v13 = 12;
    goto LABEL_19;
  }

  v7 = v8;
  *(v8 + 17) = -1;
LABEL_9:
  *(v7 + 28) = flags;
  *(v7 + 29) = 0;
  if ((flags & 0x3C) != 0)
  {
    v9 = getpid();
    __removefile_init_random(v9, v7);
  }

  v10 = malloc_type_malloc(v3, 0x67D4BF9AuLL);
  if (v10)
  {
    v28 = 0x100000000;
    v29 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x800000005;
    if (getattrlist(path, &v27, &v25, 0xCuLL, 1u))
    {
      if (!*__error())
      {
LABEL_15:
        v30[0] = v10;
        if ((*(v7 + 113) & 8) != 0)
        {
          v11 = __removefile_tree_walker_slim(v10, v7);
        }

        else
        {
          v11 = __removefile_tree_walker(v30, v7);
        }

        v14 = v11;
        v15 = (v7 + 32);
        goto LABEL_23;
      }
    }

    else if (HIDWORD(v25) == 2 && v26 <= 1)
    {
      v19 = malloc_type_malloc(v3 | 0xC, 0x1CC121A2uLL);
      if (v19)
      {
        v20 = v19;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        bzero(v19, v3 | 0xC);
        LOWORD(v27) = 5;
        HIDWORD(v27) = 0x8000000;
        if (getattrlist(path, &v27, v20, v3 | 0xC, 1u))
        {
          v21 = *__error();
        }

        else
        {
          v22 = &v20[*v20];
          v23 = &v20[*(v20 + 1) + 4];
          v21 = 55;
          if (v23 <= v22)
          {
            v24 = *(v20 + 2);
            if (&v23[v24] <= v22 && v3 >= v24 && &v23[v24] <= &v20[v3 | 0xC])
            {
              memmove(v10, v23, v24);
              v21 = 0;
            }
          }
        }

        free(v20);
        if (!v21)
        {
          goto LABEL_15;
        }
      }
    }

    strncpy(v10, path, v3);
    v10[v3 - 1] = 0;
    goto LABEL_15;
  }

  v14 = -1;
  v15 = __error();
LABEL_23:
  v16 = *v15;
  if (!state)
  {
    removefile_state_free(v7);
  }

  if (v14)
  {
    *__error() = v16;
  }

  free(v10);
LABEL_28:
  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t __removefile_tree_walker_slim(const char *a1, uint64_t a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v37 = 0;
  if (!*a2 && !*(a2 + 40) && (*(a2 + 112) & 0x17C) == 0)
  {
    v9 = malloc_type_calloc(8uLL, 0x98uLL, 0x1020040087E41C9uLL);
    if (!v9)
    {
      v4 = 12;
      goto LABEL_7;
    }

    v10 = v9;
    memset(&v35, 0, sizeof(v35));
    snprintf(__str, 0x400uLL, "%s", a1);
    v11 = opendir(__str);
    *v10 = v11;
    v36 = v11;
    if (!v11)
    {
      *(a2 + 32) = *__error();
      goto LABEL_16;
    }

    v12 = v11;
    v13 = dirfd(v11);
    if (fstat(v13, (v10 + 1)))
    {
      *(a2 + 32) = *__error();
      closedir(v12);
LABEL_16:
      free(v10);
      goto LABEL_8;
    }

    v5 = 0;
    if (!*v10)
    {
      v14 = 8;
      goto LABEL_78;
    }

    v14 = 8;
    while (2)
    {
      v15 = v36;
      while (1)
      {
        if (*(a2 + 116))
        {
          v31 = 89;
          goto LABEL_75;
        }

        *__error() = 0;
        v16 = readdir(v15);
        if (!v16)
        {
          if (!*__error())
          {
            v24 = v37;
            if (((*(a2 + 112) & 2) == 0 || v37) && rmdir(__str) && check_error_cb(__str, a2, v24))
            {
              goto LABEL_76;
            }

            if (!move_to_parent_dir(__str, &v37, v10, &v36))
            {
              goto LABEL_51;
            }
          }

          v31 = *__error();
          goto LABEL_75;
        }

        v17 = v16;
        if (v16->d_name[0] != 46 || v16->d_name[1] && (v16->d_name[1] != 46 || v16->d_name[2]))
        {
          break;
        }

        if (!*v10)
        {
          goto LABEL_77;
        }
      }

      if (snprintf(__str, 0x400uLL, "%s/%s", __str, v16->d_name) > 1023)
      {
        v31 = 63;
        goto LABEL_75;
      }

      for (i = v17->d_type; !i; v17->d_type = i)
      {
        v5 = lstat(__str, &v35);
        if (v5)
        {
          goto LABEL_56;
        }

        v19 = v35.st_mode & 0xF000;
        if (v19 == 40960)
        {
          v20 = 10;
        }

        else
        {
          v20 = 8;
        }

        if (v19 == 0x8000)
        {
          i = 4;
        }

        else
        {
          i = v20;
        }
      }

      if (i != 4)
      {
        if (!unlink(__str) || !check_error_cb(__str, a2, v37))
        {
          v23 = strrchr(__str, 47);
          v5 = 0;
          if (v23)
          {
LABEL_55:
            *v23 = 0;
          }

          goto LABEL_56;
        }

        goto LABEL_76;
      }

      v21 = *(a2 + 112);
      if ((v21 & 0x80) != 0)
      {
        goto LABEL_59;
      }

      v22 = stat(__str, &v35);
      if (!v22)
      {
        if (v35.st_dev != LODWORD(v10[19 * v37 + 1]))
        {
          v23 = strrchr(__str, 47);
          if (v23)
          {
            v5 = 0;
            goto LABEL_55;
          }

LABEL_51:
          v5 = 0;
          goto LABEL_56;
        }

        v5 = 0;
        v21 = *(a2 + 112);
LABEL_59:
        if ((v21 & 0x200) != 0)
        {
          v34 = 0;
          fsctl(__str, 0xC0084A44uLL, &v34, 0);
        }

        v25 = v37 + 1;
        v37 = v25;
        if (v25 >= v14)
        {
          v14 *= 2;
          v26 = malloc_type_realloc(v10, 152 * v14, 0x1020040087E41C9uLL);
          v10 = v26;
          if (v26)
          {
            v27 = v37;
            bzero(&v26[19 * v37], (152 * v14) >> 1);
            v25 = v27;
            goto LABEL_64;
          }

          v31 = 12;
LABEL_75:
          *(a2 + 32) = v31;
LABEL_76:
          v5 = 0xFFFFFFFFLL;
          goto LABEL_77;
        }

LABEL_64:
        if (!unlinkat(-2, __str, 256))
        {
          v30 = strrchr(__str, 47);
          if (v30)
          {
            *v30 = 0;
          }

          v37 = v25 - 1;
          goto LABEL_56;
        }

        v28 = opendir(__str);
        v10[19 * v25] = v28;
        v36 = v28;
        if (!v28 || (v29 = dirfd(v28), fstat(v29, &v10[19 * v25 + 1])))
        {
          v5 = move_to_parent_dir(__str, &v37, v10, &v36);
        }

        if (v5)
        {
          if (!*(a2 + 32))
          {
            goto LABEL_86;
          }
        }

        else
        {
LABEL_56:
          if (*v10)
          {
            continue;
          }
        }

LABEL_77:
        if (v14 < 1)
        {
LABEL_82:
          free(v10);
          goto LABEL_9;
        }

LABEL_78:
        v32 = v14;
        v33 = v10;
        do
        {
          if (*v33)
          {
            closedir(*v33);
          }

          v33 += 19;
          --v32;
        }

        while (v32);
        goto LABEL_82;
      }

      break;
    }

    v5 = v22;
LABEL_86:
    *(a2 + 32) = *__error();
    goto LABEL_77;
  }

  v4 = 22;
LABEL_7:
  *(a2 + 32) = v4;
LABEL_8:
  v5 = 0xFFFFFFFFLL;
LABEL_9:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t __removefile_tree_walker(char *const *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  v6 = *(a2 + 112);
  if ((v6 & 0x100) != 0)
  {
    v7 = 80;
  }

  else
  {
    v7 = 84;
  }

  if ((v6 & 0x80) != 0)
  {
    v8 = v7 & 0x3C;
  }

  else
  {
    v8 = v7;
  }

  v9 = fts_open(a1, v8, 0);
  if (!v9)
  {
    *(a2 + 32) = *__error();
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v11 = 0;
  while (1)
  {
    v12 = fts_read(v10);
    v13 = v12;
    if (!v12)
    {
      break;
    }

    fts_info = v12->fts_info;
    if (fts_info == 6)
    {
      if (v12->fts_number == 1)
      {
        v12->fts_number = 0;
      }

      else if ((v10->fts_options & 0x40) == 0 || v10->fts_dev == v12->fts_dev)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_15:
      if (*(a2 + 116))
      {
        goto LABEL_105;
      }

      *(a2 + 56) = v12;
      if (v3 && fts_info != 6)
      {
        v15 = v3(a2, v12->fts_path, *(a2 + 8));
        if (*(a2 + 116))
        {
          goto LABEL_105;
        }

        v16 = v15;
        if (v15)
        {
          goto LABEL_76;
        }
      }

      *(a2 + 32) = 0;
      fts_accpath = v13->fts_accpath;
      v18 = *(a2 + 112);
      v19 = v13->fts_info;
      if (v19 <= 0xD)
      {
        if (((1 << v19) & 0x3108) != 0)
        {
          if ((v18 & 0x7C) != 0)
          {
            __removefile_sunlink(v13->fts_accpath, a2);
          }

          else
          {
            if (!geteuid())
            {
              fts_statp = v13->fts_statp;
              st_flags = fts_statp->st_flags;
              if ((st_flags & 6) != 0 && (st_flags & 0x60000) == 0)
              {
                fts_statp->st_flags = st_flags & 0xFFF9FFF9;
                if (chflags(fts_accpath, st_flags & 0xFFF9FFF9) < 0)
                {
                  goto LABEL_102;
                }
              }
            }

            if ((*(a2 + 113) & 4) != 0)
            {
              v25 = fts_accpath;
              v26 = 4096;
              goto LABEL_54;
            }

            v21 = unlink(fts_accpath);
          }

LABEL_55:
          v11 = v21;
          if (v21 != -1)
          {
            goto LABEL_68;
          }

LABEL_56:
          fts_errno = *__error();
LABEL_57:
          *(a2 + 32) = fts_errno;
          v11 = 0xFFFFFFFFLL;
          if (!fts_errno)
          {
            goto LABEL_58;
          }

          goto LABEL_69;
        }

        if (((1 << v19) & 0x490) != 0)
        {
          fts_errno = v13->fts_errno;
          goto LABEL_57;
        }

        if (v19 == 6)
        {
          if (*(a2 + 64) == 1)
          {
            v11 = 0;
            *(a2 + 64) = 0;
LABEL_68:
            fts_errno = *(a2 + 32);
            if (!fts_errno)
            {
LABEL_58:
              if (!v4 || v13->fts_info == 1)
              {
                goto LABEL_72;
              }

              v16 = v4(a2, v13->fts_path, *(a2 + 48));
              goto LABEL_76;
            }

LABEL_69:
            if ((fts_errno == 20 || fts_errno == 2) && v13->fts_level)
            {
LABEL_72:
              v16 = 0;
              goto LABEL_85;
            }

            goto LABEL_73;
          }

          if ((v18 & 1) == 0 || (v18 & 2) != 0 && !v13->fts_level)
          {
            goto LABEL_67;
          }

          if ((v18 & 0x7C) != 0)
          {
            __removefile_rename_unlink(v13->fts_accpath, a2);
            goto LABEL_55;
          }

          if (!geteuid())
          {
            v30 = v13->fts_statp;
            v31 = v30->st_flags;
            if ((v31 & 6) != 0 && (v31 & 0x60000) == 0)
            {
              v30->st_flags = v31 & 0xFFF9FFF9;
              if (chflags(fts_accpath, v31 & 0xFFF9FFF9) < 0)
              {
LABEL_102:
                *__error() = 13;
                goto LABEL_56;
              }
            }
          }

          if ((v13->fts_statp->st_flags & 0x40000000) == 0 || iopolicy_materialization_on() && *a2)
          {
            v21 = rmdir(fts_accpath);
            goto LABEL_55;
          }

          v25 = fts_accpath;
          v26 = 256;
LABEL_54:
          v21 = unlinkat(-2, v25, v26);
          goto LABEL_55;
        }
      }

      if (v19 != 2)
      {
        if (v19 == 1)
        {
          if (unlink(v13->fts_accpath))
          {
            if ((*(a2 + 113) & 2) != 0)
            {
              v33 = 0;
              fsctl(fts_accpath, 0xC0084A44uLL, &v33, 0);
            }

            v11 = 0;
            if ((v13->fts_statp->st_flags & 0x40000000) == 0 || (v18 & 0x7D) != 1)
            {
              goto LABEL_68;
            }

            if ((v18 & 2) == 0 || v13->fts_level)
            {
              if (geteuid() || (v28 = v13->fts_statp, v29 = v28->st_flags, (v29 & 6) == 0) || (v29 & 0x60000) != 0 || (v28->st_flags = v29 & 0xFFF9FFF9, (chflags(fts_accpath, v29 & 0xFFF9FFF9) & 0x80000000) == 0))
              {
                if ((!*a2 || !iopolicy_materialization_on()) && !unlinkat(-2, fts_accpath, 256))
                {
                  fts_set(v10, v13, 4);
                  v11 = 0;
                  *(a2 + 64) = 1;
                  goto LABEL_68;
                }
              }
            }
          }

          else
          {
            fts_set(v10, v13, 4);
          }
        }

LABEL_67:
        v11 = 0;
        goto LABEL_68;
      }

      *(a2 + 32) = 62;
      v11 = 0xFFFFFFFFLL;
LABEL_73:
      if (!v5)
      {
        v16 = 2;
        goto LABEL_85;
      }

      v27 = v5(a2, v13->fts_path, *(a2 + 24));
      v16 = v27;
      if (v27 >= 2)
      {
        if (v27 == 2)
        {
          v11 = 0xFFFFFFFFLL;
        }

        else
        {
          v11 = v11;
        }

LABEL_85:
        if (*(a2 + 112))
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

      v11 = 0;
LABEL_76:
      if (v13->fts_info == 1 && v16 == 1)
      {
        v16 = 1;
        v13->fts_number = 1;
      }

      else
      {
        if (v16 != 1)
        {
          goto LABEL_85;
        }

        v16 = 1;
      }

LABEL_86:
      fts_set(v10, v13, 4);
LABEL_87:
      if (v16 == 2)
      {
        break;
      }

      if (*(a2 + 116))
      {
        goto LABEL_105;
      }
    }
  }

  if (!*(a2 + 116))
  {
    goto LABEL_106;
  }

LABEL_105:
  *(a2 + 32) = 89;
  v11 = 0xFFFFFFFFLL;
LABEL_106:
  *(a2 + 56) = 0;
  fts_close(v10);
  return v11;
}

int removefile_state_free(removefile_state_t a1)
{
  if (a1)
  {
    if (*(a1 + 17) != -1)
    {
      close_NOCANCEL();
      *(a1 + 17) = -1;
    }

    v2 = *(a1 + 12);
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }

  return 0;
}

uint64_t move_to_parent_dir(char *__s, int *a2, uint64_t a3, DIR **a4)
{
  if (*a4 && closedir(*a4))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *a2;
  *(a3 + 152 * v9) = 0;
  if (v9)
  {
    v10 = v9 - 1;
    *a2 = v10;
    *a4 = *(a3 + 152 * v10);
    result = strrchr(__s, 47);
    if (result)
    {
      v11 = result;
      result = 0;
      *v11 = 0;
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
  }

  return result;
}

void __removefile_init_random(unsigned int a1, uint64_t a2)
{
  memset(&v8, 0, sizeof(v8));
  if (stat("/dev/urandom", &v8) || (v8.st_mode & 0xF000) != 0x2000)
  {
    srand(a1);
    v4 = *(a2 + 68);
  }

  else
  {
    v4 = open_NOCANCEL();
    *(a2 + 68) = v4;
  }

  v11 = 0;
  if (v4 == -1)
  {
    v11 = rand();
  }

  else
  {
    read_NOCANCEL();
  }

  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  v9 = 0;
  gettimeofday(&v10, &v9);
  tv_sec = v10.tv_sec;
  tv_usec = v10.tv_usec;
  v7 = getpid();
  srand((tv_usec + tv_sec + v7) ^ v11);
}

uint64_t __removefile_random_char(uint64_t a1)
{
  if (*(a1 + 68) == -1)
  {
    return rand();
  }

  else
  {
    read_NOCANCEL();
    return v3;
  }
}

uint64_t __removefile_randomize_buffer(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  result = *(a3 + 68);
  if (result == -1)
  {
    if (a2)
    {
      do
      {
        result = rand();
        *a1++ = result;
        --v3;
      }

      while (v3);
    }
  }

  else
  {

    return read_NOCANCEL();
  }

  return result;
}

void __removefile_rename_unlink(const std::__fs::filesystem::path *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v31.st_birthtimespec, 0, 64);
  v4 = strlen(a1);
  v12 = MEMORY[0x2A1C7C4A8](v4, v5, v6, v7, v8, v9, v10, v11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v13 = (&v31 - ((v12 + 30) & 0xFFFFFFFFFFFFFFF0));
  strlcpy(v13, a1, v12 + 15);
  v14 = strrchr(v13, 47);
  v15 = v13;
  if (v14)
  {
    v14[1] = 0;
    v15 = (v14 + 1);
  }

  v16 = 0;
  v17 = MEMORY[0x29EDCA600];
  while (1)
  {
    v18 = __removefile_random_char(a2);
    v19 = v18;
    if ((v18 & 0x80000000) != 0)
    {
      if (!__maskrune(v18, 0x500uLL))
      {
        goto LABEL_7;
      }

LABEL_6:
      v15->__pn_.__r_.__value_.__s.__data_[v16++] = v19;
      goto LABEL_7;
    }

    if ((*(v17 + 4 * v18 + 60) & 0x500) != 0)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (v16 >= 14)
    {
      v15->__pn_.__r_.__value_.__s.__data_[v16] = 0;
      v16 = 0;
      if (lstat(v13, &v31))
      {
        break;
      }
    }
  }

  v20 = lstat(a1, &v31);
  if (v20 == -1)
  {
    goto LABEL_34;
  }

  if ((v31.st_mode & 0xF000) != 0x4000)
  {
    goto LABEL_28;
  }

  if ((v31.st_flags & 0x40000000) != 0)
  {
    v27 = a1;
    v28 = 256;
    goto LABEL_26;
  }

  v22 = opendir(a1);
  if (!v22)
  {
LABEL_24:
    v25 = __error();
    v26 = 66;
LABEL_33:
    *v25 = v26;
    goto LABEL_34;
  }

  v23 = v22;
  while (1)
  {
    v24 = readdir(v23);
    if (!v24)
    {
      break;
    }

    if (v24->d_namlen > 2u || v24->d_name[0] != 46 || v24->d_name[1] && (v24->d_name[1] != 46 || v24->d_name[2]))
    {
      closedir(v23);
      goto LABEL_24;
    }
  }

  closedir(v23);
LABEL_28:
  rename(a1, v13, v21);
  if (v29 == -1)
  {
    goto LABEL_34;
  }

  if (lstat(v13, &v31) == -1)
  {
    v25 = __error();
    v26 = 2;
    goto LABEL_33;
  }

  if ((v31.st_mode & 0xF000) == 0x4000)
  {
    rmdir(v13);
    goto LABEL_34;
  }

  if ((*(a2 + 113) & 4) == 0)
  {
    unlink(v13);
    goto LABEL_34;
  }

  v27 = v13;
  v28 = 4096;
LABEL_26:
  unlinkat(-2, v27, v28);
LABEL_34:
  v30 = *MEMORY[0x29EDCA608];
}

void __removefile_sunlink(const std::__fs::filesystem::path *a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  memset(&v31, 0, sizeof(v31));
  memset(&v32, 0, 512);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (lstat(a1, &v31) != -1)
  {
    if ((v31.st_mode & 0xF000) != 0x8000 || v31.st_nlink >= 2u)
    {
      goto LABEL_4;
    }

    v5 = open_NOCANCEL();
    *(a2 + 80) = v5;
    if (v5 == -1)
    {
      goto LABEL_5;
    }

    if (fcntl_NOCANCEL() != -1)
    {
      if (fstatfs(*(a2 + 80), &v32) == -1 && *__error() != 78)
      {
        goto LABEL_25;
      }

      v6 = init_write_buffer(&v31, a2);
      v7 = *(a2 + 80);
      if (v6 == -1)
      {
        goto LABEL_26;
      }

      fcntl_NOCANCEL();
      overwrite_file(a2);
      v8 = *(a2 + 80);
      close_NOCANCEL();
      *(a2 + 80) = -1;
      v9 = strlen(a1);
      v17 = MEMORY[0x2A1C7C4A8](v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, v30, *&v31.st_dev, v31.st_ino, *&v31.st_uid, *&v31.st_rdev, v31.st_atimespec.tv_sec, v31.st_atimespec.tv_nsec);
      v18 = &v27 - ((v17 + 33) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v17 + 18);
      if (snprintf(v18, 0x400uLL, "%s%s", a1, "/..namedfork/rsrc") >= 1024)
      {
        v19 = __error();
        v20 = 63;
        goto LABEL_24;
      }

      if (lstat(v18, &v31))
      {
        v21 = *__error();
        if (v21 != 2 && v21 != 20)
        {
          goto LABEL_5;
        }

LABEL_22:
        if (!*(a2 + 116))
        {
LABEL_4:
          __removefile_rename_unlink(a1, a2);
          goto LABEL_5;
        }

        v19 = __error();
        v20 = 89;
LABEL_24:
        *v19 = v20;
        goto LABEL_5;
      }

      if (v31.st_size < 1)
      {
        goto LABEL_22;
      }

      v22 = open_NOCANCEL();
      *(a2 + 80) = v22;
      if (v22 == -1)
      {
        goto LABEL_5;
      }

      if (fcntl_NOCANCEL() == -1)
      {
LABEL_25:
        v26 = *(a2 + 80);
        goto LABEL_26;
      }

      v23 = init_write_buffer(&v31, a2);
      v24 = *(a2 + 80);
      if (v23 != -1)
      {
        fcntl_NOCANCEL();
        overwrite_file(a2);
        v25 = *(a2 + 80);
        close_NOCANCEL();
        *(a2 + 80) = -1;
        goto LABEL_22;
      }
    }

LABEL_26:
    close_NOCANCEL();
    *(a2 + 80) = -1;
  }

LABEL_5:
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t init_write_buffer(uint64_t a1, uint64_t a2)
{
  *(a2 + 88) = *(a1 + 96);
  v3 = *(a1 + 112);
  *(a2 + 104) = v3;
  v4 = (v3 + 4);
  v5 = *(a2 + 96);
  if (v5)
  {
    if (v4 <= *(a2 + 108))
    {
      return 0;
    }

    free(v5);
    *(a2 + 96) = 0;
  }

  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  *(a2 + 96) = v6;
  if (v6)
  {
    result = 0;
    *(a2 + 108) = v4;
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t overwrite_file(uint64_t result)
{
  v1 = result;
  v2 = *(result + 112);
  if ((v2 & 8) != 0)
  {
    v3 = 4;
    do
    {
      overwrite(1, v1);
      --v3;
    }

    while (v3);
    memset(*(v1 + 96), 85, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 170, *(v1 + 104));
    overwrite(0, v1);
    overwrite_bytes(0x92u, 0x49u, 0x24u, v1);
    overwrite_bytes(0x49u, 0x24u, 0x92u, v1);
    overwrite_bytes(0x24u, 0x92u, 0x49u, v1);
    bzero(*(v1 + 96), *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 17, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 34, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 51, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 68, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 85, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 102, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 119, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 136, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 153, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 170, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 187, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 204, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 221, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 238, *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 255, *(v1 + 104));
    overwrite(0, v1);
    overwrite_bytes(0x92u, 0x49u, 0x24u, v1);
    overwrite_bytes(0x49u, 0x24u, 0x92u, v1);
    overwrite_bytes(0x24u, 0x92u, 0x49u, v1);
    overwrite_bytes(0x6Du, 0xB6u, 0xDBu, v1);
    overwrite_bytes(0xB6u, 0xDBu, 0x6Du, v1);
    overwrite_bytes(0xDBu, 0x6Du, 0xB6u, v1);
    v4 = 4;
    do
    {
      result = overwrite(1, v1);
      --v4;
    }

    while (v4);
    return result;
  }

  if ((v2 & 4) != 0)
  {
    memset(*(result + 96), 246, *(result + 104));
    overwrite(0, v1);
    bzero(*(v1 + 96), *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 255, *(v1 + 104));
    overwrite(0, v1);
    overwrite(1, v1);
    bzero(*(v1 + 96), *(v1 + 104));
    overwrite(0, v1);
    memset(*(v1 + 96), 255, *(v1 + 104));
    overwrite(0, v1);
  }

  else
  {
    if ((v2 & 0x20) != 0)
    {
      v6 = 2;
      do
      {
        overwrite(1, v1);
        --v6;
      }

      while (v6);
      memset(*(v1 + 96), 170, *(v1 + 104));
LABEL_17:
      v5 = 0;
      goto LABEL_18;
    }

    if ((v2 & 0x10) == 0)
    {
      if ((v2 & 0x40) == 0)
      {
        return result;
      }

      bzero(*(result + 96), *(result + 104));
      goto LABEL_17;
    }
  }

  v5 = 1;
LABEL_18:

  return overwrite(v5, v1);
}

uint64_t overwrite_bytes(unsigned int a1, unsigned int a2, unsigned int a3, WINDOW *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = *(a4 + 12);
  v5 = *(a4 + 27);
  v6 = 12 * (v5 / 0xC);
  v7 = vorr_s8(vorr_s8(vshl_u32(vdup_n_s32(a1), 0x800000018), vshl_u32(vdup_n_s32(a2), 0x1800000010)), vorr_s8(vshl_u32(vdup_n_s32(a3), 0x1000000008), __PAIR64__(a2, a1)));
  v13[0] = v7.i32[0];
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (v4 + v8);
      *v9 = v7;
      v9[1].i32[0] = (a2 << 8) | (a1 << 16) | (a3 << 24) | a3;
      v8 += 12;
    }

    while (v8 < v6);
    v5 = *(a4 + 27);
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v5)
  {
    v10 = v8;
    do
    {
      *(*(a4 + 12) + v10) = *(v13 + v10 % 3);
      ++v10;
    }

    while (v10 < *(a4 + 27));
  }

  v11 = *MEMORY[0x29EDCA608];

  return overwrite(2, a4);
}

int overwrite(const WINDOW *a1, WINDOW *a2)
{
  if (!*(a2 + 29))
  {
    v3 = a1;
    v4 = *(a2 + 12);
    lseek(*(a2 + 20), 0, 0);
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 11);
      if (v5 >= v6 - *(a2 + 26))
      {
        break;
      }

      if (v3 == 2)
      {
        v8 = v5 % 3 + *(a2 + 12);
      }

      else if (v3 == 1)
      {
        __removefile_randomize_buffer(*(a2 + 12), *(a2 + 26), a2);
        v7 = *(a2 + 26);
      }

      v9 = *(a2 + 20);
      a1 = write_NOCANCEL();
      v5 += a1 & ~(a1 >> 63);
      if (*(a2 + 29))
      {
        return a1;
      }
    }

    if (v3 == 2)
    {
      v11 = v5 % 3 + *(a2 + 12);
    }

    else if (v3 == 1)
    {
      __removefile_randomize_buffer(*(a2 + 12), v6 - v5, a2);
      v10 = *(a2 + 11);
    }

    v12 = *(a2 + 20);
    write_NOCANCEL();
    if ((*(a2 + 112) & 0x2C) != 0)
    {
      v13 = *(a2 + 20);
      if (fcntl_NOCANCEL())
      {
        fsync_NOCANCEL();
      }
    }

    v14 = *(a2 + 20);

    LODWORD(a1) = lseek(v14, 0, 0);
  }

  return a1;
}

uint64_t check_error_cb(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __error();
  v7 = *v6;
  *(a2 + 32) = *v6;
  if (v7 == 2)
  {
    if (a3)
    {
      return 0;
    }
  }

  else if (a3 && v7 == 20)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  if (!v8 || v8(a2, a1, *(a2 + 24)) == 2)
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

BOOL iopolicy_materialization_on()
{
  v0 = 1;
  v1 = getiopolicy_np(3, 1);
  if (v1 != 2)
  {
    return v1 != 1 && getiopolicy_np(3, 0) == 2;
  }

  return v0;
}

removefile_state_t removefile_state_alloc(void)
{
  result = malloc_type_calloc(1uLL, 0x78uLL, 0x10B00406DF828A6uLL);
  if (result)
  {
    *(result + 17) = -1;
  }

  return result;
}

int removefile_state_get(removefile_state_t state, uint32_t key, void *dst)
{
  if (key <= 4)
  {
    if (key > 2)
    {
      result = 0;
      if (key == 3)
      {
        v5 = *(state + 2);
      }

      else
      {
        v5 = *(state + 3);
      }

      goto LABEL_20;
    }

    if (key == 1)
    {
      result = 0;
      v5 = *state;
      goto LABEL_20;
    }

    if (key == 2)
    {
      result = 0;
      v5 = *(state + 1);
      goto LABEL_20;
    }

LABEL_15:
    *__error() = 22;
    return -1;
  }

  if (key > 6)
  {
    if (key == 7)
    {
      result = 0;
      v5 = *(state + 6);
      goto LABEL_20;
    }

    if (key == 8)
    {
      v5 = *(state + 7);
      if (v5)
      {
        result = 0;
        goto LABEL_20;
      }
    }

    goto LABEL_15;
  }

  if (key == 5)
  {
    result = 0;
    *dst = *(state + 8);
    return result;
  }

  result = 0;
  v5 = *(state + 5);
LABEL_20:
  *dst = v5;
  return result;
}

int removefile_state_set(removefile_state_t state, uint32_t key, const void *value)
{
  if (key <= 3)
  {
    switch(key)
    {
      case 1u:
        v3 = 0;
        *state = value;
        return v3;
      case 2u:
        v3 = 0;
        *(state + 1) = value;
        return v3;
      case 3u:
        v3 = 0;
        *(state + 2) = value;
        return v3;
    }

LABEL_13:
    *__error() = 22;
    return -1;
  }

  if (key > 5)
  {
    if (key == 6)
    {
      v3 = 0;
      *(state + 5) = value;
      return v3;
    }

    if (key == 7)
    {
      v3 = 0;
      *(state + 6) = value;
      return v3;
    }

    goto LABEL_13;
  }

  v3 = 0;
  if (key == 4)
  {
    *(state + 3) = value;
  }

  else
  {
    *(state + 8) = *value;
  }

  return v3;
}

int removefile_cancel(removefile_state_t state)
{
  if (state)
  {
    result = 0;
    *(state + 29) = 1;
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return result;
}

int removefileat(int fd, const char *path, removefile_state_t state, removefile_flags_t flags)
{
  memset(&v13, 0, sizeof(v13));
  if (!path)
  {
    v10 = __error();
    v11 = 22;
    goto LABEL_11;
  }

  if (fd != -2 && *path != 47)
  {
    if (fstat(fd, &v13))
    {
      return -1;
    }

    if ((v13.st_mode & 0xF000) == 0x4000)
    {
      v7 = malloc_type_malloc(0x400uLL, 0xBDA26560uLL);
      if (v7)
      {
        v8 = v7;
        v9 = fcntl_NOCANCEL();
        if (!v9)
        {
          if (snprintf(v8, 0x400uLL, "%s/%s", v8, path) > 1023)
          {
            *__error() = 63;
            v9 = -1;
          }

          else
          {
            v9 = removefile(v8, state, flags);
          }
        }

        free(v8);
        return v9;
      }

      v10 = __error();
      v11 = 12;
    }

    else
    {
      v10 = __error();
      v11 = 20;
    }

LABEL_11:
    *v10 = v11;
    return -1;
  }

  return removefile(path, state, flags);
}