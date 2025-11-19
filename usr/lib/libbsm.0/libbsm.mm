void audit_token_to_au32(audit_token_t *atoken, uid_t *auidp, uid_t *euidp, gid_t *egidp, uid_t *ruidp, gid_t *rgidp, pid_t *pidp, au_asid_t *asidp, au_tid_t *tidp)
{
  if (auidp)
  {
    *auidp = atoken->val[0];
  }

  if (euidp)
  {
    *euidp = atoken->val[1];
  }

  if (egidp)
  {
    *egidp = atoken->val[2];
  }

  if (ruidp)
  {
    *ruidp = atoken->val[3];
  }

  if (rgidp)
  {
    *rgidp = atoken->val[4];
  }

  if (pidp)
  {
    *pidp = atoken->val[5];
  }

  if (asidp)
  {
    *asidp = atoken->val[6];
  }

  if (tidp)
  {
    audit_set_terminal_host(&tidp->machine);
    tidp->port = atoken->val[7];
  }
}

uint64_t audit_set_terminal_host(_DWORD *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = 4294901247;
  *v7 = 0xB00000001;
  if (a1)
  {
    *a1 = 0;
    v6 = 4;
    if (sysctl(v7, 2u, a1, &v6, 0, 0))
    {
      v2 = __error();
      v3 = strerror(*v2);
      syslog(3, "sysctl() failed (%s)", v3);
      v1 = 4294901249;
    }

    else
    {
      v1 = 0;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return v1;
}

void au_free_token(token_t *tok)
{
  if (tok)
  {
    v2 = *tok;
    if (v2)
    {
      free(v2);
    }

    free(tok);
  }
}

int au_open(void)
{
  pthread_mutex_lock(&mutex);
  if (audit_rec_count)
  {
    v0 = audit_free_q;
    if (audit_free_q)
    {
      *audit_free_q = 1;
      v2 = *(v0 + 5);
      v1 = *(v0 + 6);
      if (v2)
      {
        *(v2 + 48) = v1;
        v2 = *(v0 + 5);
      }

      *v1 = v2;
      goto LABEL_14;
    }
  }

  else
  {
    audit_free_q = 0;
  }

  pthread_mutex_unlock(&mutex);
  v3 = malloc_type_malloc(0x38uLL, 0x10B0040D4C499B4uLL);
  if (!v3)
  {
    return -1;
  }

  v0 = v3;
  v4 = malloc_type_malloc(0x7FFFuLL, 0x100004077774924uLL);
  *(v0 + 3) = v4;
  if (!v4)
  {
LABEL_11:
    free(v0);
    *__error() = 12;
    return -1;
  }

  pthread_mutex_lock(&mutex);
  v5 = audit_rec_count;
  if (audit_rec_count == 20)
  {
    pthread_mutex_unlock(&mutex);
    free(*(v0 + 3));
    goto LABEL_11;
  }

  *(v0 + 1) = audit_rec_count;
  open_desc_table[v5] = v0;
  audit_rec_count = v5 + 1;
LABEL_14:
  pthread_mutex_unlock(&mutex);
  bzero(*(v0 + 3), 0x7FFFuLL);
  *(v0 + 1) = 0;
  *(v0 + 2) = v0 + 8;
  *(v0 + 4) = 0;
  *v0 = 1;
  return *(v0 + 1);
}

int au_write(int d, token_t *m)
{
  if (m && (v2 = open_desc_table[d]) != 0 && *v2)
  {
    if ((*(v2 + 32) + *(m + 1) - 32544) > 0xFFFFFFFFFFFF7FFFLL)
    {
      result = 0;
      *(m + 2) = 0;
      v6 = *(v2 + 16);
      *(m + 3) = v6;
      *v6 = m;
      *(v2 + 16) = m + 16;
      *(v2 + 32) += *(m + 1);
      return result;
    }

    v3 = __error();
    v4 = 12;
  }

  else
  {
    v3 = __error();
    v4 = 22;
  }

  *v3 = v4;
  return -1;
}

uint64_t au_close_with_errors(int a1, int a2, au_event_t a3)
{
  v3 = *(&open_desc_table + a1);
  if (v3 && *v3)
  {
    if (a2)
    {
      if ((*(v3 + 32) - 32544) <= 0xFFFFFFFFFFFF7FFFLL)
      {
        fwrite("au_close failed", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
        *__error() = 12;
        v4 = 4294967276;
LABEL_12:
        au_teardown(v3);
        return v4;
      }

      v5 = au_assemble(*(&open_desc_table + a1), a3);
      if (v5 < 0)
      {
        v4 = (-30 - v5);
        goto LABEL_12;
      }

      if (audit(*(v3 + 24), *(v3 + 32)))
      {
        v4 = (-40 - *__error());
        goto LABEL_12;
      }
    }

    v4 = 0;
    goto LABEL_12;
  }

  *__error() = 22;
  return 4294967286;
}

uint64_t au_assemble(void *a1, au_event_t a2)
{
  memset(&aia.ai_termid.at_addr[1], 0, 24);
  *&aia.ai_auid = 0u;
  *&aia.ai_termid.at_type = 4;
  if (audit_get_kaudit(&aia, 0x30uLL))
  {
    if (*__error() != 78 && *__error() != 1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_4;
  }

  v19.tv_sec = 0;
  *&v19.tv_usec = 0;
  if (gettimeofday(&v19, 0) < 0)
  {
    return 4294967294;
  }

  if (aia.ai_termid.at_type == 16)
  {
    if ((vmaxv_u16(vmovn_s32(vtstq_s32(*aia.ai_termid.at_addr, *aia.ai_termid.at_addr))) & 1) == 0)
    {
LABEL_4:
      v4 = a1[4];
      v5 = v4 + 25;
      v6 = au_to_header(v4 + 25, a2, 0);
      goto LABEL_5;
    }

    v17 = 45;
  }

  else
  {
    if (aia.ai_termid.at_type != 4)
    {
      return 4294967293;
    }

    if (!aia.ai_termid.at_addr[0])
    {
      goto LABEL_4;
    }

    v17 = 33;
  }

  v5 = v17 + a1[4];
  v6 = au_to_header32_ex_tm(v17 + *(a1 + 8), a2, 0, v19, &aia);
LABEL_5:
  v7 = v6;
  if (!v6)
  {
    return 4294967292;
  }

  v8 = au_to_trailer(v5);
  if (v8)
  {
    v9 = (a1 + 1);
    v10 = a1[1];
    *(v7 + 2) = v10;
    if (v10)
    {
      v11 = (v10 + 24);
    }

    else
    {
      v11 = a1 + 2;
    }

    *v11 = v7 + 16;
    *v9 = v7;
    *(v7 + 3) = v9;
    *(v8 + 2) = 0;
    v12 = a1[2];
    *(v8 + 3) = v12;
    *v12 = v8;
    a1[2] = v8 + 16;
    a1[4] = v5;
    v13 = *v9;
    if (*v9)
    {
      v14 = a1[3];
      do
      {
        memcpy(v14, *v13, *(v13 + 1));
        v15 = *(v13 + 1);
        v13 = *(v13 + 2);
        v14 += v15;
      }

      while (v13);
    }

    return 0;
  }

  else
  {
    v18 = *__error();
    au_free_token(v7);
    *__error() = v18;
    return 4294967291;
  }
}

uint64_t au_teardown(uint64_t a1)
{
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    v3 = *(i + 16);
    v4 = *(i + 24);
    if (v3)
    {
      v5 = (v3 + 24);
    }

    else
    {
      v5 = (a1 + 16);
    }

    *v5 = v4;
    *v4 = *(i + 16);
    free(*i);
    free(i);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  pthread_mutex_lock(&mutex);
  v6 = audit_free_q;
  *(a1 + 40) = audit_free_q;
  if (v6)
  {
    *(v6 + 48) = a1 + 40;
  }

  audit_free_q = a1;
  *(a1 + 48) = &audit_free_q;

  return pthread_mutex_unlock(&mutex);
}

int au_close(int d, int keep, __int16 event)
{
  v3 = open_desc_table[d];
  if (v3 && *v3)
  {
    if (keep)
    {
      if ((*(v3 + 32) - 32544) <= 0xFFFFFFFFFFFF7FFFLL)
      {
        fwrite("au_close failed", 0xFuLL, 1uLL, *MEMORY[0x29EDCA610]);
        *__error() = 12;
LABEL_10:
        v4 = -1;
        goto LABEL_11;
      }

      if ((au_assemble(open_desc_table[d], event) & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      v4 = audit(*(v3 + 24), *(v3 + 32));
    }

    else
    {
      v4 = 0;
    }

LABEL_11:
    au_teardown(v3);
    return v4;
  }

  *__error() = 22;
  return -1;
}

int au_close_buffer(int d, __int16 event, u_char *buffer, size_t *buflen)
{
  v4 = *(&open_desc_table + d);
  if (!v4 || !*v4)
  {
    *__error() = 22;
    return -1;
  }

  v5 = *(v4 + 32);
  v6 = v5 + 45;
  if ((v5 - 32544) >= 0xFFFFFFFFFFFF8000 && v6 <= *buflen)
  {
    if ((au_assemble(*(&open_desc_table + d), event) & 0x80000000) == 0)
    {
      memcpy(buffer, *(v4 + 24), *(v4 + 32));
      v8 = 0;
      *buflen = *(v4 + 32);
      goto LABEL_7;
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "au_close_buffer failed %zd", v6);
    *__error() = 12;
  }

  v8 = -1;
LABEL_7:
  au_teardown(v4);
  return v8;
}

int au_close_token(token_t *tok, u_char *buffer, size_t *buflen)
{
  v5 = *(tok + 1);
  if (v5 <= *buflen)
  {
    memcpy(buffer, *tok, v5);
    *buflen = *(tok + 1);
    au_free_token(tok);
    return 0;
  }

  else
  {
    au_free_token(tok);
    *__error() = 12;
    return 22;
  }
}

au_class_ent *__cdecl getauclassent_r(au_class_ent_t *class_int)
{
  pthread_mutex_lock(&mutex_0);
  v2 = getauclassent_r_locked(class_int);
  pthread_mutex_unlock(&mutex_0);
  return v2;
}

void *getauclassent_r_locked(uint64_t a1)
{
  if (fp || (result = fopen("/etc/security/audit_class", "r"), (fp = result) != 0))
  {
    while (1)
    {
      result = fgets(&linestr, 256, fp);
      if (!result)
      {
        break;
      }

      if (linestr != 35)
      {
        v3 = strrchr(&linestr, 10);
        if (v3)
        {
          *v3 = 0;
        }

        __lasts = 0;
        v4 = strtok_r(&linestr, ":", &__lasts);
        v5 = strtok_r(0, ":", &__lasts);
        v6 = strtok_r(0, ":", &__lasts);
        result = 0;
        if (v4 && v5 && v6)
        {
          if (strlen(v5) <= 7 && (strlcpy(*a1, v5, 8uLL), strlen(v6) <= 0x47))
          {
            strlcpy(*(a1 + 16), v6, 0x48uLL);
            *(a1 + 8) = strtoul(v4, 0, 0);
            return a1;
          }

          else
          {
            return 0;
          }
        }

        return result;
      }
    }
  }

  return result;
}

au_class_ent *getauclassent(void)
{
  getauclassent_class_ent_name = 0;
  getauclassent_class_ent_desc = 0u;
  unk_2A13BA538 = 0u;
  xmmword_2A13BA548 = 0u;
  unk_2A13BA558 = 0u;
  qword_2A13BA568 = 0;
  getauclassent_c = &getauclassent_class_ent_name;
  *algn_2A13BA578 = 0;
  qword_2A13BA580 = &getauclassent_class_ent_desc;
  pthread_mutex_lock(&mutex_0);
  getauclassent_cp = getauclassent_r_locked(&getauclassent_c);
  pthread_mutex_unlock(&mutex_0);
  return getauclassent_cp;
}

void setauclass(void)
{
  pthread_mutex_lock(&mutex_0);
  if (fp)
  {
    fseek(fp, 0, 0);
  }

  pthread_mutex_unlock(&mutex_0);
}

au_class_ent *__cdecl getauclassnam_r(au_class_ent_t *class_int, const char *name)
{
  if (!name)
  {
    return 0;
  }

  pthread_mutex_lock(&mutex_0);
  if (fp)
  {
    fseek(fp, 0, 0);
  }

  do
  {
    v4 = getauclassent_r_locked(class_int);
    v5 = v4;
  }

  while (v4 && strcmp(name, *v4));
  pthread_mutex_unlock(&mutex_0);
  return v5;
}

au_class_ent *__cdecl getauclassnam(const char *name)
{
  getauclassnam_class_ent_name = 0;
  getauclassnam_class_ent_desc = 0u;
  unk_2A13BA5A8 = 0u;
  xmmword_2A13BA5B8 = 0u;
  unk_2A13BA5C8 = 0u;
  qword_2A13BA5D8 = 0;
  getauclassnam_c = &getauclassnam_class_ent_name;
  *algn_2A13BA5E8 = 0;
  qword_2A13BA5F0 = &getauclassnam_class_ent_desc;
  return getauclassnam_r(&getauclassnam_c, name);
}

au_class_ent *__cdecl getauclassnum_r(au_class_ent_t *class_int, au_class_t class_number)
{
  pthread_mutex_lock(&mutex_0);
  if (fp)
  {
    fseek(fp, 0, 0);
  }

  while (1)
  {
    v4 = getauclassent_r_locked(class_int);
    v5 = v4;
    if (!v4)
    {
      break;
    }

    if (v4->ac_class == class_number)
    {
      return v5;
    }
  }

  pthread_mutex_unlock(&mutex_0);
  return v5;
}

au_class_ent *__cdecl getauclassnum(au_class_t class_number)
{
  getauclassnum_class_ent_name = 0;
  getauclassnum_class_ent_desc = 0u;
  *algn_2A13BA610 = 0u;
  xmmword_2A13BA620 = 0u;
  unk_2A13BA630 = 0u;
  qword_2A13BA640 = 0;
  getauclassnum_c = &getauclassnum_class_ent_name;
  unk_2A13BA650 = 0;
  qword_2A13BA658 = &getauclassnum_class_ent_desc;
  return getauclassnum_r(&getauclassnum_c, class_number);
}

void endauclass(void)
{
  pthread_mutex_lock(&mutex_0);
  if (fp)
  {
    fclose(fp);
    fp = 0;
  }

  pthread_mutex_unlock(&mutex_0);
}

ssize_t au_poltostr(int policy, size_t maxsize, char *buf)
{
  if (!maxsize)
  {
    return -1;
  }

  *buf = 0;
  v5 = policy;
  v6 = 1;
  v7 = &off_29EE9D440;
  v8 = 14;
  do
  {
    if ((*(v7 - 1) & v5) != 0)
    {
      if (!v6 && strlcat(buf, ",", maxsize) >= maxsize || strlcat(buf, *v7, maxsize) >= maxsize)
      {
        return -1;
      }

      v6 = 0;
    }

    v7 += 2;
    --v8;
  }

  while (v8);

  return strlen(buf);
}

int au_strtopol(const char *polstr, int *policy)
{
  *policy = 0;
  v3 = strdup(polstr);
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  __stringp = v3;
  v5 = strsep(&__stringp, ",");
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = 14;
      for (i = &off_29EE9D440; strcmp(v6, *i); i += 2)
      {
        if (!--v7)
        {
          free(v4);
          *__error() = 22;
          return -1;
        }
      }

      *policy |= *(i - 2);
      v6 = strsep(&__stringp, ",");
    }

    while (v6);
  }

  free(v4);
  return 0;
}

ssize_t au_sflagstostr(uint64_t flags, size_t maxsize, char *buf)
{
  if (!maxsize)
  {
    return -1;
  }

  *buf = 0;
  v6 = 1;
  v7 = &off_29EE9D530;
  v8 = 6;
  do
  {
    if ((*(v7 - 1) & flags) != 0)
    {
      if (!v6 && strlcat(buf, ",", maxsize) >= maxsize || strlcat(buf, *v7, maxsize) >= maxsize)
      {
        return -1;
      }

      v6 = 0;
    }

    v7 += 2;
    --v8;
  }

  while (v8);

  return strlen(buf);
}

int au_strtosflags(const char *sflagsstr, uint64_t *flags)
{
  *flags = 0;
  v3 = strdup(sflagsstr);
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  __stringp = v3;
  v5 = strsep(&__stringp, ",");
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = 6;
      for (i = &off_29EE9D530; strcmp(v6, *i); i += 2)
      {
        if (!--v7)
        {
          free(v4);
          *__error() = 22;
          return -1;
        }
      }

      *flags |= *(i - 1);
      v6 = strsep(&__stringp, ",");
    }

    while (v6);
  }

  free(v4);
  return 0;
}

void setac(void)
{
  pthread_mutex_lock(&mutex_1);
  setac_locked();

  pthread_mutex_unlock(&mutex_1);
}

uint64_t setac_locked()
{
  result = fp_0;
  if (fp_0)
  {
    memset(&v2, 0, sizeof(v2));
    v1 = fileno(fp_0);
    if ((fstat(v1, &v2) & 0x80000000) == 0)
    {
      if (setac_locked_lastctime == v2.st_ctimespec.tv_sec)
      {
        return fseek(fp_0, 0, 0);
      }

      setac_locked_lastctime = v2.st_ctimespec.tv_sec;
    }

    result = fclose(fp_0);
    fp_0 = 0;
  }

  return result;
}

void endac(void)
{
  pthread_mutex_lock(&mutex_1);
  if (fp_0)
  {
    fclose(fp_0);
    fp_0 = 0;
  }

  pthread_mutex_unlock(&mutex_1);
}

int getacdir(char *name, int len)
{
  __s = 0;
  pthread_mutex_lock(&mutex_1);
  if ((getstrfromtype_locked("dir", &__s) & 0x80000000) != 0)
  {
    v4 = -2;
  }

  else if (__s)
  {
    if (strlen(__s) >= len)
    {
      v4 = -3;
    }

    else
    {
      strlcpy(name, __s, len);
      v4 = 0;
    }
  }

  else
  {
    v4 = -1;
  }

  pthread_mutex_unlock(&mutex_1);
  return v4;
}

uint64_t getstrfromtype_locked(const char *a1, char **a2)
{
  *a2 = 0;
  v4 = fp_0;
  if (!fp_0)
  {
    v4 = fopen("/etc/security/audit_control", "r");
    fp_0 = v4;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  __lasts = 0;
  if (fgets(linestr_0, 256, v4))
  {
    while (1)
    {
      if (linestr_0[0] != 35)
      {
        for (i = &linestr_0[strlen(linestr_0) - 1]; i >= linestr_0; --i)
        {
          v6 = *i;
          v7 = v6 > 0x20;
          v8 = (1 << v6) & 0x100000600;
          if (v7 || v8 == 0)
          {
            break;
          }

          *i = 0;
        }

        v10 = strtok_r(linestr_0, ":", &__lasts);
        if (v10)
        {
          if (!strcmp(a1, v10))
          {
            break;
          }
        }
      }

      if (!fgets(linestr_0, 256, fp_0))
      {
        goto LABEL_15;
      }
    }

    v12 = strtok_r(0, ":", &__lasts);
    *a2 = v12;
    if (v12)
    {
      return 0;
    }

    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

LABEL_15:
  if (ferror(fp_0))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

int getacmin(int *min_val)
{
  v4 = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("minfree", &v4) & 0x80000000) != 0)
  {
    v2 = -2;
  }

  else if (v4)
  {
    v2 = 0;
    *min_val = atoi(v4);
  }

  else
  {
    v2 = 1;
  }

  pthread_mutex_unlock(&mutex_1);
  return v2;
}

int getacfilesz(size_t *size_val)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("filesz", &v11) & 0x80000000) != 0)
  {
    pthread_mutex_unlock(&mutex_1);
    return -2;
  }

  v2 = v11;
  if (!v11)
  {
    pthread_mutex_unlock(&mutex_1);
    *__error() = 22;
    return 1;
  }

  while (1)
  {
    v4 = *v2;
    if (v4 != 32 && v4 != 9)
    {
      break;
    }

    ++v2;
  }

  v6 = sscanf(v2, "%ju%c", &v10, &v9);
  if (v6 == 1)
  {
    v7 = 66;
    v9 = 66;
  }

  else
  {
    if (v6 != 2)
    {
LABEL_15:
      *__error() = 22;
      pthread_mutex_unlock(&mutex_1);
      return -1;
    }

    v7 = v9;
  }

  if (au_spacetobytes(size_val, v10, v7))
  {
    goto LABEL_15;
  }

  v8 = *size_val - 1;
  pthread_mutex_unlock(&mutex_1);
  if (v8 > 0x7FFFE)
  {
    return 0;
  }

  *__error() = 22;
  return -1;
}

uint64_t au_spacetobytes(void *a1, uint64_t a2, int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a3 <= 70)
    {
      if (a3 == 32 || a3 == 66)
      {
        goto LABEL_12;
      }
    }

    else
    {
      switch(a3)
      {
        case 'G':
          a2 <<= 30;
          goto LABEL_12;
        case 'M':
          a2 <<= 20;
          goto LABEL_12;
        case 'K':
          a2 <<= 10;
LABEL_12:
          v3 = 0;
          *a1 = a2;
          break;
      }
    }
  }

  return v3;
}

int getacflg(char *auditstr, int len)
{
  __s = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("flags", &__s) & 0x80000000) != 0)
  {
    v4 = -2;
  }

  else if (__s)
  {
    if (strlen(__s) >= len)
    {
      v4 = -3;
    }

    else
    {
      strlcpy(auditstr, __s, len);
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  pthread_mutex_unlock(&mutex_1);
  return v4;
}

int getacna(char *auditstr, int len)
{
  __s = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("naflags", &__s) & 0x80000000) != 0)
  {
    v4 = -2;
  }

  else if (__s)
  {
    if (strlen(__s) >= len)
    {
      v4 = -3;
    }

    else
    {
      strlcpy(auditstr, __s, len);
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  pthread_mutex_unlock(&mutex_1);
  return v4;
}

int getacpol(char *auditstr, size_t len)
{
  __s = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("policy", &__s) & 0x80000000) != 0)
  {
    v4 = -2;
  }

  else if (__s)
  {
    if (strlen(__s) >= len)
    {
      v4 = -3;
    }

    else
    {
      strlcpy(auditstr, __s, len);
      v4 = 0;
    }
  }

  else
  {
    v4 = -1;
  }

  pthread_mutex_unlock(&mutex_1);
  return v4;
}

int getachost(char *auditstr, size_t len)
{
  __s = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("host", &__s) & 0x80000000) != 0)
  {
    v4 = -2;
  }

  else if (__s)
  {
    if (strlen(__s) >= len)
    {
      v4 = -3;
    }

    else
    {
      strlcpy(auditstr, __s, len);
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  pthread_mutex_unlock(&mutex_1);
  return v4;
}

int getacexpire(int *andflg, time_t *age, size_t *size)
{
  v18 = *MEMORY[0x29EDCA608];
  *v15 = 0;
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  *age = 0;
  *size = 0;
  *andflg = 0;
  pthread_mutex_lock(&mutex_1);
  setac_locked();
  if ((getstrfromtype_locked("expire-after", &v16) & 0x80000000) != 0)
  {
    pthread_mutex_unlock(&mutex_1);
    result = -2;
    goto LABEL_25;
  }

  v6 = v16;
  if (v16)
  {
    while (1)
    {
      v8 = *v6;
      if (v8 != 32 && v8 != 9)
      {
        break;
      }

      ++v6;
    }

    v10 = sscanf(v6, "%lu%c%[ \tadnorADNOR]%lu%c", v15, v14 + 1, __big, &v14[1], v14);
    switch(v10)
    {
      case 1:
        v11 = 66;
        HIBYTE(v14[0]) = 66;
        break;
      case 5:
        if (setexpirecond(age, size, *v15, SHIBYTE(v14[0])) || setexpirecond(age, size, *&v14[1], SLOBYTE(v14[0])))
        {
          goto LABEL_20;
        }

        if (strcasestr(__big, "and"))
        {
          v12 = 1;
        }

        else
        {
          if (!strcasestr(__big, "or"))
          {
            goto LABEL_20;
          }

          v12 = 0;
        }

        *andflg = v12;
        goto LABEL_24;
      case 2:
        v11 = HIBYTE(v14[0]);
        break;
      default:
LABEL_20:
        pthread_mutex_unlock(&mutex_1);
        result = -1;
        goto LABEL_25;
    }

    if (setexpirecond(age, size, *v15, v11))
    {
      goto LABEL_20;
    }

LABEL_24:
    pthread_mutex_unlock(&mutex_1);
    result = 0;
    goto LABEL_25;
  }

  pthread_mutex_unlock(&mutex_1);
  result = 1;
LABEL_25:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t setexpirecond(uint64_t *a1, void *a2, uint64_t a3, __darwin_ct_rune_t a4)
{
  if (a4 < 0)
  {
    v8 = __maskrune(a4, 0x8000uLL);
  }

  else
  {
    v8 = *(MEMORY[0x29EDCA600] + 4 * a4 + 60) & 0x8000;
  }

  if (a4 == 32 || v8)
  {

    return au_spacetobytes(a2, a3, a4);
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (!a1)
    {
      return result;
    }

    if (a4 > 114)
    {
      if (a4 != 115)
      {
        if (a4 != 121)
        {
          return result;
        }

        a3 = 31449600 * a3 + 86400 * (a3 / 4);
      }
    }

    else
    {
      if (a4 == 100)
      {
        v10 = 86400;
      }

      else
      {
        if (a4 != 104)
        {
          return result;
        }

        v10 = 3600;
      }

      a3 *= v10;
    }

    result = 0;
    *a1 = a3;
  }

  return result;
}

u_short au_domain_to_bsm(int local_domain)
{
  v1 = &dword_29857E39C;
  v2 = 65;
  while (*v1 != local_domain)
  {
    v1 += 2;
    if (!--v2)
    {
      return 700;
    }
  }

  return *(v1 - 2);
}

int au_bsm_to_domain(u_short bsm_domain, int *local_domainp)
{
  v2 = 65;
  for (i = &dword_29857E39C; *(i - 2) != bsm_domain; i += 2)
  {
    if (!--v2)
    {
      return -1;
    }
  }

  if (*i)
  {
    return -1;
  }

  result = 0;
  *local_domainp = 0;
  return result;
}

void setauevent(void)
{
  pthread_mutex_lock(&mutex_2);
  if (fp_1)
  {
    fseek(fp_1, 0, 0);
  }

  pthread_mutex_unlock(&mutex_2);
}

void endauevent(void)
{
  pthread_mutex_lock(&mutex_2);
  if (fp_1)
  {
    fclose(fp_1);
    fp_1 = 0;
  }

  pthread_mutex_unlock(&mutex_2);
}

au_event_ent *__cdecl getauevent_r(au_event_ent *e)
{
  pthread_mutex_lock(&mutex_2);
  if (fp_1 || (fp_1 = fopen("/etc/security/audit_event", "r")) != 0)
  {
    while (fgets(&linestr_1, 256, fp_1))
    {
      v2 = strrchr(&linestr_1, 10);
      if (v2)
      {
        *v2 = 0;
      }

      if (linestr_1 != 35)
      {
        if (!eventfromstr(e))
        {
          e = 0;
        }

        goto LABEL_11;
      }
    }
  }

  e = 0;
LABEL_11:
  pthread_mutex_unlock(&mutex_2);
  return e;
}

au_event_ent *getauevent(void)
{
  getauevent_e = 0u;
  xmmword_2A13BA8E0 = 0u;
  qword_2A13BA888 = 0;
  unk_2A13BA890 = 0;
  getauevent_event_ent_name = 0;
  unk_2A13BA896 = 0;
  getauevent_event_ent_desc = 0u;
  unk_2A13BA8AE = 0u;
  xmmword_2A13BA8BE = 0u;
  word_2A13BA8CE = 0;
  *(&getauevent_e + 1) = &getauevent_event_ent_name;
  *&xmmword_2A13BA8E0 = &getauevent_event_ent_desc;
  return getauevent_r(&getauevent_e);
}

au_event_ent *__cdecl getauevnam_r(au_event_ent *e, const char *name)
{
  pthread_mutex_lock(&mutex_2);
  if (name && (fp_1 && (fseek(fp_1, 0, 0), (v4 = fp_1) != 0) || (v4 = fopen("/etc/security/audit_event", "r"), (fp_1 = v4) != 0)) && fgets(&linestr_1, 256, v4))
  {
    while (1)
    {
      v5 = strrchr(&linestr_1, 10);
      if (v5)
      {
        *v5 = 0;
      }

      if (eventfromstr(e) && !strcmp(name, e->ae_name))
      {
        break;
      }

      if (!fgets(&linestr_1, 256, fp_1))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    e = 0;
  }

  pthread_mutex_unlock(&mutex_2);
  return e;
}

au_event_ent *__cdecl getauevnam(const char *name)
{
  getauevnam_e = 0u;
  xmmword_2A13BA950 = 0u;
  qword_2A13BA8F8 = 0;
  unk_2A13BA900 = 0;
  getauevnam_event_ent_name = 0;
  unk_2A13BA906 = 0;
  getauevnam_event_ent_desc = 0u;
  unk_2A13BA91E = 0u;
  xmmword_2A13BA92E = 0u;
  word_2A13BA93E = 0;
  *(&getauevnam_e + 1) = &getauevnam_event_ent_name;
  *&xmmword_2A13BA950 = &getauevnam_event_ent_desc;
  return getauevnam_r(&getauevnam_e, name);
}

au_event_ent *__cdecl getauevnum_r(au_event_ent *e, au_event_t event_number)
{
  v2 = event_number;
  pthread_mutex_lock(&mutex_2);
  if ((fp_1 && (fseek(fp_1, 0, 0), (v4 = fp_1) != 0) || (v4 = fopen("/etc/security/audit_event", "r"), (fp_1 = v4) != 0)) && fgets(&linestr_1, 256, v4))
  {
    while (1)
    {
      v5 = strrchr(&linestr_1, 10);
      if (v5)
      {
        *v5 = 0;
      }

      if (eventfromstr(e) && e->ae_number == v2)
      {
        break;
      }

      if (!fgets(&linestr_1, 256, fp_1))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    e = 0;
  }

  pthread_mutex_unlock(&mutex_2);
  return e;
}

au_event_ent *__cdecl getauevnum(au_event_t event_number)
{
  getauevnum_e = 0u;
  xmmword_2A13BA9C0 = 0u;
  qword_2A13BA968 = 0;
  unk_2A13BA970 = 0;
  getauevnum_event_ent_name = 0;
  unk_2A13BA976 = 0;
  getauevnum_event_ent_desc = 0u;
  unk_2A13BA98E = 0u;
  xmmword_2A13BA99E = 0u;
  word_2A13BA9AE = 0;
  *(&getauevnum_e + 1) = &getauevnum_event_ent_name;
  *&xmmword_2A13BA9C0 = &getauevnum_event_ent_desc;
  return getauevnum_r(&getauevnum_e, event_number);
}

au_event_t *__cdecl getauevnonam_r(au_event_t *ev, const char *event_name)
{
  getauevnonam_r_event_ent_name = 0;
  *algn_2A13BA9D8 = 0;
  *(&qword_2A13BA9E0 + 6) = 0;
  qword_2A13BA9E0 = 0;
  getauevnonam_r_event_ent_desc = 0u;
  unk_2A13BA9FE = 0u;
  xmmword_2A13BAA0E = 0u;
  word_2A13BAA1E = 0;
  getauevnonam_r_e = 0u;
  xmmword_2A13BAA30 = 0u;
  *(&getauevnonam_r_e + 1) = &getauevnonam_r_event_ent_name;
  *&xmmword_2A13BAA30 = &getauevnonam_r_event_ent_desc;
  getauevnonam_r_ep = getauevnam_r(&getauevnonam_r_e, event_name);
  if (!getauevnonam_r_ep)
  {
    return 0;
  }

  *ev = getauevnonam_r_e;
  return ev;
}

uint64_t eventfromstr(uint64_t a1)
{
  v9 = 0;
  masks = 0;
  v2 = strtok_r(&linestr_1, ":", &v9);
  v3 = strtok_r(0, ":", &v9);
  v4 = strtok_r(0, ":", &v9);
  v5 = strtok_r(0, ":", &v9);
  result = 0;
  if (v2 && v3)
  {
    if (strlen(v3) > 0x1D)
    {
      return 0;
    }

    strlcpy(*(a1 + 8), v3, 0x1EuLL);
    if (v4)
    {
      if (strlen(v4) > 0x31)
      {
        return 0;
      }
    }

    else
    {
      v4 = &unk_29857E8E9;
    }

    strlcpy(*(a1 + 16), v4, 0x32uLL);
    *a1 = atoi(v2);
    if (v5)
    {
      v7 = getauditflagsbin(v5, &masks);
      am_success = masks.am_success;
      if (v7)
      {
        am_success = 0;
      }
    }

    else
    {
      am_success = 0;
    }

    *(a1 + 24) = am_success;
    return a1;
  }

  return result;
}

int getauditflagsbin(char *auditstr, au_mask_t *masks)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v16[0] = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v12 = 0;
  class_int.ac_name = v16;
  *&class_int.ac_class = 0;
  class_int.ac_desc = v14;
  *masks = 0;
  for (i = strtok_r(auditstr, ",", &v12); i; i = strtok_r(0, ",", &v12))
  {
    v4 = i + 1;
    v5 = *i;
    if (v5 != 94)
    {
      v4 = i;
    }

    v6 = *v4;
    if (v6 == 43 || v6 == 45)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = v4;
    }

    if (!getauclassnam_r(&class_int, v8))
    {
      *__error() = 22;
      LODWORD(i) = -1;
      break;
    }

    if (v5 == 94)
    {
      if (v6 != 45)
      {
        masks->am_success &= ~class_int.ac_class;
      }

      if (v6 == 43)
      {
        continue;
      }

      v9 = masks->am_failure & ~class_int.ac_class;
    }

    else
    {
      if (v6 != 45)
      {
        masks->am_success |= class_int.ac_class;
      }

      if (v6 == 43)
      {
        continue;
      }

      v9 = masks->am_failure | class_int.ac_class;
    }

    masks->am_failure = v9;
  }

  v10 = *MEMORY[0x29EDCA608];
  return i;
}

int getauditflagschar(char *auditstr, au_mask_t *masks, int verbose)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v14[0] = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  class_int.ac_name = v14;
  *&class_int.ac_class = 0;
  class_int.ac_desc = v12;
  setauclass();
  v6 = auditstr;
  while (getauclassent_r(&class_int))
  {
    if (class_int.ac_class && ((class_int.ac_class & ~masks->am_success) == 0) | (2 * ((class_int.ac_class & ~masks->am_failure) == 0)))
    {
      if (verbose)
      {
        strlcpy(v6, class_int.ac_desc, 0x48uLL);
        ac_desc = class_int.ac_desc;
      }

      else
      {
        strlcpy(v6, class_int.ac_name, 8uLL);
        ac_desc = class_int.ac_name;
      }

      v8 = &v6[strlen(ac_desc)];
      *v8 = 44;
      v6 = v8 + 1;
    }
  }

  if (v6 != auditstr)
  {
    *(v6 - 1) = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void au_print_xml_header(FILE *outfp)
{
  fwrite("<?xml version='1.0' encoding='UTF-8'?>\n", 0x27uLL, 1uLL, outfp);

  fwrite("<audit>\n", 8uLL, 1uLL, outfp);
}

int au_fetch_tok(tokenstr_t *tok, u_char *buf, int len)
{
  if (len < 1)
  {
    return -1;
  }

  tok->data = buf;
  tok->len = 1;
  v3 = *buf;
  tok->id = v3;
  if (v3 <= 95)
  {
    switch(v3)
    {
      case 17:
        return fetch_file_tok(tok, buf, len);
      case 18:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 37:
      case 48:
      case 49:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
        goto LABEL_34;
      case 19:
        return fetch_trailer_tok(tok, buf, len);
      case 20:
        return fetch_header32_tok(tok, buf, len);
      case 21:
        return fetch_header32_ex_tok(tok, buf, len);
      case 33:
        return fetch_arb_tok(tok, buf, len);
      case 34:
      case 39:
        return fetch_ipc_tok(tok, buf, len);
      case 35:
      case 40:
      case 41:
        goto LABEL_7;
      case 36:
      case 38:
        return fetch_process32_tok(tok, buf, len);
      case 42:
        if (len < 5)
        {
          goto LABEL_56;
        }

        v9 = *(buf + 1);
        break;
      case 43:
        return fetch_ip_tok(tok, buf, len);
      case 44:
        if (len >= 3)
        {
          tok->tt.grps.no = *(buf + 1);
          tok->len = 3;
        }

        v8 = len >= 3;
        goto LABEL_57;
      case 45:
        return fetch_arg32_tok(tok, buf, len);
      case 46:
        return fetch_socket_tok(tok, buf, len);
      case 47:
        if (len < 5)
        {
          goto LABEL_56;
        }

        v9 = bswap32(*(buf + 1));
        break;
      case 50:
        return fetch_ipcperm_tok(tok, buf, len);
      case 59:
        return fetch_newgroups_tok(tok, buf, len);
      case 60:
      case 61:
        return fetch_execarg_tok(tok, buf, len);
      case 62:
        return fetch_attr32_tok(tok, buf, len);
      default:
        if (v3 != 82)
        {
          goto LABEL_34;
        }

        return fetch_exit_tok(tok, buf, len);
    }

    tok->tt.attr32.mode = v9;
    tok->len = 5;
LABEL_56:
    v8 = len >= 5;
LABEL_57:
    if (v8)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  if (v3 <= 236)
  {
    switch(v3)
    {
      case 96:
LABEL_7:
        if (len < 3)
        {
          return -1;
        }

        v6 = __rev16(*(buf + 1));
        tok->tt.grps.no = v6;
        tok->len = 3;
        v7 = v6 + 3;
        if (v7 > len)
        {
          return -1;
        }

        tok->tt.arg64.val = (buf + 3);
        tok->len = v7;
        return 0;
      case 113:
        return fetch_arg64_tok(tok, buf, len);
      case 114:
        return fetch_return64_tok(tok, buf, len);
      case 115:
        return fetch_attr64_tok(tok, buf, len);
      case 116:
        return fetch_header64_tok(tok, buf, len);
      case 117:
      case 119:
        return fetch_process64_tok(tok, buf, len);
      case 121:
        return fetch_header64_ex_tok(tok, buf, len);
      case 122:
      case 123:
        return fetch_process32ex_tok(tok, buf, len);
      case 124:
      case 125:
        return fetch_process64ex_tok(tok, buf, len);
      case 126:
        return fetch_inaddr_ex_tok(tok, buf, len);
      case 127:
        return fetch_socketex32_tok(tok, buf, len);
      case 128:
        return fetch_sock_inet32_tok(tok, buf, len);
      case 129:
        return fetch_sock_inet128_tok(tok, buf, len);
      case 130:
        return fetch_sock_unix_tok(tok, buf, len);
      default:
        goto LABEL_34;
    }
  }

  if (v3 != 237)
  {
    if (v3 == 238 || v3 == 239)
    {
      return fetch_cert_hash_tok(tok, buf, len);
    }

LABEL_34:
    if (len >= 9)
    {
      v5 = 0;
      tok->tt.grps.no = len - 8;
      tok->tt.arg64.val = (buf + 1);
      tok->len = len - 7;
      return v5;
    }

    return -1;
  }

  return fetch_identity_tok(tok, buf, len);
}

uint64_t fetch_header32_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v5 = v3 + 5;
  if (v3 + 5 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v4);
  *(a1 + 16) = v5;
  v6 = v3 + 7;
  if (v3 + 7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 30) = bswap32(*(a2 + v5)) >> 16;
  *(a1 + 16) = v6;
  v7 = v3 + 9;
  if (v3 + 9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v6)) >> 16;
  *(a1 + 16) = v7;
  v8 = v3 + 13;
  if (v3 + 13 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v7));
  *(a1 + 16) = v8;
  v10 = v3 + 17;
  if (v10 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap32(*(a2 + v8));
  *(a1 + 16) = v10;
  return 0;
}

uint64_t fetch_header32_ex_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v9 = v3 + 5;
  if (v3 + 5 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v4);
  *(a1 + 16) = v9;
  v10 = v3 + 7;
  if (v3 + 7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 30) = bswap32(*(a2 + v9)) >> 16;
  *(a1 + 16) = v10;
  v11 = v3 + 9;
  if (v3 + 9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v10)) >> 16;
  *(a1 + 16) = v11;
  v12 = v3 + 13;
  if (v3 + 13 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *(a2 + v11);
  *(a1 + 40) = 0;
  v14 = (a1 + 40);
  v15 = bswap32(v13);
  *(a1 + 36) = v15;
  *(a1 + 16) = v12;
  *(a1 + 48) = 0;
  if (v15 == 16)
  {
    v16 = v3 + 29;
    if (v3 + 29 <= a3)
    {
      v17 = 16;
LABEL_15:
      memcpy(v14, (a2 + v12), v17);
      *(a1 + 16) = v16;
      v18 = 1;
      v12 = v16;
      goto LABEL_16;
    }

    v18 = 0;
  }

  else
  {
    if (v15 == 4)
    {
      v16 = v3 + 17;
      if (v3 + 17 > a3)
      {
        return 0xFFFFFFFFLL;
      }

      v17 = 4;
      goto LABEL_15;
    }

    v18 = 1;
  }

LABEL_16:
  v19 = v12 + 4;
  if (v12 + 4 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = bswap32(*(a2 + v12));
  *(a1 + 16) = v19;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v12 + 8;
  if (v20 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 60) = bswap32(*(a2 + v19));
  *(a1 + 16) = v20;
  return 0;
}

uint64_t fetch_header64_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v8 = v3 + 5;
  if (v3 + 5 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v4);
  *(a1 + 16) = v8;
  v9 = v3 + 7;
  if (v3 + 7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 30) = bswap32(*(a2 + v8)) >> 16;
  *(a1 + 16) = v9;
  v10 = v3 + 9;
  if (v3 + 9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v9)) >> 16;
  *(a1 + 16) = v10;
  v11 = v3 + 17;
  if (v3 + 17 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap64(*(a2 + v10));
  *(a1 + 16) = v11;
  v12 = v3 + 25;
  if (v3 + 25 <= a3)
  {
    *(a1 + 48) = be64dec((a2 + v11));
    *(a1 + 16) = v12;
  }

  if (v12 <= v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t fetch_header64_ex_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v9 = v3 + 5;
  if (v3 + 5 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v4);
  *(a1 + 16) = v9;
  v10 = v3 + 7;
  if (v3 + 7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 30) = bswap32(*(a2 + v9)) >> 16;
  *(a1 + 16) = v10;
  v11 = v3 + 9;
  if (v3 + 9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v10)) >> 16;
  *(a1 + 16) = v11;
  v12 = v3 + 13;
  if (v3 + 13 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *(a2 + v11);
  *(a1 + 40) = 0;
  v14 = (a1 + 40);
  v15 = bswap32(v13);
  *(a1 + 36) = v15;
  *(a1 + 16) = v12;
  *(a1 + 48) = 0;
  if (v15 == 16)
  {
    v16 = v3 + 29;
    if (v3 + 29 <= a3)
    {
      v17 = 16;
LABEL_15:
      memcpy(v14, (a2 + v12), v17);
      *(a1 + 16) = v16;
      v18 = 1;
      v12 = v16;
      goto LABEL_16;
    }

    v18 = 0;
  }

  else
  {
    if (v15 == 4)
    {
      v16 = v3 + 17;
      if (v3 + 17 > a3)
      {
        return 0xFFFFFFFFLL;
      }

      v17 = 4;
      goto LABEL_15;
    }

    v18 = 1;
  }

LABEL_16:
  v19 = v12 + 8;
  if (v12 + 8 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = be64dec((a2 + v12));
  *(a1 + 16) = v19;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v12 + 16;
  if (v20 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 64) = be64dec((a2 + v19));
  *(a1 + 16) = v20;
  return 0;
}

uint64_t fetch_trailer_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3)) >> 16;
  *(a1 + 16) = v4;
  v6 = v3 + 6;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v6;
  return 0;
}

uint64_t fetch_arg32_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (v3 + 1 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = *(a2 + v3);
  *(a1 + 16) = v4;
  v5 = v3 + 5;
  if (v3 + 5 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v5;
  v6 = v3 + 7;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = __rev16(*(a2 + v5));
  *(a1 + 32) = v8;
  *(a1 + 16) = v6;
  v9 = v6 + v8;
  if (v9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = a2 + v6;
  *(a1 + 16) = v9;
  return 0;
}

uint64_t fetch_arg64_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (v3 + 1 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = *(a2 + v3);
  *(a1 + 16) = v4;
  v5 = v3 + 9;
  if (v3 + 9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap64(*(a2 + v4));
  *(a1 + 16) = v5;
  v6 = v3 + 11;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = __rev16(*(a2 + v5));
  *(a1 + 40) = v8;
  *(a1 + 16) = v6;
  v9 = v6 + v8;
  if (v9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = a2 + v6;
  *(a1 + 16) = v9;
  return 0;
}

uint64_t fetch_attr32_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v5 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v5;
  v6 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v5));
  *(a1 + 16) = v6;
  v7 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v6));
  *(a1 + 16) = v7;
  v8 = v3 + 24;
  if (v3 + 24 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap64(*(a2 + v7));
  *(a1 + 16) = v8;
  v10 = v3 + 28;
  if (v10 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = bswap32(*(a2 + v8));
  *(a1 + 16) = v10;
  return 0;
}

uint64_t fetch_attr64_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v8 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v8;
  v9 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v8));
  *(a1 + 16) = v9;
  v10 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v9));
  *(a1 + 16) = v10;
  v11 = v3 + 24;
  if (v3 + 24 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap64(*(a2 + v10));
  *(a1 + 16) = v11;
  v12 = v3 + 32;
  if (v3 + 32 <= a3)
  {
    *(a1 + 48) = be64dec((a2 + v11));
    *(a1 + 16) = v12;
  }

  if (v12 <= v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t fetch_exit_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v6 = v3 + 8;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v6;
  return 0;
}

uint64_t fetch_execarg_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 <= a3)
  {
    v7 = bswap32(*(a2 + v3));
    *(a1 + 24) = v7;
    *(a1 + 16) = v4;
    if (!v7)
    {
      return 0;
    }

    v8 = 0;
    while (1)
    {
      if (v8 <= 0x7F)
      {
        *(a1 + 32 + 8 * v8) = a2 + v4;
      }

      if (!a2)
      {
        break;
      }

      while (1)
      {
        v9 = *(a2 + v4++);
        *(a1 + 16) = v4;
        if (!v9)
        {
          break;
        }

        if (v4 >= a3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (++v8 == v7)
      {
        if (v7 < 0x81)
        {
          return 0;
        }

        v5 = 0;
        *(a1 + 24) = 128;
        return v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t fetch_file_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v5 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v5;
  v6 = v3 + 10;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = __rev16(*(a2 + v5));
  *(a1 + 32) = v8;
  *(a1 + 16) = v6;
  v9 = v6 + v8;
  if (v9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = a2 + v6;
  *(a1 + 16) = v9;
  return 0;
}

uint64_t fetch_newgroups_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = __rev16(*(a2 + v3));
  *(a1 + 24) = v5;
  *(a1 + 16) = v3 + 2;
  if (v5)
  {
    v6 = (a1 + 28);
    for (i = v3 + 3; i + 3 <= a3; i += 4)
    {
      *v6++ = bswap32(*(a2 + 2 + i - 3));
      *(a1 + 16) = i + 3;
      if (!--v5)
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t fetch_inaddr_ex_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = bswap32(*(a2 + v3));
  *(a1 + 24) = v7;
  *(a1 + 16) = v4;
  if (v7 == 16)
  {
    v8 = v3 + 20;
    if (v3 + 20 <= a3)
    {
      v9 = 16;
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }

  if (v7 != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 4;
LABEL_10:
  memcpy((a1 + 28), (a2 + v4), v9);
  result = 0;
  *(a1 + 16) = v8;
  return result;
}

uint64_t fetch_ip_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (v3 + 1 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = *(a2 + v3);
  *(a1 + 16) = v4;
  v5 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 25) = *(a2 + v4);
  *(a1 + 16) = v5;
  v6 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 26) = *(a2 + v5);
  *(a1 + 16) = v6;
  v7 = v3 + 6;
  if (v3 + 6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v6);
  *(a1 + 16) = v7;
  v8 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 30) = *(a2 + v7);
  *(a1 + 16) = v8;
  v9 = v3 + 9;
  if (v3 + 9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = *(a2 + v8);
  *(a1 + 16) = v9;
  v10 = v3 + 10;
  if (v3 + 10 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 33) = *(a2 + v9);
  *(a1 + 16) = v10;
  v11 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 34) = *(a2 + v10);
  *(a1 + 16) = v11;
  v12 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = *(a2 + v11);
  *(a1 + 16) = v12;
  v14 = v3 + 20;
  if (v14 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = *(a2 + v12);
  *(a1 + 16) = v14;
  return 0;
}

uint64_t fetch_ipc_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (v3 + 1 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = *(a2 + v3);
  *(a1 + 16) = v4;
  v6 = v3 + 5;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v6;
  return 0;
}

uint64_t fetch_ipcperm_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v5 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v5;
  v6 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v5));
  *(a1 + 16) = v6;
  v7 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v6));
  *(a1 + 16) = v7;
  v8 = v3 + 20;
  if (v3 + 20 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap32(*(a2 + v7));
  *(a1 + 16) = v8;
  v9 = v3 + 24;
  if (v3 + 24 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 44) = bswap32(*(a2 + v8));
  *(a1 + 16) = v9;
  v11 = v3 + 28;
  if (v11 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = bswap32(*(a2 + v9));
  *(a1 + 16) = v11;
  return 0;
}

uint64_t fetch_process32_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v5 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v5;
  v6 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v5));
  *(a1 + 16) = v6;
  v7 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v6));
  *(a1 + 16) = v7;
  v8 = v3 + 20;
  if (v3 + 20 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap32(*(a2 + v7));
  *(a1 + 16) = v8;
  v9 = v3 + 24;
  if (v3 + 24 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 44) = bswap32(*(a2 + v8));
  *(a1 + 16) = v9;
  v10 = v3 + 28;
  if (v3 + 28 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = bswap32(*(a2 + v9));
  *(a1 + 16) = v10;
  v11 = v3 + 32;
  if (v3 + 32 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 52) = bswap32(*(a2 + v10));
  *(a1 + 16) = v11;
  v13 = v3 + 36;
  if (v13 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = *(a2 + v11);
  *(a1 + 16) = v13;
  return 0;
}

uint64_t fetch_process32ex_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v7 = v3 + 8;
  if (v3 + 8 <= a3)
  {
    *(a1 + 28) = bswap32(*(a2 + v4));
    *(a1 + 16) = v7;
    v8 = v3 + 12;
    if (v3 + 12 <= a3)
    {
      *(a1 + 32) = bswap32(*(a2 + v7));
      *(a1 + 16) = v8;
      v9 = v3 + 16;
      if (v3 + 16 <= a3)
      {
        *(a1 + 36) = bswap32(*(a2 + v8));
        *(a1 + 16) = v9;
        v10 = v3 + 20;
        if (v3 + 20 <= a3)
        {
          *(a1 + 40) = bswap32(*(a2 + v9));
          *(a1 + 16) = v10;
          v11 = v3 + 24;
          if (v3 + 24 <= a3)
          {
            *(a1 + 44) = bswap32(*(a2 + v10));
            *(a1 + 16) = v11;
            v12 = v3 + 28;
            if (v3 + 28 <= a3)
            {
              *(a1 + 48) = bswap32(*(a2 + v11));
              *(a1 + 16) = v12;
              v13 = v3 + 32;
              if (v3 + 32 <= a3)
              {
                *(a1 + 52) = bswap32(*(a2 + v12));
                *(a1 + 16) = v13;
                v14 = v3 + 36;
                if (v3 + 36 <= a3)
                {
                  v15 = bswap32(*(a2 + v13));
                  *(a1 + 56) = v15;
                  *(a1 + 16) = v14;
                  if (v15 == 16)
                  {
                    v16 = v3 + 52;
                    if (v3 + 52 <= a3)
                    {
                      v17 = 16;
                      goto LABEL_19;
                    }
                  }

                  else if (v15 == 4)
                  {
                    v16 = v3 + 40;
                    if (v3 + 40 <= a3)
                    {
                      v17 = 4;
LABEL_19:
                      memcpy((a1 + 60), (a2 + v14), v17);
                      result = 0;
                      *(a1 + 16) = v16;
                      return result;
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

  return 0xFFFFFFFFLL;
}

uint64_t fetch_process64_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v8 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v8;
  v9 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v8));
  *(a1 + 16) = v9;
  v10 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v9));
  *(a1 + 16) = v10;
  v11 = v3 + 20;
  if (v3 + 20 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap32(*(a2 + v10));
  *(a1 + 16) = v11;
  v12 = v3 + 24;
  if (v3 + 24 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 44) = bswap32(*(a2 + v11));
  *(a1 + 16) = v12;
  v13 = v3 + 28;
  if (v3 + 28 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = bswap32(*(a2 + v12));
  *(a1 + 16) = v13;
  v14 = v3 + 36;
  if (v3 + 36 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = be64dec((a2 + v13));
  *(a1 + 16) = v14;
  v16 = v3 + 40;
  if (v3 + 40 <= v7)
  {
    *(a1 + 64) = *(a2 + v14);
    *(a1 + 16) = v16;
  }

  if (v16 <= v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t fetch_process64ex_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v8 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = bswap32(*(a2 + v4));
  *(a1 + 16) = v8;
  v9 = v3 + 12;
  if (v3 + 12 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap32(*(a2 + v8));
  *(a1 + 16) = v9;
  v10 = v3 + 16;
  if (v3 + 16 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 36) = bswap32(*(a2 + v9));
  *(a1 + 16) = v10;
  v11 = v3 + 20;
  if (v3 + 20 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 40) = bswap32(*(a2 + v10));
  *(a1 + 16) = v11;
  v12 = v3 + 24;
  if (v3 + 24 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 44) = bswap32(*(a2 + v11));
  *(a1 + 16) = v12;
  v13 = v3 + 28;
  if (v3 + 28 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = bswap32(*(a2 + v12));
  *(a1 + 16) = v13;
  v14 = v3 + 36;
  if (v3 + 36 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = be64dec((a2 + v13));
  *(a1 + 16) = v14;
  v15 = v3 + 40;
  if (v3 + 40 > v7)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = bswap32(*(a2 + v14));
  *(a1 + 64) = v16;
  *(a1 + 16) = v15;
  if (v16 == 16)
  {
    v17 = v3 + 56;
    if (v17 <= v7)
    {
      v18 = 16;
      goto LABEL_17;
    }

    return 0xFFFFFFFFLL;
  }

  if (v16 != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v3 + 44;
  if (v17 > v7)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 4;
LABEL_17:
  memcpy((a1 + 68), (a2 + v15), v18);
  result = 0;
  *(a1 + 16) = v17;
  return result;
}

uint64_t fetch_return64_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (v3 + 1 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = *(a2 + v3);
  *(a1 + 16) = v4;
  v6 = v3 + 9;
  if (v6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = bswap64(*(a2 + v4));
  *(a1 + 16) = v6;
  return 0;
}

uint64_t fetch_socket_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3)) >> 16;
  *(a1 + 16) = v4;
  v5 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 26) = *(a2 + v4);
  *(a1 + 16) = v5;
  v6 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v5);
  *(a1 + 16) = v6;
  v7 = v3 + 10;
  if (v3 + 10 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = *(a2 + v6);
  *(a1 + 16) = v7;
  v9 = v3 + 14;
  if (v9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v7);
  *(a1 + 16) = v9;
  return 0;
}

uint64_t fetch_sock_inet32_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3)) >> 16;
  *(a1 + 16) = v4;
  v5 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 26) = *(a2 + v4);
  *(a1 + 16) = v5;
  v7 = v3 + 8;
  if (v7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v5);
  *(a1 + 16) = v7;
  return 0;
}

uint64_t fetch_sock_unix_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3)) >> 16;
  *(a1 + 16) = v4;
  v8 = (a2 + v4);
  v9 = memchr((a2 + v4), 0, 0x68uLL);
  if (v9)
  {
    v10 = v9 - v8 + 1;
  }

  else
  {
    v10 = 105;
  }

  v11 = v10 + v4;
  if (v11 > v7)
  {
    return 0xFFFFFFFFLL;
  }

  memcpy((a1 + 26), v8, v10);
  *(a1 + 16) = v11;
  return 0;
}

uint64_t fetch_sock_inet128_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3)) >> 16;
  *(a1 + 16) = v4;
  v5 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 26) = *(a2 + v4);
  *(a1 + 16) = v5;
  v7 = v3 + 20;
  if (v7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 28) = *(a2 + v5);
  *(a1 + 16) = v7;
  return 0;
}

uint64_t fetch_socketex32_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  *(a1 + 24) = bswap32(*(a2 + v3)) >> 16;
  *(a1 + 16) = v4;
  v9 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 26) = bswap32(*(a2 + v4)) >> 16;
  *(a1 + 16) = v9;
  v10 = v3 + 6;
  if (v3 + 6 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = __rev16(*(a2 + v9));
  *(a1 + 28) = v11;
  *(a1 + 16) = v10;
  if (v11 != 16 && v11 != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v3 + 8;
  if (v3 + 8 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 30) = *(a2 + v10);
  *(a1 + 16) = v13;
  if (v11 == 4)
  {
    v14 = v3 + 12;
    if (v3 + 12 > a3)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = 4;
  }

  else
  {
    v14 = v3 + 24;
    if (v3 + 24 > a3)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = 16;
  }

  memcpy((a1 + 32), (a2 + v13), v15);
  *(a1 + 16) = v14;
  v16 = v14 + 2;
  if (v14 + 2 <= v8)
  {
    *(a1 + 48) = *(a2 + v14);
    *(a1 + 16) = v16;
    if (v11 == 4)
    {
      v17 = v14 + 6;
      if (v14 + 6 <= v8)
      {
        v18 = 4;
LABEL_24:
        memcpy((a1 + 52), (a2 + v16), v18);
        result = 0;
        *(a1 + 16) = v17;
        return result;
      }
    }

    else
    {
      v17 = v14 + 18;
      if (v14 + 18 <= v8)
      {
        v18 = 16;
        goto LABEL_24;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t fetch_arb_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 1;
  if (v3 + 1 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = *(a2 + v3);
  *(a1 + 16) = v4;
  v5 = v3 + 2;
  if (v3 + 2 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + v4);
  *(a1 + 25) = v6;
  *(a1 + 16) = v5;
  v7 = v3 + 3;
  if (v7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + v5);
  *(a1 + 26) = v8;
  *(a1 + 16) = v7;
  if (v6 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v7 + qword_29857E5A0[v6] * v8;
  if (v9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = a2 + v7;
  *(a1 + 16) = v9;
  return 0;
}

uint64_t fetch_cert_hash_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 <= a3)
  {
    v7 = bswap32(*(a2 + v3));
    *(a1 + 24) = v7;
    *(a1 + 16) = v4;
    if (!v7)
    {
      return 0;
    }

    v8 = 0;
    while (1)
    {
      if (v8 <= 0x1F)
      {
        *(a1 + 32 + 8 * v8) = a2 + v4;
      }

      if (!a2)
      {
        break;
      }

      while (1)
      {
        v9 = *(a2 + v4++);
        *(a1 + 16) = v4;
        if (!v9)
        {
          break;
        }

        if (v4 >= a3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (++v8 == v7)
      {
        if (v7 < 0x21)
        {
          return 0;
        }

        v5 = 0;
        *(a1 + 24) = 32;
        return v5;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t fetch_identity_tok(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = v3 + 4;
  if (v3 + 4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 24) = bswap32(*(a2 + v3));
  *(a1 + 16) = v4;
  v5 = v3 + 6;
  if (v5 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = __rev16(*(a2 + v4));
  *(a1 + 28) = v6;
  *(a1 + 16) = v5;
  v7 = v5 + v6;
  if (v7 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 32) = a2 + v5;
  *(a1 + 16) = v7;
  if (v7 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7 + 1;
  *(a1 + 40) = *(a2 + v7);
  *(a1 + 16) = v7 + 1;
  v9 = v7 + 3;
  if (v9 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = __rev16(*(a2 + v8));
  *(a1 + 42) = v10;
  *(a1 + 16) = v9;
  v11 = v9 + v10;
  if (v11 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = a2 + v9;
  *(a1 + 16) = v11;
  if (v11 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 56) = *(a2 + v11);
  *(a1 + 16) = v11 + 1;
  v12 = v11 + 3;
  if (v11 + 3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = __rev16(*(a2 + v11 + 1));
  *(a1 + 58) = v14;
  *(a1 + 16) = v12;
  v15 = v12 + v14;
  if (v15 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 64) = a2 + v12;
  *(a1 + 16) = v15;
  return 0;
}

void au_print_flags_tok(FILE *outfp, tokenstr_t *tok, char *del, int oflags)
{
  v4 = oflags;
  v127 = *MEMORY[0x29EDCA608];
  id = tok->id;
  if (id <= 95)
  {
    switch(id)
    {
      case 17:
        print_tok_type(outfp, 17, "file", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          print_sec32(outfp, tok->tt.attr32.mode, v4);
          fputs(del, outfp);
          if (v4)
          {
            v9 = "%u";
          }

          else
          {
            v9 = " + %u msec";
          }

          fprintf(outfp, v9, tok->tt.arg32.val);
          goto LABEL_98;
        }

        fprintf(outfp, "%s=", "time");
        print_sec32(outfp, tok->tt.attr32.mode, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "msec");
        if (v4)
        {
          fprintf(outfp, "%u");
        }

        else
        {
          fprintf(outfp, " + %u msec");
        }

        fwrite(" ", 2uLL, 1uLL, outfp);
        fputc(62, outfp);
        text = tok->tt.arg32.text;
        len = tok->tt.arg32.len;
LABEL_197:
        print_string(outfp, text, len, v4);
        goto LABEL_243;
      case 18:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 37:
      case 48:
      case 49:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
        goto LABEL_77;
      case 19:
        print_tok_type(outfp, 19, "trailer", oflags);
        if ((v4 & 4) != 0)
        {
          goto LABEL_154;
        }

        goto LABEL_152;
      case 20:
        print_tok_type(outfp, 20, "header", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.attr32.mode);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.hdr32.version);
          fputs(del, outfp);
          print_event(outfp, tok->tt.hdr32.e_type, v4);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.arg32.len);
          fputs(del, outfp);
          print_sec32(outfp, tok->tt.attr32.fsid, v4);
          fputs(del, outfp);
          if (v4)
          {
            v30 = "%u";
          }

          else
          {
            v30 = " + %u msec";
          }

          v26 = tok->tt.grps.list[3];
          goto LABEL_147;
        }

        fprintf(outfp, "%s=", "version");
        fprintf(outfp, "%u", tok->tt.hdr32.version);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "event");
        print_event(outfp, tok->tt.hdr32.e_type, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "modifier");
        fprintf(outfp, "%u", tok->tt.arg32.len);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "time");
        print_sec32(outfp, tok->tt.attr32.fsid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "msec");
        if (v4)
        {
          v79 = "%u";
        }

        else
        {
          v79 = " + %u msec";
        }

        v78 = tok->tt.grps.list[3];
        goto LABEL_202;
      case 21:
        print_tok_type(outfp, 21, "header_ex", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.attr32.mode);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.hdr32.version);
          fputs(del, outfp);
          print_event(outfp, tok->tt.hdr32.e_type, v4);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.arg32.len);
          fputs(del, outfp);
          print_ip_ex_address(outfp, tok->tt.attr32.fsid, &tok->tt.inaddr_ex.addr[3]);
          fputs(del, outfp);
          print_sec32(outfp, tok->tt.grps.list[7], v4);
          fputs(del, outfp);
          if (v4)
          {
            v30 = "%u";
          }

          else
          {
            v30 = " + %u msec";
          }

          v26 = tok->tt.grps.list[8];
          goto LABEL_147;
        }

        fprintf(outfp, "%s=", "version");
        fprintf(outfp, "%u", tok->tt.hdr32.version);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "event");
        print_event(outfp, tok->tt.hdr32.e_type, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "modifier");
        fprintf(outfp, "%u", tok->tt.arg32.len);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "host");
        print_ip_ex_address(outfp, tok->tt.attr32.fsid, &tok->tt.inaddr_ex.addr[3]);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "time");
        print_sec32(outfp, tok->tt.grps.list[7], v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "msec");
        if (v4)
        {
          v79 = "%u";
        }

        else
        {
          v79 = " + %u msec";
        }

        v78 = tok->tt.grps.list[8];
        goto LABEL_202;
      case 33:
        print_tok_type(outfp, 33, "arbitrary", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
        }

        no = tok->tt.arg32.no;
        if (no > 4)
        {
          goto LABEL_154;
        }

        v65 = off_29EE9D598[no];
        v66 = off_29EE9D5C0[no];
        if ((v4 & 4) != 0)
        {
          fprintf(outfp, "%s=", "print");
          v104 = strlen(v65);
          print_string(outfp, v65, v104, v4);
          fwrite(" ", 2uLL, 1uLL, outfp);
        }

        else
        {
          v67 = strlen(off_29EE9D598[no]);
          print_string(outfp, v65, v67, v4);
          fputs(del, outfp);
        }

        bu = tok->tt.arb.bu;
        if (bu > 1)
        {
          if (bu == 2)
          {
            if ((v4 & 4) == 0)
            {
              print_string(outfp, "int", 3uLL, v4);
              fputs(del, outfp);
              fprintf(outfp, "%u", tok->tt.arb.uc);
              fputs(del, outfp);
              if (tok->tt.arb.uc)
              {
                v116 = 0;
                do
                {
                  fprintf(outfp, v66, *(tok->tt.arg64.val + 4 * v116++));
                }

                while (v116 < tok->tt.arb.uc);
              }

              goto LABEL_154;
            }

            fprintf(outfp, "%s=", "type");
            fprintf(outfp, "%zu", 4uLL);
            fwrite(" ", 2uLL, 1uLL, outfp);
            fprintf(outfp, "%s=", "count");
            fprintf(outfp, "%u", tok->tt.arb.uc);
            fwrite(" ", 2uLL, 1uLL, outfp);
            fputc(62, outfp);
            if (tok->tt.arb.uc)
            {
              v120 = 0;
              do
              {
                fprintf(outfp, v66, *(tok->tt.arg64.val + 4 * v120++));
              }

              while (v120 < tok->tt.arb.uc);
            }
          }

          else
          {
            if (bu != 3)
            {
              goto LABEL_154;
            }

            if ((v4 & 4) == 0)
            {
              print_string(outfp, "int64", 5uLL, v4);
              fputs(del, outfp);
              fprintf(outfp, "%u", tok->tt.arb.uc);
              fputs(del, outfp);
              if (tok->tt.arb.uc)
              {
                v107 = 0;
                do
                {
                  fprintf(outfp, v66, *(tok->tt.arg64.val + 8 * v107++));
                }

                while (v107 < tok->tt.arb.uc);
              }

              goto LABEL_154;
            }

            fprintf(outfp, "%s=", "type");
            fprintf(outfp, "%zu", 8uLL);
            fwrite(" ", 2uLL, 1uLL, outfp);
            fprintf(outfp, "%s=", "count");
            fprintf(outfp, "%u", tok->tt.arb.uc);
            fwrite(" ", 2uLL, 1uLL, outfp);
            fputc(62, outfp);
            if (tok->tt.arb.uc)
            {
              v118 = 0;
              do
              {
                fprintf(outfp, v66, *(tok->tt.arg64.val + 8 * v118++));
              }

              while (v118 < tok->tt.arb.uc);
            }
          }
        }

        else if (tok->tt.arb.bu)
        {
          if (bu != 1)
          {
            goto LABEL_154;
          }

          if ((v4 & 4) == 0)
          {
            print_string(outfp, "short", 5uLL, v4);
            fputs(del, outfp);
            fprintf(outfp, "%u", tok->tt.arb.uc);
            fputs(del, outfp);
            if (tok->tt.arb.uc)
            {
              v106 = 0;
              do
              {
                fprintf(outfp, v66, *(tok->tt.arg64.val + 2 * v106++));
              }

              while (v106 < tok->tt.arb.uc);
            }

            goto LABEL_154;
          }

          fprintf(outfp, "%s=", "type");
          fprintf(outfp, "%zu", 2uLL);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "count");
          fprintf(outfp, "%u", tok->tt.arb.uc);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fputc(62, outfp);
          if (tok->tt.arb.uc)
          {
            v117 = 0;
            do
            {
              fprintf(outfp, v66, *(tok->tt.arg64.val + 2 * v117++));
            }

            while (v117 < tok->tt.arb.uc);
          }
        }

        else
        {
          if ((v4 & 4) == 0)
          {
            print_string(outfp, "byte", 4uLL, v4);
            fputs(del, outfp);
            fprintf(outfp, "%u", tok->tt.arb.uc);
            fputs(del, outfp);
            if (tok->tt.arb.uc)
            {
              v115 = 0;
              do
              {
                fprintf(outfp, v66, *(tok->tt.arg64.val + v115++));
              }

              while (v115 < tok->tt.arb.uc);
            }

            goto LABEL_154;
          }

          fprintf(outfp, "%s=", "type");
          fprintf(outfp, "%zu", 1uLL);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "count");
          fprintf(outfp, "%u", tok->tt.arb.uc);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fputc(62, outfp);
          if (tok->tt.arb.uc)
          {
            v119 = 0;
            do
            {
              fprintf(outfp, v66, *(tok->tt.arg64.val + v119++));
            }

            while (v119 < tok->tt.arb.uc);
          }
        }

        goto LABEL_243;
      case 34:
        print_tok_type(outfp, 34, "IPC", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          print_ipctype(outfp, tok->tt.arg32.no, v4);
          goto LABEL_152;
        }

        fprintf(outfp, "%s=", "ipc-type");
        print_ipctype(outfp, tok->tt.arg32.no, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        v96 = "ipc-id";
        goto LABEL_206;
      case 35:
        v58 = "path";
        v59 = 35;
        goto LABEL_112;
      case 36:
        print_tok_type(outfp, 36, "subject", oflags);
        if ((v4 & 4) == 0)
        {
          goto LABEL_125;
        }

        fprintf(outfp, "%s=", "audit-uid");
        print_user(outfp, tok->tt.attr32.mode, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "uid");
        print_user(outfp, tok->tt.arg32.val, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "gid");
        print_group(outfp, tok->tt.attr32.gid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "ruid");
        print_user(outfp, tok->tt.attr32.fsid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "rgid");
        print_group(outfp, tok->tt.grps.list[3], v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "pid");
        fprintf(outfp, "%u", tok->tt.grps.list[4]);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "sid");
        fprintf(outfp, "%u", tok->tt.attr32.dev);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "tid");
        v60 = tok->tt.grps.list[6];
        fprintf(outfp, "%u ");
        goto LABEL_186;
      case 38:
        print_tok_type(outfp, 38, "process", oflags);
        if ((v4 & 4) == 0)
        {
LABEL_125:
          fputs(del, outfp);
          print_user(outfp, tok->tt.attr32.mode, v4);
          fputs(del, outfp);
          print_user(outfp, tok->tt.arg32.val, v4);
          fputs(del, outfp);
          print_group(outfp, tok->tt.attr32.gid, v4);
          fputs(del, outfp);
          print_user(outfp, tok->tt.attr32.fsid, v4);
          fputs(del, outfp);
          print_group(outfp, tok->tt.grps.list[3], v4);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.grps.list[4]);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.attr32.dev);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.grps.list[6]);
          fputs(del, outfp);
          v28.s_addr = tok->tt.grps.list[7];
          goto LABEL_157;
        }

        fprintf(outfp, "%s=", "audit-uid");
        print_user(outfp, tok->tt.attr32.mode, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "uid");
        print_user(outfp, tok->tt.arg32.val, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "gid");
        print_group(outfp, tok->tt.attr32.gid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "ruid");
        print_user(outfp, tok->tt.attr32.fsid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "rgid");
        print_group(outfp, tok->tt.grps.list[3], v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "pid");
        fprintf(outfp, "%u", tok->tt.grps.list[4]);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "sid");
        fprintf(outfp, "%u", tok->tt.attr32.dev);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "tid");
        v97 = tok->tt.grps.list[6];
        fprintf(outfp, "%u");
LABEL_186:
        v29.s_addr = tok->tt.grps.list[7];
        goto LABEL_187;
      case 39:
        print_tok_type(outfp, 39, "return", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          print_retval(outfp, tok->tt.arg32.no, v4);
          goto LABEL_152;
        }

        fprintf(outfp, "%s=", "errval");
        print_retval(outfp, tok->tt.arg32.no, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        v96 = "retval";
LABEL_206:
        fprintf(outfp, "%s=", v96);
        val = tok->tt.arg32.val;
        fprintf(outfp, "%u");
        goto LABEL_242;
      case 40:
        v58 = "text";
        v59 = 40;
LABEL_112:
        print_tok_type(outfp, v59, v58, oflags);
        if ((v4 & 4) == 0)
        {
          goto LABEL_113;
        }

        text = tok->tt.arg64.val;
        len = tok->tt.grps.no;
        goto LABEL_197;
      case 41:
        print_tok_type(outfp, 41, "opaque", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.grps.no);
          goto LABEL_101;
        }

        print_mem(outfp, tok->tt.arg64.val, tok->tt.grps.no);
        goto LABEL_243;
      case 42:
        print_tok_type(outfp, 42, "ip addr", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          v28.s_addr = tok->tt.attr32.mode;
          goto LABEL_157;
        }

        v102.s_addr = tok->tt.attr32.mode;
        v103 = inet_ntoa(v102);
        fputs(v103, outfp);
        goto LABEL_243;
      case 43:
        print_tok_type(outfp, 43, "ip", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          print_mem(outfp, &tok->tt, 1uLL);
          fputs(del, outfp);
          print_mem(outfp, (&tok->tt.arg32.no + 1), 1uLL);
          fputs(del, outfp);
          fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
          fputs(del, outfp);
          fprintf(outfp, "%u", bswap32(tok->tt.ip.id) >> 16);
          fputs(del, outfp);
          fprintf(outfp, "%u", bswap32(tok->tt.hdr32.e_type) >> 16);
          fputs(del, outfp);
          print_mem(outfp, &tok->tt.arg64.val, 1uLL);
          fputs(del, outfp);
          print_mem(outfp, tok->tt.execarg.text + 1, 1uLL);
          fputs(del, outfp);
          fprintf(outfp, "%u", bswap32(tok->tt.ip.chksm) >> 16);
          fputs(del, outfp);
          v56.s_addr = tok->tt.attr32.fsid;
          v57 = inet_ntoa(v56);
          fputs(v57, outfp);
          fputs(del, outfp);
          v28.s_addr = tok->tt.grps.list[3];
          goto LABEL_157;
        }

        fprintf(outfp, "%s=", "version");
        print_mem(outfp, &tok->tt, 1uLL);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "service_type");
        print_mem(outfp, (&tok->tt.arg32.no + 1), 1uLL);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "len");
        fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "id");
        fprintf(outfp, "%u", bswap32(tok->tt.ip.id) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "offset");
        fprintf(outfp, "%u", bswap32(tok->tt.hdr32.e_type) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "time_to_live");
        print_mem(outfp, &tok->tt.arg64.val, 1uLL);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "protocol");
        print_mem(outfp, tok->tt.execarg.text + 1, 1uLL);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "cksum");
        fprintf(outfp, "%u", bswap32(tok->tt.ip.chksm) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "src_addr");
        v92.s_addr = tok->tt.attr32.fsid;
        v93 = inet_ntoa(v92);
        fputs(v93, outfp);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "dest_addr");
        v94.s_addr = tok->tt.grps.list[3];
        v95 = inet_ntoa(v94);
        fputs(v95, outfp);
        goto LABEL_242;
      case 44:
        print_tok_type(outfp, 44, "ip port", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          v123 = bswap32(tok->tt.grps.no) >> 16;
          fprintf(outfp, "%#x");
          goto LABEL_154;
        }

        fprintf(outfp, "%#x", bswap32(tok->tt.grps.no) >> 16);
        goto LABEL_243;
      case 45:
        print_tok_type(outfp, 45, "argument", oflags);
        if ((v4 & 4) != 0)
        {
          fprintf(outfp, "%s=", "arg-num");
          fprintf(outfp, "%u", tok->tt.arg32.no);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "value");
          fprintf(outfp, "0x%x", tok->tt.arg32.val);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "desc");
          path = tok->tt.arg32.text;
          v81 = tok->tt.arg32.len;
          goto LABEL_180;
        }

        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.arg32.no);
        fputs(del, outfp);
        v53 = tok->tt.arg32.val;
        fprintf(outfp, "0x%x");
LABEL_98:
        fputs(del, outfp);
        data = tok->tt.arg32.text;
        v32 = tok->tt.arg32.len;
        goto LABEL_114;
      case 46:
        print_tok_type(outfp, 46, "socket", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.grps.no);
          fputs(del, outfp);
          fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
          fputs(del, outfp);
          v51.s_addr = tok->tt.arg32.val;
          v52 = inet_ntoa(v51);
          fputs(v52, outfp);
          fputs(del, outfp);
          fprintf(outfp, "%u", bswap32(tok->tt.arg32.len) >> 16);
          fputs(del, outfp);
          v28.s_addr = tok->tt.attr32.fsid;
          goto LABEL_157;
        }

        fprintf(outfp, "%s=", "sock_type");
        fprintf(outfp, "%u", tok->tt.grps.no);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "lport");
        fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "laddr");
        v90.s_addr = tok->tt.arg32.val;
        v91 = inet_ntoa(v90);
        fputs(v91, outfp);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "fport");
        fprintf(outfp, "%u", bswap32(tok->tt.arg32.len) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "faddr");
        v29.s_addr = tok->tt.attr32.fsid;
        goto LABEL_187;
      case 47:
        print_tok_type(outfp, 47, "sequence", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          mode = tok->tt.attr32.mode;
          goto LABEL_153;
        }

        fprintf(outfp, "%s=", "seq-num");
        fprintf(outfp, "%u", tok->tt.attr32.mode);
        goto LABEL_242;
      case 50:
        print_tok_type(outfp, 50, "IPC perm", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          print_user(outfp, tok->tt.attr32.mode, v4);
          fputs(del, outfp);
          print_group(outfp, tok->tt.arg32.val, v4);
          fputs(del, outfp);
          print_user(outfp, tok->tt.attr32.gid, v4);
          fputs(del, outfp);
          print_group(outfp, tok->tt.attr32.fsid, v4);
          fputs(del, outfp);
          fprintf(outfp, "%o", tok->tt.grps.list[3]);
          fputs(del, outfp);
          v76 = tok->tt.grps.list[4];
          fprintf(outfp, "%u");
          goto LABEL_162;
        }

        fprintf(outfp, "%s=", "uid");
        print_user(outfp, tok->tt.attr32.mode, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "gid");
        print_group(outfp, tok->tt.arg32.val, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "creator-uid");
        print_user(outfp, tok->tt.attr32.gid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "creator-gid");
        print_group(outfp, tok->tt.attr32.fsid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "mode");
        fprintf(outfp, "%o", tok->tt.grps.list[3]);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "seq");
        v83 = "%u";
        fprintf(outfp, "%u", tok->tt.grps.list[4]);
        fwrite(" ", 2uLL, 1uLL, outfp);
        v100 = "key";
        goto LABEL_209;
      case 59:
        print_tok_type(outfp, 59, "group", oflags);
        if (tok->tt.grps.no)
        {
          v69 = 0;
          do
          {
            v70 = tok + 4 * v69;
            if ((v4 & 4) != 0)
            {
              fwrite("<gid>", 5uLL, 1uLL, outfp);
              print_group(outfp, *(v70 + 7), v4);
              fwrite("</gid>", 6uLL, 1uLL, outfp);
              close_tag(outfp, tok->id);
            }

            else
            {
              fputs(del, outfp);
              print_group(outfp, *(v70 + 7), v4);
            }

            ++v69;
          }

          while (v69 < tok->tt.grps.no);
        }

        goto LABEL_154;
      case 60:
        print_tok_type(outfp, 60, "exec arg", oflags);
        if (tok->tt.attr32.mode)
        {
          v43 = 0;
          p_val = &tok->tt.arg64.val;
          do
          {
            if ((v4 & 4) != 0)
            {
              fwrite("<arg>", 5uLL, 1uLL, outfp);
              v46 = strlen(p_val[v43]);
              print_string(outfp, p_val[v43], v46, v4);
              fwrite("</arg>", 6uLL, 1uLL, outfp);
            }

            else
            {
              fputs(del, outfp);
              v45 = strlen(p_val[v43]);
              print_string(outfp, p_val[v43], v45, v4);
            }

            ++v43;
          }

          while (v43 < tok->tt.attr32.mode);
        }

        goto LABEL_92;
      case 61:
        print_tok_type(outfp, 61, "exec env", oflags);
        if (tok->tt.attr32.mode)
        {
          v47 = 0;
          v48 = &tok->tt.arg64.val;
          do
          {
            if ((v4 & 4) != 0)
            {
              fwrite("<env>", 5uLL, 1uLL, outfp);
              v50 = strlen(v48[v47]);
              print_string(outfp, v48[v47], v50, v4);
              fwrite("</env>", 6uLL, 1uLL, outfp);
            }

            else
            {
              fputs(del, outfp);
              v49 = strlen(v48[v47]);
              print_string(outfp, v48[v47], v49, v4);
            }

            ++v47;
          }

          while (v47 < tok->tt.attr32.mode);
        }

        goto LABEL_92;
      case 62:
        print_tok_type(outfp, 62, "attribute", oflags);
        if ((v4 & 4) == 0)
        {
          fputs(del, outfp);
          fprintf(outfp, "%o", tok->tt.attr32.mode);
          fputs(del, outfp);
          print_user(outfp, tok->tt.arg32.val, v4);
          fputs(del, outfp);
          print_group(outfp, tok->tt.attr32.gid, v4);
          fputs(del, outfp);
          fprintf(outfp, "%u", tok->tt.attr32.fsid);
          fputs(del, outfp);
          v71 = tok->tt.arg32.text;
          fprintf(outfp, "%lld");
LABEL_162:
          fputs(del, outfp);
          dev = tok->tt.attr32.dev;
          fprintf(outfp, "%u");
          goto LABEL_154;
        }

        fprintf(outfp, "%s=", "mode");
        fprintf(outfp, "%o", tok->tt.attr32.mode);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "uid");
        print_user(outfp, tok->tt.arg32.val, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "gid");
        print_group(outfp, tok->tt.attr32.gid, v4);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "fsid");
        v83 = "%u";
        fprintf(outfp, "%u", tok->tt.attr32.fsid);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "nodeid");
        fprintf(outfp, "%lld", tok->tt.attr32.nid);
        fwrite(" ", 2uLL, 1uLL, outfp);
        v100 = "device";
LABEL_209:
        fprintf(outfp, "%s=", v100);
        v84 = tok->tt.attr32.dev;
        goto LABEL_210;
      default:
        if (id != 82)
        {
          goto LABEL_77;
        }

        print_tok_type(outfp, 82, "exit", oflags);
        if ((v4 & 4) != 0)
        {
          fprintf(outfp, "%s=", "errval");
          fprintf(outfp, "Error %u", tok->tt.attr32.mode);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "retval");
          fprintf(outfp, "%u", tok->tt.arg32.val);
          goto LABEL_242;
        }

        fputs(del, outfp);
        fprintf(outfp, "Error %u", tok->tt.attr32.mode);
LABEL_152:
        fputs(del, outfp);
        v72 = tok->tt.arg32.val;
LABEL_153:
        fprintf(outfp, "%u");
        break;
    }

    goto LABEL_154;
  }

  if (id > 236)
  {
    switch(id)
    {
      case 237:
        print_tok_type(outfp, 237, "identity", oflags);
        if ((v4 & 4) != 0)
        {
          fprintf(outfp, "%s=", "signer-type");
          fprintf(outfp, "%u", tok->tt.attr32.mode);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "signing-id");
          print_string(outfp, tok->tt.arg64.val, tok->tt.ip.id, v4);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "signing-id-truncated");
          if (tok->tt.sockunix.path[14])
          {
            v88 = "yes";
            v89 = 3;
          }

          else
          {
            v88 = "no";
            v89 = 2;
          }

          fwrite(v88, v89, 1uLL, outfp);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "team-id");
          print_string(outfp, tok->tt.arg64.text, tok->tt.identity.team_id_len, v4);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "team-id-truncated");
          if (tok->tt.sockunix.path[30])
          {
            v110 = "yes";
            v111 = 3;
          }

          else
          {
            v110 = "no";
            v111 = 2;
          }

          fwrite(v110, v111, 1uLL, outfp);
          fwrite(" ", 2uLL, 1uLL, outfp);
          fprintf(outfp, "%s=", "cdhash");
          print_mem(outfp, tok->tt.execarg.text[4], tok->tt.identity.cdhash_len);
LABEL_242:
          fwrite(" ", 2uLL, 1uLL, outfp);
          goto LABEL_243;
        }

        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.mode);
        fputs(del, outfp);
        print_string(outfp, tok->tt.arg64.val, tok->tt.ip.id, v4);
        fputs(del, outfp);
        if (tok->tt.sockunix.path[14])
        {
          v37 = "truncated";
          v38 = 9;
        }

        else
        {
          v37 = "complete";
          v38 = 8;
        }

        fwrite(v37, v38, 1uLL, outfp);
        fputs(del, outfp);
        print_string(outfp, tok->tt.arg64.text, tok->tt.identity.team_id_len, v4);
        fputs(del, outfp);
        if (tok->tt.sockunix.path[30])
        {
          v108 = "truncated";
          v109 = 9;
        }

        else
        {
          v108 = "complete";
          v109 = 8;
        }

        fwrite(v108, v109, 1uLL, outfp);
        fputs(del, outfp);
        v54 = tok->tt.execarg.text[4];
        cdhash_len = tok->tt.identity.cdhash_len;
        break;
      case 238:
        print_tok_type(outfp, 238, "principal", oflags);
        if (tok->tt.attr32.mode)
        {
          v39 = 0;
          v40 = &tok->tt.arg64.val;
          do
          {
            if ((v4 & 4) != 0)
            {
              fwrite("<principal>", 0xBuLL, 1uLL, outfp);
              v42 = strlen(v40[v39]);
              print_string(outfp, v40[v39], v42, v4);
              fwrite("</principal>", 0xCuLL, 1uLL, outfp);
            }

            else
            {
              fputs(del, outfp);
              v41 = strlen(v40[v39]);
              print_string(outfp, v40[v39], v41, v4);
            }

            ++v39;
          }

          while (v39 < tok->tt.attr32.mode);
        }

LABEL_92:
        if ((v4 & 4) != 0)
        {
LABEL_243:
          v113 = tok->id;
          v114 = *MEMORY[0x29EDCA608];

          close_tag(outfp, v113);
          return;
        }

LABEL_154:
        v73 = *MEMORY[0x29EDCA608];
        return;
      case 239:
        print_tok_type(outfp, 239, "cert hash", oflags);
        if (tok->tt.attr32.mode)
        {
          v10 = 0;
          v11 = &tok->tt.arg64.val;
          do
          {
            if ((v4 & 4) != 0)
            {
              fwrite("<hash>", 6uLL, 1uLL, outfp);
              v13 = strlen(v11[v10]);
              print_string(outfp, v11[v10], v13, v4);
              fwrite("</hash>", 7uLL, 1uLL, outfp);
            }

            else
            {
              fputs(del, outfp);
              v12 = strlen(v11[v10]);
              print_string(outfp, v11[v10], v12, v4);
            }

            ++v10;
          }

          while (v10 < tok->tt.attr32.mode);
        }

        goto LABEL_92;
      default:
LABEL_77:
        if ((oflags & 4) != 0)
        {
          goto LABEL_154;
        }

        print_tok_type(outfp, id, "unknown", oflags);
LABEL_101:
        fputs(del, outfp);
        v54 = tok->tt.execarg.text[0];
        cdhash_len = tok->tt.grps.no;
        break;
    }

    v112 = *MEMORY[0x29EDCA608];

    print_mem(outfp, v54, cdhash_len);
    return;
  }

  switch(id)
  {
    case 96:
      print_tok_type(outfp, 96, "zone", oflags);
      if ((v4 & 4) != 0)
      {
        fprintf(outfp, "%s=", "name");
        print_string(outfp, tok->tt.arg64.val, tok->tt.grps.no, v4);
        goto LABEL_242;
      }

LABEL_113:
      fputs(del, outfp);
      data = tok->tt.arb.data;
      v32 = tok->tt.grps.no;
      goto LABEL_114;
    case 113:
      print_tok_type(outfp, 113, "argument", oflags);
      if ((v4 & 4) != 0)
      {
        fprintf(outfp, "%s=", "arg-num");
        fprintf(outfp, "%u", tok->tt.arg32.no);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "value");
        fprintf(outfp, "0x%llx", tok->tt.arg64.val);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "desc");
        path = tok->tt.arg64.text;
        v81 = tok->tt.arg64.len;
        goto LABEL_180;
      }

      fputs(del, outfp);
      fprintf(outfp, "%u", tok->tt.arg32.no);
      fputs(del, outfp);
      fprintf(outfp, "0x%llx", tok->tt.arg64.val);
      fputs(del, outfp);
      data = tok->tt.arg64.text;
      v32 = tok->tt.arg64.len;
LABEL_114:
      v61 = *MEMORY[0x29EDCA608];
      goto LABEL_115;
    case 114:
      print_tok_type(outfp, 114, "return", oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        print_retval(outfp, tok->tt.arg32.no, v4);
        fputs(del, outfp);
        v122 = tok->tt.arg64.val;
        fprintf(outfp, "%lld");
        goto LABEL_154;
      }

      fprintf(outfp, "%s=", "errval");
      print_retval(outfp, tok->tt.arg32.no, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "retval");
      v82 = tok->tt.arg64.val;
      fprintf(outfp, "%lld");
      goto LABEL_242;
    case 115:
      print_tok_type(outfp, 115, "attribute", oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        fprintf(outfp, "%o", tok->tt.attr32.mode);
        fputs(del, outfp);
        print_user(outfp, tok->tt.arg32.val, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.attr32.gid, v4);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.fsid);
        fputs(del, outfp);
        fprintf(outfp, "%lld", tok->tt.attr32.nid);
        fputs(del, outfp);
        v121 = tok->tt.arg64.text;
        fprintf(outfp, "%llu");
        goto LABEL_154;
      }

      fprintf(outfp, "%s=", "mode");
      fprintf(outfp, "%o", tok->tt.attr32.mode);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "uid");
      print_user(outfp, tok->tt.arg32.val, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "gid");
      print_group(outfp, tok->tt.attr32.gid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "fsid");
      fprintf(outfp, "%u", tok->tt.attr32.fsid);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "nodeid");
      fprintf(outfp, "%lld", tok->tt.attr32.nid);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "device");
      v124 = tok->tt.arg64.text;
      v79 = "%llu";
      goto LABEL_203;
    case 116:
      print_tok_type(outfp, 116, "header", oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.mode);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.hdr32.version);
        fputs(del, outfp);
        print_event(outfp, tok->tt.hdr32.e_type, v4);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.arg32.len);
        fputs(del, outfp);
        print_sec64(outfp, tok->tt.arg32.text, v4);
        fputs(del, outfp);
        v26 = tok->tt.arg64.text;
        goto LABEL_47;
      }

      fprintf(outfp, "%s=", "version");
      fprintf(outfp, "%u", tok->tt.hdr32.version);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "event");
      print_event(outfp, tok->tt.hdr32.e_type, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "modifier");
      fprintf(outfp, "%u", tok->tt.arg32.len);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "time");
      print_sec64(outfp, tok->tt.arg32.text, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "msec");
      v78 = tok->tt.arg64.text;
      goto LABEL_166;
    case 117:
      v21 = "subject";
      v22 = 117;
      goto LABEL_42;
    case 119:
      v21 = "process";
      v22 = 119;
LABEL_42:
      print_tok_type(outfp, v22, v21, oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        print_user(outfp, tok->tt.attr32.mode, v4);
        fputs(del, outfp);
        print_user(outfp, tok->tt.arg32.val, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.attr32.gid, v4);
        fputs(del, outfp);
        print_user(outfp, tok->tt.attr32.fsid, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.grps.list[3], v4);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.grps.list[4]);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.dev);
        fputs(del, outfp);
        fprintf(outfp, "%llu", tok->tt.hdr64_ex.s);
        fputs(del, outfp);
        v28.s_addr = tok->tt.grps.list[9];
        goto LABEL_157;
      }

      fprintf(outfp, "%s=", "audit-uid");
      print_user(outfp, tok->tt.attr32.mode, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "uid");
      print_user(outfp, tok->tt.arg32.val, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "gid");
      print_group(outfp, tok->tt.attr32.gid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "ruid");
      print_user(outfp, tok->tt.attr32.fsid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "rgid");
      print_group(outfp, tok->tt.grps.list[3], v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "pid");
      fprintf(outfp, "%u", tok->tt.grps.list[4]);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "sid");
      fprintf(outfp, "%u", tok->tt.attr32.dev);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "tid");
      fprintf(outfp, "%llu", tok->tt.hdr64_ex.s);
      v29.s_addr = tok->tt.grps.list[9];
LABEL_187:
      v98 = inet_ntoa(v29);
      fputs(v98, outfp);
      goto LABEL_242;
    case 121:
      print_tok_type(outfp, 121, "header_ex", oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.mode);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.hdr32.version);
        fputs(del, outfp);
        print_event(outfp, tok->tt.hdr32.e_type, v4);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.arg32.len);
        fputs(del, outfp);
        print_ip_ex_address(outfp, tok->tt.attr32.fsid, &tok->tt.inaddr_ex.addr[3]);
        fputs(del, outfp);
        print_sec64(outfp, tok->tt.execarg.text[3], v4);
        fputs(del, outfp);
        v26 = tok->tt.execarg.text[4];
LABEL_47:
        if (v4)
        {
          v30 = "%u";
        }

        else
        {
          v30 = " + %u msec";
        }

LABEL_147:
        fprintf(outfp, v30, v26);
        goto LABEL_154;
      }

      fprintf(outfp, "%s=", "version");
      fprintf(outfp, "%u", tok->tt.hdr32.version);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "event");
      print_event(outfp, tok->tt.hdr32.e_type, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "modifier");
      fprintf(outfp, "%u", tok->tt.arg32.len);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "host");
      print_ip_ex_address(outfp, tok->tt.attr32.fsid, &tok->tt.inaddr_ex.addr[3]);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "time");
      print_sec64(outfp, tok->tt.execarg.text[3], v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "msec");
      v78 = tok->tt.execarg.text[4];
LABEL_166:
      if (v4)
      {
        v79 = "%u";
      }

      else
      {
        v79 = " + %u msec";
      }

LABEL_202:
      v124 = v78;
LABEL_203:
      v99 = outfp;
      goto LABEL_211;
    case 122:
      v24 = "subject_ex";
      v25 = 122;
      goto LABEL_37;
    case 123:
      v24 = "process_ex";
      v25 = 123;
LABEL_37:
      print_tok_type(outfp, v25, v24, oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        print_user(outfp, tok->tt.attr32.mode, v4);
        fputs(del, outfp);
        print_user(outfp, tok->tt.arg32.val, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.attr32.gid, v4);
        fputs(del, outfp);
        print_user(outfp, tok->tt.attr32.fsid, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.grps.list[3], v4);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.grps.list[4]);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.dev);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.grps.list[6]);
        fputs(del, outfp);
        v16 = tok->tt.grps.list[7];
        v27 = *MEMORY[0x29EDCA608];
        p_uid = (&tok->tt.subj64.tid.port + 4);
        goto LABEL_60;
      }

      fprintf(outfp, "%s=", "audit-uid");
      print_user(outfp, tok->tt.attr32.mode, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "uid");
      print_user(outfp, tok->tt.arg32.val, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "gid");
      print_group(outfp, tok->tt.attr32.gid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "ruid");
      print_user(outfp, tok->tt.attr32.fsid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "rgid");
      print_group(outfp, tok->tt.grps.list[3], v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "pid");
      fprintf(outfp, "%u", tok->tt.grps.list[4]);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "sid");
      fprintf(outfp, "%u", tok->tt.attr32.dev);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "tid");
      fprintf(outfp, "%u", tok->tt.grps.list[6]);
      v19 = tok->tt.grps.list[7];
      v20 = (&tok->tt.subj64.tid.port + 4);
      goto LABEL_40;
    case 124:
      v14 = "subject_ex";
      v15 = 124;
      goto LABEL_27;
    case 125:
      v14 = "process_ex";
      v15 = 125;
LABEL_27:
      print_tok_type(outfp, v15, v14, oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        print_user(outfp, tok->tt.attr32.mode, v4);
        fputs(del, outfp);
        print_user(outfp, tok->tt.arg32.val, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.attr32.gid, v4);
        fputs(del, outfp);
        print_user(outfp, tok->tt.attr32.fsid, v4);
        fputs(del, outfp);
        print_group(outfp, tok->tt.grps.list[3], v4);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.grps.list[4]);
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.attr32.dev);
        fputs(del, outfp);
        fprintf(outfp, "%llu", tok->tt.hdr64_ex.s);
        fputs(del, outfp);
        v16 = tok->tt.grps.list[9];
        v17 = *MEMORY[0x29EDCA608];
        p_uid = (&tok->tt.krb5_principal.text[4] + 4);
        goto LABEL_60;
      }

      fprintf(outfp, "%s=", "audit-uid");
      print_user(outfp, tok->tt.attr32.mode, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "uid");
      print_user(outfp, tok->tt.arg32.val, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "gid");
      print_group(outfp, tok->tt.attr32.gid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "ruid");
      print_user(outfp, tok->tt.attr32.fsid, v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "rgid");
      print_group(outfp, tok->tt.grps.list[3], v4);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "pid");
      fprintf(outfp, "%u", tok->tt.grps.list[4]);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "sid");
      fprintf(outfp, "%u", tok->tt.attr32.dev);
      fwrite(" ", 2uLL, 1uLL, outfp);
      fprintf(outfp, "%s=", "tid");
      fprintf(outfp, "%llu", tok->tt.hdr64_ex.s);
      v19 = tok->tt.grps.list[9];
      v20 = (&tok->tt.krb5_principal.text[4] + 4);
LABEL_40:
      print_ip_ex_address(outfp, v19, v20);
      goto LABEL_242;
    case 126:
      print_tok_type(outfp, 126, "ip addr ex", oflags);
      if ((v4 & 4) == 0)
      {
        fputs(del, outfp);
        v16 = tok->tt.attr32.mode;
        v23 = *MEMORY[0x29EDCA608];
        p_uid = &tok->tt.attr32.uid;
        goto LABEL_60;
      }

      print_ip_ex_address(outfp, tok->tt.attr32.mode, &tok->tt.attr32.uid);
      goto LABEL_243;
    case 127:
      print_tok_type(outfp, 127, "socket", oflags);
      if ((v4 & 4) != 0)
      {
        fprintf(outfp, "%s=", "sock_dom");
        v83 = "%#x";
        fprintf(outfp, "%#x", tok->tt.grps.no);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "sock_type");
        fprintf(outfp, "%#x", tok->tt.ip.len);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "lport");
        fprintf(outfp, "%#x", bswap32(tok->tt.hdr32.e_type) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "laddr");
        print_ip_ex_address(outfp, tok->tt.ip.id, (&tok->tt.exit + 1));
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "faddr");
        print_ip_ex_address(outfp, tok->tt.ip.id, (&tok->tt.ret64 + 28));
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "fport");
        v84 = (bswap32(LOWORD(tok->tt.proc32_ex.sid)) >> 16);
LABEL_210:
        v124 = v84;
        v99 = outfp;
        v79 = v83;
LABEL_211:
        fprintf(v99, v79, v124);
        goto LABEL_242;
      }

      fputs(del, outfp);
      fprintf(outfp, "%#x", tok->tt.grps.no);
      fputs(del, outfp);
      fprintf(outfp, "%#x", tok->tt.ip.len);
      fputs(del, outfp);
      fprintf(outfp, "%#x", bswap32(tok->tt.hdr32.e_type) >> 16);
      fputs(del, outfp);
      print_ip_ex_address(outfp, tok->tt.ip.id, (&tok->tt.exit + 1));
      fputs(del, outfp);
      fprintf(outfp, "%#x", bswap32(LOWORD(tok->tt.proc32_ex.sid)) >> 16);
      fputs(del, outfp);
      v16 = tok->tt.ip.id;
      v35 = *MEMORY[0x29EDCA608];
      p_uid = (&tok->tt.ret64 + 28);
LABEL_60:

      print_ip_ex_address(outfp, v16, p_uid);
      return;
    case 128:
      print_tok_type(outfp, 128, "socket-inet", oflags);
      if ((v4 & 4) != 0)
      {
        fprintf(outfp, "%s=", "type");
        fprintf(outfp, "%u", tok->tt.grps.no);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "port");
        fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "addr");
        v86.s_addr = tok->tt.arg32.val;
        v87 = inet_ntoa(v86);
        fputs(v87, outfp);
        goto LABEL_242;
      }

      fputs(del, outfp);
      fprintf(outfp, "%u", tok->tt.grps.no);
      fputs(del, outfp);
      fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
      fputs(del, outfp);
      v28.s_addr = tok->tt.arg32.val;
LABEL_157:
      v74 = inet_ntoa(v28);
      v75 = *MEMORY[0x29EDCA608];

      fputs(v74, outfp);
      return;
    case 129:
      print_tok_type(outfp, 129, "socket-inet6", oflags);
      if ((v4 & 4) != 0)
      {
        fprintf(outfp, "%s=", "type");
        fprintf(outfp, "%u", tok->tt.grps.no);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "port");
        fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "addr");
        v125 = *&tok->tt.attr32.uid;
        v85 = inet_ntop(30, &v125, v126, 0x2Eu);
        fputs(v85, outfp);
        fwrite(" ", 2uLL, 1uLL, outfp);
        close_tag(outfp, tok->id);
      }

      else
      {
        fputs(del, outfp);
        fprintf(outfp, "%u", tok->tt.grps.no);
        fputs(del, outfp);
        fprintf(outfp, "%u", bswap32(tok->tt.ip.len) >> 16);
        fputs(del, outfp);
        v125 = *&tok->tt.attr32.uid;
        v36 = inet_ntop(30, &v125, v126, 0x2Eu);
        fputs(v36, outfp);
      }

      goto LABEL_154;
    case 130:
      print_tok_type(outfp, 130, "socket-unix", oflags);
      if ((v4 & 4) != 0)
      {
        fprintf(outfp, "%s=", "type");
        fprintf(outfp, "%u", tok->tt.grps.no);
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "port");
        fwrite(" ", 2uLL, 1uLL, outfp);
        fprintf(outfp, "%s=", "addr");
        v81 = strlen(tok->tt.sockunix.path);
        path = tok->tt.sockunix.path;
LABEL_180:
        print_string(outfp, path, v81, v4);
        goto LABEL_242;
      }

      fputs(del, outfp);
      fprintf(outfp, "%u", tok->tt.grps.no);
      fputs(del, outfp);
      v33 = strlen(tok->tt.sockunix.path);
      v34 = *MEMORY[0x29EDCA608];
      v32 = v33;
      data = &tok->tt.arb.uc;
LABEL_115:

      print_string(outfp, data, v32, v4);
      break;
    default:
      goto LABEL_77;
  }
}

void au_print_tok(FILE *outfp, tokenstr_t *tok, char *del, char raw, char sfrm)
{
  if (raw)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (sfrm)
  {
    v6 = v5;
  }

  else
  {
    v6 = raw != 0;
  }

  au_print_flags_tok(outfp, tok, del, v6);
}

void au_print_tok_xml(FILE *outfp, tokenstr_t *tok, char *del, char raw, char sfrm)
{
  if (raw)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (sfrm)
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  au_print_flags_tok(outfp, tok, del, v6);
}

int au_read_rec(FILE *fp, u_char **buf)
{
  v15 = 0;
  __ptr = 0;
  v14 = 0;
  v4 = fgetc(fp);
  if (v4 > 0x73u)
  {
    if (v4 != 121 && v4 != 116)
    {
      goto LABEL_18;
    }
  }

  else if (v4 - 20 >= 2)
  {
    if (v4 != 17 || fread(&__ptr, 1uLL, 4uLL, fp) < 4 || fread(&v15, 1uLL, 4uLL, fp) < 4 || fread(&v14, 1uLL, 2uLL, fp) < 2)
    {
      goto LABEL_18;
    }

    v5 = (bswap32(v14) >> 16) + 11;
    v6 = malloc_type_malloc(v5, 0x8BA14DBFuLL);
    *buf = v6;
    if (v6)
    {
      *v6 = v4;
      v7 = v15;
      *(v6 + 1) = __ptr;
      *(v6 + 5) = v7;
      v8 = v14;
      *(v6 + 9) = v14;
      v9 = bswap32(v8) >> 16;
      if (fread(v6 + 11, 1uLL, v9, fp) < v9)
      {
        v10 = buf;
LABEL_17:
        free(v10);
LABEL_18:
        *__error() = 22;
        goto LABEL_19;
      }

      return v5;
    }

LABEL_19:
    LODWORD(v5) = -1;
    return v5;
  }

  v17 = 0;
  if (fread(&v17, 1uLL, 4uLL, fp) < 4)
  {
    goto LABEL_18;
  }

  v5 = bswap32(v17);
  if (v5 < 5)
  {
    goto LABEL_18;
  }

  v11 = malloc_type_malloc(v5, 0x100004077774924uLL);
  *buf = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  bzero(v11, v5);
  *v12 = v4;
  v12[1] = BYTE3(v5);
  v12[2] = BYTE2(v5);
  v12[3] = BYTE1(v5);
  v12[4] = v5;
  if (fread(v12 + 5, 1uLL, (v5 - 5), fp) < (v5 - 5))
  {
    v10 = *buf;
    goto LABEL_17;
  }

  return v5;
}

FILE *print_tok_type(FILE *__stream, int a2, char *a3, char a4)
{
  v5 = __stream;
  if ((a4 & 4) != 0)
  {
    if (a2 > 95)
    {
      if (a2 <= 236)
      {
        switch(a2)
        {
          case 96:
            v6 = "<zone ";
            goto LABEL_45;
          case 113:
LABEL_21:
            v6 = "<argument ";
            goto LABEL_52;
          case 114:
LABEL_23:
            v6 = "<return ";
            goto LABEL_38;
          case 115:
LABEL_22:
            v6 = "<attribute ";
            goto LABEL_47;
          case 116:
          case 121:
LABEL_15:
            v6 = "<record ";
            goto LABEL_38;
          case 117:
          case 122:
          case 124:
LABEL_12:
            v6 = "<subject ";
            goto LABEL_14;
          case 119:
          case 123:
          case 125:
LABEL_13:
            v6 = "<process ";
LABEL_14:
            v7 = 9;
            goto LABEL_53;
          case 126:
LABEL_24:
            v6 = "<ip_address>";
            v7 = 12;
            goto LABEL_53;
          case 127:
LABEL_20:
            v6 = "<socket ";
LABEL_38:
            v7 = 8;
            goto LABEL_53;
          case 128:
            v6 = "<socket-inet ";
            goto LABEL_31;
          case 129:
            v6 = "<socket-inet6 ";
            v7 = 14;
            goto LABEL_53;
          case 130:
            v6 = "<socket-unix ";
LABEL_31:
            v7 = 13;
            goto LABEL_53;
          default:
            return __stream;
        }
      }

      switch(a2)
      {
        case 237:
          v6 = "<identity ";
LABEL_52:
          v7 = 10;
          break;
        case 238:
          v6 = "<krb5_principal>";
          v7 = 16;
          break;
        case 239:
          v6 = "<cert_hash>";
LABEL_47:
          v7 = 11;
          break;
        default:
          return __stream;
      }
    }

    else
    {
      switch(a2)
      {
        case 17:
          v6 = "<file ";
          break;
        case 18:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 37:
        case 48:
        case 49:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
          return __stream;
        case 19:
          v6 = "</record>";
          goto LABEL_14;
        case 20:
        case 21:
          goto LABEL_15;
        case 33:
          v6 = "<arbitrary ";
          goto LABEL_47;
        case 34:
          v6 = "<IPC";
          goto LABEL_43;
        case 35:
          v6 = "<path>";
          break;
        case 36:
          goto LABEL_12;
        case 38:
          goto LABEL_13;
        case 39:
          goto LABEL_23;
        case 40:
          v6 = "<text>";
          break;
        case 41:
          v6 = "<opaque>";
          goto LABEL_38;
        case 42:
          goto LABEL_24;
        case 43:
          v6 = "<ip ";
LABEL_43:
          v7 = 4;
          goto LABEL_53;
        case 44:
          v6 = "<ip_port>";
          goto LABEL_14;
        case 45:
          goto LABEL_21;
        case 46:
          goto LABEL_20;
        case 47:
          v6 = "<sequence ";
          goto LABEL_52;
        case 50:
          v6 = "<IPC_perm ";
          goto LABEL_52;
        case 59:
          v6 = "<group>";
          v7 = 7;
          goto LABEL_53;
        case 60:
          v6 = "<exec_args>";
          goto LABEL_47;
        case 61:
          v6 = "<exec_env>";
          goto LABEL_52;
        case 62:
          goto LABEL_22;
        default:
          if (a2 != 82)
          {
            return __stream;
          }

          v6 = "<exit ";
          break;
      }

LABEL_45:
      v7 = 6;
    }

LABEL_53:

    return fwrite(v6, v7, 1uLL, v5);
  }

  else if (a4)
  {
    return fprintf(__stream, "%u", a2);
  }

  else
  {

    return fputs(a3, __stream);
  }
}

uint64_t print_event(FILE *a1, int a2, char a3)
{
  v13[2] = *MEMORY[0x29EDCA608];
  *&e.ae_number = 0;
  *&e.ae_class = 0;
  v12[1] = 0;
  v13[0] = 0;
  v12[0] = 0;
  *(v13 + 6) = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  e.ae_name = v12;
  e.ae_desc = v10;
  if (!getauevnum_r(&e, a2) || (a3 & 1) != 0)
  {
    result = fprintf(a1, "%u", a2);
  }

  else
  {
    if ((a3 & 2) != 0)
    {
      ae_name = e.ae_name;
    }

    else
    {
      ae_name = e.ae_desc;
    }

    result = fputs(ae_name, a1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t print_sec32(FILE *a1, unsigned int a2, char a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    result = fprintf(a1, "%u", a2);
  }

  else
  {
    v6 = a2;
    ctime_r(&v6, v7);
    v7[24] = 0;
    result = fputs(v7, a1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t close_tag(uint64_t __stream, int a2)
{
  v2 = __stream;
  if (a2 <= 95)
  {
    switch(a2)
    {
      case 17:
        v3 = "</file>";
        goto LABEL_22;
      case 18:
      case 19:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 37:
      case 48:
      case 49:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
        return __stream;
      case 20:
      case 21:
        goto LABEL_8;
      case 33:
        v3 = "</arbitrary>";
        goto LABEL_26;
      case 34:
      case 36:
      case 38:
      case 39:
      case 43:
      case 45:
      case 46:
      case 47:
      case 50:
      case 62:
        goto LABEL_6;
      case 35:
        v3 = "</path>";
        goto LABEL_22;
      case 40:
        v3 = "</text>";
LABEL_22:
        v4 = 7;
        return fwrite(v3, v4, 1uLL, v2);
      case 41:
        v3 = "</opaque>";
        v4 = 9;
        return fwrite(v3, v4, 1uLL, v2);
      case 42:
        goto LABEL_13;
      case 44:
        v3 = "</ip_port>";
        v4 = 10;
        return fwrite(v3, v4, 1uLL, v2);
      case 59:
        v3 = "</group>";
        v4 = 8;
        return fwrite(v3, v4, 1uLL, v2);
      case 60:
        v3 = "</exec_args>";
        goto LABEL_26;
      case 61:
        v3 = "</exec_env>";
        v4 = 11;
        return fwrite(v3, v4, 1uLL, v2);
      default:
        if (a2 == 82)
        {
          goto LABEL_6;
        }

        return __stream;
    }
  }

  if (a2 > 236)
  {
    switch(a2)
    {
      case 237:
LABEL_6:
        v3 = "/>";
        v4 = 2;
        break;
      case 238:
        v3 = "</krb5_principal>";
        v4 = 17;
        break;
      case 239:
        v3 = "</cert_hash>";
LABEL_26:
        v4 = 12;
        break;
      default:
        return __stream;
    }

    return fwrite(v3, v4, 1uLL, v2);
  }

  switch(a2)
  {
    case 96:
    case 113:
    case 114:
    case 115:
    case 117:
    case 119:
    case 122:
    case 123:
    case 124:
    case 125:
    case 127:
    case 128:
    case 129:
    case 130:
      goto LABEL_6;
    case 116:
    case 121:
LABEL_8:
      __stream = fputc(62, __stream);
      break;
    case 126:
LABEL_13:
      v3 = "</ip_address>";
      v4 = 13;
      return fwrite(v3, v4, 1uLL, v2);
    default:
      return __stream;
  }

  return __stream;
}

size_t print_ip_ex_address(FILE *__stream, int a2, __int128 *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2 == 16)
  {
    v9 = *a3;
    v4 = 30;
    goto LABEL_5;
  }

  if (a2 == 4)
  {
    LODWORD(v9) = *a3;
    v4 = 2;
LABEL_5:
    v5 = inet_ntop(v4, &v9, v10, 0x2Eu);
    result = fputs(v5, __stream);
    v7 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = *MEMORY[0x29EDCA608];

  return fwrite("invalid", 7uLL, 1uLL, __stream);
}

uint64_t print_sec64(FILE *a1, time_t a2, char a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    result = fprintf(a1, "%u", a2);
  }

  else
  {
    v6 = a2;
    ctime_r(&v6, v7);
    v7[24] = 0;
    result = fputs(v7, a1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t print_string(uint64_t __stream, uint64_t a2, unint64_t a3, char a4)
{
  if (a3)
  {
    v7 = __stream;
    v8 = 0;
    v9 = 1;
    do
    {
      __stream = *(a2 + v8);
      if (*(a2 + v8))
      {
        if ((a4 & 4) != 0)
        {
          v10 = *(a2 + v8);
          if (__stream <= 0x26u)
          {
            if (v10 == 34)
            {
              v11 = "&quot;";
              goto LABEL_18;
            }

            if (v10 == 38)
            {
              v11 = "&amp;";
              v12 = 5;
LABEL_19:
              __stream = fwrite(v11, v12, 1uLL, v7);
              goto LABEL_20;
            }
          }

          else
          {
            switch(v10)
            {
              case '\'':
                v11 = "&apos;";
LABEL_18:
                v12 = 6;
                goto LABEL_19;
              case '>':
                v11 = "&gt;";
                goto LABEL_16;
              case '<':
                v11 = "&lt;";
LABEL_16:
                v12 = 4;
                goto LABEL_19;
            }
          }
        }

        __stream = fputc(__stream, v7);
      }

LABEL_20:
      v8 = v9++;
    }

    while (v8 < a3);
  }

  return __stream;
}

uint64_t print_user(FILE *a1, uid_t a2, char a3)
{
  if ((a3 & 9) != 0)
  {
    return fprintf(a1, "%d", a2);
  }

  v6 = getpwuid(a2);
  if (!v6)
  {
    return fprintf(a1, "%d", a2);
  }

  pw_name = v6->pw_name;

  return fputs(pw_name, a1);
}

uint64_t print_group(FILE *a1, gid_t a2, char a3)
{
  if ((a3 & 9) != 0)
  {
    return fprintf(a1, "%d", a2);
  }

  v6 = getgrgid(a2);
  if (!v6)
  {
    return fprintf(a1, "%d", a2);
  }

  gr_name = v6->gr_name;

  return fputs(gr_name, a1);
}

FILE *print_mem(FILE *__stream, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = __stream;
    v6 = 1;
    fwrite("0x", 2uLL, 1uLL, __stream);
    v7 = 0;
    do
    {
      __stream = fprintf(v5, "%02x", *(a2 + v7));
      v7 = v6++;
    }

    while (v7 < a3);
  }

  return __stream;
}

size_t print_ipctype(FILE *__stream, int a2, char a3)
{
  if (a3)
  {
    return fprintf(__stream, "%u", a2);
  }

  if (a2 == 3)
  {
    v4 = "Shared Memory IPC";
    v5 = 17;
    goto LABEL_8;
  }

  if (a2 == 2)
  {
    v4 = "Semaphore IPC";
    v5 = 13;
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    return fprintf(__stream, "%u", a2);
  }

  v4 = "Message IPC";
  v5 = 11;
LABEL_8:

  return fwrite(v4, v5, 1uLL, __stream);
}

size_t print_retval(FILE *a1, u_char bsm_error, char a3)
{
  if (a3)
  {
    return fprintf(a1, "%u");
  }

  errorp = 0;
  if (au_bsm_to_errno(bsm_error, &errorp))
  {
    return fprintf(a1, "failure: Unknown error: %d");
  }

  if (!errorp)
  {
    return fwrite("success", 7uLL, 1uLL, a1);
  }

  strerror(errorp);
  return fprintf(a1, "failure : %s");
}

int au_preselect(au_event_t event, au_mask_t *mask_p, int sorf, int flag)
{
  if (!mask_p)
  {
    return -1;
  }

  v5 = sorf;
  v7 = event;
  pthread_mutex_lock(&mutex_3);
  if ((firsttime & 1) == 0)
  {
    firsttime = 1;
    if (load_event_table() == -1)
    {
      goto LABEL_15;
    }
  }

  if (flag)
  {
    if (flag == 1)
    {
      flush_cache();
      if (load_event_table() != -1)
      {
        v8 = ev_cache;
        if (ev_cache)
        {
          while (*(v8 + 80) != v7)
          {
            v8 = *(v8 + 112);
            if (!v8)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_16;
        }
      }
    }

LABEL_15:
    pthread_mutex_unlock(&mutex_3);
    return -1;
  }

  v8 = ev_cache;
  if (!ev_cache)
  {
    goto LABEL_15;
  }

  while (*(v8 + 80) != v7)
  {
    v8 = *(v8 + 112);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((v5 & 1) == 0)
  {
    v10 = 0;
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v10 = *(v8 + 104) & mask_p->am_success;
  if ((v5 & 2) != 0)
  {
LABEL_20:
    v10 |= *(v8 + 104) & mask_p->am_failure;
  }

LABEL_21:
  pthread_mutex_unlock(&mutex_3);
  return v10 != 0;
}

uint64_t load_event_table()
{
  ev_cache = 0;
  setauevent();
  v0 = malloc_type_malloc(0x80uLL, 0x10B004028BC5D46uLL);
  if (v0)
  {
    v1 = v0;
    while (1)
    {
      *(v1 + 6) = 0u;
      *(v1 + 7) = 0u;
      *(v1 + 3) = 0u;
      *(v1 + 4) = 0u;
      *(v1 + 1) = 0u;
      *(v1 + 2) = 0u;
      *v1 = 0u;
      *(v1 + 5) = 0u;
      *(v1 + 11) = v1;
      *(v1 + 12) = v1 + 30;
      if (!getauevent_r((v1 + 80)))
      {
        break;
      }

      v2 = ev_cache;
      *(v1 + 14) = ev_cache;
      if (v2)
      {
        *(v2 + 120) = v1 + 112;
      }

      ev_cache = v1;
      *(v1 + 15) = &ev_cache;
      v1 = malloc_type_malloc(0x80uLL, 0x10B004028BC5D46uLL);
      if (!v1)
      {
        goto LABEL_7;
      }
    }

    free(v1);
    return 1;
  }

  else
  {
LABEL_7:
    flush_cache();
    return 0xFFFFFFFFLL;
  }
}

void *flush_cache()
{
  while (1)
  {
    result = ev_cache;
    if (!ev_cache)
    {
      break;
    }

    v2 = *(ev_cache + 112);
    v1 = *(ev_cache + 120);
    if (v2)
    {
      *(v2 + 120) = v1;
      v2 = result[14];
    }

    *v1 = v2;
    free(result);
  }

  return result;
}

uint32_t au_notify_initialize(void)
{
  v0 = notify_register_check("com.apple.audit.change", &token);
  if (v0)
  {
    return v0;
  }

  check = 0;
  v0 = notify_check(token, &check);
  if (v0)
  {
    return v0;
  }

  if (!audit_get_cond(&au_cond))
  {
    return 0;
  }

  v1 = 1000000;
  if (*__error() == 78)
  {
    return 1000001;
  }

  v3 = __error();
  v4 = strerror(*v3);
  syslog(3, "Initial audit status check failed (%s)", v4);
  return v1;
}

int au_notify_terminate(void)
{
  if (notify_cancel(token))
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int au_get_state(void)
{
  if (!au_cond)
  {
    v1 = au_notify_initialize();
    if (v1)
    {
      if (v1 == 1000001)
      {
        return 1000001;
      }

      else
      {
        return 1;
      }
    }

    return au_cond;
  }

  check = 0;
  if (notify_check(token, &check))
  {
    au_cond = 0;
    return 1;
  }

  if (!check)
  {
    return au_cond;
  }

  if (audit_get_cond(&au_cond))
  {
    if (*__error() == 78)
    {
      return 1000001;
    }

    else
    {
      v3 = __error();
      v4 = strerror(*v3);
      syslog(3, "Audit status check failed (%s)", v4);
      return *__error();
    }
  }

  else if (au_cond == -1 || au_cond == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

u_short au_socket_type_to_bsm(int local_socket_type)
{
  v1 = &dword_29857E5C4;
  v2 = 5;
  while (*v1 != local_socket_type)
  {
    v1 += 2;
    if (!--v2)
    {
      return 500;
    }
  }

  return *(v1 - 2);
}

int au_bsm_to_socket_type(u_short bsm_socket_type, int *local_socket_typep)
{
  v2 = 5;
  for (i = &dword_29857E5C4; *(i - 2) != bsm_socket_type; i += 2)
  {
    if (!--v2)
    {
      return -1;
    }
  }

  if (*i)
  {
    return -1;
  }

  result = 0;
  *local_socket_typep = 0;
  return result;
}

token_t *__cdecl au_to_arg32(char n, const char *text, uint32_t v)
{
  v6 = strlen(text);
  v7 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v8 = v7;
  if (v7)
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    v7[1] = v10 + 8;
    v11 = malloc_type_malloc(v10 + 8, 0x100004077774924uLL);
    *v8 = v11;
    if (v11)
    {
      v12 = v11;
      bzero(v11, v10 + 8);
      *v12 = 45;
      v12[1] = n;
      v12[2] = HIBYTE(v);
      v12[3] = BYTE2(v);
      v12[4] = BYTE1(v);
      v12[5] = v;
      v12[6] = HIBYTE(v9);
      v12[7] = v9;
      memcpy(v12 + 8, text, v10);
    }

    else
    {
      free(v8);
      return 0;
    }
  }

  return v8;
}

token_t *__cdecl au_to_arg64(char n, const char *text, uint64_t v)
{
  v6 = strlen(text);
  v7 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v8 = v7;
  if (v7)
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    v7[1] = v10 + 12;
    v11 = malloc_type_malloc(v10 + 12, 0x100004077774924uLL);
    *v8 = v11;
    if (v11)
    {
      v12 = v11;
      bzero(v11, v10 + 12);
      *v12 = 113;
      v12[1] = n;
      v12[2] = HIBYTE(v);
      v12[3] = BYTE6(v);
      v12[4] = BYTE5(v);
      v12[5] = BYTE4(v);
      v12[6] = BYTE3(v);
      v12[7] = BYTE2(v);
      v12[8] = BYTE1(v);
      v12[9] = v;
      v12[10] = HIBYTE(v9);
      v12[11] = v9;
      memcpy(v12 + 12, text, v10);
    }

    else
    {
      free(v8);
      return 0;
    }
  }

  return v8;
}

token_t *__cdecl au_to_data(char unit_print, char unit_type, char unit_count, const char *p)
{
  if (unit_type >= 4)
  {
    v10 = 0;
    *__error() = 22;
  }

  else
  {
    v5 = unit_count;
    v8 = qword_29857E600[unit_type];
    v9 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
    v10 = v9;
    if (v9)
    {
      v11 = v8 * v5;
      v9[1] = v11 + 4;
      v12 = malloc_type_malloc(v11 + 4, 0x100004077774924uLL);
      *v10 = v12;
      if (v12)
      {
        v13 = v12;
        bzero(v12, v11 + 4);
        *v13 = 33;
        v13[1] = unit_print;
        v13[2] = unit_type;
        v13[3] = v5;
        memcpy(v13 + 4, p, v11);
      }

      else
      {
        free(v10);
        return 0;
      }
    }
  }

  return v10;
}

token_t *__cdecl au_to_exit(int retval, int err)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 9;
    v6 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      *v6 = 82;
      v6[1] = HIBYTE(err);
      v6[2] = BYTE2(err);
      v6[3] = BYTE1(err);
      v6[4] = err;
      v6[5] = HIBYTE(retval);
      v6[6] = BYTE2(retval);
      v6[7] = BYTE1(retval);
      v6[8] = retval;
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

token_t *__cdecl au_to_newgroups(uint16_t n, gid_t *groups)
{
  v3 = n;
  v4 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v4[1] = (4 * v3) | 3;
    v7 = malloc_type_malloc((4 * v3) | 3, 0x100004077774924uLL);
    *v5 = v7;
    if (v7)
    {
      v8 = v7;
      bzero(v7, (4 * v3) | 3);
      *v8 = 59;
      v8[1] = BYTE1(v3);
      v8[2] = v3;
      if (v3)
      {
        v9 = v8 + 3;
        do
        {
          v10 = *groups++;
          *v9++ = bswap32(v10);
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

token_t *__cdecl au_to_in_addr(in_addr *internet_addr)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 5;
    v4 = malloc_type_malloc(5uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *(v4 + 1) = 0;
      *v4 = 42;
      *(v4 + 1) = internet_addr->s_addr;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_in_addr_ex(in6_addr *internet_addr)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 21;
    v4 = malloc_type_malloc(0x15uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *(v4 + 13) = 0;
      *(v4 + 5) = 0;
      *v4 = 126;
      v4[4] = 16;
      *(v4 + 5) = *internet_addr;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_ip(ip *ip)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 21;
    v4 = malloc_type_malloc(0x15uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *(v4 + 9) = 0;
      *(v4 + 1) = 0;
      *(v4 + 17) = 0;
      *v4 = 43;
      v5 = *ip;
      *(v4 + 17) = ip->ip_dst.s_addr;
      *(v4 + 1) = v5;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_ipc(char type, int id)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 6;
    v6 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      *v6 = 34;
      v6[1] = type;
      v6[2] = HIBYTE(id);
      v6[3] = BYTE2(id);
      v6[4] = BYTE1(id);
      v6[5] = id;
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

token_t *__cdecl au_to_ipc_perm(ipc_perm *perm)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 29;
    v4 = malloc_type_malloc(0x1DuLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *(v4 + 9) = 0;
      *(v4 + 1) = 0;
      *(v4 + 25) = 0;
      *(v4 + 17) = 0;
      *v4 = 50;
      *(v4 + 1) = bswap32(perm->uid);
      *(v4 + 5) = bswap32(perm->gid);
      *(v4 + 9) = bswap32(perm->cuid);
      cgid = perm->cgid;
      v4[13] = HIBYTE(cgid);
      v4[14] = BYTE2(cgid);
      v4[15] = BYTE1(cgid);
      v4[16] = cgid;
      *(v4 + 17) = 0;
      LOWORD(cgid) = perm->mode;
      v4[19] = BYTE1(cgid);
      v4[20] = cgid;
      *(v4 + 21) = 0;
      *(v4 + 23) = bswap32(perm->_seq) >> 16;
      *(v4 + 25) = bswap32(perm->_key);
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_iport(uint16_t iport)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 3;
    v4 = malloc_type_malloc(3uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *v4 = 44;
      v4[1] = HIBYTE(iport);
      v4[2] = iport;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_opaque(const char *data, uint16_t bytes)
{
  v2 = bytes;
  v4 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = v2 + 3;
    v6 = malloc_type_malloc(v2 + 3, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      v7 = v6;
      bzero(v6, v2 + 3);
      *v7 = 41;
      v7[1] = BYTE1(v2);
      v7[2] = v2;
      memcpy(v7 + 3, data, v2);
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

token_t *__cdecl au_to_file(const char *file, timeval tm)
{
  tv_usec = tm.tv_usec;
  tv_sec = tm.tv_sec;
  v5 = strlen(file);
  v6 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v7 = v6;
  if (v6)
  {
    v8 = v5 + 1;
    v9 = (v5 + 1);
    v6[1] = v9 + 11;
    v10 = malloc_type_malloc(v9 + 11, 0x100004077774924uLL);
    *v7 = v10;
    if (v10)
    {
      v11 = v10;
      bzero(v10, v9 + 11);
      *v11 = 17;
      v11[1] = HIBYTE(tv_sec);
      v11[2] = BYTE2(tv_sec);
      v11[3] = BYTE1(tv_sec);
      v11[4] = tv_sec;
      v11[5] = (tv_usec / 1000) >> 24;
      v11[6] = (tv_usec / 1000) >> 16;
      v11[7] = (tv_usec / 1000) >> 8;
      v11[8] = tv_usec / 1000;
      v11[9] = HIBYTE(v8);
      v11[10] = v8;
      memcpy(v11 + 11, file, v9);
    }

    else
    {
      free(v7);
      return 0;
    }
  }

  return v7;
}

token_t *__cdecl au_to_text(const char *text)
{
  v2 = strlen(text);
  v3 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v4 = v3;
  if (v3)
  {
    v5 = v2 + 1;
    v6 = (v2 + 1);
    v3[1] = v6 + 3;
    v7 = malloc_type_malloc(v6 + 3, 0x100004077774924uLL);
    *v4 = v7;
    if (v7)
    {
      v8 = v7;
      bzero(v7, v6 + 3);
      *v8 = 40;
      v8[1] = HIBYTE(v5);
      v8[2] = v5;
      memcpy(v8 + 3, text, v6);
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

token_t *__cdecl au_to_path(const char *path)
{
  v2 = strlen(path);
  v3 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v4 = v3;
  if (v3)
  {
    v5 = v2 + 1;
    v6 = (v2 + 1);
    v3[1] = v6 + 3;
    v7 = malloc_type_malloc(v6 + 3, 0x100004077774924uLL);
    *v4 = v7;
    if (v7)
    {
      v8 = v7;
      bzero(v7, v6 + 3);
      *v8 = 35;
      v8[1] = HIBYTE(v5);
      v8[2] = v5;
      memcpy(v8 + 3, path, v6);
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

token_t *__cdecl au_to_process32(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_t *tid)
{
  v16 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v17 = v16;
  if (v16)
  {
    v16[1] = 37;
    v18 = malloc_type_malloc(0x25uLL, 0x100004077774924uLL);
    *v17 = v18;
    if (v18)
    {
      *(v18 + 29) = 0;
      *v18 = 38;
      v18[1] = HIBYTE(auid);
      v18[2] = BYTE2(auid);
      v18[3] = BYTE1(auid);
      v18[4] = auid;
      v18[5] = HIBYTE(euid);
      v18[6] = BYTE2(euid);
      v18[7] = BYTE1(euid);
      v18[8] = euid;
      v18[9] = HIBYTE(egid);
      v18[10] = BYTE2(egid);
      v18[11] = BYTE1(egid);
      v18[12] = egid;
      v18[13] = HIBYTE(ruid);
      v18[14] = BYTE2(ruid);
      v18[15] = BYTE1(ruid);
      v18[16] = ruid;
      v18[17] = HIBYTE(rgid);
      v18[18] = BYTE2(rgid);
      v18[19] = BYTE1(rgid);
      v18[20] = rgid;
      v18[21] = HIBYTE(pid);
      v18[22] = BYTE2(pid);
      v18[23] = BYTE1(pid);
      v18[24] = pid;
      v18[25] = HIBYTE(sid);
      v18[26] = BYTE2(sid);
      v18[27] = BYTE1(sid);
      v18[28] = sid;
      *(v18 + 29) = bswap32(tid->port);
      *(v18 + 33) = tid->machine;
    }

    else
    {
      free(v17);
      return 0;
    }
  }

  return v17;
}

token_t *__cdecl au_to_process64(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_t *tid)
{
  v16 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v17 = v16;
  if (v16)
  {
    v16[1] = 41;
    v18 = malloc_type_malloc(0x29uLL, 0x100004077774924uLL);
    *v17 = v18;
    if (v18)
    {
      *(v18 + 37) = 0;
      *(v18 + 29) = 0;
      *v18 = 119;
      v18[1] = HIBYTE(auid);
      v18[2] = BYTE2(auid);
      v18[3] = BYTE1(auid);
      v18[4] = auid;
      v18[5] = HIBYTE(euid);
      v18[6] = BYTE2(euid);
      v18[7] = BYTE1(euid);
      v18[8] = euid;
      v18[9] = HIBYTE(egid);
      v18[10] = BYTE2(egid);
      v18[11] = BYTE1(egid);
      v18[12] = egid;
      v18[13] = HIBYTE(ruid);
      v18[14] = BYTE2(ruid);
      v18[15] = BYTE1(ruid);
      v18[16] = ruid;
      v18[17] = HIBYTE(rgid);
      v18[18] = BYTE2(rgid);
      v18[19] = BYTE1(rgid);
      v18[20] = rgid;
      v18[21] = HIBYTE(pid);
      v18[22] = BYTE2(pid);
      v18[23] = BYTE1(pid);
      v18[24] = pid;
      v18[25] = HIBYTE(sid);
      v18[26] = BYTE2(sid);
      v18[27] = BYTE1(sid);
      v18[28] = sid;
      port = tid->port;
      v18[29] = HIBYTE(port);
      v18[30] = BYTE6(port);
      v18[36] = port;
      v19.i32[0] = port;
      v21 = vshlq_u32(vdupq_n_s32(port), xmmword_29857E5F0);
      v21.i32[0] = vshlq_s32(v19, xmmword_29857E5F0).u32[0];
      v18[31] = BYTE5(port);
      *v21.i8 = vmovn_s32(v21);
      *(v18 + 8) = vuzp1_s8(*v21.i8, *v21.i8).u32[0];
      *(v18 + 37) = tid->machine;
    }

    else
    {
      free(v17);
      return 0;
    }
  }

  return v17;
}

token_t *__cdecl au_to_process32_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
  at_type = tid->at_type;
  if (at_type == 16)
  {
    v21 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
    v18 = v21;
    if (!v21)
    {
      return v18;
    }

    *(v21 + 1) = 53;
    v19 = malloc_type_malloc(0x35uLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      *(v19 + 45) = 0;
      v20 = 0uLL;
      *(v19 + 2) = 0u;
LABEL_9:
      *v19 = v20;
      *(v19 + 1) = v20;
      *v19 = 123;
      v19[1] = HIBYTE(auid);
      v19[2] = BYTE2(auid);
      v19[3] = BYTE1(auid);
      v19[4] = auid;
      v19[5] = HIBYTE(euid);
      v19[6] = BYTE2(euid);
      v19[7] = BYTE1(euid);
      v19[8] = euid;
      v19[9] = HIBYTE(egid);
      v19[10] = BYTE2(egid);
      v19[11] = BYTE1(egid);
      v19[12] = egid;
      v19[13] = HIBYTE(ruid);
      v19[14] = BYTE2(ruid);
      v19[15] = BYTE1(ruid);
      v19[16] = ruid;
      v19[17] = HIBYTE(rgid);
      v19[18] = BYTE2(rgid);
      v19[19] = BYTE1(rgid);
      v19[20] = rgid;
      v19[21] = HIBYTE(pid);
      v19[22] = BYTE2(pid);
      v19[23] = BYTE1(pid);
      v19[24] = pid;
      v19[25] = HIBYTE(sid);
      v19[26] = BYTE2(sid);
      v19[27] = BYTE1(sid);
      v19[28] = sid;
      *(v19 + 29) = bswap32(tid->at_port);
      *(v19 + 33) = bswap32(tid->at_type);
      *(v19 + 37) = tid->at_addr[0];
      if (tid->at_type == 16)
      {
        *(v19 + 41) = tid->at_addr[1];
        *(v19 + 45) = tid->at_addr[2];
        *(v19 + 49) = tid->at_addr[3];
      }

      return v18;
    }

LABEL_12:
    free(v18);
    return 0;
  }

  if (at_type != 4)
  {
    v18 = 0;
    *__error() = 22;
    return v18;
  }

  v17 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v18 = v17;
  if (v17)
  {
    *(v17 + 1) = 41;
    v19 = malloc_type_malloc(0x29uLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      v20 = 0uLL;
      *(v19 + 25) = 0u;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  return v18;
}

token_t *__cdecl au_to_process64_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
  at_type = tid->at_type;
  if (at_type == 16)
  {
    v22 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
    v18 = v22;
    if (!v22)
    {
      return v18;
    }

    *(v22 + 1) = 57;
    v19 = malloc_type_malloc(0x39uLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      v21 = 0uLL;
      *(v19 + 41) = 0u;
      *(v19 + 2) = 0u;
LABEL_9:
      *v19 = v21;
      *(v19 + 1) = v21;
      *v19 = 125;
      v19[1] = HIBYTE(auid);
      v19[2] = BYTE2(auid);
      v19[3] = BYTE1(auid);
      v19[4] = auid;
      v19[5] = HIBYTE(euid);
      v19[6] = BYTE2(euid);
      v19[7] = BYTE1(euid);
      v19[8] = euid;
      v19[9] = HIBYTE(egid);
      v19[10] = BYTE2(egid);
      v19[11] = BYTE1(egid);
      v19[12] = egid;
      v19[13] = HIBYTE(ruid);
      v19[14] = BYTE2(ruid);
      v19[15] = BYTE1(ruid);
      v19[16] = ruid;
      v19[17] = HIBYTE(rgid);
      v19[18] = BYTE2(rgid);
      v19[19] = BYTE1(rgid);
      v19[20] = rgid;
      v19[21] = HIBYTE(pid);
      v19[22] = BYTE2(pid);
      v19[23] = BYTE1(pid);
      v19[24] = pid;
      v19[25] = HIBYTE(sid);
      v19[26] = BYTE2(sid);
      v19[27] = BYTE1(sid);
      v19[28] = sid;
      at_port = tid->at_port;
      v19[29] = HIBYTE(at_port);
      v19[30] = BYTE6(at_port);
      v19[31] = BYTE5(at_port);
      v19[36] = at_port;
      v20.i32[0] = at_port;
      v24 = vshlq_u32(vdupq_n_s32(at_port), xmmword_29857E5F0);
      v24.i32[0] = vshlq_s32(v20, xmmword_29857E5F0).u32[0];
      *v24.i8 = vmovn_s32(v24);
      *(v19 + 8) = vuzp1_s8(*v24.i8, *v24.i8).u32[0];
      *(v19 + 37) = bswap32(tid->at_type);
      *(v19 + 41) = tid->at_addr[0];
      if (tid->at_type == 16)
      {
        *(v19 + 45) = tid->at_addr[1];
        *(v19 + 49) = tid->at_addr[2];
        *(v19 + 53) = tid->at_addr[3];
      }

      return v18;
    }

LABEL_12:
    free(v18);
    return 0;
  }

  if (at_type != 4)
  {
    v18 = 0;
    *__error() = 22;
    return v18;
  }

  v17 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v18 = v17;
  if (v17)
  {
    *(v17 + 1) = 45;
    v19 = malloc_type_malloc(0x2DuLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      v21 = 0uLL;
      *(v19 + 29) = 0u;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  return v18;
}

token_t *__cdecl au_to_return32(char status, uint32_t ret)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 6;
    v6 = malloc_type_malloc(6uLL, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      *v6 = 39;
      v6[1] = status;
      v6[2] = HIBYTE(ret);
      v6[3] = BYTE2(ret);
      v6[4] = BYTE1(ret);
      v6[5] = ret;
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

token_t *__cdecl au_to_return64(char status, uint64_t ret)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 10;
    v6 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      *v6 = 114;
      v6[1] = status;
      v6[2] = HIBYTE(ret);
      v6[3] = BYTE6(ret);
      v6[4] = BYTE5(ret);
      v6[5] = BYTE4(ret);
      v6[6] = BYTE3(ret);
      v6[7] = BYTE2(ret);
      v6[8] = BYTE1(ret);
      v6[9] = ret;
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

token_t *__cdecl au_to_seq(uint64_t audit_count)
{
  v1 = audit_count;
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 5;
    v4 = malloc_type_malloc(5uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *v4 = 47;
      v4[1] = HIBYTE(v1);
      v4[2] = BYTE2(v1);
      v4[3] = BYTE1(v1);
      v4[4] = v1;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_socket_ex(u_short so_domain, u_short so_type, sockaddr *sa_local, sockaddr *sa_remote)
{
  v6 = so_type;
  v7 = so_domain;
  if (so_domain != 2)
  {
    if (so_domain != 30)
    {
      v9 = 0;
      *__error() = 22;
      return v9;
    }

    v12 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
    v9 = v12;
    if (v12)
    {
      *(v12 + 1) = 43;
      v13 = malloc_type_malloc(0x2BuLL, 0x100004077774924uLL);
      v11 = v13;
      *v9 = v13;
      if (v13)
      {
        *(v13 + 27) = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_12;
  }

  v8 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  *(v8 + 1) = 19;
  v10 = malloc_type_malloc(0x13uLL, 0x100004077774924uLL);
  v11 = v10;
  *v9 = v10;
  if (v10)
  {
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 15) = 0;
    goto LABEL_12;
  }

LABEL_11:
  free(v9);
  v9 = 0;
LABEL_12:
  *v11 = 127;
  *(v11 + 1) = __rev16(au_domain_to_bsm(v7));
  v14 = au_socket_type_to_bsm(v6);
  v11[3] = HIBYTE(v14);
  v11[4] = v14;
  v11[5] = 0;
  if (v7 == 2)
  {
    v11[6] = 4;
    *(v11 + 7) = *sa_local->sa_data;
    *(v11 + 9) = *&sa_local->sa_data[2];
    *(v11 + 13) = *sa_remote->sa_data;
    *(v11 + 15) = *&sa_remote->sa_data[2];
  }

  else
  {
    v11[6] = 16;
    *(v11 + 7) = *sa_local->sa_data;
    *(v11 + 9) = *&sa_local->sa_data[6];
    *(v11 + 25) = *sa_remote->sa_data;
    *(v11 + 27) = *&sa_remote->sa_data[6];
  }

  return v9;
}

token_t *__cdecl au_to_sock_unix(sockaddr_un *so)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  if (v2)
  {
    v2[1] = strlen(so->sun_path) + 4;
    v3 = strlen(so->sun_path);
    v4 = malloc_type_malloc(v3 + 4, 0x100004077774924uLL);
    *v2 = v4;
    if (v4)
    {
      v5 = v4;
      v6 = strlen(so->sun_path);
      bzero(v5, v6 + 4);
      *v5 = 130;
      v5[2] = so->sun_family;
      v7 = strlen(so->sun_path);
      memcpy(v5 + 3, so->sun_path, v7 + 1);
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

token_t *__cdecl au_to_sock_inet32(sockaddr_in *so)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 9;
    v4 = malloc_type_malloc(9uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *(v4 + 1) = 0;
      *v4 = 0x80;
      v4[2] = so->sin_family;
      *(v4 + 3) = so->sin_port;
      *(v4 + 5) = so->sin_addr.s_addr;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_sock_inet128(sockaddr_in6 *so)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 21;
    v4 = malloc_type_malloc(0x15uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *(v4 + 10) = 0;
      *(v4 + 2) = 0;
      *(v4 + 17) = 0;
      *v4 = 129;
      v4[2] = so->sin6_family;
      *(v4 + 3) = bswap32(so->sin6_port) >> 16;
      *(v4 + 5) = so->sin6_addr;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

token_t *__cdecl au_to_subject32(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_t *tid)
{
  v16 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v17 = v16;
  if (v16)
  {
    v16[1] = 37;
    v18 = malloc_type_malloc(0x25uLL, 0x100004077774924uLL);
    *v17 = v18;
    if (v18)
    {
      *(v18 + 29) = 0;
      *v18 = 36;
      v18[1] = HIBYTE(auid);
      v18[2] = BYTE2(auid);
      v18[3] = BYTE1(auid);
      v18[4] = auid;
      v18[5] = HIBYTE(euid);
      v18[6] = BYTE2(euid);
      v18[7] = BYTE1(euid);
      v18[8] = euid;
      v18[9] = HIBYTE(egid);
      v18[10] = BYTE2(egid);
      v18[11] = BYTE1(egid);
      v18[12] = egid;
      v18[13] = HIBYTE(ruid);
      v18[14] = BYTE2(ruid);
      v18[15] = BYTE1(ruid);
      v18[16] = ruid;
      v18[17] = HIBYTE(rgid);
      v18[18] = BYTE2(rgid);
      v18[19] = BYTE1(rgid);
      v18[20] = rgid;
      v18[21] = HIBYTE(pid);
      v18[22] = BYTE2(pid);
      v18[23] = BYTE1(pid);
      v18[24] = pid;
      v18[25] = HIBYTE(sid);
      v18[26] = BYTE2(sid);
      v18[27] = BYTE1(sid);
      v18[28] = sid;
      *(v18 + 29) = bswap32(tid->port);
      *(v18 + 33) = tid->machine;
    }

    else
    {
      free(v17);
      return 0;
    }
  }

  return v17;
}

token_t *__cdecl au_to_subject64(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_t *tid)
{
  v16 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v17 = v16;
  if (v16)
  {
    v16[1] = 41;
    v18 = malloc_type_malloc(0x29uLL, 0x100004077774924uLL);
    *v17 = v18;
    if (v18)
    {
      *(v18 + 37) = 0;
      *(v18 + 29) = 0;
      *v18 = 117;
      v18[1] = HIBYTE(auid);
      v18[2] = BYTE2(auid);
      v18[3] = BYTE1(auid);
      v18[4] = auid;
      v18[5] = HIBYTE(euid);
      v18[6] = BYTE2(euid);
      v18[7] = BYTE1(euid);
      v18[8] = euid;
      v18[9] = HIBYTE(egid);
      v18[10] = BYTE2(egid);
      v18[11] = BYTE1(egid);
      v18[12] = egid;
      v18[13] = HIBYTE(ruid);
      v18[14] = BYTE2(ruid);
      v18[15] = BYTE1(ruid);
      v18[16] = ruid;
      v18[17] = HIBYTE(rgid);
      v18[18] = BYTE2(rgid);
      v18[19] = BYTE1(rgid);
      v18[20] = rgid;
      v18[21] = HIBYTE(pid);
      v18[22] = BYTE2(pid);
      v18[23] = BYTE1(pid);
      v18[24] = pid;
      v18[25] = HIBYTE(sid);
      v18[26] = BYTE2(sid);
      v18[27] = BYTE1(sid);
      v18[28] = sid;
      port = tid->port;
      v18[29] = HIBYTE(port);
      v18[30] = BYTE6(port);
      v18[36] = port;
      v19.i32[0] = port;
      v21 = vshlq_u32(vdupq_n_s32(port), xmmword_29857E5F0);
      v21.i32[0] = vshlq_s32(v19, xmmword_29857E5F0).u32[0];
      v18[31] = BYTE5(port);
      *v21.i8 = vmovn_s32(v21);
      *(v18 + 8) = vuzp1_s8(*v21.i8, *v21.i8).u32[0];
      *(v18 + 37) = tid->machine;
    }

    else
    {
      free(v17);
      return 0;
    }
  }

  return v17;
}

token_t *__cdecl au_to_subject32_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
  at_type = tid->at_type;
  if (at_type == 16)
  {
    v21 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
    v18 = v21;
    if (!v21)
    {
      return v18;
    }

    *(v21 + 1) = 53;
    v19 = malloc_type_malloc(0x35uLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      *(v19 + 45) = 0;
      v20 = 0uLL;
      *(v19 + 2) = 0u;
LABEL_9:
      *v19 = v20;
      *(v19 + 1) = v20;
      *v19 = 122;
      v19[1] = HIBYTE(auid);
      v19[2] = BYTE2(auid);
      v19[3] = BYTE1(auid);
      v19[4] = auid;
      v19[5] = HIBYTE(euid);
      v19[6] = BYTE2(euid);
      v19[7] = BYTE1(euid);
      v19[8] = euid;
      v19[9] = HIBYTE(egid);
      v19[10] = BYTE2(egid);
      v19[11] = BYTE1(egid);
      v19[12] = egid;
      v19[13] = HIBYTE(ruid);
      v19[14] = BYTE2(ruid);
      v19[15] = BYTE1(ruid);
      v19[16] = ruid;
      v19[17] = HIBYTE(rgid);
      v19[18] = BYTE2(rgid);
      v19[19] = BYTE1(rgid);
      v19[20] = rgid;
      v19[21] = HIBYTE(pid);
      v19[22] = BYTE2(pid);
      v19[23] = BYTE1(pid);
      v19[24] = pid;
      v19[25] = HIBYTE(sid);
      v19[26] = BYTE2(sid);
      v19[27] = BYTE1(sid);
      v19[28] = sid;
      *(v19 + 29) = bswap32(tid->at_port);
      *(v19 + 33) = bswap32(tid->at_type);
      if (tid->at_type == 16)
      {
        *(v19 + 37) = *tid->at_addr;
      }

      else
      {
        *(v19 + 37) = tid->at_addr[0];
      }

      return v18;
    }

LABEL_12:
    free(v18);
    return 0;
  }

  if (at_type != 4)
  {
    v18 = 0;
    *__error() = 22;
    return v18;
  }

  v17 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v18 = v17;
  if (v17)
  {
    *(v17 + 1) = 41;
    v19 = malloc_type_malloc(0x29uLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      v20 = 0uLL;
      *(v19 + 25) = 0u;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  return v18;
}

token_t *__cdecl au_to_subject64_ex(au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
  at_type = tid->at_type;
  if (at_type == 16)
  {
    v22 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
    v18 = v22;
    if (!v22)
    {
      return v18;
    }

    *(v22 + 1) = 57;
    v19 = malloc_type_malloc(0x39uLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      v21 = 0uLL;
      *(v19 + 41) = 0u;
      *(v19 + 2) = 0u;
LABEL_9:
      *v19 = v21;
      *(v19 + 1) = v21;
      *v19 = 124;
      v19[1] = HIBYTE(auid);
      v19[2] = BYTE2(auid);
      v19[3] = BYTE1(auid);
      v19[4] = auid;
      v19[5] = HIBYTE(euid);
      v19[6] = BYTE2(euid);
      v19[7] = BYTE1(euid);
      v19[8] = euid;
      v19[9] = HIBYTE(egid);
      v19[10] = BYTE2(egid);
      v19[11] = BYTE1(egid);
      v19[12] = egid;
      v19[13] = HIBYTE(ruid);
      v19[14] = BYTE2(ruid);
      v19[15] = BYTE1(ruid);
      v19[16] = ruid;
      v19[17] = HIBYTE(rgid);
      v19[18] = BYTE2(rgid);
      v19[19] = BYTE1(rgid);
      v19[20] = rgid;
      v19[21] = HIBYTE(pid);
      v19[22] = BYTE2(pid);
      v19[23] = BYTE1(pid);
      v19[24] = pid;
      v19[25] = HIBYTE(sid);
      v19[26] = BYTE2(sid);
      v19[27] = BYTE1(sid);
      v19[28] = sid;
      at_port = tid->at_port;
      v19[29] = HIBYTE(at_port);
      v19[30] = BYTE6(at_port);
      v19[31] = BYTE5(at_port);
      v19[36] = at_port;
      v20.i32[0] = at_port;
      v24 = vshlq_u32(vdupq_n_s32(at_port), xmmword_29857E5F0);
      v24.i32[0] = vshlq_s32(v20, xmmword_29857E5F0).u32[0];
      *v24.i8 = vmovn_s32(v24);
      *(v19 + 8) = vuzp1_s8(*v24.i8, *v24.i8).u32[0];
      *(v19 + 37) = bswap32(tid->at_type);
      if (tid->at_type == 16)
      {
        *(v19 + 41) = *tid->at_addr;
      }

      else
      {
        *(v19 + 41) = tid->at_addr[0];
      }

      return v18;
    }

LABEL_12:
    free(v18);
    return 0;
  }

  if (at_type != 4)
  {
    v18 = 0;
    *__error() = 22;
    return v18;
  }

  v17 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v18 = v17;
  if (v17)
  {
    *(v17 + 1) = 45;
    v19 = malloc_type_malloc(0x2DuLL, 0x100004077774924uLL);
    *v18 = v19;
    if (v19)
    {
      v21 = 0uLL;
      *(v19 + 29) = 0u;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  return v18;
}

token_t *au_to_me(void)
{
  memset(&v7, 0, sizeof(v7));
  if (getaudit_addr(&v7, 48))
  {
    return 0;
  }

  ai_auid = v7.ai_auid;
  v2 = geteuid();
  v3 = getegid();
  v4 = getuid();
  v5 = getgid();
  v6 = getpid();
  return au_to_subject32_ex(ai_auid, v2, v3, v4, v5, v6, v7.ai_asid, (&v7 | 0xC));
}

void *au_to_strings(const char **a1, char a2)
{
  v3 = a1;
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v5;
      v6 += (strlen(v4) + 1);
      ++v5;
      v4 = v3[v7 + 1];
    }

    while (v4);
    v8 = v6 + 5;
  }

  else
  {
    LODWORD(v5) = 0;
    v8 = 5;
  }

  v9 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v10 = v9;
  if (v9)
  {
    v9[1] = v8;
    v11 = malloc_type_malloc(v8, 0x100004077774924uLL);
    *v10 = v11;
    if (v11)
    {
      v12 = v11;
      bzero(v11, v8);
      *v12 = a2;
      v12[1] = BYTE3(v5);
      v12[2] = BYTE2(v5);
      v12[3] = BYTE1(v5);
      v12[4] = v5;
      if (v5)
      {
        v13 = v12 + 5;
        v14 = v5;
        do
        {
          v15 = *v3++;
          v16 = strlen(v15);
          memcpy(v13, v15, v16 + 1);
          v13 += strlen(v15) + 1;
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      free(v10);
      return 0;
    }
  }

  return v10;
}

token_t *__cdecl au_to_zonename(const char *zonename)
{
  v2 = strlen(zonename);
  v3 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v4 = v3;
  if (v3)
  {
    v5 = v2 + 1;
    v6 = (v2 + 1);
    v3[1] = v6 + 3;
    v7 = malloc_type_malloc(v6 + 3, 0x100004077774924uLL);
    *v4 = v7;
    if (v7)
    {
      v8 = v7;
      bzero(v7, v6 + 3);
      *v8 = 96;
      v8[1] = HIBYTE(v5);
      v8[2] = v5;
      memcpy(v8 + 3, zonename, v6);
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

token_t *__cdecl au_to_identity(uint32_t signer_type, const char *signing_id, u_char signing_id_trunc, const char *team_id, u_char team_id_trunc, uint8_t *cdhash, uint16_t cdhash_len)
{
  v7 = cdhash_len;
  if (!signing_id)
  {
    v11 = 0;
    if (team_id)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = strlen(signing_id);
  if (!team_id)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = strlen(team_id);
LABEL_6:
  v13 = v11 + v7 + v12 + 15;
  v14 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  *(v14 + 1) = v13;
  v15 = malloc_type_malloc(v13, 0x100004077774924uLL);
  *v14 = v15;
  bzero(v15, v13);
  *v15 = -19;
  v15[1] = HIBYTE(signer_type);
  v15[2] = BYTE2(signer_type);
  v15[3] = BYTE1(signer_type);
  v15[4] = signer_type;
  v15[5] = (v11 + 1) >> 8;
  v15[6] = v11 + 1;
  memcpy(v15 + 7, signing_id, v11);
  v16 = &v15[v11 + 7];
  *v16 = 0;
  v16[1] = signing_id_trunc;
  v16[2] = (v12 + 1) >> 8;
  v16[3] = v12 + 1;
  v17 = v16 + 4;
  memcpy(v16 + 4, team_id, v12);
  v18 = &v17[v12];
  *v18 = 0;
  v18[1] = team_id_trunc;
  v18[2] = BYTE1(v7);
  v18[3] = v7;
  memcpy(&v17[v12 + 4], cdhash, v7);
  return v14;
}

token_t *__cdecl au_to_header32_tm(int rec_size, au_event_t e_type, au_emod_t e_mod, timeval tm)
{
  tv_usec = tm.tv_usec;
  tv_sec = tm.tv_sec;
  v9 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v10 = v9;
  if (v9)
  {
    v9[1] = 18;
    v11 = malloc_type_malloc(0x12uLL, 0x100004077774924uLL);
    *v10 = v11;
    if (v11)
    {
      *v11 = 20;
      v11[1] = HIBYTE(rec_size);
      v11[2] = BYTE2(rec_size);
      v11[3] = BYTE1(rec_size);
      v11[4] = rec_size;
      v11[5] = 11;
      v11[6] = HIBYTE(e_type);
      v11[7] = e_type;
      v11[8] = HIBYTE(e_mod);
      v11[9] = e_mod;
      v11[10] = HIBYTE(tv_sec);
      v11[11] = BYTE2(tv_sec);
      v11[12] = BYTE1(tv_sec);
      v11[13] = tv_sec;
      v11[14] = (tv_usec / 1000) >> 24;
      v11[15] = (tv_usec / 1000) >> 16;
      v11[16] = (tv_usec / 1000) >> 8;
      v11[17] = tv_usec / 1000;
    }

    else
    {
      free(v10);
      return 0;
    }
  }

  return v10;
}

token_t *__cdecl au_to_header32_ex_tm(int rec_size, au_event_t e_type, au_emod_t e_mod, timeval tm, auditinfo_addr *aia)
{
  at_type = aia->ai_termid.at_type;
  if (at_type != 16 && at_type != 4)
  {
    return 0;
  }

  tv_usec = tm.tv_usec;
  tv_sec = tm.tv_sec;
  v13 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v14 = v13;
  if (v13)
  {
    v13[1] = (aia->ai_termid.at_type + 22);
    v15 = malloc_type_malloc(aia->ai_termid.at_type + 22, 0x100004077774924uLL);
    *v14 = v15;
    if (!v15)
    {
      free(v14);
      return 0;
    }

    v16 = v15;
    bzero(v15, aia->ai_termid.at_type + 22);
    *v16 = 21;
    v16[1] = HIBYTE(rec_size);
    v16[2] = BYTE2(rec_size);
    v16[3] = BYTE1(rec_size);
    v16[4] = rec_size;
    v16[5] = 11;
    v16[6] = HIBYTE(e_type);
    v16[7] = e_type;
    v16[8] = HIBYTE(e_mod);
    v16[9] = e_mod;
    *(v16 + 10) = bswap32(aia->ai_termid.at_type);
    if (aia->ai_termid.at_type == 16)
    {
      v17 = 16;
    }

    else
    {
      v17 = 4;
    }

    if (aia->ai_termid.at_type == 16)
    {
      v18 = 30;
    }

    else
    {
      v18 = 18;
    }

    memcpy(v16 + 14, aia->ai_termid.at_addr, v17);
    v19 = &v16[v18];
    *v19 = HIBYTE(tv_sec);
    v19[1] = BYTE2(tv_sec);
    v19[2] = BYTE1(tv_sec);
    v19[3] = tv_sec;
    v19[4] = (tv_usec / 1000) >> 24;
    v19[5] = (tv_usec / 1000) >> 16;
    v19[6] = (tv_usec / 1000) >> 8;
    v19[7] = tv_usec / 1000;
  }

  return v14;
}

token_t *__cdecl au_to_header64_tm(int rec_size, au_event_t e_type, au_emod_t e_mod, timeval tm)
{
  tv_usec = tm.tv_usec;
  tv_sec = tm.tv_sec;
  v9 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v10 = v9;
  if (v9)
  {
    v9[1] = 26;
    v11 = malloc_type_malloc(0x1AuLL, 0x100004077774924uLL);
    *v10 = v11;
    if (v11)
    {
      *v11 = 116;
      v11[1] = HIBYTE(rec_size);
      v11[2] = BYTE2(rec_size);
      v11[3] = BYTE1(rec_size);
      v11[4] = rec_size;
      v11[5] = 11;
      v11[6] = HIBYTE(e_type);
      v11[7] = e_type;
      v11[8] = HIBYTE(e_mod);
      v11[9] = e_mod;
      v11[10] = HIBYTE(tv_sec);
      v11[11] = BYTE6(tv_sec);
      v11[12] = BYTE5(tv_sec);
      v11[13] = BYTE4(tv_sec);
      v11[14] = BYTE3(tv_sec);
      v11[15] = BYTE2(tv_sec);
      v11[16] = BYTE1(tv_sec);
      v11[17] = tv_sec;
      *(v11 + 18) = 0;
      v11[22] = (tv_usec / 1000) >> 24;
      v11[23] = (tv_usec / 1000) >> 16;
      v11[24] = (tv_usec / 1000) >> 8;
      v11[25] = tv_usec / 1000;
    }

    else
    {
      free(v10);
      return 0;
    }
  }

  return v10;
}

token_t *__cdecl au_to_header32_ex(int rec_size, au_event_t e_type, au_emod_t e_mod)
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  memset(&v7, 0, sizeof(v7));
  if (gettimeofday(&v8, 0) == -1)
  {
    return 0;
  }

  if (audit_get_kaudit(&v7, 0x30uLL))
  {
    if (*__error() == 78)
    {
      return au_to_header32_tm(rec_size, e_type, e_mod, v8);
    }

    return 0;
  }

  return au_to_header32_ex_tm(rec_size, e_type, e_mod, v8, &v7);
}

token_t *__cdecl au_to_header32(int rec_size, au_event_t e_type, au_emod_t e_mod)
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  if (gettimeofday(&v8, 0) == -1)
  {
    return 0;
  }

  v6 = v8;

  return au_to_header32_tm(rec_size, e_type, e_mod, v6);
}

token_t *__cdecl au_to_header64(int rec_size, au_event_t e_type, au_emod_t e_mod)
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  if (gettimeofday(&v8, 0) == -1)
  {
    return 0;
  }

  v6 = v8;

  return au_to_header64_tm(rec_size, e_type, e_mod, v6);
}

token_t *__cdecl au_to_trailer(int rec_size)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10B00406046BCCBuLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 7;
    v4 = malloc_type_malloc(7uLL, 0x100004077774924uLL);
    *v3 = v4;
    if (v4)
    {
      *v4 = -20205;
      v4[2] = 5;
      v4[3] = HIBYTE(rec_size);
      v4[4] = BYTE2(rec_size);
      v4[5] = BYTE1(rec_size);
      v4[6] = rec_size;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

void setauuser(void)
{
  pthread_mutex_lock(&mutex_4);
  if (fp_2)
  {
    fseek(fp_2, 0, 0);
  }

  pthread_mutex_unlock(&mutex_4);
}

void endauuser(void)
{
  pthread_mutex_lock(&mutex_4);
  if (fp_2)
  {
    fclose(fp_2);
    fp_2 = 0;
  }

  pthread_mutex_unlock(&mutex_4);
}

au_user_ent *__cdecl getauuserent_r(au_user_ent *u)
{
  pthread_mutex_lock(&mutex_4);
  v2 = getauuserent_r_locked(u);
  pthread_mutex_unlock(&mutex_4);
  return v2;
}

void *getauuserent_r_locked(uint64_t a1)
{
  if (fp_2 || (result = fopen("/etc/security/audit_user", "r"), (fp_2 = result) != 0))
  {
    while (1)
    {
      result = fgets(&linestr_2, 256, fp_2);
      if (!result)
      {
        break;
      }

      v3 = strrchr(&linestr_2, 10);
      if (v3)
      {
        *v3 = 0;
      }

      if (linestr_2 != 35)
      {
        __lasts = 0;
        v4 = strtok_r(&linestr_2, ":", &__lasts);
        v5 = strtok_r(0, ":", &__lasts);
        v6 = strtok_r(0, ":", &__lasts);
        result = 0;
        if (v4 && v5 && v6)
        {
          if (strlen(v4) > 0x31)
          {
            return 0;
          }

          strlcpy(*a1, v4, 0x32uLL);
          if (getauditflagsbin(v5, (a1 + 8)) == -1)
          {
            return 0;
          }

          else if (getauditflagsbin(v6, (a1 + 16)) == -1)
          {
            return 0;
          }

          else
          {
            return a1;
          }
        }

        return result;
      }
    }
  }

  return result;
}

au_user_ent *getauuserent(void)
{
  qword_2A13BABB0 = 0;
  unk_2A13BABB8 = 0;
  getauuserent_user_ent_name = 0u;
  unk_2A13BAB80 = 0u;
  xmmword_2A13BAB90 = 0u;
  word_2A13BABA0 = 0;
  getauuserent_u = &getauuserent_user_ent_name;
  pthread_mutex_lock(&mutex_4);
  v0 = getauuserent_r_locked(&getauuserent_u);
  pthread_mutex_unlock(&mutex_4);
  return v0;
}

au_user_ent *__cdecl getauusernam_r(au_user_ent *u, const char *name)
{
  if (!name)
  {
    return 0;
  }

  pthread_mutex_lock(&mutex_4);
  if (fp_2)
  {
    fseek(fp_2, 0, 0);
  }

  while (getauuserent_r_locked(u))
  {
    if (!strcmp(name, u->au_name))
    {
      goto LABEL_9;
    }
  }

  u = 0;
LABEL_9:
  pthread_mutex_unlock(&mutex_4);
  return u;
}

au_user_ent *__cdecl getauusernam(const char *name)
{
  qword_2A13BAC00 = 0;
  unk_2A13BAC08 = 0;
  getauusernam_user_ent_name = 0u;
  *algn_2A13BABD0 = 0u;
  xmmword_2A13BABE0 = 0u;
  word_2A13BABF0 = 0;
  getauusernam_u = &getauusernam_user_ent_name;
  return getauusernam_r(&getauusernam_u, name);
}

int au_user_mask(char *username, au_mask_t *mask_p)
{
  v11 = *MEMORY[0x29EDCA608];
  u.au_always = 0;
  u.au_never = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  u.au_name = v8;
  v3 = getauusernam_r(&u, username);
  if (v3)
  {
    v4 = getfauditflags(&v3->au_always, &v3->au_never, mask_p);
  }

  else
  {
    if (getacflg(auditstr, 256))
    {
      result = -1;
      goto LABEL_8;
    }

    v4 = getauditflagsbin(auditstr, mask_p);
  }

  if (v4 == -1)
  {
    result = -1;
  }

  else
  {
    result = 0;
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

int getfauditflags(au_mask_t *usremask, au_mask_t *usrdmask, au_mask_t *lastmask)
{
  v12 = *MEMORY[0x29EDCA608];
  result = -1;
  if (usremask && usrdmask && lastmask)
  {
    *lastmask = 0;
    if (getacflg(auditstr, 256) || !getauditflagsbin(auditstr, lastmask))
    {
      result = 0;
      am_failure = lastmask->am_failure;
      v8 = lastmask->am_success | usremask->am_success;
      lastmask->am_success = v8;
      v9 = am_failure | usremask->am_failure;
      lastmask->am_failure = v9;
      lastmask->am_success = v8 & ~usrdmask->am_success;
      lastmask->am_failure = v9 & ~usrdmask->am_failure;
    }

    else
    {
      result = -1;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

int audit_submit(__int16 au_event, au_id_t auid, char status, int reterr, const char *fmt, ...)
{
  va_start(va, fmt);
  v7 = status;
  v39 = *MEMORY[0x29EDCA608];
  cond = 0;
  v36 = 0;
  memset(&v35, 0, sizeof(v35));
  tid = 0;
  if (!audit_get_cond(&cond))
  {
    if (cond == 2)
    {
      goto LABEL_6;
    }

    v14 = au_open();
    if (v14 < 0)
    {
      v10 = *__error();
      v23 = __error();
      strerror(*v23);
      syslog(35, "audit: au_open failed: %s");
      goto LABEL_4;
    }

    v15 = v14;
    if (getaudit_addr(&v35, 48) < 0)
    {
      v10 = *__error();
      v24 = __error();
      strerror(*v24);
      syslog(35, "audit: getaudit_addr failed: %s");
      goto LABEL_4;
    }

    at_type = v35.ai_termid.at_type;
    v17 = getpid();
    if (at_type == 16)
    {
      v18 = geteuid();
      v19 = getegid();
      v20 = getuid();
      v21 = getgid();
      v22 = au_to_subject_ex(auid, v18, v19, v20, v21, v17, v17, (&v35 | 0xC));
    }

    else
    {
      tid.port = v35.ai_termid.at_port;
      tid.machine = v35.ai_termid.at_addr[0];
      v25 = geteuid();
      v26 = getegid();
      v27 = getuid();
      v28 = getgid();
      v22 = au_to_subject32(auid, v25, v26, v27, v28, v17, v17, &tid);
    }

    if (v22)
    {
      if (au_write(v15, v22) < 0)
      {
        goto LABEL_26;
      }

      if (fmt)
      {
        va_copy(v36, va);
        vsnprintf(__str, 0x100uLL, fmt, va);
        v29 = au_to_text(__str);
        if (!v29)
        {
          syslog(35, "audit: failed to generate text token");
          goto LABEL_25;
        }

        if (au_write(v15, v29) < 0)
        {
          goto LABEL_26;
        }
      }

      v30 = au_errno_to_bsm(v7);
      v31 = au_to_return32(v30, reterr);
      if (v31)
      {
        if ((au_write(v15, v31) & 0x80000000) == 0)
        {
          if (au_close(v15, 1, au_event) < 0)
          {
            v10 = *__error();
            syslog(35, "audit: record not committed");
            goto LABEL_4;
          }

LABEL_6:
          result = 0;
          goto LABEL_7;
        }

LABEL_26:
        v10 = *__error();
        v32 = __error();
        v33 = strerror(*v32);
        syslog(35, "audit: au_write failed: %s", v33);
        au_close(v15, 0, au_event);
        goto LABEL_4;
      }

      syslog(35, "audit: unable to build return token");
    }

    else
    {
      syslog(35, "audit: unable to build subject token");
    }

LABEL_25:
    au_close(v15, 0, au_event);
    v10 = 1;
    goto LABEL_4;
  }

  if (*__error() == 78)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  v11 = __error();
  strerror(*v11);
  syslog(35, "audit: auditon failed: %s");
LABEL_4:
  *__error() = v10;
  result = -1;
LABEL_7:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

int audit_get_cond(int *cond)
{
  v2 = auditon(37, cond, 4);
  if (v2 && *__error() == 22)
  {
    v4 = *cond;
    v2 = auditon(20, &v4, 8);
    *cond = v4;
  }

  return v2;
}

int audit_set_terminal_id(au_tid_t *tid)
{
  if (!tid)
  {
    return -66049;
  }

  result = audit_set_terminal_port(tid);
  if (!result)
  {

    return audit_set_terminal_host(&tid->machine);
  }

  return result;
}

uint64_t audit_set_terminal_port(dev_t *a1)
{
  memset(&v6, 0, sizeof(v6));
  *a1 = -1;
  if (!fstat(0, &v6))
  {
    goto LABEL_5;
  }

  if (*__error() != 9)
  {
    v2 = 4294901248;
    v4 = __error();
    strerror(*v4);
    syslog(3, "fstat() failed (%s)");
    return v2;
  }

  if (stat("/dev/console", &v6))
  {
    v2 = 4294901248;
    v3 = __error();
    strerror(*v3);
    syslog(3, "stat() failed (%s)");
  }

  else
  {
LABEL_5:
    v2 = 0;
    *a1 = v6.st_rdev;
  }

  return v2;
}

int audit_set_terminal_id_ex(au_tid_addr_t *tid)
{
  if (!tid)
  {
    return -66049;
  }

  result = audit_set_terminal_port(&tid->at_port);
  if (!result)
  {

    return audit_set_terminal_host(tid->at_addr);
  }

  return result;
}

int audit_write(__int16 event_code, token_t *subject, token_t *misctok, char retval, int errcode)
{
  v10 = -66046;
  v11 = au_open();
  if (v11 == -1)
  {
    au_free_token(subject);
    au_free_token(misctok);
    syslog(3, "%s: au_open() failed");
  }

  else
  {
    v12 = v11;
    if (subject && au_write(v11, subject) == -1)
    {
      au_free_token(subject);
      au_free_token(misctok);
      au_close(v12, 0, event_code);
      v10 = -66044;
      syslog(3, "%s: write of subject failed");
    }

    else if (misctok && au_write(v12, misctok) == -1)
    {
      au_free_token(misctok);
      au_close(v12, 0, event_code);
      v10 = -66043;
      syslog(3, "%s: write of caller token failed");
    }

    else
    {
      v13 = au_to_return32(retval, errcode);
      if (v13)
      {
        v14 = v13;
        if (au_write(v12, v13) == -1)
        {
          au_free_token(v14);
          au_close(v12, 0, event_code);
          v10 = -66041;
          syslog(3, "%s: write of return code failed");
        }

        else if (au_close(v12, 1, event_code) < 0)
        {
          v10 = -66040;
          syslog(3, "%s: au_close() failed");
        }

        else
        {
          return 0;
        }
      }

      else
      {
        au_close(v12, 0, event_code);
        v10 = -66042;
        syslog(3, "%s: au_to_return32() failed");
      }
    }
  }

  return v10;
}

int audit_write_success(__int16 event_code, token_t *misctok, au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_t *tid)
{
  v12 = au_to_subject32(auid, euid, egid, ruid, rgid, pid, sid, tid);
  if (v12)
  {

    return audit_write(event_code, v12, misctok, 0, 0);
  }

  else
  {
    syslog(3, "%s: au_to_subject32() failed", "audit_write_success()");
    return -66045;
  }
}

int audit_write_success_ex(__int16 event_code, token_t *misctok, au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
  v12 = au_to_subject32_ex(auid, euid, egid, ruid, rgid, pid, sid, tid);
  if (v12)
  {

    return audit_write(event_code, v12, misctok, 0, 0);
  }

  else
  {
    syslog(3, "%s: au_to_subject32_ex() failed", "audit_write_success_ex()");
    return -66045;
  }
}

int audit_write_success_self(__int16 event_code, token_t *misctok)
{
  v4 = au_to_me();
  if (v4)
  {

    return audit_write(event_code, v4, misctok, 0, 0);
  }

  else
  {
    syslog(3, "%s: au_to_me() failed", "audit_write_success_self()");
    return -66045;
  }
}

int audit_write_failure(__int16 event_code, char *errmsg, int errret, au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_t *tid)
{
  v14 = au_to_subject32(auid, euid, egid, ruid, rgid, pid, sid, tid);
  if (!v14)
  {
    v18 = -66045;
    syslog(3, "%s: au_to_subject32() failed", "audit_write_failure()");
    return v18;
  }

  v15 = v14;
  v16 = au_to_text(errmsg);
  if (!v16)
  {
    au_free_token(v15);
    syslog(3, "%s: au_to_text() failed", "audit_write_failure()");
    return -66039;
  }

  return audit_write(event_code, v15, v16, -1, errret);
}

int audit_write_failure_ex(__int16 event_code, char *errmsg, int errret, au_id_t auid, uid_t euid, gid_t egid, uid_t ruid, gid_t rgid, pid_t pid, au_asid_t sid, au_tid_addr_t *tid)
{
  v14 = au_to_subject32_ex(auid, euid, egid, ruid, rgid, pid, sid, tid);
  if (!v14)
  {
    v18 = -66045;
    syslog(3, "%s: au_to_subject32_ex() failed", "audit_write_failure_ex()");
    return v18;
  }

  v15 = v14;
  v16 = au_to_text(errmsg);
  if (!v16)
  {
    au_free_token(v15);
    syslog(3, "%s: au_to_text() failed", "audit_write_failure_ex()");
    return -66039;
  }

  return audit_write(event_code, v15, v16, -1, errret);
}

int audit_write_failure_self(__int16 event_code, char *errmsg, int errret)
{
  v6 = au_to_me();
  if (!v6)
  {
    v10 = -66045;
    syslog(3, "%s: au_to_me() failed", "audit_write_failure_self()");
    return v10;
  }

  v7 = v6;
  v8 = au_to_text(errmsg);
  if (!v8)
  {
    au_free_token(v7);
    syslog(3, "%s: au_to_text() failed", "audit_write_failure_self()");
    return -66039;
  }

  return audit_write(event_code, v7, v8, -1, errret);
}

int audit_set_cond(int *cond)
{
  v2 = auditon(38, cond, 4);
  if (v2 && *__error() == 22)
  {
    v4 = *cond;
    v2 = auditon(21, &v4, 8);
    *cond = v4;
  }

  return v2;
}

int audit_get_policy(int *policy)
{
  v2 = auditon(33, policy, 4);
  if (v2 && *__error() == 22)
  {
    v4 = *policy;
    v2 = auditon(2, &v4, 8);
    *policy = v4;
  }

  return v2;
}

int audit_set_policy(int *policy)
{
  v2 = auditon(34, policy, 4);
  if (v2 && *__error() == 22)
  {
    v4 = *policy;
    v2 = auditon(3, &v4, 8);
    *policy = v4;
  }

  return v2;
}

int audit_get_qctrl(au_qctrl_t *qctrl, size_t sz)
{
  if (sz == 20)
  {
    v3 = auditon(35, qctrl, 20);
    if (v3 && *__error() == 22)
    {
      v10 = 0;
      v4 = *&qctrl->aq_bufsz;
      v5.i64[0] = *&qctrl->aq_hiwater;
      v5.i64[1] = HIDWORD(*&qctrl->aq_hiwater);
      v6 = v5;
      v5.i64[0] = v4;
      v5.i64[1] = SHIDWORD(v4);
      v8 = v6;
      v9 = v5;
      LODWORD(v10) = qctrl->aq_minfree;
      v3 = auditon(6, &v8, 40);
      *&qctrl->aq_hiwater = vuzp1q_s32(v8, v9);
      qctrl->aq_minfree = v10;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v3;
}

int audit_set_qctrl(au_qctrl_t *qctrl, size_t sz)
{
  if (sz == 20)
  {
    v3 = auditon(36, qctrl, 20);
    if (v3 && *__error() == 22)
    {
      v10 = 0;
      v4 = *&qctrl->aq_bufsz;
      v5.i64[0] = *&qctrl->aq_hiwater;
      v5.i64[1] = HIDWORD(*&qctrl->aq_hiwater);
      v6 = v5;
      v5.i64[0] = v4;
      v5.i64[1] = SHIDWORD(v4);
      v8 = v6;
      v9 = v5;
      LODWORD(v10) = qctrl->aq_minfree;
      v3 = auditon(7, &v8, 40);
      *&qctrl->aq_hiwater = vuzp1q_s32(v8, v9);
      qctrl->aq_minfree = v10;
    }
  }

  else
  {
    *__error() = 22;
    return -1;
  }

  return v3;
}

int audit_get_kaudit(auditinfo_addr_t *aia, size_t sz)
{
  if (sz == 48)
  {

    return auditon(29, aia, 48);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_set_kaudit(auditinfo_addr_t *aia, size_t sz)
{
  if (sz == 48)
  {

    return auditon(30, aia, 48);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_class(au_evclass_map_t *evc_map, size_t sz)
{
  if (sz == 8)
  {

    return auditon(22, evc_map, 8);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_set_class(au_evclass_map_t *evc_map, size_t sz)
{
  if (sz == 8)
  {

    return auditon(23, evc_map, 8);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_kmask(au_mask_t *kmask, size_t sz)
{
  if (sz == 8)
  {

    return auditon(4, kmask, 8);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_set_kmask(au_mask_t *kmask, size_t sz)
{
  if (sz == 8)
  {

    return auditon(5, kmask, 8);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_fsize(au_fstat_t *fstat, size_t sz)
{
  if (sz == 16)
  {

    return auditon(27, fstat, 16);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_set_fsize(au_fstat_t *fstat, size_t sz)
{
  if (sz == 16)
  {

    return auditon(26, fstat, 16);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_set_pmask(auditpinfo_t *api, size_t sz)
{
  if (sz == 28)
  {

    return auditon(25, api, 28);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_pinfo(auditpinfo_t *api, size_t sz)
{
  if (sz == 28)
  {

    return auditon(24, api, 28);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_pinfo_addr(auditpinfo_addr_t *apia, size_t sz)
{
  if (sz == 56)
  {

    return auditon(28, apia, 56);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_sinfo_addr(auditinfo_addr_t *aia, size_t sz)
{
  if (sz == 48)
  {

    return auditon(32, aia, 48);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_stat(au_stat_t *stats, size_t sz)
{
  if (sz == 56)
  {

    return auditon(12, stats, 56);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_set_stat(au_stat_t *stats, size_t sz)
{
  if (sz == 56)
  {

    return auditon(12, stats, 56);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_ctlmode(au_ctlmode_t *mode, size_t sz)
{
  if (sz == 1)
  {

    return auditon(41, mode, 1);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

int audit_get_expire_after(au_expire_after_t *expire, size_t sz)
{
  if (sz == 24)
  {

    return auditon(43, expire, 24);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

au_sdev_handle_t *__cdecl au_sdev_open(int flags)
{
  v2 = malloc_type_malloc(0x18uLL, 0x103004013764637uLL);
  if (v2)
  {
    v3 = fopen("/dev/auditsessions", "r");
    v2->ash_fp = v3;
    if (!v3)
    {
LABEL_8:
      free(v2);
      return 0;
    }

    v2->ash_buf = 0;
    *&v2->ash_reclen = 0;
    if ((flags & 0x10000) != 0 && (v8 = 1, v4 = fileno(v3), ioctl(v4, 0x80045365uLL, &v8) < 0) || (flags & 1) != 0 && (v7 = 1, v5 = fileno(v2->ash_fp), ioctl(v5, 0x8004667EuLL, &v7) < 0))
    {
      fclose(v2->ash_fp);
      goto LABEL_8;
    }
  }

  return v2;
}

int au_sdev_close(au_sdev_handle_t *ash)
{
  v2 = fclose(ash->ash_fp);
  ash_buf = ash->ash_buf;
  if (ash_buf)
  {
    free(ash_buf);
  }

  free(ash);
  return v2;
}

int au_sdev_read_aia(au_sdev_handle_t *ash, int *event, auditinfo_addr_t *aia_p)
{
  *event = 0;
  *&aia_p->ai_termid.at_type = 0u;
  *&aia_p->ai_termid.at_addr[3] = 0u;
  *&aia_p->ai_auid = 0u;
  p_ash_buf = &ash->ash_buf;
  if (ash->ash_buf)
  {
    LODWORD(v8) = ash->ash_reclen;
    ash_bytesread = ash->ash_bytesread;
    goto LABEL_3;
  }

  ash_fp = ash->ash_fp;
  do
  {
    v15 = fgetc(ash_fp);
    if (ferror(ash_fp))
    {
      goto LABEL_35;
    }
  }

  while (v15 - 20 >= 2 && v15 != 121 && v15 != 116);
  *&v20.id = 0;
  if (fread(&v20, 1uLL, 4uLL, ash_fp) <= 3)
  {
LABEL_34:
    if (ferror(ash_fp))
    {
LABEL_35:
      clearerr(ash_fp);
LABEL_38:
      result = -1;
      ash->ash_reclen = -1;
      return result;
    }

LABEL_37:
    *__error() = 22;
    goto LABEL_38;
  }

  v8 = bswap32(*&v20.id);
  if (v8 <= 4)
  {
    goto LABEL_37;
  }

  v16 = malloc_type_malloc(v8, 0x100004077774924uLL);
  *p_ash_buf = v16;
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = v16;
  bzero(v16, v8);
  *v17 = v15;
  v17[1] = BYTE3(v8);
  v17[2] = BYTE2(v8);
  v17[3] = BYTE1(v8);
  v17[4] = v8;
  if (fread(v17 + 5, 1uLL, (v8 - 5), ash_fp) < (v8 - 5))
  {
    free(*p_ash_buf);
    goto LABEL_34;
  }

  ash->ash_reclen = v8;
  if ((v8 & 0x80000000) != 0)
  {
    return -1;
  }

  ash_bytesread = 0;
  ash->ash_bytesread = 0;
LABEL_3:
  while (ash_bytesread < v8)
  {
    v9 = &(*p_ash_buf)[ash_bytesread];
    memset(&v20, 0, 512);
    if (au_fetch_tok(&v20, v9, v8 - ash_bytesread))
    {
      return -1;
    }

    if (v20.id <= 0x2Cu)
    {
      switch(v20.id)
      {
        case 0x14u:
          *event = v20.tt.hdr32.e_type;
          break;
        case 0x24u:
          dev = v20.tt.attr32.dev;
          aia_p->ai_auid = v20.tt.attr32.mode;
          aia_p->ai_asid = dev;
          aia_p->ai_termid.at_port = v20.tt.grps.list[6];
          aia_p->ai_termid.at_type = 4;
          v11 = *(&v20.tt.sockinet_ex32 + 2);
          goto LABEL_13;
        case 0x13u:
          ash_reclen = ash->ash_reclen;
          v19 = ash->ash_bytesread + LODWORD(v20.len);
          ash->ash_bytesread = v19;
          if (ash_reclen != v19)
          {
            return 0;
          }

          free(*p_ash_buf);
          result = 0;
          *p_ash_buf = 0;
          p_ash_buf[1] = 0;
          return result;
      }
    }

    else
    {
      switch(v20.id)
      {
        case '-':
          if (v20.tt.arg32.no == 3)
          {
            if (!strncmp("am_failure", v20.tt.arg32.text, 0xAuLL))
            {
              aia_p->ai_mask.am_failure = v20.tt.arg32.val;
            }
          }

          else if (v20.tt.arg32.no == 2 && !strncmp("am_success", v20.tt.arg32.text, 0xAuLL))
          {
            aia_p->ai_mask.am_success = v20.tt.arg32.val;
          }

          break;
        case 'q':
          if (v20.tt.arg32.no == 1 && !strncmp("sflags", v20.tt.arg64.text, 6uLL))
          {
            aia_p->ai_flags = v20.tt.arg64.val;
          }

          break;
        case 'z':
          v10 = v20.tt.attr32.dev;
          aia_p->ai_auid = v20.tt.attr32.mode;
          aia_p->ai_asid = v10;
          *&aia_p->ai_termid.at_port = *(&v20.tt.execarg.text[2] + 4);
          v11 = *(&v20.tt.subj64.tid + 4);
LABEL_13:
          *aia_p->ai_termid.at_addr = v11;
          break;
      }
    }

    LODWORD(v8) = ash->ash_reclen;
    ash_bytesread = ash->ash_bytesread + LODWORD(v20.len);
    ash->ash_bytesread = ash_bytesread;
  }

  return -2;
}

u_char au_errno_to_bsm(int local_errno)
{
  v1 = &dword_29EE9D5EC;
  v2 = 151;
  while (*v1 != local_errno)
  {
    v1 += 4;
    if (!--v2)
    {
      LOBYTE(v3) = -6;
      return v3;
    }
  }

  return *(v1 - 1);
}

int au_bsm_to_errno(u_char bsm_error, int *errorp)
{
  v2 = 151;
  for (i = &dword_29EE9D5EC; *(i - 1) != bsm_error; i += 4)
  {
    if (!--v2)
    {
      return -1;
    }
  }

  v4 = *i;
  if (v4 == -600)
  {
    return -1;
  }

  result = 0;
  *errorp = v4;
  return result;
}

const char *__cdecl au_strerror(u_char bsm_error)
{
  v1 = bsm_error;
  v2 = &off_29EE9D5F0;
  v3 = 151;
  result = "Unrecognized BSM error";
  while (*(v2 - 2) != v1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  v5 = *(v2 - 1);
  if (v5 == -600)
  {
    return *v2;
  }

  else
  {
    return strerror(v5);
  }
}

u_short au_fcntl_cmd_to_bsm(int local_fcntl_command)
{
  v1 = &dword_29857E624;
  v2 = 40;
  while (*v1 != local_fcntl_command)
  {
    v1 += 2;
    if (!--v2)
    {
      return -1;
    }
  }

  return *(v1 - 2);
}

int au_bsm_to_fcntl_cmd(u_short bsm_fcntl_cmd, int *local_fcntl_cmdp)
{
  v2 = 40;
  for (i = &dword_29857E624; *(i - 2) != bsm_fcntl_cmd; i += 2)
  {
    if (!--v2)
    {
      return -1;
    }
  }

  if (*i)
  {
    return -1;
  }

  result = 0;
  *local_fcntl_cmdp = 0;
  return result;
}