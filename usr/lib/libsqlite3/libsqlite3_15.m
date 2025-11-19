uint64_t sub_18192EE6C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(*a1 + 16))(a1, v4, 20, 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (v4[0] != 0x66206574694C5153 || *(v4 + 7) != 0x332074616D726F66)
  {
    return 0xFFFFFFFFLL;
  }

  return v5 == 2 && v6 == 2;
}

uint64_t sub_18192EF28(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  bzero(&v22, 0x878uLL);
  memset(&v21, 0, sizeof(v21));
  if (fstat(a1, &v21))
  {
    st_size = 0;
  }

  else
  {
    st_size = v21.st_size;
  }

  v5 = fstatfs(a1, &v22);
  p_f_iosize = &v22.f_iosize;
  if (v5 == -1)
  {
    p_f_iosize = &v21.st_blksize;
  }

  LODWORD(p_f_iosize) = *p_f_iosize;
  if (p_f_iosize >= 0x200000)
  {
    LODWORD(p_f_iosize) = 0x200000;
  }

  if (p_f_iosize <= 0x8000)
  {
    p_f_iosize = 0x8000;
  }

  else
  {
    p_f_iosize = p_f_iosize;
  }

  if (st_size >= p_f_iosize)
  {
    v7 = p_f_iosize;
  }

  else
  {
    v7 = st_size;
  }

  if (st_size)
  {
    v8 = v7;
  }

  else
  {
    v8 = p_f_iosize;
  }

  v9 = malloc_type_malloc(v8, 0xE443F6DBuLL);
  if (v9)
  {
    v10 = v9;
    v11 = off_1EE341B88(a1, v9, v8);
    v12 = v11;
    if (v11 < 1)
    {
      v14 = 0;
      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_34:
        if ((ftruncate(a2, v14) & 0x80000000) == 0)
        {
          v19 = 0;
LABEL_38:
          free(v10);
          return v19;
        }
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = v10;
      while (1)
      {
        if (v12 >= v8)
        {
          v16 = v8;
        }

        else
        {
          v16 = v12;
        }

        v17 = off_1EE341BD0(a2, v15, v16);
        if (v17)
        {
          if (v17 == -1)
          {
            goto LABEL_36;
          }

          v13 = 0;
          v12 -= v17;
          v15 += v17;
        }

        else
        {
          if (v13 > 4)
          {
            v19 = 35;
            *__error() = 35;
            goto LABEL_38;
          }

          ++v13;
        }

        v14 += v17;
        if (!v12)
        {
          v18 = off_1EE341B88(a1, v10, v8);
          v12 = v18;
          v13 = 0;
          v15 = v10;
          if (v18 < 1)
          {
            break;
          }
        }
      }

      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v19 = *__error();
    goto LABEL_38;
  }

  return 0xFFFFFFFFLL;
}

void sub_18192F13C(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = __strlcpy_chk();
  if (v4 > 1023)
  {
    return;
  }

  *v30 = *"-wal";
  v5 = a2 != 0;
  v6 = &v31[v4];
  *&v30[11] = unk_181A20CFD;
  v7 = v5 || 8 * v5;
  while (v7 != 18)
  {
LABEL_12:
    if (strlcpy(v6, &v30[v7], 9uLL) <= 8)
    {
      if (v7 == 18)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1024;
      }

      v10 = sub_18192ACE0(v31, v9, 0, 0);
      if (v10 == -1)
      {
        if (*__error() != 2)
        {
          perror(v31);
        }
      }

      else
      {
        v11 = v10;
        if (v7 == 18)
        {
          v29 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          if (!off_1EE341B40(v10, &v21))
          {
            if (v27)
            {
              if (v27 >= 4)
              {
                v12 = 4;
              }

              else
              {
                v12 = v27;
              }

              __buf = 0;
              pwrite(v11, &__buf, v12, 0);
            }
          }
        }

        fsync(v11);
        off_1EE341AE0(v11);
      }
    }

    v7 += 9;
    if (v7 == 27)
    {
      return;
    }
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v8 = *(*(a1 + 16) + 56);
  if (!v8 || *(v8 + 34) || (v13 = *(v8 + 40)) == 0 || !*v13)
  {
LABEL_10:
    if (qword_1ED456B10)
    {
      xmmword_1ED452F28(qword_1ED456B10);
    }

    goto LABEL_12;
  }

  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = *(v8 + 8);
  if (v14)
  {
    xmmword_1ED452F18(v14);
  }

  v15 = *(v8 + 24);
  if ((v15 & 0x80000000) != 0 || (!off_1EE341B40(v15, &v21) ? (v16 = v27 == 0) : (v16 = 1), v16))
  {
    v17 = *(v8 + 8);
    if (v17)
    {
      xmmword_1ED452F28(v17);
    }

    goto LABEL_10;
  }

  if (!*(v8 + 168))
  {
    if (v27 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v27;
    }

    bzero(**(v8 + 40), v18);
  }

  v19 = *(v8 + 8);
  if (v19)
  {
    xmmword_1ED452F28(v19);
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }
}

unsigned __int8 *sub_18192F410(unsigned __int8 *result, int a2)
{
  v3 = result[28];
  if (v3 > a2)
  {
    v4 = result;
    (*(*result + 64))(result, 1);
    result = v4;
    v3 = v4[28];
  }

  if (v3 > a2)
  {
    v5 = *(*result + 64);

    return v5();
  }

  return result;
}

uint64_t sub_18192F488(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  ++*(a1 + 16);
  return v1(v2);
}

uint64_t sub_18192F4B0(char *a1, unsigned int a2, _DWORD *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = strlen(a1);
    v7 = v6 >= 5 && strncmp("-shm", &a1[(v6 & 0x7FFFFFFF) - 4], 4uLL) == 0;
    v8 = strlen(a1) & 0x3FFFFFFF;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  do
  {
    if (v8 < 2 || (v9 = a1[v8 - 1], v9 == 46))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    --v8;
  }

  while (v9 != 45);
  __memcpy_chk();
  __strerrbuf[v8] = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  if (off_1EE341B28(__strerrbuf, &v24))
  {
    return 1802;
  }

  v13 = WORD2(v24) & 0x1FF;
  v12 = v25;
  v11 = DWORD1(v25);
LABEL_13:
  v14 = dword_181A27B00;
  if (!v7)
  {
    v14 = dword_181A27AE0;
  }

  v15 = sub_18192ACE0(a1, 514, v13, v14[(a2 >> 20) & 7]);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = v15;
    if (!geteuid())
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *__strerrbuf = 0u;
      v17 = off_1EE341B40(v16, __strerrbuf);
      v18 = !v17 && v34 == v12;
      if (!v18 || DWORD1(v34) != v11)
      {
        v20 = v17;
        if (!off_1EE341CC0() && off_1EE341CA8(v16, v12, v11))
        {
          v10 = sub_18192ACCC(42761);
          goto LABEL_28;
        }

        if (v20)
        {
          v10 = 1802;
LABEL_28:
          *a3 = -1;
          off_1EE341AE0(v16);
          return v10;
        }
      }
    }

    v10 = sub_18192F8BC(v16, a2, v7);
    if (!v10)
    {
      *a3 = v16;
      return v10;
    }

    goto LABEL_28;
  }

  if (*__error() == 1)
  {
    v21 = *__error();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v21, __strerrbuf, 0x4FuLL);
    v10 = 23;
    sqlite3_log(23, "os_unix.c:%d: (%d) %s(%s) - %s");
  }

  else
  {
    v10 = sub_18192ACCC(46482);
    v22 = *__error();
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v22, __strerrbuf, 0x4FuLL);
    sqlite3_log(v10, "os_unix.c:%d: (%d) %s(%s) - %s");
  }

  return v10;
}

uint64_t sub_18192F808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = geteuid();
  if (!result)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    result = off_1EE341B40(a1, &v9);
    if (result)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10 == a2;
    }

    if (!v7 || DWORD1(v10) != a3)
    {
      result = off_1EE341CC0();
      if (!result)
      {
        result = off_1EE341CA8(a1, a2, a3);
        if (result)
        {
          return sub_18192ACCC(42761);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18192F8BC(int a1, unsigned int a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 >> 20) & 7;
  if (a3)
  {
    if (((1 << ((a2 >> 20) & 7)) & 0x8A) != 0)
    {
      v4 = 0;
      v3 = 3;
    }

    else if (((1 << ((a2 >> 20) & 7)) & 5) != 0)
    {
      v4 = 0;
    }

    else
    {
      v3 = 4;
      v4 = 1;
    }
  }

  else
  {
    if (v3 == 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    v7 = ((a2 >> 20) & 7) <= 5 && v3 == 4;
    if (((a2 >> 20) & 7) <= 5)
    {
      v8 = v6;
    }

    else
    {
      v8 = (a2 >> 20) & 7;
    }

    if (v3)
    {
      v9 = (a2 >> 20) & 7;
    }

    else
    {
      v9 = 0;
    }

    if (((a2 >> 20) & 7) <= 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = (a2 >> 20) & 7;
    }

    v4 = ((a2 >> 20) & 7) > 3 && v7;
    if (((a2 >> 20) & 7) <= 3)
    {
      v3 = v10;
    }

    else
    {
      v3 = v8;
    }
  }

  v12 = fcntl(a1, 63);
  result = 0;
  if (v12 < 1)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  if (v3 != v12 && (v13 & 1) == 0)
  {
    result = fcntl(a1, 64, v3);
    if (result)
    {
      if (*__error() == 1)
      {
        return 23;
      }

      else
      {
        return 10;
      }
    }
  }

  return result;
}

uint64_t sub_18192F9EC(int a1, uint64_t a2, __int16 a3, unsigned int a4, unsigned int a5)
{
  v12 = 0;
  WORD2(v12) = a3;
  v11[0] = a4;
  v11[1] = a5;
  if (a1 == -1)
  {
    v8 = off_1EE341B70;
  }

  else
  {
    LODWORD(v12) = a1;
    v7 = off_1EE341B70(a2, 94);
    if (v7 == -1)
    {
      if ((*__error() == 45 || *__error() == 25) && (off_1EE341B70(a2, 66) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    sqlite3_log(28, "F_GETLKPID undefined or not supported, _sqlite3_lockstate falling back to F_GETLK", v11);
    LODWORD(v12) = 0;
    v8 = off_1EE341B70;
  }

  if (v8(a2, 92) == -1 && (*__error() != 45 && *__error() != 25 || off_1EE341B70(a2, 7) == -1))
  {
    v10 = __error();
    sqlite3_log(28, "fcntl(%d) failed: errno=%d\n", a2, *v10);
    return 0xFFFFFFFFLL;
  }

LABEL_14:
  if (WORD2(v12) == 2)
  {
    return 0;
  }

  result = 1;
  if (a1 != -1 && v12 != a1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18192FB78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = off_1EE341B70(v2, 92);
  if (v3 == -1)
  {
    if ((*__error() == 45 || *__error() == 25) && !off_1EE341B70(v2, 7))
    {
      return 5;
    }

    return 3850;
  }

  if (v3)
  {
    return 3850;
  }

  return 5;
}

uint64_t sub_18192FD04(uint64_t result)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(*(result + 16) + 56);
  if (!v1 || *(v1 + 48))
  {
    return result;
  }

  v2 = result;
  v3 = off_1EE341D20();
  if (v3 < 0x8000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 >> 15;
  }

  if (*(v1 + 8))
  {
    off_1ED452F10();
  }

  if (*(v1 + 64))
  {
    off_1ED452F10();
  }

  if (*(v1 + 72))
  {
    off_1ED452F10();
  }

  if (*(v1 + 80))
  {
    off_1ED452F10();
  }

  if (*(v1 + 88))
  {
    off_1ED452F10();
  }

  if (*(v1 + 96))
  {
    off_1ED452F10();
  }

  if (*(v1 + 104))
  {
    off_1ED452F10();
  }

  if (*(v1 + 112))
  {
    off_1ED452F10();
  }

  if (*(v1 + 120))
  {
    off_1ED452F10();
  }

  if (*(v1 + 32))
  {
    v5 = 0;
    do
    {
      if ((*(v1 + 24) & 0x80000000) != 0)
      {
        v6 = *(*(v1 + 40) + 8 * v5);
        if (v6)
        {
          v7 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v6);
            --qword_1ED456A90;
            off_1ED452EB0(v6);
            v6 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_27;
            }

            v7 = &xmmword_1ED452F28;
          }

          (*v7)(v6);
        }
      }

      else
      {
        off_1EE341CF0(*(*(v1 + 40) + 8 * v5), *(v1 + 28));
      }

LABEL_27:
      v5 += v4;
    }

    while (v5 < *(v1 + 32));
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    v9 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v8);
      --qword_1ED456A90;
      off_1ED452EB0(v8);
      v8 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_43;
      }

      v9 = &xmmword_1ED452F28;
    }

    (*v9)(v8);
  }

LABEL_43:
  if ((*(v1 + 24) & 0x80000000) == 0)
  {
    v10 = *(v1 + 160);
    if (v10)
    {
      *(v1 + 160) = 0;
      if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
      {
        dispatch_source_cancel_and_wait();
        dispatch_release(v10);
      }
    }

    v11 = *(v1 + 24);
    if ((v11 & 0x80000000) == 0 && off_1EE341AE0(v11))
    {
      if (v2)
      {
        v12 = *(v2 + 56);
      }

      else
      {
        v12 = 0;
      }

      v13 = *__error();
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v13, __strerrbuf, 0x4FuLL);
      v14 = &byte_181A2878D;
      if (v12)
      {
        v14 = v12;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 48050, v13, "close", v14, __strerrbuf);
    }

    *(v1 + 24) = -1;
  }

  *(*v1 + 56) = 0;
  v15 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v15)(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v15 = &xmmword_1ED452F28;
    return (*v15)(v1);
  }

  return result;
}

uint64_t sub_1819300A8(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) + 56) + 24);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*(a1 + 132))
  {
    if (off_1EE341B70(v1, 93) != -1)
    {
      return 0;
    }

    if (*__error() != 45 && *__error() != 25)
    {
      goto LABEL_14;
    }

    v3 = off_1EE341B70(v1, 10);
    goto LABEL_12;
  }

  if (off_1EE341B70(v1, 90) != -1)
  {
    return 0;
  }

  if (*__error() == 45 || *__error() == 25)
  {
    v3 = off_1EE341B70(v1, 8);
LABEL_12:
    if (v3 != -1)
    {
      return 0;
    }
  }

LABEL_14:
  if (*(a1 + 132))
  {
    return 773;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_181930230(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  sub_181930A7C(a1, 0);
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v2);
    }
  }

  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    if (*(v3 + 28))
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 48);
      *(v6 + 8) = *(v5 + 40);
      *(v5 + 40) = v6;
      *(a1 + 24) = -1;
      *(a1 + 48) = 0;
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      xmmword_1ED452F28(v7);
    }
  }

  sub_18192A87C(a1);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_19:
      (*v9)(v8);
      goto LABEL_20;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v9 = &xmmword_1ED452F28;
      goto LABEL_19;
    }
  }

LABEL_20:
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v10);
    }
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    off_1EE341CF0(v11, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v12 = *(a1 + 24);
  if ((v12 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v12))
    {
      v13 = *(a1 + 56);
      v14 = *__error();
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v14, __strerrbuf, 0x4FuLL);
      v15 = &byte_181A2878D;
      if (v13)
      {
        v15 = v13;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v14, "close", v15, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_37:
      (*v17)(v16);
      goto LABEL_38;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
    --qword_1ED456A90;
    off_1ED452EB0(v16);
    v16 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v17 = &xmmword_1ED452F28;
      goto LABEL_37;
    }
  }

LABEL_38:
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }

  return 0;
}

uint64_t sub_18193053C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 28);
  if (v4 >= a2)
  {
    return 0;
  }

  v35 = v2;
  v36 = v3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 16);
  v9 = v8[2];
  if (v9)
  {
    xmmword_1ED452F18(*&v9);
    v4 = *(a1 + 28);
  }

  v10 = v8[4].u8[0];
  if (v4 != v10)
  {
    result = 5;
    if (a2 > 1 || v10 > 2)
    {
      goto LABEL_74;
    }

LABEL_11:
    v12 = 1;
    if (v10 - 1 <= 1)
    {
      result = 0;
      *(a1 + 28) = 1;
      v8[3] = vadd_s32(v8[3], 0x100000001);
      goto LABEL_74;
    }

    goto LABEL_15;
  }

  if (a2 != 4)
  {
    if (a2 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

  if (v4 > 2)
  {
    goto LABEL_31;
  }

  v12 = 0;
LABEL_15:
  v13 = *(v7 + 8);
  v33 = 0;
  v34 = 0;
  v31 = dword_1EA8315A8;
  v32 = 1;
  HIDWORD(v34) = *(a1 + 24);
  if (fsctl(v13, 0xC0207A17uLL, &v31, 0) != -1)
  {
    if (v12)
    {
      v14 = (random() & 0x7FFFFFFFFFFFFFFFuLL) % 0x1FD;
      v8[10] = v14;
      v15 = *(v7 + 8);
      v33 = 0;
      v34 = 0;
      v31 = dword_1EA8315A8 + v14 + 2;
      v32 = 1;
      HIDWORD(v34) = *(a1 + 24);
      v16 = fsctl(v15, 0xC0207A17uLL, &v31, 0);
      v17 = 0;
      if (v16 == -1)
      {
        v18 = *__error();
        v17 = 5;
        if (v18 > 0x3C)
        {
          goto LABEL_79;
        }

        if (((1 << v18) & 0x1000000800012010) != 0)
        {
          goto LABEL_20;
        }

        if (v18 == 1)
        {
          v17 = 3;
        }

        else
        {
LABEL_79:
          if (v18 == 77)
          {
            goto LABEL_20;
          }

          v17 = 3850;
        }

        *(a1 + 32) = v18;
LABEL_21:
        v19 = *(v7 + 8);
        v33 = 0;
        v34 = 1;
        v31 = dword_1EA8315A8;
        v32 = 1;
        HIDWORD(v34) = *(a1 + 24);
        v20 = fsctl(v19, 0xC0207A17uLL, &v31, 0);
        result = 0;
        if (v20 == -1)
        {
          v21 = *__error();
          result = 5;
          if (v21 <= 0x3C)
          {
            if (((1 << v21) & 0x1000000800012010) != 0)
            {
              goto LABEL_62;
            }

            if (v21 == 1)
            {
              result = 3;
LABEL_61:
              *(a1 + 32) = v21;
              goto LABEL_62;
            }
          }

          if (v21 != 77)
          {
            result = 2058;
            goto LABEL_61;
          }
        }

LABEL_62:
        if (v17 && v17 != 5)
        {
          *(a1 + 32) = v18;
LABEL_73:
          result = v17;
          goto LABEL_74;
        }

        if (result != 5 && result)
        {
          goto LABEL_74;
        }

        if (v16 == -1)
        {
          if (v17)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v29 = v8[3].i32[1] + 1;
          v8[3].i32[0] = 1;
          v8[3].i32[1] = v29;
        }

        goto LABEL_68;
      }

LABEL_20:
      LODWORD(v18) = 0;
      goto LABEL_21;
    }

    if (a2 != 4)
    {
LABEL_33:
      v23 = 0;
      goto LABEL_35;
    }

LABEL_31:
    if (v8[3].i32[0] > 1)
    {
      v17 = 5;
LABEL_72:
      *(a1 + 28) = 3;
      v8[4].i8[0] = 3;
      goto LABEL_73;
    }

    v23 = 1;
LABEL_35:
    if (*(a1 + 28) <= 1u)
    {
      v24 = *(v7 + 8);
      v33 = 0;
      v34 = 0;
      v31 = dword_1EA8315A8 + 1;
      v32 = 1;
      HIDWORD(v34) = *(a1 + 24);
      if (fsctl(v24, 0xC0207A17uLL, &v31, 0) == -1)
      {
        v28 = *__error();
        v17 = 5;
        if (v28 > 0x3C)
        {
          goto LABEL_48;
        }

        if (((1 << v28) & 0x1000000800012010) != 0)
        {
          goto LABEL_71;
        }

        if (v28 != 1)
        {
LABEL_48:
          if (v28 == 77)
          {
            goto LABEL_71;
          }

          v17 = 3850;
          goto LABEL_58;
        }

LABEL_53:
        v17 = 3;
LABEL_58:
        *(a1 + 32) = v28;
        goto LABEL_71;
      }

      *v7 = 1;
    }

    if (!v23)
    {
      goto LABEL_68;
    }

    v25 = *(v7 + 8);
    v26 = dword_1EA8315A8 + *&v8[10] + 2;
    v33 = 0;
    v34 = 1;
    v31 = v26;
    v32 = 1;
    HIDWORD(v34) = *(a1 + 24);
    if (fsctl(v25, 0xC0207A17uLL, &v31, 0) != -1)
    {
      v27 = sub_18193129C(*(v7 + 8), a1, dword_1EA8315A8 + 2, 510, 1);
      if (v27)
      {
        v17 = v27;
        LODWORD(result) = sub_18193129C(*(v7 + 8), a1, dword_1EA8315A8 + *&v8[10] + 2, 1, 1);
        if (result)
        {
          if (v17 == 10)
          {
            result = result;
          }

          else
          {
            result = 3850;
          }

          goto LABEL_74;
        }

LABEL_71:
        result = v17;
        if (a2 != 4)
        {
          goto LABEL_74;
        }

        goto LABEL_72;
      }

LABEL_68:
      result = 0;
      *(a1 + 28) = a2;
      v8[4].i8[0] = a2;
      goto LABEL_74;
    }

    v28 = *__error();
    v17 = 5;
    if (v28 > 0x3C)
    {
      goto LABEL_56;
    }

    if (((1 << v28) & 0x1000000800012010) != 0)
    {
      goto LABEL_71;
    }

    if (v28 != 1)
    {
LABEL_56:
      if (v28 == 77)
      {
        goto LABEL_71;
      }

      v17 = 2058;
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  v22 = *__error();
  result = 5;
  if (v22 > 0x3C)
  {
    goto LABEL_54;
  }

  if (((1 << v22) & 0x1000000800012010) != 0)
  {
    goto LABEL_74;
  }

  if (v22 != 1)
  {
LABEL_54:
    if (v22 != 77)
    {
      result = 3850;
      *(a1 + 32) = v22;
    }

    goto LABEL_74;
  }

  result = 3;
  *(a1 + 32) = 1;
LABEL_74:
  if (v8[2])
  {
    v30 = result;
    xmmword_1ED452F28(*&v8[2]);
    return v30;
  }

  return result;
}

uint64_t sub_181930A7C(uint64_t a1, signed int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 28);
  if (v2 <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    xmmword_1ED452F18(v7);
    v2 = *(a1 + 28);
  }

  if (v2 < 2)
  {
    v11 = 0;
    result = 0;
    if (a2)
    {
      goto LABEL_76;
    }

LABEL_55:
    v18 = dword_1EA8315A8;
    v19 = *(v6 + 80);
    v20 = *(v6 + 24) - 1;
    *(v6 + 24) = v20;
    if (!v20)
    {
      if (!v11)
      {
        v21 = *(v5 + 8);
        *&v35 = 0;
        *(&v35 + 1) = 1;
        *__strerrbuf = v18 + v19 + 2;
        *&__strerrbuf[8] = 1;
        HIDWORD(v35) = *(a1 + 24);
        if (fsctl(v21, 0xC0207A17uLL, __strerrbuf, 0) == -1)
        {
          v31 = *__error();
          result = 5;
          if (v31 <= 0x3C)
          {
            if (((1 << v31) & 0x1000000800012010) != 0)
            {
              goto LABEL_76;
            }

            if (v31 == 1)
            {
              result = 3;
              *(a1 + 32) = 1;
              goto LABEL_76;
            }
          }

          if (v31 != 77)
          {
            result = 2058;
            *(a1 + 32) = v31;
          }

          goto LABEL_76;
        }
      }

      *(v6 + 32) = 0;
      *(a1 + 28) = 0;
    }

    v22 = *(v6 + 28) - 1;
    *(v6 + 28) = v22;
    if (v22)
    {
      result = 0;
      goto LABEL_76;
    }

    v32 = *(a1 + 16);
    v33 = v6;
    v23 = *(v32 + 40);
    if (!v23)
    {
LABEL_75:
      result = 0;
      v6 = v33;
      *(v32 + 40) = 0;
      goto LABEL_76;
    }

    while (1)
    {
      v24 = *(v23 + 1);
      v25 = *v23;
      if ((v25 & 0x80000000) == 0 && off_1EE341AE0(v25))
      {
        v26 = *(a1 + 56);
        v27 = *__error();
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v27, __strerrbuf, 0x4FuLL);
        v28 = &byte_181A2878D;
        if (v26)
        {
          v28 = v26;
        }

        sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 43417, v27, "close", v28, __strerrbuf);
      }

      v29 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
        --qword_1ED456A90;
        off_1ED452EB0(v23);
        v23 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_64;
        }

        v29 = &xmmword_1ED452F28;
      }

      (*v29)(v23);
LABEL_64:
      v23 = v24;
      if (!v24)
      {
        goto LABEL_75;
      }
    }
  }

  if (v2 != 4)
  {
    v11 = 0;
    if (v2 < 3)
    {
      goto LABEL_32;
    }

    goto LABEL_15;
  }

  v8 = *(v5 + 8);
  *&v35 = 0;
  *(&v35 + 1) = 1;
  *__strerrbuf = dword_1EA8315A8 + 2;
  *&__strerrbuf[8] = 510;
  HIDWORD(v35) = *(a1 + 24);
  if (fsctl(v8, 0xC0207A17uLL, __strerrbuf, 0) == -1)
  {
    v14 = *__error();
    result = 5;
    if (v14 <= 0x3C)
    {
      if (((1 << v14) & 0x1000000800012010) != 0)
      {
        goto LABEL_53;
      }

      if (v14 == 1)
      {
        result = 3;
LABEL_52:
        *(a1 + 32) = v14;
        goto LABEL_53;
      }
    }

    if (v14 != 77)
    {
      result = 2058;
      goto LABEL_52;
    }

LABEL_53:
    v11 = 1;
    goto LABEL_54;
  }

  if (a2 == 1 || *(v6 + 24) >= 2)
  {
    v9 = *(v5 + 8);
    v10 = dword_1EA8315A8 + *(v6 + 80) + 2;
    v35 = 0uLL;
    *__strerrbuf = v10;
    *&__strerrbuf[8] = 1;
    HIDWORD(v35) = *(a1 + 24);
    if (fsctl(v9, 0xC0207A17uLL, __strerrbuf, 0) != -1)
    {
      v11 = 0;
      goto LABEL_31;
    }

    v16 = *__error();
    result = 5;
    if (v16 > 0x3C)
    {
      goto LABEL_85;
    }

    if (((1 << v16) & 0x1000000800012010) != 0)
    {
      goto LABEL_88;
    }

    if (v16 == 1)
    {
      result = 3;
    }

    else
    {
LABEL_85:
      if (v16 == 77)
      {
        goto LABEL_88;
      }

      result = 3850;
    }

    *(a1 + 32) = v16;
LABEL_88:
    v11 = 0;
    if (result | a2)
    {
      goto LABEL_76;
    }

    goto LABEL_55;
  }

  v11 = 1;
LABEL_31:
  v2 = *(a1 + 28);
  if (v2 < 3)
  {
LABEL_32:
    if (v2 < 2)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_15:
  v13 = *(v5 + 8);
  *&v35 = 0;
  *(&v35 + 1) = 1;
  *__strerrbuf = dword_1EA8315A8;
  *&__strerrbuf[8] = 1;
  HIDWORD(v35) = *(a1 + 24);
  if (fsctl(v13, 0xC0207A17uLL, __strerrbuf, 0) == -1)
  {
    v15 = *__error();
    result = 5;
    if (v15 <= 0x3C)
    {
      if (((1 << v15) & 0x1000000800012010) != 0)
      {
        goto LABEL_54;
      }

      if (v15 == 1)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_47;
  }

  if (*(a1 + 28) >= 2u)
  {
LABEL_33:
    if (*v5)
    {
      v17 = *(v5 + 8);
      *&v35 = 0;
      *(&v35 + 1) = 1;
      *__strerrbuf = dword_1EA8315A8 + 1;
      *&__strerrbuf[8] = 1;
      HIDWORD(v35) = *(a1 + 24);
      if (fsctl(v17, 0xC0207A17uLL, __strerrbuf, 0) != -1)
      {
        *v5 = 0;
        goto LABEL_36;
      }

      v15 = *__error();
      result = 5;
      if (v15 <= 0x3C)
      {
        if (((1 << v15) & 0x1000000800012010) == 0)
        {
          if (v15 == 1)
          {
LABEL_45:
            result = 3;
            *(a1 + 32) = v15;
            if (!(a2 | 3))
            {
              goto LABEL_55;
            }

            goto LABEL_76;
          }

          goto LABEL_47;
        }

LABEL_54:
        if (result | a2)
        {
          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_47:
      if (v15 != 77)
      {
        result = 2058;
        *(a1 + 32) = v15;
        if (!(a2 | 0x80A))
        {
          goto LABEL_55;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }
  }

LABEL_36:
  if (a2 == 1 || *(v6 + 24) >= 2)
  {
    result = 0;
    *(v6 + 32) = 1;
    if (!a2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    result = 0;
    if (!a2)
    {
      goto LABEL_55;
    }
  }

LABEL_76:
  if (*(v6 + 16))
  {
    v30 = result;
    xmmword_1ED452F28(*(v6 + 16));
    result = v30;
  }

  if (!result)
  {
    *(a1 + 28) = a2;
  }

  return result;
}

uint64_t sub_1819310A0(uint64_t a1, int *a2)
{
  v3 = *(a1 + 40);
  if (*v3)
  {
    result = 0;
    v5 = 1;
    goto LABEL_29;
  }

  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    xmmword_1ED452F18(v8);
    v7 = *(a1 + 16);
  }

  if (*(v7 + 32) > 1u)
  {
    result = 0;
    v5 = 1;
    goto LABEL_27;
  }

  v9 = *(v3 + 8);
  v18 = 0;
  v19 = 0;
  v16 = dword_1EA8315A8 + 1;
  v17 = 1;
  HIDWORD(v19) = *(a1 + 24);
  if (fsctl(v9, 0xC0207A17uLL, &v16, 0) == -1)
  {
    v13 = *__error();
    result = 5;
    if (v13 <= 0x3C)
    {
      if (((1 << v13) & 0x1000000800012010) != 0)
      {
        goto LABEL_20;
      }

      if (v13 == 1)
      {
        result = 3;
LABEL_19:
        *(a1 + 32) = v13;
        goto LABEL_20;
      }
    }

    if (v13 != 77)
    {
      result = 3850;
      goto LABEL_19;
    }

LABEL_20:
    v5 = 1;
    goto LABEL_25;
  }

  v10 = *(v3 + 8);
  v18 = 0;
  v19 = 1;
  v16 = dword_1EA8315A8 + 1;
  v17 = 1;
  HIDWORD(v19) = *(a1 + 24);
  v11 = fsctl(v10, 0xC0207A17uLL, &v16, 0);
  result = 0;
  if (v11 != -1)
  {
    goto LABEL_24;
  }

  v12 = *__error();
  result = 5;
  if (v12 > 0x3C)
  {
    goto LABEL_21;
  }

  if (((1 << v12) & 0x1000000800012010) != 0)
  {
    goto LABEL_24;
  }

  if (v12 == 1)
  {
    result = 3;
  }

  else
  {
LABEL_21:
    if (v12 == 77)
    {
      goto LABEL_24;
    }

    result = 2058;
  }

  *(a1 + 32) = v12;
LABEL_24:
  v5 = 0;
  if (result)
  {
LABEL_25:
    if (result == 5)
    {
      result = 0;
    }
  }

LABEL_27:
  v14 = *(*(a1 + 16) + 16);
  if (v14)
  {
    v15 = result;
    xmmword_1ED452F28(v14);
    result = v15;
  }

LABEL_29:
  *a2 = v5;
  return result;
}

uint64_t sub_18193129C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10[2] = 0;
  v11 = a5 == 0;
  v10[0] = a3;
  v10[1] = a4;
  HIDWORD(v11) = *(a2 + 24);
  v7 = fsctl(a1, 0xC0207A17uLL, v10, 0);
  result = 0;
  if (v7 == -1)
  {
    v9 = *__error();
    result = 5;
    if (v9 > 0x3C)
    {
      goto LABEL_6;
    }

    if (((1 << v9) & 0x1000000800012010) != 0)
    {
      return result;
    }

    if (v9 == 1)
    {
      result = 3;
    }

    else
    {
LABEL_6:
      if (v9 == 77)
      {
        return result;
      }

      if (a5)
      {
        result = 3850;
      }

      else
      {
        result = 2058;
      }
    }

    *(a2 + 32) = v9;
  }

  return result;
}

uint64_t sub_18193138C(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(a1 + 28))
  {
    if ((off_1EE341C90(v2) & 0x80000000) != 0)
    {
      v3 = *__error();
      if (v3 != 2)
      {
        *(a1 + 32) = v3;
      }
    }

    else
    {
      *(a1 + 28) = 0;
    }

    v2 = *(a1 + 40);
  }

  if (v2)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_13:
      (*v4)();
      goto LABEL_14;
    }

    if (xmmword_1ED456AF0)
    {
      v5 = v2;
      xmmword_1ED452F18(xmmword_1ED456AF0);
      v2 = v5;
    }

    v6 = v2;
    qword_1ED456A48[0] -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v6);
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_13;
    }
  }

LABEL_14:
  v7 = *(a1 + 160);
  if (v7)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v7);
    }
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    off_1EE341CF0(v8, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 24);
  if ((v9 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v9))
    {
      v10 = *(a1 + 56);
      v11 = *__error();
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v11, __strerrbuf, 0x4FuLL);
      v12 = &byte_181A2878D;
      if (v10)
      {
        v12 = v10;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v11, "close", v12, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_31:
      (*v14)(v13);
      goto LABEL_32;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
    --qword_1ED456A90;
    off_1ED452EB0(v13);
    v13 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v14 = &xmmword_1ED452F28;
      goto LABEL_31;
    }
  }

LABEL_32:
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 0;
}

uint64_t sub_181931628(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 28))
  {
    *(a1 + 28) = a2;
    utime(v3, 0);
    return 0;
  }

  v6 = a1;
  result = off_1EE341C78(v3, 511);
  if ((result & 0x80000000) == 0)
  {
    *(v6 + 28) = a2;
    return result;
  }

  v7 = *__error();
  result = 5;
  if (v7 <= 0x3C)
  {
    if (((1 << v7) & 0x1000000800032010) != 0)
    {
      return result;
    }

    if (v7 == 1)
    {
      result = 3;
      *(v6 + 32) = 1;
      return result;
    }
  }

  if (v7 != 77)
  {
    result = 3850;
    *(v6 + 32) = v7;
  }

  return result;
}

uint64_t sub_1819316E8(uint64_t a1, int a2)
{
  if (*(a1 + 28) == a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    result = 0;
    *(a1 + 28) = 1;
  }

  else if ((off_1EE341C90(*(a1 + 40)) & 0x80000000) != 0)
  {
    v5 = *__error();
    if (v5 == 2)
    {
      return 0;
    }

    else
    {
      *(a1 + 32) = v5;
      return 2058;
    }
  }

  else
  {
    result = 0;
    *(a1 + 28) = 0;
  }

  return result;
}

uint64_t sub_18193177C(uint64_t a1, _BOOL4 *a2)
{
  if (*(a1 + 28))
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1EE341AF8(*(a1 + 40), 0) == 0;
  }

  *a2 = v3;
  return 0;
}

char *sub_1819317D0()
{
  result = getenv("SQLITE_EXEMPT_PATH_FROM_VNODE_GUARDS");
  if (!result)
  {
    return result;
  }

  v1 = strdup(result);
  v2 = strlen(v1);
  if (!v2)
  {
    goto LABEL_12;
  }

  qword_1EA831898[0] = v1;
  if (v2 < 1)
  {
    goto LABEL_12;
  }

  LODWORD(v3) = 0;
  v4 = v2 & 0x7FFFFFFF;
  v5 = v1 + 1;
  while (*(v5 - 1) != 58)
  {
LABEL_5:
    ++v5;
    if (!--v4)
    {
      goto LABEL_12;
    }
  }

  *(v5 - 1) = 0;
  if (v3 <= 23)
  {
    v3 = v3 + 1;
    if (*v5)
    {
      qword_1EA831898[v3] = v5;
    }

    goto LABEL_5;
  }

  sqlite3_log(28, "Too many entries in SQLITE_EXEMPT_PATH_FROM_VNODE_GUARDS, truncating list to first %d entries", 26);
LABEL_12:

  return sub_18192C3D8();
}

uint64_t sub_1819318B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = &unk_1ED456000;
  v50 = *MEMORY[0x1E69E9840];
  v6 = 0x1EA831000uLL;
  do
  {
    v7 = 0;
    v8 = v4;
    v9 = (a2 + v4);
    v10 = *v9;
    if (*v9)
    {
      do
      {
        if (v10 == 47)
        {
          break;
        }

        v10 = v9[++v7];
      }

      while (v9[v7]);
    }

    v11 = (a2 + v8);
    if (v8 < v8 + v7)
    {
      if (*v11 == 46)
      {
        if (v7 == 1)
        {
          goto LABEL_3;
        }

        v12 = *(v3 + 20);
        if (v7 == 2 && v11[1] == 46)
        {
          if (v12 >= 2)
          {
            v13 = (*(v3 + 8) + v12 - 1);
            v14 = v12 - 1;
            do
            {
              *(v3 + 20) = v14;
              v15 = *v13--;
              --v14;
            }

            while (v15 != 47);
          }

          goto LABEL_3;
        }
      }

      else
      {
        LODWORD(v12) = *(v3 + 20);
      }

      if (v12 + v7 + 2 >= *(v3 + 16))
      {
        *v3 = 1;
      }

      else
      {
        v16 = *(v3 + 8);
        *(v3 + 20) = v12 + 1;
        *(v16 + v12) = 47;
        result = memcpy((*(v3 + 8) + *(v3 + 20)), (a2 + v8), v7);
        v17 = *(v3 + 20) + v7;
        *(v3 + 20) = v17;
        if (!*v3)
        {
          memset(v39, 0, sizeof(v39));
          *(*(v3 + 8) + v17) = 0;
          v18 = *(v3 + 8);
          if (v5[395] != -1)
          {
            sub_181A1ECEC();
          }

          if (*(v6 + 2412) == 1)
          {
            v19 = v6;
            getpid();
            v20 = sandbox_check();
            if (v20 == 1)
            {
              __error();
              os_variant_has_internal_content();
            }

            else
            {
              v25 = v20;
              has_internal_content = os_variant_has_internal_content();
              v27 = v25 == -1;
              v6 = v19;
              if (v27 && has_internal_content && *__error() != 2)
              {
                v28 = *__error();
                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                *__strerrbuf = 0u;
                strerror_r(v28, __strerrbuf, 0x4FuLL);
                v29 = &byte_181A2878D;
                if (v18)
                {
                  v29 = v18;
                }

                v37 = v28;
                v6 = v19;
                sqlite3_log(14, "os_unix.c:%d: (%d) %s(%s) - %s", 51481, v37, "sandbox_check", v29, __strerrbuf);
              }
            }
          }

          result = off_1EE341D50(v18, v39);
          if (result)
          {
            if (*__error() != 2 && *__error() != 1)
            {
              v21 = v6;
              v22 = *__error();
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              *__strerrbuf = 0u;
              strerror_r(v22, __strerrbuf, 0x4FuLL);
              v23 = &byte_181A2878D;
              if (v18)
              {
                v23 = v18;
              }

              v36 = v22;
              v6 = v21;
              sqlite3_log(14, "os_unix.c:%d: (%d) %s(%s) - %s", 51489, v36, "lstat", v23, __strerrbuf);
            }

            result = __error();
          }

          else if ((WORD2(v39[0]) & 0xF000) == 0xA000)
          {
            v24 = *(v3 + 4);
            *(v3 + 4) = v24 + 1;
            if (v24 < 201)
            {
              v30 = off_1EE341D38(v18, __strerrbuf, 1024);
              if ((v30 - 1024) > 0xFFFFFFFFFFFFFC00)
              {
                v35 = 0;
                __strerrbuf[v30] = 0;
                if (__strerrbuf[0] != 47)
                {
                  v35 = ~v7 + *(v3 + 20);
                }

                *(v3 + 20) = v35;
                result = sub_1819318B0(v3, __strerrbuf);
              }

              else
              {
                v31 = v6;
                v32 = sub_18192ACCC(51503);
                v33 = *__error();
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                *v45 = 0u;
                strerror_r(v33, v45, 0x4FuLL);
                v34 = &byte_181A2878D;
                if (v18)
                {
                  v34 = v18;
                }

                v38 = v33;
                v5 = &unk_1ED456000;
                sqlite3_log(v32, "os_unix.c:%d: (%d) %s(%s) - %s", 51503, v38, "readlink", v34, v45);
                result = v32;
                v6 = v31;
                *v3 = result;
              }
            }

            else
            {
              result = sub_18192ACCC(51498);
              *v3 = result;
            }
          }
        }
      }
    }

LABEL_3:
    v4 = v8 + v7 + 1;
  }

  while (v11[v7]);
  return result;
}

uint64_t sub_181931D30()
{
  v0 = getprogname();
  result = strcmp(v0, "IntelligencePlatformComputeService");
  if (result && (v2 = getprogname(), result = strcmp(v2, "biomed"), result))
  {
    v3 = getprogname();
    result = strcmp(v3, "siriknowledged");
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  byte_1EA83196C = v4;
  return result;
}

uint64_t sub_181931DC4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    while (1)
    {
      v3 = flock(v2, 8);
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_8;
      }
    }

    if (!v3)
    {
      *(a1 + 28) = 0;
    }
  }

LABEL_8:
  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v4);
    }
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    off_1EE341CF0(v5, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v6 = *(a1 + 24);
  if ((v6 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v6))
    {
      v7 = *(a1 + 56);
      v8 = *__error();
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v8, __strerrbuf, 0x4FuLL);
      v9 = &byte_181A2878D;
      if (v7)
      {
        v9 = v7;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v8, "close", v9, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_25:
      (*v11)(v10);
      goto LABEL_26;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v11 = &xmmword_1ED452F28;
      goto LABEL_25;
    }
  }

LABEL_26:
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 0;
}

uint64_t sub_181931FCC(uint64_t a1, char a2)
{
  if (*(a1 + 28))
  {
    result = 0;
    *(a1 + 28) = a2;
  }

  else
  {
    v6 = *(a1 + 24);
    while (1)
    {
      result = flock(v6, 6);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_8;
      }
    }

    if (!result)
    {
      *(a1 + 28) = a2;
      return result;
    }

LABEL_8:
    v7 = *__error();
    result = 5;
    if (v7 > 0x3C)
    {
      goto LABEL_12;
    }

    if (((1 << v7) & 0x1000000800012010) != 0)
    {
      return result;
    }

    if (v7 == 1)
    {
      result = 3;
      *(a1 + 32) = 1;
    }

    else
    {
LABEL_12:
      if (v7 != 77)
      {
        result = 3850;
        *(a1 + 32) = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1819320A0(uint64_t a1, int a2)
{
  if (*(a1 + 28) == a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v3 = a1;
    v5 = *(a1 + 24);
    while (1)
    {
      v6 = flock(v5, 8);
      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        return 2058;
      }
    }

    if (v6)
    {
      return 2058;
    }

    v4 = 0;
  }

  result = 0;
  *(v3 + 28) = v4;
  return result;
}

uint64_t sub_18193215C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!*(v1 + 64))
  {
    v3 = *(v1 + 32);
    if (!v3)
    {
      goto LABEL_28;
    }

    v5 = &xmmword_1ED452F18;
    goto LABEL_27;
  }

  if (!word_1ED452E84)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v2 = qword_1ED452F08(11);
  v3 = v2;
  if (!v2)
  {
LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  xmmword_1ED452F18(v2);
  v4 = 0;
LABEL_9:
  if (dword_1EA831970 < 1)
  {
    goto LABEL_25;
  }

  v6 = 0;
  while (*(qword_1EA831978 + v6) != v1)
  {
    v6 += 8;
    if (8 * dword_1EA831970 == v6)
    {
      goto LABEL_25;
    }
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    xmmword_1ED452F18(v7);
  }

  if (*(v1 + 56) != 1)
  {
    goto LABEL_25;
  }

  v8 = qword_1EA831978;
  v9 = --dword_1EA831970;
  *(qword_1EA831978 + v6) = *(qword_1EA831978 + 8 * v9);
  if (v9)
  {
    goto LABEL_25;
  }

  v10 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_24;
    }

    v10 = &xmmword_1ED452F28;
  }

  (*v10)(v8);
LABEL_24:
  qword_1EA831978 = 0;
LABEL_25:
  if (v4)
  {
    goto LABEL_28;
  }

  v5 = &xmmword_1ED452F28;
LABEL_27:
  (*v5)(v3);
LABEL_28:
  v11 = *(v1 + 56);
  v12 = __OFSUB__(v11--, 1);
  *(v1 + 56) = v11;
  if (!((v11 < 0) ^ v12 | (v11 == 0)))
  {
    v1 = *(v1 + 32);
    if (v1)
    {
      v16 = &xmmword_1ED452F28;
      goto LABEL_48;
    }

    return 0;
  }

  if (*(v1 + 44))
  {
    v13 = *(v1 + 24);
    if (v13)
    {
      v14 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
LABEL_37:
        (*v14)(v13);
        goto LABEL_38;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v13);
      --qword_1ED456A90;
      off_1ED452EB0(v13);
      v13 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v14 = &xmmword_1ED452F28;
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  v15 = *(v1 + 32);
  if (v15)
  {
    xmmword_1ED452F28(v15);
    if (*(v1 + 32))
    {
      off_1ED452F10();
    }
  }

  v16 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_48;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v16 = &xmmword_1ED452F28;
LABEL_48:
    (*v16)(v1);
  }

  return 0;
}

uint64_t sub_181932468(uint64_t a1, void *__dst, int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = v7[4];
  if (v8)
  {
    xmmword_1ED452F18(v8);
  }

  if (a3 + a4 <= *v7)
  {
    memcpy(__dst, (v7[3] + a4), a3);
    v10 = 0;
    v9 = v7[4];
    if (!v9)
    {
      return v10;
    }

LABEL_9:
    xmmword_1ED452F28(v9);
    return v10;
  }

  bzero(__dst, a3);
  if (*v7 > a4)
  {
    memcpy(__dst, (v7[3] + a4), *v7 - a4);
  }

  v9 = v7[4];
  v10 = 522;
  if (v9)
  {
    goto LABEL_9;
  }

  return v10;
}

uint64_t sub_181932528(uint64_t a1, void *__src, int a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = v7[4];
  if (v8)
  {
    xmmword_1ED452F18(v8);
  }

  v9 = *(v7 + 11);
  if ((v9 & 4) == 0)
  {
    v10 = a3;
    v11 = a3 + a4;
    v12 = *v7;
    if (v11 <= *v7)
    {
      goto LABEL_22;
    }

    if (v11 <= v7[1])
    {
LABEL_19:
      if (a4 > v12)
      {
        v20 = v10;
        bzero((v7[3] + v12), a4 - v12);
        v10 = v20;
      }

      *v7 = v11;
LABEL_22:
      memcpy((v7[3] + a4), __src, v10);
      v14 = 0;
      v15 = v7[4];
      if (!v15)
      {
        return v14;
      }

      goto LABEL_12;
    }

    if ((v9 & 2) == 0 || *(v7 + 10) > 0 || (v13 = v7[2], v13 < v11))
    {
      v14 = 13;
      v15 = v7[4];
      if (!v15)
      {
        return v14;
      }

      goto LABEL_12;
    }

    v17 = a3;
    if (2 * v11 >= v13)
    {
      v18 = v7[2];
    }

    else
    {
      v18 = 2 * v11;
    }

    v19 = sub_18190287C(v7[3], v18, 376579323);
    if (v19)
    {
      v7[3] = v19;
      v7[1] = v18;
      v12 = *v7;
      v10 = v17;
      goto LABEL_19;
    }

    v14 = 3082;
    v15 = v7[4];
    if (!v15)
    {
      return v14;
    }

LABEL_12:
    xmmword_1ED452F28(v15);
    return v14;
  }

  v15 = v7[4];
  v14 = 778;
  if (v15)
  {
    goto LABEL_12;
  }

  return v14;
}

uint64_t sub_181932670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = v3[4];
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  if (*v3 < a2)
  {
    v5 = 11;
    v6 = v3[4];
    if (!v6)
    {
      return v5;
    }

    goto LABEL_7;
  }

  v5 = 0;
  *v3 = a2;
  v6 = v3[4];
  if (v6)
  {
LABEL_7:
    xmmword_1ED452F28(v6);
  }

  return v5;
}

uint64_t sub_1819326F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = v3[4];
  if (v4)
  {
    xmmword_1ED452F18(v4);
    v5 = v3[4];
    *a2 = *v3;
    if (v5)
    {
      xmmword_1ED452F28(v5);
    }
  }

  else
  {
    *a2 = *v3;
  }

  return 0;
}

uint64_t sub_181932758(uint64_t a1, int a2)
{
  if (*(a1 + 16) >= a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (*(v2 + 32))
  {
    v3 = a1;
    v4 = a2;
    xmmword_1ED452F18(*(v2 + 32));
    a1 = v3;
    a2 = v4;
  }

  if (a2 >= 2 && (*(v2 + 44) & 4) != 0)
  {
    v5 = 8;
    v6 = *(v2 + 32);
    if (!v6)
    {
      return v5;
    }

    goto LABEL_22;
  }

  if ((a2 - 2) >= 2)
  {
    if (a2 == 1)
    {
      if (*(v2 + 52) <= 0)
      {
        ++*(v2 + 48);
        goto LABEL_21;
      }
    }

    else if (*(v2 + 48) <= 1)
    {
      if (*(a1 + 16) != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_17:
    v5 = 5;
    v6 = *(v2 + 32);
    if (!v6)
    {
      return v5;
    }

    goto LABEL_22;
  }

  if (*(a1 + 16) != 1)
  {
    goto LABEL_21;
  }

  if (*(v2 + 52) > 0)
  {
    goto LABEL_17;
  }

LABEL_20:
  *(v2 + 52) = 1;
LABEL_21:
  v5 = 0;
  *(a1 + 16) = a2;
  v6 = *(v2 + 32);
  if (v6)
  {
LABEL_22:
    xmmword_1ED452F28(v6);
  }

  return v5;
}

uint64_t sub_181932874(uint64_t a1, int a2)
{
  if (*(a1 + 16) > a2)
  {
    v2 = *(a1 + 8);
    if (*(v2 + 32))
    {
      v3 = a1;
      v4 = a2;
      xmmword_1ED452F18(*(v2 + 32));
      a1 = v3;
      a2 = v4;
    }

    v5 = *(a1 + 16);
    if (a2 == 1)
    {
      if (v5 >= 2)
      {
        --*(v2 + 52);
      }
    }

    else
    {
      if (v5 >= 2)
      {
        --*(v2 + 52);
      }

      --*(v2 + 48);
    }

    *(a1 + 16) = a2;
    v6 = *(v2 + 32);
    if (v6)
    {
      xmmword_1ED452F28(v6);
    }
  }

  return 0;
}

uint64_t sub_181932934(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = v5[4];
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  if (a2 != 36)
  {
    if (a2 == 12)
    {
      v7 = 0;
      *a3 = sqlite3_mprintf("memdb(%p,%lld)", v5[3], *v5);
      v8 = v5[4];
      if (!v8)
      {
        return v7;
      }
    }

    else
    {
      v7 = 12;
      v8 = v5[4];
      if (!v8)
      {
        return v7;
      }
    }

    goto LABEL_14;
  }

  v9 = *v5;
  if (*a3 >= *v5)
  {
    v9 = *a3;
  }

  else if (*a3 < 0)
  {
    v9 = v5[2];
  }

  v7 = 0;
  v5[2] = v9;
  *a3 = v9;
  v8 = v5[4];
  if (v8)
  {
LABEL_14:
    xmmword_1ED452F28(v8);
  }

  return v7;
}

uint64_t sub_181932A18(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = *(a1 + 8);
  v8 = *(v7 + 32);
  if (v8)
  {
    xmmword_1ED452F18(v8);
  }

  if (a2 + a3 > *v7 || (*(v7 + 44) & 2) != 0)
  {
    v9 = 0;
  }

  else
  {
    ++*(v7 + 40);
    v9 = *(v7 + 24) + a2;
  }

  *a4 = v9;
  v10 = *(v7 + 32);
  if (v10)
  {
    xmmword_1ED452F28(v10);
  }

  return 0;
}

uint64_t sub_181932AB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 32);
  if (v2)
  {
    xmmword_1ED452F18(v2);
    v3 = *(v1 + 32);
    --*(v1 + 40);
    if (v3)
    {
      xmmword_1ED452F28(v3);
    }
  }

  else
  {
    --*(v1 + 40);
  }

  return 0;
}

uint64_t sub_181932B18(uint64_t a1)
{
  if ((*(a1 + 52) & 0x20) == 0)
  {
    return sub_181932B68(a1);
  }

  v2 = *(a1 + 40);
  --*(v2 + 152);
  *(a1 + 32) = *(v2 + 168);
  *(v2 + 168) = a1;
  return (*(**(v2 + 72) + 144))(*(v2 + 72), *(v2 + 200) * (*(a1 + 48) - 1), *(a1 + 8));
}

uint64_t sub_181932B68(uint64_t result)
{
  v1 = *(result + 24);
  --v1[3];
  v2 = *(result + 56) - 1;
  *(result + 56) = v2;
  if (v2)
  {
    return result;
  }

  v3 = *(result + 52);
  if ((v3 & 1) == 0)
  {
    v4 = v1[2];
    v5 = *(result + 72);
    if (v4 == result)
    {
      v1[2] = v5;
      v4 = v5;
    }

    v6 = *(result + 64);
    if (v6)
    {
      *(v6 + 72) = v5;
      if (!v5)
      {
        *(result + 64) = v6;
        *(result + 72) = 0;
LABEL_13:
        *(v6 + 72) = result;
LABEL_17:
        *v1 = result;
        if ((v3 & 8) == 0 && !v4)
        {
          v1[2] = result;
        }

        return result;
      }
    }

    else
    {
      v1[1] = v5;
      if (!v5)
      {
        *(v1 + 49) = 2;
        *(result + 64) = 0;
        *(result + 72) = 0;
        goto LABEL_15;
      }
    }

    *(v5 + 64) = v6;
    v6 = *v1;
    *(result + 64) = *v1;
    *(result + 72) = 0;
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_15:
    v1[1] = result;
    if (*(v1 + 48))
    {
      *(v1 + 49) = 1;
    }

    goto LABEL_17;
  }

  if (*(v1 + 48))
  {
    return xmmword_1ED452F80(v1[9], *result, 0);
  }

  return result;
}

uint64_t sub_181932C40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 < 1)
  {
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    v5 = 8;
    do
    {
      result = *(*(v1 + 32) + v5);
      if (result && *(result + 17))
      {
        ++*(result + 20);
        if (*(result + 18))
        {
          v4 = 0;
        }

        else
        {
          result = sub_181932DEC(result);
          v4 = 0;
          v2 = *(v1 + 40);
        }
      }

      ++v3;
      v5 += 32;
    }

    while (v3 < v2);
  }

  *(v1 + 111) = v4;
  return result;
}

uint64_t sub_181932CD8(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = 8;
    do
    {
      result = *(*(v2 + 32) + v4);
      if (result && *(result + 17))
      {
        v5 = *(result + 20) - 1;
        *(result + 20) = v5;
        if (!v5)
        {
          result = sub_181932ECC(result);
          v1 = *(v2 + 40);
        }
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v1);
  }

  return result;
}

void sub_181932D5C(uint64_t a1, int a2)
{
  v4 = *(a1 + 416);
  if (v4)
  {
    if ((*(v4 + 20) & 0x9000) == 0)
    {
      *(v4 + 20) = 1;
      if (a2 == 3082)
      {
        return;
      }

      goto LABEL_5;
    }

    sub_18193CA54(v4);
  }

  if (a2 == 3082)
  {
    return;
  }

LABEL_5:
  if ((a2 & 0xFB) == 0xA)
  {
    v5 = *(*a1 + 128);
    if (v5)
    {
      v6 = v5();
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 92) = v6;
  }
}

uint64_t sub_181932DEC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  result = *(v2 + 88);
  if (!result)
  {
    goto LABEL_17;
  }

  result = (*(&xmmword_1ED452F18 + 1))();
  if (!result)
  {
    v2 = *(v1 + 8);
LABEL_17:
    *(v2 + 8) = *v1;
    *(v1 + 18) = 1;
    return result;
  }

  for (i = *(v1 + 32); i; i = *(i + 32))
  {
    if (*(i + 18))
    {
      sub_181932ECC(i);
    }
  }

  v5 = *(v1 + 8);
  result = *(v5 + 88);
  if (result)
  {
    result = xmmword_1ED452F18(result);
    v5 = *(v1 + 8);
  }

  *(v5 + 8) = *v1;
LABEL_11:
  *(v1 + 18) = 1;
  while (1)
  {
    v1 = *(v1 + 32);
    if (!v1)
    {
      return result;
    }

    if (*(v1 + 20))
    {
      v6 = *(v1 + 8);
      result = *(v6 + 88);
      if (result)
      {
        result = xmmword_1ED452F18(result);
        v6 = *(v1 + 8);
      }

      *(v6 + 8) = *v1;
      goto LABEL_11;
    }
  }
}

uint64_t sub_181932ECC(uint64_t a1)
{
  result = *(*(a1 + 8) + 88);
  if (result)
  {
    result = xmmword_1ED452F28(result);
  }

  *(a1 + 18) = 0;
  return result;
}

uint64_t sub_181932F08(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      v7 = a3;
      sub_181932DEC(a1);
      a3 = v7;
    }
  }

  v8 = *(a1 + 16);
  if (v8 == 2 || !a2 && v8 == 1)
  {
    goto LABEL_7;
  }

  v13 = *a1;
  if ((*(*a1 + 51) & 2) != 0 && !*(v6 + 18))
  {
    *(v5 + 40) &= ~1u;
  }

  v14 = *(v5 + 40);
  if (a2 && (v14 & 1) != 0)
  {
    result = 8;
    goto LABEL_14;
  }

  if (!a2)
  {
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if ((v14 & 0x80) != 0 || *(v5 + 36) == 2)
  {
LABEL_33:
    v16 = *(v5 + 128);
    goto LABEL_34;
  }

  if (a2 < 2)
  {
    goto LABEL_35;
  }

  v15 = *(v5 + 120);
  if (!v15)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v16 = *v15;
    if (*v15 != a1)
    {
      break;
    }

    v15 = *(v15 + 16);
    if (!v15)
    {
      goto LABEL_35;
    }
  }

LABEL_34:
  if (*v16)
  {
    goto LABEL_158;
  }

LABEL_35:
  if (*(a1 + 17))
  {
    v17 = *(a1 + 8);
    if (*(v17 + 128) == a1 || (*(v17 + 40) & 0x40) == 0)
    {
      v18 = *(v17 + 120);
      if (!v18)
      {
        goto LABEL_39;
      }

      while (*v18 == a1 || *(v18 + 8) != 1 || *(v18 + 12) == 1)
      {
        v18 = *(v18 + 16);
        if (!v18)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_158:
    result = 262;
    goto LABEL_14;
  }

LABEL_39:
  v58 = a3;
  *(v5 + 40) = v14 & 0xFFEF;
  if (!*(v5 + 64))
  {
    *(v5 + 40) = v14 | 0x10;
  }

  v19 = 0;
  v59 = a2 > 1;
  v60 = a2;
  while (2)
  {
    *(v6 + 360) = v13;
    v20 = *(v6 + 344);
    if (v20)
    {
      *(v20 + 160) = v13;
      v21 = *(v5 + 24);
      if (a2 && !v21)
      {
        v19 = 0;
        if (*(v6 + 8) || !v13)
        {
          goto LABEL_55;
        }

        v22 = *(v13 + 788);
        if (v22)
        {
          LODWORD(v61) = v22;
          v23 = **(v20 + 8);
          if (v23)
          {
            if (!(*(v23 + 80))())
            {
              if (*(v20 + 63) || (v19 = (*(**(v20 + 8) + 112))(*(v20 + 8), 0, 1, 10)) == 0)
              {
                v19 = 0;
                *(v20 + 64) = 1;
              }

              LODWORD(v61) = 0;
              v53 = **(v20 + 8);
              if (v53)
              {
                (*(v53 + 80))();
              }

              if (v19 != 5 && v19 != 0)
              {
                break;
              }

              goto LABEL_55;
            }
          }
        }

LABEL_54:
        v19 = 0;
LABEL_55:
        v21 = *(v5 + 24);
      }
    }

    else
    {
      v21 = *(v5 + 24);
      if (a2 && !v21)
      {
        goto LABEL_54;
      }
    }

    if (v21)
    {
      goto LABEL_57;
    }

    while (1)
    {
      while (1)
      {
        v25 = sub_1818A3E30(*v5);
        if (v25 || (v61 = 0, (v25 = (*(*v5 + 288))()) != 0))
        {
LABEL_107:
          v19 = v25;
          goto LABEL_119;
        }

        v26 = *(v61 + 16);
        if (*(v26 + 4) == 1)
        {
          v27 = *(v26 + 80);
        }

        else
        {
          v27 = *(v61 + 8);
          *(v26 + 112) = v61;
          *(v26 + 72) = v5;
          *(v26 + 80) = v27;
          *(v26 + 4) = 1;
          *(v26 + 9) = 100;
        }

        v28 = bswap32(*(v27 + 28));
        v29 = *v5;
        v30 = *(*v5 + 32);
        if (!v28 || *(v27 + 24) != *(v27 + 92))
        {
          v28 = *(*v5 + 32);
        }

        if ((*(*(v5 + 8) + 51) & 2) != 0 || !v28)
        {
          v28 = 0;
          v38 = *(v5 + 56);
          goto LABEL_141;
        }

        if (*v27 != 0x66206574694C5153 || *(v27 + 8) != 0x332074616D726FLL)
        {
          goto LABEL_115;
        }

        if (*(v27 + 18) >= 3u)
        {
          *(v5 + 40) |= 1u;
        }

        v32 = *(v27 + 19);
        if (v32 > 2)
        {
          goto LABEL_115;
        }

        if (v32 != 2 || (*(v5 + 40) & 0x20) != 0)
        {
          sub_181933894(v5, 3);
          break;
        }

        LODWORD(v61) = 0;
        v33 = sub_1818A4BB0(v29, &v61);
        if (v33)
        {
          goto LABEL_153;
        }

        sub_181933894(v5, 2);
        if (v61)
        {
          break;
        }

        sub_181929628(*(v26 + 112));
        a2 = v60;
        if (*(v5 + 24))
        {
          goto LABEL_106;
        }
      }

      if (*(v27 + 21) != 8256 || *(v27 + 23) != 32)
      {
        goto LABEL_115;
      }

      v35 = (*(v27 + 16) << 8) | (*(v27 + 17) << 16);
      if ((v35 - 65537) < 0xFFFF0100 || ((v35 - 1) & v35) != 0)
      {
        goto LABEL_115;
      }

      v37 = *(v27 + 20);
      v38 = v35 - v37;
      if (v35 == *(v5 + 52))
      {
        break;
      }

      sub_181929628(*(v26 + 112));
      *(v5 + 52) = v35;
      *(v5 + 56) = v38;
      *(v5 + 40) |= 2u;
      v39 = *(v5 + 136);
      if (v39)
      {
        *(v5 + 136) = v39 - 4;
        sub_181935120(v39 - 4);
        *(v5 + 136) = 0;
      }

      v25 = sub_1818933F0(*v5, (v5 + 52), v37);
      a2 = v60;
      if (v25)
      {
        goto LABEL_107;
      }

      if (*(v5 + 24))
      {
LABEL_106:
        v19 = 0;
        goto LABEL_57;
      }
    }

    if (v28 > v30)
    {
      v28 = v30;
      if ((*(*(v5 + 8) + 48) & 0x10000001) != 1)
      {
        v33 = sub_18190EDA8(82658);
LABEL_153:
        v19 = v33;
        goto LABEL_116;
      }
    }

    if (v38 < 0x1E0)
    {
LABEL_115:
      v19 = 26;
LABEL_116:
      a2 = v60;
      v40 = *(v26 + 112);
      v41 = *(v40 + 40);
      sub_181932B68(v40);
      if (!*(*(v41 + 336) + 24))
      {
        sub_181934964(v41);
      }

      *(v5 + 24) = 0;
      goto LABEL_119;
    }

    *(v5 + 40) |= 2u;
    *(v5 + 52) = v35;
    *(v5 + 56) = v38;
    *(v5 + 33) = bswap32(*(v27 + 52)) != 0;
    *(v5 + 34) = bswap32(*(v27 + 64)) != 0;
LABEL_141:
    a2 = v60;
    v19 = 0;
    *(v5 + 46) = v38 - 35;
    *(v5 + 42) = ((v38 << 6) - 768) / 0xFF - 23;
    v51 = (((v38 << 6) - 768) / 0xFF - 23);
    v52 = (32 * v38 - 384) / 0xFF - 23;
    *(v5 + 44) = v52;
    *(v5 + 48) = v52;
    if (v51 >= 0x7F)
    {
      LOBYTE(v51) = 127;
    }

    *(v5 + 37) = v51;
    *(v5 + 24) = v26;
    *(v5 + 64) = v28;
LABEL_57:
    if (!a2 || v19)
    {
LABEL_63:
      if (v19)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if (*(v5 + 40))
      {
        v19 = 8;
      }

      else
      {
        v24 = sub_1819292CC(v6, v59, *(*a1 + 102) == 2);
        if (v24 != 517)
        {
          v19 = v24;
          if (!v24)
          {
            v19 = sub_1818D1728(v5);
          }

          goto LABEL_63;
        }

        if (*(v5 + 36))
        {
          v19 = 517;
        }

        else
        {
          v19 = 5;
        }
      }

LABEL_119:
      v42 = *(v6 + 344);
      if (v42 && !*(v6 + 8) && *(v42 + 64))
      {
        if (!*(v42 + 63))
        {
          (*(**(v42 + 8) + 112))(*(v42 + 8), 0, 1, 9);
        }

        *(v42 + 64) = 0;
      }

      if (!*(v5 + 36))
      {
        v48 = *(v5 + 24);
        if (v48)
        {
          *(v5 + 24) = 0;
          v49 = *(v48 + 112);
          v50 = *(v49 + 40);
          sub_181932B68(v49);
          if (!*(*(v50 + 336) + 24))
          {
            sub_181934964(v50);
          }
        }
      }

      if (v19 != 773 && v19 == 5 && !*(v5 + 36))
      {
        v43 = *(v5 + 8);
        v44 = *(v43 + 664);
        if (v44)
        {
          if ((*(v43 + 688) & 0x80000000) == 0)
          {
            *(*(v43 + 680) + 784) = 0;
            v45 = v44(*(v43 + 672));
            if (*(v43 + 664) != sub_181915228)
            {
              v46 = *(v43 + 680);
              if (*(v46 + 784))
              {
                v47 = sub_181915228(v46, *(v43 + 688));
                if (v45 == 109)
                {
                  v45 = v47;
                }
              }
            }

            if (v45)
            {
              ++*(v43 + 688);
              v13 = *a1;
              continue;
            }

            *(v43 + 688) = -1;
          }
        }
      }
    }

    break;
  }

  *(v6 + 360) = 0;
  v55 = *(v6 + 344);
  if (v55)
  {
    *(v55 + 160) = 0;
  }

  if (v19 == 773)
  {
    result = 5;
  }

  else
  {
    result = v19;
  }

  if (result)
  {
    goto LABEL_14;
  }

  if (!*(a1 + 16))
  {
    ++*(v5 + 60);
    if (*(a1 + 17))
    {
      *(a1 + 60) = 1;
      *(a1 + 64) = *(v5 + 120);
      *(v5 + 120) = a1 + 48;
    }
  }

  if (a2)
  {
    v56 = 2;
  }

  else
  {
    v56 = 1;
  }

  *(a1 + 16) = v56;
  a3 = v58;
  if (v56 > *(v5 + 36))
  {
    *(v5 + 36) = v56;
  }

  if (!a2 || (v57 = *(v5 + 24), *(v5 + 128) = a1, *(v5 + 40) = *(v5 + 40) & 0xFFBF | ((a2 > 1) << 6), *(v5 + 64) == bswap32(*(*(v57 + 80) + 28))))
  {
LABEL_7:
    if (a3)
    {
      *a3 = bswap32(*(*(*(v5 + 24) + 80) + 40));
    }

    if (a2 && (v9 = *(*a1 + 796), *(v6 + 128) < v9) && *(v6 + 10))
    {
      result = sub_181935F24(v6, v9);
    }

    else
    {
      result = 0;
    }

    goto LABEL_14;
  }

  result = sub_1818D8D88(*(v57 + 112));
  if (!result)
  {
    *(*(v57 + 80) + 28) = bswap32(*(v5 + 64));
    a3 = v58;
    goto LABEL_7;
  }

LABEL_14:
  if (*(a1 + 17))
  {
    v11 = *(a1 + 20) - 1;
    *(a1 + 20) = v11;
    if (!v11)
    {
      v12 = result;
      sub_181932ECC(a1);
      return v12;
    }
  }

  return result;
}

uint64_t sub_181933770(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 664);
  if (!v2 || (*(v1 + 688) & 0x80000000) != 0)
  {
    return 0;
  }

  *(*(v1 + 680) + 784) = 0;
  result = v2(*(v1 + 672));
  if (*(v1 + 664) != sub_181915228 && *(*(v1 + 680) + 784))
  {
    v4 = result;
    LODWORD(result) = sub_181915228(*(v1 + 680), *(v1 + 688));
    if (v4 == 109)
    {
      result = result;
    }

    else
    {
      result = v4;
    }
  }

  if (result)
  {
    v5 = *(v1 + 688) + 1;
  }

  else
  {
    v5 = -1;
  }

  *(v1 + 688) = v5;
  return result;
}

uint64_t sub_18193380C(uint64_t a1, int a2, void *a3)
{
  v10 = 0;
  result = (*(*a1 + 288))();
  if (!result)
  {
    v7 = *(v10 + 16);
    if (*(v7 + 4) != a2)
    {
      v8 = *(v10 + 8);
      *(v7 + 112) = v10;
      *(v7 + 72) = a1;
      *(v7 + 80) = v8;
      *(v7 + 4) = a2;
      if (a2 == 1)
      {
        v9 = 100;
      }

      else
      {
        v9 = 0;
      }

      *(v7 + 9) = v9;
    }

    *a3 = v7;
  }

  return result;
}

void *sub_181933894(void *result, int a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = (v3 + 17);
      for (i = 32; ; i -= 32)
      {
        v6 = *(v4 - 9);
        if (v6)
        {
          if (*(v6 + 8) == result)
          {
            break;
          }
        }

        v4 += 32;
      }

      if (!*v4 && i && *(v4 - 1) != a2)
      {
        *(v4 - 1) = a2;
        v7 = *result;
        v8 = *(v2 + 48) & 0x38 | a2;
        if (*(*result + 16))
        {
          v9 = 0;
          *(v7 + 11) = 1;
          *(v7 + 13) = 0;
        }

        else
        {
          v9 = (v8 & 7u) > 2;
          *(v7 + 12) = v9;
          *(v7 + 13) = (v8 & 7) == 4;
          *(v7 + 11) = (v8 & 7) == 1;
          if ((v8 & 7) != 1)
          {
            v11 = 0;
            if ((v8 & 8) != 0)
            {
              v10 = 3;
            }

            else
            {
              v10 = 2;
            }

            *(v7 + 14) = v10;
            goto LABEL_15;
          }
        }

        v10 = 0;
        *(v7 + 14) = 0;
        v11 = 1;
LABEL_15:
        v12 = 4 * v10;
        if (v9)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0;
        }

        if ((v8 & 0x10) != 0)
        {
          v14 = v11;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v15 = v12;
        }

        else
        {
          v15 = 12;
        }

        *(v7 + 15) = v15 | v13;
        v16 = (v8 & 0x20) == 0;
        v17 = *(v7 + 25) & 0xFE;
        if (v16)
        {
          ++v17;
        }

        *(v7 + 25) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_1819339AC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = sub_181933D14(a1);
    if (v2)
    {
      goto LABEL_42;
    }

    v3 = 2 * (*(a1 + 8) != 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1;
  v5 = *(a1 + 72);
  v6 = *(a1 + 352);
  v7 = *(a1 + 208);
  v8 = *(a1 + 180);
  *(a1 + 344) = 0;
  v9 = *(v4 + 4);
  v10 = sub_181902484(v9 + 168, 0x10F00409EE4173ALL);
  if (!v10)
  {
    v2 = 7;
    goto LABEL_42;
  }

  v11 = v10;
  bzero(v10, v9 + 168);
  v11[1] = v5;
  v11[2] = v11 + 21;
  *v11 = v4;
  *(v11 + 30) = -1;
  v11[4] = v7;
  v11[16] = v6;
  *(v11 + 34) = 257;
  *(v11 + 63) = v3;
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = 6;
  }

  v25 = v12 | v8 & 1;
  v13 = (*(v4 + 40))(v4, v6);
  if (!v13)
  {
    if (v25)
    {
      *(v11 + 66) = 1;
    }

    if (*v5)
    {
      v18 = (*(*v5 + 96))(v5);
      if ((v18 & 0x400) != 0)
      {
        *(v11 + 68) = 0;
      }

      if ((v18 & 0x1000) != 0)
      {
        *(v11 + 69) = 0;
      }
    }

    v2 = 0;
    *(a1 + 344) = v11;
    v11[20] = *(a1 + 360);
    goto LABEL_42;
  }

  v2 = v13;
  v14 = *(v11 + 63);
  if (v14 != 2 && !*(v11 + 70))
  {
    goto LABEL_33;
  }

  if (*(v11 + 10) < 1)
  {
    goto LABEL_32;
  }

  v15 = 0;
  do
  {
    v16 = *(v11[6] + 8 * v15);
    if (v16)
    {
      v17 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_14;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v16);
      --qword_1ED456A90;
      off_1ED452EB0(v16);
      v16 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v17 = &xmmword_1ED452F28;
LABEL_14:
        (*v17)(v16);
      }
    }

    *(v11[6] + 8 * v15++) = 0;
  }

  while (v15 < *(v11 + 10));
  v14 = *(v11 + 63);
LABEL_32:
  if (v14 != 2)
  {
LABEL_33:
    (*(*v11[1] + 128))(v11[1], 0);
  }

  v19 = v11[2];
  if (*v19)
  {
    (*(*v19 + 8))(v11[2]);
    *v19 = 0;
  }

  v20 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v11);
    --qword_1ED456A90;
    off_1ED452EB0(v11);
    v11 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v20 = &xmmword_1ED452F28;
      goto LABEL_41;
    }
  }

  else
  {
LABEL_41:
    (*v20)(v11);
  }

LABEL_42:
  v21 = **(a1 + 72);
  if (v21 && *v21 >= 3)
  {
    v22 = *(a1 + 160);
    *(a1 + 27) = v22 > 0;
    v23 = sub_181933ECC;
    if (!*(a1 + 48))
    {
      if (v22 < 1 || (v23 = sub_181933ED8, *(a1 + 296)))
      {
        v23 = sub_18193417C;
      }
    }

    *(a1 + 288) = v23;
    (*(v21 + 80))();
  }

  return v2;
}

uint64_t sub_181933D14(uint64_t a1)
{
  v1 = *(a1 + 22);
  if (v1 >= 4 && v1 != 5)
  {
    return 0;
  }

  v3 = a1;
  if (*(a1 + 17) || (result = (*(**(a1 + 72) + 56))(*(a1 + 72), 4), v3 = a1, !result))
  {
    result = 0;
    v3[22] = 4;
  }

  else
  {
    v5 = *(a1 + 72);
    if (*v5)
    {
      if (!*(a1 + 17))
      {
        v6 = result;
        (*(*v5 + 64))(v5, v1);
        result = v6;
        v3 = a1;
      }

      if (v3[22] != 5)
      {
        v3[22] = v1;
      }
    }

    v3[23] = v3[16];
  }

  return result;
}

uint64_t sub_181933DD4(uint64_t a1, int a2)
{
  v2 = *(a1 + 22);
  if (v2 != 5 && v2 >= a2)
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    if (a2 == 4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = a1;
  v6 = a2;
  result = (*(**(a1 + 72) + 56))(*(a1 + 72));
  if (!result)
  {
    a1 = v5;
    v2 = *(v5 + 22);
    LOBYTE(a2) = v6;
    if (v6 == 4)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (v2 == 5)
    {
      return 0;
    }

LABEL_9:
    *(a1 + 22) = a2;
    return 0;
  }

  return result;
}

uint64_t sub_181933E64(uint64_t result, char a2)
{
  v2 = *(result + 72);
  if (*v2)
  {
    if (!*(result + 17))
    {
      v3 = result;
      v4 = a2;
      (*(*v2 + 64))(*(result + 72));
      a2 = v4;
      result = v3;
    }

    if (*(result + 22) != 5)
    {
      *(result + 22) = a2;
    }
  }

  *(result + 23) = *(result + 16);
  return result;
}

void sub_181933ED8(uint64_t a1, unsigned int a2, uint64_t *a3, char a4)
{
  v25 = 0;
  v4 = a2 - 1;
  if (a2 <= 1)
  {
    if (!a2)
    {

      sub_18190EDA8(71839);
      return;
    }

LABEL_8:
    sub_18193417C(a1, a2, a3, a4);
    return;
  }

  if ((a4 & 2) == 0 && *(a1 + 21) != 1)
  {
    goto LABEL_8;
  }

  if (*(a1 + 344))
  {
    v5 = a4;
    v6 = a1;
    v7 = a3;
    v8 = a2;
    if (sub_18193452C(*(a1 + 344), a2, &v25))
    {
      *v7 = 0;
      return;
    }

    a3 = v7;
    a1 = v6;
    a2 = v8;
    a4 = v5;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  v9 = a4;
  v10 = a2;
  v11 = a3;
  v24 = 0;
  v12 = a1;
  v13 = (*(**(a1 + 72) + 136))(*(a1 + 72), *(a1 + 200) * v4, *(a1 + 200), &v24);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = v24 == 0;
  }

  if (v14)
  {
    if (v13)
    {
      *v11 = 0;
      return;
    }

    a3 = v11;
    a1 = v12;
    a2 = v10;
    a4 = v9;
    goto LABEL_8;
  }

  v15 = v12;
  if (*(v12 + 21) > 1u || *(v12 + 16))
  {
    v16 = (*(&xmmword_1ED452F70 + 1))(*(*(v12 + 336) + 72));
    v15 = v12;
    if (v16)
    {
      v17 = v16;
      v18 = *(v12 + 336);
      v19 = v17[1];
      if (*v19)
      {
        ++*(v18 + 24);
        ++v19[7];
LABEL_28:
        (*(**(v15 + 72) + 144))(*(v15 + 72), *(v15 + 200) * v4, v24);
        *v11 = v19;
        return;
      }

      v19 = sub_181934878(v18, v10, v17);
      v15 = v12;
      if (v19)
      {
        goto LABEL_28;
      }
    }
  }

  v20 = v24;
  v21 = *(v15 + 168);
  if (v21)
  {
    *(v15 + 168) = v21[4];
    v21[4] = 0;
    *v21[2] = 0;
LABEL_33:
    *(v21 + 12) = v10;
    v21[1] = v20;
    ++*(v15 + 152);
    *v11 = v21;
    return;
  }

  v22 = *(v15 + 176);
  v23 = sub_181902484(v22 + 80, 0x10A00408A464A16);
  v21 = v23;
  if (v23)
  {
    bzero(v23, v22 + 80);
    v21[2] = v21 + 10;
    *(v21 + 26) = 32;
    v21[7] = 1;
    v15 = v12;
    v21[5] = v12;
    goto LABEL_33;
  }

  (*(**(v12 + 72) + 144))(*(v12 + 72), *(v12 + 200) * v4, v20);
  *v11 = 0;
}

void sub_18193417C(uint64_t a1, unsigned int a2, uint64_t *a3, char a4)
{
  if (!a2)
  {

    sub_18190EDA8(71715);
    return;
  }

  v9 = (*(&xmmword_1ED452F70 + 1))(*(*(a1 + 336) + 72));
  if (!v9)
  {
    v13 = *(a1 + 336);
    if (*(v13 + 49) == 2)
    {
      goto LABEL_57;
    }

    if (xmmword_1ED452F70(*(v13 + 72)) <= *(v13 + 36))
    {
      goto LABEL_25;
    }

    v14 = *(v13 + 16);
    if (v14)
    {
      while (*(v14 + 56) || (*(v14 + 52) & 8) != 0)
      {
        v14 = *(v14 + 72);
        if (!v14)
        {
          goto LABEL_12;
        }
      }

      *(v13 + 16) = v14;
    }

    else
    {
LABEL_12:
      *(v13 + 16) = 0;
      v15 = *(v13 + 8);
      if (!v15)
      {
        goto LABEL_25;
      }

      while (*(v15 + 56))
      {
        v15 = *(v15 + 72);
        if (!v15)
        {
          goto LABEL_25;
        }
      }
    }

    v16 = (*(v13 + 56))(*(v13 + 64));
    if (v16 != 5 && v16 != 0)
    {
      goto LABEL_57;
    }

LABEL_25:
    v9 = (*(&xmmword_1ED452F70 + 1))(*(v13 + 72));
    if (!v9)
    {
      goto LABEL_57;
    }
  }

  v10 = v9;
  v11 = *(a1 + 336);
  v12 = v10[1];
  if (*v12)
  {
    ++*(v11 + 24);
    ++*(v12 + 56);
    *a3 = v12;
    if (a4)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (*(v12 + 40))
    {
      ++*(a1 + 248);
      ++*(a1 + 264);
      return;
    }

    goto LABEL_30;
  }

  v12 = sub_181934878(v11, a2, v10);
  *a3 = v12;
  if ((a4 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_30:
  if (*(a1 + 192) == a2)
  {
    sub_18190EDA8(71750);
    goto LABEL_32;
  }

  *(v12 + 40) = a1;
  if (**(a1 + 72) && (a4 & 1) == 0 && *(a1 + 32) >= a2)
  {
    ++*(a1 + 252);
    ++*(a1 + 268);
    sub_1818A8A8C(v12);
    if (!v21)
    {
      return;
    }

    goto LABEL_32;
  }

  if (*(a1 + 188) < a2)
  {
    if (*(a1 + 32) >= a2)
    {
      sub_181932B68(v12);
      goto LABEL_57;
    }

LABEL_32:
    v18 = *(v12 + 24);
    if ((*(v12 + 52) & 2) != 0)
    {
      v19 = *(v12 + 72);
      if (*(v18 + 16) == v12)
      {
        *(v18 + 16) = v19;
      }

      v20 = *(v12 + 64);
      if (v20)
      {
        *(v20 + 72) = v19;
        if (!v19)
        {
          *v18 = v20;
          goto LABEL_56;
        }
      }

      else
      {
        *(v18 + 8) = v19;
        if (!v19)
        {
          *v18 = 0;
          *(v18 + 49) = 2;
          goto LABEL_56;
        }
      }

      *(v19 + 64) = v20;
    }

LABEL_56:
    --*(v18 + 24);
    xmmword_1ED452F80(*(v18 + 72), *v12, 1);
LABEL_57:
    if (!*(*(a1 + 336) + 24))
    {
      sub_181934964(a1);
    }

    *a3 = 0;
    return;
  }

  if (a4)
  {
    if (off_1EA831A10)
    {
      off_1EA831A10();
    }

    if (*(a1 + 36) >= a2)
    {
      sub_1818E70E0(*(a1 + 64), a2);
    }

    v22 = sub_1819348D4(a1, a2);
    if (off_1EA831A18)
    {
      off_1EA831A18(v22);
    }
  }

  bzero(*(v12 + 8), *(a1 + 200));
}

uint64_t *sub_18193449C(uint64_t a1, int a2)
{
  result = (*(&xmmword_1ED452F70 + 1))(*(*(a1 + 336) + 72));
  if (result)
  {
    v5 = result;
    result = result[1];
    if (*result)
    {
      ++*(*(a1 + 336) + 24);
      ++result[7];
    }

    else
    {
      v6 = *(a1 + 336);

      return sub_181934878(v6, a2, v5);
    }
  }

  return result;
}

uint64_t sub_18193452C(uint64_t a1, int a2, unsigned int *a3)
{
  v4 = *(a1 + 88);
  if (v4 && (*(a1 + 60) || *(a1 + 70)))
  {
    v7 = ((*(a1 + 120) + 4096) + 0xFFFFFFFF021) >> 12;
    v8 = ((v4 + 4096) + 0xFFFFFFFF021) >> 12;
    if (v8 >= v7)
    {
      v11 = (383 * a2) & 0x1FFF;
      v12 = v8;
      v13 = v7;
      while (1)
      {
        v23 = 0;
        v24 = 0;
        if (v12 < *(a1 + 40) && (v15 = *(*(a1 + 48) + 8 * v12), (v23 = v15) != 0))
        {
          result = 0;
        }

        else
        {
          result = sub_1819346F0(a1, v12, &v23);
          v15 = v23;
          if (!v23)
          {
            if (result <= 1)
            {
              return 1;
            }

            else
            {
              return result;
            }
          }
        }

        v16 = v15 + 0x4000;
        if (v12)
        {
          v17 = (v12 << 12) - 34;
          LODWORD(v24) = v17;
          if (result)
          {
            return result;
          }
        }

        else
        {
          v17 = 0;
          v15 += 136;
          v23 = v15;
          LODWORD(v24) = 0;
          if (result)
          {
            return result;
          }
        }

        v18 = *(v16 + 2 * v11);
        if (*(v16 + 2 * v11))
        {
          break;
        }

LABEL_9:
        if (v12-- <= v13)
        {
          goto LABEL_5;
        }
      }

      v9 = 0;
      v19 = v15 - 4;
      v20 = -8193;
      LOWORD(v21) = (383 * a2) & 0x1FFF;
      do
      {
        if (v17 + v18 <= v4 && v17 + v18 >= *(a1 + 120) && *(v19 + 4 * v18) == a2)
        {
          v9 = v17 + v18;
        }

        if (__CFADD__(v20++, 1))
        {
          *a3 = 0;
          return sub_18190EDA8(77762);
        }

        v21 = (v21 + 1) & 0x1FFF;
        v18 = *(v16 + 2 * v21);
      }

      while (*(v16 + 2 * v21));
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
LABEL_5:
      v9 = 0;
    }

    result = 0;
    *a3 = v9;
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t sub_1819346F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 40) <= a2)
  {
    v6 = sub_18190287C(*(a1 + 48), 8 * a2 + 8, 0x10040436913F5);
    if (!v6)
    {
      v12 = 0;
      result = 7;
      goto LABEL_22;
    }

    v7 = v6;
    bzero((v6 + 8 * *(a1 + 40)), 8 * (a2 + 1 - *(a1 + 40)));
    *(a1 + 48) = v7;
    *(a1 + 40) = a2 + 1;
  }

  if (*(a1 + 63) == 2)
  {
    v8 = sub_181902484(0x8000, 0x1000040BDFB0063);
    v9 = v8;
    if (v8)
    {
      bzero(v8, 0x8000uLL);
    }

    v10 = a2;
    *(*(a1 + 48) + 8 * a2) = v9;
    if (*(*(a1 + 48) + 8 * a2))
    {
      result = 0;
    }

    else
    {
      result = 7;
    }
  }

  else
  {
    v10 = a2;
    result = (*(**(a1 + 8) + 104))(*(a1 + 8), a2, 0x8000, *(a1 + 64), *(a1 + 48) + 8 * a2);
    if (result)
    {
      if (result == 8)
      {
        *(a1 + 66) |= 2u;
        if (result == 8)
        {
          result = 0;
        }

        else
        {
          result = result;
        }
      }
    }

    else if (a2 >= 1 && off_1ED453038 && off_1ED453038(600))
    {
      result = 7;
    }

    else
    {
      result = 0;
    }
  }

  v12 = *(*(a1 + 48) + 8 * v10);
LABEL_22:
  *a3 = v12;
  return result;
}

uint64_t sub_181934878(uint64_t a1, int a2, uint64_t *a3)
{
  result = a3[1];
  do
  {
    *(result + 48) = 0uLL;
    *(result + 64) = 0uLL;
    *(result + 32) = 0uLL;
    v5 = *a3;
    *result = a3;
    *(result + 8) = v5;
    *(result + 80) = 0;
    *(result + 16) = result + 80;
    *(result + 24) = a1;
    *(result + 48) = a2;
    *(result + 52) = 1;
    result = a3[1];
  }

  while (!*result);
  ++*(a1 + 24);
  ++*(result + 56);
  return result;
}

uint64_t sub_1819348D4(uint64_t result, unsigned int a2)
{
  v2 = *(result + 128);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(v4 + 120) + v5;
      if (*(v8 + 24) >= a2)
      {
        result = sub_1818E70E0(*(v8 + 16), a2);
        v7 |= result;
        v2 = *(v4 + 128);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t sub_181934964(uint64_t a1)
{
  v1 = *(a1 + 21);
  if (!*(a1 + 21))
  {
    goto LABEL_14;
  }

  if (v1 == 1)
  {
    if (*(a1 + 8))
    {
      goto LABEL_14;
    }

    v5 = a1;
    sub_1818CD128(a1, 0, 0);
    goto LABEL_13;
  }

  if (v1 == 6)
  {
    if (*(a1 + 9) == 4 && **(a1 + 80))
    {
      v2 = *(a1 + 48);
      v3 = *(a1 + 22);
      *(a1 + 21) = 1024;
      *(a1 + 48) = 0;
      v4 = a1;
      sub_1818F84EC(a1, 1);
      a1 = v4;
      *(v4 + 48) = v2;
      *(v4 + 22) = v3;
    }

    goto LABEL_14;
  }

  if (off_1EA831A10)
  {
    v6 = a1;
    off_1EA831A10();
    a1 = v6;
  }

  v5 = a1;
  sub_1818E34C8(a1);
  a1 = v5;
  if (off_1EA831A18)
  {
    off_1EA831A18(v5);
LABEL_13:
    a1 = v5;
  }

LABEL_14:

  return sub_1818CD8F0(a1);
}

uint64_t sub_181934A54(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 72);
  if (*(v1 + 16) == result)
  {
    *(v1 + 16) = v2;
    v3 = *(result + 64);
    if (v3)
    {
LABEL_3:
      *(v3 + 72) = v2;
      if (!v2)
      {
        *v1 = v3;
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(result + 64);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v2;
  if (v2)
  {
LABEL_7:
    *(v2 + 64) = v3;
    goto LABEL_8;
  }

  *v1 = 0;
  *(v1 + 49) = 2;
LABEL_8:
  *(result + 52) = *(result + 52) & 0xFFF0 | 1;
  if (!*(result + 56))
  {
    if (*(v1 + 48))
    {
      return xmmword_1ED452F80(*(v1 + 72), *result, 0);
    }
  }

  return result;
}

uint64_t sub_181934AE8(uint64_t a1, int8x8_t *a2, unint64_t a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v38 = 0;
  a2->i8[0] = 0;
  result = (*(*a1 + 48))(a1, &v38);
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = v38 < 16;
  }

  if (v7)
  {
    return result;
  }

  result = (*(*a1 + 16))(a1, v39, 4, v38 - 16);
  if (result)
  {
    return result;
  }

  v8 = bswap32(v39[0]);
  if (v8 >= a3)
  {
    return 0;
  }

  if (!v8 || v38 - 16 < v8)
  {
    return 0;
  }

  result = (*(*a1 + 16))(a1, v39, 4, v38 - 12);
  if (result)
  {
    return result;
  }

  v10 = v39[0];
  result = (*(*a1 + 16))(a1, v39, 8, v38 - 8);
  if (result)
  {
    return result;
  }

  if (v39[0] != 0xD763A120F905D5D9)
  {
    return 0;
  }

  result = (*(*a1 + 16))(a1, a2, v8, v38 - v8 - 16);
  if (result)
  {
    return result;
  }

  v12 = bswap32(v10);
  if (v8 < 4)
  {
    v13 = 0;
    goto LABEL_29;
  }

  if (v8 >= 0x20)
  {
    v13 = v8 & 0xFFFFFFE0;
    v14 = 0uLL;
    v15 = v12;
    v16 = a2 + 2;
    v17 = v13;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    do
    {
      v24 = *v16[-2].i8;
      v25 = vmovl_s8(*v24.i8);
      v26 = vmovl_high_s8(v24);
      v27 = vmovl_s8(*v16);
      v28 = vmovl_high_s8(*v16->i8);
      v19 = vsubw_high_s16(v19, v26);
      v18 = vsubw_s16(v18, *v26.i8);
      v14 = vsubw_high_s16(v14, v25);
      v15 = vsubw_s16(v15, *v25.i8);
      v23 = vsubw_high_s16(v23, v28);
      v22 = vsubw_s16(v22, *v28.i8);
      v21 = vsubw_high_s16(v21, v27);
      v20 = vsubw_s16(v20, *v27.i8);
      v16 += 4;
      v17 -= 32;
    }

    while (v17);
    v11 = vaddq_s32(vaddq_s32(v21, v14), vaddq_s32(v23, v19));
    v12 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v20, v15), vaddq_s32(v22, v18)), v11));
    if (v13 == v8)
    {
      goto LABEL_31;
    }

    if ((v8 & 0x1C) == 0)
    {
LABEL_29:
      v34 = a2 + v13;
      v35 = v8 - v13;
      do
      {
        v36 = *v34++;
        v12 -= v36;
        --v35;
      }

      while (v35);
      goto LABEL_31;
    }
  }

  else
  {
    v13 = 0;
  }

  v29 = v13;
  v13 = v8 & 0xFFFFFFFC;
  v30 = v12;
  v31 = (a2 + v29);
  v32 = v29 - v13;
  do
  {
    v33 = *v31++;
    v11.i32[0] = v33;
    v11.i64[0] = vmovl_s8(*v11.i8).u64[0];
    v30 = vsubw_s16(v30, *v11.i8);
    v32 += 4;
  }

  while (v32);
  v12 = vaddvq_s32(v30);
  if (v13 != v8)
  {
    goto LABEL_29;
  }

LABEL_31:
  result = 0;
  if (v12)
  {
    v37 = 0;
  }

  else
  {
    v37 = v8;
  }

  a2->i8[v37] = 0;
  a2->i8[v37 + 1] = 0;
  return result;
}

uint64_t sub_181934D80(uint64_t result)
{
  ++*(result + 132);
  for (i = *(result + 112); i; i = *(i + 64))
  {
    *(i + 24) = 1;
  }

  v2 = *(result + 336);
  if (v2[9])
  {
    v3 = *v2;
    if (*v2)
    {
      while (1)
      {
        v4 = v3;
        v3 = *(v3 + 64);
        if (*(v4 + 48))
        {
          break;
        }

LABEL_6:
        if (!v3)
        {
          goto LABEL_19;
        }
      }

      v5 = *(v4 + 24);
      v6 = *(v4 + 72);
      if (*(v5 + 16) == v4)
      {
        *(v5 + 16) = v6;
        if (v3)
        {
LABEL_10:
          *(v3 + 72) = v6;
          if (!v6)
          {
            *v5 = v3;
LABEL_15:
            *(v4 + 52) = *(v4 + 52) & 0xFFF0 | 1;
            if (!*(v4 + 56) && *(v5 + 48))
            {
              xmmword_1ED452F80(*(v5 + 72), *v4, 0);
            }

            goto LABEL_6;
          }

LABEL_14:
          *(v6 + 64) = v3;
          goto LABEL_15;
        }
      }

      else if (v3)
      {
        goto LABEL_10;
      }

      *(v5 + 8) = v6;
      if (!v6)
      {
        *v5 = 0;
        *(v5 + 49) = 2;
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_19:
    if (v2[3])
    {
      v7 = 1;
      v8 = (*(&xmmword_1ED452F70 + 1))(v2[9]);
      if (v8)
      {
        bzero(*v8, *(v2 + 10));
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }

    v9 = xmmword_1ED452F90;
    v10 = v2[9];

    return v9(v10, v7);
  }

  return result;
}

uint64_t sub_181934EEC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = (*(*a1 + 16))(a1, &v5, 4, a2);
  if (!result)
  {
    *a3 = bswap32(v5);
  }

  return result;
}

uint64_t sub_181934F3C(uint64_t result)
{
  v1 = *(result + 52);
  if ((v1 & 0x11) != 0)
  {
    *(result + 52) = v1 & 0xFFEF;
    if (v1)
    {
      *(result + 52) = v1 & 0xFFEF ^ 3;
      v2 = *(result + 24);
      v3 = *v2;
      *(result + 64) = *v2;
      *(result + 72) = 0;
      if (v3)
      {
        *(v3 + 72) = result;
      }

      else
      {
        v2[1] = result;
        if (*(v2 + 48))
        {
          *(v2 + 49) = 1;
        }
      }

      *v2 = result;
      if ((v1 & 8) == 0 && !v2[2])
      {
        v2[2] = result;
      }
    }
  }

  return result;
}

uint64_t sub_181934FA4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  do
  {
    v6 = *(v5 + 48);
    v7 = v6 > 6;
    v8 = (1 << v6) & 0x61;
    v9 = v7 || v8 == 0;
    if (!v9 && *(v5 + 24) > a2)
    {
      v10 = *(*v5 + 24);
      if (v10)
      {
        xmmword_1ED452F18(v10);
      }

      v11 = sub_181908B38(v5, a2, a3, 1);
      result = *(*v5 + 24);
      if (result)
      {
        result = xmmword_1ED452F28(result);
      }

      if (v11)
      {
        *(v5 + 48) = v11;
      }
    }

    v5 = *(v5 + 64);
  }

  while (v5);
  return result;
}

uint64_t sub_181935070(uint64_t result, char a2)
{
  if (*(result + 16))
  {
    v2 = 0;
    *(result + 11) = 1;
    *(result + 13) = 0;
LABEL_4:
    v3 = 0;
    *(result + 14) = 0;
    v4 = 1;
    goto LABEL_5;
  }

  v2 = (a2 & 7u) > 2;
  *(result + 12) = v2;
  *(result + 13) = (a2 & 7) == 4;
  *(result + 11) = (a2 & 7) == 1;
  if ((a2 & 7) == 1)
  {
    goto LABEL_4;
  }

  v4 = 0;
  if ((a2 & 8) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *(result + 14) = v3;
LABEL_5:
  v5 = 4 * v3;
  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if ((a2 & 0x10) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 12;
  }

  *(result + 15) = v8 | v6;
  v9 = *(result + 25) & 0xFE;
  if ((a2 & 0x20) == 0)
  {
    ++v9;
  }

  *(result + 25) = v9;
  return result;
}

unint64_t sub_181935120(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (qword_1EA8319E8 <= result && xmmword_1EA8319F0 > result)
  {
    result = *(&xmmword_1EA8319F0 + 1);
    if (*(&xmmword_1EA8319F0 + 1))
    {
      xmmword_1ED452F18(*(&xmmword_1EA8319F0 + 1));
      result = *(&xmmword_1EA8319F0 + 1);
    }

    --qword_1ED456A50;
    *v1 = qword_1EA831A00;
    qword_1EA831A00 = v1;
    dword_1EA831A0C = ++dword_1EA831A08 < dword_1EA8319E4;
    if (result)
    {
      v4 = &xmmword_1ED452F28;
LABEL_21:
      v5 = *v4;

      return v5(result);
    }
  }

  else
  {
    v3 = xmmword_1ED452EC0(result);
    if (*(&xmmword_1EA8319F0 + 1))
    {
      xmmword_1ED452F18(*(&xmmword_1EA8319F0 + 1));
      qword_1ED456A58 -= v3;
      if (*(&xmmword_1EA8319F0 + 1))
      {
        xmmword_1ED452F28(*(&xmmword_1EA8319F0 + 1));
      }
    }

    else
    {
      qword_1ED456A58 -= v3;
    }

    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      result = v1;
      goto LABEL_21;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v1);
    --qword_1ED456A90;
    off_1ED452EB0(v1);
    result = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_1819352D4(int a1)
{
  if (SHIDWORD(xmmword_1EA8319D0) < a1)
  {
    goto LABEL_12;
  }

  if (*(&xmmword_1EA8319F0 + 1))
  {
    xmmword_1ED452F18(*(&xmmword_1EA8319F0 + 1));
  }

  v2 = qword_1EA831A00;
  if (qword_1EA831A00)
  {
    qword_1EA831A00 = *qword_1EA831A00;
    v3 = dword_1EA831A08--;
    dword_1EA831A0C = v3 <= dword_1EA8319E4;
    if (qword_1ED456AD0 < a1)
    {
      qword_1ED456AD0 = a1;
    }

    v4 = qword_1ED456A50;
    v5 = ++qword_1ED456A50;
    if (v4 >= qword_1ED456AA0)
    {
      qword_1ED456AA0 = v5;
    }
  }

  if (*(&xmmword_1EA8319F0 + 1))
  {
    xmmword_1ED452F28(*(&xmmword_1EA8319F0 + 1));
  }

  if (!v2)
  {
LABEL_12:
    v6 = sub_181902484(a1, 2832602123);
    v2 = v6;
    if (v6)
    {
      v7 = xmmword_1ED452EC0(v6);
      if (*(&xmmword_1EA8319F0 + 1))
      {
        xmmword_1ED452F18(*(&xmmword_1EA8319F0 + 1));
      }

      if (qword_1ED456AD0 < a1)
      {
        qword_1ED456AD0 = a1;
      }

      v8 = qword_1ED456A58 + v7;
      qword_1ED456A58 = v8;
      if (v8 > qword_1ED456AA8)
      {
        qword_1ED456AA8 = v8;
      }

      if (*(&xmmword_1EA8319F0 + 1))
      {
        xmmword_1ED452F28(*(&xmmword_1EA8319F0 + 1));
      }
    }
  }

  return v2;
}

uint64_t sub_181935454(uint64_t a1, int a2)
{
  v2 = *(a1 + 72);
  *(a1 + 11) = *(v2 + 37);
  if (a2 < 10)
  {
    *(a1 + 10) = 4;
    *(a1 + 8) = 0;
    if (a2 == 5)
    {
      *(a1 + 120) = sub_181935A90;
      *(a1 + 128) = sub_181935AB4;
      v3 = 1;
      goto LABEL_11;
    }

    if (a2 != 2)
    {
      *(a1 + 1) = 0;
      *(a1 + 120) = sub_1818D9150;
      *(a1 + 128) = sub_181935864;
      return sub_18193596C(81336, a1);
    }

    *(a1 + 1) = 0;
    v4 = sub_1818D9150;
LABEL_9:
    *(a1 + 120) = v4;
    *(a1 + 128) = sub_181935864;
    v5 = *(v2 + 42);
LABEL_12:
    *(a1 + 14) = v5;
    return 0;
  }

  *(a1 + 10) = 0;
  *(a1 + 8) = 1;
  if (a2 == 10)
  {
    *(a1 + 1) = 0;
    v4 = sub_181935748;
    goto LABEL_9;
  }

  if (a2 == 13)
  {
    *(a1 + 120) = sub_1819355AC;
    *(a1 + 128) = sub_1818C7030;
    v3 = 257;
LABEL_11:
    *(a1 + 1) = v3;
    v5 = *(v2 + 46);
    goto LABEL_12;
  }

  *(a1 + 1) = 0;
  *(a1 + 120) = sub_181935748;
  *(a1 + 128) = sub_181935864;
  return sub_18193596C(81312, a1);
}

uint64_t sub_1819355AC(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2 < 0)
  {
    v3 = a2 + 1;
    v4 = a2[1] & 0x7F | ((v2 & 0x7F) << 7);
    if ((a2[1] & 0x80) == 0)
    {
LABEL_3:
      v2 = v4;
      goto LABEL_6;
    }

    v3 = a2 + 2;
    v2 = a2[2] & 0x7F | (v4 << 7);
    if (a2[2] < 0)
    {
      v3 = a2 + 3;
      v2 = a2[3] & 0x7F | (v2 << 7);
      if (a2[3] < 0)
      {
        v3 = a2 + 4;
        v4 = a2[4] & 0x7F | (v2 << 7);
        if ((a2[4] & 0x80) == 0)
        {
          goto LABEL_3;
        }

        v3 = a2 + 5;
        v2 = a2[5] & 0x7F | (v4 << 7);
        if (a2[5] < 0)
        {
          v3 = a2 + 6;
          v4 = a2[6] & 0x7F | (v2 << 7);
          if ((a2[6] & 0x80) == 0)
          {
            goto LABEL_3;
          }

          v3 = a2 + 7;
          v2 = a2[7] & 0x7F | (v4 << 7);
          if (a2[7] < 0)
          {
            v3 = a2 + 8;
            v4 = a2[8] & 0x7F | (v2 << 7);
            goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_6:
  if (v3[1] < 0)
  {
    if (v3[2] < 0)
    {
      if (v3[3] < 0)
      {
        if (v3[4] < 0)
        {
          if (v3[5] < 0)
          {
            if (v3[6] < 0)
            {
              if (v3[7] < 0)
              {
                v6 = 9;
                if (v3[8] < 0)
                {
                  v6 = 10;
                }

                v5 = v3 + v6;
              }

              else
              {
                v5 = v3 + 8;
              }
            }

            else
            {
              v5 = v3 + 7;
            }
          }

          else
          {
            v5 = v3 + 6;
          }
        }

        else
        {
          v5 = v3 + 5;
        }
      }

      else
      {
        v5 = v3 + 4;
      }
    }

    else
    {
      v5 = v3 + 3;
    }
  }

  else
  {
    v5 = v3 + 2;
  }

  v7 = *(a1 + 14);
  if (v2 <= v7)
  {
    v10 = v2 + v5 - a2;
    if (v10 <= 4)
    {
      LOWORD(v10) = 4;
    }

    return v10;
  }

  else
  {
    v8 = (v2 - *(a1 + 16)) % (*(*(a1 + 72) + 56) - 4) + *(a1 + 16);
    if (v8 > v7)
    {
      LOWORD(v8) = *(a1 + 16);
    }

    return (v5 - a2 + v8 + 4);
  }
}

uint64_t sub_181935748(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2 < 0)
  {
    v3 = a2 + 1;
    v4 = a2[1] & 0x7F | ((v2 & 0x7F) << 7);
    if ((a2[1] & 0x80) == 0)
    {
LABEL_3:
      v2 = v4;
      goto LABEL_6;
    }

    v3 = a2 + 2;
    v2 = a2[2] & 0x7F | (v4 << 7);
    if (a2[2] < 0)
    {
      v3 = a2 + 3;
      v2 = a2[3] & 0x7F | (v2 << 7);
      if (a2[3] < 0)
      {
        v3 = a2 + 4;
        v4 = a2[4] & 0x7F | (v2 << 7);
        if ((a2[4] & 0x80) == 0)
        {
          goto LABEL_3;
        }

        v3 = a2 + 5;
        v2 = a2[5] & 0x7F | (v4 << 7);
        if (a2[5] < 0)
        {
          v3 = a2 + 6;
          v4 = a2[6] & 0x7F | (v2 << 7);
          if ((a2[6] & 0x80) == 0)
          {
            goto LABEL_3;
          }

          v3 = a2 + 7;
          v2 = a2[7] & 0x7F | (v4 << 7);
          if (a2[7] < 0)
          {
            v3 = a2 + 8;
            v4 = a2[8] & 0x7F | (v2 << 7);
            goto LABEL_3;
          }
        }
      }
    }
  }

LABEL_6:
  v5 = v3 + 1;
  v6 = *(a1 + 14);
  if (v2 <= v6)
  {
    v9 = v2 + v5 - a2;
    if (v9 <= 4)
    {
      LOWORD(v9) = 4;
    }

    return v9;
  }

  else
  {
    v7 = (v2 - *(a1 + 16)) % (*(*(a1 + 72) + 56) - 4) + *(a1 + 16);
    if (v7 > v6)
    {
      LOWORD(v7) = *(a1 + 16);
    }

    return (v5 - a2 + v7 + 4);
  }
}

uint64_t sub_181935864(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a2 + *(result + 10));
  v4 = *v3;
  if (*v3 < 0)
  {
    v5 = (v3 + 1);
    v6 = v3[1] & 0x7F | ((v4 & 0x7F) << 7);
    if ((v3[1] & 0x80) == 0)
    {
LABEL_3:
      v4 = v6;
      v3 = v5;
      goto LABEL_8;
    }

    v7 = (v3 + 2);
    v4 = v3[2] & 0x7F | (v6 << 7);
    if ((v3[2] & 0x80) == 0)
    {
      goto LABEL_5;
    }

    v4 = v3[3] & 0x7F | (v4 << 7);
    if (v3[3] < 0)
    {
      v5 = (v3 + 4);
      v6 = v3[4] & 0x7F | (v4 << 7);
      if ((v3[4] & 0x80) == 0)
      {
        goto LABEL_3;
      }

      v7 = (v3 + 5);
      v4 = v3[5] & 0x7F | (v6 << 7);
      if ((v3[5] & 0x80) == 0)
      {
        goto LABEL_5;
      }

      v5 = (v3 + 6);
      v6 = v3[6] & 0x7F | (v4 << 7);
      if ((v3[6] & 0x80) == 0)
      {
        goto LABEL_3;
      }

      v7 = (v3 + 7);
      v4 = v3[7] & 0x7F | (v6 << 7);
      if ((v3[7] & 0x80) == 0)
      {
LABEL_5:
        v3 = v7;
        goto LABEL_8;
      }

      v10 = v3[8];
      v3 += 8;
      v4 = v10 & 0x7F | (v4 << 7);
    }

    else
    {
      v3 += 3;
    }
  }

LABEL_8:
  v8 = (v3 + 1);
  *(a3 + 16) = v4;
  *a3 = v4;
  *(a3 + 8) = v8;
  if (v4 > *(result + 14))
  {
    return sub_181935AF8(result, a2, a3);
  }

  v9 = v4 + v8 - a2;
  if ((v9 & 0xFFFC) == 0)
  {
    v9 = 4;
  }

  *(a3 + 22) = v9;
  *(a3 + 20) = v4;
  return result;
}

uint64_t sub_18193596C(int a1, uint64_t a2)
{
  if (off_1EA831A10)
  {
    off_1EA831A10();
  }

  v4 = sqlite3_mprintf("database corruption page %u of %s", *(a2 + 4), *(**(a2 + 72) + 216));
  v5 = v4;
  if (off_1EA831A18)
  {
    off_1EA831A18(v4);
  }

  if (v5)
  {
    sub_18192AF88(11, a1, v5);
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_11:
      (*v6)(v5);
      goto LABEL_12;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
      goto LABEL_11;
    }
  }

LABEL_12:

  return sub_18190EDA8(79380);
}

uint64_t sub_181935A90(uint64_t a1, uint64_t a2)
{
  v2 = 4;
  do
  {
    v3 = v2 + 1;
    if (v2 > 0xB)
    {
      break;
    }

    v4 = *(a2 + v2++);
  }

  while (v4 < 0);
  return v3;
}

uint64_t sub_181935AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1818C7200((a2 + 4), a3);
  *(a3 + 22) = (result + 4);
  *(a3 + 16) = 0;
  *(a3 + 20) = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_181935AF8(uint64_t result, __int16 a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (((*(a3 + 16) - v3) % (*(*(result + 72) + 56) - 4) + v3) <= *(result + 14))
  {
    LOWORD(v3) = (*(a3 + 16) - v3) % (*(*(result + 72) + 56) - 4) + v3;
  }

  *(a3 + 20) = v3;
  *(a3 + 22) = *(a3 + 8) + v3 - a2 + 4;
  return result;
}

uint64_t sub_181935B44(int a1, char *__s, void *a3, int a4, int *a5)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (__s)
  {
    v9 = strlen(__s) & 0x3FFFFFFF;
    if (v9 >= 2)
    {
      v10 = *__s;
      if (v10 == 92 || v10 == 47)
      {
        if (word_1ED452E84 && (v11 = qword_1ED452F08(11)) != 0)
        {
          v27 = v11;
          xmmword_1ED452F18(v11);
          v26 = 0;
        }

        else
        {
          v27 = 0;
          v26 = 1;
        }

        v17 = dword_1EA831970;
        if (dword_1EA831970 >= 1)
        {
          v18 = qword_1EA831978;
          while (1)
          {
            v13 = *v18;
            if (!strcmp(*(*v18 + 64), __s))
            {
              break;
            }

            v18 += 8;
            if (!--v17)
            {
              goto LABEL_21;
            }
          }

          v23 = v13[4];
          if (v23)
          {
            xmmword_1ED452F18(v23);
          }

          ++*(v13 + 14);
          goto LABEL_29;
        }

LABEL_21:
        v19 = sub_181902484(v9 + 75, 0x1030040056CE0ADLL);
        if (v19)
        {
          v13 = v19;
          v20 = sub_18190287C(qword_1EA831978, 8 * dword_1EA831970 + 8, 0x2004093837F09);
          if (!v20)
          {
            v24 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
              --qword_1ED456A90;
              off_1ED452EB0(v13);
              v13 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_37;
              }

              v24 = &xmmword_1ED452F28;
            }

            (*v24)(v13);
            goto LABEL_37;
          }

          v21 = dword_1EA831970++;
          *(v20 + 8 * v21) = v13;
          qword_1EA831978 = v20;
          *(v13 + 2) = 0u;
          *(v13 + 3) = 0u;
          v13[8] = 0;
          *v13 = 0u;
          *(v13 + 1) = 0u;
          *(v13 + 11) = 3;
          v13[2] = qword_1ED453030;
          v13[8] = v13 + 9;
          memcpy(v13 + 9, __s, v9 + 1);
          v22 = sqlite3_initialize();
          if (v22)
          {
            v13[4] = 0;
          }

          else
          {
            v25 = qword_1ED452F08(v22);
            v13[4] = v25;
            if (v25)
            {
              *(v13 + 14) = 1;
              xmmword_1ED452F18(v25);
LABEL_29:
              if ((v26 & 1) == 0)
              {
                xmmword_1ED452F28(v27);
              }

              goto LABEL_10;
            }
          }

          --dword_1EA831970;
          sqlite3_free(v13);
        }

LABEL_37:
        v14 = 7;
        v15 = v27;
        if (v26)
        {
          return v14;
        }

        goto LABEL_13;
      }
    }
  }

  v12 = sub_181902484(72, 0x1030040056CE0ADLL);
  if (!v12)
  {
    return 7;
  }

  v13 = v12;
  *(v12 + 64) = 0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 44) = 3;
  *(v12 + 16) = qword_1ED453030;
LABEL_10:
  a3[1] = v13;
  if (a5)
  {
    *a5 = a4 | 0x80;
  }

  v14 = 0;
  *a3 = &unk_1EEF8FEB8;
  v15 = v13[4];
  if (v15)
  {
LABEL_13:
    xmmword_1ED452F28(v15);
  }

  return v14;
}

uint64_t sub_181935F24(uint64_t a1, int a2)
{
  v4 = *(a1 + 128);
  v5 = sub_18190287C(*(a1 + 120), 56 * a2, 0x102004025EF6E7BLL);
  if (v5)
  {
    v6 = v5;
    bzero((v5 + 56 * v4), 56 * (a2 - v4));
    *(a1 + 120) = v6;
    if (a2 <= v4)
    {
      return 0;
    }

    v7 = v4 + 1;
    for (i = (v6 + 56 * v4 + 24); ; i += 14)
    {
      v9 = *(a1 + 32);
      *i = v9;
      if (!**(a1 + 80) || (v10 = *(a1 + 96), v10 <= 0))
      {
        v10 = *(a1 + 184);
      }

      *(i - 3) = v10;
      i[1] = *(a1 + 60);
      v11 = sub_181902484(512, 0x102204086A6B74CLL);
      if (!v11)
      {
        break;
      }

      v11[30] = 0u;
      v11[31] = 0u;
      v11[28] = 0u;
      v11[29] = 0u;
      v11[26] = 0u;
      v11[27] = 0u;
      v11[24] = 0u;
      v11[25] = 0u;
      v11[22] = 0u;
      v11[23] = 0u;
      v11[20] = 0u;
      v11[21] = 0u;
      v11[18] = 0u;
      v11[19] = 0u;
      v11[16] = 0u;
      v11[17] = 0u;
      v11[14] = 0u;
      v11[15] = 0u;
      v11[12] = 0u;
      v11[13] = 0u;
      v11[10] = 0u;
      v11[11] = 0u;
      v11[8] = 0u;
      v11[9] = 0u;
      v11[6] = 0u;
      v11[7] = 0u;
      v11[4] = 0u;
      v11[5] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      *v11 = 0u;
      v11[1] = 0u;
      *v11 = v9;
      *(i - 1) = v11;
      i[2] = 1;
      v12 = *(a1 + 344);
      if (v12)
      {
        i[3] = v12[22];
        i[4] = v12[24];
        i[5] = v12[25];
        i[6] = v12[34];
      }

      *(a1 + 128) = v7++;
      if (v7 - a2 == 1)
      {
        return 0;
      }
    }

    *(i - 1) = 0;
    i[2] = 1;
  }

  return 7;
}

uint64_t sub_1819360C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 32);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 48);
  v5 = v1[15];
  v6 = (v5 + 88);
  for (i = v2 - 2; ; --i)
  {
    v8 = v5 + 56 * v3;
    if (*(v8 + 24) < v4)
    {
      goto LABEL_4;
    }

    v9 = *(v8 + 16);
    if (v4 - 1 >= *v9)
    {
      goto LABEL_19;
    }

    v10 = v4 - 1;
    while (1)
    {
      v11 = v9[2];
      if (!v11)
      {
        break;
      }

      v12 = v10 / v11;
      v10 %= v11;
      v9 = *&v9[2 * v12 + 4];
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    if (*v9 > 0xF80u)
    {
      break;
    }

    if (((*(v9 + (v10 >> 3) + 16) >> (v10 & 7)) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_4:
    ++v3;
    v6 += 14;
    if (v3 == v2)
    {
      return 0;
    }
  }

  v13 = v10 % 0x7C;
  v14 = v9 + 4;
  v15 = v14[v10 % 0x7C];
  if (v15)
  {
    v16 = v10 + 1;
    while (v15 != v16)
    {
      if (v13 == 123)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      v15 = v14[v13];
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_4;
  }

LABEL_19:
  if (v3 + 1 < v2)
  {
    v17 = v3 + 1;
    v18 = (v2 - 2 - v3);
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18 + 1;
    v17 += v19 & 0x1FFFFFFFELL;
    v20 = (i + 1) & 0x1FFFFFFFELL;
    do
    {
      *v6 = 0;
      v6[14] = 0;
      v6 += 28;
      v20 -= 2;
    }

    while (v20);
    if (v19 != (v19 & 0x1FFFFFFFELL))
    {
LABEL_24:
      v21 = (v5 + 56 * v17 + 32);
      do
      {
        *v21 = 0;
        v21 += 14;
        LODWORD(v17) = v17 + 1;
      }

      while (v2 > v17);
    }
  }

  v22 = *(v1 + 9);
  if (v22 == 2)
  {
LABEL_27:
    ++*(v1 + 15);
    if (v2 >= 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = v1[15] + v23;
        if (*(v26 + 24) >= v4)
        {
          v25 = sub_1818E70E0(*(v26 + 16), v4) | v25;
          LODWORD(v2) = *(v1 + 32);
        }

        ++v24;
        v23 += 56;
      }

      while (v24 < v2);
      return v25;
    }

    return 0;
  }

  v27 = v1[11];
  if (!*v27)
  {
    if (v22 == 4 || *(v1 + 26))
    {
      v28 = *v1;
      *(v27 + 48) = 0u;
      *(v27 + 64) = 0u;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0u;
      *v27 = 0u;
      v29 = 1016;
      v30 = -1;
      goto LABEL_37;
    }

    v30 = dword_1ED452E9C;
    v28 = *v1;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *v27 = 0u;
    if (v30)
    {
      if (v30 <= 0)
      {
        v29 = 1016;
      }

      else
      {
        v29 = v30;
      }

LABEL_37:
      *v27 = &unk_1EEF8FF50;
      *(v27 + 8) = v29;
      *(v27 + 12) = v30;
      *(v27 + 56) = 8222;
      *(v27 + 64) = v28;
      *(v27 + 72) = 0;
    }

    else
    {
      v41 = a1;
      v25 = (*(v28 + 40))(v28, 0);
      a1 = v41;
      if (v25)
      {
        return v25;
      }
    }
  }

  v31 = *(a1 + 8);
  v32 = *(v1 + 15);
  v33 = v1[25];
  if (*(v1 + 26) || (v39 = v1[37]) == 0 || (v25 = 7, v40 = a1, v31 = v39(v1[40], v31, *(a1 + 48), 7), a1 = v40, v31))
  {
    v34 = (v33 + 4) * v32;
    v35 = v1[11];
    v36 = a1;
    v42 = bswap32(*(a1 + 48));
    v37 = (*(*v35 + 24))(v35, &v42, 4, v34);
    if (!v37)
    {
      v37 = (*(*v1[11] + 24))(v1[11], v31, *(v1 + 50), v34 + 4);
      if (!v37)
      {
        v4 = *(v36 + 48);
        LODWORD(v2) = *(v1 + 32);
        goto LABEL_27;
      }
    }

    return v37;
  }

  return v25;
}

uint64_t sub_181936438(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 184) / *(v1 + 200);
  *(v1 + 25) |= 4u;
  v3 = *(a1 + 48);
  v4 = (v3 - 1) & -v2;
  v5 = *(v1 + 32);
  if (v4 + v2 > v5)
  {
    LODWORD(v2) = v5 - v4;
  }

  if (v3 > v5)
  {
    v6 = v3 - v4;
  }

  else
  {
    v6 = v2;
  }

  if (v6 < 1)
  {
    v16 = 0;
    goto LABEL_56;
  }

  v8 = 0;
  v9 = 0;
  v10 = v4 + 1;
  do
  {
    v11 = (v9 + v10);
    v36 = 0;
    if (v11 == *(a1 + 48))
    {
      goto LABEL_13;
    }

    v12 = *(v1 + 64);
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v9 + v4;
    if ((v9 + v4) >= *v12)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v14 = v12[2];
      if (!v14)
      {
        break;
      }

      v15 = v13 / v14;
      v13 %= v14;
      v12 = *&v12[2 * v15 + 4];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    if (*v12 >= 0xF81u)
    {
      v24 = v13 % 0x7C;
      v25 = v12 + 4;
      v26 = v25[v13 % 0x7C];
      if (!v26)
      {
        goto LABEL_13;
      }

      v27 = v13 + 1;
      while (v26 != v27)
      {
        if (v24 == 123)
        {
          v24 = 0;
        }

        else
        {
          ++v24;
        }

        v26 = v25[v24];
        if (!v26)
        {
          goto LABEL_13;
        }
      }

LABEL_26:
      v21 = (*(&xmmword_1ED452F70 + 1))(*(*(v1 + 336) + 72));
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + 8);
        if (*v23)
        {
          ++*(*(v1 + 336) + 24);
          ++*(v23 + 56);
          v36 = v23;
LABEL_38:
          v28 = *(v23 + 52);
          if ((v28 & 8) != 0)
          {
            v8 = 1;
          }

          if ((v28 & 0x20) != 0)
          {
            v29 = *(v23 + 40);
            --*(v29 + 152);
            *(v23 + 32) = *(v29 + 168);
            *(v29 + 168) = v23;
            (*(**(v29 + 72) + 144))(*(v29 + 72), *(v29 + 200) * (*(v23 + 48) - 1), *(v23 + 8));
          }

          else
          {
            sub_181932B68(v23);
          }

          goto LABEL_14;
        }

        v23 = sub_181934878(*(v1 + 336), v9 + v10, v22);
        v36 = v23;
        if (v23)
        {
          goto LABEL_38;
        }
      }

LABEL_14:
      v16 = 0;
      goto LABEL_21;
    }

    if ((*(v12 + (v13 >> 3) + 16) >> (v13 & 7)))
    {
      goto LABEL_26;
    }

LABEL_13:
    if (v11 == *(v1 + 192))
    {
      goto LABEL_14;
    }

    v17 = (*(v1 + 288))(v1, v11, &v36, 0);
    if (v17)
    {
      v16 = v17;
      goto LABEL_56;
    }

    v16 = sub_1818D8DD8(v36);
    v18 = v36;
    v19 = *(v36 + 52);
    if ((v19 & 8) != 0)
    {
      v8 = 1;
    }

    if ((v19 & 0x20) != 0)
    {
      v20 = *(v36 + 40);
      --*(v20 + 152);
      *(v18 + 32) = *(v20 + 168);
      *(v20 + 168) = v18;
      (*(**(v20 + 72) + 144))(*(v20 + 72), *(v20 + 200) * (*(v18 + 48) - 1), *(v18 + 8));
    }

    else
    {
      sub_181932B68(v36);
    }

LABEL_21:
    ++v9;
  }

  while (v9 < v6 && !v16);
  if (!v16 && v8)
  {
    do
    {
      v30 = (*(&xmmword_1ED452F70 + 1))(*(*(v1 + 336) + 72));
      if (v30)
      {
        v31 = v30;
        v32 = *(v30 + 8);
        if (*v32)
        {
          ++*(*(v1 + 336) + 24);
          ++*(v32 + 56);
LABEL_52:
          v33 = *(v32 + 52);
          *(v32 + 52) = v33 | 8;
          if ((v33 & 0x20) != 0)
          {
            v34 = *(v32 + 40);
            --*(v34 + 152);
            *(v32 + 32) = *(v34 + 168);
            *(v34 + 168) = v32;
            (*(**(v34 + 72) + 144))(*(v34 + 72), *(v34 + 200) * (*(v32 + 48) - 1), *(v32 + 8));
          }

          else
          {
            sub_181932B68(v32);
          }

          goto LABEL_47;
        }

        v32 = sub_181934878(*(v1 + 336), v10, v31);
        if (v32)
        {
          goto LABEL_52;
        }
      }

LABEL_47:
      ++v10;
      --v6;
    }

    while (v6);
  }

LABEL_56:
  *(v1 + 25) &= ~4u;
  return v16;
}

uint64_t sub_1819367F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 96);
  v4 = *(v2 + 296);
  if (v4)
  {
    v5 = v4(*(v2 + 320), *(a1 + 8), *(a1 + 48), 7);
    if (!v5)
    {
      return 7;
    }
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v7 = *(v2 + 56);
  v8 = (*(v2 + 200) - 200);
  if (v8 >= 1)
  {
    v9 = v8 - 200;
    if (v8 < 0xC8)
    {
      v9 = 0;
    }

    if (v9 < 0xAF1)
    {
      v10 = (*(v2 + 200) - 200);
      goto LABEL_21;
    }

    v11 = (((v9 + 199) * 0x147AE147AE147AFuLL) >> 64) + 1;
    if (v9 >= 0x1771)
    {
      v141 = (((v9 + 199) * 0x147AE147AE147AFuLL) >> 64) + 1;
      v45 = v11 & 0x3FFFFE0;
      v46 = 0uLL;
      v47 = (v5 + v8);
      v48 = *(v2 + 56);
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v140 = v45;
      do
      {
        _X4 = v47 - 7400;
        _X5 = v47 - 6600;
        _X3 = v47 - 6400;
        __asm
        {
          PRFM            #0, [X3]
          PRFM            #0, [X5]
        }

        _X5 = v47 - 6800;
        v61.i8[0] = *v47;
        __asm { PRFM            #0, [X5] }

        v61.i8[1] = *(v47 - 200);
        _X5 = v47 - 7000;
        __asm { PRFM            #0, [X5] }

        v61.i8[2] = *(v47 - 400);
        _X5 = v47 - 7200;
        __asm { PRFM            #0, [X5] }

        v61.i8[3] = *(v47 - 600);
        __asm { PRFM            #0, [X4] }

        _X4 = v47 - 7600;
        v61.i8[4] = *(v47 - 800);
        __asm { PRFM            #0, [X4] }

        v61.i8[5] = *(v47 - 1000);
        _X4 = v47 - 7800;
        __asm { PRFM            #0, [X4] }

        v61.i8[6] = *(v47 - 1200);
        _X4 = v47 - 8400;
        _X5 = v47 - 8000;
        __asm { PRFM            #0, [X5] }

        v61.i8[7] = *(v47 - 1400);
        _X5 = v47 - 8200;
        __asm { PRFM            #0, [X5] }

        v77.i8[0] = *(v47 - 1600);
        __asm { PRFM            #0, [X4] }

        _X4 = v47 - 8600;
        v77.i8[1] = *(v47 - 1800);
        __asm { PRFM            #0, [X4] }

        v77.i8[2] = *(v47 - 2000);
        _X5 = v47 - 8800;
        v82 = v47 - 6200;
        __asm { PRFM            #0, [X5] }

        v77.i8[3] = *(v47 - 2200);
        _X5 = v47 - 9000;
        __asm { PRFM            #0, [X5] }

        v77.i8[4] = *(v47 - 2400);
        _X5 = v47 - 9200;
        __asm { PRFM            #0, [X5] }

        v77.i8[5] = *(v47 - 2600);
        _X5 = v47 - 9400;
        __asm { PRFM            #0, [X5] }

        v77.i8[6] = *(v47 - 2800);
        _X5 = v47 - 9600;
        __asm { PRFM            #0, [X5] }

        v77.i8[7] = *(v47 - 3000);
        _X5 = v47 - 9800;
        __asm { PRFM            #0, [X5] }

        _X5 = v47 - 10000;
        v95.i8[0] = *(v47 - 3200);
        __asm { PRFM            #0, [X5] }

        v95.i8[1] = *(v47 - 3400);
        _X5 = v47 - 10200;
        __asm { PRFM            #0, [X5] }

        v95.i8[2] = *(v47 - 3600);
        _X5 = v47 - 10400;
        __asm { PRFM            #0, [X5] }

        v95.i8[3] = *(v47 - 3800);
        _X5 = v47 - 10600;
        __asm { PRFM            #0, [X5] }

        v95.i8[4] = *(v47 - 4000);
        _X5 = v47 - 10800;
        __asm { PRFM            #0, [X5] }

        v95.i8[5] = *(v47 - 4200);
        _X5 = v47 - 11000;
        __asm { PRFM            #0, [X5] }

        v95.i8[6] = *(v47 - 4400);
        _X5 = v47 - 11200;
        __asm { PRFM            #0, [X5] }

        v95.i8[7] = *(v47 - 4600);
        _X5 = v47 - 11400;
        __asm { PRFM            #0, [X5] }

        _X5 = v47 - 11600;
        v112.i8[0] = *(v47 - 4800);
        __asm { PRFM            #0, [X5] }

        v112.i8[1] = *(v47 - 5000);
        _X5 = v47 - 11800;
        __asm { PRFM            #0, [X5] }

        v112.i8[2] = *(v47 - 5200);
        _X5 = v47 - 12000;
        __asm { PRFM            #0, [X5] }

        v112.i8[3] = *(v47 - 5400);
        _X5 = v47 - 12200;
        __asm { PRFM            #0, [X5] }

        v112.i8[4] = *(v47 - 5600);
        _X5 = v47 - 12400;
        __asm { PRFM            #0, [X5] }

        v112.i8[5] = *(v47 - 5800);
        _X13 = v47 - 12600;
        __asm { PRFM            #0, [X13] }

        v112.i8[6] = v82[200];
        v112.i8[7] = *v82;
        v124 = vmovl_u8(v61);
        v125 = vmovl_u8(v77);
        v126 = vmovl_u8(v112);
        v127 = vmovl_u8(v95);
        v50 = vaddw_high_u16(v50, v125);
        v46 = vaddw_high_u16(v46, v124);
        v48 = vaddw_u16(v48, *v124.i8);
        v49 = vaddw_u16(v49, *v125.i8);
        v52 = vaddw_high_u16(v52, v127);
        v51 = vaddw_u16(v51, *v127.i8);
        v54 = vaddw_high_u16(v54, v126);
        v53 = vaddw_u16(v53, *v126.i8);
        v47 = _X3;
        v45 -= 32;
      }

      while (v45);
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v51, v48), vaddq_s32(v53, v49)), vaddq_s32(vaddq_s32(v52, v46), vaddq_s32(v54, v50))));
      v12 = v11 & 0x3FFFFE0;
      v11 = (((v9 + 199) * 0x147AE147AE147AFuLL) >> 64) + 1;
      if (v141 == v140)
      {
        goto LABEL_22;
      }

      if ((v141 & 0x10) == 0)
      {
        v10 = v8 - 200 * v140;
        do
        {
LABEL_21:
          v7 += *(v5 + v10);
          v128 = v10 > 0xC8;
          v10 -= 200;
        }

        while (v128);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
    }

    v10 = v8 - 200 * (v11 & 0x3FFFFF0);
    v13 = 0uLL;
    v14 = v7;
    v15 = v8 - 200 * v12 + v5;
    _X9 = v15 - 12600;
    v17 = (v15 - 3000);
    v18 = v12 - (v11 & 0x3FFFFF0);
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      __asm
      {
        PRFM            #0, [X9,#0xBB8]
        PRFM            #0, [X9,#0xAF0]
      }

      v27.i8[0] = v17[3000];
      __asm { PRFM            #0, [X9,#0xA28] }

      v27.i8[1] = v17[2800];
      __asm { PRFM            #0, [X9,#0x960] }

      v27.i8[2] = v17[2600];
      __asm { PRFM            #0, [X9,#0x898] }

      v27.i8[3] = v17[2400];
      __asm { PRFM            #0, [X9,#0x7D0] }

      v27.i8[4] = v17[2200];
      __asm { PRFM            #0, [X9,#0x708] }

      v27.i8[5] = v17[2000];
      __asm { PRFM            #0, [X9,#0x640] }

      v27.i8[6] = v17[1800];
      __asm { PRFM            #0, [X9,#0x578] }

      v27.i8[7] = v17[1600];
      __asm { PRFM            #0, [X9,#0x4B0] }

      v36.i8[0] = v17[1400];
      __asm { PRFM            #0, [X9,#0x3E8] }

      v36.i8[1] = v17[1200];
      __asm { PRFM            #0, [X9,#0x320] }

      v36.i8[2] = v17[1000];
      __asm { PRFM            #0, [X9,#0x258] }

      v36.i8[3] = v17[800];
      __asm { PRFM            #0, [X9,#0x190] }

      v36.i8[4] = v17[600];
      __asm { PRFM            #0, [X9,#0xC8] }

      v36.i8[5] = v17[400];
      __asm { PRFM            #0, [X9] }

      v36.i8[6] = v17[200];
      v36.i8[7] = *v17;
      v43 = vmovl_u8(v36);
      v44 = vmovl_u8(v27);
      v13 = vaddw_high_u16(v13, v44);
      v14 = vaddw_u16(v14, *v44.i8);
      v20 = vaddw_high_u16(v20, v43);
      v19 = vaddw_u16(v19, *v43.i8);
      _X9 -= 3200;
      v17 -= 3200;
      v18 += 16;
    }

    while (v18);
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(v14, v19), vaddq_s32(v13, v20)));
    if (v11 != (v11 & 0x3FFFFF0))
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  *(a1 + 52) |= 8u;
  v129 = *(v2 + 80);
  v142 = bswap32(*(a1 + 48));
  result = (*(*v129 + 24))(v129, &v142, 4, v3);
  if (!result)
  {
    v130 = v3 + 4;
    result = (*(**(v2 + 80) + 24))(*(v2 + 80), v5, *(v2 + 200), v130);
    if (!result)
    {
      v131 = *(v2 + 80);
      v132 = *(v2 + 200);
      v143 = bswap32(v7);
      result = (*(*v131 + 24))(v131, &v143, 4, v130 + v132);
      if (!result)
      {
        *(v2 + 96) += *(v2 + 200) + 8;
        ++*(v2 + 52);
        v133 = sub_1818E70E0(*(v2 + 64), *(a1 + 48));
        v134 = *(v2 + 128);
        if (v134 < 1)
        {
          v137 = 0;
        }

        else
        {
          v135 = 0;
          v136 = 0;
          v137 = 0;
          v138 = *(a1 + 48);
          do
          {
            v139 = *(v2 + 120) + v135;
            if (*(v139 + 24) >= v138)
            {
              v137 |= sub_1818E70E0(*(v139 + 16), v138);
              v134 = *(v2 + 128);
            }

            ++v136;
            v135 += 56;
          }

          while (v136 < v134);
        }

        return v137 | v133;
      }
    }
  }

  return result;
}

uint64_t sub_181936E64(uint64_t a1)
{
  v4 = 0;
  if (*(a1 + 16))
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = *(a1 + 72);
  if (!*v2)
  {
    return 0;
  }

  LODWORD(result) = (*(*v2 + 80))(v2, 20, &v4);
  if (result == 12)
  {
    return 0;
  }

  if (v4)
  {
    v3 = result == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return 1032;
  }

  else
  {
    return result;
  }
}

uint64_t sub_181936ED4(uint64_t *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1)
  {
    v2 = *a1;
    do
    {
      v3 = *(v2 + 64);
      *(v2 + 32) = v3;
      v2 = v3;
    }

    while (v3);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    if (v1)
    {
      do
      {
LABEL_7:
        v4 = 0;
        v5 = v1;
        v1 = *(v1 + 32);
        *(v5 + 4) = 0;
        do
        {
          v6 = *(&v31 + v4);
          if (!v6)
          {
            *(&v31 + v4) = v5;
            if (!v1)
            {
              goto LABEL_23;
            }

            goto LABEL_7;
          }

          v29 = 0uLL;
          v30 = 0uLL;
          v27 = 0uLL;
          v28 = 0uLL;
          v7 = &v26;
          v26 = 0uLL;
          do
          {
            v8 = v7;
            v7 = v6;
            v9 = *(v6 + 48);
            v10 = v5;
            while (1)
            {
              v5 = v10;
              if (v9 < *(v10 + 12))
              {
                break;
              }

              *(v8 + 4) = v10;
              v10 = *(v10 + 4);
              v8 = v5;
              if (!v10)
              {
                v11 = v5;
                v5 = v7;
                goto LABEL_15;
              }
            }

            *(v8 + 4) = v7;
            v6 = *(v7 + 4);
            v11 = v7;
          }

          while (v6);
LABEL_15:
          *(v11 + 4) = v5;
          v5 = v28;
          *(&v31 + v4++) = 0;
        }

        while (v4 != 31);
        v12 = *(&v46 + 1);
        v29 = 0uLL;
        v30 = 0uLL;
        v27 = 0uLL;
        v28 = 0uLL;
        v13 = &v26;
        v26 = 0uLL;
        do
        {
          v14 = v13;
          v13 = v12;
          v15 = *(v12 + 48);
          v16 = v5;
          while (1)
          {
            v5 = v16;
            if (v15 < *(v16 + 12))
            {
              break;
            }

            *(v14 + 4) = v16;
            v16 = *(v16 + 4);
            v14 = v5;
            if (!v16)
            {
              v17 = v5;
              v5 = v13;
              goto LABEL_22;
            }
          }

          *(v14 + 4) = v13;
          v12 = *(v13 + 4);
          v17 = v13;
        }

        while (v12);
LABEL_22:
        *(v17 + 4) = v5;
        *(&v46 + 1) = v28;
      }

      while (v1);
LABEL_23:
      result = v31;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
  }

  for (i = 1; i != 32; ++i)
  {
    v20 = *(&v31 + i);
    if (v20)
    {
      if (result)
      {
        v29 = 0uLL;
        v30 = 0uLL;
        v27 = 0uLL;
        v28 = 0uLL;
        v21 = &v26;
        v26 = 0uLL;
        do
        {
          v22 = v21;
          v21 = result;
          v23 = *(result + 48);
          v24 = v20;
          while (1)
          {
            v20 = v24;
            if (v23 < *(v24 + 12))
            {
              break;
            }

            *(v22 + 4) = v24;
            v24 = *(v24 + 4);
            v22 = v20;
            if (!v24)
            {
              v25 = v20;
              v20 = result;
              goto LABEL_37;
            }
          }

          *(v22 + 4) = result;
          result = *(result + 32);
          v25 = v21;
        }

        while (result);
LABEL_37:
        *(v25 + 4) = v20;
        result = v28;
      }

      else
      {
        result = *(&v31 + i);
      }
    }
  }

  return result;
}

uint64_t sub_18193714C(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v5 = a2;
  v136 = *MEMORY[0x1E69E9840];
  v117 = a2;
  if (a4)
  {
    v7 = 0;
    v8 = &v117;
    do
    {
      v11 = *(v5 + 32);
      v10 = v5 + 32;
      v9 = v11;
      if (*(v10 + 16) <= a3)
      {
        ++v7;
        v8 = v10;
      }

      *v8 = v9;
      v5 = v9;
    }

    while (v9);
    v5 = v117;
  }

  else
  {
    v7 = 1;
  }

  *(a1 + 256) += v7;
  *(a1 + 272) += v7;
  if (*(v5 + 48) == 1)
  {
    v12 = bswap32(bswap32(*(*(v5 + 40) + 136)) + 1);
    *(*(v5 + 8) + 24) = v12;
    *(*(v5 + 8) + 92) = v12;
    *(*(v5 + 8) + 96) = -124965376;
  }

  v13 = *(a1 + 344);
  v14 = *(a1 + 200);
  v112 = *(a1 + 15);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v15 = (v13 + 72);
  v16 = **(v13 + 48);
  if (*(v13 + 72) == *v16 && *(v13 + 80) == *(v16 + 8) && *(v13 + 88) == *(v16 + 16) && *(v13 + 96) == *(v16 + 24) && *(v13 + 104) == *(v16 + 32) && *(v13 + 112) == *(v16 + 40))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v16 + 16) + 1;
  }

  v115 = v14;
  if (*(v13 + 60))
  {
    goto LABEL_29;
  }

  if (!*(v16 + 96))
  {
    goto LABEL_92;
  }

  __buf = 0;
  sqlite3_initialize();
  arc4random_buf(&__buf, 4uLL);
  if (*(v13 + 63))
  {
    goto LABEL_75;
  }

  v69 = (*(**(v13 + 8) + 112))(*(v13 + 8), 4, 4, 10);
  if (v69 != 5)
  {
    v46 = v69;
    if (v69)
    {
      goto LABEL_97;
    }

LABEL_75:
    v48 = __buf;
    v49 = *(v13 + 48);
    v50 = *v49;
    ++*(v13 + 136);
    *(v13 + 88) = 0;
    v51 = *(v13 + 100);
    v52 = bswap32(bswap32(*(v13 + 104)) + 1);
    *(v13 + 104) = v52;
    *(v13 + 108) = v48;
    v53 = *v49;
    *(v13 + 84) = 1;
    *(v13 + 72) = 3007000;
    v54 = *(v13 + 76);
    v55 = v54 + *(v13 + 84);
    v56 = v54 + *(v13 + 80) + 6014000;
    LODWORD(v49) = v55 + 3007000 + v56;
    v57 = v49 + v56;
    LODWORD(v49) = v49 + *(v13 + 92) + v49 + v56;
    v58 = v57 + *(v13 + 96) + v49;
    LODWORD(v49) = v49 + v51 + v58;
    v59 = v58 + v52 + v49;
    *(v13 + 112) = v59;
    *(v13 + 116) = v49 + v48 + v59;
    v60 = *v15;
    v61 = *(v13 + 104);
    v53[4] = *(v13 + 88);
    v53[5] = v61;
    v53[3] = v60;
    if (*(v13 + 63) != 2)
    {
      (*(**(v13 + 8) + 120))(*(v13 + 8));
    }

    v62 = *v15;
    v63 = *(v13 + 104);
    v53[1] = *(v13 + 88);
    v53[2] = v63;
    *v53 = v62;
    v50[24] = 0;
    v50[32] = 0;
    v50[26] = 0;
    v50[27] = -1;
    v50[28] = -1;
    v50[29] = -1;
    if (!*(v13 + 63))
    {
      (*(**(v13 + 8) + 112))(*(v13 + 8), 4, 4, 9);
    }
  }

LABEL_92:
  if (!*(v13 + 63))
  {
    (*(**(v13 + 8) + 112))(*(v13 + 8), 3, 1, 5);
  }

  *(v13 + 60) = -1;
  LODWORD(v124) = 0;
  do
  {
    v70 = sub_1818A4DD0(v13, &__buf, 1, &v124);
  }

  while (v70 == -1);
  v46 = v70;
LABEL_97:
  if (v46)
  {
    return v46;
  }

LABEL_29:
  v23 = *(v13 + 88);
  if (!v23)
  {
    v124 = 0x18E22D0082067F37;
    LOBYTE(v125) = BYTE3(v115);
    BYTE1(v125) = BYTE2(v115);
    BYTE2(v125) = BYTE1(v115);
    HIBYTE(v125) = v115;
    v64 = *(v13 + 136);
    v126 = bswap32(v64);
    if (!v64)
    {
      sqlite3_initialize();
      arc4random_buf((v13 + 104), 8uLL);
    }

    v127 = *(v13 + 104);
    v65 = HIDWORD(v124) + v124 + v124 + v125;
    v66 = v126 + HIDWORD(v124) + v124 + v65;
    v67 = v65 + v127 + v66;
    v68 = v66 + HIDWORD(v127) + v67;
    v128 = HIBYTE(v67);
    v129 = BYTE2(v67);
    v130 = BYTE1(v67);
    v131 = v67;
    v132 = HIBYTE(v68);
    v133 = BYTE2(v68);
    v134 = BYTE1(v68);
    v135 = v68;
    *(v13 + 56) = v115;
    *(v13 + 85) = 0;
    *(v13 + 96) = v67;
    *(v13 + 100) = v68;
    *(v13 + 67) = 1;
    v35 = (*(**(v13 + 16) + 24))(*(v13 + 16), &v124, 32, 0);
    if (v35)
    {
      return v35;
    }

    if (*(v13 + 68))
    {
      if (((v112 >> 2) & 3) != 0)
      {
        v35 = (*(**(v13 + 16) + 40))(*(v13 + 16));
        if (v35)
        {
          return v35;
        }
      }
    }
  }

  if (*(v13 + 56) != v115)
  {
    return sub_18190EDA8(78303);
  }

  v24 = *(v13 + 16);
  v118[0] = v13;
  v118[1] = v24;
  v119 = 0;
  v120 = __PAIR64__(v115, v112);
  v25 = malloc_type_malloc(v115 + 24, 0xB3007D9uLL);
  v121 = v25;
  if (!v25)
  {
    return 7;
  }

  v107 = v24;
  v108 = (v13 + 72);
  v109 = v25;
  v114 = v115 + 24;
  v26 = v114 * v23 + 32;
  v27 = 0;
  if (v5)
  {
    v28 = v5;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_38;
      }

      if (a4)
      {
        v29 = a3;
        if (!*(v28 + 32))
        {
          goto LABEL_43;
        }
      }

      LODWORD(v124) = 0;
      sub_18193452C(v13, *(v28 + 48), &v124);
      v30 = v124;
      if (v124 >= v22)
      {
        if (*(v13 + 124) - 1 >= v124)
        {
          *(v13 + 124) = v124;
        }

        v32 = *(v28 + 40);
        v33 = *(v32 + 296);
        if (v33)
        {
          v34 = v33(*(v32 + 320), *(v28 + 8), *(v28 + 48), 6);
          if (!v34)
          {
            return 7;
          }
        }

        else
        {
          v34 = *(v28 + 8);
          if (!v34)
          {
            return 7;
          }
        }

        v35 = (*(**(v13 + 16) + 24))(*(v13 + 16), v34, v115, v114 * (v30 - 1) + 56);
        if (v35)
        {
          return v35;
        }

        *(v28 + 52) &= ~0x40u;
        v28 = *(v28 + 32);
        if (!v28)
        {
          break;
        }
      }

      else
      {
LABEL_38:
        if (a4)
        {
          if (*(v28 + 32))
          {
            v29 = 0;
          }

          else
          {
            v29 = a3;
          }
        }

        else
        {
          v29 = 0;
        }

LABEL_43:
        v31 = sub_1819380CC(v118, v28, v29, v26);
        if (v31)
        {
          goto LABEL_123;
        }

        LODWORD(v23) = v23 + 1;
        v26 += v114;
        *(v28 + 52) |= 0x40u;
        v27 = v28;
        v28 = *(v28 + 32);
        if (!v28)
        {
          break;
        }
      }
    }
  }

  if (a4)
  {
    if (!*(v13 + 124))
    {
      goto LABEL_106;
    }

    v36 = *(v13 + 56);
    v37 = sqlite3_initialize();
    if (v36 >= -23 && !v37)
    {
      v38 = (v36 + 24);
      v39 = sub_181902484(v38, 780313285);
      if (v39)
      {
        v40 = v39;
        v41 = *(v13 + 124);
        if (v41 == 1)
        {
          v42 = 24;
        }

        else
        {
          v42 = v38 * (v41 - 2) + 48;
        }

        v43 = (*(**(v13 + 16) + 16))(*(v13 + 16), v39, 8, v42);
        *(v13 + 96) = bswap32(*v40);
        v110 = v40;
        *(v13 + 100) = bswap32(v40[1]);
        v44 = *(v13 + 124);
        *(v13 + 124) = 0;
        if (v43)
        {
          v45 = 1;
        }

        else
        {
          v45 = v44 > v23;
        }

        if (!v45)
        {
          v106 = v38;
          v73 = v44 + 1;
          while (1)
          {
            v74 = v106 * (v73 - 2);
            v43 = (*(**(v13 + 16) + 16))(*(v13 + 16), v110, v106, v74 + 32);
            if (v43)
            {
              break;
            }

            sub_1818DD090(v13, bswap32(*v110), bswap32(v110[1]), v110 + 6, &v124);
            v75 = (*(**(v13 + 16) + 24))(*(v13 + 16), &v124, 24, v74 + 32);
            v46 = v75;
            if (v73 <= v23)
            {
              ++v73;
              if (!v75)
              {
                continue;
              }
            }

            goto LABEL_68;
          }
        }

        v46 = v43;
LABEL_68:
        v47 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48 -= xmmword_1ED452EC0(v110);
          --qword_1ED456A90;
          off_1ED452EB0(v110);
          if (!xmmword_1ED456AF0)
          {
LABEL_105:
            if (v46)
            {
              return v46;
            }

LABEL_106:
            v76 = v112 & 3;
            if ((v112 & 3) != 0)
            {
              if (!*(v13 + 69))
              {
                v72 = 0;
                v80 = v109;
LABEL_127:
                v46 = (*(*v107 + 40))(v107, v76);
LABEL_130:
                free(v80);
                if (*(v13 + 67))
                {
                  v82 = *(v13 + 32);
                  if ((v82 & 0x8000000000000000) == 0)
                  {
                    if (v114 * (v72 + v23) + 32 <= v82)
                    {
                      v83 = *(v13 + 32);
                    }

                    else
                    {
                      v83 = v114 * (v72 + v23) + 32;
                    }

                    sub_18193822C(v13, v83);
                    *(v13 + 67) = 0;
                  }
                }

                goto LABEL_136;
              }

              v111 = v112 & 3;
              v77 = *(**(v13 + 16) + 88);
              if (v77)
              {
                v78 = v77();
                if (v78 >= 0x10000)
                {
                  LODWORD(v79) = 0x10000;
                }

                else
                {
                  LODWORD(v79) = v78;
                }

                if (v78 >= 32)
                {
                  v79 = v79;
                }

                else
                {
                  v79 = 512;
                }
              }

              else
              {
                v79 = 4096;
              }

              v119 = (v79 + v26 - 1) / v79 * v79;
              v113 = v119;
              if (v26 < v119)
              {
                v72 = 0;
                v81 = v26;
                while (1)
                {
                  v31 = sub_1819380CC(v118, v27, a3, v81);
                  if (v31)
                  {
                    break;
                  }

                  v81 += v114;
                  ++v72;
                  if (v81 >= v113)
                  {
                    goto LABEL_125;
                  }
                }

LABEL_123:
                v46 = v31;
                free(v109);
                return v46;
              }

              v72 = 0;
LABEL_125:
              if (v113 == v26)
              {
                v80 = v109;
                v76 = v111;
                goto LABEL_127;
              }

              v46 = 0;
            }

            else
            {
              v46 = 0;
              v72 = 0;
            }

            v80 = v109;
            goto LABEL_130;
          }

          v47 = &xmmword_1ED452F28;
        }

        (*v47)();
        goto LABEL_105;
      }
    }

    return 7;
  }

  free(v109);
  v46 = 0;
  v72 = 0;
LABEL_136:
  v84 = *(v13 + 88);
  if (v5 && !v46)
  {
    v85 = v5;
    do
    {
      if ((*(v85 + 52) & 0x40) != 0)
      {
        v46 = sub_1818A758C(v13, ++v84, *(v85 + 48));
      }

      else
      {
        v46 = 0;
      }

      v85 = *(v85 + 32);
      if (v85)
      {
        v86 = v46 == 0;
      }

      else
      {
        v86 = 0;
      }
    }

    while (v86);
  }

  v87 = v46 == 0;
  if (!v46 && v72 >= 1)
  {
    do
    {
      v88 = sub_1818A758C(v13, ++v84, *(v27 + 48));
      v87 = v88 == 0;
      if (v88)
      {
        v89 = 0;
      }

      else
      {
        v89 = v72 > 1;
      }

      --v72;
    }

    while (v89);
    v46 = v88;
  }

  if (v87)
  {
    *(v13 + 86) = v115 & 0xFF00 | WORD1(v115);
    *(v13 + 88) = v84;
    if (a4)
    {
      v91 = *(v13 + 76);
      v90 = *(v13 + 80);
      *(v13 + 80) = v90 + 1;
      *(v13 + 92) = a3;
      v92 = **(v13 + 48);
      *(v13 + 84) = 1;
      *(v13 + 72) = 3007000;
      v93 = v90 + v91 + 6014001;
      v94 = v91 + *(v13 + 84) + 3007000 + v93;
      v95 = v93 + v84 + v94;
      v96 = v94 + a3 + v95;
      v97 = v95 + *(v13 + 96) + v96;
      v98 = v96 + *(v13 + 100) + v97;
      v99 = v97 + *(v13 + 104) + v98;
      v100 = v98 + *(v13 + 108) + v99;
      *(v13 + 112) = v99;
      *(v13 + 116) = v100;
      v101 = *v108;
      v102 = *(v13 + 104);
      v92[4] = *(v13 + 88);
      v92[5] = v102;
      v92[3] = v101;
      if (*(v13 + 63) != 2)
      {
        (*(**(v13 + 8) + 120))(*(v13 + 8));
      }

      v103 = *v108;
      v104 = *(v13 + 104);
      v92[1] = *(v13 + 88);
      v92[2] = v104;
      *v92 = v103;
      *(v13 + 24) = v84;
    }
  }

  else if (v46)
  {
    return v46;
  }

  v46 = 0;
  v105 = *(a1 + 112);
  if (v105 && v5)
  {
    while (1)
    {
      if (v105)
      {
        sub_181934FA4(v105, *(v5 + 48), *(v5 + 8));
      }

      v5 = *(v5 + 32);
      if (!v5)
      {
        break;
      }

      v105 = *(a1 + 112);
    }

    return 0;
  }

  return v46;
}

uint64_t sub_181937C38(uint64_t a1)
{
  if (*(a1 + 23) || !*(a1 + 32))
  {
    return 0;
  }

  v12[3] = v1;
  v12[4] = v2;
  v12[0] = 0;
  v5 = (*(a1 + 288))(a1, 1, v12, 0);
  v6 = v12[0];
  if (v5)
  {
    v7 = v5;
    goto LABEL_6;
  }

  v8 = *(v12[0] + 40);
  if ((*(v12[0] + 52) & 4) != 0 && v8[8] >= *(v12[0] + 48))
  {
    if (!v8[32])
    {
LABEL_22:
      v11 = bswap32(bswap32(*(*(v6 + 40) + 136)) + 1);
      *(*(v6 + 8) + 24) = v11;
      *(*(v6 + 8) + 92) = v11;
      *(*(v6 + 8) + 96) = -124965376;
      goto LABEL_23;
    }

    v10 = sub_1819360C0(v12[0]);
  }

  else
  {
    if (v8[12])
    {
      v7 = v8[12];
      if ((*(v12[0] + 52) & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (v8[46] <= v8[50])
    {
      v10 = sub_1818D8DD8(v12[0]);
    }

    else
    {
      v10 = sub_181936438(v12[0]);
    }
  }

  v7 = v10;
  v6 = v12[0];
  if (v7)
  {
    goto LABEL_6;
  }

  if (v12[0])
  {
    goto LABEL_22;
  }

LABEL_23:
  v7 = 0;
  *(a1 + 23) = 1;
LABEL_6:
  if (v6)
  {
    if ((*(v6 + 52) & 0x20) == 0)
    {
LABEL_8:
      sub_181932B68(v6);
      return v7;
    }

LABEL_13:
    v9 = *(v6 + 40);
    --*(v9 + 152);
    *(v6 + 32) = *(v9 + 168);
    *(v9 + 168) = v6;
    (*(**(v9 + 72) + 144))(*(v9 + 72), *(v9 + 200) * (*(v6 + 48) - 1), *(v6 + 8));
  }

  return v7;
}

uint64_t sub_181937DB0(uint64_t a1, _BYTE *a2)
{
  if (!a2 || *(a1 + 9) == 4)
  {
    return 0;
  }

  v20 = v2;
  v21 = v3;
  v18 = 0;
  v5 = *(a1 + 80);
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  *(a1 + 24) = 1;
  LOBYTE(v7) = *a2;
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += v7;
      v7 = a2[++v8];
    }

    while (v7);
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  v11 = *(a1 + 96);
  if (*(a1 + 12))
  {
    if (v11)
    {
      v11 = *(a1 + 184) + *(a1 + 184) * ((v11 - 1) / *(a1 + 184));
    }

    v12 = a2;
    *(a1 + 96) = v11;
  }

  else
  {
    v12 = a2;
  }

  v19 = bswap32(*(a1 + 192));
  result = (*(v6 + 24))(v5, &v19, 4, v11);
  if (!result)
  {
    v14 = v11 + 4;
    result = (*(**(a1 + 80) + 24))(*(a1 + 80), v12, v10, v14);
    if (!result)
    {
      v15 = *(a1 + 80);
      v16 = v14 + v8;
      v19 = bswap32(v10);
      result = (*(*v15 + 24))(v15, &v19, 4, v16);
      if (!result)
      {
        v17 = *(a1 + 80);
        v19 = bswap32(v9);
        result = (*(*v17 + 24))(v17, &v19, 4, v16 + 4);
        if (!result)
        {
          result = (*(**(a1 + 80) + 24))(*(a1 + 80), &unk_181A20D29, 8, v16 + 8);
          if (!result)
          {
            *(a1 + 96) += (v10 + 20);
            result = (*(**(a1 + 80) + 48))(*(a1 + 80), &v18);
            if (!result)
            {
              if (v18 > *(a1 + 96))
              {
                return (*(**(a1 + 80) + 32))(*(a1 + 80));
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_181937F98(uint64_t result, unsigned int *a2, int a3, int *a4, _DWORD *a5)
{
  if (a4)
  {
    v6 = *a4;
    v5 = a4[1];
    v7 = (a2 + a3);
    if (!result)
    {
      do
      {
LABEL_8:
        v8 = *a2;
        v9 = a2[1];
        a2 += 2;
        v6 += v5 + bswap32(v8);
        v5 += bswap32(v9) + v6;
      }

      while (a2 < v7);
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = (a2 + a3);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((a3 & 0x3F) != 0)
  {
    do
    {
      v6 += v5 + *a2;
      v5 += a2[1] + v6;
      a2 += 2;
    }

    while (a2 < v7);
  }

  else
  {
    do
    {
      v10 = v6 + v5 + *a2;
      v11 = a2[1] + v5 + v10;
      v12 = v10 + a2[2] + v11;
      v13 = v11 + a2[3] + v12;
      v14 = v12 + a2[4] + v13;
      v15 = v13 + a2[5] + v14;
      v16 = v14 + a2[6] + v15;
      v17 = v15 + a2[7] + v16;
      v18 = v16 + a2[8] + v17;
      v19 = v17 + a2[9] + v18;
      v20 = v18 + a2[10] + v19;
      v21 = v19 + a2[11] + v20;
      v22 = v20 + a2[12] + v21;
      v23 = v21 + a2[13] + v22;
      v6 = v22 + a2[14] + v23;
      v5 = v23 + a2[15] + v6;
      a2 += 16;
    }

    while (a2 < v7);
  }

LABEL_11:
  *a5 = v6;
  a5[1] = v5;
  return result;
}

uint64_t sub_1819380CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v9 = *(a2 + 40);
  v10 = *(v9 + 296);
  if (!v10)
  {
    v11 = *(a2 + 8);
    if (v11)
    {
      goto LABEL_3;
    }

    return 7;
  }

  v11 = v10(*(v9 + 320), *(a2 + 8), *(a2 + 48), 6);
  if (!v11)
  {
    return 7;
  }

LABEL_3:
  sub_1818DD090(*a1, *(a2 + 48), a3, v11, v8);
  memcpy((v8 + 24), v11, *(a1 + 28));
  v12 = *(a1 + 28) + 24;
  v13 = *(a1 + 16);
  v14 = v13 - a4;
  if (v13 > a4 && v12 + a4 >= v13)
  {
    result = (*(**(a1 + 8) + 24))(*(a1 + 8), v8, v14, a4);
    if (result)
    {
      return result;
    }

    v17 = v12 - v14;
    v18 = *(a1 + 24);
    if ((v18 & 3) != 0)
    {
      result = (*(**(a1 + 8) + 40))(*(a1 + 8), v18 & 3);
      if (!v17)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v17)
      {
        return result;
      }
    }

    if (result)
    {
      return result;
    }
  }

  v15 = *(**(a1 + 8) + 24);

  return v15();
}

void sub_18193822C(uint64_t a1, uint64_t a2)
{
  if (off_1EA831A10)
  {
    off_1EA831A10();
  }

  v6 = 0;
  v4 = (*(**(a1 + 16) + 48))(*(a1 + 16), &v6);
  if (!v4)
  {
    if (v6 <= a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = (*(**(a1 + 16) + 32))(*(a1 + 16), a2);
    }
  }

  if (off_1EA831A18)
  {
    v5 = v4;
    off_1EA831A18(v4);
    LODWORD(v4) = v5;
  }

  if (v4)
  {
    sqlite3_log(v4, "cannot limit WAL size: %s", *(a1 + 128));
  }
}

void sub_1819382DC(uint64_t a1, int a2)
{
  v2 = **(a1 + 48);
  ++*(a1 + 136);
  *(a1 + 88) = 0;
  v3 = bswap32(*(a1 + 104)) + 1;
  *(a1 + 104) = HIBYTE(v3);
  *(a1 + 105) = BYTE2(v3);
  *(a1 + 106) = BYTE1(v3);
  *(a1 + 107) = v3;
  *(a1 + 108) = a2;
  sub_1818A77D8(a1);
  v2[24] = 0;
  v2[32] = 0;
  v2[26] = 0;
  v2[27] = -1;
  v2[28] = -1;
  v2[29] = -1;
}

uint64_t sub_18193835C(uint64_t a1, unsigned int *a2, _DWORD *a3, unsigned int *a4, int8x8_t *a5, int8x8_t a6, int8x8_t a7)
{
  if (*(a1 + 104) != *&a5[1])
  {
    return 0;
  }

  v8 = bswap32(a5->i32[0]);
  if (!v8)
  {
    return 0;
  }

  a6.i32[0] = 0;
  a7.i32[0] = *(a1 + 85);
  v11 = vbsl_s8(vdup_lane_s8(vceq_s8(a7, a6), 0), *a5, vrev32_s8(*a5));
  v12 = *(a1 + 100);
  v13 = *(a1 + 96) + v12 + v11.i32[0];
  v14 = *(a1 + 85) == 0;
  *(a1 + 96) = v13;
  *(a1 + 100) = v11.i32[1] + v12 + v13;
  sub_181937F98(v14, a4, *(a1 + 56), (a1 + 96), (a1 + 96));
  if (*(a1 + 96) != bswap32(a5[2].u32[0]) || *(a1 + 100) != bswap32(a5[2].u32[1]))
  {
    return 0;
  }

  *a2 = v8;
  *a3 = bswap32(a5->u32[1]);
  return 1;
}

uint64_t sub_181938468(_DWORD *a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 >= 2)
  {
    v7 = (a3 - 2) / (a1[14] / 5u + 1) * (a1[14] / 5u + 1);
    if (v7 + 1 == dword_1EA8315A8 / a1[13])
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v6 = v8 + v7;
  }

  else
  {
    v6 = 0;
  }

  v33 = v4;
  v34 = v5;
  if (v6 == a3 || dword_1EA8315A8 / a1[13] + 1 == a3)
  {
    if (a4)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v32 = 0;
  v31 = 0;
  if (!bswap32(*(*(*(a1 + 3) + 80) + 36)))
  {
    return 101;
  }

  v16 = a1;
  v17 = a3;
  result = sub_181938B74(a1, a3, &v32, &v31);
  if (!result)
  {
    v18 = v32;
    if (v32 == 2)
    {
      if (!a4)
      {
        LODWORD(v28) = 0;
        v30 = 0;
        result = sub_1818E21FC(v16, &v30, &v28, v17, 1);
        if (result)
        {
          return result;
        }

        if (v30)
        {
          sub_181932B18(*(v30 + 112));
        }
      }

      goto LABEL_30;
    }

    if (v32 == 1)
    {
      return sub_18190EDA8(83286);
    }

    v29 = 0;
    v30 = 0;
    result = sub_18193380C(v16, v17, &v30);
    if (!result)
    {
      if (a4)
      {
        v19 = 0;
      }

      else
      {
        v19 = a2;
      }

      while (1)
      {
        v28 = 0;
        v20 = v16[16];
        result = sub_1818E21FC(v16, &v28, &v29, v19, 2 * (a4 == 0));
        if (result)
        {
          break;
        }

        if (v28)
        {
          v21 = *(v28 + 112);
          if ((*(v21 + 52) & 0x20) != 0)
          {
            v22 = *(v21 + 40);
            --*(v22 + 152);
            *(v21 + 32) = *(v22 + 168);
            *(v22 + 168) = v21;
            (*(**(v22 + 72) + 144))(*(v22 + 72), *(v22 + 200) * (*(v21 + 48) - 1), *(v21 + 8));
          }

          else
          {
            sub_181932B68(v21);
          }
        }

        if (v29 > v20)
        {
          if (v30)
          {
            sub_181932B18(*(v30 + 112));
          }

          return sub_18190EDA8(83338);
        }

        if (!a4 || v29 <= a2)
        {
          v23 = v30;
          result = sub_181938D2C(v16, v30, v18, v31, v29, a4);
          if (v23)
          {
            v24 = result;
            sub_181932B18(*(v23 + 112));
            result = v24;
          }

          if (result)
          {
            return result;
          }

LABEL_30:
          a1 = v16;
          a3 = v17;
          if (a4)
          {
            return 0;
          }

LABEL_10:
          v9 = dword_1EA8315A8 / a1[13];
          for (i = a3 - 1; ; --i)
          {
            if (-2 - v9 + i != -1)
            {
              if (i >= 2)
              {
                v11 = (i - 2) / (a1[14] / 5u + 1) * (a1[14] / 5u + 1);
                if (v11 + 1 == v9)
                {
                  v12 = 3;
                }

                else
                {
                  v12 = 2;
                }

                if (i != v12 + v11)
                {
LABEL_20:
                  *(a1 + 35) = 1;
                  a1[16] = i;
                  return 0;
                }
              }

              else if (i)
              {
                goto LABEL_20;
              }
            }
          }
        }
      }

      if (v30)
      {
        v25 = result;
        v26 = *(v30 + 112);
        if ((*(v26 + 52) & 0x20) != 0)
        {
          v27 = *(v26 + 40);
          --*(v27 + 152);
          *(v26 + 32) = *(v27 + 168);
          *(v27 + 168) = v26;
          (*(**(v27 + 72) + 144))(*(v27 + 72), *(v27 + 200) * (*(v26 + 48) - 1), *(v26 + 8));
        }

        else
        {
          sub_181932B68(v26);
        }

        return v25;
      }
    }
  }

  return result;
}

uint64_t sub_18193880C(unsigned __int8 *a1, int a2, unsigned __int8 *a3)
{
  while (1)
  {
    if (a1 == a3 || a2 && *(a1 + 20) != a2)
    {
      goto LABEL_3;
    }

    v6 = *a1;
    if ((v6 | 2) == 2)
    {
      break;
    }

    sub_1819388DC(a1);
LABEL_3:
    a1 = *(a1 + 5);
    if (!a1)
    {
      return 0;
    }
  }

  if ((a1[1] & 0x40) != 0)
  {
    return 2835;
  }

  if (v6 == 2)
  {
    *a1 = 0;
  }

  else
  {
    *(a1 + 1) = 0;
  }

  result = sub_1819389F0(a1);
  if (!result)
  {
    sub_1819388DC(a1);
    *a1 = 3;
    a1[1] &= 0xF1u;
    goto LABEL_3;
  }

  a1[1] &= 0xF1u;
  return result;
}

uint64_t sub_1819388DC(uint64_t result)
{
  if ((*(result + 84) & 0x80000000) == 0)
  {
    v1 = result;
    if (*(result + 84))
    {
      v2 = 0;
      do
      {
        v3 = *(*(v1 + 144 + 8 * v2) + 112);
        if ((*(v3 + 52) & 0x20) != 0)
        {
          v4 = *(v3 + 40);
          --*(v4 + 152);
          *(v3 + 32) = *(v4 + 168);
          *(v4 + 168) = v3;
          (*(**(v4 + 72) + 144))(*(v4 + 72), *(v4 + 200) * (*(v3 + 48) - 1), *(v3 + 8));
        }

        else
        {
          sub_181932B68(v3);
        }

        ++v2;
      }

      while (v2 < *(v1 + 84));
    }

    v5 = *(*(v1 + 136) + 112);
    if ((*(v5 + 52) & 0x20) != 0)
    {
      v6 = *(v5 + 40);
      --*(v6 + 152);
      *(v5 + 32) = *(v6 + 168);
      *(v6 + 168) = v5;
      result = (*(**(v6 + 72) + 144))(*(v6 + 72), *(v6 + 200) * (*(v5 + 48) - 1), *(v5 + 8));
    }

    else
    {
      result = sub_181932B68(v5);
    }

    *(v1 + 84) = -1;
  }

  return result;
}

uint64_t sub_1819389F0(uint64_t a1)
{
  v2 = *(a1 + 85);
  sub_181938B20(a1);
  if (v2)
  {
    result = 0;
    *(a1 + 72) = *(a1 + 48);
    return result;
  }

  v4 = *(a1 + 64);
  *(a1 + 72) = v4;
  v5 = sub_181902484(v4 + 17, 2659202361);
  if (!v5)
  {
    return 7;
  }

  v6 = v5;
  result = sub_1818EEE54(a1, 0, *(a1 + 72), v5, 0);
  if (!result)
  {
    v9 = &v6[*(a1 + 72)];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 0;
    *(a1 + 24) = v6;
    return result;
  }

  v7 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    v8 = result;
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v6);
    --qword_1ED456A90;
    off_1ED452EB0(v6);
    v6 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      return v8;
    }

    v7 = &xmmword_1ED452F28;
  }

  else
  {
    v8 = result;
  }

  (*v7)(v6);
  return v8;
}

uint64_t sub_181938B20(uint64_t result)
{
  if (!*(result + 70))
  {
    *(result + 1) |= 2u;
    v1 = *(result + 136);
    v2 = (*(v1 + 96) + 2 * *(result + 86));
    return (*(v1 + 128))(v1, *(v1 + 80) + ((v2[1] | (*v2 << 8)) & *(v1 + 26)), result + 48);
  }

  return result;
}

uint64_t sub_181938B74(_DWORD *a1, unsigned int a2, _BYTE *a3, _DWORD *a4)
{
  if (a2 >= 2)
  {
    v8 = (a2 - 2) / (a1[14] / 5u + 1) * (a1[14] / 5u + 1);
    if (v8 + 1 == dword_1EA8315A8 / a1[13])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v7 = v9 + v8;
  }

  else
  {
    v7 = 0;
  }

  result = (*(*a1 + 288))();
  if (!result)
  {
    v11 = 80393;
    v12 = MEMORY[8];
    v13 = 5 * (~v7 + a2);
    if (v13 < 0)
    {
      if ((MEMORY[0x34] & 0x20) != 0)
      {
        v16 = MEMORY[0x28];
        --*(MEMORY[0x28] + 152);
        MEMORY[0x20] = *(v16 + 168);
        *(v16 + 168) = 0;
        (*(**(v16 + 72) + 144))(*(v16 + 72), *(v16 + 200) * (MEMORY[0x30] - 1), v12);
      }

      else
      {
        sub_181932B68(0);
      }
    }

    else
    {
      v14 = MEMORY[8] + v13;
      *a3 = *v14;
      if (a4)
      {
        *a4 = bswap32(*(v14 + 1));
      }

      if ((MEMORY[0x34] & 0x20) != 0)
      {
        v15 = MEMORY[0x28];
        --*(MEMORY[0x28] + 152);
        MEMORY[0x20] = *(v15 + 168);
        *(v15 + 168) = 0;
        (*(**(v15 + 72) + 144))(*(v15 + 72), *(v15 + 200) * (MEMORY[0x30] - 1), MEMORY[8]);
      }

      else
      {
        sub_181932B68(0);
      }

      if (*a3 - 6 > 0xFFFFFFFA)
      {
        return 0;
      }

      v11 = 80401;
    }

    return sub_18190EDA8(v11);
  }

  return result;
}

uint64_t sub_181938D2C(_DWORD *a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v6 = *(a2 + 4);
  v7 = *a1;
  v72 = 0;
  if (v6 <= 2)
  {
    v8 = 17652;
LABEL_3:
    v9 = v8 | 0x10000;

    return sub_18190EDA8(v9);
  }

  v16 = *(a2 + 112);
  if (*(v7 + 16))
  {
    v17 = *(v16 + 40);
    if ((*(v16 + 52) & 4) != 0 && v17[8] >= *(v16 + 48))
    {
      if (v17[32])
      {
        v20 = a6;
        result = sub_1819360C0(*(a2 + 112));
        a6 = v20;
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      result = v17[12];
      if (result)
      {
        return result;
      }

      v18 = a6;
      v19 = *(a2 + 112);
      if (v17[46] <= v17[50])
      {
        result = sub_1818D8DD8(v19);
        a6 = v18;
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_181936438(v19);
        a6 = v18;
        if (result)
        {
          return result;
        }
      }
    }
  }

  v21 = *(v16 + 52);
  if ((v21 & 2) != 0)
  {
    v22 = a6;
    result = sub_1819360C0(v16);
    if (result)
    {
      return result;
    }

    v21 = *(v16 + 52);
    a6 = v22;
  }

  v23 = 0;
  if (!a6 && (v21 & 8) != 0)
  {
    v23 = *(v16 + 48);
  }

  *(v16 + 52) = v21 & 0xFFF7;
  v24 = (*(&xmmword_1ED452F70 + 1))(*(*(v7 + 336) + 72));
  if (v24)
  {
    v25 = v24;
    v26 = *(v7 + 336);
    v27 = v25[1];
    if (*v27)
    {
      ++*(v26 + 24);
      v28 = *(v27 + 56) + 1;
      *(v27 + 56) = v28;
    }

    else
    {
      v31 = sub_181934878(v26, a5, v25);
      v27 = v31;
      if (!v31)
      {
        v70 = v23;
        v71 = a3;
        v29 = a4;
        v30 = 0;
        goto LABEL_46;
      }

      v28 = *(v31 + 56);
    }

    if (v28 >= 2)
    {
      if ((*(v27 + 52) & 0x20) != 0)
      {
        v32 = *(v27 + 40);
        --*(v32 + 152);
        *(v27 + 32) = *(v32 + 168);
        *(v32 + 168) = v27;
        (*(**(v32 + 72) + 144))(*(v32 + 72), *(v32 + 200) * (*(v27 + 48) - 1), *(v27 + 8));
      }

      else
      {
        sub_181932B68(v27);
      }

      v8 = 7947;
      goto LABEL_3;
    }

    *(v16 + 52) |= *(v27 + 52) & 8;
    v70 = v23;
    v71 = a3;
    if (*(v7 + 16))
    {
      v29 = a4;
      sub_181939854(v27, (*(v7 + 32) + 1));
      v30 = 1;
      goto LABEL_46;
    }

    v33 = *(v27 + 24);
    if ((*(v27 + 52) & 2) != 0)
    {
      v34 = *(v27 + 72);
      if (*(v33 + 16) == v27)
      {
        *(v33 + 16) = v34;
      }

      v35 = *(v27 + 64);
      if (v35)
      {
        *(v35 + 72) = v34;
        if (!v34)
        {
          *v33 = v35;
          goto LABEL_45;
        }
      }

      else
      {
        *(v33 + 8) = v34;
        if (!v34)
        {
          *v33 = 0;
          *(v33 + 49) = 2;
          goto LABEL_45;
        }
      }

      *(v34 + 64) = v35;
    }

LABEL_45:
    v29 = a4;
    --*(v33 + 24);
    v30 = 1;
    xmmword_1ED452F80(*(v33 + 72), *v27, 1);
    goto LABEL_46;
  }

  v70 = v23;
  v71 = a3;
  v29 = a4;
  v30 = 0;
  v27 = 0;
LABEL_46:
  v36 = *(v16 + 48);
  sub_181939854(v16, a5);
  v37 = *(v16 + 52);
  if ((v37 & 0x11) != 0)
  {
    *(v16 + 52) = v37 & 0xFFEF;
    if (v37)
    {
      *(v16 + 52) = v37 & 0xFFEF ^ 3;
      v38 = *(v16 + 24);
      *(v16 + 72) = 0;
      v39 = *v38;
      *(v16 + 64) = *v38;
      if (v39)
      {
        *(v39 + 72) = v16;
      }

      else
      {
        v38[1] = v16;
        if (*(v38 + 48))
        {
          *(v38 + 49) = 1;
        }
      }

      *v38 = v16;
      if ((v37 & 8) == 0 && !v38[2])
      {
        v38[2] = v16;
      }
    }
  }

  v40 = v30 ^ 1;
  if (!*(v7 + 16))
  {
    v40 = 1;
  }

  if (v40)
  {
LABEL_60:
    v41 = v70;
    if (!v70)
    {
      goto LABEL_95;
    }

    goto LABEL_61;
  }

  sub_181939854(v27, v36);
  if ((*(v27 + 52) & 0x20) == 0)
  {
    sub_181932B68(v27);
    goto LABEL_60;
  }

  v48 = *(v27 + 40);
  --*(v48 + 152);
  *(v27 + 32) = *(v48 + 168);
  *(v48 + 168) = v27;
  (*(**(v48 + 72) + 144))(*(v48 + 72), *(v48 + 200) * (*(v27 + 48) - 1), *(v27 + 8));
  v41 = v70;
  if (!v70)
  {
    goto LABEL_95;
  }

LABEL_61:
  v73 = 0;
  result = (*(v7 + 288))(v7, v41, &v73, 0);
  if (result)
  {
    if (v41 <= *(v7 + 36))
    {
      v42 = *(v7 + 64);
      if (v42)
      {
        v43 = v41;
        v44 = *(v7 + 328);
        v45 = v43 - 1;
        while (1)
        {
          v46 = *(v42 + 8);
          if (!v46)
          {
            break;
          }

          v47 = v45 / v46;
          v45 %= v46;
          v42 = *(v42 + 8 * v47 + 16);
          if (!v42)
          {
            return result;
          }
        }

        if (*v42 > 0xF80u)
        {
          v54 = v42 + 16;
          v55 = result;
          memcpy(*(v7 + 328), (v42 + 16), 0x1F0uLL);
          result = v55;
          v56 = 0;
          *(v42 + 16) = 0u;
          *(v42 + 32) = 0u;
          *(v42 + 48) = 0u;
          *(v42 + 64) = 0u;
          *(v42 + 80) = 0u;
          *(v42 + 96) = 0u;
          *(v42 + 112) = 0u;
          *(v42 + 128) = 0u;
          *(v42 + 144) = 0u;
          *(v42 + 160) = 0u;
          *(v42 + 176) = 0u;
          *(v42 + 192) = 0u;
          *(v42 + 208) = 0u;
          *(v42 + 224) = 0u;
          *(v42 + 240) = 0u;
          *(v42 + 256) = 0u;
          *(v42 + 272) = 0u;
          *(v42 + 288) = 0u;
          *(v42 + 304) = 0u;
          *(v42 + 320) = 0u;
          *(v42 + 336) = 0u;
          *(v42 + 352) = 0u;
          *(v42 + 368) = 0u;
          *(v42 + 384) = 0u;
          *(v42 + 400) = 0u;
          *(v42 + 416) = 0u;
          *(v42 + 432) = 0u;
          *(v42 + 448) = 0u;
          *(v42 + 464) = 0u;
          *(v42 + 480) = 0u;
          *(v42 + 496) = 0u;
          *(v42 + 4) = 0;
          do
          {
            v57 = *(v44 + 4 * v56);
            if (v57)
            {
              v58 = v57 == v45 + 1;
            }

            else
            {
              v58 = 1;
            }

            if (!v58)
            {
              v59 = (v57 - 1) % 0x7Cu;
              ++*(v42 + 4);
              while (*(v54 + 4 * v59))
              {
                if ((v59 + 1) <= 0x7B)
                {
                  v59 = (v59 + 1);
                }

                else
                {
                  v59 = 0;
                }
              }

              *(v54 + 4 * v59) = *(v44 + 4 * v56);
            }

            ++v56;
          }

          while (v56 != 124);
        }

        else
        {
          *(v42 + (v45 >> 3) + 16) &= ~(1 << (v45 & 7));
        }
      }
    }

    return result;
  }

  v49 = v73;
  v50 = *(v73 + 52);
  LOBYTE(v51) = v50 | 8;
  *(v73 + 52) = v50 | 8;
  if ((v50 & 0x11) != 0)
  {
    v51 = v50 & 0xFFE7 | 8;
    *(v49 + 52) = v51;
    if (v50)
    {
      *(v49 + 52) = v51 ^ 3;
      v52 = *(v49 + 24);
      *(v49 + 72) = 0;
      v53 = *v52;
      *(v49 + 64) = *v52;
      if (v53)
      {
        *(v53 + 72) = v49;
      }

      else
      {
        v52[1] = v49;
        if (*(v52 + 48))
        {
          *(v52 + 49) = 1;
        }
      }

      *v52 = v49;
      v49 = v73;
      v51 = *(v73 + 52);
    }
  }

  if ((v51 & 0x20) != 0)
  {
    v60 = *(v49 + 40);
    --*(v60 + 152);
    *(v49 + 32) = *(v60 + 168);
    *(v60 + 168) = v49;
    (*(**(v60 + 72) + 144))(*(v60 + 72), *(v60 + 200) * (*(v49 + 48) - 1), *(v49 + 8));
  }

  else
  {
    sub_181932B68(v49);
  }

LABEL_95:
  v72 = 0;
  *(a2 + 4) = a5;
  if ((v71 & 0xFFFFFFFB) == 1)
  {
    result = sub_181939484(a2);
    if (result)
    {
      return result;
    }

    if (v71 == 1)
    {
      return 0;
    }
  }

  else
  {
    v61 = bswap32(**(a2 + 80));
    if (v61)
    {
      sub_1818EF720(a1, v61, 4, a5, &v72);
      result = v72;
      if (v72)
      {
        return result;
      }
    }
  }

  v73 = 0;
  result = (*(*a1 + 288))();
  if (!result)
  {
    v62 = v73;
    v63 = *(v73 + 16);
    if (*(v63 + 4) == v29)
    {
      v62 = *(v63 + 112);
    }

    else
    {
      v64 = *(v73 + 8);
      *(v63 + 112) = v73;
      *(v63 + 72) = a1;
      *(v63 + 80) = v64;
      *(v63 + 4) = v29;
      if (v29 == 1)
      {
        v65 = 100;
      }

      else
      {
        v65 = 0;
      }

      *(v63 + 9) = v65;
    }

    v66 = sub_1818D8D88(v62);
    if (v66)
    {
      v67 = *(v63 + 112);
      v68 = v66;
      sub_181932B18(v67);
      return v68;
    }

    else
    {
      v69 = sub_18193960C(v63, v6, a5, v71);
      v72 = v69;
      sub_181932B18(*(v63 + 112));
      if (v69)
      {
        return v69;
      }

      else
      {
        sub_1818EF720(a1, a5, v71, v29, &v72);
        return v72;
      }
    }
  }

  return result;
}