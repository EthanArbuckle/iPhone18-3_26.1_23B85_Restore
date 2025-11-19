char *mdb_strerror(int a1)
{
  if (!a1)
  {
    return "Successful return: 0";
  }

  if ((a1 + 30799) > 0x13)
  {
    return strerror(a1);
  }

  return off_29EF06880[a1 + 30799];
}

uint64_t mdb_dcmp(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v4 = *(*(a1 + 80) + 48 * a2 + 24);
  if (v4 == sub_29908ADD8)
  {
    if (*a3 == 8)
    {
      return sub_29908ADF8(a3, a4);
    }

    v4 = sub_29908ADD8;
  }

  return v4(a3, a4);
}

uint64_t sub_29908ADD8(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_29908ADF8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *a1 - 2;
  v4 = (v2 + v3);
  v5 = (*(a2 + 8) + v3);
  v6 = v4;
  do
  {
    v8 = *v6--;
    v7 = v8;
    v9 = *v5--;
    result = (v7 - v9);
    v11 = v7 == v9 && v4 > v2;
    v4 = v6;
  }

  while (v11);
  return result;
}

uint64_t mdb_env_sync(uint64_t a1, int a2)
{
  v2 = *(a1 + 12);
  if ((v2 & 0x20000) != 0)
  {
    return 13;
  }

  if (!a2 && (v2 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) == 0)
  {
    result = fsync(*a1);
    if (!result)
    {
      return result;
    }

    return *__error();
  }

  if (((a2 == 0) & ((v2 & 0x100000u) >> 20)) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 16;
  }

  result = msync(*(a1 + 56), *(a1 + 112), v4);
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t mdb_txn_renew(uint64_t a1)
{
  if (!a1 || (~*(a1 + 124) & 0x20001) != 0)
  {
    return 22;
  }

  else
  {
    return sub_29908AED0(a1);
  }
}

uint64_t sub_29908AED0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(a1 + 124);
  if ((v4 & 0x20000) == 0)
  {
    if (v3)
    {
      v5 = *(v2 + 240);
      while (sem_wait(v5))
      {
        v6 = *__error();
        if (v6 != 4)
        {
          if (v6)
          {
            return v6;
          }

          break;
        }
      }

      v7 = *(v3 + 40);
      v8 = *(v2 + 8 * (v7 & 1) + 72);
    }

    else
    {
      v8 = *(v2 + 72 + 8 * (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128)));
      v7 = *(v8 + 128);
    }

    *(a1 + 24) = v7 + 1;
    *(a1 + 8) = 0;
    *(a1 + 56) = 0;
    *(a1 + 128) = 0x1FFFF;
    v10 = *(v2 + 208);
    *(a1 + 72) = v10;
    *v10 = 0;
    v11 = *(v2 + 200);
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    *v11 = 0;
    *(a1 + 64) = 0;
    *(v2 + 96) = a1;
    memcpy(*(a1 + 96), *(v2 + 152), 4 * *(v2 + 36));
    goto LABEL_17;
  }

  if (v3)
  {
    if ((*(v2 + 14) & 0x20) != 0)
    {
      v9 = *(a1 + 72);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = pthread_getspecific(*(v2 + 160));
      if (v9)
      {
LABEL_11:
        if (*(v9 + 2) != *(v2 + 40) || *v9 != -1)
        {
          return 4294936513;
        }

        goto LABEL_52;
      }
    }

    v23 = *(v2 + 40);
    v24 = pthread_self();
    v25 = *(v2 + 232);
    if (*(v2 + 224))
    {
      goto LABEL_33;
    }

    v6 = sub_299092974(v2, 8, v23);
    if (v6)
    {
      return v6;
    }

    *(v2 + 224) = 1;
LABEL_33:
    while (sem_wait(v25))
    {
      v6 = *__error();
      if (v6 != 4)
      {
        if (v6)
        {
          return v6;
        }

        break;
      }
    }

    v26 = *(v3 + 48);
    v9 = (v3 + 128);
    if (v26)
    {
      v27 = 0;
      v28 = (v3 + 136);
      while (1)
      {
        v29 = *v28;
        v28 += 16;
        if (!v29)
        {
          break;
        }

        if (v26 == ++v27)
        {
          LODWORD(v27) = *(v3 + 48);
          break;
        }
      }

      if (v27 != *(v2 + 24))
      {
        v9 += 64 * v27;
        *(v9 + 2) = 0;
        v30 = (v9 + 8);
        *v9 = -1;
        *(v9 + 2) = v24;
        if (v27 != v26)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    else if (*(v2 + 24))
    {
      *(v3 + 136) = 0;
      v30 = (v3 + 136);
      *(v3 + 128) = -1;
      *(v3 + 144) = v24;
LABEL_48:
      LODWORD(v26) = v26 + 1;
      *(v3 + 48) = v26;
LABEL_49:
      *(v2 + 28) = v26;
      *v30 = v23;
      sem_post(v25);
      v31 = *(v2 + 12);
      if ((v31 & 0x200000) != 0)
      {
        v33 = v31 & 0x200000;
        goto LABEL_55;
      }

      v32 = pthread_setspecific(*(v2 + 160), v9);
      if (v32)
      {
        v6 = v32;
        *v30 = 0;
        return v6;
      }

LABEL_52:
      v33 = 0;
      do
      {
LABEL_55:
        *v9 = *(v3 + 40);
      }

      while (*v9 != *(v3 + 40));
      v34 = *v9;
      *(a1 + 24) = *v9;
      *(a1 + 72) = v9;
      v8 = *(v2 + 8 * (v34 & 1) + 72);
      v12 = v33 | 5;
      goto LABEL_18;
    }

    sem_post(v25);
    return 4294936506;
  }

  v8 = *(v2 + 72 + 8 * (*(*(v2 + 72) + 128) < *(*(v2 + 80) + 128)));
  *(a1 + 24) = *(v8 + 128);
  *(a1 + 72) = 0;
LABEL_17:
  v12 = 5;
LABEL_18:
  v13 = *(a1 + 88);
  v14 = *(v8 + 40);
  *v13 = *(v8 + 24);
  v13[1] = v14;
  v15 = *(v8 + 56);
  v16 = *(v8 + 72);
  v17 = *(v8 + 104);
  v13[4] = *(v8 + 88);
  v13[5] = v17;
  v13[2] = v15;
  v13[3] = v16;
  *(a1 + 16) = *(v8 + 120) + 1;
  LODWORD(v13) = *(v2 + 32);
  *(a1 + 120) = v13;
  *(a1 + 124) = v4 & 0x20000;
  if (v13 >= 3)
  {
    v18 = 2;
    v19 = 100;
    do
    {
      v20 = *(*(v2 + 144) + 2 * v18);
      *(*(a1 + 88) + v19) = *(*(v2 + 144) + 2 * v18) & 0x7FFF;
      if (v20 < 0)
      {
        v21 = 26;
      }

      else
      {
        v21 = 0;
      }

      *(*(a1 + 112) + v18++) = v21;
      v19 += 48;
    }

    while (v18 < *(a1 + 120));
  }

  *(*(a1 + 112) + 1) = 24;
  **(a1 + 112) = 8;
  if ((*(v2 + 12) & 0x80000000) != 0)
  {
    v6 = 4294936501;
  }

  else
  {
    if (*(v2 + 128) >= *(a1 + 16))
    {
      return 0;
    }

    v6 = 4294936511;
  }

  sub_29908B60C(a1, v12);
  return v6;
}

uint64_t mdb_txn_begin(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v4 = *(a1 + 12);
  if ((v4 & ~a3 & 0x20000) != 0)
  {
    return 13;
  }

  v10 = v4 & 0x80000 | a3 & 0x20000;
  if (a2)
  {
    v11 = *(a2 + 124);
    v10 |= v11;
    if ((v10 & 0xA0013) != 0)
    {
      if ((v11 & 0x20000) != 0)
      {
        return 22;
      }

      else
      {
        return 4294936514;
      }
    }

    v13 = 152;
    v14 = 57;
    v15 = 19;
  }

  else
  {
    if ((a3 & 0x20000) == 0)
    {
      v12 = *(a1 + 104);
      goto LABEL_35;
    }

    v15 = 17;
    v14 = 49;
    v13 = 136;
  }

  v16 = v13 + *(a1 + 36) * v14;
  v17 = malloc_type_calloc(1uLL, v16, 0xE7BCC1D0uLL);
  if (!v17)
  {
    return 12;
  }

  v12 = v17;
  v17[10] = *(a1 + 136);
  v17[11] = &v17[v15];
  v18 = *(a1 + 36);
  v17[14] = v17 + v16 - v18;
  *(v17 + 31) = v10;
  v17[4] = a1;
  if (!a2)
  {
    v17[12] = *(a1 + 152);
LABEL_35:
    v5 = sub_29908AED0(v12);
    if (v5)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v17[12] = *(a2 + 96);
  v17[13] = &v17[6 * v18 + v15];
  v19 = malloc_type_malloc(0x200000uLL, 0x108004057E67DB5uLL);
  v12[9] = v19;
  if (!v19)
  {
LABEL_40:
    free(v19);
    free(v12);
    return 12;
  }

  v20 = malloc_type_malloc(0x100008uLL, 0x100004000313F17uLL);
  if (!v20)
  {
    v12[5] = 0;
    v19 = v12[9];
    goto LABEL_40;
  }

  *v20 = xmmword_2990981C0;
  v12[5] = v20 + 8;
  v21 = v12[9];
  *(v12 + 32) = *(a2 + 128);
  *v21 = 0;
  v12[8] = 0;
  v22 = *(a2 + 24);
  v12[2] = *(a2 + 16);
  v12[3] = v22;
  v23 = *(a2 + 120);
  *(a2 + 124) |= 0x10u;
  *(a2 + 8) = v12;
  *v12 = a2;
  *(v12 + 30) = v23;
  memcpy(v12[11], *(a2 + 88), 48 * v23);
  if (*(v12 + 30))
  {
    v24 = 0;
    do
    {
      *(v12[14] + v24) = *(*(a2 + 112) + v24) & 0xFB;
      ++v24;
    }

    while (v24 < *(v12 + 30));
  }

  *(v12 + 17) = *(a1 + 176);
  v25 = *(a1 + 176);
  if (!v25)
  {
LABEL_23:
    v29 = *(a2 + 120);
    if (v29 >= 1)
    {
      while (1)
      {
        v36 = v29--;
        v30 = *(*(a2 + 104) + 8 * v29);
        if (v30)
        {
          break;
        }

LABEL_32:
        if (v36 <= 1)
        {
          goto LABEL_38;
        }
      }

      if (v30[2])
      {
        v31 = 888;
      }

      else
      {
        v31 = 392;
      }

      while (1)
      {
        v32 = malloc_type_malloc(v31, 0x471B757CuLL);
        if (!v32)
        {
          goto LABEL_43;
        }

        v33 = v32;
        memcpy(v32, v30, 0x188uLL);
        v30[1] = v33;
        v30[5] = v12[11] + 48 * v29;
        v30[3] = v12;
        v30[7] = v12[14] + v29;
        v34 = v30[2];
        if (v34)
        {
          memcpy(v33 + 49, v30[2], 0x1F0uLL);
          *(v34 + 24) = v12;
        }

        v35 = v12[13];
        *v30 = *(v35 + 8 * v29);
        *(v35 + 8 * v29) = v30;
        v30 = *v33;
        if (!*v33)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_38:
    v5 = 0;
    *(v12 + 31) |= v10;
    *a4 = v12;
    return v5;
  }

  v26 = *v25;
  v27 = malloc_type_malloc(((*v25 << 32) + 0x200000000) >> 29, 0x100004000313F17uLL);
  if (v27)
  {
    *v27 = v26;
    v27[1] = 0;
    v28 = v27 + 1;
    *(a1 + 176) = v28;
    memcpy(v28, v12[17], 8 * v26 + 8);
    goto LABEL_23;
  }

  *(a1 + 176) = 0;
LABEL_43:
  sub_29908B60C(v12, 6);
  v5 = 12;
LABEL_36:
  if (v12 != *(a1 + 104))
  {
    free(v12);
  }

  return v5;
}

void sub_29908B60C(unsigned int *a1, int a2)
{
  v4 = *(a1 + 4);
  v5 = a1[30];
  if (v5 >= 3)
  {
    v6 = 48 * v5;
    v7 = *(a1 + 14) - 1;
    v8 = a1[30];
    do
    {
      if ((*(v7 + v8) & 4) != 0)
      {
        if ((a2 & 0x10) != 0)
        {
          *(*(v4 + 144) + 2 * v8 - 2) = *(*(a1 + 11) + v6 - 44) | 0x8000;
        }

        else
        {
          v9 = *(v4 + 136) + v6;
          v10 = *(v9 - 40);
          if (v10)
          {
            *(v9 - 48) = 0;
            *(v9 - 40) = 0;
            v11 = *(v4 + 152);
            *(*(v4 + 144) + 2 * v8 - 2) = 0;
            ++*(v11 + 4 * v8 - 4);
            free(v10);
          }
        }
      }

      --v8;
      v6 -= 48;
    }

    while ((v8 + 1) > 3);
  }

  if ((a2 & 0x10) != 0 && *(v4 + 32) < v5)
  {
    *(v4 + 32) = v5;
  }

  v12 = a1[31];
  if ((v12 & 0x20000) != 0)
  {
    v22 = *(a1 + 9);
    if (v22)
    {
      *v22 = -1;
      if ((*(v4 + 14) & 0x20) == 0)
      {
LABEL_33:
        *(a1 + 9) = 0;
        goto LABEL_34;
      }

      if ((a2 & 0x200000) != 0)
      {
        *(*(a1 + 9) + 8) = 0;
        goto LABEL_33;
      }
    }

LABEL_34:
    v23 = a1[31] | 1;
    a1[30] = 0;
    a1[31] = v23;
    goto LABEL_42;
  }

  if ((v12 & 1) == 0)
  {
    v14 = (v4 + 176);
    v13 = *(v4 + 176);
    if ((a2 & 0x10) == 0)
    {
      sub_29908C620(*(a1 + 13), a1[30], 0);
    }

    if ((*(v4 + 14) & 8) == 0)
    {
      v15 = *(a1 + 9);
      v16 = *v15;
      if (*v15)
      {
        v17 = *(a1 + 4);
        v18 = 1;
        do
        {
          v19 = *&v15[4 * v18 + 2];
          if ((*(v19 + 5) & 4) != 0 && *(v19 + 3) != 1)
          {
            free(v19);
          }

          else
          {
            *v19 = *(v17 + 192);
            *(v17 + 192) = v19;
          }

          ++v18;
        }

        while (v18 <= v16);
      }

      *v15 = 0;
    }

    *(a1 + 15) = 0x100000000;
    v20 = *a1;
    if (*a1)
    {
      *(v20 + 8) = 0;
      *(v20 + 124) &= ~0x10u;
      *v14 = *(a1 + 34);
      v21 = *(a1 + 5);
      if (v21)
      {
        free((v21 - 8));
      }

      free(*(a1 + 9));
    }

    else
    {
      mdb_midl_shrink(a1 + 5);
      *(v4 + 200) = *(a1 + 5);
      *(v4 + 96) = 0;
      *v14 = 0;
      *(v4 + 184) = 0;
      if (*(v4 + 64))
      {
        sem_post(*(v4 + 240));
      }

      LOBYTE(a2) = 0;
    }

    v24 = *(a1 + 8);
    if (v24)
    {
      free((v24 - 8));
    }

    if (v13)
    {
      free((v13 - 8));
    }
  }

LABEL_42:
  if ((a2 & 0x20) != 0)
  {

    free(a1);
  }
}

uint64_t mdb_txn_env(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t mdb_txn_id(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void mdb_txn_reset(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 126) & 2) != 0)
    {
      sub_29908B60C(a1, 3);
    }
  }
}

void mdb_txn_abort(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      mdb_txn_abort();
    }

    sub_29908B60C(a1, 2097186);
  }
}

uint64_t mdb_txn_commit(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 8))
  {
    appended = mdb_txn_commit();
    if (appended)
    {
      goto LABEL_4;
    }
  }

  v4 = 2097201;
  v5 = *(a1 + 124);
  if ((v5 & 0x20000) != 0)
  {
    goto LABEL_218;
  }

  v6 = *a1;
  if ((v5 & 3) != 0)
  {
    if (v6)
    {
      *(v6 + 124) |= 2u;
    }

    v3 = 4294936514;
    goto LABEL_10;
  }

  if (v6)
  {
    appended = mdb_midl_append_list((v6 + 40), *(a1 + 40));
    if (!appended)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        free((v7 - 8));
      }

      *(v6 + 16) = *(a1 + 16);
      *(v6 + 124) = *(a1 + 124);
      sub_29908C620(*(a1 + 104), *(a1 + 120), 1);
      memcpy(*(v6 + 88), *(a1 + 88), 48 * *(a1 + 120));
      *(v6 + 120) = *(a1 + 120);
      **(v6 + 112) = **(a1 + 112);
      *(*(v6 + 112) + 1) = *(*(a1 + 112) + 1);
      if (*(a1 + 120) >= 3u)
      {
        v8 = 2;
        do
        {
          *(*(v6 + 112) + v8) = *(*(a1 + 112) + v8) | *(*(v6 + 112) + v8) & 4;
          ++v8;
        }

        while (v8 < *(a1 + 120));
      }

      v9 = *(v6 + 64);
      v11 = *(v6 + 72);
      v10 = (v6 + 64);
      v12 = *(a1 + 72);
      if (v9)
      {
        v13 = *v9;
        if (*v9)
        {
          *v9 = -1;
          v14 = *v12;
          if (*v12)
          {
            if (v14 + 1 > 2)
            {
              v15 = v14 + 1;
            }

            else
            {
              v15 = 2;
            }

            v16 = 1;
            v17 = v13;
            v18 = v13;
            do
            {
              v19 = 2 * *&v12[4 * v16];
              do
              {
                v20 = v18;
                v21 = *&v9[2 * v18--];
              }

              while (v19 > v21);
              if (v19 == v21)
              {
                *&v9[2 * v20] = 1;
                v17 = v18;
              }

              else
              {
                ++v18;
              }

              ++v16;
            }

            while (v16 != v15);
          }

          else
          {
            v17 = v13;
          }

          for (i = v17 + 1; i <= v13; ++i)
          {
            v41 = *&v9[2 * i];
            if ((v41 & 1) == 0)
            {
              *&v9[2 * ++v17] = v41;
            }
          }

          *v9 = v17;
        }
      }

      v42 = *(a1 + 64);
      if (v42)
      {
        v43 = *v42;
        if (*v42)
        {
          v44 = 1;
          do
          {
            v45 = v42[v44];
            if ((v45 & 1) == 0)
            {
              v46 = v45 >> 1;
              v47 = mdb_mid2l_search(v11, v45 >> 1);
              if (*v11 >= v47)
              {
                v48 = v47;
                v49 = &v11[4 * v47];
                if (*v49 == v46)
                {
                  free(*(v49 + 1));
                  v50 = *v11;
                  if (*v11 > v48)
                  {
                    v51 = v48 + 1;
                    do
                    {
                      *&v11[4 * v48] = *&v11[4 * v51];
                      v48 = v51;
                      v50 = *v11;
                      v93 = *v11 > v51++;
                    }

                    while (v93);
                  }

                  *v11 = v50 - 1;
                  v42 = *(a1 + 64);
                  v43 = *v42;
                }
              }
            }

            v44 = (v44 + 1);
          }

          while (v43 >= v44);
        }
      }

      v52 = *v11;
      *v11 = 0;
      if (*v6)
      {
        v53 = *v12;
        v54 = *v12 + v52;
        v55 = mdb_mid2l_search(v12, *&v11[4 * v52] + 1);
        v56 = v55 - 1;
        if (v55 != 1 && v52 != 0)
        {
          v58 = v52;
          do
          {
            v59 = *&v12[4 * v56];
            v60 = v58 + 1;
            do
            {
              v61 = *&v11[4 * --v60];
            }

            while (v59 < v61);
            v62 = v59 == v61;
            v54 -= v62;
            if (!--v56)
            {
              break;
            }

            v58 = v60 - v62;
          }

          while (v58);
        }
      }

      else
      {
        v54 = 0x1FFFF - *(a1 + 128);
        LODWORD(v53) = *v12;
      }

      v53 = v53;
      if (v53)
      {
        v63 = v54;
        do
        {
          v64 = &v12[4 * v53];
          v65 = *v64;
          v66 = &v11[4 * v52];
          v67 = *v66;
          if (*v64 >= *v66)
          {
            v68 = v52;
          }

          else
          {
            do
            {
              *&v11[4 * v63--] = *v66;
              v52 = (v52 - 1);
              v66 = &v11[4 * v52];
              v67 = *v66;
            }

            while (v65 < *v66);
            v68 = v52;
          }

          if (v65 == v67)
          {
            LODWORD(v52) = v52 - 1;
            free(*&v11[4 * v68 + 2]);
          }

          *&v11[4 * v63--] = *v64;
          --v53;
        }

        while (v53);
      }

      *v11 = v54;
      free(*(a1 + 72));
      *(v6 + 128) = *(a1 + 128);
      v69 = *(a1 + 64);
      if (v69)
      {
        if (*v10)
        {
          v3 = mdb_midl_append_list((v6 + 64), v69);
          if (v3)
          {
            *(v6 + 124) |= 2u;
          }

          v70 = *(a1 + 64);
          if (v70)
          {
            free((v70 - 8));
          }

          mdb_midl_sort(*v10);
        }

        else
        {
          v3 = 0;
          *v10 = v69;
        }
      }

      else
      {
        v3 = 0;
      }

      v71 = (v6 + 48);
      do
      {
        v72 = v71;
        v73 = *v71;
        v71 = (*v71 + 32);
      }

      while (v73);
      *v72 = *(a1 + 48);
      *(v6 + 56) += *(a1 + 56);
      *(v6 + 8) = 0;
      v74 = *(a1 + 136);
      if (v74)
      {
        free((v74 - 8));
      }

      free(a1);
      return v3;
    }

LABEL_4:
    v3 = appended;
    goto LABEL_10;
  }

  v22 = *(a1 + 32);
  if (*(v22 + 96) != a1)
  {
    v3 = 22;
    goto LABEL_10;
  }

  sub_29908C620(*(a1 + 104), *(a1 + 120), 0);
  if (!**(a1 + 72) && (*(a1 + 124) & 0xC) == 0)
  {
LABEL_218:
    sub_29908B60C(a1, v4);
    return 0;
  }

  if (*(a1 + 120) >= 3u)
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    memset(v149, 0, sizeof(v149));
    v148 = 0u;
    v146 = xmmword_2990981D0;
    sub_29908C704(&v148, a1, 1u, 0);
    v23 = *(a1 + 120);
    if (v23 >= 3)
    {
      v24 = 2;
      v25 = 96;
      do
      {
        if (*(*(a1 + 112) + v24))
        {
          if (*(*(a1 + 96) + 4 * v24) != *(*(*(a1 + 32) + 152) + 4 * v24))
          {
            v3 = 4294936516;
            goto LABEL_10;
          }

          v26 = *(a1 + 80);
          *(&v146 + 1) = *(a1 + 88) + v25;
          appended = mdb_cursor_put(&v148, (v26 + v25), &v146, 2);
          if (appended)
          {
            goto LABEL_4;
          }

          v23 = *(a1 + 120);
        }

        ++v24;
        v25 += 48;
      }

      while (v24 < v23);
    }
  }

  v166 = 0;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  memset(v149, 0, sizeof(v149));
  v148 = 0u;
  v27 = *(a1 + 32);
  v28 = *(v27 + 216);
  v147 = 0;
  sub_29908C704(&v148, a1, 0, 0);
  if (!*(v27 + 176))
  {
    goto LABEL_222;
  }

  v29 = sub_299092A18(&v148, 0, 5);
  if (v29)
  {
    v3 = v29;
    if (v29 != -30798)
    {
      goto LABEL_10;
    }
  }

  if (!*(v27 + 176))
  {
LABEL_222:
    v30 = *(a1 + 48);
    if (v30)
    {
      v31 = v28;
      v32 = *(a1 + 72);
      appended = mdb_midl_need((a1 + 40), *(a1 + 56));
      if (appended)
      {
        goto LABEL_4;
      }

      do
      {
        v33 = *(a1 + 40);
        v34 = *v33 + 1;
        *v33 = v34;
        v35 = *v30;
        v33[v34] = *v30;
        if ((*(a1 + 126) & 8) != 0)
        {
          if (*v32)
          {
            v36 = 1;
            do
            {
              if (*(v32 + 16 * v36) == v35)
              {
                break;
              }

              v36 = (v36 + 1);
            }

            while (*v32 >= v36);
          }

          else
          {
            LODWORD(v36) = 1;
          }
        }

        else
        {
          LODWORD(v36) = mdb_mid2l_search(v32, v35);
          if ((*(v30 + 5) & 4) != 0 && *(v30 + 3) != 1)
          {
            free(v30);
          }

          else
          {
            *v30 = *(v27 + 192);
            *(v27 + 192) = v30;
          }
        }

        *(v32 + 16 * v36 + 8) = 0;
        v30 = v30[4];
      }

      while (v30);
      v37 = *v32;
      if (*(v32 + 24))
      {
        v38 = 1;
        while (v37 >= v38)
        {
          v38 = (v38 + 1);
          v39 = v38;
          if (!*(v32 + 16 * v38 + 8))
          {
            goto LABEL_124;
          }
        }

        v39 = v38;
      }

      else
      {
        v39 = 1;
        v38 = 1;
      }

LABEL_124:
      if (v37 >= v38)
      {
        LODWORD(v76) = v39;
        while (1)
        {
          do
          {
            v76 = (v76 + 1);
            v77 = v32 + 16 * v76;
            if (*(v77 + 8))
            {
              v78 = 0;
            }

            else
            {
              v78 = v37 >= v76;
            }
          }

          while (v78);
          if (v37 < v76)
          {
            break;
          }

          *(v32 + 16 * v39++) = *v77;
          v37 = *v32;
        }

        v75 = v39 - 1;
      }

      else
      {
        v75 = 0;
      }

      *v32 = v75;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      v28 = v31;
    }
  }

  v141 = (v27 + 176);
  v142 = v28;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v139 = *(v27 + 12) & 0x1080000;
  v138 = v28 + 1;
  v83 = (a1 + 24);
  v140 = 1;
  while (1)
  {
LABEL_136:
    v146 = 0uLL;
    v144 = 0;
    v145 = 0;
    if (v79 < *(v27 + 184))
    {
      while (1)
      {
        appended = sub_29908EAD4(&v148, &v146, 0);
        if (appended)
        {
          goto LABEL_4;
        }

        v79 = **(&v146 + 1);
        v147 = **(&v146 + 1);
        appended = mdb_cursor_del(&v148, 0);
        if (appended)
        {
          goto LABEL_4;
        }

        if (v79 >= *(v27 + 184))
        {
          v81 = 0;
          v82 = 0;
          break;
        }
      }
    }

    if (v80 < **(a1 + 40))
    {
      if (!v80)
      {
        v84 = sub_299092A18(&v148, 0, 9);
        if (v84)
        {
          v3 = v84;
          if (v84 != -30798)
          {
            goto LABEL_10;
          }
        }
      }

      v85 = *(a1 + 40);
      *&v146 = 8;
      *(&v146 + 1) = v83;
      v86 = *v85;
      while (1)
      {
        v80 = v86;
        v144 = 8 * v86 + 8;
        appended = mdb_cursor_put(&v148, &v146, &v144, 0x10000);
        if (appended)
        {
          goto LABEL_4;
        }

        v87 = *(a1 + 40);
        v86 = *v87;
        if (v80 >= *v87)
        {
          mdb_midl_sort(*(a1 + 40));
          memcpy(v145, v87, v144);
          goto LABEL_136;
        }
      }
    }

    v137 = v83;
    v88 = *v141;
    v89 = *v141 ? *v88 : 0;
    v90 = *(a1 + 56);
    v91 = v89 + v90;
    if (v82 >= v89 + v90)
    {
      break;
    }

    v92 = v147;
    v83 = v137;
    if (v81 >= v142 && v147 >= 2)
    {
      v81 = 0;
      v92 = --v147;
    }

LABEL_161:
    v94 = v82 - v81;
    v95 = v91 - v94;
    if (v91 - v94 > v142 && v92 >= 2)
    {
      v81 = v142 + (v95 / v92) / v138 * v138;
    }

    else
    {
      v81 = v95 & ~(v95 >> 63);
    }

    *&v146 = 8;
    *(&v146 + 1) = &v147;
    v144 = 8 * v81 + 8;
    appended = mdb_cursor_put(&v148, &v146, &v144, 0x10000);
    if (appended)
    {
      goto LABEL_4;
    }

    if (v81 > v142 && v139 == 0)
    {
      v98 = v81;
    }

    else
    {
      v98 = 0;
    }

    bzero(&v145[v98 & (v98 >> 63)], 8 * (v98 - (v98 & (v98 >> 63))) + 8);
    v82 = v81 + v94;
  }

  v93 = v82 == v89 + v90 || v140 < 1;
  if (!v93)
  {
    v140 = 0;
    v92 = v147;
    v83 = v137;
    goto LABEL_161;
  }

  v99 = *(a1 + 48);
  if (v99)
  {
    v100 = v90;
    appended = mdb_midl_need(v141, (2 * v90) | 1);
    if (appended)
    {
      goto LABEL_4;
    }

    v88 = *v141;
    v101 = &(*v141)[*(*v141 - 1) - v100];
    v102 = 1;
    do
    {
      v103 = v102;
      *&v101[2 * v102] = *v99;
      v99 = v99[4];
      ++v102;
    }

    while (v99);
    *v101 = v103;
    mdb_midl_sort(v101);
    mdb_midl_xmerge(v88, v101);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v104 = *v88;
  }

  else
  {
    v104 = v89 + v90;
  }

  if (!v104)
  {
    goto LABEL_194;
  }

  v146 = 0uLL;
  v144 = 0;
  v145 = 0;
  appended = sub_29908EAD4(&v148, &v146, &v144);
  if (appended)
  {
    goto LABEL_4;
  }

  v105 = &v88[v104];
  while (1)
  {
    v143 = **(&v146 + 1);
    v106 = (v144 >> 3) - 1;
    *(&v146 + 1) = &v143;
    v107 = v104;
    if (v106 > v104)
    {
      v144 = 8 * v104 + 8;
      v106 = v104;
    }

    v105 -= v106;
    v145 = v105;
    v108 = *v105;
    *v105 = v106;
    v109 = mdb_cursor_put(&v148, &v146, &v144, 64);
    *v105 = v108;
    v104 = v107 - v106;
    if (v107 == v106 || v109 != 0)
    {
      break;
    }

    appended = sub_29908E3AC(&v148, &v146, &v144, 8);
    if (appended)
    {
      goto LABEL_4;
    }
  }

  v3 = v109;
  if (!v109)
  {
LABEL_194:
    v111 = *(v22 + 176);
    if (v111)
    {
      free((v111 - 8));
    }

    *(v22 + 176) = 0;
    mdb_midl_shrink((a1 + 40));
    appended = sub_29908D5C4(a1, 0);
    if (appended)
    {
      goto LABEL_4;
    }

    appended = mdb_env_sync(v22, 0);
    if (appended)
    {
      goto LABEL_4;
    }

    v148 = 0uLL;
    v112 = *(a1 + 24);
    v113 = *(a1 + 32);
    v114 = *(v113 + 12);
    v115 = *(v113 + 72 + 8 * (v112 & 1));
    v116 = *(*(v113 + 72 + 8 * !(v112 & 1)) + 16);
    if (v116 <= *(v113 + 112))
    {
      v116 = *(v113 + 112);
    }

    if ((v114 & 0x80000) == 0)
    {
      *&v146 = *(v115 + 128);
      v117 = *(v115 + 120);
      *&v149[0] = v116;
      v118 = *(a1 + 88);
      v119 = *v118;
      v120 = v118[1];
      *(&v149[2] + 8) = v118[2];
      *(&v149[1] + 8) = v120;
      *(v149 + 8) = v119;
      v122 = v118[4];
      v121 = v118[5];
      *(&v149[3] + 8) = v118[3];
      *(&v149[5] + 8) = v121;
      *(&v149[4] + 8) = v122;
      *(&v149[6] + 1) = *(a1 + 16) - 1;
      *&v150 = v112;
      v123 = v115 - *(v113 + 56);
      v124 = *(v113 + 8 * ((v114 & 0x50000) == 0));
      while (1)
      {
        v125 = pwrite(v124, v149, 0x78uLL, v123 + 16);
        if (v125 == 120)
        {
          break;
        }

        if ((v125 & 0x80000000) == 0)
        {
          v3 = 5;
LABEL_215:
          *(&v149[6] + 1) = v117;
          *&v150 = v146;
          pwrite(*v113, v149, 0x78uLL, v123 + 16);
          goto LABEL_216;
        }

        v3 = *__error();
        if (v3 != 4)
        {
          goto LABEL_215;
        }
      }

LABEL_207:
      v132 = *(v113 + 64);
      if (v132)
      {
        *(v132 + 40) = *v137;
      }

      goto LABEL_217;
    }

    *(v115 + 16) = v116;
    v126 = *(a1 + 88);
    v127 = *v126;
    v128 = v126[1];
    *(v115 + 56) = v126[2];
    *(v115 + 40) = v128;
    *(v115 + 24) = v127;
    v129 = *(a1 + 88);
    v130 = v129[3];
    v131 = v129[4];
    *(v115 + 104) = v129[5];
    *(v115 + 88) = v131;
    *(v115 + 72) = v130;
    *(v115 + 120) = *(a1 + 16) - 1;
    *(v115 + 128) = *(a1 + 24);
    if ((v114 & 0x50000) != 0)
    {
      goto LABEL_207;
    }

    v133 = (*(v113 + 12) & 0x100000) != 0 ? 1 : 16;
    v134 = v115 - 16;
    v135 = (*(v113 + 20) - 1) & (v134 - *(v113 + 56));
    if (!msync((v134 - v135), (v135 + *(v113 + 16)), v133))
    {
      goto LABEL_207;
    }

    v3 = *__error();
LABEL_216:
    *(v113 + 12) |= 0x80000000;
    if (!v3)
    {
LABEL_217:
      v4 = 16;
      goto LABEL_218;
    }
  }

LABEL_10:
  mdb_txn_abort(a1);
  return v3;
}

void sub_29908C620(uint64_t a1, int a2, int a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      v6 = *(a1 + 8 * (v5 - 1));
      while (v6)
      {
        v7 = v6;
        v6 = *v6;
        v8 = v7[1];
        if (v8)
        {
          if (a3)
          {
            *v7 = *v8;
            v9 = v8[3];
            v7[3] = v9;
            v7[5] = v8[5];
            v7[7] = v8[7];
            v10 = v7[2];
            if (v10)
            {
              *(v10 + 24) = v9;
            }
          }

          else
          {
            memcpy(v7, v7[1], 0x188uLL);
            v11 = v7[2];
            if (v11)
            {
              memcpy(v11, v8 + 49, 0x1F0uLL);
            }
          }
        }

        else
        {
          v8 = v7;
        }

        free(v8);
      }

      *(a1 + 8 * (v5 - 1)) = 0;
    }

    while (v5-- > 1);
  }
}

uint64_t sub_29908C704(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 32) = a3;
  *(result + 24) = a2;
  v4 = a2[10] + 48 * a3;
  *(result + 40) = a2[11] + 48 * a3;
  *(result + 48) = v4;
  v5 = (a2[14] + a3);
  *(result + 328) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = v5;
  if ((*(a2[11] + 48 * a3 + 4) & 4) != 0)
  {
    *(result + 16) = a4;
    *(a4 + 16) = 0;
    *(a4 + 24) = a2;
    *(a4 + 40) = a4 + 392;
    *(a4 + 48) = a4 + 440;
    *(a4 + 32) = a3;
    *(a4 + 56) = a4 + 488;
    *(a4 + 64) = 0x400000000;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    v6 = *(result + 48);
    v5 = *(result + 56);
    v8 = *(v6 + 24);
    v7 = *(v6 + 32);
    *(a4 + 456) = v8;
    *(a4 + 464) = 0;
    *(a4 + 472) = v7;
  }

  else
  {
    *(result + 16) = 0;
  }

  if ((*v5 & 2) != 0)
  {
    return sub_299092A18(result, 0, 2);
  }

  return result;
}

uint64_t mdb_cursor_put(uint64_t a1, size_t *a2, uint64_t a3, int a4)
{
  v129 = 0;
  result = 22;
  if (!a1 || !a2)
  {
    return result;
  }

  v127 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v122 = 0u;
  memset(v121, 0, sizeof(v121));
  v9 = *(a1 + 24);
  v10 = *(v9 + 32);
  if ((a4 & 0x80000) != 0)
  {
    v11 = *(a3 + 16);
    *(a3 + 16) = 0;
    if ((*(*(a1 + 40) + 4) & 0x10) == 0)
    {
      return 4294936512;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 124);
  if ((v12 & 0x20013) != 0)
  {
    if ((v12 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  if (*a2 - 512 < 0xFFFFFFFFFFFFFE01)
  {
    return 4294936515;
  }

  v13 = *(a1 + 40);
  v14 = 511;
  if ((*(v13 + 4) & 4) == 0)
  {
    v14 = 0xFFFFFFFFLL;
  }

  if (*a3 > v14)
  {
    return 4294936515;
  }

  v125 = 0;
  if ((a4 & 0x40) != 0)
  {
    v17 = *(a1 + 68);
    if ((v17 & 1) == 0)
    {
      return result;
    }

    LODWORD(v16) = 0;
  }

  else if (*(v13 + 40) == -1)
  {
    v17 = *(a1 + 68) & 0xFFFFFFFE;
    *(a1 + 64) = 0;
    *(a1 + 68) = v17;
    LODWORD(v16) = -30770;
  }

  else
  {
    v120 = 0;
    v119 = 0uLL;
    if ((a4 & 0x20000) != 0)
    {
      v118[0] = 0;
      v118[1] = 0;
      v16 = sub_29908E604(a1, v118, &v119);
      if (!v16)
      {
        if ((*(*(a1 + 48) + 16))(a2, v118) < 1)
        {
          v16 = 4294936497;
        }

        else
        {
          v18 = a1 + 2 * *(a1 + 66);
          ++*(v18 + 328);
          v16 = 4294936498;
        }
      }
    }

    else
    {
      v15 = sub_29908DAE8(a1, a2, &v119, 15, &v120);
      v16 = v15;
      if ((a4 & 0x10) != 0 && !v15)
      {
        *a3 = v119;
        return 4294936497;
      }
    }

    if (v16 != -30798 && v16)
    {
      return v16;
    }

    v17 = *(a1 + 68);
  }

  if ((v17 & 8) != 0)
  {
    *(a1 + 68) = v17 & 0xFFFFFFF7;
  }

  if ((a4 & 0x8000) == 0)
  {
    v19 = a3;
    if ((a4 & 0x80000) != 0)
    {
      v127 = *a3 * v11;
      v19 = &v127;
    }

    result = sub_29908EBF4(a1, a2, v19);
    if (result)
    {
      return result;
    }
  }

  v20 = a4 & 0xFFFF7FFF;
  if (v16 == -30770)
  {
    *&v119 = 0;
    result = sub_29908EE68(a1, 2, 1, &v119);
    if (result)
    {
      return result;
    }

    v21 = *(a1 + 64);
    if (v21 < 0x20)
    {
      v22 = v119;
      *(a1 + 64) = v21 + 1;
      *(a1 + 66) = v21;
      *(a1 + 8 * v21 + 72) = v22;
      *(a1 + 2 * v21 + 328) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
      v22 = v119;
    }

    v24 = *(a1 + 40);
    *(v24 + 40) = *v22;
    ++*(v24 + 6);
    **(a1 + 56) |= 1u;
    v23 = *(a1 + 40);
    if ((*(v23 + 4) & 0x14) == 0x10)
    {
      *(v22 + 10) |= 0x20u;
    }

    *(a1 + 68) |= 1u;
LABEL_51:
    if ((*(v23 + 4) & 4) != 0 && *a2 + *a3 + 8 > *(v10 + 220))
    {
      v114 = 0;
      v25 = *(v10 + 88);
      *(v25 + 4) = *a3;
      *(v25 + 3) = 1048592;
      v123 = 16;
      v26 = 18;
      goto LABEL_108;
    }

    v114 = 0;
    v115 = 0;
    v27 = 1;
    goto LABEL_100;
  }

  result = sub_29908EF2C(a1);
  if (result)
  {
    return result;
  }

  if (v16)
  {
    v23 = *(a1 + 40);
    goto LABEL_51;
  }

  v28 = *(a1 + 66);
  v29 = *(a1 + 8 * v28 + 72);
  v30 = *(a1 + 40);
  if ((*(v29 + 10) & 0x20) != 0)
  {
    v31 = *v30;
    v32 = *a2;
    if (*a2 != v31)
    {
      return 4294936515;
    }

    v33 = a2[1];
    v34 = (v29 + v31 * *(a1 + 2 * v28 + 328) + 16);
    goto LABEL_84;
  }

  v114 = 0;
  v115 = 0;
  v113 = 0;
  while (1)
  {
    v35 = *(a1 + 8 * v28 + 72);
    v36 = (v35 + *(v35 + *(a1 + 2 * v28 + 328) + 8));
    v123 = *v36;
    v124 = v36 + *(v36 + 3) + 8;
    if ((v30[1] & 4) != 0)
    {
      v37 = *(v10 + 88);
      v128 = v37;
      v129 = v37;
      *v37 = *v35;
      v38 = *(v36 + 2);
      if ((v38 & 4) != 0)
      {
        if ((v38 & 2) != 0)
        {
          v112 = 0;
          v20 |= 6u;
          goto LABEL_160;
        }

        v25 = v124;
        if (v20 == 64)
        {
          goto LABEL_72;
        }

        v23 = *(a1 + 40);
        if ((*(v23 + 4) & 0x10) != 0)
        {
          v61 = *(v124 + 4);
          if (v61 <= (*(v124 + 7) - *(v124 + 6)))
          {
LABEL_72:
            v112 = 0;
            *(v124 + 5) |= 0x10u;
            *v25 = *v37;
            *(v25 + 1) = *(v37 + 1);
            *(v25 + 2) = *(v37 + 2);
            *(v25 + 3) = *(v37 + 3);
            *(*(a1 + 16) + 72) = v25;
            v20 |= 4u;
            goto LABEL_160;
          }

          v116 = v20;
          v45 = 4 * v61;
        }

        else
        {
          v116 = v20;
          v45 = (*a3 + 11) & 0xFFFFFFFE;
        }

        v59 = v123;
        v60 = v123 + v45;
        v127 = v60;
        v26 = *(v124 + 5);
        goto LABEL_106;
      }

      if (v20 != 64)
      {
        v39 = *(*(a1 + 48) + 24);
        if (v123 == 8 && v39 == sub_29908ADD8)
        {
          v39 = sub_29908ADF8;
        }

        if (v39(a3, &v123))
        {
          v41 = v123;
          v125 = v123;
          memcpy(v37 + 16, v124, v123);
          v126 = v37 + 16;
          *(v37 + 10) = 1048658;
          v42 = *a3;
          v43 = v41 + *a3 + 16;
          v23 = *(a1 + 40);
          v116 = v20;
          if ((*(v23 + 4) & 0x10) != 0)
          {
            v26 = 114;
            *(v37 + 5) = 114;
            *(v37 + 4) = v42;
            v44 = 2 * v42;
          }

          else
          {
            v44 = ((*a3 & 1) + (v41 & 1)) | 0x14;
            v26 = 82;
          }

          LOWORD(v45) = 0;
          v59 = v43 + v44;
          v127 = v59;
          *(v37 + 7) = v59;
          v123 = v59;
          v60 = v59;
          v25 = v37;
LABEL_106:
          if (v60 + *(v36 + 3) + 8 <= *(v10 + 220))
          {
            LODWORD(v16) = 0;
          }

          else
          {
            LODWORD(v16) = 0;
            v26 &= ~0x40u;
            v20 = v116;
LABEL_108:
            if ((*(v23 + 4) & 0x10) != 0)
            {
              v26 |= 0x20u;
              LODWORD(v121[0]) = *(v25 + 4);
              WORD2(v121[0]) = 16;
              if ((*(v23 + 4) & 0x20) != 0)
              {
                v62 = 24;
              }

              else
              {
                v62 = 16;
              }

              WORD2(v121[0]) = v62;
            }

            else
            {
              LODWORD(v121[0]) = 0;
              WORD2(v121[0]) = 0;
            }

            WORD3(v121[0]) = 1;
            *(v121 + 8) = xmmword_2990981E0;
            *(&v121[1] + 1) = 0;
            *&v122 = (*(v25 + 6) - 16) >> 1;
            v127 = 48;
            v128 = v121;
            result = sub_29908F1F4(a1, 1, &v129);
            if (result)
            {
              return result;
            }

            v59 = v123;
            v63 = v20;
            v45 = *(v10 + 16) - v123;
            v116 = v63 | 6;
            v37 = v129;
            *(&v122 + 1) = *v129;
            v115 = v129;
          }

          if (v37 != v25)
          {
            *(v37 + 5) = v26 | 0x10;
            *(v37 + 4) = *(v25 + 4);
            *(v37 + 6) = *(v25 + 6);
            v64 = *(v25 + 7) + v45;
            *(v37 + 7) = v64;
            if ((v26 & 0x20) != 0)
            {
              memcpy(v37 + 16, v25 + 16, ((*(v25 + 6) - 16) >> 1) * *(v25 + 4));
            }

            else
            {
              memcpy(&v37[v64], &v25[*(v25 + 7)], v59 - *(v25 + 7));
              v65 = v37 + 16;
              memcpy(v65, v25 + 16, (*(v25 + 6) - 16) & 0xFFFFFFFE);
              if ((*(v25 + 6) & 0xFFFE) != 0x10)
              {
                v66 = 0;
                do
                {
                  *(v65 + v66++) += v45;
                }

                while (v66 < (*(v25 + 6) - 16) >> 1);
              }
            }
          }

          v20 = v116 | 4;
          v58 = &v127;
          if (v16)
          {
            v27 = 0;
          }

          else
          {
            sub_29908F674(a1, 0);
            v27 = 0;
            v58 = &v127;
          }

          goto LABEL_126;
        }

        if ((v20 & 0x40020) != 0)
        {
          return 4294936497;
        }
      }
    }

    v46 = *(v36 + 2);
    if (((v20 ^ v46) & 2) != 0)
    {
      return 4294936512;
    }

    if (v46)
    {
      v118[0] = 0;
      v120 = 0;
      v52 = *a3;
      v53 = *(v10 + 16);
      v54 = *v124;
      result = sub_29908F7A4(*(a1 + 24), *v124, v118, &v120);
      if (result)
      {
        return result;
      }

      v55 = (v52 + 15) / v53 + 1;
      v56 = v118[0];
      v57 = *(v118[0] + 3);
      if (v57 >= v55)
      {
        if ((*(v118[0] + 5) & 0x10) != 0)
        {
          if (v120 <= 1)
          {
LABEL_214:
            v111 = v20 & 0x10000;
            v109 = v56;
          }

          else
          {
            v107 = *(v10 + 16);
            v108 = sub_29908FAEC(*(a1 + 24), *(v118[0] + 3));
            if (!v108)
            {
              return 12;
            }

            v109 = v108;
            v110 = v107 * v57;
            *&v119 = v54;
            *(&v119 + 1) = v108;
            mdb_mid2l_insert(*(*(a1 + 24) + 72), &v119);
            v111 = v20 & 0x10000;
            if ((v20 & 0x10000) == 0)
            {
              memcpy(&v109[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], &v56[(*a3 & 0xFFFFFFFFFFFFFFF8) + 16], v110 - ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16));
              v110 = 16;
            }

            memcpy(v109, v56, v110);
          }

          v47 = *a3;
          *v36 = *a3;
          v104 = v109 + 16;
          if (v111)
          {
            result = 0;
            goto LABEL_217;
          }

          v106 = *(a3 + 8);
          v105 = v109 + 16;
LABEL_219:
          memcpy(v105, v106, v47);
          return 0;
        }

        if (v120 || (*(v10 + 14) & 8) != 0)
        {
          result = sub_29908F90C(*(a1 + 24), v118[0], v118);
          if (result)
          {
            return result;
          }

          v120 = 0;
          v56 = v118[0];
          if ((*(v118[0] + 5) & 0x10) != 0)
          {
            goto LABEL_214;
          }
        }
      }

      result = sub_29908FB9C(a1, v56);
      if (result)
      {
        return result;
      }

      goto LABEL_99;
    }

    v47 = *a3;
    if (*a3 != v123)
    {
      goto LABEL_99;
    }

    if ((v20 & 0x10000) != 0)
    {
      result = 0;
      v104 = v124;
LABEL_217:
      *(a3 + 8) = v104;
      return result;
    }

    if ((*(a1 + 68) & 4) == 0)
    {
      v105 = v124;
      v106 = *(a3 + 8);
      goto LABEL_219;
    }

    v32 = *a2;
    if (*a2 == *(v36 + 3))
    {
      v33 = a2[1];
      v34 = v36 + 2;
LABEL_84:
      memcpy(v34, v33, v32);
      v48 = *(a1 + 66);
      if (*(a1 + 66))
      {
        v49 = a1 + 328;
        if (!*(a1 + 328 + 2 * v48))
        {
          v50 = v48 - 1;
          *(a1 + 66) = v48 - 1;
          if (v48 == 1)
          {
            v50 = 0;
            LOWORD(v48) = 1;
          }

          else
          {
            v51 = 1;
            while (!*(v49 + 2 * v50))
            {
              *(a1 + 66) = --v50;
              ++v51;
              if (!v50)
              {
                v50 = 0;
                goto LABEL_224;
              }
            }

            LOWORD(v48) = v51;
          }

LABEL_224:
          if (*(v49 + 2 * v50))
          {
            result = sub_29908F08C(a1, a2);
            *(a1 + 66) += v48;
            if (result)
            {
              return result;
            }
          }

          else
          {
            *(a1 + 66) = v48 + v50;
          }
        }
      }

      return 0;
    }

LABEL_99:
    sub_29908F674(a1, 0);
    LODWORD(v16) = 0;
    v27 = v113 == 0;
LABEL_100:
    v58 = a3;
LABEL_126:
    v67 = *(a1 + 66);
    v68 = *(a1 + 72 + 8 * v67);
    v69 = *a2;
    if ((v68[5] & 0x20) == 0)
    {
      v70 = v69 + *v58 + 8;
      v71 = v69 + 16;
      if (v70 <= *(v10 + 220))
      {
        v71 = v70;
      }

      v69 = (v71 + 3) & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v69 <= (v68[7] - v68[6]))
    {
      result = sub_299090D50(a1, *(a1 + 328 + 2 * v67), a2, v58, 0, v20 & 0x30006);
      if (result)
      {
        goto LABEL_206;
      }

      v74 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v74)
      {
        v75 = *(a1 + 66);
        v76 = *(a1 + 72 + 8 * v75);
        v77 = *(a1 + 68);
        do
        {
          v78 = v74;
          if ((v77 & 4) != 0)
          {
            v78 = v74[2];
          }

          if (v78 != a1 && *(v78 + 32) >= *(a1 + 64) && v78[v75 + 9] == v76)
          {
            v79 = *(v78 + v75 + 164);
            if (v16 && v79 >= *(a1 + 328 + 2 * v75))
            {
              LOWORD(v79) = v79 + 1;
              *(v78 + v75 + 164) = v79;
            }

            v80 = v78[2];
            if (v80)
            {
              if ((*(v80 + 68) & 1) != 0 && (*(v76 + 12) - 16) >> 1 > v79)
              {
                v81 = v76 + *(v76 + 16 + 2 * v79);
                if ((*(v81 + 4) & 6) == 4)
                {
                  *(v80 + 72) = v81 + *(v81 + 6) + 8;
                }
              }
            }
          }

          v74 = *v74;
        }

        while (v74);
      }
    }

    else
    {
      if ((v20 & 6) == 4)
      {
        v72 = v20 & 0x10004;
      }

      else
      {
        v72 = v20 & 0x30006;
      }

      if (v16)
      {
        v73 = v72;
      }

      else
      {
        v73 = v72 | 0x40000;
      }

      result = sub_29908FE64(a1, a2, v58, 0xFFFFFFFFFFFFFFFFLL, v73);
      if (result)
      {
        goto LABEL_206;
      }
    }

    if (v27)
    {
      result = 0;
      v113 = 0;
      v82 = v16;
      goto LABEL_193;
    }

    v112 = v16;
    v113 = 1;
LABEL_160:
    v127 = 0;
    v128 = &unk_299097C57;
    v83 = *(a1 + 72 + 8 * *(a1 + 66)) + *(*(a1 + 72 + 8 * *(a1 + 66)) + 2 * *(a1 + 328 + 2 * *(a1 + 66)) + 16);
    v84 = 32832;
    if ((v20 & 0x40040) != 0x40)
    {
      sub_299091004(a1, *(a1 + 72 + 8 * *(a1 + 66)) + *(*(a1 + 72 + 8 * *(a1 + 66)) + 2 * *(a1 + 328 + 2 * *(a1 + 66)) + 16));
      if ((v20 & 0x20) != 0)
      {
        v84 = 32784;
      }

      else
      {
        v84 = 0x8000;
      }
    }

    v117 = v20;
    v85 = v115;
    if (v115)
    {
      *(*(a1 + 16) + 72) = v115;
    }

    v86 = v125;
    if (v125)
    {
      LODWORD(result) = mdb_cursor_put(*(a1 + 16), &v125, &v127, v84);
      if (result)
      {
        goto LABEL_203;
      }

      v125 = 0;
      v85 = v115;
    }

    if (v85 || (*(v83 + 4) & 2) == 0)
    {
      v87 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
      if (v87)
      {
        v88 = *(a1 + 66);
        v89 = *(a1 + 72 + 8 * v88);
        v90 = *(a1 + 16);
        while (1)
        {
          if (v87 == a1 || *(v87 + 32) < *(a1 + 64) || (*(v87 + 68) & 1) == 0 || v87[v88 + 9] != v89)
          {
            goto LABEL_189;
          }

          v91 = *(v87 + v88 + 164);
          if (v91 != *(a1 + 328 + 2 * v88))
          {
            break;
          }

          v92 = v87[2];
          if (v86)
          {
            v93 = *(v92 + 68) | 1;
            *(v92 + 64) = 1;
            *(v92 + 68) = v93;
            *(v92 + 328) = 0;
            *(v92 + 488) = 56;
            *(v92 + 456) = *(v90 + 456);
LABEL_187:
            v96 = *(v90 + 392);
            v97 = *(v90 + 424);
            *(v92 + 408) = *(v90 + 408);
            *(v92 + 424) = v97;
            *(v92 + 392) = v96;
            v95 = *(v90 + 72);
LABEL_188:
            *(v92 + 72) = v95;
            goto LABEL_189;
          }

          if (*(v92 + 68))
          {
            goto LABEL_187;
          }

LABEL_189:
          v87 = *v87;
          if (!v87)
          {
            goto LABEL_190;
          }
        }

        if (v112)
        {
          goto LABEL_189;
        }

        v92 = v87[2];
        if (!v92)
        {
          goto LABEL_189;
        }

        if ((*(v92 + 68) & 1) == 0)
        {
          goto LABEL_189;
        }

        if (v91 >= (*(v89 + 12) - 16) >> 1)
        {
          goto LABEL_189;
        }

        v94 = v89 + *(v89 + 16 + 2 * *(v87 + v88 + 164));
        if ((*(v94 + 4) & 6) != 4)
        {
          goto LABEL_189;
        }

        v95 = v94 + *(v94 + 6) + 8;
        goto LABEL_188;
      }
    }

LABEL_190:
    v98 = *(a1 + 16);
    v99 = *(v98 + 424);
    v20 = v117;
    result = mdb_cursor_put(v98, a3, &v127, v84 | (v117 >> 1) & 0x20000);
    if ((v117 & 2) != 0)
    {
      v100 = v83 + *(v83 + 6);
      v102 = *(*(a1 + 16) + 408);
      v101 = *(*(a1 + 16) + 424);
      *(v100 + 8) = *(*(a1 + 16) + 392);
      *(v100 + 24) = v102;
      *(v100 + 40) = v101;
    }

    v82 = *(*(a1 + 16) + 424) - v99;
    LODWORD(v16) = v112;
LABEL_193:
    if (v82)
    {
      ++*(*(a1 + 40) + 32);
    }

    if (v16)
    {
      break;
    }

LABEL_198:
    if ((v20 & 0x80000) == 0 || result)
    {
      return result;
    }

    v103 = (v114 + 1);
    *(a3 + 16) = v103;
    if (v103 >= v11)
    {
      return 0;
    }

    ++v114;
    *(a3 + 8) += *a3;
    v28 = *(a1 + 66);
    v30 = *(a1 + 40);
  }

  if (!result)
  {
    *(a1 + 68) |= 1u;
    goto LABEL_198;
  }

LABEL_203:
  if (result == -30799)
  {
    result = 4294936500;
  }

  else
  {
    result = result;
  }

LABEL_206:
  *(*(a1 + 24) + 124) |= 2u;
  return result;
}

uint64_t sub_29908D5C4(uint64_t a1, int a2)
{
  v2 = a1;
  v46 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = *(a1 + 72);
  v5 = *v4;
  if ((*(v3 + 14) & 8) == 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 16);
    v42 = *v4;
    v43 = v5;
    v44 = v5 + 1;
    v13 = -*v4;
    v39 = v4 + 4;
    v14 = 1;
    v37 = a2;
    v15 = a2;
    v40 = v12;
    v41 = *(a1 + 72);
    while (1)
    {
      if (v15 >= v5)
      {
        v20 = 0;
        ++v15;
      }

      else
      {
        v16 = v15;
        v17 = v15 + 1;
        v18 = &v4[2 * v17];
        v8 = v18[1];
        v19 = *(v8 + 10);
        if (v19 >= 0x4000)
        {
          *(v8 + 10) = v19 & 0x7FFF;
          *v18 = 0;
          v15 += 2;
          if (v44 == v16 + 2)
          {
LABEL_11:
            v20 = v17 < v43;
            v15 = v44;
            goto LABEL_16;
          }

          v18 = &v39[2 * v16];
          while (1)
          {
            v8 = v18[1];
            v19 = *(v8 + 10);
            if (v19 < 0x4000)
            {
              break;
            }

            *(v8 + 10) = v19 & 0x7FFF;
            *v18 = 0;
            v18 += 2;
            ++v15;
            ++v17;
            if (v13 + v15 == 1)
            {
              goto LABEL_11;
            }
          }

          v20 = v17 < v43;
        }

        else
        {
          v20 = 1;
          ++v15;
        }

        v21 = *v18;
        *(v8 + 10) = v19 & 0x3FEF;
        v7 = v21 * v12;
        if ((v19 & 4) != 0)
        {
          v6 = *(v8 + 12) * v12;
        }

        else
        {
          v6 = v12;
        }
      }

LABEL_16:
      if (v7 != v14 || v11 == 64 || v6 + v10 >= 0x40000001)
      {
        if (v11)
        {
          v22 = v13;
          while (1)
          {
            if (v11 == 1)
            {
              v23 = pwrite(*v3, __buf[0].iov_base, v10, v9);
            }

            else
            {
              while (lseek(*v3, v9, 0) == -1)
              {
                result = *__error();
                if (result != 4)
                {
                  goto LABEL_43;
                }
              }

              v23 = writev(*v3, __buf, v11);
            }

            v12 = v40;
            v4 = v41;
            v13 = v22;
            if (v23 == v10)
            {
              break;
            }

            if ((v23 & 0x8000000000000000) == 0)
            {
              result = 5;
              goto LABEL_43;
            }

            result = *__error();
            if (result != 4)
            {
              goto LABEL_43;
            }
          }
        }

        if (!v20)
        {
          a2 = v37;
          if (v42 <= v37)
          {
            v26 = v37;
          }

          else
          {
            v26 = v37;
            v32 = v4 + 2;
            v33 = v37;
            do
            {
              v34 = v33;
              v35 = &v32[2 * v33];
              while (1)
              {
                v36 = v35[1];
                if (!*v35)
                {
                  break;
                }

                if ((*(v36 + 5) & 4) != 0 && *(v36 + 3) != 1)
                {
                  free(v36);
                  v4 = v41;
                }

                else
                {
                  *v36 = *(v3 + 192);
                  *(v3 + 192) = v36;
                }

                ++v34;
                v35 += 2;
                if (v34 >= v43)
                {
                  a2 = v34;
                  goto LABEL_58;
                }
              }

              v33 = v34 + 1;
              *&v4[2 * ++v26] = *v35;
              v4[2 * v26] = *v36;
            }

            while (v34 + 1 < v42);
            a2 = v34 + 1;
          }

LABEL_58:
          v2 = a1;
          goto LABEL_42;
        }

        v10 = 0;
        v11 = 0;
        v9 = v7;
        LODWORD(v5) = v42;
      }

      v14 = v7 + v6;
      v25 = &__buf[v11];
      v25->iov_base = v8;
      v25->iov_len = v6;
      v10 += v6;
      ++v11;
    }
  }

  if (v5 <= a2)
  {
    v26 = a2;
  }

  else
  {
    v26 = a2;
    do
    {
      v27 = a2;
      v28 = &v4[2 * a2 + 3];
      while (1)
      {
        v29 = *v28;
        v30 = *(*v28 + 10);
        if (v30 >= 0x4000)
        {
          break;
        }

        ++v27;
        *(v29 + 10) = v30 & 0x3FEF;
        v28 += 16;
        if (v27 >= v5)
        {
          a2 = v27;
          goto LABEL_42;
        }
      }

      a2 = v27 + 1;
      *(v29 + 10) = v30 & 0x7FFF;
      *&v4[2 * ++v26] = *(v28 - 8);
    }

    while (v27 + 1 < v5);
  }

LABEL_42:
  result = 0;
  *(v2 + 128) += a2 - v26;
  *v4 = v26;
LABEL_43:
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29908D9A8(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = **(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t mdb_get(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v9 = 0;
  result = 22;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v12 = 0;
          memset(v11, 0, sizeof(v11));
          memset(v10, 0, sizeof(v10));
          if ((*(*(a1 + 112) + a2) & 0x10) != 0)
          {
            if ((*(a1 + 124) & 0x13) != 0)
            {
              return 4294936514;
            }

            else
            {
              sub_29908C704(v11, a1, a2, v10);
              return sub_29908DAE8(v11, a3, a4, 15, &v9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_29908DAE8(uint64_t a1, void *a2, void *a3, int a4, int *a5)
{
  if (!*a2)
  {
    return 4294936515;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    *(v10 + 68) &= 0xFFFFFFFC;
  }

  if ((*(a1 + 68) & 1) == 0)
  {
    *(a1 + 72) = 0;
LABEL_6:
    result = sub_299092A18(a1, a2, 0);
    if (result)
    {
      return result;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    goto LABEL_8;
  }

  v38 = 0uLL;
  v15 = *(a1 + 66);
  v12 = *(a1 + 8 * v15 + 72);
  if ((v12[6] & 0xFFFE) == 0x10)
  {
    *(a1 + 2 * v15 + 328) = 0;
    return 4294936498;
  }

  if ((v12[5] & 0x20) != 0)
  {
    v14 = 0;
    v16 = **(a1 + 40);
    v17 = v12 + 8;
  }

  else
  {
    v14 = v12 + v12[8];
    v16 = *(v14 + 6);
    v17 = (v14 + 8);
  }

  *&v38 = v16;
  *(&v38 + 1) = v17;
  v18 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v18)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = 0;
    goto LABEL_27;
  }

  if (v18 <= 0)
  {
    LODWORD(v24) = *(a1 + 66);
    goto LABEL_41;
  }

  v19 = v12[6] - 16;
  v20 = v19 >> 1;
  if (v19 < 4)
  {
LABEL_33:
    v26 = a1 + 328;
    v24 = *(a1 + 66);
    if (*(a1 + 66))
    {
      v27 = 0;
      while (((*(*(v26 + 8 * v27 - 256) + 12) - 16) >> 1) - 1 <= *(v26 + 2 * v27))
      {
        if (v24 == ++v27)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    if (v27 == v24)
    {
LABEL_40:
      *(v26 + 2 * v24) = v20;
      return 4294936498;
    }

LABEL_41:
    if (!v24)
    {
      *(a1 + 328) = 0;
      if (a4 != 17 || a5)
      {
        return 4294936498;
      }

      goto LABEL_46;
    }

    goto LABEL_6;
  }

  v21 = v12 + 8;
  v22 = v20 - 1;
  if ((v12[5] & 0x20) != 0)
  {
    v23 = v21 + v38 * v22;
  }

  else
  {
    v14 = v12 + v21[v22];
    *&v38 = *(v14 + 6);
    v23 = v14 + 8;
  }

  *(&v38 + 1) = v23;
  v25 = (*(*(a1 + 48) + 16))(a2, &v38);
  if (!v25)
  {
    *(a1 + 2 * *(a1 + 66) + 328) = v20 - 1;
    goto LABEL_27;
  }

  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v36 = *(a1 + 2 * *(a1 + 66) + 328);
  if (v36 < (v12[6] - 16) >> 1)
  {
    if ((v12[5] & 0x20) != 0)
    {
      v37 = v21 + v38 * v36;
    }

    else
    {
      v14 = v12 + v21[v36];
      *&v38 = *(v14 + 6);
      v37 = v14 + 8;
    }

    *(&v38 + 1) = v37;
    if (!(*(*(a1 + 48) + 16))(a2, &v38))
    {
LABEL_27:
      if (a5)
      {
        *a5 = 1;
      }

      goto LABEL_46;
    }
  }

  *(a1 + 68) &= ~2u;
LABEL_8:
  v13 = sub_299092C04(a1, a2, a5);
  v14 = v13;
  if (a5 && !*a5)
  {
    return 4294936498;
  }

  if (!v13)
  {
    result = sub_29908E73C(a1, 1);
    if (result)
    {
      *(a1 + 68) |= 2u;
      return result;
    }

    v12 = *(a1 + 8 * *(a1 + 66) + 72);
    v14 = v12 + v12[8];
  }

LABEL_46:
  *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  if ((v12[5] & 0x20) != 0)
  {
    result = 0;
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      v33 = **(a1 + 40);
      *a2 = v33;
      a2[1] = v12 + *(a1 + 2 * *(a1 + 66) + 328) * v33 + 16;
    }

    return result;
  }

  if ((*(v14 + 4) & 4) != 0)
  {
    sub_299091004(a1, v14);
    if ((a4 - 15) > 2)
    {
      LODWORD(v38) = 0;
      if (a4 == 2)
      {
        v34 = &v38;
      }

      else
      {
        v34 = 0;
      }

      result = sub_29908DAE8(*(a1 + 16), a3, 0, 17, v34);
      if (!result)
      {
        goto LABEL_79;
      }

      return result;
    }

    result = sub_29908EAD4(*(a1 + 16), a3, 0);
LABEL_79:
    if ((a4 & 0xFFFFFFFE) == 0x10)
    {
      *a2 = *(v14 + 6);
      a2[1] = v14 + 8;
    }

    return result;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_79;
  }

  if ((a4 & 0xFFFFFFFE) == 2)
  {
    v38 = 0uLL;
    result = sub_29908E328(a1, v14, &v38);
    if (result)
    {
      return result;
    }

    v28 = *(*(a1 + 48) + 24);
    if (v38 == 8 && v28 == sub_29908ADD8)
    {
      v28 = sub_29908ADF8;
    }

    v30 = v28(a3, &v38);
    v32 = a4 == 2 || v30 > 0;
    if (!v30 || !v32)
    {
      result = 0;
      *a3 = v38;
      goto LABEL_79;
    }

    return 4294936498;
  }

  v35 = *(a1 + 16);
  if (v35)
  {
    *(v35 + 68) &= 0xFFFFFFFC;
  }

  result = sub_29908E328(a1, v14, a3);
  if (!result)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t mdb_cursor_get(uint64_t a1, void *a2, void *a3, int a4)
{
  v29 = 0;
  if (!a1)
  {
    return 22;
  }

  if ((*(*(a1 + 24) + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v7 = sub_29908EAD4;
  switch(a4)
  {
    case 0:
      result = sub_29908EAD4(a1, a2, a3);
      break;
    case 1:
      goto LABEL_32;
    case 2:
    case 3:
      if (!a3)
      {
        goto LABEL_58;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_47;
      }

LABEL_10:
      if (!a2)
      {
        goto LABEL_58;
      }

      if (a4 == 17)
      {
        v8 = 0;
      }

      else
      {
        v8 = &v29;
      }

      result = sub_29908DAE8(a1, a2, a3, a4, v8);
      break;
    case 4:
      if ((*(a1 + 68) & 1) == 0)
      {
        goto LABEL_58;
      }

      v10 = *(a1 + 66);
      v11 = *(a1 + 8 * v10 + 72);
      v12 = *(v11 + 12) - 16;
      v13 = v12 >> 1;
      v14 = a1 + 2 * v10;
      if (v12 < 2 || (v15 = *(v14 + 328), v13 <= v15))
      {
        *(v14 + 328) = v13;
        goto LABEL_56;
      }

      if ((*(v11 + 10) & 0x20) != 0)
      {
        result = 0;
        v28 = **(a1 + 40);
        *a2 = v28;
        a2[1] = v11 + v28 * v15 + 16;
      }

      else
      {
        v16 = v11 + *(v11 + 2 * v15 + 16);
        if (a2)
        {
          *a2 = *(v16 + 6);
          a2[1] = v16 + 8;
        }

        if (a3)
        {
          if ((*(v16 + 4) & 4) == 0)
          {
            goto LABEL_39;
          }

          result = mdb_cursor_get(*(a1 + 16), a3, 0, 4);
        }

        else
        {
LABEL_44:
          result = 0;
        }
      }

      break;
    case 5:
      if (!a3 || (*(a1 + 68) & 1) == 0)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        goto LABEL_47;
      }

      v9 = *(a1 + 16);
      if ((*(v9 + 68) & 3) != 1)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    case 6:
      result = sub_29908E604(a1, a2, a3);
      break;
    case 7:
      v7 = sub_29908E604;
LABEL_32:
      if (!a3)
      {
        goto LABEL_58;
      }

      v17 = *(a1 + 68);
      if ((v17 & 1) == 0)
      {
        goto LABEL_58;
      }

      v18 = *(a1 + 16);
      if (!v18)
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 66);
      v20 = *(a1 + 328 + 2 * v19);
      v21 = *(a1 + 8 * v19 + 72);
      v22 = *(v21 + 12) - 16;
      if (v20 >= v22 >> 1)
      {
        *(a1 + 328 + 2 * v19) = v22 >> 1;
        goto LABEL_56;
      }

      *(a1 + 68) = v17 & 0xFFFFFFFD;
      v16 = v21 + *(v21 + 2 * v20 + 16);
      if ((*(v16 + 4) & 4) != 0)
      {
        if (*(v18 + 68))
        {
          result = v7();
        }

        else
        {
LABEL_58:
          result = 22;
        }
      }

      else
      {
        if (a2)
        {
          *a2 = *(v16 + 6);
          a2[1] = v16 + 8;
        }

LABEL_39:
        result = sub_29908E328(a1, v16, a3);
      }

      break;
    case 8:
    case 9:
    case 11:
      result = sub_29908E3AC(a1, a2, a3, a4);
      break;
    case 10:
      if (!a3)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) == 0)
      {
        goto LABEL_47;
      }

      result = sub_29908E3AC(a1, a2, a3, 9);
      if (result)
      {
        break;
      }

      v9 = *(a1 + 16);
      if ((*(v9 + 68) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    case 12:
    case 13:
    case 14:
      result = sub_29908E8B4(a1, a2, a3, a4);
      break;
    case 15:
    case 16:
    case 17:
      goto LABEL_10;
    case 18:
      if (!a3)
      {
        goto LABEL_58;
      }

      if ((*(*(a1 + 40) + 4) & 0x10) != 0)
      {
        if ((*(a1 + 68) & 1) != 0 || (result = sub_29908E604(a1, a2, a3), !result))
        {
          v23 = *(a1 + 16);
          if (*(v23 + 68))
          {
            result = sub_29908E73C(v23, 0);
            if (!result)
            {
              v9 = *(a1 + 16);
LABEL_54:
              result = 0;
              v24 = *(v9 + 66);
              v25 = v9 + 8 * v24;
              v26 = *(v25 + 72);
              *a3 = ((*(v26 + 12) - 16) >> 1) * **(v9 + 40);
              a3[1] = v26 + 16;
              *(v9 + 2 * v24 + 328) = ((*(*(v25 + 72) + 12) + 131056) >> 1) - 1;
            }
          }

          else
          {
LABEL_56:
            result = 4294936498;
          }
        }
      }

      else
      {
LABEL_47:
        result = 4294936512;
      }

      break;
    default:
      goto LABEL_44;
  }

  v27 = *(a1 + 68);
  if ((v27 & 8) != 0)
  {
    *(a1 + 68) = v27 & 0xFFFFFFF7;
  }

  return result;
}

uint64_t sub_29908E328(uint64_t a1, unsigned int *a2, void *a3)
{
  if (a2[1])
  {
    v6 = 0;
    *a3 = *a2;
    result = sub_29908F7A4(*(a1 + 24), *(a2 + *(a2 + 3) + 8), &v6, 0);
    if (result)
    {
      return result;
    }

    v4 = v6 + 16;
  }

  else
  {
    *a3 = *a2;
    v4 = a2 + *(a2 + 3) + 8;
  }

  result = 0;
  a3[1] = v4;
  return result;
}

uint64_t sub_29908E3AC(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = *(a1 + 68);
  if (a4 == 9 && (v8 & 8) != 0)
  {
    return 4294936498;
  }

  if (v8)
  {
    v10 = *(a1 + 66);
    v11 = *(a1 + 72 + 8 * v10);
    if ((v8 & 2) != 0)
    {
      if (((*(v11 + 12) - 16) >> 1) - 1 <= *(a1 + 2 * v10 + 328))
      {
        return 4294936498;
      }

      *(a1 + 68) = v8 & 0xFFFFFFFD;
    }

    if ((*(*(a1 + 40) + 4) & 4) == 0)
    {
      goto LABEL_13;
    }

    v15 = v11 + *(v11 + 2 * *(a1 + 2 * v10 + 328) + 16);
    if ((*(v15 + 4) & 4) != 0)
    {
      if ((a4 & 0xFFFFFFFE) == 8)
      {
        result = sub_29908E3AC(*(a1 + 16), a3, 0, 8);
        if (a4 != 8 || result != -30798)
        {
          if (!a2 || result)
          {
            return result;
          }

          v17 = *(v15 + 6);
          v18 = v15 + 8;
LABEL_37:
          *a2 = v17;
          a2[1] = v18;
          return result;
        }
      }

LABEL_13:
      v12 = *(a1 + 68);
      if ((v12 & 8) != 0)
      {
        *(a1 + 68) = v12 & 0xFFFFFFF7;
      }

      else
      {
        v13 = *(a1 + 66);
        v14 = *(a1 + 328 + 2 * v13) + 1;
        if (v14 >= (*(v11 + 12) - 16) >> 1)
        {
          result = sub_29908E73C(a1, 1);
          if (result)
          {
            *(a1 + 68) |= 2u;
            return result;
          }

          v11 = *(a1 + 72 + 8 * *(a1 + 66));
        }

        else
        {
          *(a1 + 328 + 2 * v13) = v14;
        }
      }

      if ((*(v11 + 10) & 0x20) != 0)
      {
        result = 0;
        v17 = **(a1 + 40);
        v18 = v11 + *(a1 + 2 * *(a1 + 66) + 328) * v17 + 16;
      }

      else
      {
        v16 = v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16);
        if ((*(v16 + 4) & 4) != 0)
        {
          sub_299091004(a1, v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16));
          result = sub_29908EAD4(*(a1 + 16), a3, 0);
          if (result)
          {
            return result;
          }
        }

        else if (a3)
        {
          result = sub_29908E328(a1, (v11 + *(v11 + 2 * *(a1 + 2 * *(a1 + 66) + 328) + 16)), a3);
          if (result)
          {
            return result;
          }
        }

        result = 0;
        if (!a2)
        {
          return result;
        }

        v17 = *(v16 + 6);
        v18 = v16 + 8;
      }

      goto LABEL_37;
    }

    *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
    if (a4 != 9)
    {
      goto LABEL_13;
    }

    return 4294936498;
  }

  return sub_29908EAD4(a1, a2, a3);
}

uint64_t sub_29908E604(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    result = sub_299092A18(a1, 0, 8);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = ((*(v10 + 12) + 131056) >> 1) - 1;
  *(a1 + 2 * v9 + 328) = v11;
  *(a1 + 68) = v7 | 3;
  v12 = v10 + 16;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (a2)
    {
      v14 = **(a1 + 40);
      *a2 = v14;
      v15 = v12 + v14 * v11;
LABEL_18:
      result = 0;
      a2[1] = v15;
      return result;
    }

    return 0;
  }

  v13 = v10 + *(v12 + 2 * v11);
  if ((*(v13 + 4) & 4) != 0)
  {
    sub_299091004(a1, v13);
    result = sub_29908E604(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a2)
    {
      *a2 = *(v13 + 6);
      v15 = v13 + 8;
      goto LABEL_18;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  result = sub_29908E328(a1, v13, a3);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_29908E73C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4 < 2)
  {
    return 4294936498;
  }

  v14[5] = v2;
  v14[6] = v3;
  v6 = a2;
  *(a1 + 64) = v4 - 1;
  LOWORD(v9) = *(a1 + 66) - 1;
  *(a1 + 66) = v9;
  v8 = a1 + 328;
  v9 = v9;
  v10 = *(a1 + 328 + 2 * v9);
  if (a2)
  {
    if (++v10 >= (*(*(a1 + 8 * v9 + 72) + 12) - 16) >> 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    *(v8 + 2 * v9) = v10;
    goto LABEL_12;
  }

  if (*(a1 + 328 + 2 * v9))
  {
    LOWORD(v10) = v10 - 1;
    goto LABEL_8;
  }

LABEL_9:
  result = sub_29908E73C(a1, a2);
  v9 = *(a1 + 66);
  if (result)
  {
    *(a1 + 66) = v9 + 1;
    ++*(a1 + 64);
    return result;
  }

  LOWORD(v10) = *(v8 + 2 * v9);
LABEL_12:
  v14[0] = 0;
  v11 = (*(a1 + 72 + 8 * v9) + *(*(a1 + 72 + 8 * v9) + 2 * v10 + 16));
  result = sub_29908F7A4(*(a1 + 24), *v11 | (*(v11 + 2) << 32), v14, 0);
  if (result)
  {
    *(a1 + 68) &= 0xFFFFFFFC;
  }

  else
  {
    v12 = *(a1 + 64);
    if (v12 < 0x20)
    {
      v13 = v14[0];
      *(a1 + 64) = v12 + 1;
      *(a1 + 66) = v12;
      *(a1 + 72 + 8 * v12) = v13;
      *(v8 + 2 * v12) = 0;
    }

    else
    {
      *(*(a1 + 24) + 124) |= 2u;
    }

    result = 0;
    if (!v6)
    {
      *(v8 + 2 * *(a1 + 66)) = ((*(v14[0] + 12) + 131056) >> 1) - 1;
    }
  }

  return result;
}

uint64_t sub_29908E8B4(uint64_t a1, void *a2, void *a3, int a4)
{
  if (*(a1 + 68))
  {
    v9 = *(a1 + 66);
  }

  else
  {
    result = sub_29908E604(a1, a2, a3);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    ++*(a1 + 2 * v9 + 328);
  }

  v10 = *(a1 + 72 + 8 * v9);
  if ((*(*(a1 + 40) + 4) & 4) != 0)
  {
    v11 = *(a1 + 2 * v9 + 328);
    if (v11 < (*(v10 + 12) - 16) >> 1)
    {
      v12 = v10 + *(v10 + 2 * v11 + 16);
      if ((*(v12 + 4) & 4) != 0)
      {
        if ((a4 & 0xFFFFFFFE) == 0xC)
        {
          result = sub_29908E8B4(*(a1 + 16), a3, 0, 12);
          if (a4 != 12 || result != -30798)
          {
            if (!result)
            {
              if (a2)
              {
                *a2 = *(v12 + 6);
                a2[1] = v12 + 8;
              }

              result = 0;
              *(a1 + 68) &= ~2u;
            }

            return result;
          }

          v9 = *(a1 + 66);
        }
      }

      else
      {
        *(*(a1 + 16) + 68) &= 0xFFFFFFFC;
        if (a4 == 13)
        {
          return 4294936498;
        }
      }
    }
  }

  *(a1 + 68) &= 0xFFFFFFF5;
  LOWORD(v13) = *(a1 + 328 + 2 * v9);
  if (!v13)
  {
    result = sub_29908E73C(a1, 0);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v10 = *(a1 + 72 + 8 * v9);
    v13 = (*(v10 + 12) + 131056) >> 1;
  }

  v14 = v13 - 1;
  *(a1 + 328 + 2 * v9) = v14;
  v15 = *(v10 + 10);
  if ((v15 & 2) == 0)
  {
    return 4294936500;
  }

  if ((v15 & 0x20) != 0)
  {
    result = 0;
    v17 = **(a1 + 40);
    v18 = v10 + v17 * v14 + 16;
LABEL_28:
    *a2 = v17;
    a2[1] = v18;
    return result;
  }

  v16 = v10 + *(v10 + 2 * v14 + 16);
  if ((*(v16 + 4) & 4) != 0)
  {
    sub_299091004(a1, v10 + *(v10 + 2 * v14 + 16));
    result = sub_29908E604(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (!a3 || (result = sub_29908E328(a1, (v10 + *(v10 + 2 * v14 + 16)), a3), !result))
  {
LABEL_26:
    result = 0;
    if (!a2)
    {
      return result;
    }

    v17 = *(v16 + 6);
    v18 = v16 + 8;
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_29908EAD4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    *(v6 + 68) &= 0xFFFFFFFC;
  }

  v7 = *(a1 + 68);
  if ((v7 & 1) != 0 && !*(a1 + 66))
  {
    v9 = 0;
  }

  else
  {
    result = sub_299092A18(a1, 0, 4);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 66);
    v7 = *(a1 + 68);
  }

  v10 = *(a1 + 8 * v9 + 72);
  v11 = v10 + 16;
  v12 = *(v10 + 16);
  *(a1 + 68) = v7 & 0xFFFFFFFC | 1;
  *(a1 + 2 * v9 + 328) = 0;
  if ((*(v10 + 10) & 0x20) != 0)
  {
    if (a2)
    {
      *a2 = **(a1 + 40);
LABEL_18:
      result = 0;
      a2[1] = v11;
      return result;
    }

    return 0;
  }

  v13 = v10 + v12;
  if ((*(v10 + v12 + 4) & 4) != 0)
  {
    sub_299091004(a1, v10 + v12);
    result = sub_29908EAD4(*(a1 + 16), a3, 0);
    if (result)
    {
      return result;
    }

LABEL_16:
    if (a2)
    {
      *a2 = *(v13 + 6);
      v11 = v13 + 8;
      goto LABEL_18;
    }

    return 0;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  result = sub_29908E328(a1, (v10 + v12), a3);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_29908EBF4(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 68) & 4) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(*(a1 + 40) + 6);
  if (*(a1 + 32) >= 2u)
  {
    v5 += *(*(v4 + 88) + 54);
  }

  if (a2)
  {
    v6 = *(*(v4 + 32) + 16);
    v5 += (*a2 + *a3 + v6 + 8) / v6;
  }

  if (*(v4 + 128) > (2 * v5))
  {
    return 0;
  }

  v8 = *(v4 + 72);
  v10 = (v4 + 64);
  v9 = *(v4 + 64);
  if (v9)
  {
    v11 = *v9;
    if (*v9)
    {
      LODWORD(v12) = 0;
      if ((v11 + 1) > 2)
      {
        v13 = (v11 + 1);
      }

      else
      {
        v13 = 2;
      }

      v14 = v13 - 1;
      v15 = (v9 + 2);
      do
      {
        v17 = *v15++;
        v16 = v17;
        if ((v17 & 1) == 0)
        {
          LODWORD(v12) = v12 + 1;
          *&v9[2 * v12] = v16;
        }

        --v14;
      }

      while (v14);
      v12 = v12;
    }

    else
    {
      v12 = 0;
    }

    *v9 = v12;
  }

  else
  {
    v18 = malloc_type_malloc(0x100008uLL, 0x100004000313F17uLL);
    if (!v18)
    {
      *v10 = 0;
      return 12;
    }

    *v18 = xmmword_2990981C0;
    *v10 = v18 + 8;
  }

  result = sub_2990933A4(a1, 16, 1);
  if (!result)
  {
    v19 = *v8;
    if (*v8)
    {
      if ((2 * v5) < 0x4000)
      {
        v20 = 0x3FFF;
      }

      else
      {
        v20 = 2 * v5;
      }

      do
      {
        v21 = &v8[4 * v19];
        v22 = v21[1];
        v23 = *(v22 + 10);
        if (!(v23 >> 14))
        {
          v24 = 2 * *v21;
          v25 = *v4;
          if (*v4)
          {
            while (1)
            {
              v26 = v25[8];
              if (v26)
              {
                if (*v26)
                {
                  v27 = 0;
                  v28 = *v26;
                  do
                  {
                    v29 = v28 >> 1;
                    v30 = v27 + (v28 >> 1) + 1;
                    v31 = v26[v30];
                    if (v31 >= v24)
                    {
                      if (v31 <= v24)
                      {
                        goto LABEL_41;
                      }

                      v29 = v28 + ~v29;
                      v27 += (v28 >> 1) + 1;
                    }

                    LODWORD(v28) = v29;
                  }

                  while (v29);
                  if (v31 > v24)
                  {
                    ++v30;
                  }
                }

                else
                {
                  v30 = 1;
                }

LABEL_41:
                if (*v26 >= v30 && v26[v30] == v24)
                {
                  break;
                }
              }

              v25 = *v25;
              if (!v25)
              {
                goto LABEL_44;
              }
            }

            *(v22 + 10) = v23 | 0x8000;
          }

          else
          {
LABEL_44:
            result = mdb_midl_append((v4 + 64), v24);
            if (result)
            {
              goto LABEL_52;
            }

            --v20;
          }
        }

        --v19;
      }

      while (v19 && v20);
    }

    mdb_midl_sort(*(v4 + 64));
    result = sub_29908D5C4(v4, v19);
    if (!result)
    {
      result = sub_2990933A4(a1, 32784, v19);
    }
  }

LABEL_52:
  if (result)
  {
    v32 = 2;
  }

  else
  {
    v32 = 8;
  }

  *(v4 + 124) |= v32;
  return result;
}

uint64_t sub_29908EE68(uint64_t a1, __int16 a2, signed int a3, char **a4)
{
  v10 = 0;
  result = sub_29908F1F4(a1, a3, &v10);
  if (!result)
  {
    v9 = v10;
    *(v10 + 5) = a2 | 0x10;
    *(v9 + 6) = 16;
    *(v9 + 7) = *(*(*(a1 + 24) + 32) + 16);
    if (a2)
    {
      ++*(*(a1 + 40) + 8);
    }

    else if ((a2 & 2) != 0)
    {
      ++*(*(a1 + 40) + 16);
    }

    else if ((a2 & 4) != 0)
    {
      *(*(a1 + 40) + 24) += a3;
      *(v9 + 3) = a3;
    }

    *a4 = v9;
  }

  return result;
}

uint64_t sub_29908EF2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 2 && (**(a1 + 56) & 0x21) == 0)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    v6 = *(a1 + 24);
    if (*(v6[12] + 4 * v2) != *(*(v6[4] + 152) + 4 * v2))
    {
      return 4294936516;
    }

    sub_29908C704(v8, v6, 1u, v7);
    result = sub_299092A18(v8, *(a1 + 48), 1);
    if (result)
    {
      return result;
    }

    **(a1 + 56) |= 1u;
  }

  *(a1 + 66) = 0;
  if (!*(a1 + 64))
  {
    return 0;
  }

  do
  {
    result = sub_299092E3C(a1);
    v4 = *(a1 + 64);
    if (result)
    {
      break;
    }

    v5 = *(a1 + 66) + 1;
    *(a1 + 66) = v5;
  }

  while (v4 > v5);
  *(a1 + 66) = v4 - 1;
  return result;
}

uint64_t sub_29908F08C(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 66);
  v4 = *(a1 + 2 * v3 + 328);
  v5 = *(a1 + 8 * v3 + 72);
  v6 = v5[v4 + 8];
  v7 = (v5 + v6);
  v8 = *a2;
  v9 = (*a2 + 1) & 0xFFFFFFFE;
  v10 = *(v5 + v6 + 6);
  v11 = (v10 + 1) & 0x1FFFE;
  v12 = v9 - v11;
  if (v9 != v11)
  {
    if (v12 <= 0)
    {
      v13 = v5[6];
    }

    else
    {
      v13 = v5[6];
      if (v12 > (v5[7] - v13))
      {
        v15 = *v7 | (v7[2] << 32);
        sub_29908F674(a1, 0);

        return sub_29908FE64(a1, a2, 0, v15, 0x40000);
      }
    }

    v17 = ((v13 + 131056) >> 1);
    if (((v13 + 131056) >> 1))
    {
      v18 = v5 + 8;
      do
      {
        v19 = *v18;
        if (v19 <= v6)
        {
          *v18 = v19 - v12;
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    memmove(v5 + v5[7] - v12, v5 + v5[7], v6 - v5[7] + 8);
    v5[7] -= v12;
    v7 = (v5 + v5[v4 + 8]);
    v10 = v7[3];
    v8 = *a2;
  }

  if (v8 != v10)
  {
    v7[3] = v8;
  }

  if (v8)
  {
    memcpy(v7 + 4, a2[1], v8);
  }

  return 0;
}

uint64_t sub_29908F1F4(uint64_t a1, signed int a2, char **a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 32);
  v6 = (v4 + 176);
  v5 = *(v4 + 176);
  if (v5)
  {
    v7 = *v5;
  }

  else
  {
    v7 = 0;
  }

  v48 = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v8 = (a2 - 1);
  if (a2 == 1)
  {
    v9 = *(v3 + 48);
    if (v9)
    {
      result = 0;
      *(v3 + 48) = *(v9 + 32);
      --*(v3 + 56);
      *a3 = v9;
      return result;
    }
  }

  *a3 = 0;
  if (!*(v3 + 128))
  {
    result = 4294936508;
LABEL_56:
    *(v3 + 124) |= 2u;
    return result;
  }

  v11 = 0;
  v12 = 0;
  v43 = 0;
  v13 = 1;
  v14 = 1 - a2;
  v42 = 60 * a2;
  while (1)
  {
    v49 = 0;
    v50 = 0;
    v44 = 0;
    v45 = 0;
    if (v7 > v8)
    {
      v15 = v7;
      do
      {
        v16 = v5[v15];
        if (v5[v14 + v15] == v16 + v8)
        {
          v32 = a2;
          goto LABEL_52;
        }

        --v15;
      }

      while (v15 > v8);
      if (v42-- < 1)
      {
        goto LABEL_68;
      }
    }

    if (v13)
    {
      v48 = *(v4 + 184);
      v11 = *(v4 + 168);
      sub_29908C704(v46, v3, 0, 0);
      v18 = v48;
      if (v48)
      {
        v50 = &v48;
        v49 = 8;
        v12 = 17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v18 = v48;
    }

    v19 = v18 + 1;
    v48 = v19;
    if (v11 <= v19)
    {
      if (!v43)
      {
        v11 = *(v3 + 24) - 1;
        v20 = *(*(v3 + 32) + 64);
        if (v20)
        {
          v21 = *(v20 + 48);
          if (v21 >= 1)
          {
            v22 = v21 + 1;
            v23 = (v20 + (v21 << 6) + 72);
            do
            {
              if (*v23 && v11 >= *(v23 - 1))
              {
                v11 = *(v23 - 1);
              }

              --v22;
              v23 -= 16;
            }

            while (v22 > 1);
          }
        }

        *(v4 + 168) = v11;
      }

      if (v11 <= v19)
      {
        goto LABEL_68;
      }

      v43 = 1;
    }

    result = mdb_cursor_get(v46, &v49, 0, v12);
    if (result)
    {
      break;
    }

    v24 = *v50;
    v48 = v24;
    if (v11 <= v24)
    {
      if (!v43)
      {
        v11 = *(v3 + 24) - 1;
        v25 = *(*(v3 + 32) + 64);
        if (v25)
        {
          v26 = *(v25 + 48);
          if (v26 >= 1)
          {
            v27 = v26 + 1;
            v28 = (v25 + (v26 << 6) + 72);
            do
            {
              if (*v28 && v11 >= *(v28 - 1))
              {
                v11 = *(v28 - 1);
              }

              --v27;
              v28 -= 16;
            }

            while (v27 > 1);
          }
        }

        *(v4 + 168) = v11;
      }

      if (v11 <= v24)
      {
        goto LABEL_68;
      }

      v43 = 1;
    }

    result = sub_29908E328(v46, (*(&v46[4] + WORD1(v46[4]) + 1) + *(*(&v46[4] + WORD1(v46[4]) + 1) + 2 * *(&v46[20] + WORD1(v46[4]) + 4) + 16)), &v44);
    if (result)
    {
      goto LABEL_56;
    }

    v29 = v45;
    v30 = *v45;
    if (v5)
    {
      result = mdb_midl_need(v6, *v45);
      if (result)
      {
        goto LABEL_56;
      }

      v5 = *v6;
    }

    else
    {
      v31 = malloc_type_malloc(((v30 << 32) + 0x200000000) >> 29, 0x100004000313F17uLL);
      if (!v31)
      {
        *v6 = 0;
        goto LABEL_54;
      }

      v31[1] = 0;
      v5 = v31 + 1;
      *v31 = v30;
      *v6 = v31 + 1;
    }

    *(v4 + 184) = v48;
    mdb_midl_xmerge(v5, v29);
    v13 = 0;
    v7 = *v5;
    v12 = 8;
  }

  if (result != -30798)
  {
    goto LABEL_56;
  }

LABEL_68:
  v16 = *(v3 + 16);
  v32 = a2;
  if ((v16 + a2) >= *(v4 + 128))
  {
    result = 4294936504;
    goto LABEL_56;
  }

  v15 = 0;
LABEL_52:
  if ((*(v4 + 14) & 8) != 0)
  {
    v33 = (*(v4 + 56) + v16 * *(v4 + 16));
  }

  else
  {
    v33 = sub_29908FAEC(v3, v32);
    if (!v33)
    {
LABEL_54:
      result = 12;
      goto LABEL_56;
    }
  }

  if (v15)
  {
    v34 = v7 - v32;
    *v5 = v34;
    v35 = v15 - v32;
    if (v15 - v32 < v34)
    {
      v36 = v34 - v35;
      v37 = &v5[v35 + 1];
      v38 = v15 + 1;
      do
      {
        *v37++ = v5[v38++];
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    *(v3 + 16) = v16 + v32;
  }

  *v33 = v16;
  v39 = mdb_mid2l_append;
  if ((*(v3 + 124) & 0x80000) == 0)
  {
    v39 = mdb_mid2l_insert;
  }

  v49 = v16;
  v50 = v33;
  v39(*(v3 + 72), &v49);
  result = 0;
  --*(v3 + 128);
  *a3 = v33;
  return result;
}

void *sub_29908F674(void *result, int a2)
{
  v2 = *(result + 33);
  v3 = result[v2 + 9];
  v4 = *(result + v2 + 164);
  v5 = v3[6];
  v6 = v5 + 131056;
  v7 = v3[5];
  if ((v7 & 0x20) != 0)
  {
    v12 = a2;
    v13 = ~v4 + (v6 >> 1);
    if (v13)
    {
      v14 = v3 + v4 * a2 + 16;
      result = memmove(v14, &v14[a2], v13 * a2);
      LOWORD(v5) = v3[6];
    }

    v3[6] = v5 - 2;
    v15 = v12 + v3[7] - 2;
  }

  else
  {
    v8 = v3[v4 + 8];
    v9 = v3 + v8;
    v10 = *(v3 + v8 + 6);
    v11 = v10 + 8;
    if ((v7 & 2) != 0)
    {
      if (*(v9 + 2))
      {
        v11 = v10 + 16;
      }

      else
      {
        v11 += *v9;
      }
    }

    v16 = (v11 + 1) & 0xFFFFFFFE;
    v17 = (v6 >> 1);
    if (v17)
    {
      v18 = 0;
      v19 = v3 + 8;
      do
      {
        if (v4)
        {
          v20 = *v19;
          if (v20 >= v8)
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

          v3[v18++ + 8] = v21 + v20;
        }

        ++v19;
        --v4;
        --v17;
      }

      while (v17);
    }

    result = memmove(v3 + v3[7] + v16, v3 + v3[7], v8 - v3[7]);
    v3[6] -= 2;
    v15 = v3[7] + v16;
  }

  v3[7] = v15;
  return result;
}

uint64_t sub_29908F7A4(uint64_t *a1, unint64_t a2, unint64_t *a3, int *a4)
{
  v7 = a1[4];
  v8 = *(a1 + 31);
  if ((v8 & 0xA0000) != 0)
  {
LABEL_20:
    if (a1[2] <= a2)
    {
      *(a1 + 31) = v8 | 2;
      return 4294936499;
    }

    v10 = 0;
  }

  else
  {
    v9 = 2 * a2;
    v10 = 1;
    v11 = a1;
    while (1)
    {
      v12 = v11[8];
      v13 = v11[9];
      if (v12)
      {
        if (*v12)
        {
          v14 = 0;
          v15 = *v12;
          do
          {
            v16 = v15 >> 1;
            v17 = v14 + (v15 >> 1) + 1;
            v18 = v12[v17];
            if (v18 >= v9)
            {
              if (v18 <= v9)
              {
                goto LABEL_14;
              }

              v16 = v15 + ~v16;
              v14 += (v15 >> 1) + 1;
            }

            LODWORD(v15) = v16;
          }

          while (v16);
          if (v18 > v9)
          {
            ++v17;
          }
        }

        else
        {
          v17 = 1;
        }

LABEL_14:
        if (*v12 >= v17 && v12[v17] == v9)
        {
          break;
        }
      }

      v19 = *v13;
      if (*v13)
      {
        v20 = mdb_mid2l_search(v11[9], a2);
        if (v19 >= v20 && v13[2 * v20] == a2)
        {
          v21 = v13[2 * v20 + 1];
          goto LABEL_23;
        }
      }

      ++v10;
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_20;
      }
    }
  }

  v21 = *(v7 + 56) + *(v7 + 16) * a2;
LABEL_23:
  *a3 = v21;
  result = 0;
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sub_29908F90C(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *(a1 + 32);
  v7 = 2 * *a2;
  v8 = a1;
  while (1)
  {
    v9 = v8[8];
    if (v9)
    {
      if (*v9)
      {
        v10 = 0;
        v11 = *v9;
        do
        {
          v12 = v11 >> 1;
          v13 = v10 + (v11 >> 1) + 1;
          v14 = v9[v13];
          if (v14 >= v7)
          {
            if (v14 <= v7)
            {
              goto LABEL_13;
            }

            v12 = v11 + ~v12;
            v10 += (v11 >> 1) + 1;
          }

          LODWORD(v11) = v12;
        }

        while (v12);
        if (v14 > v7)
        {
          ++v13;
        }
      }

      else
      {
        v13 = 1;
      }

LABEL_13:
      if (*v9 >= v13)
      {
        v15 = v13;
        if (v9[v13] == v7)
        {
          break;
        }
      }
    }

    v8 = *v8;
    if (!v8)
    {
      return 0;
    }
  }

  if (!*(a1 + 128))
  {
    return 4294936508;
  }

  if ((*(a2 + 10) & 4) != 0)
  {
    v17 = *(a2 + 12);
  }

  else
  {
    v17 = 1;
  }

  if ((*(v6 + 14) & 8) != 0)
  {
    v19 = a2;
  }

  else
  {
    v18 = sub_29908FAEC(a1, v17);
    if (!v18)
    {
      return 12;
    }

    v19 = v18;
    v20 = *(v6 + 16);
    if (v17 < 2)
    {
      sub_2990932E0(v18, a2, v20);
    }

    else
    {
      memcpy(v18, a2, (v20 * v17));
    }
  }

  if (v8 == a1)
  {
    v21 = *(a1 + 64);
    if (*v21 == v15)
    {
      *v21 = v15 - 1;
    }

    else
    {
      v21[v15] |= 1uLL;
    }
  }

  v22 = mdb_mid2l_append;
  if ((*(a1 + 124) & 0x80000) == 0)
  {
    v22 = mdb_mid2l_insert;
  }

  v23[0] = *v19;
  v23[1] = v19;
  (v22)(*(a1 + 72), v23);
  result = 0;
  --*(a1 + 128);
  *(v19 + 5) |= 0x10u;
  *a3 = v19;
  return result;
}

char *sub_29908FAEC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  if (a2 == 1)
  {
    v5 = *(v3 + 192);
    if (v5)
    {
      *(v3 + 192) = *v5;
      return v5;
    }

    v7 = v4 - 16;
    v6 = 16;
  }

  else
  {
    v6 = v4 * a2 - v4;
    v7 = *(v3 + 16);
    v4 = v4 * a2;
  }

  v8 = malloc_type_malloc(v4, 0xDBF144E1uLL);
  v5 = v8;
  if (v8)
  {
    if ((*(v3 + 15) & 1) == 0)
    {
      bzero(&v8[v6], v7);
      *(v5 + 4) = 0;
    }
  }

  else
  {
    *(a1 + 124) |= 2u;
  }

  return v5;
}

uint64_t sub_29908FB9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(v3 + 32);
  v7 = (v6 + 176);
  if (!*(v6 + 176) || *v3)
  {
    goto LABEL_3;
  }

  v10 = *(v3 + 64);
  if ((*(a2 + 10) & 0x10) != 0)
  {
    v15 = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    v11 = 2 * v4;
    if (*v10)
    {
      v12 = 0;
      v13 = *v10;
      do
      {
        v14 = v13 >> 1;
        v15 = v12 + (v13 >> 1) + 1;
        v16 = v10[v15];
        if (v16 >= v11)
        {
          if (v16 <= v11)
          {
            goto LABEL_23;
          }

          v14 = v13 + ~v14;
          v12 += (v13 >> 1) + 1;
        }

        LODWORD(v13) = v14;
      }

      while (v14);
      if (v16 > v11)
      {
        ++v15;
      }
    }

    else
    {
      v15 = 1;
    }

LABEL_23:
    if (*v10 < v15 || v10[v15] != v11)
    {
LABEL_3:
      result = mdb_midl_append_range((v3 + 40), *a2, v5);
      if (result)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  result = mdb_midl_need(v7, *(a2 + 12));
  if (!result)
  {
    v17 = *(a2 + 10);
    if ((v17 & 0x10) == 0)
    {
      if (*v10 == v15)
      {
        *v10 = v15 - 1;
      }

      else
      {
        v10[v15] |= 1uLL;
      }

LABEL_35:
      v27 = *v7;
      v28 = **v7;
      if (v28)
      {
        while (1)
        {
          v29 = v5 + v28;
          v30 = *&v27[2 * v28];
          if (v30 >= v4)
          {
            break;
          }

          *&v27[2 * v29] = v30;
          if (!--v28)
          {
            v29 = v5;
            break;
          }
        }
      }

      else
      {
        v29 = v5;
      }

      if (v29 > v28)
      {
        v31 = 0;
        v32 = v29 + ~v28;
        v33 = vdupq_n_s64(v32);
        v34 = &v27[2 * v29];
        do
        {
          v35 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_2990981E0)));
          if (v35.i8[0])
          {
            *v34 = v4 + v31;
          }

          if (v35.i8[4])
          {
            *(v34 - 1) = v4 + v31 + 1;
          }

          v31 += 2;
          v34 -= 4;
        }

        while (((v32 + 2) & 0x1FFFFFFFELL) != v31);
      }

      *v27 += v5;
LABEL_4:
      result = 0;
      *(*(a1 + 40) + 24) -= v5;
      return result;
    }

    v18 = *(v3 + 72);
    v19 = (*v18)--;
    v20 = &v18[2 * v19];
    v21 = v20[1];
    if (v21 == a2)
    {
LABEL_30:
      ++*(v3 + 128);
      if ((*(v6 + 14) & 8) == 0)
      {
        if ((v17 & 4) != 0 && *(a2 + 12) != 1)
        {
          free(a2);
        }

        else
        {
          *a2 = *(v6 + 192);
          *(v6 + 192) = a2;
        }
      }

      goto LABEL_35;
    }

    v22 = *v20;
    v23 = &v18[2 * v19 - 1];
    v24 = v19 + 1;
    while (--v24 >= 2)
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      *(v23 - 1) = v22;
      *v23 = v21;
      v23 -= 2;
      v21 = v26;
      v22 = v25;
      if (v26 == a2)
      {
        goto LABEL_30;
      }
    }

    v36 = *v18 + 1;
    *v18 = v36;
    v37 = &v18[2 * v36];
    *v37 = v22;
    v37[1] = v21;
    *(v3 + 124) |= 2u;
    return 4294936500;
  }

  return result;
}

uint64_t sub_29908FE64(uint64_t a1, const void **a2, size_t *a3, size_t a4, int a5)
{
  v9 = *(*(a1 + 24) + 32);
  v206[0] = 0uLL;
  v204 = 0;
  v205 = 0;
  v202 = 0;
  v203 = 0;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  memset(v198, 0, sizeof(v198));
  v10 = a1 + 72;
  v11 = *(a1 + 66);
  v12 = *(a1 + 72 + 8 * v11);
  v196 = 0u;
  v197 = 0u;
  v13 = (a1 + 328);
  v14 = *(a1 + 328 + 2 * v11);
  v15 = v12[6];
  result = sub_29908EE68(a1, v12[5], 1, &v201);
  if (!result)
  {
    v165 = v9;
    v167 = a2;
    v168 = v12;
    v162 = a4;
    v17 = v201;
    *(v201 + 4) = v12[4];
    v18 = *(a1 + 66);
    if (*(a1 + 66))
    {
      v160 = a3;
      v158 = 0;
      LODWORD(v19) = v18 - 1;
      v20 = *(a1 + 64);
      v21 = v14;
      v22 = v10;
      v23 = v15;
      v24 = v13;
    }

    else
    {
      result = sub_29908EE68(a1, 1, 1, &v200);
      if (result)
      {
        goto LABEL_89;
      }

      v24 = v13;
      v160 = a3;
      v33 = *(a1 + 64);
      if (*(a1 + 64))
      {
        v34 = v33 + 1;
        v35 = (a1 + 2 * v33 + 328);
        v36 = (a1 + 8 * v33 + 72);
        v37 = v36;
        v38 = v35;
        do
        {
          v40 = *--v37;
          v39 = v40;
          LOWORD(v40) = *--v38;
          *v36 = v39;
          *v35 = v40;
          --v34;
          v36 = v37;
          v35 = v38;
        }

        while (v34 > 1);
      }

      v41 = v200;
      *(a1 + 72) = v200;
      *(a1 + 328) = 0;
      v42 = *(a1 + 40);
      *(v42 + 40) = *v41;
      v43 = *(v42 + 6);
      *(v42 + 6) = v43 + 1;
      result = sub_299090D50(a1, 0, 0, 0, *v12, 0);
      if (result)
      {
        *(a1 + 72) = *(a1 + 80);
        *(a1 + 328) = *(a1 + 330);
        v44 = *(a1 + 40);
        *(v44 + 40) = *v12;
        --*(v44 + 6);
        goto LABEL_89;
      }

      v22 = v10;
      v158 = v43;
      LODWORD(v19) = 0;
      v20 = *(a1 + 64) + 1;
      *(a1 + 64) = v20;
      LOWORD(v18) = *(a1 + 66) + 1;
      *(a1 + 66) = v18;
      v23 = v15;
      v21 = v14;
    }

    v25 = *(a1 + 24);
    *(&v197 + 1) = v25;
    LODWORD(v198[0]) = *(a1 + 32);
    v26 = *(a1 + 40);
    *(v198 + 8) = v26;
    LOWORD(v198[2]) = v20;
    WORD1(v198[2]) = v18;
    DWORD1(v198[2]) = *(a1 + 68);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        *(&v198[2] + i + 1) = v24[i - 32];
        *(&v198[18] + i + 4) = *(v24 + i);
      }
    }

    *&v197 = 0;
    v161 = v22;
    *(&v198[2] + v18 + 1) = v17;
    *(&v198[18] + v19 + 4) = *(v24 + v19) + 1;
    v159 = v21;
    if ((a5 & 0x20000) != 0)
    {
      v45 = 0;
      v46 = 0;
      *(&v198[18] + v18 + 4) = 0;
      v206[0] = *v167;
      v47 = *&v206[0];
LABEL_19:
      v166 = v21;
      v48 = v168;
      goto LABEL_75;
    }

    v28 = v23 - 16;
    v29 = (v23 - 16) >> 1;
    v30 = (v29 + 1) >> 1;
    v157 = v19;
    if ((*(v17 + 5) & 0x20) != 0)
    {
      v49 = *(v24 + v18);
      v50 = v49 - v30;
      v51 = (v29 + 1) >> 1;
      v47 = *v26;
      v48 = v168;
      v52 = v168 + v47 * v51 + 16;
      v53 = v47 * (v29 - v51);
      v168[6] -= 2 * (v29 - v51);
      *(v17 + 6) += 2 * (v29 - v51);
      v54 = v47 * (v29 - v51) - 2 * (v29 - v51);
      v168[7] += v54;
      *(v17 + 7) -= v54;
      *&v206[0] = v47;
      v55 = v52;
      v166 = v51;
      if (v51 == v21)
      {
        v55 = v167[1];
      }

      *(&v206[0] + 1) = v55;
      if (v50 < 0)
      {
        v19 = v22;
        v59 = v168 + v47 * *(v24 + *(a1 + 66)) + 16;
        memcpy(v17 + 16, v52, v47 * (v29 - v51));
        *(&v206[0] + 1) = v17 + 16;
        memmove(&v59[v47], v59, (v166 - *(v24 + *(a1 + 66))) * v47);
        memcpy(v59, v167[1], v47);
        v22 = v19;
        v45 = v28 >> 1;
        v46 = 0;
        v168[6] += 2;
        v168[7] = v168[7] - v47 + 2;
        LODWORD(v19) = v157;
      }

      else
      {
        v163 = v29;
        v56 = (v50 * v47);
        if (v49 != v51)
        {
          memcpy(v17 + 16, v52, (v50 * v47));
        }

        memcpy(&v17[v56 + 16], v167[1], v47);
        memcpy(&v17[v56 + 16 + v47], &v52[v56], (v53 - v56));
        v46 = 0;
        *(v17 + 6) += 2;
        *(v17 + 7) = *(v17 + 7) - v47 + 2;
        *(v24 + *(a1 + 66)) = v50;
        v22 = v161;
        LODWORD(v19) = v157;
        v45 = v163;
      }

      goto LABEL_75;
    }

    if ((v168[5] & 2) != 0)
    {
      v31 = v28 >> 1;
      v57 = v165;
      v58 = *v167 + 16;
      if (*v167 + *v160 + 8 <= *(v165 + 220))
      {
        v58 = *v167 + *v160 + 8;
      }

      LODWORD(v32) = (v58 + 3) & 0xFFFFFFFE;
    }

    else
    {
      v31 = v28 >> 1;
      if (v167)
      {
        v32 = *v167 + 10;
      }

      else
      {
        LODWORD(v32) = 10;
      }

      v57 = v165;
    }

    v60 = *(v57 + 16);
    v61 = sub_29908FAEC(v25, 1u);
    if (v61)
    {
      v62 = v60 - 16;
      v63 = (v32 + 1) & 0xFFFFFFFE;
      *v61 = *v168;
      *(v61 + 5) = v168[5];
      *(v61 + 6) = 16;
      *(v61 + 7) = *(v57 + 16);
      if (v28 > 1)
      {
        v68 = 0;
        v69 = v61 + 16;
        v70 = v168 + 8;
        v45 = v31;
        if (v31 <= 1)
        {
          v71 = 1;
        }

        else
        {
          v71 = v31;
        }

        v21 = v159;
        v72 = v159;
        do
        {
          if (!v72)
          {
            *&v69[2 * v68++] = 0;
          }

          v73 = *v70++;
          *&v69[2 * v68++] = v73;
          --v72;
          --v71;
        }

        while (v71);
        if (v62 >= 0)
        {
          v74 = v60 - 16;
        }

        else
        {
          v74 = v60 - 1;
        }

        v64 = v31 > v159;
        v22 = v161;
        if (v28 < 0x40)
        {
          LODWORD(v19) = v157;
          v46 = v61;
        }

        else
        {
          LODWORD(v19) = v157;
          v46 = v61;
          if (v63 <= v74 >> 4 && v31 > v159)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        v21 = v159;
        v45 = v31;
        v64 = v31 > v159;
        v22 = v161;
        LODWORD(v19) = v157;
        v46 = v61;
      }

      if (v30 < v21 && v64)
      {
        v65 = v30 - 1;
        v66 = -1;
        v64 = 1;
        LODWORD(v67) = v45;
      }

      else
      {
        if (v64)
        {
          v64 = 0;
          LODWORD(v67) = 0;
          v65 = v30 + ((v168[5] >> 1) & 1) + 1;
          v66 = 1;
          goto LABEL_59;
        }

        LODWORD(v67) = 0;
        v66 = 1;
        v65 = v45;
      }

      if (v67 != v65)
      {
LABEL_59:
        v75 = 0;
        v76 = v65 - v66;
        v77 = -v67;
        v78 = -v65;
        v67 = v67;
        while (1)
        {
          if (v21 == v67)
          {
            v75 += v63;
          }

          else
          {
            v79 = v168 + *&v46[2 * v67 + 16];
            v80 = v75 + *(v79 + 3) + 10;
            if ((v168[5] & 2) != 0)
            {
              if (*(v79 + 2))
              {
                v80 += 8;
              }

              else
              {
                v80 += *v79;
              }
            }

            v75 = (v80 + 1) & 0xFFFFFFFE;
          }

          if (v75 > v62 || v76 == v67)
          {
            break;
          }

          v67 += v66;
          v77 -= v66;
          if (v78 == v77)
          {
            goto LABEL_72;
          }
        }

        v30 = v64 - v77;
      }

LABEL_72:
      if (v30 == v21)
      {
        v47 = *v167;
        v81 = v167[1];
        *&v206[0] = *v167;
        *(&v206[0] + 1) = v81;
        goto LABEL_19;
      }

      v166 = v30;
      v48 = v168;
      v82 = v168 + *&v46[2 * v30 + 16];
      v47 = *(v82 + 3);
      *&v206[0] = v47;
      *(&v206[0] + 1) = v82 + 8;
LABEL_75:
      v164 = v45;
      v83 = v47 + 10;
      v156 = *(*(&v198[2] + v19 + 1) + 14) - *(*(&v198[2] + v19 + 1) + 12);
      if (v47 + 10 <= v156)
      {
        v91 = v22;
        --WORD1(v198[2]);
        result = sub_299090D50(&v196, *(&v198[18] + v19 + 4), v206, 0, *v17, 0);
        ++WORD1(v198[2]);
        if (!result)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v154 = v47 + 10;
        v84 = v19;
        v85 = *(a1 + 64);
        --LOWORD(v198[2]);
        --WORD1(v198[2]);
        v195 = 0;
        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v86 = *(*(&v197 + 1) + 104);
        v87 = LODWORD(v198[0]);
        v88 = &v196;
        if ((BYTE4(v198[2]) & 4) != 0)
        {
          DWORD1(v175) = 1;
          *&v172 = &v196;
          v88 = &v171;
        }

        *v88 = *(v86 + 8 * LODWORD(v198[0]));
        *(v86 + 8 * v87) = v88;
        result = sub_29908FE64(&v196, v206, 0, *v17, 0);
        *(v86 + 8 * v87) = *v88;
        if (!result)
        {
          if (*(a1 + 64) <= v85)
          {
            v19 = v84;
          }

          else
          {
            v19 = v84 + 1;
          }

          v89 = *(&v198[2] + v19 + 1);
          v90 = v161[v19];
          if (v89 == v90)
          {
            v91 = v161;
            v83 = v154;
          }

          else
          {
            v83 = v154;
            if (*(v24 + v19) >= (*(v90 + 12) - 16) >> 1)
            {
              if (v19 >= 1)
              {
                for (j = 0; j != v19; ++j)
                {
                  v24[j - 32] = *(&v198[2] + j + 1);
                  *(v24 + j) = *(&v198[18] + j + 4);
                }
              }

              v91 = v161;
              v161[v19] = v89;
              if (*(&v198[18] + v19 + 4))
              {
                *(v24 + v19) = *(&v198[18] + v19 + 4) - 1;
              }

              else
              {
                *(v24 + v19) = 0;
                sub_29908E73C(a1, 0);
              }
            }

            else
            {
              v91 = v161;
            }
          }

LABEL_98:
          v169 = v46;
          v94 = a5;
          if ((a5 & 0x20000) != 0)
          {
            v115 = *(a1 + 66);
            v91[v115] = v17;
            *(v24 + v115) = 0;
            result = sub_299090D50(a1, 0, v167, v160, v162, a5);
            if (result)
            {
              goto LABEL_176;
            }

            v95 = v91;
            if (*(a1 + 66))
            {
              memcpy(v24, &v198[18] + 8, 2 * *(a1 + 66));
              v95 = v91;
            }
          }

          else
          {
            v95 = v91;
            if ((v48[5] & 0x20) != 0)
            {
              if (v166 <= v159)
              {
                v91[*(a1 + 66)] = v17;
                v116 = *(v24 + v19) + 1;
                *(v24 + v19) = v116;
                v117 = v91[v19];
                if (*(&v198[2] + v19 + 1) != v117 && (*(v117 + 12) - 16) >> 1 <= v116)
                {
                  v118 = (v19 + 1);
                  v119 = 328;
                  v120 = 72;
                  do
                  {
                    *(a1 + v120) = *(&v196 + v120);
                    *(a1 + v119) = *(&v196 + v119);
                    v119 += 2;
                    v120 += 8;
                    --v118;
                  }

                  while (v118);
                }
              }
            }

            else
            {
              v155 = v83;
              v96 = 0;
              v97 = 0;
              v95[*(a1 + 66)] = v17;
              v98 = v169 + 16;
              v99 = &v202;
              v100 = v166;
              do
              {
                if (v100 == v159)
                {
                  v101 = v167[1];
                  v204 = *v167;
                  v205 = v101;
                  if ((v48[5] & 2) != 0)
                  {
                    v99 = v160;
                  }

                  else
                  {
                    v96 = v162;
                  }

                  *(v24 + *(a1 + 66)) = v97;
                  v102 = v48[5];
                  LODWORD(v103) = a5;
                }

                else
                {
                  v104 = (v48 + *&v98[2 * v100]);
                  v105 = *(v104 + 3);
                  v204 = v105;
                  v205 = v104 + 2;
                  v102 = v48[5];
                  if ((v102 & 2) != 0)
                  {
                    v202 = *v104;
                    v203 = &v105[(v104 + 2)];
                    LODWORD(v103) = *(v104 + 2);
                    v99 = &v202;
                  }

                  else
                  {
                    v103 = *(v104 + 2);
                    v96 = *v104 | (v103 << 32);
                  }
                }

                if (!(v102 & 2 | v97))
                {
                  v204 = 0;
                }

                result = sub_299090D50(a1, v97, &v204, v99, v96, v103);
                if (result)
                {
                  goto LABEL_176;
                }

                if (v100 == v164)
                {
                  v100 = 0;
                  v97 = 0;
                  v161[*(a1 + 66)] = v169;
                }

                else
                {
                  ++v100;
                  ++v97;
                }
              }

              while (v100 != v166);
              v106 = v169;
              v107 = *(v169 + 6);
              v108 = (v107 - 16) >> 1;
              v94 = a5;
              if ((v107 - 16) >= 2)
              {
                v109 = v48 + 8;
                if (v108 <= 1)
                {
                  v110 = 1;
                }

                else
                {
                  v110 = v108;
                }

                v111 = (v169 + 16);
                do
                {
                  v112 = *v111++;
                  *v109++ = v112;
                  --v110;
                }

                while (v110);
                v106 = v169;
                LOWORD(v107) = *(v169 + 6);
              }

              v48[6] = v107;
              v113 = *(v106 + 7);
              v48[7] = v113;
              memcpy(v48 + v48[v108 + 7], &v106[*&v98[2 * v108 - 2]], (*(v165 + 16) - v113));
              if (v166 <= v159)
              {
                v114 = *(a1 + 66);
                v95 = v161;
                v161[v114] = v201;
                v121 = *(v24 + v19) + 1;
                *(v24 + v19) = v121;
                v122 = v161[v19];
                v83 = v155;
                if (*(&v198[2] + v19 + 1) != v122 && (*(v122 + 12) - 16) >> 1 <= v121)
                {
                  v123 = (v19 + 1);
                  v124 = 328;
                  v125 = 72;
                  do
                  {
                    *(a1 + v125) = *(&v196 + v125);
                    *(a1 + v124) = *(&v196 + v124);
                    v124 += 2;
                    v125 += 8;
                    --v123;
                  }

                  while (v123);
                }
              }

              else
              {
                v114 = *(a1 + 66);
                v95 = v161;
                v161[v114] = v48;
                v83 = v155;
              }

              if ((a5 & 0x10000) != 0)
              {
                v126 = v95[v114] + *(v95[v114] + 2 * *(v24 + v114) + 16);
                if ((*(v126 + 4) & 1) == 0)
                {
                  v160[1] = v126 + *(v126 + 6) + 8;
                }
              }
            }
          }

          v127 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
          if (v127)
          {
            v128 = v48[6] - 16;
            v129 = v128 >> 1;
            v130 = *(a1 + 68);
            v131 = v201;
            v132 = 2 * v158 + 330;
            v133 = 8 * v158 + 80;
            while (1)
            {
              v134 = v127;
              if ((v130 & 4) != 0)
              {
                v134 = v127[2];
              }

              if (v134 == a1 || (*(v127 + 17) & *(v134 + 17) & 1) == 0)
              {
                goto LABEL_174;
              }

              if (!v158)
              {
                break;
              }

              if (v134[9] == v48)
              {
                v135 = (v134 + v132);
                v136 = (v134 + v133);
                v137 = v158 + 1;
                v138 = (v134 + v132);
                v139 = (v134 + v133);
                do
                {
                  v140 = *--v138;
                  *v135 = v140;
                  v141 = *--v139;
                  *v136 = v141;
                  v136 = v139;
                  v135 = v138;
                }

                while (v137-- > 1);
                *(v134 + 164) = v129 <= *(v134 + 164);
                v134[9] = *v95;
                ++*(v134 + 32);
                v143 = *(v134 + 33) + 1;
                *(v134 + 33) = v143;
                goto LABEL_154;
              }

LABEL_174:
              v127 = *v127;
              if (!v127)
              {
                goto LABEL_175;
              }
            }

            v143 = *(v134 + 33);
LABEL_154:
            v144 = *(a1 + 66);
            if (v144 <= v143 && v134[v144 + 9] == v48)
            {
              v146 = v134 + 41;
              v147 = *(v134 + v144 + 164);
              if ((v94 & 0x40000) == 0 && v147 >= v159)
              {
                *(v146 + v144) = v147 + 1;
                v144 = *(a1 + 66);
                v147 = *(v146 + v144);
              }

              if (v129 <= v147)
              {
                v134[v144 + 9] = v131;
                *(v146 + v144) = v147 - (v128 >> 1);
                if (*(a1 + 66))
                {
                  v148 = 0;
                  do
                  {
                    *(v146 + v148) = *(&v198[18] + v148 + 4);
                    v146[v148 - 32] = *(&v198[2] + v148 + 1);
                    ++v148;
                  }

                  while (v148 < *(a1 + 66));
                }
              }
            }

            else if (v83 <= v156 && v19 <= v143 && v134[v19 + 9] == v95[v19])
            {
              v145 = *(v134 + v19 + 164);
              if (v145 >= *(v24 + v19))
              {
                *(v134 + v19 + 164) = v145 + 1;
              }
            }

            if ((v48[5] & 2) != 0)
            {
              v149 = v134[2];
              if (v149)
              {
                if (*(v149 + 68))
                {
                  v150 = *(a1 + 66);
                  v151 = v134[v150 + 9];
                  v152 = *(v134 + v150 + 164);
                  if (v152 < (*(v151 + 12) - 16) >> 1)
                  {
                    v153 = v151 + *(v151 + 2 * v152 + 16);
                    if ((*(v153 + 4) & 6) == 4)
                    {
                      *(v149 + 72) = v153 + *(v153 + 6) + 8;
                    }
                  }
                }
              }
            }

            goto LABEL_174;
          }

LABEL_175:
          result = 0;
LABEL_176:
          v92 = v165;
          v46 = v169;
          if (!v169)
          {
LABEL_88:
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
          }

LABEL_87:
          *v46 = *(v92 + 192);
          *(v92 + 192) = v46;
          goto LABEL_88;
        }
      }

      v92 = v165;
      if (!v46)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    result = 12;
LABEL_89:
    *(*(a1 + 24) + 124) |= 2u;
  }

  return result;
}

uint64_t sub_299090D50(uint64_t a1, unsigned int a2, const void **a3, size_t *a4, size_t a5, int a6)
{
  v8 = *(a1 + 8 * *(a1 + 66) + 72);
  v36 = 0;
  v9 = v8[5];
  if ((v9 & 0x20) != 0)
  {
    v15 = **(a1 + 40);
    v16 = ((v8[6] - 16) >> 1) - a2;
    if (v16 >= 1)
    {
      memmove(v8 + v15 * a2 + v15 + 16, v8 + v15 * a2 + 16, v16 * v15);
    }

    memcpy(v8 + v15 * a2 + 16, a3[1], v15);
    result = 0;
    v8[6] += 2;
    v8[7] = v8[7] - v15 + 2;
    return result;
  }

  v10 = a6;
  v13 = v8[6];
  if (a3)
  {
    v14 = *a3 + 8;
  }

  else
  {
    v14 = 8;
  }

  v18 = (v8[7] - v13) - 2;
  if ((v9 & 2) == 0)
  {
    v19 = v14;
    goto LABEL_16;
  }

  if (a6)
  {
    v19 = v14 + 8;
LABEL_16:
    v22 = (v19 + 1) & 0xFFFFFFFFFFFFFFFELL;
    if (v22 > v18)
    {
      v20 = *(a1 + 24);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v19 = *a4 + v14;
  v20 = *(a1 + 24);
  v21 = *(v20 + 32);
  if (v19 <= *(v21 + 220))
  {
    goto LABEL_16;
  }

  v22 = (v14 + 9) & 0xFFFFFFFFFFFFFFFELL;
  if (v22 > v18)
  {
LABEL_18:
    *(v20 + 124) |= 2u;
    return 4294936510;
  }

  result = sub_29908EE68(a1, 4, ((*a4 + 15) / *(v21 + 16)) + 1, &v36);
  if (result)
  {
    return result;
  }

  v10 |= 1u;
  v13 = v8[6];
LABEL_19:
  v23 = (v13 - 16) >> 1;
  if (v23 <= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = a2;
    v25 = &v8[v23 + 8];
    v26 = v25;
    do
    {
      --v23;
      v27 = *--v26;
      *v25 = v27;
      v25 = v26;
    }

    while (v23 > a2);
    LOWORD(v13) = v8[6];
  }

  v28 = v8[7] - v22;
  v8[v24 + 8] = v28;
  v8[7] = v28;
  v8[6] = v13 + 2;
  v29 = v8 + v28;
  if (a3)
  {
    v30 = *a3;
  }

  else
  {
    v30 = 0;
  }

  *(v29 + 3) = v30;
  *(v29 + 2) = v10;
  if ((v8[5] & 2) != 0)
  {
    a5 = *a4;
  }

  else
  {
    *(v29 + 2) = WORD2(a5);
  }

  *v29 = a5;
  if (a3)
  {
    memcpy(v29 + 8, a3[1], *a3);
  }

  if ((v8[5] & 2) != 0)
  {
    v31 = &v29[v30 + 8];
    if (v36)
    {
      v32 = v36 + 16;
      *v31 = *v36;
      if ((v10 & 0x10000) != 0)
      {
        result = 0;
        a4[1] = v32;
        return result;
      }

      v34 = *a4;
      v33 = a4[1];
      v35 = v32;
    }

    else
    {
      if (v10)
      {
        result = 0;
        *v31 = *a4[1];
        return result;
      }

      if ((v10 & 0x10000) != 0)
      {
        result = 0;
        a4[1] = v31;
        return result;
      }

      v34 = *a4;
      v33 = a4[1];
      v35 = &v29[v30 + 8];
    }

    memcpy(v35, v33, v34);
  }

  return 0;
}

uint64_t sub_299091004(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if ((*(a2 + 4) & 2) != 0)
  {
    v8 = a2 + *(a2 + 6);
    v9 = *(v8 + 8);
    v10 = *(v8 + 40);
    *(v2 + 408) = *(v8 + 24);
    *(v2 + 424) = v10;
    *(v2 + 392) = v9;
    *(v2 + 64) = 0x400000000;
    *(v2 + 72) = 0;
  }

  else
  {
    v3 = a2 + *(a2 + 6);
    *(v2 + 392) = 0x1000000000000;
    v5 = *(v3 + 8);
    v4 = (v3 + 8);
    *(v2 + 400) = xmmword_2990981E0;
    v6 = (v4[6] - 16) >> 1;
    *(v2 + 416) = 0;
    *(v2 + 424) = v6;
    *(v2 + 432) = v5;
    *(v2 + 434) = v4[1];
    *(v2 + 436) = v4[2];
    *(v2 + 438) = v4[3];
    *(v2 + 64) = 1;
    *(v2 + 68) = 5;
    *(v2 + 72) = v4;
    *(v2 + 328) = 0;
    v7 = *(result + 40);
    if ((*(v7 + 4) & 0x10) != 0)
    {
      *(v2 + 396) = 16;
      *(v2 + 392) = v4[4];
      if ((*(v7 + 4) & 0x20) != 0)
      {
        *(v2 + 396) = 24;
      }
    }
  }

  *(v2 + 488) = 56;
  if (*(v2 + 456) == sub_29908ADD8 && *(v2 + 392) == 8)
  {
    *(v2 + 456) = sub_29908ADF8;
  }

  return result;
}

uint64_t mdb_cursor_del(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 24) + 124);
  if ((v2 & 0x20013) != 0)
  {
    if ((v2 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  v5 = (a1 + 68);
  if ((*(a1 + 68) & 1) == 0)
  {
    return 22;
  }

  v6 = a1 + 328;
  v7 = a1 + 72;
  if (*(a1 + 328 + 2 * *(a1 + 66)) >= (*(*(a1 + 72 + 8 * *(a1 + 66)) + 12) - 16) >> 1)
  {
    return 4294936498;
  }

  if ((a2 & 0x8000) != 0 || (result = sub_29908EBF4(a1, 0, 0), !result))
  {
    result = sub_29908EF2C(a1);
    if (!result)
    {
      v9 = *(a1 + 66);
      v10 = *(v7 + 8 * v9);
      v11 = *(v10 + 10);
      if ((v11 & 2) == 0)
      {
        return 4294936500;
      }

      if ((v11 & 0x20) != 0)
      {
LABEL_35:
        v29 = *(a1 + 32);
        v30 = *(a1 + 66);
        v31 = *(v6 + 2 * v30);
        v32 = *(v7 + 8 * v30);
        sub_29908F674(a1, **(a1 + 40));
        --*(*(a1 + 40) + 32);
        for (i = *(*(*(a1 + 24) + 104) + 8 * v29); i; i = *i)
        {
          v34 = i;
          if ((*v5 & 4) != 0)
          {
            v34 = i[2];
          }

          if (v34 != a1)
          {
            v35 = *(v34 + 17);
            if ((*(i + 17) & v35 & 1) != 0 && *(v34 + 32) >= *(a1 + 64))
            {
              v36 = *(a1 + 66);
              if (v34[v36 + 9] == v32)
              {
                v37 = v34 + 41;
                v38 = *(v34 + v36 + 164);
                if (v38 == v31)
                {
                  *(v34 + 17) = v35 | 8;
                  if ((*(*(a1 + 40) + 4) & 4) != 0)
                  {
                    *(v34[2] + 68) &= 0xFFFFFFFC;
                  }
                }

                else
                {
                  if (v38 > v31)
                  {
                    *(v37 + v36) = v38 - 1;
                  }

                  v39 = v34[2];
                  if (v39)
                  {
                    if ((*(v39 + 68) & 1) != 0 && *(v37 + *(a1 + 66)) < (*(v32 + 12) - 16) >> 1)
                    {
                      v40 = v32 + *(v32 + 16 + 2 * *(v37 + *(a1 + 66)));
                      if ((*(v40 + 4) & 6) == 4)
                      {
                        *(v39 + 72) = v40 + *(v40 + 6) + 8;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        result = sub_299093548(a1);
        if (result)
        {
LABEL_55:
          v5 = (*(a1 + 24) + 124);
LABEL_56:
          v41 = 2;
LABEL_82:
          *v5 |= v41;
          return result;
        }

        if (!*(a1 + 64))
        {
          result = 0;
          goto LABEL_56;
        }

        v42 = *(*(*(a1 + 24) + 104) + 8 * v29);
        if (!v42)
        {
LABEL_81:
          result = 0;
          v41 = 8;
          goto LABEL_82;
        }

        v43 = *(v7 + 8 * *(a1 + 66));
        v44 = (*(v43 + 12) - 16) >> 1;
        while (1)
        {
          v45 = v42;
          if ((*v5 & 4) != 0)
          {
            v45 = *(v42 + 16);
          }

          v46 = (v45 + 68);
          if ((*(v42 + 68) & *(v45 + 68) & 1) == 0)
          {
            goto LABEL_80;
          }

          if (*(v45 + 64) < *(a1 + 64))
          {
            goto LABEL_80;
          }

          v47 = *(a1 + 66);
          if (*(v45 + 72 + 8 * v47) != v43)
          {
            goto LABEL_80;
          }

          v48 = *(v45 + 328 + 2 * v47);
          if (v48 < *(v6 + 2 * v47))
          {
            goto LABEL_80;
          }

          if (v44 <= v48)
          {
            result = sub_29908E73C(v45, 1);
            if (result == -30798)
            {
              v52 = 2;
              goto LABEL_79;
            }

            if (result)
            {
              goto LABEL_55;
            }
          }

          v49 = *(v45 + 16);
          if (!v49 || (*v46 & 2) != 0)
          {
            goto LABEL_80;
          }

          v50 = *(v45 + 72 + 8 * *(v45 + 66)) + *(*(v45 + 72 + 8 * *(v45 + 66)) + 2 * *(v45 + 328 + 2 * *(v45 + 66)) + 16);
          v51 = *(v50 + 4);
          if ((v51 & 4) != 0)
          {
            if (*(v49 + 68))
            {
              if ((v51 & 2) == 0)
              {
                *(v49 + 72) = v50 + *(v50 + 6) + 8;
              }
            }

            else
            {
              sub_299091004(v45, v50);
              result = sub_29908EAD4(*(v45 + 16), 0, 0);
              if (result)
              {
                goto LABEL_55;
              }
            }
          }

          v46 = (*(v45 + 16) + 68);
          v52 = 8;
LABEL_79:
          *v46 |= v52;
LABEL_80:
          v42 = *v42;
          if (!v42)
          {
            goto LABEL_81;
          }
        }
      }

      v12 = v10 + 16;
      v13 = v10 + *(v10 + 16 + 2 * *(v6 + 2 * v9));
      v14 = *(v13 + 4);
      if ((v14 & 4) == 0)
      {
        if (((v14 ^ a2) & 2) != 0)
        {
          result = 4294936512;
LABEL_85:
          *(*(a1 + 24) + 124) |= 2u;
          return result;
        }

        goto LABEL_34;
      }

      if ((a2 & 0x20) != 0)
      {
        v15 = *(a1 + 16);
        *(*(a1 + 40) + 32) = *(*(a1 + 40) + 32) - *(v15 + 424) + 1;
        *(v15 + 68) &= ~1u;
        if ((v14 & 2) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }

      if ((v14 & 2) == 0)
      {
        *(*(a1 + 16) + 72) = v13 + *(v13 + 6) + 8;
      }

      result = mdb_cursor_del(*(a1 + 16), 0x8000);
      if (!result)
      {
        v15 = *(a1 + 16);
        if (*(v15 + 424))
        {
          if ((*(v13 + 4) & 2) != 0)
          {
            v53 = v13 + *(v13 + 6);
            v55 = *(v15 + 408);
            v54 = *(v15 + 424);
            *(v53 + 8) = *(v15 + 392);
            *(v53 + 24) = v55;
            *(v53 + 40) = v54;
LABEL_107:
            result = 0;
            --*(*(a1 + 40) + 32);
            return result;
          }

          v16 = *(a1 + 66);
          v17 = *(v6 + 2 * v16);
          v18 = *(v12 + 2 * v17);
          v19 = (v10 + v18);
          v20 = *(v10 + v18 + 6);
          v21 = v10 + v18 + v20;
          v22 = *(v21 + 20);
          v23 = *(v21 + 22) - v22;
          v24 = *(v10 + v18) - v23;
          if ((*(v21 + 18) & 0x20) != 0)
          {
            v28 = *(v10 + v18) - v23;
            if (v24)
            {
LABEL_95:
              *(v15 + 72) = v10 + v18 + v20 + 8;
              for (j = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32)); j; j = *j)
              {
                if (j != a1 && *(j + 32) >= *(a1 + 64) && (*(j + 68) & 1) != 0 && j[v16 + 9] == v10)
                {
                  v63 = j[2];
                  if (v63)
                  {
                    if ((*(v63 + 68) & 1) != 0 && *(j + v16 + 164) < (*(v10 + 12) - 16) >> 1)
                    {
                      v64 = v10 + *(v12 + 2 * *(j + v16 + 164));
                      if ((*(v64 + 4) & 6) == 4)
                      {
                        *(v63 + 72) = v64 + *(v64 + 6) + 8;
                      }
                    }
                  }
                }
              }

              goto LABEL_107;
            }
          }

          else
          {
            if ((v22 - 16) >= 2)
            {
              v25 = (v22 - 16) >> 1;
              v26 = v25 + 1;
              v27 = (v20 + 2 * v25 + v18 + v10 + 22);
              do
              {
                *(v27 + v23) = *v27 - v23;
                --v26;
                --v27;
              }

              while (v26 > 1);
            }

            v28 = 16;
          }

          *(v21 + 22) = v22;
          *(v21 + 8) = *v10;
          *v19 = v24;
          v19[1] = 0;
          memmove((v10 + *(v10 + 14) + v23), (v10 + *(v10 + 14)), v21 + 8 + v28 - (v10 + *(v10 + 14)));
          v56 = *(v10 + 12) - 16;
          if (v56 >= 2)
          {
            v57 = *(v12 + 2 * v17);
            v58 = v56 >> 1;
            v59 = v58 + 1;
            v60 = (v10 + 2 * v58 + 14);
            do
            {
              v61 = *v60;
              if (v61 <= v57)
              {
                *v60 = v61 + v23;
              }

              --v59;
              --v60;
            }

            while (v59 > 1);
          }

          *(v10 + 14) += v23;
          v16 = *(a1 + 66);
          v18 = *(v12 + 2 * *(v6 + 2 * v16));
          v20 = *(v10 + v18 + 6);
          v15 = *(a1 + 16);
          goto LABEL_95;
        }

        *(v15 + 68) &= ~1u;
        LOWORD(v14) = *(v13 + 4);
        if ((v14 & 2) == 0)
        {
LABEL_34:
          if (v14)
          {
            v65 = 0;
            result = sub_29908F7A4(*(a1 + 24), *(v13 + *(v13 + 6) + 8), &v65, 0);
            if (result)
            {
              goto LABEL_85;
            }

            result = sub_29908FB9C(a1, v65);
            if (result)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_35;
        }

LABEL_31:
        result = sub_2990917CC(v15, 0);
        if (result)
        {
          goto LABEL_85;
        }

        LOWORD(v14) = *(v13 + 4);
        goto LABEL_34;
      }
    }
  }

  return result;
}

uint64_t sub_2990917CC(uint64_t a1, int a2)
{
  LODWORD(result) = sub_299092A18(a1, 0, 4);
  if (result)
  {
    if (result == -30798)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    goto LABEL_61;
  }

  v34 = *(a1 + 24);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v5 = *(a1 + 68);
  if (((v5 & 4) != 0 || !a2 && !*(*(a1 + 40) + 24)) && *(a1 + 64))
  {
    v6 = *(a1 + 64) - 1;
    *(a1 + 64) = v6;
    if (v6)
    {
      --*(a1 + 66);
    }

    else
    {
      *(a1 + 68) = v5 & 0xFFFFFFFE;
    }
  }

  v7 = *(a1 + 64);
  if (!*(a1 + 64))
  {
    goto LABEL_58;
  }

  v8 = a1 + 72;
  v9 = (a1 + 328);
  v10 = 328;
  v11 = 72;
  do
  {
    *(v36 + v11) = *(a1 + v11);
    *(v36 + v10) = *(a1 + v10);
    v10 += 2;
    v11 += 8;
    --v7;
  }

  while (v7);
  v12 = a1 + 330;
  while (1)
  {
    while (1)
    {
      v13 = *(v8 + 8 * *(a1 + 66));
      v14 = v13[6] - 16;
      v15 = v14 >> 1;
      if ((v13[5] & 2) != 0)
      {
        if (v14 >= 2)
        {
          v17 = 0;
          v16 = v15 <= 1 ? 1 : v15;
          do
          {
            v18 = v13 + v13[v17 + 8];
            v19 = *(v18 + 4);
            if (v19)
            {
              v35 = 0;
              v20 = *(v18 + *(v18 + 6) + 8);
              result = sub_29908F7A4(*(a1 + 24), v20, &v35, 0);
              if (result)
              {
                goto LABEL_60;
              }

              v21 = v35;
              result = mdb_midl_append_range((v34 + 40), v20, *(v35 + 12));
              if (result)
              {
                goto LABEL_60;
              }

              v22 = *(a1 + 40);
              v23 = *(v22 + 24) - *(v21 + 12);
              *(v22 + 24) = v23;
              if (!a2 && !v23)
              {
                v8 = a1 + 72;
                v9 = (a1 + 328);
                goto LABEL_50;
              }
            }

            else if (a2)
            {
              if ((v19 & 2) != 0)
              {
                sub_299091004(a1, v18);
                result = sub_2990917CC(*(a1 + 16), 0);
                if (result)
                {
                  goto LABEL_60;
                }
              }
            }

            ++v17;
          }

          while (v16 != v17);
          v8 = a1 + 72;
          v9 = (a1 + 328);
          if (a2)
          {
            goto LABEL_44;
          }
        }

        else
        {
          LOWORD(v16) = 0;
          if (a2)
          {
            goto LABEL_44;
          }
        }

        if (!*(*(a1 + 40) + 24))
        {
          break;
        }
      }

      else
      {
        result = mdb_midl_need((v34 + 40), v14 >> 1);
        if (result)
        {
          goto LABEL_60;
        }

        if (v14 >= 2)
        {
          v24 = v13 + 8;
          v25 = *(v34 + 40);
          v26 = v15 <= 1 ? 1 : v15;
          LOWORD(v16) = v26;
          do
          {
            v27 = *v24++;
            v28 = *(v13 + v27) | (*(v13 + v27 + 4) << 32);
            v29 = *v25 + 1;
            *v25 = v29;
            v25[v29] = v28;
            --v26;
          }

          while (v26);
        }

        else
        {
          LOWORD(v16) = 0;
        }
      }

LABEL_44:
      if (!*(a1 + 66))
      {
        goto LABEL_58;
      }

      v9[*(a1 + 66)] = v16;
      result = sub_29908E73C(a1, 1);
      if (result == -30798)
      {
        break;
      }

      if (result)
      {
        goto LABEL_59;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_58;
      }
    }

LABEL_50:
    v30 = *(a1 + 64);
    if (!v30)
    {
      goto LABEL_57;
    }

    v31 = v30 - 1;
    *(a1 + 64) = v30 - 1;
    if (v30 == 1)
    {
      break;
    }

    --*(a1 + 66);
    *(a1 + 328) = 0;
    if ((v30 - 1) != 1)
    {
      v32 = 0;
      v33 = v31 - 1;
      do
      {
        *(v12 + 2 * v32) = 0;
        *(v12 + 8 * v32 - 250) = *(v37 + v32);
        ++v32;
      }

      while (v33 != v32);
    }
  }

  *(a1 + 68) &= ~1u;
LABEL_57:
  *v9 = 0;
LABEL_58:
  result = mdb_midl_append((v34 + 40), *(*(a1 + 40) + 40));
LABEL_59:
  if (result)
  {
LABEL_60:
    *(v34 + 124) |= 2u;
  }

LABEL_61:
  *(a1 + 68) &= ~1u;
  return result;
}

uint64_t mdb_cursor_open(uint64_t a1, unsigned int a2, void *a3)
{
  result = 22;
  if (a1 && a3 && *(a1 + 120) > a2 && (*(*(a1 + 112) + a2) & 8) != 0)
  {
    v7 = *(a1 + 124);
    if ((v7 & 0x13) != 0)
    {
      return 4294936514;
    }

    else if (v7 & 0x20000 | a2)
    {
      if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) != 0)
      {
        v8 = 888;
      }

      else
      {
        v8 = 392;
      }

      v9 = malloc_type_malloc(v8, 0xA991F9DFuLL);
      if (v9)
      {
        v10 = v9;
        sub_29908C704(v9, a1, a2, (v9 + 98));
        v11 = *(a1 + 104);
        if (v11)
        {
          *v10 = *(v11 + 8 * a2);
          *(v11 + 8 * a2) = v10;
          v10[17] |= 0x40u;
        }

        result = 0;
        *a3 = v10;
      }

      else
      {
        return 12;
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_renew(uint64_t a1, uint64_t a2)
{
  result = 22;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 32);
      if (v4 < *(a1 + 120) && (*(*(a1 + 112) + v4) & 8) != 0 && (*(a2 + 68) & 0x40) == 0 && !*(a1 + 104))
      {
        if ((*(a1 + 124) & 0x13) != 0)
        {
          return 4294936514;
        }

        else
        {
          sub_29908C704(a2, a1, v4, *(a2 + 16));
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t mdb_cursor_count(uint64_t a1, uint64_t *a2)
{
  v2 = 22;
  if (a1 && a2)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 4294936512;
    }

    if ((*(*(a1 + 24) + 124) & 0x13) != 0)
    {
      return 4294936514;
    }

    v4 = *(a1 + 68);
    if ((v4 & 1) == 0)
    {
      return 22;
    }

    if (*(a1 + 64))
    {
      if ((v4 & 2) == 0)
      {
        v5 = *(a1 + 66);
        goto LABEL_14;
      }

      v5 = *(a1 + 66);
      if (*(a1 + 2 * v5 + 328) < (*(*(a1 + 8 * v5 + 72) + 12) - 16) >> 1)
      {
        *(a1 + 68) = v4 & 0xFFFFFFFD;
LABEL_14:
        if ((*(*(a1 + 8 * v5 + 72) + *(*(a1 + 8 * v5 + 72) + 2 * *(a1 + 2 * v5 + 328) + 16) + 4) & 4) != 0)
        {
          if ((*(v3 + 68) & 1) == 0)
          {
            return 22;
          }

          v6 = *(v3 + 424);
        }

        else
        {
          v6 = 1;
        }

        v2 = 0;
        *a2 = v6;
        return v2;
      }
    }

    return 4294936498;
  }

  return v2;
}

void mdb_cursor_close(void *a1)
{
  if (a1 && !*(a1 + 1))
  {
    if ((*(a1 + 68) & 0x40) != 0)
    {
      v1 = *(*(a1 + 3) + 104);
      if (v1)
      {
        v2 = (v1 + 8 * *(a1 + 8));
        do
        {
          v3 = v2;
          v2 = *v2;
          if (v2)
          {
            v4 = v2 == a1;
          }

          else
          {
            v4 = 1;
          }
        }

        while (!v4);
        if (v2 == a1)
        {
          *v3 = *a1;
        }
      }
    }

    free(a1);
  }
}

uint64_t mdb_cursor_txn(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t mdb_del(uint64_t a1, unsigned int a2, void *a3, __int128 *a4)
{
  v4 = 22;
  if (!a1 || !a3)
  {
    return v4;
  }

  if (*(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  v6 = *(a1 + 124);
  if ((v6 & 0x20013) != 0)
  {
    if ((v6 & 0x20000) != 0)
    {
      return 13;
    }

    else
    {
      return 4294936514;
    }
  }

  if ((*(*(a1 + 88) + 48 * a2 + 4) & 4) == 0)
  {
    a4 = 0;
  }

  return sub_299091E90(a1, a2, a3, a4, 0);
}

uint64_t sub_299091E90(void *a1, unsigned int a2, void *a3, __int128 *a4, int a5)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v15 = 0uLL;
  v14 = 0;
  sub_29908C704(v17, a1, a2, v16);
  if (a4)
  {
    v15 = *a4;
    v10 = &v15;
    v11 = 2;
  }

  else
  {
    v10 = 0;
    a5 |= 0x20u;
    v11 = 15;
  }

  result = sub_29908DAE8(v17, a3, v10, v11, &v14);
  if (!result)
  {
    DWORD1(v18) |= 0x40u;
    v13 = a1[13];
    v17[0] = *(v13 + 8 * a2);
    *(v13 + 8 * a2) = v17;
    result = mdb_cursor_del(v17, a5);
    *(a1[13] + 8 * a2) = v17[0];
  }

  return result;
}

uint64_t mdb_put(uint64_t a1, unsigned int a2, size_t *a3, uint64_t a4, int a5)
{
  result = 22;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (*(a1 + 120) > a2)
        {
          v15 = 0;
          memset(v14, 0, sizeof(v14));
          memset(v13, 0, sizeof(v13));
          if ((a5 & 0xFFF8FFCF) == 0 && (*(*(a1 + 112) + a2) & 0x10) != 0)
          {
            v11 = *(a1 + 124);
            if ((v11 & 0x20013) != 0)
            {
              if ((v11 & 0x20000) != 0)
              {
                return 13;
              }

              else
              {
                return 4294936514;
              }
            }

            else
            {
              sub_29908C704(v14, a1, a2, v13);
              v12 = *(a1 + 104);
              *&v14[0] = *(v12 + 8 * a2);
              *(v12 + 8 * a2) = v14;
              result = mdb_cursor_put(v14, a3, a4, a5);
              *(*(a1 + 104) + 8 * a2) = *&v14[0];
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mdb_dbi_open(uint64_t a1, char *__s, unsigned int a3, unsigned int *a4)
{
  if ((a3 & 0xFFFBFF81) != 0)
  {
    return 22;
  }

  if ((*(a1 + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (!__s)
  {
    *a4 = 1;
    v18 = *(a1 + 88);
    if ((a3 & 0x7E) != 0)
    {
      v19 = *(v18 + 52);
      v20 = a3 & 0x7E | v19;
      if (v20 != v19)
      {
        *(v18 + 52) = v20;
        *(a1 + 124) |= 4u;
      }
    }

    sub_299092564(*(a1 + 80), v18, 1u);
    return 0;
  }

  v10 = *(a1 + 80);
  if (!*(v10 + 64))
  {
    sub_299092564(v10, *(a1 + 88), 1u);
  }

  v71 = 0;
  v72 = 0;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = strlen(__s);
  v12 = *(a1 + 120);
  if (v12 < 3)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = (*(a1 + 80) + 104);
  for (i = 2; i != v12; ++i)
  {
    v16 = *(v14 - 1);
    if (v16)
    {
      if (v11 == v16 && !strncmp(__s, *v14, v11))
      {
        v4 = 0;
        *a4 = i;
        return v4;
      }
    }

    else if (!v13)
    {
      v13 = i;
    }

    v14 += 6;
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
LABEL_20:
    if (v12 >= *(*(a1 + 32) + 36))
    {
      return 4294936505;
    }

    v13 = 0;
    v17 = 1;
  }

  if ((*(*(a1 + 88) + 52) & 0xC) == 0)
  {
    v61 = 0;
    v73[0] = v11;
    v73[1] = __s;
    sub_29908C704(&v65, a1, 1u, 0);
    v21 = sub_29908DAE8(&v65, v73, &v71, 15, &v61);
    if (v21 == -30798)
    {
      if (a3 < 0x40000)
      {
        return 4294936498;
      }

      if ((*(a1 + 126) & 2) != 0)
      {
        return 13;
      }

      v31 = strdup(__s);
      if (v31)
      {
        v23 = v31;
        v71 = 48;
        v72 = &v62;
        v62 = 0u;
        v63 = 0u;
        *&v64 = 0;
        *(&v64 + 1) = -1;
        WORD2(v62) = a3;
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = *(*(&v66 + 1) + 104);
        v33 = v67;
        v34 = &v65;
        if ((BYTE4(v69[0]) & 4) != 0)
        {
          DWORD1(v40) = 1;
          *&v37 = &v65;
          v34 = &v36;
        }

        *v34 = *(v32 + 8 * v67);
        *(v32 + 8 * v33) = v34;
        v35 = mdb_cursor_put(&v65, v73, &v71, 2);
        *(v32 + 8 * v33) = *v34;
        if (v35)
        {
          v4 = v35;
          free(v23);
          return v4;
        }

        v24 = 29;
        if (!v17)
        {
LABEL_38:
          v25 = (*(a1 + 80) + 48 * v13);
          *v25 = v11;
          v25[1] = v23;
          v25[4] = 0;
          *(*(a1 + 112) + v13) = v24;
          v26 = *(*(a1 + 32) + 152);
          LODWORD(v25) = *(v26 + 4 * v13) + 1;
          *(v26 + 4 * v13) = v25;
          v27 = *(a1 + 88);
          *(*(a1 + 96) + 4 * v13) = v25;
          v28 = (v27 + 48 * v13);
          v29 = *v72;
          v30 = v72[2];
          v28[1] = v72[1];
          v28[2] = v30;
          *v28 = v29;
          *a4 = v13;
          sub_299092564(*(a1 + 80), *(a1 + 88), v13);
          if (v17)
          {
            v4 = 0;
            ++*(a1 + 120);
            return v4;
          }

          return 0;
        }

LABEL_37:
        v13 = *(a1 + 120);
        goto LABEL_38;
      }
    }

    else
    {
      v4 = v21;
      if (v21)
      {
        return v4;
      }

      if ((*(*(v69 + WORD1(v69[0]) + 1) + *(*(v69 + WORD1(v69[0]) + 1) + 2 * *(&v69[16] + WORD1(v69[0]) + 4) + 16) + 4) & 6) != 2)
      {
        return 4294936512;
      }

      v22 = strdup(__s);
      if (v22)
      {
        v23 = v22;
        v24 = 28;
        if (!v17)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    return 12;
  }

  if (a3 >= 0x40000)
  {
    return 4294936512;
  }

  else
  {
    return 4294936498;
  }
}

uint64_t sub_299092564(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 48 * a3 + 4);
  v4 = sub_29908ADF8;
  if ((v3 & 8) == 0)
  {
    v4 = sub_2990948CC;
  }

  if ((v3 & 2) != 0)
  {
    v4 = sub_29909487C;
  }

  *(result + 48 * a3 + 16) = v4;
  if ((v3 & 4) != 0)
  {
    if ((v3 & 0x20) != 0)
    {
      v6 = (v3 & 0x10) == 0;
      v5 = sub_29908ADD8;
      v7 = sub_29908ADF8;
    }

    else
    {
      v6 = (v3 & 0x40) == 0;
      v5 = sub_29909487C;
      v7 = sub_2990948CC;
    }

    if (v6)
    {
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  *(result + 48 * a3 + 24) = v5;
  return result;
}

void mdb_dbi_close(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2 && *(a1 + 36) > a2)
  {
    v2 = *(a1 + 136);
    v3 = *(v2 + 48 * a2 + 8);
    if (v3)
    {
      v4 = (v2 + 48 * a2);
      *v4 = 0;
      v4[1] = 0;
      v5 = *(a1 + 152);
      *(*(a1 + 144) + 2 * a2) = 0;
      ++*(v5 + 4 * a2);
      free(v3);
    }
  }
}

uint64_t mdb_dbi_flags(uint64_t a1, unsigned int a2, int *a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *a3 = *(*(a1 + 88) + 48 * a2 + 4) & 0x7FFF;
  return result;
}

uint64_t mdb_drop(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 22;
  if (a1)
  {
    if (a3 <= 1 && *(a1 + 120) > a2)
    {
      v12 = 0;
      if ((*(*(a1 + 112) + a2) & 0x10) != 0)
      {
        if ((*(a1 + 126) & 2) != 0)
        {
          return 13;
        }

        else if (*(*(a1 + 96) + 4 * a2) == *(*(*(a1 + 32) + 152) + 4 * a2))
        {
          v3 = mdb_cursor_open(a1, a2, &v12);
          if (!v3)
          {
            v7 = sub_2990917CC(v12, *(v12[5] + 4) & 4);
            v3 = v7;
            for (i = *(*(a1 + 104) + 8 * a2); i; i = *i)
            {
              *(i + 17) &= 0xFFFFFFFC;
            }

            if (v7)
            {
              goto LABEL_19;
            }

            if (a2 >= 2 && a3)
            {
              v3 = sub_299091E90(a1, 1u, v12[6], 0, 2);
              if (!v3)
              {
                *(*(a1 + 112) + a2) = 2;
                mdb_dbi_close(*(a1 + 32), a2);
                goto LABEL_19;
              }

              v9 = *(a1 + 124) | 2;
            }

            else
            {
              v3 = 0;
              *(*(a1 + 112) + a2) |= 1u;
              v10 = *(a1 + 88) + 48 * a2;
              *(v10 + 38) = 0;
              *(v10 + 22) = 0u;
              *(v10 + 6) = 0u;
              *(v10 + 40) = -1;
              v9 = *(a1 + 124) | 4;
            }

            *(a1 + 124) = v9;
LABEL_19:
            mdb_cursor_close(v12);
          }
        }

        else
        {
          return 4294936516;
        }
      }
    }
  }

  return v3;
}

uint64_t mdb_set_compare(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 16) = a3;
  return result;
}

uint64_t mdb_set_dupsort(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 24) = a3;
  return result;
}

uint64_t mdb_set_relfunc(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 32) = a3;
  return result;
}

uint64_t mdb_set_relctx(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1 || *(a1 + 120) <= a2 || (*(*(a1 + 112) + a2) & 0x10) == 0)
  {
    return 22;
  }

  result = 0;
  *(*(a1 + 80) + 48 * a2 + 40) = a3;
  return result;
}

uint64_t sub_299092974(uint64_t a1, int a2, int a3)
{
  v5 = a3;
  v10 = a3;
  v11 = xmmword_299098200;
  for (i = fcntl(*(a1 + 4), a2, &v10); i; i = fcntl(*(a1 + 4), a2, &v10))
  {
    result = *__error();
    if (result != 4)
    {
      return result;
    }

    v10 = v5;
    v11 = xmmword_299098200;
  }

  v9 = a2 == 7 && WORD6(v11) != 2;
  return (v9 << 31 >> 31);
}

uint64_t sub_299092A18(uint64_t a1, void *a2, char a3)
{
  v4 = *(a1 + 24);
  if ((*(v4 + 124) & 0x13) != 0)
  {
    return 4294936514;
  }

  if ((**(a1 + 56) & 2) != 0)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    if (*(*(v4 + 96) + 4 * *(a1 + 32)) != *(*(*(v4 + 32) + 152) + 4 * *(a1 + 32)))
    {
      return 4294936516;
    }

    sub_29908C704(v17, v4, 1, 0);
    result = sub_299092A18(v17, *(a1 + 48), 0);
    if (result)
    {
      return result;
    }

    v15 = 0;
    v16 = 0;
    v14 = 0;
    v10 = sub_299092C04(v17, *(a1 + 48), &v14);
    if (!v14)
    {
      return 4294936516;
    }

    if ((*(v10 + 2) & 6) != 2)
    {
      return 4294936512;
    }

    result = sub_29908E328(v17, v10, &v15);
    if (result)
    {
      return result;
    }

    v11 = *(a1 + 40);
    if ((*(v11 + 4) & 0x7FFF) != *(v16 + 2))
    {
      return 4294936512;
    }

    v12 = *v16;
    v13 = v16[2];
    *(v11 + 16) = v16[1];
    *(v11 + 32) = v13;
    *v11 = v12;
    **(a1 + 56) &= ~2u;
  }

  v8 = *(*(a1 + 40) + 40);
  if (v8 == -1)
  {
    return 4294936498;
  }

  v9 = *(a1 + 72);
  if (v9 && *v9 == v8 || (result = sub_29908F7A4(*(a1 + 24), v8, (a1 + 72), 0), !result))
  {
    *(a1 + 64) = 1;
    if ((a3 & 1) == 0 || (result = sub_299092E3C(a1), !result))
    {
      if ((a3 & 2) != 0)
      {
        return 0;
      }

      else
      {
        return sub_29909310C(a1, a2, a3);
      }
    }
  }

  return result;
}

char *sub_299092C04(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8 * *(a1 + 66) + 72);
  v19 = 0;
  v20 = 0;
  v6 = v5[6] - 16;
  v7 = v6 >> 1;
  v8 = v5[5];
  v9 = ((v8 >> 1) & 1) == 0;
  v10 = (v6 >> 1) - 1;
  v11 = *(*(a1 + 48) + 16);
  if (v11 == sub_29908ADF8)
  {
    if (v8)
    {
      if (*(v5 + v5[9] + 6) == 8)
      {
        v11 = sub_29908D9A8;
      }

      else
      {
        v11 = sub_29908ADD8;
      }

      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v11 = sub_29908ADF8;
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else if ((v8 & 0x20) == 0)
  {
LABEL_3:
    if (v9 < v7)
    {
      v17 = v5[6] - 16;
      v18 = a3;
      while (1)
      {
        LODWORD(v12) = (v9 + v10) >> 1;
        v13 = v5 + *(v5 + (2 * v12) + 16);
        v19 = *(v13 + 3);
        v20 = (v13 + 8);
        v14 = v11(a2, &v19);
        if (!v14)
        {
          goto LABEL_30;
        }

        if (v14 <= 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v9 = v12 + 1;
        }

        if (v9 > v10)
        {
          goto LABEL_26;
        }
      }
    }

    LODWORD(v12) = 0;
    v13 = 0;
    goto LABEL_33;
  }

  v19 = **(a1 + 40);
  v13 = v5 + v5[8];
  if (v9 < v7)
  {
    v17 = v6;
    v18 = a3;
    while (1)
    {
      v12 = (v9 + v10) >> 1;
      v20 = v5 + v19 * v12 + 16;
      v14 = v11(a2, &v19);
      if (!v14)
      {
        break;
      }

      if (v14 <= 0)
      {
        v10 = v12 - 1;
      }

      else
      {
        v9 = v12 + 1;
      }

      if (v9 > v10)
      {
LABEL_26:
        a3 = v18;
        v6 = v17;
        if (v14 < 1 || (LODWORD(v12) = v12 + 1, (v5[5] & 0x20) != 0))
        {
          v15 = 0;
          if (v18)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v15 = 0;
          v13 = v5 + v5[v12 + 8];
          if (v18)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }
    }

LABEL_30:
    v15 = 1;
    a3 = v18;
    v6 = v17;
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  LODWORD(v12) = 0;
LABEL_33:
  v15 = 1;
  if (!a3)
  {
    goto LABEL_37;
  }

LABEL_34:
  if (v6 <= 1)
  {
    v15 = 0;
  }

  *a3 = v15;
LABEL_37:
  *(a1 + 2 * *(a1 + 66) + 328) = v12;
  if (v12 >= v7)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_299092E3C(uint64_t a1)
{
  v2 = a1 + 72;
  v3 = *(a1 + 72 + 8 * *(a1 + 66));
  __dst = 0;
  v4 = *(a1 + 24);
  v5 = *(v3 + 10);
  if ((v5 & 0x10) == 0)
  {
    if ((*(v4 + 124) & 8) != 0)
    {
      result = sub_29908F90C(*(a1 + 24), v3, &__dst);
      if (result)
      {
        goto LABEL_15;
      }

      v7 = __dst;
      if (__dst)
      {
LABEL_20:
        v17 = *(a1 + 66);
        *(v2 + 8 * v17) = v7;
        v18 = *(*(v4 + 104) + 8 * *(a1 + 32));
        if ((*(a1 + 68) & 4) != 0)
        {
          if (v18)
          {
            v22 = *(a1 + 64);
            do
            {
              v23 = v18[2];
              if (*(v23 + 64) >= v22)
              {
                v24 = v23 + 72;
                if (*(v24 + 8 * v17) == v3)
                {
                  *(v24 + 8 * v17) = v7;
                }
              }

              v18 = *v18;
            }

            while (v18);
          }
        }

        else if (v18)
        {
          v19 = *(a1 + 64);
          do
          {
            if (v18 != a1 && *(v18 + 32) >= v19 && v18[v17 + 9] == v3)
            {
              v18[v17 + 9] = v7;
              if ((*(v7 + 5) & 2) != 0)
              {
                v20 = v18[2];
                if (v20)
                {
                  if ((*(v20 + 68) & 1) != 0 && *(v18 + v17 + 164) < (*(v7 + 6) - 16) >> 1)
                  {
                    v21 = &v7[*&v7[2 * *(v18 + v17 + 164) + 16]];
                    if ((*(v21 + 2) & 6) == 4)
                    {
                      *(v20 + 72) = &v21[*(v21 + 3) + 8];
                    }
                  }
                }
              }
            }

            v18 = *v18;
          }

          while (v18);
        }

        return 0;
      }
    }

    result = mdb_midl_need((v4 + 40), 1);
    if (!result)
    {
      result = sub_29908F1F4(a1, 1, &__dst);
      if (!result)
      {
        v7 = __dst;
        v8 = *__dst;
        v9 = *(v4 + 40);
        v10 = *v9 + 1;
        *v9 = v10;
        v9[v10] = *v3;
        if (*(a1 + 66))
        {
          v11 = *(v2 + 8 * (*(a1 + 66) - 1)) + *(*(v2 + 8 * (*(a1 + 66) - 1)) + 2 * *(a1 + 2 * (*(a1 + 66) - 1) + 328) + 16);
          *v11 = v8;
          *(v11 + 4) = WORD2(v8);
        }

        else
        {
          *(*(a1 + 40) + 40) = v8;
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    *(v4 + 124) |= 2u;
    return result;
  }

  result = 0;
  if ((v5 & 0x40) == 0 && *v4)
  {
    v12 = *(v4 + 72);
    v8 = *v3;
    v13 = *v12;
    if (*v12)
    {
      v14 = mdb_mid2l_search(*(v4 + 72), *v3);
      if (v13 >= v14)
      {
        v15 = &v12[2 * v14];
        if (*v15 == v8)
        {
          if (v3 != v15[1])
          {
            *(a1 + 68) &= 0xFFFFFFFC;
            *(v4 + 124) |= 2u;
            return 4294936500;
          }

          return 0;
        }
      }
    }

    v16 = sub_29908FAEC(v4, 1u);
    if (v16)
    {
      v7 = v16;
      v25[0] = v8;
      v25[1] = v16;
      mdb_mid2l_insert(v12, v25);
LABEL_18:
      sub_2990932E0(v7, v3, *(*(v4 + 32) + 16));
      *v7 = v8;
      *(v7 + 5) |= 0x10u;
      goto LABEL_20;
    }

    return 12;
  }

  return result;
}

uint64_t sub_29909310C(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + 72;
  v5 = *(a1 + 66);
  v6 = *(a1 + 72 + 8 * v5);
  v16 = v6;
  v7 = *(v6 + 10);
  if (v7)
  {
    v10 = a3 & 0xC;
    v11 = a1 + 328;
    do
    {
      if (v10)
      {
        if ((a3 & 8) != 0)
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
          if ((*(a1 + 68) & 1) != 0 && *(v11 + 2 * v5) == v12)
          {
            v5 = *(a1 + 64);
            *(a1 + 64) = v5 + 1;
            *(a1 + 66) = v5;
            v6 = *(v4 + 8 * v5);
            v16 = v6;
            if (a3)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        else
        {
          LOWORD(v12) = 0;
        }
      }

      else
      {
        v15 = 0;
        if (sub_299092C04(a1, a2, &v15))
        {
          LOWORD(v12) = *(v11 + 2 * *(a1 + 66)) - (v15 == 0);
        }

        else
        {
          v12 = ((*(v6 + 12) + 131056) >> 1) - 1;
        }
      }

      v13 = (v6 + *(v6 + 2 * v12 + 16));
      result = sub_29908F7A4(*(a1 + 24), *v13 | (*(v13 + 2) << 32), &v16, 0);
      if (result)
      {
        return result;
      }

      *(v11 + 2 * *(a1 + 66)) = v12;
      v5 = *(a1 + 64);
      if (v5 > 0x1F)
      {
        *(*(a1 + 24) + 124) |= 2u;
        return 4294936509;
      }

      v6 = v16;
      *(a1 + 64) = v5 + 1;
      *(a1 + 66) = v5;
      *(v4 + 8 * v5) = v6;
      *(v11 + 2 * v5) = 0;
      if (a3)
      {
LABEL_16:
        result = sub_299092E3C(a1);
        if (result)
        {
          return result;
        }

        v5 = *(a1 + 66);
        v6 = *(v4 + 8 * v5);
        v16 = v6;
      }

LABEL_18:
      v7 = *(v6 + 10);
    }

    while ((v7 & 1) != 0);
  }

  if ((v7 & 2) != 0)
  {
    result = 0;
    *(a1 + 68) = *(a1 + 68) & 0xFFFFFFFC | 1;
  }

  else
  {
    *(*(a1 + 24) + 124) |= 2u;
    return 4294936500;
  }

  return result;
}

void *sub_2990932E0(char *__dst, _WORD *__src, int a3)
{
  v4 = __src;
  v5 = __dst;
  v6 = __src[7];
  v7 = __src[6];
  if (((v6 - v7) & 0xFFF8) == 0 || (__src[5] & 0x20) != 0)
  {
    v9 = a3 - ((v6 - v7) & 0xFFF8u);
  }

  else
  {
    v8 = v6 & 0xFFF8;
    memcpy(__dst, __src, (v7 + 7) & 0x1FFF8);
    v9 = (a3 - v8);
    __dst = &v5[v8];
    __src = (v4 + v8);
  }

  return memcpy(__dst, __src, v9);
}

uint64_t sub_299093370(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = getpid();
  if (v2 == result)
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_2990933A4(uint64_t *a1, int a2, int a3)
{
  v5 = a1[3];
  v24 = 0;
  v23 = 0;
  v6 = *(v5 + 120);
  if ((*(a1 + 68) & 0x40) != 0)
  {
    i = 0;
  }

  else
  {
    i = a1;
  }

  v8 = *(v5 + 120);
  if (i)
  {
    goto LABEL_20;
  }

  while (v8)
  {
    --v8;
    for (i = *(*(v5 + 104) + 8 * v8); i; i = *i)
    {
LABEL_20:
      if (*(i + 68))
      {
        v9 = i;
        do
        {
          v10 = *(v9 + 32);
          if (v10)
          {
            for (j = 0; j < v10; ++j)
            {
              v12 = v9[j + 9];
              v13 = *(v12 + 10);
              if ((v13 & 0xC050) == a2)
              {
                *(v12 + 10) = v13 ^ 0x8000;
                v10 = *(v9 + 32);
              }
            }

            v14 = j - 1;
          }

          else
          {
            v12 = 0;
            v14 = 0xFFFFFFFFLL;
          }

          v15 = v9[2];
          if (!v15)
          {
            break;
          }

          if (!v12)
          {
            break;
          }

          if ((*(v15 + 68) & 1) == 0)
          {
            break;
          }

          if ((*(v12 + 10) & 2) == 0)
          {
            break;
          }

          v16 = *(v12 + *(v12 + 2 * *(v9 + v14 + 164) + 16) + 4);
          v9 = v9[2];
        }

        while ((v16 & 2) != 0);
      }
    }
  }

  result = 0;
  if (a3 && v6)
  {
    v18 = 0;
    v19 = 40;
    do
    {
      if (*(*(v5 + 112) + v18))
      {
        v20 = *(*(v5 + 88) + v19);
        if (v20 != -1)
        {
          result = sub_29908F7A4(a1[3], v20, &v24, &v23);
          if (result)
          {
            return result;
          }

          v21 = *(v24 + 10);
          if ((v21 & 0xC050) == a2 && v23 <= 1)
          {
            *(v24 + 10) = v21 ^ 0x8000;
          }
        }
      }

      ++v18;
      v19 += 48;
    }

    while (v18 < *(v5 + 120));
    return 0;
  }

  return result;
}

uint64_t sub_299093548(uint64_t a1)
{
  v131 = 0;
  memset(v130, 0, sizeof(v130));
  v128 = 0u;
  v129 = 0u;
  v2 = (a1 + 72);
  v3 = *(a1 + 66);
  v4 = *(a1 + 72 + 8 * v3);
  if (v4[5])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4[5])
  {
    v6 = 1;
  }

  else
  {
    v6 = 250;
  }

  v7 = *(a1 + 24);
  v8 = (*(*(v7 + 32) + 16) - 16);
  v9 = v4[7];
  v10 = v4[6];
  if (1000 * (v8 - (v9 - v10)) / v8 >= v6 && v5 <= (v10 - 16) >> 1)
  {
    return 0;
  }

  v11 = *(a1 + 64);
  if (v11 > 1)
  {
    *(&v129 + 1) = *(a1 + 24);
    LODWORD(v130[0]) = *(a1 + 32);
    *(v130 + 8) = *(a1 + 40);
    LOWORD(v130[2]) = v11;
    WORD1(v130[2]) = v3;
    DWORD1(v130[2]) = *(a1 + 68);
    v21 = a1 + 328;
    v22 = 328;
    v23 = 72;
    do
    {
      *(&v128 + v23) = *(a1 + v23);
      *(&v128 + v22) = *(a1 + v22);
      v22 += 2;
      v23 += 8;
      --v11;
    }

    while (v11);
    v24 = v3 - 1;
    v25 = *(v21 + 2 * v3);
    *&v129 = 0;
    v26 = *(v21 + 2 * (v3 - 1));
    v27 = *(&v130[18] + (v3 - 1) + 4);
    v28 = &v130[2] + v3 + 1;
    if (*(v21 + 2 * (v3 - 1)))
    {
      *(&v130[18] + v24 + 4) = v27 - 1;
      v29 = (v2[v24] + *(v2[v24] + 2 * (v27 - 1) + 16));
      result = sub_29908F7A4(v7, *v29 | (*(v29 + 2) << 32), v28, 0);
      if (result)
      {
        return result;
      }

      v30 = WORD1(v130[2]);
      v31 = *(&v130[2] + WORD1(v130[2]) + 1);
      v32 = (*(v31 + 12) + 131056) >> 1;
      *(&v130[18] + WORD1(v130[2]) + 4) = v32 - 1;
      *(v21 + 2 * *(a1 + 66)) = 0;
    }

    else
    {
      *(&v130[18] + v24 + 4) = v27 + 1;
      v33 = (v2[v24] + *(v2[v24] + 2 * (v27 + 1) + 16));
      result = sub_29908F7A4(v7, *v33 | (*(v33 + 2) << 32), v28, 0);
      if (result)
      {
        return result;
      }

      v30 = WORD1(v130[2]);
      *(&v130[18] + WORD1(v130[2]) + 4) = 0;
      *(v21 + 2 * *(a1 + 66)) = (*(v2[*(a1 + 66)] + 12) + 131056) >> 1;
      v31 = *(&v130[2] + v30 + 1);
      LOWORD(v32) = 1;
    }

    v34 = (*(*(*(a1 + 24) + 32) + 16) - 16);
    v35 = *(v31 + 14);
    v36 = *(v31 + 12);
    if (1000 * (v34 - (v35 - v36)) / v34 < v6 || v5 >= (v36 - 16) >> 1)
    {
      if (v26)
      {
        *(&v130[18] + v30 + 4) = v32 + *(v21 + 2 * v30);
        v180 = 0;
        v25 += (v36 + 131056) >> 1;
        v179 = 0u;
        v178 = 0u;
        v177 = 0u;
        v176 = 0u;
        v175 = 0u;
        v174 = 0u;
        v173 = 0u;
        v172 = 0u;
        v171 = 0u;
        v170 = 0u;
        v168 = 0u;
        v169 = 0u;
        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        memset(v159, 0, sizeof(v159));
        v157 = 0u;
        v158 = 0u;
        v47 = *(*(&v129 + 1) + 104);
        v48 = LODWORD(v130[0]);
        v49 = &v128;
        if ((BYTE4(v130[2]) & 4) != 0)
        {
          DWORD1(v160) = 1;
          *&v158 = &v128;
          v49 = &v157;
        }

        *v49 = *(v47 + 8 * LODWORD(v130[0]));
        *(v47 + 8 * v48) = v49;
        result = sub_299094264(a1, &v128);
        *(v47 + 8 * v48) = *v49;
        *(a1 + 24) = *(&v129 + 1);
        *(a1 + 32) = v130[0];
        *(a1 + 40) = *(v130 + 8);
        v50 = LOWORD(v130[2]);
        *(a1 + 64) = v130[2];
        v51 = DWORD1(v130[2]);
        if (v50)
        {
          for (i = 0; i != v50; ++i)
          {
            *(v21 + 8 * i - 256) = *(&v130[2] + i + 1);
            *(v21 + 2 * i) = *(&v130[18] + i + 4);
          }
        }
      }

      else
      {
        result = sub_299094264(&v128, a1);
        v51 = *(a1 + 68);
      }

      *(a1 + 68) = v51 & 0xFFFFFFFD;
      goto LABEL_128;
    }

    v183 = 0;
    v184 = 0;
    v180 = 0;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    v171 = 0u;
    v170 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    memset(v159, 0, sizeof(v159));
    v157 = 0u;
    v158 = 0u;
    result = sub_299092E3C(&v128);
    if (!result)
    {
      result = sub_299092E3C(a1);
      if (!result)
      {
        v37 = *(&v130[2] + WORD1(v130[2]) + 1);
        v38 = *(v37 + 10);
        if ((v38 & 0x20) != 0)
        {
          LODWORD(v41) = 0;
          v61 = 0;
          v62 = v37 + *(&v130[18] + WORD1(v130[2]) + 4) * **(&v130[0] + 1) + 16;
          v183 = **(&v130[0] + 1);
          v184 = v62;
          v181 = 0;
          v182 = 0;
        }

        else
        {
          v39 = (v37 + *(v37 + 2 * *(&v130[18] + WORD1(v130[2]) + 4) + 16));
          v40 = *v39;
          v41 = *(v39 + 2);
          if ((v38 & 1) == 0 || *(&v130[18] + WORD1(v130[2]) + 4))
          {
            v63 = *(v39 + 3);
            v183 = v63;
            v184 = v39 + 2;
          }

          else
          {
            v124 = *v39;
            v125 = *(v39 + 2);
            v42 = v130[2];
            result = sub_2990947AC(&v128);
            if (result)
            {
              goto LABEL_126;
            }

            v43 = *(&v130[2] + WORD1(v130[2]) + 1);
            if ((*(v43 + 10) & 0x20) != 0)
            {
              v45 = **(&v130[0] + 1);
              v46 = (v43 + 16);
            }

            else
            {
              v44 = v43 + *(v43 + 16);
              v45 = *(v44 + 6);
              v46 = (v44 + 8);
            }

            v40 = v124;
            v41 = v125;
            v183 = v45;
            v184 = v46;
            LOWORD(v130[2]) = v42;
            WORD1(v130[2]) = v42 - 1;
            v63 = *(v39 + 3);
          }

          v61 = v40 | (v41 << 32);
          v181 = *v39;
          v182 = v39 + v63 + 8;
        }

        *&v158 = 0;
        v64 = *(a1 + 66);
        if ((*(v2[v64] + 10) & 1) != 0 && !*(v21 + 2 * v64))
        {
          v126 = v41;
          v79 = *(a1 + 64);
          v132 = 0uLL;
          *(&v158 + 1) = *(a1 + 24);
          LODWORD(v159[0]) = *(a1 + 32);
          *(v159 + 8) = *(a1 + 40);
          LOWORD(v160) = v79;
          WORD1(v160) = v64;
          DWORD1(v160) = *(a1 + 68);
          if (v79)
          {
            for (j = 0; j != v79; ++j)
            {
              *(&v160 + j + 1) = *(v21 + 8 * j - 256);
              *(&v176 + j + 4) = *(v21 + 2 * j);
            }
          }

          result = sub_2990947AC(&v157);
          if (result)
          {
            goto LABEL_126;
          }

          v81 = *(&v160 + WORD1(v160) + 1);
          if ((*(v81 + 10) & 0x20) != 0)
          {
            v83 = **(&v159[0] + 1);
            v84 = v81 + 16;
          }

          else
          {
            v82 = v81 + *(v81 + 16);
            v83 = *(v82 + 6);
            v84 = v82 + 8;
          }

          *&v132 = v83;
          *(&v132 + 1) = v84;
          LOWORD(v160) = v79;
          WORD1(v160) = v79 - 1;
          *(&v176 + (v79 - 1) + 4) = 0;
          result = sub_29908F08C(&v157, &v132);
          if (result)
          {
            goto LABEL_126;
          }

          v64 = *(a1 + 66);
          LODWORD(v41) = v126;
        }

        result = sub_299090D50(a1, *(v21 + 2 * v64), &v183, &v181, v61, v41);
        if (!result)
        {
          sub_29908F674(&v128, v183);
          v65 = v130[0];
          v66 = *(&v130[2] + WORD1(v130[2]) + 1);
          if (v26)
          {
            v67 = *(*(*(&v129 + 1) + 104) + 8 * LODWORD(v130[0]));
            if (v67)
            {
              v68 = v2[WORD1(v130[2])];
              v69 = BYTE4(v130[2]);
              do
              {
                v70 = v67;
                if ((v69 & 4) != 0)
                {
                  v70 = *(v67 + 2);
                }

                if ((*(v70 + 68) & 1) != 0 && *(v70 + 33) >= WORD1(v130[2]))
                {
                  if (v70 != a1 && *(v70 + WORD1(v130[2]) + 9) == v68)
                  {
                    v71 = *(v70 + WORD1(v130[2]) + 164);
                    if (v71 >= *(v21 + 2 * WORD1(v130[2])))
                    {
                      *(v70 + WORD1(v130[2]) + 164) = v71 + 1;
                    }
                  }

                  if (v70 != &v128)
                  {
                    v72 = WORD1(v130[2]);
                    if (*(v70 + WORD1(v130[2]) + 9) == v66)
                    {
                      v73 = v70 + 41;
                      if (*(v70 + WORD1(v130[2]) + 164) == *(&v130[18] + WORD1(v130[2]) + 4))
                      {
                        v74 = *(a1 + 66);
                        *(v70 + WORD1(v130[2]) + 9) = v2[v74];
                        *(v73 + v72) = *(v21 + 2 * v74);
                        ++*(v73 + WORD1(v130[2]) - 1);
                      }
                    }
                  }

                  if ((*(v66 + 10) & 2) != 0)
                  {
                    v75 = *(v70 + 2);
                    if (v75)
                    {
                      if (*(v75 + 68))
                      {
                        v76 = *(v70 + WORD1(v130[2]) + 9);
                        v77 = *(v70 + WORD1(v130[2]) + 164);
                        if (v77 < (*(v76 + 12) - 16) >> 1)
                        {
                          v78 = v76 + *(v76 + 2 * v77 + 16);
                          if ((*(v78 + 4) & 6) == 4)
                          {
                            *(v75 + 72) = v78 + *(v78 + 6) + 8;
                          }
                        }
                      }
                    }
                  }
                }

                v67 = *v67;
              }

              while (v67);
            }
          }

          else
          {
            v85 = *(*(*(&v129 + 1) + 104) + 8 * LODWORD(v130[0]));
            if (v85)
            {
              v86 = BYTE4(v130[2]);
              do
              {
                v87 = v85;
                if ((v86 & 4) != 0)
                {
                  v87 = *(v85 + 2);
                }

                if (v87 != &v128 && (*(v87 + 68) & 1) != 0)
                {
                  v88 = WORD1(v130[2]);
                  if (*(v87 + 33) >= WORD1(v130[2]))
                  {
                    v89 = v87 + 9;
                    if (*(v87 + WORD1(v130[2]) + 9) == v66)
                    {
                      v90 = v87 + 41;
                      v91 = v87 + WORD1(v130[2]) + 164;
                      v92 = *v91;
                      if (!*v91)
                      {
                        v93 = *(a1 + 66);
                        v89[WORD1(v130[2])] = v2[v93];
                        *(v90 + v88) = *(v21 + 2 * v93);
                        v94 = v90 + 2 * WORD1(v130[2]);
                        v95 = *(v94 - 2);
                        v91 = (v94 - 2);
                        v92 = v95;
                      }

                      *v91 = v92 - 1;
                      if ((*(v66 + 10) & 2) != 0)
                      {
                        v96 = *(v87 + 2);
                        if (v96)
                        {
                          if (*(v96 + 68))
                          {
                            v97 = v89[WORD1(v130[2])];
                            v98 = *(v90 + WORD1(v130[2]));
                            if (v98 < (*(v97 + 12) - 16) >> 1)
                            {
                              v99 = v97 + *(v97 + 2 * v98 + 16);
                              if ((*(v99 + 4) & 6) == 4)
                              {
                                *(v96 + 72) = v99 + *(v99 + 6) + 8;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v85 = *v85;
              }

              while (v85);
            }
          }

          v100 = WORD1(v130[2]);
          if (!*(&v130[18] + WORD1(v130[2]) + 4))
          {
            if (*(&v130[18] + WORD1(v130[2]) + 3))
            {
              v102 = *(&v130[2] + WORD1(v130[2]) + 1);
              if ((*(v102 + 10) & 0x20) != 0)
              {
                v104 = (v102 + 16);
              }

              else
              {
                v103 = v102 + *(v102 + 16);
                v183 = *(v103 + 6);
                v104 = (v103 + 8);
              }

              v184 = v104;
              v109 = *(&v129 + 1);
              *(&v158 + 1) = *(&v129 + 1);
              *(v159 + 8) = *(v130 + 8);
              v110 = LOWORD(v130[2]);
              v111 = BYTE4(v130[2]);
              LODWORD(v159[0]) = v65;
              DWORD1(v160) = DWORD1(v130[2]);
              if (LOWORD(v130[2]))
              {
                v112 = 0;
                do
                {
                  *(&v160 + v112 + 1) = *(&v130[2] + v112 + 1);
                  *(&v176 + v112 + 4) = *(&v130[18] + v112 + 4);
                  ++v112;
                }

                while (v110 != v112);
              }

              LOWORD(v160) = v110 - 1;
              WORD1(v160) = v100 - 1;
              v156 = 0;
              v154 = 0u;
              v155 = 0u;
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v148 = 0u;
              v149 = 0u;
              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v138 = 0u;
              v139 = 0u;
              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v113 = &v157;
              v114 = *(v109 + 104);
              if ((v111 & 4) != 0)
              {
                DWORD1(v136) = 1;
                *&v133 = &v157;
                v113 = &v132;
              }

              *v113 = *(v114 + 8 * v65);
              *(v114 + 8 * v65) = v113;
              v127 = v65;
              result = sub_29908F08C(&v157, &v183);
              *(v114 + 8 * v127) = *v113;
              if (result)
              {
                goto LABEL_126;
              }

              v100 = WORD1(v130[2]);
            }

            if (*(*(&v130[2] + v100 + 1) + 10))
            {
              v115 = *(&v130[18] + v100 + 4);
              v132 = 0uLL;
              *(&v130[18] + v100 + 4) = 0;
              sub_29908F08C(&v128, &v132);
              LODWORD(v100) = WORD1(v130[2]);
              *(&v130[18] + WORD1(v130[2]) + 4) = v115;
            }
          }

          v101 = *(a1 + 66);
          if (*(v21 + 2 * v101))
          {
            goto LABEL_125;
          }

          if (*(v21 + 2 * v101 - 2))
          {
            v105 = *(*(&v130[2] + v100 + 1) + 10);
            v106 = v2[v101];
            if ((v105 & 0x20) != 0)
            {
              v108 = (v106 + 16);
            }

            else
            {
              v107 = v106 + *(v106 + 16);
              v183 = *(v107 + 6);
              v108 = (v107 + 8);
            }

            v184 = v108;
            v116 = *(a1 + 24);
            *(&v158 + 1) = v116;
            v117 = *(a1 + 32);
            *(v159 + 8) = *(a1 + 40);
            v118 = *(a1 + 64);
            v119 = *(a1 + 68);
            LODWORD(v159[0]) = v117;
            DWORD1(v160) = v119;
            if (v118)
            {
              for (k = 0; k != v118; ++k)
              {
                *(&v160 + k + 1) = *(v21 + 8 * k - 256);
                *(&v176 + k + 4) = *(v21 + 2 * k);
              }
            }

            LOWORD(v160) = v118 - 1;
            WORD1(v160) = v101 - 1;
            v156 = 0;
            v154 = 0u;
            v155 = 0u;
            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v121 = &v157;
            v122 = *(v116 + 104);
            if ((v119 & 4) != 0)
            {
              DWORD1(v136) = 1;
              *&v133 = &v157;
              v121 = &v132;
            }

            *v121 = *(v122 + 8 * v117);
            *(v122 + 8 * v117) = v121;
            result = sub_29908F08C(&v157, &v183);
            *(v122 + 8 * v117) = *v121;
            if (result)
            {
              goto LABEL_126;
            }

            v101 = *(a1 + 66);
          }

          if ((*(v2[v101] + 10) & 1) == 0)
          {
LABEL_125:
            result = 0;
          }

          else
          {
            v123 = *(v21 + 2 * v101);
            v132 = 0uLL;
            *(v21 + 2 * v101) = 0;
            sub_29908F08C(a1, &v132);
            result = 0;
            *(v21 + 2 * *(a1 + 66)) = v123;
          }
        }
      }
    }

LABEL_126:
    if (v26)
    {
      LOWORD(v25) = v25 + 1;
    }

LABEL_128:
    *(v21 + 2 * *(a1 + 66)) = v25;
    return result;
  }

  v12 = *v2;
  v13 = *(*v2 + 10);
  if ((v13 & 0x40) != 0)
  {
    return 0;
  }

  v14 = *(v12 + 12) - 16;
  if (v14 <= 1)
  {
    v15 = *(a1 + 40);
    *(v15 + 40) = -1;
    *(v15 + 6) = 0;
    *(v15 + 16) = 0;
    result = mdb_midl_append((v7 + 40), *v12);
    if (result)
    {
      return result;
    }

    v17 = *(a1 + 68) & 0xFFFFFFFE;
    *(a1 + 64) = 0;
    *(a1 + 68) = v17;
    v18 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
    if (v18)
    {
      do
      {
        v19 = v18;
        if ((*(a1 + 68) & 4) != 0)
        {
          v19 = v18[2];
        }

        v20 = *(v19 + 17);
        if ((v20 & 1) != 0 && *(v19 + 32) >= *(a1 + 64) && v19[9] == v12)
        {
          *(v19 + 16) = 0;
          *(v19 + 17) = v20 & 0xFFFFFFFE;
        }

        result = 0;
        v18 = *v18;
      }

      while (v18);
      return result;
    }

    return 0;
  }

  result = 0;
  if ((v13 & 1) == 0)
  {
    return result;
  }

  if ((v14 & 0xFFFFFFFE) != 2)
  {
    return result;
  }

  result = mdb_midl_append((v7 + 40), *v12);
  if (result)
  {
    return result;
  }

  v53 = *(v12 + *(v12 + 16)) | (*(v12 + *(v12 + 16) + 4) << 32);
  *(*(a1 + 40) + 40) = v53;
  result = sub_29908F7A4(*(a1 + 24), v53, v2, 0);
  if (result)
  {
    return result;
  }

  v54 = *(a1 + 40);
  --*(v54 + 6);
  --*(v54 + 8);
  *(a1 + 328) = *(a1 + 330);
  if (*(v54 + 6) >= 2u)
  {
    v55 = 0;
    do
    {
      *(a1 + 8 * v55 + 80) = *(a1 + 8 * v55 + 88);
      *(a1 + 2 * v55 + 330) = *(a1 + 2 * v55 + 332);
      v56 = v55 + 2;
      ++v55;
    }

    while (v56 < *(v54 + 6));
  }

  v57 = *(*(*(a1 + 24) + 104) + 8 * *(a1 + 32));
  if (!v57)
  {
    return 0;
  }

  v58 = *(a1 + 68);
  do
  {
    v59 = v57;
    if ((v58 & 4) != 0)
    {
      v59 = v57[2];
    }

    if (v59 != a1 && (*(v59 + 68) & 1) != 0 && v59[9] == v12)
    {
      if (*(v54 + 6))
      {
        v60 = 0;
        do
        {
          v59[v60 + 9] = v59[v60 + 10];
          *(v59 + v60 + 164) = *(v59 + v60 + 165);
          v54 = *(a1 + 40);
          ++v60;
        }

        while (v60 < *(v54 + 6));
      }

      --*(v59 + 32);
      --*(v59 + 33);
    }

    result = 0;
    v57 = *v57;
  }

  while (v57);
  return result;
}

uint64_t sub_299094264(uint64_t a1, uint64_t a2)
{
  v55 = 0;
  v56 = 0;
  v4 = a1 + 72;
  v5 = *(a1 + 72 + 8 * *(a1 + 66));
  result = sub_299092E3C(a2);
  if (result)
  {
    return result;
  }

  v57 = 0;
  v58 = 0;
  v49 = *(a2 + 8 * *(a2 + 66) + 72);
  v50 = *(v49 + 12) + 131056;
  if ((*(v5 + 10) & 0x20) == 0)
  {
    if ((*(v5 + 12) & 0xFFFE) != 0x10)
    {
      v7 = 0;
      v8 = v50 >> 1;
      v9 = a1 + 328;
      do
      {
        v10 = (v5 + *(v5 + 16 + 2 * v7));
        if (!v7 && (*(v5 + 10) & 1) != 0)
        {
          v54 = 0;
          memset(&v53[2], 0, 320);
          memset(v53, 0, 32);
          v51 = 0u;
          v52 = 0u;
          *(&v52 + 1) = *(a1 + 24);
          LODWORD(v53[0]) = *(a1 + 32);
          *(v53 + 8) = *(a1 + 40);
          LOWORD(v53[2]) = *(a1 + 64);
          v12 = LOWORD(v53[2]);
          WORD1(v53[2]) = *(a1 + 66);
          DWORD1(v53[2]) = *(a1 + 68);
          if (LOWORD(v53[2]))
          {
            v13 = 0;
            do
            {
              *(&v53[2] + v13 + 1) = *(v9 + 8 * v13 - 256);
              *(&v53[18] + v13 + 4) = *(v9 + 2 * v13);
              ++v13;
            }

            while (v12 != v13);
          }

          *&v52 = 0;
          result = sub_2990947AC(&v51);
          if (result)
          {
            return result;
          }

          v14 = *(&v53[2] + WORD1(v53[2]) + 1);
          if ((*(v14 + 10) & 0x20) != 0)
          {
            v16 = **(&v53[0] + 1);
            v17 = (v14 + 16);
          }

          else
          {
            v15 = v14 + *(v14 + 16);
            v16 = *(v15 + 6);
            v17 = (v15 + 8);
          }

          v57 = v16;
          v58 = v17;
          v11 = *(v10 + 3);
        }

        else
        {
          v11 = *(v10 + 3);
          v57 = v11;
          v58 = v10 + 2;
        }

        v55 = *v10;
        v56 = v10 + v11 + 8;
        result = sub_299090D50(a2, v8, &v57, &v55, v55 | (*(v10 + 2) << 32), *(v10 + 2));
        if (result)
        {
          return result;
        }

        ++v7;
        LOWORD(v8) = v8 + 1;
      }

      while ((*(v5 + 12) - 16) >> 1 > v7);
    }

LABEL_24:
    --*(a1 + 66);
    sub_29908F674(a1, 0);
    v20 = *(a1 + 66);
    if (!*(a1 + 328 + 2 * v20))
    {
      v57 = 0;
      result = sub_29908F08C(a1, &v57);
      LOWORD(v20) = *(a1 + 66);
      if (result)
      {
        *(a1 + 66) = v20 + 1;
        return result;
      }
    }

    v48 = a1 + 328;
    v21 = v20 + 1;
    *(a1 + 66) = v21;
    v22 = *(v4 + 8 * v21);
    v23 = *v22;
    v24 = *(a1 + 24);
    v25 = *(v22 + 10);
    if ((v25 & 0x10) != 0)
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        if (!*v24)
        {
LABEL_37:
          *(v22 + 32) = *(v24 + 48);
          *(v24 + 48) = v22;
          ++*(v24 + 56);
          LOBYTE(v31) = v25;
          *(v22 + 10) = v25 | 0x4000;
LABEL_38:
          v32 = (v31 & 2) == 0;
          v33 = 16;
          if (v32)
          {
            v33 = 8;
          }

          --*(*(a1 + 40) + v33);
          v34 = *(*(*(a1 + 24) + 104) + 8 * v26);
          if (v34)
          {
            v35 = *(a1 + 66);
            v36 = *(a1 + 68);
            v37 = v35 - 1;
            do
            {
              v38 = v34;
              if ((v36 & 4) != 0)
              {
                v38 = v34[2];
              }

              if (v38 != a1 && *(v38 + 32) >= *(a1 + 64))
              {
                v39 = v38 + 9;
                v40 = v38[v35 + 9];
                if (v40 == v22)
                {
                  v39[v35] = v49;
                  *(v38 + v35 + 164) += v50 >> 1;
                  *(v38 + v37 + 164) = *(a2 + 328 + 2 * v37);
                  v40 = v49;
                }

                else if (v39[v37] == *(v4 + 8 * v37))
                {
                  v41 = *(v38 + v37 + 164);
                  if (v41 > *(v48 + 2 * v37))
                  {
                    *(v38 + v37 + 164) = v41 - 1;
                  }
                }

                if ((*(v22 + 10) & 2) != 0)
                {
                  v42 = v38[2];
                  if (v42)
                  {
                    if (*(v42 + 68))
                    {
                      v43 = *(v38 + v35 + 164);
                      if (v43 < (*(v40 + 12) - 16) >> 1)
                      {
                        v44 = v40 + *(v40 + 2 * v43 + 16);
                        if ((*(v44 + 4) & 6) == 4)
                        {
                          *(v42 + 72) = v44 + *(v44 + 6) + 8;
                        }
                      }
                    }
                  }
                }
              }

              v34 = *v34;
            }

            while (v34);
          }

          v45 = *(a2 + 64);
          v46 = *(*(a2 + 40) + 6);
          if (v45)
          {
            *(a2 + 64) = v45 - 1;
            if (v45 == 1)
            {
              *(a2 + 68) &= ~1u;
            }

            else
            {
              --*(a2 + 66);
            }
          }

          result = sub_299093548(a2, v48);
          v47 = *(*(a2 + 40) + 6) - v46 + v45;
          *(a2 + 64) = v47;
          *(a2 + 66) = v47 - 1;
          return result;
        }

        v27 = *(v24 + 72);
        v28 = *v27;
        if (*v27)
        {
          v29 = mdb_mid2l_search(*(v24 + 72), *v22);
          if (v28 >= v29)
          {
            v30 = &v27[2 * v29];
            if (*v30 == v23)
            {
              if (v30[1] != v22)
              {
                *(a1 + 68) &= 0xFFFFFFFC;
                *(v24 + 124) |= 2u;
                return 4294936500;
              }

              goto LABEL_37;
            }
          }
        }
      }
    }

    result = mdb_midl_append((v24 + 40), v23);
    if (result)
    {
      return result;
    }

    v31 = *(v22 + 10);
    v26 = *(a1 + 32);
    goto LABEL_38;
  }

  v57 = **(a1 + 40);
  v58 = (v5 + 16);
  if ((*(v5 + 12) & 0xFFFE) == 0x10)
  {
    goto LABEL_24;
  }

  v18 = 0;
  v19 = v50 >> 1;
  while (1)
  {
    result = sub_299090D50(a2, v19, &v57, 0, 0, 0);
    if (result)
    {
      return result;
    }

    v58 = (v58 + v57);
    ++v18;
    LOWORD(v19) = v19 + 1;
    if ((*(v5 + 12) - 16) >> 1 <= v18)
    {
      goto LABEL_24;
    }
  }
}