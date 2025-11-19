uint64_t _add_metric(uint64_t a1, uint64_t a2, void **a3, int *a4, int **a5)
{
  v5 = 22;
  if (!a3)
  {
    return v5;
  }

  v6 = a4;
  if (!a4)
  {
    return v5;
  }

  v7 = a5;
  v9 = *a3;
  if (*a3)
  {
    v10 = *a4;
    v11 = &v9[88 * v10];
    v12 = v10 + 1;
    while (--v12)
    {
      v13 = v11 - 88;
      v14 = *(v11 - 11);
      v11 -= 88;
      if (v14 == a2)
      {
        if (!a5)
        {
          return 0;
        }

        v5 = 0;
        *a5 = v13;
        return v5;
      }
    }
  }

  v15 = &still_running;
  v16 = -9;
  do
  {
    if (__CFADD__(v16++, 1))
    {
      if (!a1)
      {
        return 22;
      }

      v20 = *(a1 + 136);
      if (!v20)
      {
        return 22;
      }

      v21 = *(a1 + 144);
      if (v21 < 1)
      {
        return 22;
      }

      while (*v20 != a2)
      {
        v20 += 56;
        v5 = 22;
        if (!--v21)
        {
          return v5;
        }
      }

      v18 = 0;
      if (v9)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v18 = v15 - 22;
    v19 = *(v15 - 11);
    v15 -= 22;
  }

  while (v19 != a2);
  if (a2 == 0x637075696E737472)
  {
    if (!is_monotonic_active())
    {
      return 78;
    }

    v20 = 0;
    if (!*a3)
    {
      goto LABEL_27;
    }

LABEL_24:
    v22 = *v6;
    goto LABEL_28;
  }

  v20 = 0;
  if (v9)
  {
    goto LABEL_24;
  }

LABEL_27:
  v22 = 0;
LABEL_28:
  v23 = v22 + 1;
  v24 = malloc_type_calloc(v22 + 1, 0x58uLL, 0x105004040444690uLL);
  if (!v24)
  {
    return *__error();
  }

  v25 = v24;
  v26 = v22;
  if (v22 < 1)
  {
    LODWORD(v27) = 0;
    if (v16)
    {
LABEL_38:
      v40 = &v25[88 * v27];
      v41 = *(v18 + 1);
      *v40 = *v18;
      *(v40 + 1) = v41;
      v42 = *(v18 + 2);
      v43 = *(v18 + 3);
      v44 = *(v18 + 4);
      *(v40 + 10) = *(v18 + 10);
      *(v40 + 3) = v43;
      *(v40 + 4) = v44;
      *(v40 + 2) = v42;
      goto LABEL_43;
    }
  }

  else
  {
    v59 = v22 + 1;
    v60 = v6;
    v27 = 0;
    v28 = 0;
    v29 = (v18 + 8);
    if (!v16)
    {
      v29 = (v20 + 24);
    }

    v61 = v7;
    v62 = v29;
    v30 = 32;
    v58 = v24;
    v31 = v24;
    while (1)
    {
      v32 = (*a3 + v30);
      v34 = *v32;
      v33 = v32 - 4;
      v35 = strcmp(v34, *v62);
      if (v28)
      {
        if (v35)
        {
          break;
        }
      }

      v28 |= v35 == 0;
      v36 = *(v33 + 1);
      *v31 = *v33;
      v31[1] = v36;
      v37 = *(v33 + 2);
      v38 = *(v33 + 3);
      v39 = *(v33 + 4);
      *(v31 + 10) = v33[10];
      v31[3] = v38;
      v31[4] = v39;
      v31[2] = v37;
      ++v27;
      v31 = (v31 + 88);
      v30 += 88;
      if (v26 == v27)
      {
        LODWORD(v27) = v26;
        break;
      }
    }

    v6 = v60;
    v7 = v61;
    v25 = v58;
    v23 = v59;
    if (v16)
    {
      goto LABEL_38;
    }
  }

  if (v20)
  {
    v45 = &v25[88 * v27];
    v46 = *(v20 + 8);
    v47 = *(v20 + 16);
    v48 = *(v20 + 24);
    *v45 = *v20;
    *(v45 + 1) = v47;
    *(v45 + 2) = v46;
    *(v45 + 4) = v48;
    v45[24] = *(v20 + 32);
  }

LABEL_43:
  if (v27 < v26)
  {
    v49 = 88 * v27;
    do
    {
      v50 = &v25[v49 + 88];
      v51 = *a3 + v49;
      v52 = *(v51 + 1);
      *v50 = *v51;
      *(v50 + 16) = v52;
      v53 = *(v51 + 2);
      v54 = *(v51 + 3);
      v55 = *(v51 + 4);
      *(v50 + 80) = *(v51 + 10);
      *(v50 + 48) = v54;
      *(v50 + 64) = v55;
      *(v50 + 32) = v53;
      v49 += 88;
      LODWORD(v27) = v27 + 1;
    }

    while (v26 > v27);
  }

  if (*a3)
  {
    v56 = v25;
    free(*a3);
    v25 = v56;
  }

  *a3 = v25;
  *v6 = v23;
  if (!v7)
  {
    return 0;
  }

  v5 = 0;
  *v7 = v18;
  return v5;
}

int *create_epmetrics(int *result, int *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0;
  v9[0] = xmmword_299821720;
  v9[1] = xmmword_299821730;
  v10 = 0x73746F7264697274;
  if (result)
  {
    v3 = result;
    for (i = 0; i != 40; i += 8)
    {
      v5 = add_metric(*(v9 + i), &v8, v3, 0);
      if (v5 == 78)
      {
        v5 = add_metric(0, &v8, v3, 0);
      }

      if (v5)
      {
        result = 0;
        v6 = v8;
        goto LABEL_11;
      }
    }

    v6 = v8;
    result = v8;
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v6)
    {
      free(v6);
      result = 0;
    }
  }

  else
  {
    v5 = 22;
  }

LABEL_13:
  if (a2 && v5)
  {
    *a2 = v5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

int *pc_session_create(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10B00400786544BuLL);
  if (!v6)
  {
    if (a1)
    {
      v7 = 0;
      *a1 = *__error();
      return v7;
    }

    return 0;
  }

  v7 = v6;
  *(v6 + 1) = 0xFFFFFFFF00000001;
  epmetrics = create_epmetrics(v6 + 32, 0);
  *(v7 + 15) = epmetrics;
  if (!epmetrics)
  {
    pc_session_destroy(v7);
    return 0;
  }

  *(v7 + 19) = a2;
  *(v7 + 20) = a3;
  if (a1)
  {
    *a1 = 0;
  }

  return v7;
}

uint64_t is_monotonic_active()
{
  if (is_monotonic_active_got_monotonic != -1)
  {
    is_monotonic_active_cold_1();
  }

  return is_monotonic_active_monotonic_on;
}

uint64_t __is_monotonic_active_block_invoke()
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  v0 = getpid();
  result = proc_pid_rusage(v0, 4, v3);
  if (!result && *(&v4 + 1))
  {
    is_monotonic_active_monotonic_on = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pc_session_add_metric(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 192))
  {
    return 37;
  }

  if (a2 == 0x6D656D64656C7461)
  {
    v4 = 0x6375726D656D0000;
  }

  else
  {
    v4 = a2;
  }

  if (v4 != 0x7065616B646C7461 || (result = _add_metric(a1, 0x6375726D656D0000, (a1 + 120), (a1 + 128), 0), !result))
  {

    return _add_metric(a1, v4, (a1 + 120), (a1 + 128), 0);
  }

  return result;
}

uint64_t pc_session_begin(uint64_t a1)
{
  v4 = 108;
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 192))
  {
    return 37;
  }

  v3 = snapshot_create(a1, &v4);
  *(a1 + 192) = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

char *snapshot_create(uint64_t a1, int *a2)
{
  if (!a1)
  {
    v20 = 22;
    goto LABEL_30;
  }

  v4 = malloc_type_calloc(1uLL, 56 * *(a1 + 8) + 8, 0x100004000313F17uLL);
  if (!v4)
  {
    v20 = *__error();
    goto LABEL_30;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  *v4 = v6;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v4 + 2;
    do
    {
      v9 = &v8[14 * v7];
      v10 = *(a1 + 128);
      v9[10] = v10;
      v11 = malloc_type_calloc(v10, 0x60uLL, 0x10500403B44B1C9uLL);
      *(v9 + 6) = v11;
      if (v11)
      {
        if (v10 >= 1)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = *(v9 + 6) + v13;
            v15 = *(a1 + 120) + v12;
            v17 = *(v15 + 48);
            v16 = *(v15 + 64);
            v18 = *(v15 + 32);
            *(v14 + 80) = *(v15 + 80);
            *(v14 + 48) = v17;
            *(v14 + 64) = v16;
            *(v14 + 32) = v18;
            v19 = *(v15 + 16);
            *v14 = *v15;
            *(v14 + 16) = v19;
            v13 += 96;
            v12 += 88;
          }

          while (96 * v10 != v13);
        }
      }

      else
      {
        v20 = *__error();
        if (v20)
        {
          goto LABEL_29;
        }
      }

      ++v7;
    }

    while (v7 < *v5);
    if (*(a1 + 8) >= 1)
    {
      v21 = 0;
      v22 = (a1 + 16);
      v23 = (a1 + 12);
      do
      {
        v24 = *v23;
        if (v24 == -1)
        {
          if (!*v22)
          {
            v20 = 3;
LABEL_29:
            pc_snapshot_destroy(v5);
LABEL_30:
            v5 = 0;
            if (a2 && v20)
            {
              v5 = 0;
              *a2 = v20;
            }

            return v5;
          }

          if (!findPIDForProcName(v22, v23))
          {
            v24 = *v23;
            if ((v24 & 0x80000000) == 0)
            {
LABEL_21:
              if (!measure_proc_snapshot(a1, v24, v22, v8))
              {
                ++*(v5 + 1);
              }
            }
          }
        }

        else
        {
          if (v24 == -2)
          {
            v20 = 45;
            goto LABEL_29;
          }

          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }
        }

        ++v21;
        ++v23;
        v8 += 14;
        v22 += 33;
      }

      while (v21 < *(a1 + 8));
    }
  }

  return v5;
}

double __abstime_to_ns_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1;
    abstime_to_ns_to_ns_factor = *&result;
  }

  return result;
}

uint64_t measure_proc_snapshot(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v45 = 0;
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
  v29 = 0u;
  v30 = 0u;
  *buffer = 0u;
  v28 = 0u;
  if (!a4)
  {
LABEL_47:
    v8 = 22;
    goto LABEL_48;
  }

  *a4 = a2;
  v7 = a2;
  if (a3)
  {
    __strlcpy_chk();
    v7 = *a4;
  }

  if (proc_pid_rusage(v7, 4, buffer))
  {
LABEL_5:
    v8 = *__error();
    if (v8)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  if (a4[10] < 1)
  {
LABEL_46:
    v8 = 0;
    goto LABEL_49;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a4 + 6);
    v12 = *(v11 + v9);
    if (v12 <= 0x6C6966657065616ALL)
    {
      break;
    }

    if (v12 > 0x72636E747065616ALL)
    {
      if (v12 == 0x72636E747065616BLL)
      {
        v18 = *(&v44 + 1);
        if (!*(&v44 + 1))
        {
          v18 = *(&v31 + 1);
        }

        v16 = (v18 / 1024);
        goto LABEL_32;
      }

      if (v12 == 0x73746F7264697274)
      {
        v17 = *(&v41 + 1);
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    if (v12 == 0x6C6966657065616BLL)
    {
      v17 = v42;
      goto LABEL_30;
    }

    if (v12 != 0x7065616B646C7461)
    {
      goto LABEL_40;
    }

    if (*(a1 + 192))
    {
      v14 = v11 + v9;
      *(v11 + v9) = 0x72636E747065616BLL;
      v15 = *(&v44 + 1);
      if (!*(&v44 + 1))
      {
        v15 = *(&v31 + 1);
      }

      v16 = (v15 / 1024);
      goto LABEL_33;
    }

    v23 = *a4;
    if (proc_reset_footprint_interval())
    {
      goto LABEL_5;
    }

    *(v11 + v9) = 0;
LABEL_34:
    ++v10;
    v9 += 96;
    if (v10 >= a4[10])
    {
      goto LABEL_46;
    }
  }

  if (v12 > 0x63707574696D64FFLL)
  {
    if (v12 == 0x63707574696D6500)
    {
      v16 = abstime_to_ns(*(&v28 + 1) + v28);
      goto LABEL_32;
    }

    if (v12 == 0x6375726D656D0000)
    {
      if (*(&v32 + 1))
      {
        *(a4 + 37) = 1;
      }

      v17 = *(&v31 + 1);
LABEL_30:
      v13 = v17 >> 10;
LABEL_31:
      v16 = v13;
LABEL_32:
      v14 = v11 + v9;
LABEL_33:
      *(v14 + 88) = v16;
      goto LABEL_34;
    }
  }

  else
  {
    if (!v12)
    {
      goto LABEL_34;
    }

    if (v12 == 0x637075696E737472)
    {
      v13 = *(&v42 + 1) / 0x3E8uLL;
      goto LABEL_31;
    }
  }

LABEL_40:
  custom_metric_id = session_find_custom_metric_id(a1, *(v11 + v9));
  if (!custom_metric_id)
  {
    goto LABEL_47;
  }

  v20 = custom_metric_id;
  v21 = custom_metric_id[5];
  if (!v21)
  {
    goto LABEL_47;
  }

  v22 = (*(v21 + 16))(v21, a1, v12, a2, v11 + v9 + 88);
  if (!v22)
  {
    goto LABEL_34;
  }

  v8 = v22;
  if (v20[2])
  {
    v26 = v20[2];
    warnc(v22, "error measuring metric %s for PID %d");
    goto LABEL_49;
  }

LABEL_48:
  warnc(v8, "PID %d");
LABEL_49:
  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

double abstime_to_ns(uint64_t a1)
{
  if (abstime_to_ns_have_factor != -1)
  {
    abstime_to_msec_diff_cold_1();
  }

  return *&abstime_to_ns_to_ns_factor * a1;
}

uint64_t pc_session_end(uint64_t a1)
{
  v9 = 108;
  if (!a1)
  {
    return 22;
  }

  if (!*(a1 + 192))
  {
    return 45;
  }

  v2 = snapshot_create(a1, &v9);
  *(a1 + 200) = v2;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*(v2 + 1) == v3)
    {
      v4 = *(a1 + 128);
      if (v4 >= 1)
      {
        v5 = *(a1 + 120);
        do
        {
          if (*v5 == 0x6375726D656D0000)
          {
            *v5 = 0x6D656D64656C7461;
            v5[1] = "mem_delta";
          }

          v5 += 11;
          --v4;
        }

        while (v4);
      }

      return 0;
    }

    else
    {
      v9 = 3;
      if (v3 >= 1)
      {
        for (i = 0; i < v3; ++i)
        {
          if (*(a1 + 12 + 4 * i) == -1)
          {
            warnc(v9, "%s", (a1 + 16));
            v3 = *(a1 + 8);
          }
        }
      }
    }
  }

  return v9;
}

uint64_t pc_session_get_value(uint64_t a1, int a2, uint64_t a3, double *a4, uint64_t *a5, const char **a6)
{
  v74 = 0x43E0000000000000;
  result = 22;
  if (a1 && a4 && a5)
  {
    v10 = *(a1 + 192);
    if (!v10)
    {
      return 45;
    }

    if (*v10 <= a2)
    {
      return 34;
    }

    if (a3 <= 0x6D656D64656C7460)
    {
      if (!a3)
      {
        return 93;
      }

      if (a3 == 0x6375726D656D0000)
      {
        if (*(a1 + 200))
        {
          v10 = *(a1 + 200);
        }

        v33 = v10 + 2;
        if ((v33[14 * a2 + 9] & 0x100) != 0)
        {
          return 93;
        }

        v34 = &v33[14 * a2];
        v35 = v34[10];
        if (v35 < 1)
        {
          return 93;
        }

        v17 = 0;
        v36 = *(v34 + 6);
        v37 = v36;
        do
        {
          v38 = *v37;
          v37 += 12;
          if (v38 == 0x6375726D656D0000)
          {
            v17 = v36;
          }

          v36 = v37;
          --v35;
        }

        while (v35);
LABEL_71:
        if (v17)
        {
LABEL_72:
          v64 = v17[11];
LABEL_90:
          v74 = *&v64;
LABEL_91:
          v72 = *(v17 + 2);
          *a4 = v64;
          *a5 = v72;
          if (!a6)
          {
            return 0;
          }

          v73 = pdunit_iorunit(v72);
          result = 0;
          *a6 = v73;
          return result;
        }

        return 93;
      }

      v13 = 0x6C6966657065616BLL;
      goto LABEL_15;
    }

    if (a3 == 0x6D656D64656C7461)
    {
      v21 = *(a1 + 200);
      if (!v21)
      {
        return 93;
      }

      v22 = v21 + 56 * a2;
      v23 = *(v22 + 48);
      if (v23 < 1)
      {
        return 93;
      }

      v24 = 0;
      v25 = *(v22 + 56);
      v26 = v25;
      do
      {
        v27 = *v26;
        v26 += 12;
        if (v27 == 0x6375726D656D0000)
        {
          v24 = v25;
        }

        v25 = v26;
        --v23;
      }

      while (v23);
      if (!v24)
      {
        return 93;
      }

      v28 = &v10[14 * a2];
      v29 = v28[12];
      if (v29 < 1)
      {
        return 93;
      }

      v17 = 0;
      v30 = *(v28 + 7);
      v31 = v30;
      do
      {
        v32 = *v31;
        v31 += 12;
        if (v32 == 0x6375726D656D0000)
        {
          v17 = v30;
        }

        v30 = v31;
        --v29;
      }

      while (v29);
    }

    else
    {
      if (a3 != 0x7065616B646C7461)
      {
        v13 = 0x72636E747065616BLL;
LABEL_15:
        if (a3 == v13)
        {
          v14 = *(a1 + 200);
          if (v14)
          {
            v15 = v14 + 56 * a2;
            v16 = *(v15 + 48);
            if (v16 < 1)
            {
              return 93;
            }

            v17 = 0;
            v18 = *(v15 + 56);
            v19 = v18;
            do
            {
              v20 = *v19;
              v19 += 12;
              if (v20 == a3)
              {
                v17 = v18;
              }

              v18 = v19;
              --v16;
            }

            while (v16);
          }

          else
          {
            v59 = &v10[14 * a2];
            v60 = v59[12];
            if (v60 < 1)
            {
              return 93;
            }

            v17 = 0;
            v61 = *(v59 + 7);
            v62 = v61;
            do
            {
              v63 = *v62;
              v62 += 12;
              if (v63 == a3)
              {
                v17 = v61;
              }

              v61 = v62;
              --v60;
            }

            while (v60);
          }

          goto LABEL_71;
        }

        v51 = *(a1 + 200);
        if (v51)
        {
          v52 = v51 + 56 * a2;
          v53 = a2;
          v54 = *(v52 + 48);
          if (v54 < 1)
          {
            v55 = 0;
          }

          else
          {
            v55 = 0;
            v56 = *(v52 + 56);
            v57 = v56;
            do
            {
              v58 = *v57;
              v57 += 12;
              if (v58 == a3)
              {
                v55 = v56;
              }

              v56 = v57;
              --v54;
            }

            while (v54);
          }
        }

        else
        {
          v55 = 0;
          v53 = a2;
        }

        v65 = &v10[14 * v53];
        v66 = v65[12];
        if (v66 < 1)
        {
          return 93;
        }

        v17 = 0;
        v67 = *(v65 + 7);
        v68 = v67;
        do
        {
          v69 = *v68;
          v68 += 12;
          if (v69 == a3)
          {
            v17 = v67;
          }

          v67 = v68;
          --v66;
        }

        while (v66);
        if (!v17)
        {
          return 93;
        }

        if (!v55)
        {
          goto LABEL_72;
        }

        custom_metric_id = session_find_custom_metric_id(a1, a3);
        if (custom_metric_id)
        {
          v71 = custom_metric_id[6];
          if (v71)
          {
            result = (*(v71 + 16))(v71, a1, a3, &v74, v17[11], v55[11]);
            if (result)
            {
              return result;
            }

            v64 = *&v74;
            goto LABEL_91;
          }
        }

        v50 = v55[11];
LABEL_89:
        v64 = v50 - v17[11];
        goto LABEL_90;
      }

      v39 = *(a1 + 200);
      if (!v39)
      {
        return 93;
      }

      v40 = v39 + 56 * a2;
      v41 = *(v40 + 48);
      if (v41 < 1)
      {
        return 93;
      }

      v24 = 0;
      v42 = *(v40 + 56);
      v43 = v42;
      do
      {
        v44 = *v43;
        v43 += 12;
        if (v44 == 0x72636E747065616BLL)
        {
          v24 = v42;
        }

        v42 = v43;
        --v41;
      }

      while (v41);
      if (!v24)
      {
        return 93;
      }

      v45 = &v10[14 * a2];
      v46 = v45[12];
      if (v46 < 1)
      {
        return 93;
      }

      v17 = 0;
      v47 = *(v45 + 7);
      v48 = v47;
      do
      {
        v49 = *v48;
        v48 += 12;
        if (v49 == 0x6375726D656D0000)
        {
          v17 = v47;
        }

        v47 = v48;
        --v46;
      }

      while (v46);
    }

    if (!v17)
    {
      return 93;
    }

    v50 = v24[11];
    goto LABEL_89;
  }

  return result;
}

uint64_t pc_session_get_values(uint64_t a1, uint64_t a2)
{
  result = 22;
  if (a1 && a2)
  {
    if (*(a1 + 192))
    {
      v5 = *(a1 + 8);
      if (v5 < 1)
      {
        return 0;
      }

      else
      {
        v6 = 0;
        v7 = *(a1 + 128);
        do
        {
          if (v7 >= 1)
          {
            v8 = 0;
            v9 = 0;
            v10 = *(a1 + 12 + 4 * v6);
            do
            {
              v11 = (*(a1 + 120) + v8);
              v12 = *v11;
              v13 = v11[1];
              v15 = 0;
              v16 = 0.0;
              v14 = 0;
              if (v12)
              {
                result = pc_session_get_value(a1, v6, v12, &v16, &v15, &v14);
                if (result)
                {
                  return result;
                }

                (*(a2 + 16))(a2, v6, a1 + 16 + 33 * v6, v10, v12, v13, v15, v14, v16);
                v7 = *(a1 + 128);
              }

              ++v9;
              v8 += 88;
            }

            while (v9 < v7);
            v5 = *(a1 + 8);
          }

          result = 0;
          ++v6;
        }

        while (v6 < v5);
      }
    }

    else
    {
      return 45;
    }
  }

  return result;
}

const char *pdunit_iorunit(uint64_t a1)
{
  result = 0;
  if (a1 > 0x9008BFFFFFFFFFFLL)
  {
    if (a1 == 0x9008C0000000000)
    {
      v3 = MEMORY[0x29EDC8340];
      return *v3;
    }

    if (a1 == 0x6600008200000000)
    {
      v3 = MEMORY[0x29EDC8348];
      return *v3;
    }
  }

  else if (a1)
  {
    if (a1 == 0x100007600000000)
    {
      v3 = MEMORY[0x29EDC8350];
      return *v3;
    }
  }

  else
  {
    return "#none";
  }

  return result;
}

void *session_find_custom_metric_id(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  if (result)
  {
    v4 = *(a1 + 144);
    if (v4 < 1)
    {
      return 0;
    }

    else
    {
      while (*result != a2)
      {
        result += 7;
        if (!--v4)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t pc_session_destroy(int *a1)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 7);
  if (v3)
  {
    if ((a1[16] & 0x80000000) == 0)
    {
      v4 = 0;
      do
      {
        free(*(*(a1 + 7) + 8 * v4));
      }

      while (v4++ < a1[16]);
      v3 = *(a1 + 7);
    }

    free(v3);
  }

  v6 = *(a1 + 10);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 13);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 12);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 15);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 17);
  if (v11)
  {
    if (a1[36] >= 1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        custom_metric_clean_up(*(a1 + 17) + v12);
        ++v13;
        v12 += 56;
      }

      while (v13 < a1[36]);
      v11 = *(a1 + 17);
    }

    free(v11);
  }

  v14 = *(a1 + 22);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a1 + 21);
  if (v15)
  {
    fclose(v15);
  }

  v16 = *(a1 + 24);
  if (v16)
  {
    pc_snapshot_destroy(v16);
  }

  v17 = *(a1 + 25);
  if (v17)
  {
    pc_snapshot_destroy(v17);
  }

  free(a1);
  return 0;
}

uint64_t pc_snapshot_destroy(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1 >= 1)
    {
      v3 = 0;
      v4 = 56;
      do
      {
        v5 = *&a1[v4];
        if (v5)
        {
          free(v5);
          v2 = *a1;
        }

        ++v3;
        v4 += 56;
      }

      while (v3 < v2);
    }

    free(a1);
  }

  return 0;
}

uint64_t pc_session_process(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 192))
    {
      LODWORD(result) = _update_compare_path(a1);
      if (!result)
      {
        if (*(a1 + 8) < 1)
        {
          LODWORD(result) = 0;
        }

        else
        {
          v3 = 0;
          do
          {
            LODWORD(result) = dump_compare_metrics(a1, v3++);
          }

          while (v3 < *(a1 + 8));
        }
      }
    }

    else
    {
      LODWORD(result) = 45;
    }
  }

  else
  {
    LODWORD(result) = 22;
  }

  if ((*(a1 + 184) & (result != 149)) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t _update_compare_path(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80))
  {
    goto LABEL_2;
  }

  v4 = getenv("PERFCHECK_COMPARE_PATH");
  if (!v4)
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      if (snprintf(__str, 0x120uLL, "/AppleInternal/Tests/%s/easyperf_%s.epb", *(a1 + 96), v6) >= 0x120)
      {
        result = *__error();
        goto LABEL_3;
      }

      if (!access(__str, 4))
      {
        result = pc_session_set_baseline_file(a1, __str);
        goto LABEL_3;
      }
    }

LABEL_2:
    result = 0;
LABEL_3:
    v2 = *MEMORY[0x29EDCA608];
    return result;
  }

  v5 = *MEMORY[0x29EDCA608];

  return pc_session_set_baseline_file(a1, v4);
}

uint64_t dump_compare_metrics(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v3 = copy_meas_session(a1, a2, &v25, &v25 + 1);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 176);
    if (!v5)
    {
      goto LABEL_9;
    }

    if (has_perfdata_v1_ext(v5))
    {
      v6 = emit_perfdata_v1(a1, *(a1 + 176));
      HIDWORD(v25) = v6;
      v7 = *(a1 + 176);
      if (!v6)
      {
        __strlcpy_chk();
        v8 = strstr(__s1, ".perfdata");
        if (!v8)
        {
          goto LABEL_9;
        }

        *(v8 + 1) = 6972528;
        v6 = pc_session_record_pdfile(a1, __s1);
        HIDWORD(v25) = v6;
        if (!v6)
        {
          warnx("Warning '%s' deprecated: also wrote perfdata v2 to %s", ".perfdata", __s1);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v6 = pc_session_record_pdfile(a1, *(a1 + 176));
      HIDWORD(v25) = v6;
      if (!v6)
      {
LABEL_9:
        if (MEMORY[0x2A1C77730])
        {
          v9 = *(a1 + 80);
          if (!v9)
          {
            HIDWORD(v25) = _print_compare_meas(a1, v4, v25, 0, 0, &v23);
            if (HIDWORD(v25))
            {
              goto LABEL_39;
            }

            v11 = 0;
LABEL_29:
            if (v23 == 1)
            {
              HIDWORD(v25) = 149;
            }

            else
            {
              v18 = *(a1 + 88);
              if (!v18 || (HIDWORD(v25) = record_basemeas(v4, v18, *(a1 + 104))) == 0)
              {
                HIDWORD(v25) = 0;
              }
            }

LABEL_37:
            if (v11)
            {
LABEL_38:
              free(v11);
            }

LABEL_39:
            free(v4);
            goto LABEL_40;
          }

          v10 = create_meas_epbfile(v9, *(a1 + 104), &v24, &v25 + 1);
          if (v10)
          {
            v11 = v10;
            if (v25 >= 1 && v24 >= 1)
            {
              v12 = 0;
              if (v25 >= v24)
              {
                v13 = v24;
              }

              else
              {
                v13 = v25;
              }

              v14 = (v4 + 1);
              v15 = v10 + 1;
              while (1)
              {
                v16 = *(v14 - 1);
                v17 = v16 == 0x6D656D64656C7461 || v16 == 0x6375726D656D0000;
                if (v17 && v16 != *(v15 - 1))
                {
                  break;
                }

                ++v12;
                v14 += 12;
                v15 += 12;
                if (v12 >= v13)
                {
                  goto LABEL_25;
                }
              }

              v21 = *v14;
              v22 = *v15;
              HIDWORD(v25) = 93;
              warnx("can't compare '%s' to '%s'", v21, v22);
              goto LABEL_38;
            }

LABEL_25:
            HIDWORD(v25) = _print_compare_meas(a1, v4, v25, v10, v24, &v23);
            if (HIDWORD(v25))
            {
              goto LABEL_37;
            }

            goto LABEL_29;
          }

          if (HIDWORD(v25) != 93 || !*(a1 + 96))
          {
            goto LABEL_39;
          }
        }

        HIDWORD(v25) = _print_compare_meas(a1, v4, v25, 0, 0, 0);
        goto LABEL_39;
      }
    }

    warnc(v6, "%s", *(a1 + 176));
    goto LABEL_39;
  }

LABEL_40:
  result = HIDWORD(v25);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

double *copy_meas_session(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v14 = 0;
  if (!a1 || !a3)
  {
    v9 = 0;
    v14 = 22;
    if (a4)
    {
      goto LABEL_16;
    }

    return v9;
  }

  v8 = create_meas_metrics(*(a1 + 120), *(a1 + 128), &v14);
  v9 = v8;
  if (!v8)
  {
LABEL_15:
    if (a4)
    {
      goto LABEL_16;
    }

    return v9;
  }

  if (*(a1 + 128) < 1)
  {
    LODWORD(v10) = 0;
LABEL_14:
    *a3 = v10;
    v14 = 0;
    goto LABEL_15;
  }

  v10 = 0;
  v11 = v8 + 11;
  while (1)
  {
    value = pc_session_get_value(a1, a2, *(v11 - 11), v11, v11 - 9, 0);
    if (value)
    {
      break;
    }

LABEL_9:
    ++v10;
    v11 += 12;
    if (v10 >= *(a1 + 128))
    {
      goto LABEL_14;
    }
  }

  if (value == 93)
  {
    *(v11 - 11) = 0.0;
    goto LABEL_9;
  }

  v14 = value;
  free(v9);
  v9 = 0;
  if (!a4)
  {
    return v9;
  }

LABEL_16:
  if (v14)
  {
    *a4 = v14;
  }

  return v9;
}

void *pc_session_create_snapshot_buf(uint64_t a1, void *a2, _DWORD *a3)
{
  v43 = -2;
  if (!a1 || !a2)
  {
    v33 = 0;
    v43 = 22;
    goto LABEL_35;
  }

  v5 = snapshot_create(a1, &v43);
  if (!v5)
  {
    v33 = 0;
    goto LABEL_35;
  }

  v6 = v5;
  v7 = [MEMORY[0x29EDB8DF0] arrayWithCapacity:0];
  v8 = v7;
  if (!v7)
  {
    v33 = 0;
    v43 = 12;
    goto LABEL_34;
  }

  v35 = a2;
  if (*v6 < 1)
  {
LABEL_21:
    v28 = objc_autoreleasePoolPush();
    v42 = 0;
    v29 = v8;
    v30 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v8 format:200 options:0 error:&v42];
    v31 = v42;
    v32 = v31;
    if (v30)
    {
      v33 = malloc_type_malloc([v30 length], 0x7A82DCFDuLL);
      if (v33)
      {
        [v30 getBytes:v33 length:{objc_msgSend(v30, "length")}];
        *v35 = [v30 length];
        v43 = 0;
      }

      else
      {
        v43 = *__error();
      }
    }

    else
    {
      v33 = 0;
      v43 = [v31 code];
    }

    objc_autoreleasePoolPop(v28);
    v8 = v29;
    goto LABEL_34;
  }

  v9 = 0;
  v38 = a3;
  v39 = v6 + 8;
  v10 = 0x29EDB8000uLL;
  v36 = v7;
  v37 = v6;
  while (1)
  {
    v11 = [*(v10 + 3592) dictionaryWithCapacity:3];
    if (!v11 || (v12 = &v39[56 * v9], [v8 addObject:v11], objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v12 + 4), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v43 = 12;
      goto LABEL_30;
    }

    v14 = v13;
    [v11 setObject:v13 forKeyedSubscript:@"pname"];
    v15 = [MEMORY[0x29EDBA070] numberWithBool:v12[37]];
    if (!v15)
    {
      v43 = 12;

      goto LABEL_30;
    }

    v16 = v15;
    v41 = v14;
    [v11 setObject:v15 forKeyedSubscript:@"exited"];
    v17 = [*(v10 + 3592) dictionaryWithCapacity:*(v12 + 10)];
    if (!v17)
    {
      v43 = 12;

      goto LABEL_30;
    }

    v18 = v17;
    v40 = v9;
    [v11 setObject:v17 forKeyedSubscript:@"meas"];
    v19 = *(v12 + 10);
    if (v19 >= 1)
    {
      break;
    }

    v23 = 0;
LABEL_20:

    v9 = v40 + 1;
    v10 = 0x29EDB8000;
    if (v40 + 1 >= *v6)
    {
      goto LABEL_21;
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = *(v12 + 6);
    if (*(v24 + v20))
    {
      break;
    }

LABEL_17:
    ++v21;
    v20 += 96;
    if (v21 >= v19)
    {

      v6 = v37;
      a3 = v38;
      v8 = v36;
      goto LABEL_20;
    }
  }

  v25 = v24 + v20;
  v26 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*(v24 + v20 + 8)];

  if (!v26)
  {
    v43 = 12;

    goto LABEL_29;
  }

  v27 = [MEMORY[0x29EDBA070] numberWithDouble:*(v25 + 88)];

  if (v27)
  {
    [v18 setObject:v27 forKeyedSubscript:v26];
    v19 = *(v12 + 10);
    v23 = v27;
    v22 = v26;
    goto LABEL_17;
  }

  v43 = 12;

LABEL_29:
  v6 = v37;
  a3 = v38;
  v8 = v36;
LABEL_30:

  v33 = 0;
LABEL_34:
  pc_snapshot_destroy(v6);

LABEL_35:
  if (a3)
  {
    *a3 = v43;
  }

  return v33;
}

_OWORD *create_meas_metrics(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    v5 = a1;
    result = malloc_type_calloc(a2, 0x60uLL, 0x10500403B44B1C9uLL);
    if (result)
    {
      if (a2 >= 1)
      {
        v7 = a2;
        v8 = result;
        do
        {
          v9 = *(v5 + 16);
          *v8 = *v5;
          v8[1] = v9;
          v10 = *(v5 + 32);
          v11 = *(v5 + 64);
          v12 = *(v5 + 80);
          v8[3] = *(v5 + 48);
          v8[4] = v11;
          v8[2] = v10;
          *(v8 + 10) = v12;
          *(v8 + 11) = 0;
          v5 += 88;
          v8 += 6;
          --v7;
        }

        while (v7);
      }

      return result;
    }

    v13 = *__error();
  }

  else
  {
    v13 = 22;
  }

  result = 0;
  if (a3 && v13)
  {
    result = 0;
    *a3 = v13;
  }

  return result;
}

uint64_t _print_compare_meas(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, _BYTE *a6)
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v12 = pc_session_copy_description(a1, *(a1 + 184) & 1, 0);
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x29EDCA610];
    v15 = fprintf(*MEMORY[0x29EDCA610], "%s\n", v12);
    free(v13);
    if (v15 >= 2)
    {
      if (v15 >= 0x51)
      {
        v16 = 81;
      }

      else
      {
        v16 = v15;
      }

      v17 = v16 + 1;
      do
      {
        fputc(45, *v14);
        --v17;
      }

      while (v17 > 2);
    }

    fputc(10, *v14);
  }

  if (a4)
  {
    LODWORD(v18) = 0;
    if (a3 >= 1 && a5 >= 1)
    {
      v25 = a6;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = a4 + 96 * v19;
        v21 = *a2;
        if (*a2)
        {
          if (v21 == 0x7065616B646C7461)
          {
            if (*v20 != 0x7065616B646C7461)
            {
              v20 = 0;
            }
          }

          else if (v21 != *v20)
          {
            v24 = a2[1];
            warnx("can't compare '%s' to '%s'", v24, *(v20 + 8));
            return 93;
          }
        }

        result = _print_meas(a1, v26, a2, v20, &v27);
        if (result)
        {
          return result;
        }

        ++v18;
        if (v20)
        {
          ++v19;
        }

        if (v18 < a3)
        {
          a2 += 12;
          if (v19 < a5)
          {
            continue;
          }
        }

        a6 = v25;
        break;
      }
    }

    if (v18 != a3)
    {
      warnx("unable to compare all expected measurements");
      return 14;
    }

    goto LABEL_31;
  }

  if (a3 < 1)
  {
LABEL_31:
    result = 0;
    if (a6)
    {
      *a6 = v27;
    }

    return result;
  }

  v23 = a3;
  while (1)
  {
    result = _print_meas(a1, v26, a2, 0, 0);
    if (result)
    {
      return result;
    }

    a2 += 12;
    if (!--v23)
    {
      goto LABEL_31;
    }
  }
}

char *pc_session_copy_description(uint64_t a1, char a2, int *a3)
{
  v8 = 0;
  *(a1 + 200);
  if ((a2 & 1) != 0 || (*(a1 + 12) & 0x80000000) != 0)
  {
    v4 = asprintf(&v8, "%s %s");
  }

  else
  {
    v7 = *(a1 + 12);
    v4 = asprintf(&v8, "%s[%d] %s");
  }

  if (v4 == -1)
  {
    v5 = *__error();
    if (v5 && v8)
    {
      free(v8);
    }

    if (a3 && v5)
    {
      *a3 = v5;
    }
  }

  return v8;
}

uint64_t _print_meas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (!*a3)
  {
    return 0;
  }

  if (a4)
  {
    v9 = *(a4 + 88);
    v10 = &v15;
  }

  else
  {
    v10 = 0;
    v9 = 0.0;
  }

  v16 = 0;
  v14 = 0.0;
  v15 = 0;
  v12 = scaled_unitstr(*(a3 + 16), &v14, v10, *(a3 + 88), v9);
  v13 = pc_session_copy_description(a1, 1, &v16);
  *(a2 + 8) = v13;
  if (v13)
  {
    print_metric_value(a1, a3, a2, v14, v12, v10, a5);
    free(*(a2 + 8));
    result = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    warnx("couldn't create test name");
    return v16;
  }

  return result;
}

uint64_t pc_session_set_procpid(uint64_t a1, int pid)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 192))
  {
    return 37;
  }

  *(a1 + 12) = pid;
  if (proc_name(pid, (a1 + 16), 0x21u) > 0)
  {
    return 0;
  }

  v5 = __error();
  v2 = *v5;
  warnc(*v5, "PID %d", pid);
  return v2;
}

const char *scaled_unitstr(uint64_t a1, double *a2, double *a3, double a4, double a5)
{
  if (a1 > 0x9008BFFFFFFFFFFLL)
  {
    if (a1 == 0x9008C0000000000)
    {
      result = "kB";
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (a1 == 0x6600008200000000)
    {
      result = "kI";
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    result = "";
    if (!a2)
    {
LABEL_18:
      if (!a3)
      {
        return result;
      }

      goto LABEL_19;
    }

LABEL_17:
    *a2 = a4;
    goto LABEL_18;
  }

  if (a1 != 0x100007600000000)
  {
LABEL_12:
    result = "unknown";
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    *a2 = a4 / 1000000.0;
  }

  if (!a3)
  {
    return "ms";
  }

  result = "ms";
  a5 = a5 / 1000000.0;
LABEL_19:
  *a3 = a5;
  return result;
}

uint64_t print_metric_value(uint64_t a1, uint64_t a2, const char **a3, double a4, uint64_t a5, double *a6, _BYTE *a7)
{
  v11 = a1;
  v87 = *MEMORY[0x29EDCA608];
  strcpy(v81, "..");
  *v82 = 0;
  v83 = 0;
  v85 = 0;
  v84 = 0;
  if (a6)
  {
    v12 = *a6;
    v13 = (*(a1 + 184) & 1) == 0 || *(a1 + 168) != 0;
    v14 = a4 - v12;
    v66 = !v13 | ((*(a1 + 184) & 4u) >> 2);
    v63 = v66 ^ 1;
  }

  else
  {
    v63 = 0;
    v66 = 0;
    v13 = 1;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(a2 + 8);
  __strlcpy_chk();
  for (i = strchr(__s, 32); i; i = strchr(__s, 32))
  {
    *i = 95;
  }

  v64 = v13;
  v65 = a3;
  __strlcpy_chk();
  for (j = strchr(__s, 32); j; j = strchr(__s, 32))
  {
    *j = 95;
  }

  v18 = isatty(2);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (v18)
  {
    v23 = "\x1B[01m\x1B[31m";
  }

  else
  {
    v23 = "";
  }

  if (v18)
  {
    v24 = "\x1B[0m";
  }

  else
  {
    v24 = "";
  }

  if (v18)
  {
    v25 = "\x1B[01m\x1B[32m";
  }

  else
  {
    v25 = "";
  }

  v26 = (a2 + 48);
  v27 = 0.0;
  v28 = 3;
  v62 = v24;
  do
  {
    v29 = *(v26 - 1);
    v30 = *v26;
    if (v29 == 3 && v30 == 0.0)
    {
      v20 = 1;
LABEL_24:
      v31 = v30 <= a4;
      v32 = v30 < a4;
      goto LABEL_25;
    }

    v37 = (v29 >> 15) & 3;
    if (v37 <= 1)
    {
      if (!v37)
      {
        goto LABEL_24;
      }

      if (a6)
      {
        v32 = v30 + *a6 < a4;
        v31 = *a6 - v30 <= a4;
LABEL_25:
        v33 = !v31;
LABEL_28:
        if ((v29 & 3) != 0)
        {
          v34 = *(v26 - 1) & 0xCLL;
          if (*(a2 + 24) == 1)
          {
            v21 |= v33;
            v35 = v34 != 0 && v32;
            v36 = v35 || v33;
          }

          else
          {
            v21 |= v32;
            v35 = v34 != 0 && v33;
            v36 = v35 || v32;
          }

          if (v36)
          {
            v19 = 1;
          }

          v22 |= v35;
        }

        goto LABEL_39;
      }

LABEL_46:
      v32 = 0;
      v33 = 0;
      goto LABEL_28;
    }

    if (v37 != 2)
    {
      if (a6)
      {
        v32 = (v30 / 100.0 + 1.0) * *a6 < a4;
        v33 = (1.0 - v30 / 100.0) * *a6 > a4;
        v27 = *v26;
        goto LABEL_28;
      }

      goto LABEL_46;
    }

    if (v29)
    {
      v60 = v23;
      v61 = v11;
      v38 = v25;
      warnx("ignoring threshold type %llx", *(v26 - 1));
      v25 = v38;
      v23 = v60;
      v11 = v61;
      v24 = v62;
    }

LABEL_39:
    v26 += 2;
    --v28;
  }

  while (v28);
  if (v22)
  {
    v39 = v25;
  }

  else
  {
    v39 = v24;
  }

  if (v21)
  {
    v40 = v23;
  }

  else
  {
    v40 = v39;
  }

  v41 = *(v11 + 168);
  if (!v41)
  {
    v42 = v66;
    v44 = v64;
    v43 = v65;
    if (!v64 && (v66 & 1) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_77;
  }

  v42 = v66;
  v43 = v65;
  v44 = v64;
  if (v19 & 1) == 0 && ((v66 ^ 1 | v64))
  {
LABEL_59:
    if ((v19 & 1) == 0)
    {
      goto LABEL_77;
    }

    v45 = v43[4];
    if (v45)
    {
      if (!strcmp(v43[1], v45))
      {
        goto LABEL_71;
      }

      v46 = v40;
      fputc(10, v41);
    }

    else
    {
      v46 = v40;
      fprintf(v41, "* Regression from build %s\n\n", "<baseline build>");
    }

    v47 = fprintf(*(v11 + 168), "%s\n", v43[1]);
    if (v47 >= 2)
    {
      if (v47 >= 0x50)
      {
        v48 = 80;
      }

      else
      {
        v48 = v47;
      }

      v49 = v48 + 1;
      do
      {
        fputc(45, *(v11 + 168));
        --v49;
      }

      while (v49 > 2);
    }

    fputc(10, *(v11 + 168));
    v43[4] = v43[1];
    v40 = v46;
LABEL_71:
    v50 = *(a2 + 32);
    if (v50)
    {
      v51 = v43[5];
      if (!v51)
      {
LABEL_75:
        fprintf(*(v11 + 168), "%s\n", v50);
        v43[5] = *(a2 + 32);
        goto LABEL_76;
      }

      if (strcmp(v50, v51))
      {
        fputc(10, *(v11 + 168));
        v50 = *(a2 + 32);
        goto LABEL_75;
      }
    }

LABEL_76:
    fprintf(*(v11 + 168), "%s %s; exceeded threshold of %g%%\n", v82, "  <-- out of spec", v27);
    goto LABEL_77;
  }

LABEL_58:
  snprintf(&__str, 5uLL, "(%s)", v81);
  snprintf(v82, 0x1CuLL, "%20s %-4s", __s, &__str);
  v41 = *(v11 + 168);
  if (v41)
  {
    goto LABEL_59;
  }

LABEL_77:
  v52 = *(a2 + 32);
  v53 = MEMORY[0x29EDCA610];
  if (v52)
  {
    v54 = v43[2];
    if (!v54)
    {
      goto LABEL_81;
    }

    if (strcmp(v52, v54))
    {
      fputc(10, *v53);
      v52 = *(a2 + 32);
LABEL_81:
      fprintf(*v53, "%s\n", v52);
      v43[2] = *(a2 + 32);
    }
  }

  if (v63)
  {
    if (a4 <= 100.0)
    {
      v55 = "%10.4g %-2s %-15s(%s%+.4g %s%s)";
    }

    else
    {
      v55 = "%10.0f %-2s %-15s(%s%+.0f %s%s)";
    }

    fprintf(*v53, v55, *&a4, v81, __s, v40, *&v14, v81, v62);
LABEL_91:
    v56 = 1;
    if (v42)
    {
      goto LABEL_92;
    }

LABEL_99:
    if (v19)
    {
      fputs("  <-- out of spec", *v53);
    }
  }

  else
  {
    if (v44)
    {
      if (a4 <= 100.0)
      {
        fprintf(*v53, "%10.4g %-2s %-15s");
      }

      else
      {
        fprintf(*v53, "%10.0f %-2s %-15s");
      }

      goto LABEL_91;
    }

    fputs(v82, *v53);
    v56 = 5;
    if ((v42 & 1) == 0)
    {
      goto LABEL_99;
    }

LABEL_92:
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x2000000000;
    v80 = 0;
    if (a4 < 0.0 || v12 <= 0.0 || v12 == a4 && v27 == 0.0)
    {
      *&__str = v27;
      *(&__str + 1) = v12;
      v76 = v12;
      v77 = v12;
      v78 = v27;
      _printDummyGraph(v56, &__str, v20 & 1, v19 & 1, a4, v12);
    }

    else
    {
      v72[0] = MEMORY[0x29EDCA5F8];
      v72[1] = 0x40000000;
      v72[2] = __print_metric_value_block_invoke;
      v72[3] = &unk_29EF6D638;
      v72[4] = v79;
      v73 = v56;
      v74 = v19;
      *&__str = v27;
      *(&__str + 1) = v12;
      v76 = v12;
      v77 = v12;
      v78 = v27;
      *&v68 = v27;
      *(&v68 + 1) = v12;
      v69 = v12;
      v70 = v12;
      v71 = v27;
      v59 = pc_measurement_graph(&__str, &v68, 31, 12, v72, a4, a4, a4, 0.0);
      if (v59)
      {
        print_metric_value_cold_1(v59);
      }
    }

    _Block_object_dispose(v79, 8);
  }

  result = fputc(10, *v53);
  if (a7 && (v19 & 1) != 0)
  {
    *a7 = 1;
  }

  v58 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t findPIDForProcName(const char *a1, int *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = 22;
  if (a1 && a2)
  {
    v5 = 0;
    v6 = 2048;
    do
    {
      v7 = reallocf(v5, v6);
      if (!v7)
      {
        v2 = 3;
        goto LABEL_29;
      }

      v5 = v7;
      v8 = proc_listpids(1u, 0, v7, v6);
      v9 = v8 < v6;
      v6 = 2 * v8;
    }

    while (!v9);
    if (v8 >= 4)
    {
      v11 = 0;
      if (v8 >> 2 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8 >> 2;
      }

      v10 = -1;
      v13 = MEMORY[0x29EDCA610];
      v14 = v5;
      do
      {
        v20 = 0;
        memset(buffer, 0, sizeof(buffer));
        v16 = *v14++;
        v15 = v16;
        if (proc_name(v16, buffer, 0x21u) >= 1 && !strcmp(buffer, a1))
        {
          if (v10 != -1)
          {
            if ((v11 & 1) == 0)
            {
              warnx("%s: multiple matching processes:", a1);
              fprintf(*v13, "%9d %s\n", v10, a1);
            }

            fprintf(*v13, "%9d %s\n", v15, buffer);
            v11 = 1;
          }

          v10 = v15;
        }

        --v12;
      }

      while (v12);
      if (v11)
      {
        v2 = 84;
LABEL_28:
        free(v5);
        goto LABEL_29;
      }

      if (v10 == -1)
      {
        v2 = 3;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 3;
      v10 = -1;
    }

    *a2 = v10;
    goto LABEL_28;
  }

LABEL_29:
  v17 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t writeCFObjToFile(CFPropertyListRef propertyList, uint64_t a2, CFPropertyListFormat a3)
{
  v3 = 22;
  if (propertyList && a2)
  {
    Data = CFPropertyListCreateData(0, propertyList, a3, 0, 0);
    if (Data)
    {
      v6 = Data;
      BytePtr = CFDataGetBytePtr(Data);
      if (!BytePtr)
      {
        v3 = 14;
        goto LABEL_11;
      }

      v8 = BytePtr;
      if (*a2 == 45 && !*(a2 + 1))
      {
        v9 = 1;
      }

      else
      {
        v9 = open(a2, 1537, 420);
        if (v9 == -1)
        {
          v3 = *__error();
LABEL_11:
          CFRelease(v6);
          return v3;
        }
      }

      Length = CFDataGetLength(v6);
      if (write(v9, v8, Length) == Length)
      {
        v3 = 0;
      }

      else
      {
        v3 = *__error();
      }

      CFRelease(v6);
      if (v9 != 1)
      {
        close(v9);
      }
    }

    else
    {
      return 12;
    }
  }

  return v3;
}

uint64_t createCFObjFromFile(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  if (*a1 == 45 && !*(a1 + 1))
  {
    v5 = 0;
  }

  else
  {
    v5 = open(a1, 0);
    if (v5 == -1)
    {
      return *__error();
    }
  }

  v7 = malloc_type_malloc(0x10000uLL, 0x435CD201uLL);
  if (v7)
  {
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v9 = Mutable;
      v10 = read(v5, v7, 0x10000uLL);
      if (v10 >= 1)
      {
        do
        {
          CFDataAppendBytes(v9, v7, v10);
          v10 = read(v5, v7, 0x10000uLL);
        }

        while (v10 > 0);
      }

      if (v10 != -1)
      {
        if (CFDataGetLength(v9))
        {
          v11 = CFPropertyListCreateWithData(0, v9, 1uLL, 0, 0);
          if (v11)
          {
            v12 = v11;
            if (CFGetTypeID(v11) == a2)
            {
              v6 = 0;
              *a3 = v12;
LABEL_24:
              CFRelease(v9);
              goto LABEL_25;
            }

            if (!*a3)
            {
              CFRelease(v12);
            }
          }
        }

        v6 = 79;
        goto LABEL_24;
      }

      v6 = *__error();
      goto LABEL_24;
    }
  }

  warn("allocation failure");
  if (*__error())
  {
    v6 = *__error();
    if (v7)
    {
LABEL_25:
      free(v7);
    }
  }

  else
  {
    v6 = 12;
    if (v7)
    {
      goto LABEL_25;
    }
  }

  if ((v5 - 1) <= 0xFFFFFFFD)
  {
    close(v5);
  }

  return v6;
}

CFStringRef copyHardwareModel(int *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  *v7 = 0x200000006;
  v6 = 64;
  v2 = sysctl(v7, 2u, cStr, &v6, 0, 0);
  if (v2)
  {
    v3 = v2;
    result = 0;
    if (!a1)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  cStr[63] = 0;
  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (result)
  {
    v3 = 0;
  }

  else
  {
    v3 = 12;
  }

  if (a1)
  {
LABEL_8:
    if (v3)
    {
      *a1 = v3;
    }
  }

LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

double abstime_to_msec_diff(uint64_t a1, uint64_t a2)
{
  if (abstime_to_ns_have_factor != -1)
  {
    abstime_to_msec_diff_cold_1();
  }

  return *&abstime_to_ns_to_ns_factor * a2 / 1000000.0 - *&abstime_to_ns_to_ns_factor * a1 / 1000000.0;
}

double abstime_to_msec(uint64_t a1)
{
  if (abstime_to_ns_have_factor != -1)
  {
    abstime_to_msec_diff_cold_1();
  }

  return *&abstime_to_ns_to_ns_factor * a1 / 1000000.0;
}

uint64_t walkargstr(char *a1, int a2, uint64_t a3)
{
  __stringp = a1;
  if (!a1)
  {
    return 108;
  }

  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  while (1)
  {
    v5 = strsep(&__stringp, " \t");
    if (v5)
    {
      if (*v5)
      {
        v6 = (*(a3 + 16))(a3, v5);
        if (v6)
        {
          break;
        }
      }
    }

    if (!__stringp)
    {
      v7 = 0;
      if (!v4)
      {
        return v7;
      }

      goto LABEL_13;
    }
  }

  v7 = v6;
  if (!v4)
  {
    return v7;
  }

LABEL_13:
  free(v4);
  return v7;
}

uint64_t pc_errnum_to_excode(int a1)
{
  if (a1 > 21)
  {
    if (a1 > 83)
    {
      if (a1 != 84)
      {
        if (a1 == 93)
        {
          return 78;
        }

        if (a1 == 149)
        {
          return 42;
        }

        return 71;
      }
    }

    else if (a1 != 22)
    {
      if (a1 != 34)
      {
        if (a1 == 79)
        {
          return 65;
        }

        return 71;
      }

      return 70;
    }

    return 64;
  }

  result = 77;
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0;
    }

    if (a1 != 1)
    {
      return 71;
    }
  }

  else
  {
    if (a1 == 2)
    {
      return 66;
    }

    if (a1 != 13)
    {
      if (a1 != 14)
      {
        return 71;
      }

      return 70;
    }
  }

  return result;
}

uint64_t _printDummyGraph(int a1, double *a2, int a3, int a4, double a5, double a6)
{
  v28 = *MEMORY[0x29EDCA608];
  v11 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%*s", a1, " ");
  if (a5 != 0.0 || a6 != 0.0)
  {
    if (a5 == a6 && a3 != 0)
    {
      fprintf(*v11, " 0 : ____________________* %.0f ", a5);
      if (a4)
      {
        fwrite("  <-- out of spec", 0x11uLL, 1uLL, *v11);
      }

      fputc(10, *v11);
      v12 = "     ____________________B     ";
      goto LABEL_17;
    }

    if (a5 < a6)
    {
      v14 = -1;
    }

    else
    {
      v14 = a5 > a6;
    }

    if (a5 >= 0.0)
    {
      if (a5 <= 0.0)
      {
        v15 = "(bug)";
        if (a5 > a6)
        {
          v15 = ": 0 ";
        }

        if (a5 < a6)
        {
          v15 = " 0 :";
        }
      }

      else
      {
        v15 = " >0 ";
      }
    }

    else
    {
      v15 = " <0 ";
    }

    if (a6 >= 0.0)
    {
      if (a6 <= 0.0)
      {
        v17 = "(bug)";
        if (a5 > a6)
        {
          v17 = " 0 :";
        }

        if (a5 < a6)
        {
          v17 = ": 0 ";
        }
      }

      else
      {
        v17 = " >0 ";
      }
    }

    else
    {
      v17 = " <0 ";
    }

    if (v14 == -1)
    {
      fprintf(*v11, "%4s *____________________ %4s", v15, v17);
      v22 = "     ____________________B     ";
    }

    else
    {
      if (!v14)
      {
        v18 = *a2;
        v19 = a2[4];
        fprintf(*v11, "%4s __________*__________ %4s", "-10%", "+10%");
        v20 = 95;
        v21 = 93;
        if (v19 == 0.0)
        {
          v21 = 95;
        }

        if (v18 != 0.0)
        {
          v20 = 91;
        }

        snprintf(__str, 0x20uLL, "     %c_________B_________%c     ", v20, v21);
        if (!a4)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      fprintf(*v11, "%4s ____________________* %4s", v17, v15);
      v22 = "     B____________________     ";
    }

    v23 = *(v22 + 1);
    *__str = *v22;
    v27 = v23;
    if (!a4)
    {
LABEL_44:
      fputc(10, *v11);
      goto LABEL_45;
    }

LABEL_43:
    fwrite("  <-- out of spec", 0x11uLL, 1uLL, *v11);
    goto LABEL_44;
  }

  fwrite(" 0 : *____________________ n/a ", 0x1FuLL, 1uLL, *v11);
  fputc(10, *v11);
  v12 = "     B____________________     ";
LABEL_17:
  v16 = *(v12 + 1);
  *__str = *v12;
  v27 = v16;
LABEL_45:
  result = fprintf(*v11, "%*s", 61, __str);
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __print_metric_value_block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  v5 = MEMORY[0x29EDCA610];
  v6 = *MEMORY[0x29EDCA610];
  if (v4)
  {
    return fprintf(v6, "%*s", 61, a2);
  }

  fprintf(v6, "%*s%s", *(a1 + 40), " ", a2);
  if (*(a1 + 44) == 1)
  {
    fputs("  <-- out of spec", *v5);
  }

  v8 = *v5;

  return fputc(10, v8);
}

uint64_t pc_print_ep_usage(const char *a1, FILE *a2)
{
  v4 = getprogname();
  v5 = getprogname();
  return fprintf(a2, "%s\n       -h, --help                         Print this message\n       -p, --process <pid | pname>        Measure a process\n       -c, --command <cmd> [<args> ...]   Run <cmd>, measuring it if no -p\n\n       -b, --compare <prevGM.epb>         Compare to baseline\n       -t, --test-name <name>             Use <name> within baseline\n\n       -s, --sleep <secs>                 Measure over given period\n       -i, --interact                     Measure until interrupt\n'man %s' for details and more options\n('xcrun -sdk %s man %s' if SDK is newer than main OS)\n", a1, v4, "macosx10.15internal", v5);
}

uint64_t pc_handle_ep_help_args(int a1, const char **a2, const char *a3, char *a4)
{
  if (a1 < 1)
  {
    return 0;
  }

  v8 = a1;
  while (1)
  {
    v9 = *a2;
    if (**a2 != 45)
    {
      if (!strcasecmp(*a2, "-command"))
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (v9[1] == 45)
    {
      ++v9;
    }

    if (v9[1] == 99 && !v9[2] || !strcasecmp(v9, "-command"))
    {
      goto LABEL_15;
    }

    if (v9[1] == 104 && !v9[2])
    {
      break;
    }

LABEL_13:
    if (!strcasecmp(v9, "-help"))
    {
      break;
    }

    ++a2;
    if (!--v8)
    {
LABEL_15:
      if (a1 != 1)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      pc_print_ep_usage(a3, *MEMORY[0x29EDCA620]);
      if (!a4)
      {
        return 1;
      }

      v11 = 0;
      goto LABEL_25;
    }

    warnx("ignoring extra argument with %s", *a2);
  }

LABEL_23:
  pc_print_ep_usage(a3, *MEMORY[0x29EDCA610]);
  if (!a4)
  {
    return 1;
  }

  v11 = 64;
LABEL_25:
  *a4 = v11;
  return 1;
}

uint64_t pc_session_config_with_ep_args(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  v8 = getenv("PERFCHECK_TESTING");
  v66 = v8 != 0;
  v9 = a3;
  if (v8)
  {
    v10 = malloc_type_calloc(a2, 8uLL, 0x10040436913F5uLL);
    if (!v10)
    {
      return *__error();
    }

    v9 = v10;
    if (a2 < 1)
    {
      goto LABEL_164;
    }

    v11 = 0;
    do
    {
      v12 = strdup(a3[v11]);
      v9[v11] = v12;
      if (!v12)
      {
        v14 = 0;
        v60 = *__error();
        goto LABEL_208;
      }

      ++v11;
    }

    while (a2 != v11);
  }

  if (a2 < 1)
  {
LABEL_164:
    LODWORD(v13) = 0;
LABEL_165:
    if (a4)
    {
LABEL_166:
      *a4 = v13;
    }

    goto LABEL_167;
  }

  LODWORD(v13) = 0;
  while (1)
  {
    v14 = v9[v13];
    if (!v14)
    {
      goto LABEL_206;
    }

    v15 = v13;
    v16 = *v14;
    if (v16 == 45)
    {
      break;
    }

    if (!strcasecmp(v9[v13], "-process"))
    {
      goto LABEL_46;
    }

    if (!strcasecmp(v14, "-command"))
    {
      goto LABEL_181;
    }

    if (!strcasecmp(v14, "-compare"))
    {
LABEL_50:
      v13 = v13 + 1;
      if (v15 + 1 >= a2)
      {
        goto LABEL_196;
      }

      v19 = v9[v13];
      if (*v19 == 45)
      {
        if (v19[1])
        {
          goto LABEL_227;
        }
      }

      else if (!*v19)
      {
        goto LABEL_184;
      }

      if (*(a1 + 80))
      {
        if ((*(a1 + 184) & 1) == 0)
        {
          v62 = v9[v13];
          warnx("%s: ignoring additional baseline");
        }

        goto LABEL_124;
      }

      v21 = pc_session_set_baseline_file(a1, v9[v13]);
      if (v21)
      {
        goto LABEL_180;
      }

      if (!*(a1 + 96) || (*(a1 + 184) & 1) != 0)
      {
        goto LABEL_124;
      }

      v63 = *(a1 + 80);
LABEL_146:
      warnx("%s: overrides any project '%s' baselines");
      goto LABEL_124;
    }

    v17 = v14;
LABEL_30:
    if (!strcasecmp(v17, "-threshold"))
    {
      goto LABEL_62;
    }

    if (!strcasecmp(v17, "-record"))
    {
      v13 = v13 + 1;
      if (v15 + 1 >= a2)
      {
        goto LABEL_196;
      }

      v19 = v9[v13];
      v32 = *v19;
      if (v32 == 45)
      {
        if (v19[1])
        {
          goto LABEL_227;
        }
      }

      else if (!*v19)
      {
        goto LABEL_184;
      }

      if (*(a1 + 88))
      {
        goto LABEL_199;
      }

      if (*(a1 + 96))
      {
        goto LABEL_194;
      }

      if (v32 == 45 && !v19[1])
      {
        v19 = "/dev/stdout";
      }

      session_set_record_path(a1, v19);
      goto LABEL_124;
    }

    if (v16 == 45 && v17[1] == 116 && !v17[2] || !strcasecmp(v17, "-test-name"))
    {
      __endptr = 0;
      v22 = v13 + 1;
      if (v13 + 1 >= a2)
      {
        goto LABEL_196;
      }

      v19 = v9[v22];
      if (*v19 == 45)
      {
        if (v19[1])
        {
          goto LABEL_227;
        }
      }

      else if (!*v19)
      {
        goto LABEL_184;
      }

      if (*(a1 + 104))
      {
        goto LABEL_199;
      }

      v35 = strdup(v9[v22]);
      v14 = v35;
      if (!v35)
      {
        v60 = *__error();
        goto LABEL_207;
      }

      v36 = strchr(v35, 44);
      if (v36 && (v37 = v36, v39 = v36[1], v38 = v36 + 1, v39))
      {
        v40 = strtol(v38, &__endptr, 10);
        if (v40)
        {
          if (*__endptr)
          {
            goto LABEL_121;
          }

          *v37 = 0;
        }
      }

      else
      {
LABEL_121:
        v40 = 0;
      }

      v41 = pc_session_set_testid(a1, 0, v14, v40);
      if (v41)
      {
        v60 = v41;
        warnx("couldn't set test name");
        goto LABEL_207;
      }

LABEL_123:
      free(v14);
      LODWORD(v13) = v22;
      goto LABEL_124;
    }

    if (!strcasecmp(v17, "-project-baseline"))
    {
      goto LABEL_110;
    }

    if (v16 == 45)
    {
      if (v17[1] != 80 || v17[2])
      {
        if (v17[1] == 115 && !v17[2] || !strcasecmp(v17, "-sleep"))
        {
LABEL_135:
          v45 = v13 + 1;
          if (v13 + 1 >= a2)
          {
            goto LABEL_196;
          }

          v19 = v9[v45];
          if (*v19 == 45)
          {
            if (v19[1])
            {
              goto LABEL_227;
            }
          }

          else if (!*v19)
          {
            goto LABEL_184;
          }

          if (*(a1 + 68))
          {
            goto LABEL_199;
          }

          v47 = strtol(v9[v45], 0, 10);
          *(a1 + 68) = v47;
          LODWORD(v13) = v13 + 1;
          if (!v47)
          {
            v59 = v9[v45];
            warnx("invalid sleep interval '%s'");
            goto LABEL_205;
          }

          goto LABEL_124;
        }

        if (v17[1] == 105 && !v17[2])
        {
LABEL_147:
          if (*(a1 + 72) == 1)
          {
            goto LABEL_199;
          }

          *(a1 + 72) = 1;
          goto LABEL_124;
        }

        goto LABEL_127;
      }

LABEL_110:
      v13 = v13 + 1;
      if (v15 + 1 >= a2)
      {
        goto LABEL_196;
      }

      v19 = v9[v13];
      if (*v19 == 45)
      {
        if (v19[1])
        {
          goto LABEL_227;
        }
      }

      else if (!*v19)
      {
        goto LABEL_184;
      }

      if (*(a1 + 96))
      {
        goto LABEL_199;
      }

      if (*(a1 + 88))
      {
        goto LABEL_194;
      }

      v46 = pc_session_set_project_baseline(a1, v9[v13]);
      if (!v46)
      {
        if (!*(a1 + 80) || (*(a1 + 184) & 1) != 0)
        {
          goto LABEL_124;
        }

        v64 = *(a1 + 80);
        v65 = *(a1 + 96);
        goto LABEL_146;
      }

      v60 = v46;
      warnx("couldn't set project name");
LABEL_188:
      v14 = 0;
      goto LABEL_207;
    }

    if (!strcasecmp(v17, "-sleep"))
    {
      goto LABEL_135;
    }

LABEL_127:
    if (!strcasecmp(v17, "-interact"))
    {
      goto LABEL_147;
    }

    if (!strcasecmp(v17, "-perfdata"))
    {
      v13 = v13 + 1;
      if (v15 + 1 >= a2)
      {
        goto LABEL_196;
      }

      v19 = v9[v13];
      if (*v19 == 45)
      {
        if (v19[1])
        {
LABEL_227:
          warnx("%s argument '%s' looks like another flag", v14, v19);
          fprintf(*MEMORY[0x29EDCA610], "          (use ./%s for a filename)\n", v19);
          goto LABEL_205;
        }

        if (*(a1 + 176))
        {
          goto LABEL_199;
        }

        if (!v19[1])
        {
          v19 = "/dev/stdout";
        }
      }

      else
      {
        if (!*v19)
        {
          goto LABEL_184;
        }

        if (*(a1 + 176))
        {
          goto LABEL_199;
        }
      }

      pc_session_set_perfdata_file(a1, v19);
    }

    else
    {
      if (strcasecmp(v17, "-failtracer"))
      {
        goto LABEL_165;
      }

      v42 = *(a1 + 184);
      if (v42)
      {
        goto LABEL_199;
      }

      *(a1 + 184) = v42 | 1;
      v43 = v9[v13 + 1];
      if (v43)
      {
        if (*v43 != 45)
        {
          v44 = pc_session_set_failtracer_file(a1, v9[v13 + 1]);
          LODWORD(v13) = v13 + 1;
          if (v44)
          {
            v60 = v44;
            warnc(v44, "%s");
            goto LABEL_188;
          }
        }
      }
    }

LABEL_124:
    LODWORD(v13) = v13 + 1;
    if (v13 >= a2)
    {
      goto LABEL_165;
    }
  }

  if (v14[1] == 45)
  {
    v17 = v14 + 1;
  }

  else
  {
    v17 = v9[v13];
  }

  if (v17[1] == 112 && !v17[2] || !strcasecmp(v17, "-process"))
  {
LABEL_46:
    __endptr = 0;
    v13 = v13 + 1;
    if (v15 + 1 >= a2)
    {
      warnx("%s requires an argument");
      goto LABEL_228;
    }

    v18 = v9[v13];
    if (*v18 == 45)
    {
      if (*(v18 + 1))
      {
        warnx("%s argument '%s' looks like another flag", v14, v18);
        fprintf(*MEMORY[0x29EDCA610], "          (use ./%s for a filename)\n", v18);
        goto LABEL_228;
      }
    }

    else if (!*v18)
    {
      warnx("empty argument to %s");
      goto LABEL_228;
    }

    if (*(a1 + 12) == -1 && !*(a1 + 16))
    {
      v20 = strtol(v9[v13], &__endptr, 10);
      if (*__endptr)
      {
        v21 = pc_session_set_procname(a1, v18);
        if (v21)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v21 = pc_session_set_procpid(a1, v20);
        if (v21)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_124;
    }

    warnx("%s already specified");
LABEL_228:
    v60 = 22;
    goto LABEL_188;
  }

  if (v17[1] == 99 && !v17[2] || !strcasecmp(v17, "-command"))
  {
LABEL_181:
    if (a2 <= v13 + 1)
    {
LABEL_196:
      warnx("%s requires an argument");
      goto LABEL_205;
    }

    v50 = &v9[v13 + 1];
    v51 = *v50;
    if (**v50 == 45)
    {
      if (v51[1])
      {
        warnx("%s argument '%s' looks like another flag", v14, v51);
        fprintf(*MEMORY[0x29EDCA610], "          (use ./%s for a filename)\n", v51);
        goto LABEL_205;
      }
    }

    else if (!**v50)
    {
LABEL_184:
      warnx("empty argument to %s");
      goto LABEL_205;
    }

    if (*(a1 + 56))
    {
LABEL_199:
      warnx("%s already specified");
      goto LABEL_205;
    }

    v52 = pc_session_set_exeargs(a1, a2 - (v13 + 1), v50);
    if (v52)
    {
      v60 = v52;
      warnx("couldn't copy arguments");
      goto LABEL_188;
    }

    LODWORD(v13) = a2;
    if (a4)
    {
      goto LABEL_166;
    }

LABEL_167:
    if (*(a1 + 80) && *(a1 + 88))
    {
LABEL_194:
      warnx("--record incompatible with --compare and --project-baseline", v61);
      goto LABEL_205;
    }

    if (!*(a1 + 56))
    {
      v48 = *(a1 + 72);
      if (*(a1 + 68))
      {
        if (*(a1 + 72))
        {
          warnx("pass exactly one of --sleep or --interact", v61);
          goto LABEL_205;
        }

        if (!*(a1 + 16))
        {
          warnx("--sleep requires --process", v61);
LABEL_205:
          v14 = 0;
          goto LABEL_206;
        }
      }

      else
      {
        v49 = *(a1 + 16);
        if (!*(a1 + 72))
        {
          if (*(a1 + 16) && *(a1 + 12) == -1)
          {
            v60 = 3;
            warnc(3, "%s");
            goto LABEL_188;
          }

          goto LABEL_187;
        }

        if (!*(a1 + 16))
        {
          warnx("--interact requires --process");
          goto LABEL_205;
        }
      }
    }

    if (*(a1 + 12) != -1)
    {
      v21 = pc_session_add_metric(a1, 0x7065616B646C7461);
      if (v21)
      {
LABEL_180:
        v60 = v21;
        goto LABEL_188;
      }
    }

LABEL_187:
    v60 = 0;
    goto LABEL_188;
  }

  if (v17[1] == 98 && !v17[2] || !strcasecmp(v17, "-compare"))
  {
    goto LABEL_50;
  }

  if (v17[1] != 84 || v17[2])
  {
    goto LABEL_30;
  }

LABEL_62:
  __endptr = 0;
  v22 = v13 + 1;
  if (v13 + 1 >= a2)
  {
    goto LABEL_196;
  }

  v19 = v9[v22];
  if (*v19 == 45)
  {
    if (v19[1])
    {
      goto LABEL_227;
    }
  }

  else if (!*v19)
  {
    goto LABEL_184;
  }

  v14 = strdup(v9[v22]);
  v23 = strchr(v14, 61);
  if (!v23)
  {
    goto LABEL_202;
  }

  v24 = v23;
  v27 = v23[1];
  v25 = v23 + 1;
  v26 = v27;
  *v24 = 0;
  if (v27 == 43)
  {
    LOBYTE(v26) = v24[2];
    v28 = 1;
    v25 = v24 + 2;
  }

  else
  {
    if (!v26)
    {
      goto LABEL_202;
    }

    v28 = 0;
  }

  if ((v26 - 48) > 9)
  {
LABEL_202:
    warnx("-%s <metric>=[+]<thresh>[%%]");
    goto LABEL_206;
  }

  v29 = strtol(v25, &__endptr, 0);
  if (*__endptr)
  {
    if (*__endptr == 37)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_202;
    }

    v31 = 98307;
  }

  else if (v28)
  {
    v31 = 32771;
  }

  else
  {
    v31 = 3;
  }

  metricid_name = get_metricid_name(a1, v14);
  if (metricid_name)
  {
    v34 = pc_session_set_threshold(a1, metricid_name, v31, v29);
    if (v34)
    {
      v60 = v34;
      goto LABEL_207;
    }

    LODWORD(v13) = v22;
    if (v14)
    {
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  warnx("unknown metric '%s'");
LABEL_206:
  v60 = 22;
LABEL_207:
  if (v66)
  {
LABEL_208:
    if (v9)
    {
      if (a2 >= 1)
      {
        v53 = 0;
        do
        {
          v54 = v9[v53];
          if (v54)
          {
            v55 = a3[v53];
            if (strcmp(v9[v53], v55))
            {
              warnx("pc_session_config_with_ep_args changed arg '%s' to '%s'", v55, v54);
              if (v60)
              {
                v60 = v60;
              }

              else
              {
                v60 = 14;
              }
            }

            if (*v54)
            {
              v56 = (v54 + 1);
              do
              {
                *(v56 - 1) = 0;
              }

              while (*v56++);
            }

            free(v9[v53]);
          }

          ++v53;
        }

        while (v53 != a2);
      }

      free(v9);
    }
  }

  if (v14)
  {
    free(v14);
  }

  return v60;
}

uint64_t run_easyperf(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 22;
  if (!a1 || !a2)
  {
    return v2;
  }

  *a2 = 0;
  v5 = (a1 + 16);
  if (!*(a1 + 16) && *(a1 + 12) == -1)
  {
    v8 = 0;
    v7 = v24;
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 0x40000000;
    v24[2] = __run_easyperf_block_invoke;
    v24[3] = &__block_descriptor_tmp_73;
    v24[4] = a1;
  }

  else
  {
    v6 = pc_session_begin(a1);
    if (v6)
    {
      return v6;
    }

    v7 = 0;
    v8 = 1;
  }

  v9 = *(a1 + 56);
  if (!v9)
  {
    v18 = *(a1 + 68);
    if (!v18)
    {
      if (*(a1 + 72) != 1)
      {
        if (*(a1 + 12) == -1)
        {
          warnx("nothing to measure");
          return v2;
        }

        goto LABEL_44;
      }

      still_running = 1;
      signal(2, _easyperf_sigint_handler);
      while (still_running)
      {
        pause();
      }

      putchar(10);
      if (!v8)
      {
LABEL_44:
        v6 = pc_session_process(a1);
        if (v6)
        {
          return v6;
        }

        if (*a2 && (*(a1 + 184) & 1) == 0)
        {
          warnx("Warning: '%s' failed with exit code %d");
        }

        return 0;
      }

LABEL_26:
      v19 = pc_session_end(a1);
      if (v19)
      {
        v2 = v19;
        if (v19 == 3)
        {
          if (*(a1 + 8) < 1)
          {
            return 3;
          }

          else
          {
            v20 = 0;
            v21 = 8;
            v22 = 16;
            do
            {
              if (*(a1 + 4 * v20 + 12) == -1)
              {
                strerror(3);
                warnx("%s: %s");
              }

              else if (*(*(a1 + 200) + v21) == -1)
              {
                warnx("%s[%d] disappeared");
              }

              ++v20;
              v21 += 56;
              v22 += 33;
              v2 = 3;
            }

            while (v20 < *(a1 + 8));
          }
        }

        return v2;
      }

      goto LABEL_44;
    }

    sleep(v18);
LABEL_25:
    if (!v8)
    {
      goto LABEL_44;
    }

    goto LABEL_26;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 108;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = -1;
  v10 = dispatch_semaphore_create(0);
  if (v10)
  {
    v11 = v10;
    v12 = dispatch_semaphore_create(0);
    if (v12)
    {
      v13 = v12;
      global_queue = dispatch_get_global_queue(0, 0);
      if (global_queue)
      {
        v15 = dispatch_source_create(MEMORY[0x29EDCA5C0], 0x14uLL, 0, global_queue);
        if (v15)
        {
          v16 = v15;
          handler[0] = MEMORY[0x29EDCA5F8];
          handler[1] = 0x40000000;
          handler[2] = ___spawnAndAtCHLD_block_invoke;
          handler[3] = &unk_29EF6D680;
          handler[4] = v7;
          handler[5] = &v30;
          handler[6] = &v26;
          handler[7] = v11;
          handler[8] = a2;
          handler[9] = v13;
          dispatch_source_set_event_handler(v15, handler);
          dispatch_activate(v16);
          v17 = posix_spawnp(v27 + 6, *v9, 0, 0, v9, *MEMORY[0x29EDCA5E8]);
          *(v31 + 6) = v17;
          if (v17)
          {
            warnc(v17, "%s", *v9);
            *a2 = pc_errnum_to_excode(*(v31 + 6));
          }

          else
          {
            dispatch_semaphore_signal(v11);
            dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          }

          dispatch_release(v16);
        }
      }

      dispatch_release(v13);
    }

    dispatch_release(v11);
  }

  v2 = *(v31 + 6);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  if (!v2)
  {
    if ((*(a1 + 184) & 1) != 0 && *a2)
    {
      warnx("'%s' failed with exit code %d", v5, *a2);
      warnx("-%s hides failed commands' resource consumption");
      return 0;
    }

    goto LABEL_25;
  }

  return v2;
}

uint64_t __run_easyperf_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  *(v3 + 12) = a2;
  result = pc_session_set_procname(v3, **(v3 + 56));
  if (!result)
  {
    v5 = *(a1 + 32);

    return pc_session_begin(v5);
  }

  return result;
}

uint64_t ep_session_config_with_argstr(char **a1, char *a2, uint64_t a3, _DWORD *a4)
{
  v5 = pc_session_config_with_ep_argstr(a1, a2);
  v6 = v5;
  if (a4)
  {
    *a4 = pc_errnum_to_excode(v5);
  }

  return v6;
}

uint64_t ep_session_process(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = pc_session_process(a1);
  v6 = v5;
  if (a4)
  {
    *a4 = pc_errnum_to_excode(v5);
  }

  return v6;
}

intptr_t ___spawnAndAtCHLD_block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = (*(v2 + 16))(v2, *(*(*(a1 + 48) + 8) + 24));
  }

  v5 = 0;
  v3 = waitpid(*(*(*(a1 + 48) + 8) + 24), &v5, 0);
  if (v3 == *(*(*(a1 + 48) + 8) + 24))
  {
    if ((v5 & 0x7F) != 0)
    {
      if ((v5 & 0x7F) == 0x7F)
      {
        warnx("%d has not yet exited or been signaled", v3);
        *(*(*(a1 + 40) + 8) + 24) = 67;
      }

      else
      {
        **(a1 + 64) = 69;
      }
    }

    else
    {
      **(a1 + 64) = BYTE1(v5);
    }
  }

  else
  {
    warn("Warning: waitpid(%d)", *(*(*(a1 + 48) + 8) + 24));
  }

  return dispatch_semaphore_signal(*(a1 + 72));
}

__CFDictionary *create_dict_epmeas(void *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9018], MEMORY[0x29EDB9028]);
  if (!Mutable)
  {
    return Mutable;
  }

  valuePtr = 0;
  v3 = a1[24];
  if (v3 == 0x6D656D64656C7461)
  {
    v4 = 2;
    goto LABEL_6;
  }

  if (v3 == 0x6375726D656D0000)
  {
    v4 = 1;
LABEL_6:
    valuePtr = v4;
  }

  v5 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  CFDictionarySetValue(Mutable, @"Run_mode", v5);
  CFRelease(v5);
  v17 = a1[11];
  v6 = CFNumberCreate(0, kCFNumberDoubleType, &v17);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  CFDictionarySetValue(Mutable, @"cpu_time", v6);
  CFRelease(v7);
  v17 = a1[23];
  v8 = CFNumberCreate(0, kCFNumberDoubleType, &v17);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  CFDictionarySetValue(Mutable, @"Cpu_instructions", v8);
  CFRelease(v9);
  v17 = a1[35];
  v10 = CFNumberCreate(0, kCFNumberDoubleType, &v17);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  CFDictionarySetValue(Mutable, @"Phys_footprint", v10);
  CFRelease(v11);
  v17 = a1[47];
  v12 = CFNumberCreate(0, kCFNumberDoubleType, &v17);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  CFDictionarySetValue(Mutable, @"Peak_phys_footprint", v12);
  CFRelease(v13);
  v17 = a1[59];
  v14 = CFNumberCreate(0, kCFNumberDoubleType, &v17);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(Mutable, @"Logical_writes", v14);
    CFRelease(v15);
  }

  else
  {
LABEL_13:
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void *create_meas_epbfile(const char *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v48 = 0;
  v46 = -1;
  if (!a1)
  {
    v16 = 0;
    v17 = 22;
    goto LABEL_10;
  }

  v47 = 0;
  *&theDict = 0.0;
  valuePtr = 0.0;
  TypeID = CFDictionaryGetTypeID();
  v9 = createCFObjFromFile(a1, TypeID, &theDict);
  v48 = v9;
  if (v9)
  {
    warnc(v9, "%s", a1);
    v14 = 0;
    v13 = 0;
  }

  else
  {
    Value = CFDictionaryGetValue(theDict, @"version");
    if (Value)
    {
      v11 = CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      v12 = valuePtr;
      if (v11 && valuePtr == 0.625)
      {
        if (a2)
        {
          v13 = CFStringCreateWithCString(0, a2, 0x8000100u);
          if (!v13)
          {
            v14 = 0;
            v15 = 12;
LABEL_17:
            v48 = v15;
            goto LABEL_21;
          }
        }

        else
        {
          v13 = CFRetain(@"_Easyperf_Default_");
        }

        v18 = CFDictionaryGetValue(theDict, v13);
        v14 = v18;
        if (!v18)
        {
          v48 = 0;
          goto LABEL_21;
        }

        v19 = CFGetTypeID(v18);
        if (v19 == CFArrayGetTypeID())
        {
          CFRetain(v14);
          goto LABEL_21;
        }

        v14 = 0;
        v15 = 79;
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0.0;
    }

    warnc(79, "%s: version %g baselines not supported", a1, v12);
    v14 = 0;
    v13 = 0;
    v48 = 79;
  }

LABEL_21:
  if (*&theDict != 0.0)
  {
    CFRelease(theDict);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!v14)
  {
    if (v48)
    {
LABEL_42:
      v16 = 0;
      goto LABEL_43;
    }

    if (a2)
    {
      warnx("%s: no baseline for '%s'");
    }

    else
    {
      warnx("%s: no baseline for unspecified test name");
    }

    v16 = 0;
    v17 = 93;
LABEL_10:
    v48 = v17;
    goto LABEL_43;
  }

  v20 = copyHardwareModel(&v48);
  if (!v20)
  {
    warnx("couldn't get device model");
    CFRelease(v14);
    goto LABEL_42;
  }

  v21 = v20;
  results_for_device = _get_results_for_device(v14, v20, &v46, &v48);
  if (results_for_device)
  {
    v23 = CFDictionaryGetValue(results_for_device, @"ep_metrics");
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFDictionaryGetTypeID())
      {
        v26 = create_epmetrics(&v47, &v48);
        v27 = v26;
        if (v26)
        {
          v28 = create_meas_metrics(v26, v47, &v48);
          if (v28)
          {
            if (v47 < 5)
            {
              v29 = 22;
LABEL_78:
              v16 = 0;
              goto LABEL_35;
            }

            if (CFDictionaryContainsKey(v24, @"cpu_time"))
            {
              v32 = CFDictionaryGetValue(v24, @"cpu_time");
              v33 = CFGetTypeID(v32);
              if (v33 != CFNumberGetTypeID())
              {
                goto LABEL_77;
              }

              CFNumberGetValue(v32, kCFNumberDoubleType, v28 + 11);
            }

            if (CFDictionaryContainsKey(v24, @"Cpu_instructions"))
            {
              v34 = CFDictionaryGetValue(v24, @"Cpu_instructions");
              v35 = CFGetTypeID(v34);
              if (v35 != CFNumberGetTypeID())
              {
                goto LABEL_77;
              }

              CFNumberGetValue(v34, kCFNumberDoubleType, v28 + 23);
            }

            if (CFDictionaryContainsKey(v24, @"Phys_footprint"))
            {
              v36 = CFDictionaryGetValue(v24, @"Phys_footprint");
              v37 = CFGetTypeID(v36);
              if (v37 != CFNumberGetTypeID())
              {
                goto LABEL_77;
              }

              CFNumberGetValue(v36, kCFNumberDoubleType, v28 + 35);
            }

            if (CFDictionaryContainsKey(v24, @"Peak_phys_footprint"))
            {
              v38 = CFDictionaryGetValue(v24, @"Peak_phys_footprint");
              v39 = CFGetTypeID(v38);
              if (v39 != CFNumberGetTypeID())
              {
                goto LABEL_77;
              }

              CFNumberGetValue(v38, kCFNumberDoubleType, v28 + 47);
            }

            *&theDict = 0.0;
            v40 = CFDictionaryGetValue(v24, @"Run_mode");
            v41 = CFGetTypeID(v40);
            if (v41 != CFNumberGetTypeID())
            {
              goto LABEL_77;
            }

            CFNumberGetValue(v40, kCFNumberDoubleType, &theDict);
            if (*&theDict == 1.0)
            {
              v42 = 0x6375726D656D0000;
              v43 = "current_mem";
            }

            else
            {
              if (*&theDict != 2.0)
              {
                v28[24] = 0;
                goto LABEL_73;
              }

              v42 = 0x6D656D64656C7461;
              v43 = "mem_delta";
            }

            v28[24] = v42;
            v28[25] = v43;
LABEL_73:
            if (!CFDictionaryContainsKey(v24, @"Logical_writes"))
            {
LABEL_76:
              *a3 = v47;
              v48 = 0;
              v16 = v28;
              goto LABEL_36;
            }

            v44 = CFDictionaryGetValue(v24, @"Logical_writes");
            v45 = CFGetTypeID(v44);
            if (v45 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v44, kCFNumberDoubleType, v28 + 59);
              goto LABEL_76;
            }

LABEL_77:
            v29 = 79;
            goto LABEL_78;
          }
        }

        else
        {
          v28 = 0;
        }

        v16 = 0;
        goto LABEL_36;
      }
    }

    v28 = 0;
    v16 = 0;
    v27 = 0;
    v29 = 79;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
    warnx("%s: no baseline for current system model", CStringPtr);
    v28 = 0;
    v16 = 0;
    v27 = 0;
    v29 = 93;
  }

LABEL_35:
  v48 = v29;
LABEL_36:
  CFRelease(v21);
  CFRelease(v14);
  if (v27)
  {
    free(v27);
  }

  if (v28 && !v16)
  {
    free(v28);
  }

LABEL_43:
  if (a4 && v48)
  {
    *a4 = v48;
  }

  return v16;
}

const __CFDictionary *_get_results_for_device(const __CFArray *a1, const __CFString *a2, CFIndex *a3, int *a4)
{
  Count = CFArrayGetCount(a1);
  if (!a3 || !a4)
  {
    if (a4)
    {
      v13 = 0;
      v21 = 22;
LABEL_19:
      *a4 = v21;
      return v13;
    }

    return 0;
  }

  v9 = Count;
  if (Count < 1)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    v11 = CFGetTypeID(a1);
    if (v11 != CFArrayGetTypeID())
    {
      goto LABEL_18;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    if (!ValueAtIndex)
    {
      goto LABEL_18;
    }

    v13 = ValueAtIndex;
    v14 = CFGetTypeID(ValueAtIndex);
    if (v14 != CFDictionaryGetTypeID() || (Value = CFDictionaryGetValue(v13, @"device_config")) == 0 || (v16 = Value, v17 = CFGetTypeID(Value), v17 != CFDictionaryGetTypeID()) || (v18 = CFDictionaryGetValue(v16, @"model")) == 0 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFStringGetTypeID()))
    {
LABEL_18:
      v13 = 0;
      v21 = 79;
      goto LABEL_19;
    }

    if (CFStringCompare(v19, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  *a3 = v10;
  return v13;
}

uint64_t record_basemeas(void *a1, const char *a2, const char *a3)
{
  valuePtr = 1059061760;
  v33 = 108;
  theDict = 0;
  idx = -1;
  v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = CFStringCreateWithCString(0, a3, 0x8000100u);
      if (!v8)
      {
        v33 = 12;
LABEL_42:
        CFRelease(v7);
        return v33;
      }
    }

    else
    {
      v8 = CFRetain(@"_Easyperf_Default_");
    }

    v9 = copyHardwareModel(&v33);
    if (!v9)
    {
      warnx("couldn't get device model");
      if (!v8)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v10 = v9;
    dict_epmeas = create_dict_epmeas(a1);
    if (!dict_epmeas)
    {
      warnx("couldn't create the metrics dictionary\n");
      v33 = 12;
      goto LABEL_40;
    }

    v12 = dict_epmeas;
    TypeID = CFDictionaryGetTypeID();
    v14 = createCFObjFromFile(a2, TypeID, &theDict);
    v33 = v14;
    if (v14 == 2)
    {
      theDict = CFDictionaryCreateMutable(0, 5, MEMORY[0x29EDB9018], MEMORY[0x29EDB9028]);
      if (!theDict)
      {
        v23 = 0;
        Mutable = 0;
        goto LABEL_27;
      }

      v23 = 1;
    }

    else
    {
      if (v14)
      {
        warnc(v14, "%s", a2);
        v23 = 0;
        Mutable = 0;
        v22 = 0;
        goto LABEL_29;
      }

      Value = CFDictionaryGetValue(theDict, v8);
      if (Value)
      {
        Mutable = Value;
        v17 = CFGetTypeID(Value);
        if (v17 == CFArrayGetTypeID())
        {
          results_for_device = _get_results_for_device(Mutable, v10, &idx, &v33);
          if (results_for_device)
          {
            v19 = results_for_device;
            CFDictionarySetValue(results_for_device, @"ep_metrics", v12);
            CFArraySetValueAtIndex(Mutable, idx, v19);
            v20 = 0;
            v29 = 0;
            v21 = 0;
            v22 = 0;
            goto LABEL_22;
          }

          v23 = 0;
          v22 = 0;
          goto LABEL_19;
        }
      }

      v23 = 0;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9008]);
    if (Mutable)
    {
      v22 = 1;
LABEL_19:
      v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9018], MEMORY[0x29EDB9028]);
      if (v24)
      {
        v19 = v24;
        v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9018], MEMORY[0x29EDB9028]);
        if (!v25)
        {
          v33 = 12;
          v20 = v12;
          goto LABEL_31;
        }

        v20 = v25;
        v29 = v23;
        CFDictionarySetValue(theDict, @"version", v7);
        CFDictionarySetValue(v20, @"model", v10);
        CFDictionarySetValue(v19, @"device_config", v20);
        CFDictionarySetValue(v19, @"ep_metrics", v12);
        CFArrayAppendValue(Mutable, v19);
        CFDictionarySetValue(theDict, v8, Mutable);
        v21 = 1;
LABEL_22:
        v26 = writeCFObjToFile(theDict, a2, kCFPropertyListBinaryFormat_v1_0);
        v33 = v26;
        if (v26)
        {
          warnc(v26, "%s", a2);
          CFRelease(v12);
          if (v21)
          {
LABEL_24:
            v23 = v29;
            if (!v20)
            {
LABEL_32:
              CFRelease(v19);
              if (v22)
              {
                goto LABEL_33;
              }

              goto LABEL_35;
            }

LABEL_31:
            CFRelease(v20);
            goto LABEL_32;
          }
        }

        else
        {
          CFRelease(v12);
          if (v21)
          {
            goto LABEL_24;
          }
        }

        v23 = v29;
        if (v22)
        {
LABEL_33:
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

LABEL_35:
        if (theDict)
        {
          v27 = v23;
        }

        else
        {
          v27 = 0;
        }

        if (v27 == 1)
        {
          CFRelease(theDict);
        }

LABEL_40:
        CFRelease(v10);
        if (!v8)
        {
          goto LABEL_42;
        }

LABEL_41:
        CFRelease(v8);
        goto LABEL_42;
      }

      goto LABEL_28;
    }

LABEL_27:
    v22 = 0;
LABEL_28:
    v33 = 12;
LABEL_29:
    v19 = v12;
    goto LABEL_32;
  }

  warnx("couldn't create version number");
  return 12;
}

uint64_t pc_session_set_snapshots_bufs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = -2;
  if (!a2 || !a3)
  {
    v30 = 22;
    goto LABEL_6;
  }

  if (*(a1 + 192))
  {
    v30 = 37;
LABEL_7:
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    return v30;
  }

  v28 = 0;
  v29 = 0.0;
  v9 = snapshot_create_with_buf(a1, a2, a3, &v30);
  v10 = v9;
  if (v9)
  {
    *(a1 + 192) = v9;
    if (*v9 != 1)
    {
      v12 = 0;
      goto LABEL_25;
    }

    if (!a4)
    {
      v12 = 0;
      if (*(v9 + 12) >= 1)
      {
LABEL_31:
        v20 = 0;
        v21 = 0;
        do
        {
          v30 = add_metric(*(*(v10 + 7) + v20), (a1 + 120), (a1 + 128), a1);
          if (v30)
          {
            goto LABEL_27;
          }

          ++v21;
          v20 += 96;
        }

        while (v21 < *(v10 + 12));
      }

LABEL_34:
      if (*(a1 + 128) >= 1)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(a1 + 120);
          v25 = *(v24 + v22);
          if (a4 && v25 == 0x6375726D656D0000)
          {
            v26 = (v24 + v22);
            *v26 = 0x6D656D64656C7461;
            v26[1] = "mem_delta";
            v25 = 0x6D656D64656C7461;
          }

          value = pc_session_get_value(a1, 0, v25, &v29, &v28, 0);
          v30 = value;
          if (value)
          {
            if (value != 93)
            {
              goto LABEL_22;
            }

            v30 = 0;
            *(v24 + v22) = 0;
          }

          ++v23;
          v22 += 88;
        }

        while (v23 < *(a1 + 128));
      }

      if ((pc_session_get_value(a1, 0, 0x72636E747065616BLL, &v29, &v28, 0) || (v30 = add_metric(0x72636E747065616BLL, (a1 + 120), (a1 + 128), 0)) == 0) && (pc_session_get_value(a1, 0, 0x7065616B646C7461, &v29, &v28, 0) || (v30 = add_metric(0x7065616B646C7461, (a1 + 120), (a1 + 128), 0)) == 0))
      {
        *(a1 + 8) = *v10;
        __strlcpy_chk();
        *(a1 + 12) = -2;
        return 0;
      }

      goto LABEL_22;
    }

    v11 = snapshot_create_with_buf(a1, a4, a5, &v30);
    if (v11)
    {
      v12 = v11;
      *(a1 + 200) = v11;
      if (*v11 == *v10)
      {
        v13 = *(v11 + 12);
        if (v13 == *(v10 + 12))
        {
          if (v13 >= 1)
          {
            v14 = *(v11 + 7);
            v15 = *(v10 + 7);
            while (1)
            {
              v17 = *v14;
              v14 += 12;
              v16 = v17;
              v18 = *v15;
              v15 += 12;
              if (v16 != v18)
              {
                break;
              }

              if (!--v13)
              {
                goto LABEL_31;
              }
            }

            v19 = 22;
            goto LABEL_26;
          }

          goto LABEL_34;
        }
      }

LABEL_25:
      v19 = 84;
LABEL_26:
      v30 = v19;
      goto LABEL_27;
    }
  }

  if (!v30)
  {
    return v30;
  }

  v12 = 0;
LABEL_22:
  if (v10)
  {
LABEL_27:
    pc_snapshot_destroy(v10);
  }

  if (v12)
  {
    pc_snapshot_destroy(v12);
  }

LABEL_6:
  if (a1)
  {
    goto LABEL_7;
  }

  return v30;
}

uint64_t pc_session_config_with_ep_argstr(char **a1, char *__s1)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v13 = 0;
  v2 = 22;
  if (a1 && __s1)
  {
    if (a1[24] || *a1)
    {
      v2 = 37;
    }

    else
    {
      v6 = strdup(__s1);
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 0x40000000;
      v12[2] = __pc_session_config_with_ep_argstr_block_invoke;
      v12[3] = &unk_29EF6D6A8;
      v12[4] = &v14;
      v2 = walkargstr(v6, 1, v12);
      if (!v2)
      {
        v7 = *(v15 + 6);
        if (v7 && (v8 = malloc_type_calloc(v7, 8uLL, 0x10040436913F5uLL)) != 0)
        {
          v9 = v8;
          v10 = strdup(__s1);
          *a1 = v10;
          v11[0] = MEMORY[0x29EDCA5F8];
          v11[1] = 0x40000000;
          v11[2] = __pc_session_config_with_ep_argstr_block_invoke_2;
          v11[3] = &unk_29EF6D6D0;
          v11[4] = v18;
          v11[5] = &v14;
          v11[6] = v9;
          v2 = walkargstr(v10, 0, v11);
          if (!v2)
          {
            v2 = pc_session_config_with_ep_args(a1, *(v15 + 6), v9, &v13);
          }

          free(v9);
        }

        else
        {
          v2 = 0;
        }
      }
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  return v2;
}

uint64_t __pc_session_config_with_ep_argstr_block_invoke_2(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 24);
  if (v3 >= *(*(a1[5] + 8) + 24))
  {
    return 84;
  }

  v4 = 0;
  v5 = a1[6];
  *(v2 + 24) = v3 + 1;
  *(v5 + 8 * v3) = a2;
  return v4;
}

uint64_t pc_session_set_exeargs(uint64_t a1, int a2, uint64_t a3)
{
  result = 22;
  if (a1 && a3)
  {
    LODWORD(v6) = a2;
    *(a1 + 64) = a2;
    v7 = malloc_type_calloc(a2 + 1, 8uLL, 0x50040EE9192B6uLL);
    *(a1 + 56) = v7;
    if (!v7)
    {
      return *__error();
    }

    v8 = v7;
    if (v6 >= 1)
    {
      v9 = 0;
      v6 = v6;
      while (1)
      {
        v8[v9] = strdup(*(a3 + v9 * 8));
        v8 = *(a1 + 56);
        if (!v8[v9])
        {
          return *__error();
        }

        if (v6 == ++v9)
        {
          goto LABEL_11;
        }
      }
    }

    v6 = 0;
LABEL_11:
    result = 0;
    v8[v6] = 0;
  }

  return result;
}

uint64_t pc_session_set_procname(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (*(a1 + 192))
    {
      result = 37;
    }

    else
    {
      basename_r(a2, v6);
      if (__strlcpy_chk() >= 0x21)
      {
        warnx("Warning: %s longer than max process name", a2);
      }

      if (*(a1 + 12) != -1 || (result = findPIDForProcName((a1 + 16), (a1 + 12)), result != 84))
      {
        result = 0;
      }
    }
  }

  else
  {
    result = 22;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pc_session_get_procname(uint64_t a1)
{
  if (a1)
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t pc_session_set_baseline_file(uint64_t a1, char *a2)
{
  if (a1 && a2)
  {
    return _copy_str((a1 + 80), a2);
  }

  else
  {
    return 22;
  }
}

uint64_t _copy_str(void **a1, char *__s1)
{
  result = 22;
  if (a1 && __s1)
  {
    if (*a1)
    {
      free(*a1);
    }

    v5 = strdup(__s1);
    *a1 = v5;
    if (v5)
    {
      return 0;
    }

    else
    {
      return *__error();
    }
  }

  return result;
}

uint64_t session_set_record_path(uint64_t a1, char *a2)
{
  if (a1 && a2)
  {
    return _copy_str((a1 + 88), a2);
  }

  else
  {
    return 22;
  }
}

uint64_t pc_session_set_project_baseline(uint64_t a1, char *a2)
{
  if (a1 && a2)
  {
    return _copy_str((a1 + 96), a2);
  }

  else
  {
    return 22;
  }
}

uint64_t pc_session_set_testid(uint64_t a1, const char *a2, char *__s1, int a4)
{
  v8 = 0;
  v4 = 22;
  if (!a1 || !__s1)
  {
    return v4;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  if (asprintf(&v8, "%s.%s", a2, __s1) != -1)
  {
    __s1 = v8;
LABEL_6:
    *(a1 + 112) = a4;
    v4 = _copy_str((a1 + 104), __s1);
    goto LABEL_8;
  }

  v4 = *__error();
LABEL_8:
  if (v8)
  {
    free(v8);
  }

  return v4;
}

uint64_t pc_session_get_test_name(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 22;
  }

  if (a2)
  {
    *a2 = *(a1 + 104);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(a1 + 112);
  }

  return result;
}

uint64_t pc_session_get_perfdata_file(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

uint64_t pc_session_set_perfdata_file(uint64_t a1, char *a2)
{
  if (a1 && a2)
  {
    return _copy_str((a1 + 176), a2);
  }

  else
  {
    return 22;
  }
}

uint64_t pc_session_setopts(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 192))
  {
    return 37;
  }

  result = 0;
  *(a1 + 184) = a2;
  return result;
}

uint64_t pc_session_set_failtracer_file(uint64_t a1, char *__filename)
{
  result = 22;
  if (a1 && __filename)
  {
    v5 = *(a1 + 168);
    if (v5)
    {
      fclose(v5);
    }

    v6 = fopen(__filename, "w");
    *(a1 + 168) = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      return *__error();
    }
  }

  return result;
}

uint64_t pc_session_getopts(uint64_t result)
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

uint64_t pc_session_get_context(uint64_t result)
{
  if (result)
  {
    return *(result + 208);
  }

  return result;
}

uint64_t pc_session_set_context(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  result = 0;
  *(a1 + 208) = a2;
  return result;
}

uint64_t pc_session_get_sleep_interval(uint64_t result)
{
  if (result)
  {
    return *(result + 68);
  }

  return result;
}

uint64_t pc_session_set_sleep_interval(uint64_t a1, int a2)
{
  if (!a1 || a2 && (*(a1 + 72) & 1) != 0)
  {
    return 22;
  }

  if (*(a1 + 192))
  {
    return 37;
  }

  result = 0;
  *(a1 + 68) = a2;
  return result;
}

uint64_t pc_session_get_interactive(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 72);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t pc_session_set_interactive(uint64_t a1, int a2)
{
  if (!a1 || a2 && *(a1 + 68))
  {
    return 22;
  }

  if (*(a1 + 192))
  {
    return 37;
  }

  result = 0;
  *(a1 + 72) = a2;
  return result;
}

uint64_t pc_session_get_exeargs(uint64_t a1, _DWORD *a2, void *a3)
{
  result = 22;
  if (a2 && a1)
  {
    if (a3)
    {
      result = 0;
      *a2 = *(a1 + 64);
      *a3 = *(a1 + 56);
    }
  }

  return result;
}

uint64_t pc_session_get_procpids(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 22;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a2 = a1 + 12;
      *a3 = *(a1 + 8);
    }
  }

  return result;
}

uint64_t session_putc(uint64_t a1, int a2)
{
  if (a1 && (v2 = *(a1 + 152)) != 0)
  {
    return fputc(a2, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pc_measurement_graph(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v85 = *MEMORY[0x29EDCA608];
  if (a6 > a7 || a7 > a8)
  {
    goto LABEL_15;
  }

  if (a9 <= 0.0 && (a4 & 8) == 0)
  {
    goto LABEL_15;
  }

  if ((a4 & 4) == 0)
  {
    v19 = a2[1];
    v82 = *a2;
    *v83 = v19;
    *&v83[16] = *(a2 + 4);
    if (!_check_threshold(&v82))
    {
      goto LABEL_15;
    }
  }

  if ((a4 & 2) == 0)
  {
    v20 = a1[1];
    v82 = *a1;
    *v83 = v20;
    *&v83[16] = *(a1 + 4);
    if (!_check_threshold(&v82))
    {
LABEL_15:
      result = 22;
      goto LABEL_16;
    }
  }

  if ((a4 & 0xFFFFFFFFFFFFFFF1) != 0)
  {
    result = 45;
    goto LABEL_16;
  }

  v23 = a3 + 1;
  MEMORY[0x2A1C7C4A8]();
  v25 = &v74 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 2);
  v27 = fmin(a6, a9);
  if ((a4 & 8) != 0)
  {
    v27 = a6;
  }

  if ((a4 & 2) == 0)
  {
    v28 = *(a1 + 2);
    if (*a1 != 0.0)
    {
      v28 = v26 * (100.0 - *a1) / 100.0;
    }

    v27 = fmin(v27, v28);
  }

  v29 = *(a2 + 2);
  if ((a4 & 4) == 0)
  {
    v30 = *(a2 + 2);
    if (*a2 != 0.0)
    {
      v30 = (100.0 - *a2) * v29 / 100.0;
    }

    v27 = fmin(v27, v30);
  }

  v31 = fmax(a8, a9);
  if ((a4 & 8) != 0)
  {
    v31 = a8;
  }

  if ((a4 & 2) == 0)
  {
    v32 = *(a1 + 4);
    v33 = *(a1 + 2);
    if (v32 != 0.0)
    {
      v33 = v26 * (v32 + 100.0) / 100.0;
    }

    v31 = fmax(v31, v33);
  }

  if ((a4 & 4) == 0)
  {
    v34 = *(a2 + 4);
    if (v34 != 0.0)
    {
      v29 = v29 * (v34 + 100.0) / 100.0;
    }

    v31 = fmax(v31, v29);
  }

  v35 = fmax(ceil((v26 - v27) / v26 * 100.0), ceil((v31 - v26) / v26 * 100.0));
  v36 = a3 - 10;
  if (v35 < 100.0)
  {
    if (v36 >= 0xA)
    {
      v75 = a1;
      v76 = v24;
      v77 = a5;
      v37 = v26 * (100.0 - v35) / 100.0;
      v38 = snprintf(&v74 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), a3 + 1, "-%.0f%% ", v35);
      v39 = v38;
      v74 = a2;
      if (v35 < 10.0)
      {
        v39 = v38 + snprintf(&v25[v38], v23 - v38, " ");
      }

      goto LABEL_47;
    }

LABEL_42:
    result = 34;
    goto LABEL_16;
  }

  if (v36 < 0xA)
  {
    goto LABEL_42;
  }

  v75 = a1;
  v76 = v24;
  v77 = a5;
  v74 = a2;
  if (a6 == 0.0)
  {
    v40 = snprintf(&v74 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), a3 + 1, " 0 : ", v74);
  }

  else
  {
    v40 = snprintf(&v74 - ((a3 + 16) & 0xFFFFFFFFFFFFFFF0), a3 + 1, " <1%% ", v74);
  }

  v39 = v40;
  v37 = 0.0;
LABEL_47:
  v41 = 0;
  v42 = v26 * (v35 + 100.0) / 100.0;
  v43 = a3 - 11;
  *&v78 = a3 - 12;
  v44 = (v42 - v37) / v36;
  do
  {
    v45 = v37 + v44 * v41;
    v46 = v41 + 1;
    v47 = v37 + v44 * (v41 + 1);
    v48 = v43 == v41;
    if (v47 > a6)
    {
      v48 = 1;
    }

    if (v45 > a6)
    {
      v48 = 0;
    }

    v50 = v47 > a8 || v43 == v41;
    if (v43 == v41)
    {
      v51 = 42;
    }

    else
    {
      v51 = 95;
    }

    if (v47 < a6)
    {
      v51 = 95;
    }

    if (v47 > a6)
    {
      v51 = 42;
    }

    if (v45 > a8)
    {
      v50 = 0;
      v51 = 95;
    }

    v52 = v45 > a6;
    if (v37 + v44 * (v41 - 1) > a6)
    {
      v52 = 0;
    }

    v53 = v47 > a8 || v37 + v44 * (v41 + 2) <= a8 && v78 != v41;
    v54 = (v53 && !v50) | ~v48;
    if (v50)
    {
      v51 = 93;
    }

    if (v48)
    {
      LODWORD(v55) = 91;
    }

    else
    {
      LODWORD(v55) = v51;
    }

    if (v50 && v52)
    {
      LODWORD(v55) = 42;
    }

    if (v54)
    {
      v55 = v55;
    }

    else
    {
      v55 = 42;
    }

    if ((a4 & 8) != 0 || v45 > a9)
    {
      if (v55 == 95)
      {
        v55 = 95;
      }
    }

    else
    {
      v56 = v47 > a9 || v43 == v41;
      v57 = v56;
      if (!v56 || v55 == 95)
      {
        if (v55 == 95)
        {
          if (v57)
          {
            v55 = 84;
          }

          else
          {
            v55 = 95;
          }
        }
      }

      else
      {
        v55 = 33;
      }
    }

    v39 += snprintf(&v25[v39], v23 - v39, "%c", v55);
    v41 = v46;
  }

  while (v36 != v46);
  if (v35 >= 9800.0)
  {
    snprintf(&v25[v39], v23 - v39, " >99x");
    v58 = v75;
  }

  else
  {
    v58 = v75;
    if (v35 >= 900.0 || __ROR8__(0x8F5C28F5C28F5C29 * v35, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      snprintf(&v25[v39], v23 - v39, " %.0fx");
    }

    else
    {
      v59 = v23 - v39;
      if (v35 >= 100.0)
      {
        snprintf(&v25[v39], v59, " %.1fx");
      }

      else
      {
        snprintf(&v25[v39], v59, " +%.0f%%");
      }
    }
  }

  v60 = v77;
  (*(v77 + 16))(v77, v25);
  if ((a4 & 2) == 0)
  {
    v77 = v60;
    v61 = 0;
    v62 = 5;
    do
    {
      v61 += snprintf(&v25[v61], v23 - v61, " ", v74);
      --v62;
    }

    while (v62);
    v63 = 0;
    v78 = xmmword_299821760;
    do
    {
      *&v82 = v37;
      *(&v82 + 1) = v42;
      *v83 = v35;
      *&v83[8] = v78;
      v84 = v36;
      v64 = v58[1];
      v79 = *v58;
      v80 = v64;
      v81 = *(v58 + 4);
      v65 = _threshold_char(&v82, &v79, v63, 66);
      v61 += snprintf(&v25[v61], v23 - v61, "%c", v65);
      ++v63;
    }

    while (v36 != v63);
    v66 = 5;
    do
    {
      v61 += snprintf(&v25[v61], v23 - v61, " ");
      --v66;
    }

    while (v66);
    v60 = v77;
    (*(v77 + 16))(v77, v25);
  }

  if ((a4 & 4) == 0)
  {
    v67 = 0;
    v68 = 5;
    do
    {
      v67 += snprintf(&v25[v67], v23 - v67, " ", v74);
      --v68;
    }

    while (v68);
    v69 = 0;
    v78 = xmmword_299821760;
    v70 = v74;
    do
    {
      *&v82 = v37;
      *(&v82 + 1) = v42;
      *v83 = v35;
      *&v83[8] = v78;
      v84 = v36;
      v71 = v70[1];
      v79 = *v70;
      v80 = v71;
      v81 = *(v70 + 4);
      v72 = _threshold_char(&v82, &v79, v69, 82);
      v67 += snprintf(&v25[v67], v23 - v67, "%c", v72);
      ++v69;
    }

    while (v36 != v69);
    v73 = 5;
    do
    {
      v67 += snprintf(&v25[v67], v23 - v67, " ");
      --v73;
    }

    while (v73);
    (*(v60 + 16))(v60, v25);
  }

  result = 0;
LABEL_16:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL _check_threshold(double *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  if (v1 == 0.0 || v2 > v1 || v1 > v3)
  {
    return 0;
  }

  v6 = *a1;
  if (*a1 < 0.0)
  {
    return 0;
  }

  v7 = a1[4];
  if (v7 < 0.0)
  {
    return 0;
  }

  v8 = a1[2];
  if (v6 != 0.0)
  {
    v8 = v1 * (100.0 - v6) / 100.0;
  }

  if (v8 > v2)
  {
    return 0;
  }

  if (v7 != 0.0)
  {
    v1 = v1 * (v7 + 100.0) / 100.0;
  }

  return v1 >= v3;
}

uint64_t _threshold_char(uint64_t a1, double *a2, unint64_t a3, char a4)
{
  v4 = a2[1];
  v5 = a2[2];
  if (*a2 == 0.0)
  {
    v6 = a2[2];
  }

  else
  {
    v6 = (100.0 - *a2) * v5 / 100.0;
  }

  v7 = a2[4];
  v8 = v7 == 0.0;
  v9 = v5 * (v7 + 100.0) / 100.0;
  if (v8)
  {
    v9 = a2[2];
  }

  v10 = *a1;
  v11 = *(a1 + 40);
  v12 = (*(a1 + 8) - *a1) / v11;
  v13 = *a1 + v12 * a3;
  v14 = *a1 + v12 * (a3 + 1);
  v15 = v11 - 1;
  v16 = v14 > v6 || v11 - 1 == a3;
  if (v13 > v6)
  {
    v16 = 0;
  }

  v17 = v14 > v9;
  v18 = v15 == a3;
  if (v15 == a3)
  {
    v17 = 1;
  }

  if (v14 < v6)
  {
    v18 = 0;
  }

  if (v14 > v6)
  {
    v18 = 1;
  }

  if (v13 > v9)
  {
    v17 = 0;
    v18 = 0;
  }

  if (v15 == a3)
  {
    v19 = a4;
  }

  else
  {
    v19 = 95;
  }

  if (v14 < v4)
  {
    v19 = 95;
  }

  if (v14 > v4)
  {
    v19 = a4;
  }

  if (v13 > a2[3])
  {
    v19 = 95;
  }

  v20 = v11 != a3;
  if (v13 > v6)
  {
    v20 = 0;
  }

  v21 = v10 + v12 * (a3 - 1) > v6 || v20;
  v22 = v14 > v9 || v10 + v12 * (a3 + 2) <= v9 && v11 != a3 + 2;
  v23 = ((!v17 && v22) | ~v16) & (!v17 | v21);
  if (v18)
  {
    v24 = v19;
  }

  else
  {
    v24 = 95;
  }

  if (v17)
  {
    v25 = 93;
  }

  else
  {
    v25 = v24;
  }

  if (v16)
  {
    v26 = 91;
  }

  else
  {
    v26 = v25;
  }

  if ((v23 & 1) == 0)
  {
    return v19;
  }

  return v26;
}

uint64_t pc_session_process_pdfile(uint64_t a1, const char *a2, _BYTE *a3)
{
  v78 = *MEMORY[0x29EDCA608];
  updated = 0;
  v49 = 0;
  v43 = makePDContainers(a1, a2, &updated);
  if (v43)
  {
    updated = _update_compare_path(a1);
    if (!updated)
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        v42 = makePDContainers(a1, v3, &updated);
        if (!v42)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v42 = 0;
      }

      updated = 0;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = [v43 allKeys];
      v4 = [obj countByEnumeratingWithState:&v45 objects:v77 count:16];
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v40 = *v46;
LABEL_9:
        v7 = 0;
        v41 = -v6;
        v39 = v4;
        v35 = v6 + v4;
        v8 = v5;
        while (1)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v45 + 1) + 8 * v7);

          v9 = [v43 objectForKeyedSubscript:v5];
          v10 = [v42 objectForKeyedSubscript:v5];
          if (v10)
          {
            if (([v9 isComparableTo:v10] & 1) == 0)
            {
              v25 = *(a1 + 160);
              v26 = [v9 name];
              v27 = v26;
              v28 = [v26 UTF8String];
              v29 = *(a1 + 80);
              v30 = [v10 name];
              v31 = v30;

              updated = 93;
LABEL_38:

              goto LABEL_40;
            }
          }

          else if (v42 && (*(a1 + 184) & 1) == 0)
          {
            v17 = *(a1 + 160);
            v18 = [v9 name];
            v19 = v18;
            fprintf(v17, "Warning: '%s': no baseline in %s\n", [v18 UTF8String], *(a1 + 80));
          }

          if (v41 != v7)
          {
            session_putc(a1, 10);
          }

          v11 = v9;
          v12 = v10;
          v13 = &v73;
          v73 = 0;
          v74 = &v73;
          v75 = 0x2020000000;
          v76 = 0;
          v71[0] = 0;
          v71[1] = v71;
          v71[2] = 0x3032000000;
          v71[3] = __Block_byref_object_copy_;
          v71[4] = __Block_byref_object_dispose_;
          v72 = 0;
          v69[0] = 0;
          v69[1] = v69;
          v69[2] = 0x3032000000;
          v69[3] = __Block_byref_object_copy_;
          v69[4] = __Block_byref_object_dispose_;
          v70 = 0;
          v65[0] = 0;
          v65[1] = v65;
          v65[2] = 0x5010000000;
          v65[3] = "";
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          if (v10)
          {
            v14 = [MEMORY[0x29EDB8E08] dictionaryWithCapacity:0];
            if (!v14)
            {
              v16 = 0;
              v21 = 0;
              v23 = v74;
              v22 = 12;
              goto LABEL_28;
            }

            v64 = 0;
            v59[0] = MEMORY[0x29EDCA5F8];
            v59[1] = 3221225472;
            v59[2] = ___processContainer_block_invoke;
            v59[3] = &unk_29EF6D6F8;
            v61 = v71;
            v62 = &v73;
            v15 = v14;
            v60 = v15;
            v63 = a1;
            [v12 enumerateMeasurementsWithError:&v64 usingBlock:v59];
            v16 = v64;

            v13 = v74;
          }

          else
          {
            v16 = 0;
            v15 = 0;
          }

          *(v13 + 6) = 0;
          v51[0] = MEMORY[0x29EDCA5F8];
          v51[1] = 3221225472;
          v51[2] = ___processContainer_block_invoke_2;
          v51[3] = &unk_29EF6D720;
          v20 = v11;
          v57 = a1;
          v52 = v20;
          v54 = &v73;
          v21 = v15;
          v53 = v21;
          v55 = v69;
          v56 = v65;
          v58 = &v49;
          LOBYTE(v20) = [v20 enumerateMeasurementsWithError:0 usingBlock:v51];

          if (v20)
          {
            v22 = 0;
            *(v74 + 6) = 0;
          }

          else
          {
            v22 = *(v74 + 6);
            if (!v22)
            {
              v22 = [v16 code];
              v23 = v74;
LABEL_28:
              *(v23 + 6) = v22;
            }
          }

          _Block_object_dispose(v65, 8);
          _Block_object_dispose(v69, 8);

          _Block_object_dispose(v71, 8);
          _Block_object_dispose(&v73, 8);

          updated = v22;
          if (v22)
          {
            goto LABEL_38;
          }

          ++v7;
          v8 = v5;
          if (v39 == v7)
          {
            v4 = [obj countByEnumeratingWithState:&v45 objects:v77 count:16];
            v6 = v35;
            if (v4)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v24 = v49;
      if (a3)
      {
        *a3 = v49;
      }

      if (v24)
      {
        updated = 149;
      }

      else
      {
        updated = 0;
      }

LABEL_40:
    }
  }

LABEL_41:
  v32 = updated;

  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

void sub_29981DE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

char *snapshot_create_with_buf(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = 0;
  v64 = *MEMORY[0x29EDCA608];
  v6 = 22;
  if (!a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_41;
  }

  v7 = [MEMORY[0x29EDB8DA8] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  if (!v7)
  {
    v5 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 12;
    goto LABEL_41;
  }

  v62 = 0;
  v5 = [MEMORY[0x29EDBA0C0] propertyListWithData:v7 options:0 format:0 error:&v62];
  v11 = v62;
  v8 = v11;
  if (!v5)
  {
    v6 = [v11 code];
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v6 = 79;
    goto LABEL_41;
  }

  v12 = [v5 count];
  v13 = malloc_type_calloc(1uLL, 56 * v12 + 8, 0x97917FB5uLL);
  v9 = v13;
  if (!v13)
  {
    v6 = *__error();
    goto LABEL_41;
  }

  *v13 = v12;
  if (v12 < 1)
  {
    goto LABEL_29;
  }

  v14 = 0;
  v46 = v12 & 0x7FFFFFFF;
  v47 = v13 + 8;
  while (1)
  {
    v15 = [v5 objectAtIndexedSubscript:v14];
    v16 = [v15 objectForKeyedSubscript:@"pname"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v15 objectForKeyedSubscript:@"exited"], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v27 = 0;
      v55 = 0;
      v6 = 79;
      goto LABEL_39;
    }

    v18 = v17;
    objc_opt_class();
    v49 = v18;
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v15 objectForKeyedSubscript:@"meas"], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v55 = 0;
LABEL_47:
      v6 = 79;
      v27 = v49;
      goto LABEL_39;
    }

    v20 = v19;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v55 = v20;
      goto LABEL_47;
    }

    v48 = v15;
    v21 = v14;
    v22 = &v47[14 * v14];
    [v16 UTF8String];
    __strlcpy_chk();
    *(v22 + 37) = [v49 BOOLValue];
    v23 = [v20 count];
    v22[10] = v23;
    v24 = malloc_type_calloc(v23, 0x60uLL, 0x10500403B44B1C9uLL);
    v52 = v22;
    *(v22 + 6) = v24;
    if (!v24)
    {
      break;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v25 = [v20 allKeys];
    v53 = [v25 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (!v53)
    {
      goto LABEL_28;
    }

    obj = v25;
    v51 = a1;
    v43 = v21;
    v44 = v16;
    v45 = a4;
    v26 = 0;
    v27 = 0;
    v54 = *v59;
    v55 = v20;
    while (2)
    {
      v28 = 0;
      v29 = 96 * v26;
      v30 = v27;
      do
      {
        if (*v59 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v58 + 1) + 8 * v28);

        v57 = 0;
        v56 = 0;
        v31 = [v55 objectForKeyedSubscript:v27];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v6 = 79;
LABEL_38:

          v16 = v44;
          a4 = v45;
          v15 = v48;
          goto LABEL_39;
        }

        metricid_name = get_metricid_name(v51, [v27 UTF8String]);
        if (!metricid_name)
        {
          v6 = 93;
          goto LABEL_38;
        }

        v33 = add_metric(metricid_name, &v57, &v56, v51);
        if (v33)
        {
          v6 = v33;
          goto LABEL_38;
        }

        v34 = *(v52 + 6) + v29;
        v35 = v57;
        v36 = *(v57 + 1);
        *v34 = *v57;
        *(v34 + 16) = v36;
        v38 = v35[3];
        v37 = v35[4];
        v39 = v35[2];
        *(v34 + 80) = *(v35 + 10);
        *(v34 + 48) = v38;
        *(v34 + 64) = v37;
        *(v34 + 32) = v39;
        [v31 doubleValue];
        *(v34 + 88) = v40;
        free(v57);
        ++v26;

        ++v28;
        v29 += 96;
        v30 = v27;
      }

      while (v53 != v28);
      v53 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }

    v16 = v44;
    a4 = v45;
    v25 = obj;
    a1 = v51;
    v20 = v55;
    v21 = v43;
LABEL_28:

    v14 = v21 + 1;
    if (v21 + 1 == v46)
    {
LABEL_29:
      v6 = 0;
      goto LABEL_41;
    }
  }

  v55 = v20;
  v6 = *__error();
  v15 = v48;
  v27 = v49;
LABEL_39:

  pc_snapshot_destroy(v9);
LABEL_40:
  v9 = 0;
LABEL_41:
  if (a4)
  {
    *a4 = v6;
  }

  v41 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___processContainer_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = makeMetricDesc(v10);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:?];

    if (v8)
    {
      v9 = *(a1 + 56);
      if ((*(v9 + 184) & 1) == 0)
      {
        fprintf(*(v9 + 160), "ignoring (38284416) duplicate baseline:\n\t%s\n", [*(*(*(a1 + 40) + 8) + 40) UTF8String]);
      }
    }

    else
    {
      [*(a1 + 32) setObject:v10 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 12;
    *a3 = 1;
  }
}

void ___processContainer_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v68 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = makeMetricDesc(v5);
  v7 = makeTestHeader(*(a1 + 32), v5);
  v8 = v7;
  v62 = 0;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  v59 = 0u;
  v57 = 0.0;
  v9 = *(a1 + 72);
  if (v6 && v7)
  {
    v56 = v7;
    v10 = v5;
    v11 = [v10 metric];
    *(&v59 + 1) = [v11 UTF8String];

    metricid_name = get_metricid_name(v9, *(&v59 + 1));
    *&v59 = metricid_name;
    BYTE8(v60) = [v10 largerBetter];
    v13 = [v10 variables];
    v14 = [v13 objectForKeyedSubscript:@"_pc_metric_group"];
    if (v14)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        *&v61[0] = [v14 UTF8String];
      }
    }

    else
    {
    }

    v67[0] = 0;
    if (get_thresholds(v9, metricid_name, v67, 0))
    {
      __memcpy_chk();
    }

    v17 = [v10 variables];
    v18 = [v17 objectForKeyedSubscript:@"failure_threshold_pct"];

    v8 = v56;
    if (v18)
    {
      [v18 doubleValue];
      set_threshold(v61 + 8, 3, 98307, 0, v19);
    }

    v20 = [v10 variables];
    v21 = [v20 objectForKeyedSubscript:@"_pc_failure_threshold"];

    if (v21)
    {
      [v21 doubleValue];
      set_threshold(v61 + 8, 3, 32771, 0, v22);
    }

    v23 = [v10 variables];
    v24 = [v23 objectForKeyedSubscript:@"_pc_failure_threshold_abs"];

    if (v24)
    {
      [v24 doubleValue];
      set_threshold(v61 + 8, 3, 3, 0, v25);
    }

    v58 = 0.0;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    MeasValue = _getMeasValue(v10, &v58);
    *(*(*(a1 + 48) + 8) + 24) = MeasValue;
    if (MeasValue)
    {
      v16 = 0;
      *a3 = 1;
    }

    else
    {
      v16 = [*(a1 + 40) objectForKeyedSubscript:v6];
      if (v16)
      {
        if ((areMeasComparable(v10, v16) & 1) == 0)
        {
          v27 = *(*(a1 + 72) + 160);
          v28 = [v6 UTF8String];
          v29 = makeMetricDesc(v16);
          fprintf(v27, "Measurement '%s'\n\tnot comparable to\n\tmeasurement '%s'\n", v28, [v29 UTF8String]);
        }

        if (_getMeasValue(v16, &v57))
        {
          v30 = 0;
        }

        else
        {
          v30 = &v57;
        }
      }

      else
      {
        v30 = 0;
      }

      if ([v56 length] && objc_msgSend(v56, "compare:", *(*(*(a1 + 56) + 8) + 40)))
      {
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          session_putc(*(a1 + 72), 10);
        }

        v31 = *(*(a1 + 72) + 152);
        if (v31)
        {
          v55 = v30;
          fprintf(v31, "%s\n", [v56 UTF8String]);
          v32 = *(*(a1 + 72) + 152);
          v33 = [v56 componentsSeparatedByString:@"\n"];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v34 = [v33 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v34)
          {
            v35 = v34;
            v53 = v32;
            v54 = v6;
            v36 = 0;
            v37 = *v64;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v64 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                v39 = *(*(&v63 + 1) + 8 * i);
                if ([v39 length] > v36)
                {
                  v36 = [v39 length];
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v63 objects:v67 count:16];
            }

            while (v35);
            v32 = v53;
            v6 = v54;
            if (v36)
            {
              if (v36 >= 0x50)
              {
                v40 = 80;
              }

              else
              {
                v40 = v36;
              }

              do
              {
                --v40;
                fputc(45, v53);
              }

              while (v40);
            }
          }

          fputc(10, v32);

          v30 = v55;
          v8 = v56;
        }

        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
      }

      v41 = [v10 unitString];
      v42 = [v41 UTF8String];

      if (!strcmp(v42, "kiloinstructions"))
      {
        v42 = "kI";
      }

      if (*v42 == 110 && v42[1] == 115 && !v42[2])
      {
        v57 = v57 / 1000000.0;
        v58 = v58 / 1000000.0;
        v42 = "ms";
      }

      if (!strcmp(v42, "#none"))
      {
        v43 = "";
      }

      else
      {
        v43 = v42;
      }

      v44 = [v10 metric];
      v45 = [v44 length];

      if (strlen(v43) < 3)
      {
        if (v45 >= 0x10)
        {
          v47 = *(*(a1 + 72) + 152);
          if (v47)
          {
            fprintf(v47, "  %s\n");
          }
        }
      }

      else
      {
        v46 = *(*(a1 + 72) + 152);
        if (v46)
        {
          fprintf(v46, "  %s (%s)\n");
        }
      }

      *(*(*(a1 + 64) + 8) + 40) = [v8 UTF8String];
      print_metric_value(*(a1 + 72), &v59, (*(*(a1 + 64) + 8) + 32), v58, v43, v30, *(a1 + 80));
      v48 = *(*(a1 + 72) + 152);
      if (v48)
      {
        v49 = fileno(v48);
        if (v49)
        {
          v50 = isatty(v49) != 0;
        }

        else
        {
          v50 = 0;
        }

        v51 = makeMeasurementFooter(v10, v16, v50);
        if ([v51 length])
        {
          fputs([v51 UTF8String], *(*(a1 + 72) + 152));
        }
      }
    }
  }

  else
  {
    fwrite("couldn't describe measurement\n", 0x1EuLL, 1uLL, *(v9 + 160));
    v16 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 79;
    *a3 = 1;
  }

  v52 = *MEMORY[0x29EDCA608];
}

uint64_t _getMeasValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 value];

  if (v4)
  {
    v5 = [v3 value];
  }

  else
  {
    v6 = [v3 mean];

    if (!v6)
    {
      v10 = 93;
      goto LABEL_6;
    }

    v5 = [v3 mean];
  }

  v7 = v5;
  [v5 doubleValue];
  v9 = v8;

  v10 = 0;
  *a2 = v9;
LABEL_6:

  return v10;
}

void *makePDContainers(uint64_t a1, const char *a2, int *a3)
{
  v47 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDB8DA8];
  v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2];
  v45 = 0;
  v6 = [v4 dataWithContentsOfFile:v5 options:0 error:&v45];
  v7 = v45;

  if (v6)
  {
    v44 = v7;
    v8 = [MEMORY[0x29EDB9FF0] JSONObjectWithData:v6 options:3 error:&v44];
    v9 = v44;

    if (v8)
    {
      v10 = [MEMORY[0x29EDB8E08] dictionaryWithCapacity:0];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = v9;
          v11 = [MEMORY[0x29EDC8338] containerWithJSONDictionary:v8 error:&v43];
          v12 = v43;

          if (v11)
          {
            v13 = [v11 description];
            [v10 setObject:v11 forKey:v13];
LABEL_25:

            v10 = v10;
            v16 = 0;
            v15 = v10;
            v9 = v12;
            goto LABEL_38;
          }

          v16 = 0;
          v29 = v8;
          v14 = 79;
          v27 = v29;
          v9 = v12;
          goto LABEL_35;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v13 = v8;
          v17 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
          if (v17)
          {
            v18 = v17;
            v33 = v8;
            v34 = a3;
            v35 = v6;
            v16 = 0;
            v11 = 0;
            v19 = *v40;
            while (2)
            {
              v20 = v13;
              for (i = 0; i != v18; ++i)
              {
                v22 = v16;
                v23 = v9;
                if (*v40 != v19)
                {
                  objc_enumerationMutation(v20);
                }

                v16 = *(*(&v39 + 1) + 8 * i);

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_28;
                }

                v38 = v9;
                v24 = [MEMORY[0x29EDC8338] containerWithJSONDictionary:v16 error:&v38];
                v9 = v38;

                if (!v24)
                {
                  v11 = 0;
LABEL_28:
                  v27 = v20;

                  v14 = 79;
                  a3 = v34;
                  v6 = v35;
                  goto LABEL_35;
                }

                v11 = v24;
                v25 = [v24 description];
                v26 = [v10 objectForKeyedSubscript:v25];

                if (v26)
                {
                  if ((*(a1 + 184) & 1) == 0)
                  {
                    fprintf(*(a1 + 160), "%s: ignoring (38284416) duplicate result:\n\t%s\n", a2, [v25 UTF8String]);
                  }
                }

                else
                {
                  [v10 setObject:v11 forKey:v25];
                }
              }

              v13 = v20;
              v18 = [v20 countByEnumeratingWithState:&v39 objects:v46 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

            v12 = v9;
            v6 = v35;
            v8 = v33;
          }

          else
          {
            v11 = 0;
            v12 = v9;
          }

          goto LABEL_25;
        }

        v11 = 0;
        v16 = 0;
        v28 = v8;
        v14 = 79;
      }

      else
      {
        v11 = 0;
        v16 = 0;
        v28 = v8;
        v14 = 12;
      }

      v27 = v28;
    }

    else
    {
      v11 = 0;
      v16 = 0;
      v27 = 0;
      v10 = 0;
      v14 = 79;
    }
  }

  else
  {
    v11 = 0;
    v14 = *__error();
    if (!v14)
    {
      v10 = 0;
      v15 = 0;
      v9 = v7;
      v8 = 0;
      v16 = 0;
      goto LABEL_38;
    }

    v16 = 0;
    v9 = v7;
    v27 = 0;
    v10 = 0;
  }

LABEL_35:
  warnc(v14, "%s", a2);
  v15 = 0;
  if (a3)
  {
    *a3 = v14;
  }

  v8 = v27;
LABEL_38:
  v30 = v15;

  v31 = *MEMORY[0x29EDCA608];
  return v15;
}

__CFString *makeTestHeader(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 variables];
  v6 = [MEMORY[0x29EDBA050] string];
  v7 = _outputVariableNames(v3);

  if (v7)
  {
    v8 = [MEMORY[0x29EDB8E58] setWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  v25 = MEMORY[0x29EDCA5F8];
  v26 = 3221225472;
  v27 = __makeTestHeader_block_invoke;
  v28 = &unk_29EF6D748;
  v9 = v8;
  v29 = v9;
  v10 = v6;
  v30 = v10;
  [v5 enumerateKeysAndObjectsUsingBlock:&v25];
  v11 = [v4 testDescription];
  v12 = [v4 name];

  v13 = &stru_2A1F8D128;
  if (![v12 length])
  {
    goto LABEL_8;
  }

  v14 = v12;
  if (([(__CFString *)v14 isEqualToString:@"perfcheck._default_"]& 1) != 0 || [(__CFString *)v14 isEqualToString:@"_libperfcheck_._default_"])
  {

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v23 = [(__CFString *)v14 hasPrefix:@"perfcheck.daemon"];

  v15 = v23 ^ 1;
  if ((v23 & 1) == 0)
  {
    v13 = v14;
  }

LABEL_9:
  v16 = v13;
  if ([v11 length])
  {
    if (v15)
    {
      v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@: %@", v12, v11, v25, v26, v27, v28, v29];
    }

    else
    {
      v17 = v11;
    }

    v18 = v17;

    v16 = v18;
  }

  if ([v10 length])
  {
    if ([(__CFString *)v16 length])
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@\n     with %@", v16, v10];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"     with %@", v10, v24];
    }
    v19 = ;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19;
  v21 = v19;

  return v20;
}

id _outputVariableNames(void *a1)
{
  v1 = [a1 variables];
  v2 = [v1 objectForKeyedSubscript:@"_pc_output_variables"];

  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 componentsSeparatedByString:{@", "}];
      goto LABEL_6;
    }

    warnx("ignoring non-string _pc_output_variables value");
  }

  v3 = 0;
LABEL_6:

  return v3;
}

void __makeTestHeader_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 compare:@"_pc_" options:0 range:{0, 4}] && objc_msgSend(v11, "compare:", @"failure_threshold_pct") && (objc_msgSend(*(a1 + 32), "containsObject:", v11) & 1) == 0)
  {
    if ([*(a1 + 40) length])
    {
      [*(a1 + 40) appendString:@" "];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
      [v5 doubleValue];
      [v6 appendFormat:@"%@=%g", v11, v7];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v9 = *(a1 + 40);
      if (isKindOfClass)
      {
        [v9 appendFormat:@"%@=%@", v11, v5];
      }

      else
      {
        [v9 appendFormat:@"%@=(unknown type)", v5, v10];
      }
    }
  }
}

id makeMeasurementFooter(void *a1, void *a2, int a3)
{
  v84 = *MEMORY[0x29EDCA608];
  v4 = a1;
  v5 = a2;
  v6 = [MEMORY[0x29EDBA050] string];
  v7 = _outputVarValues(v4);
  v8 = v7;
  v66 = v7;
  if (v5)
  {
    v56 = v6;
    v57 = v4;
    v55 = v5;
    v9 = _outputVarValues(v5);
    v58 = [MEMORY[0x29EDBA050] string];
    v61 = [MEMORY[0x29EDBA050] string];
    v60 = [MEMORY[0x29EDBA050] string];
    v10 = MEMORY[0x29EDB8E58];
    v11 = [v8 allKeys];
    v12 = [v10 setWithArray:v11];
    v13 = [v9 allKeys];
    v14 = [v12 setByAddingObjectsFromArray:v13];

    v8 = v66;
    v54 = v14;
    v15 = [v14 allObjects];
    v16 = [v15 sortedArrayUsingSelector:sel_localizedStandardCompare_];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v17 = v16;
    v18 = v9;
    obj = v17;
    v19 = [v17 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = v19;
    v21 = *v70;
    v59 = v9;
    v62 = *v70;
    while (1)
    {
      v22 = 0;
      v63 = v20;
      do
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v69 + 1) + 8 * v22);
        v24 = v18;
        v25 = [v18 objectForKeyedSubscript:v23];
        v26 = [v8 objectForKeyedSubscript:v23];
        v27 = [v25 count];
        v28 = [v26 count];
        v29 = v28;
        if (v27)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 1;
        }

        v67 = v26;
        v68 = v25;
        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = [MEMORY[0x29EDB9F68] setWithArray:v25];
          v32 = [MEMORY[0x29EDB9F68] setWithArray:v26];
          [v31 intersectSet:v32];
        }

        v18 = v24;
        if (v29 == v27)
        {
          v33 = v31;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v34 = [v33 countByEnumeratingWithState:&v77 objects:v83 count:16];
          if (v34)
          {
            v35 = v34;
            LODWORD(v36) = 0;
            v37 = *v78;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v78 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                LODWORD(v36) = [v33 countForObject:*(*(&v77 + 1) + 8 * i)] + v36;
              }

              v35 = [v33 countByEnumeratingWithState:&v77 objects:v83 count:16];
            }

            while (v35);
            v36 = v36;
            v18 = v59;
          }

          else
          {
            v36 = 0;
          }

          v30 = v27 == v36;
          v21 = v62;
          v20 = v63;
          if (v30)
          {
            v39 = v67;
            v40 = _variableDisplayString(v23, v67);
            [v58 appendString:v40];
            v8 = v66;
LABEL_30:

            goto LABEL_31;
          }
        }

        if (v27)
        {
          v41 = _variableDisplayStringWithDiffs(v23, v68, v31, a3);
          [v61 appendString:v41];
        }

        v8 = v66;
        v39 = v67;
        if (v29)
        {
          v40 = _variableDisplayStringWithDiffs(v23, v67, v31, a3);
          [v60 appendString:v40];
          goto LABEL_30;
        }

LABEL_31:

        ++v22;
      }

      while (v22 != v20);
      v20 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      if (!v20)
      {
LABEL_33:

        v6 = v56;
        v42 = v58;
        [v56 appendString:v58];
        if ([v61 length])
        {
          [v56 appendFormat:@"           (baseline)\n%@", v61];
        }

        v4 = v57;
        v5 = v55;
        if ([v60 length])
        {
          [v56 appendFormat:@"           (current)\n%@", v60];
        }

        goto LABEL_46;
      }
    }
  }

  v43 = [v7 allKeys];
  v44 = [v43 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v42 = v44;
  v45 = [v42 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v74;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v74 != v47)
        {
          objc_enumerationMutation(v42);
        }

        v49 = *(*(&v73 + 1) + 8 * j);
        v50 = [v8 objectForKeyedSubscript:v49];
        v51 = _variableDisplayString(v49, v50);
        [v6 appendString:v51];

        v8 = v66;
      }

      v46 = [v42 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v46);
  }

  v18 = v42;
LABEL_46:

  v52 = *MEMORY[0x29EDCA608];

  return v6;
}

id _outputVarValues(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = _outputVariableNames(v1);
  v3 = [v1 variables];
  v4 = [MEMORY[0x29EDB8E08] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [v3 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 length])
          {
            v12 = [v11 componentsSeparatedByString:{@", "}];
            [v4 setObject:v12 forKeyedSubscript:v10];
          }
        }

        else
        {
          _outputVarValues_cold_1(v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v13 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v7 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x29EDCA608];

  return v4;
}

id _variableDisplayString(void *a1, void *a2)
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = a1;
  v5 = [a2 componentsJoinedByString:@" "];
  v6 = [v3 stringWithFormat:@"           %@: %@\n", v4, v5];

  return v6;
}

id _variableDisplayStringWithDiffs(void *a1, void *a2, void *a3, int a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = @"\x1B[1m";
  if (a4)
  {
    v11 = @"\x1B[0m";
  }

  else
  {
    v10 = &stru_2A1F8D128;
    v11 = &stru_2A1F8D128;
  }

  v29 = v10;
  v12 = v11;
  v13 = [MEMORY[0x29EDBA050] string];
  v14 = [v9 copy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = v9;
    v28 = v7;
    v18 = 0;
    v19 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        if ([v13 length])
        {
          [v13 appendString:@" "];
        }

        if ([v14 containsObject:v21])
        {
          [v14 removeObject:v21];
          [v13 appendFormat:@"%@", v21];
        }

        else
        {
          [v13 appendFormat:@"%@%@%@", v29, v21, v12];
          v18 = 1;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);

    v9 = v27;
    v7 = v28;
    if (v18)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"           %@%@%@: %@\n", v29, v28, v12, v13];
      goto LABEL_20;
    }
  }

  else
  {
  }

  [MEMORY[0x29EDBA0F8] stringWithFormat:@"           %@: %@\n", v7, v13, v25, v26];
  v22 = LABEL_20:;

  v23 = *MEMORY[0x29EDCA608];

  return v22;
}

id makeMetricDesc(void *a1)
{
  v1 = a1;
  v2 = _getIgnoredVars(v1);
  v3 = [v1 metricFilterIgnoringVariables:v2];

  return v3;
}

id _getIgnoredVars(void *a1)
{
  v1 = a1;
  if (_getIgnoredVars_sInitIgnoredVars != -1)
  {
    _getIgnoredVars_cold_1();
  }

  v2 = _outputVariableNames(v1);
  if (v2)
  {
    v3 = [_getIgnoredVars_sIgnoredVars arrayByAddingObjectsFromArray:v2];
  }

  else
  {
    v3 = _getIgnoredVars_sIgnoredVars;
  }

  v4 = v3;

  return v4;
}

uint64_t areMeasComparable(void *a1, void *a2)
{
  v3 = MEMORY[0x29EDB8E58];
  v4 = a2;
  v5 = a1;
  v6 = _getIgnoredVars(v4);
  v7 = [v3 setWithArray:v6];

  v8 = MEMORY[0x29EDB8E18];
  v9 = _getIgnoredVars(v5);
  v10 = [v8 setWithArray:v9];

  [v10 unionSet:v7];
  v11 = [v10 allObjects];
  v12 = [v5 isComparableTo:v4 ignoringVariables:v11];

  return v12;
}

uint64_t pc_session_record_values(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a3;
  v21 = 0;
  if (a1 && a2 && *(a1 + 192))
  {
    if (*(a1 + 8) <= 0)
    {
      HIDWORD(v21) = 0;
    }

    else
    {
      v5 = 0;
      v17 = a1;
      while (1)
      {
        v20 = copy_meas_session(a1, v5, &v21, &v21 + 1);
        if (!v20)
        {
          break;
        }

        v18 = v5;
        if (v21 >= 1)
        {
          v6 = 0;
          v7 = v20 + 6;
          do
          {
            v8 = &v20[12 * v6];
            if (*v8)
            {
              v9 = *(v8 + 1);
              pdunit_iorunit(*(v8 + 2));
              v10 = *(v8 + 11);
              pdwriter_new_value();
              if (*(v8 + 24) == 1)
              {
                pdwriter_record_larger_better();
              }

              v11 = 3;
              v12 = v7;
              do
              {
                v13 = *(v12 - 1);
                if (v13 == 3 || v13 == 98307 || v13 == 32771)
                {
                  v14 = *v12;
                  pdwriter_record_variable_dbl();
                }

                v12 += 2;
                --v11;
              }

              while (v11);
              if (*(v8 + 4))
              {
                pdwriter_record_variable_str();
              }

              pdwriter_record_variable_str();
              if (v19)
              {
                (*(v19 + 2))(v19, *v8, *(v8 + 1));
              }
            }

            ++v6;
            v7 += 12;
          }

          while (v6 < v21);
        }

        a1 = v17;
        v5 = v18 + 1;
        if (v18 + 1 >= *(v17 + 8))
        {
          HIDWORD(v21) = 0;
          free(v20);
          break;
        }
      }
    }
  }

  else
  {
    HIDWORD(v21) = 22;
  }

  v15 = HIDWORD(v21);

  return v15;
}

uint64_t pc_session_record_pdfile(uint64_t a1, char *__s1)
{
  v2 = __s1;
  if (*(a1 + 104))
  {
    v4 = *(a1 + 104);
  }

  if (!__s1)
  {
    v2 = *(a1 + 176);
    if (!v2)
    {
      return 22;
    }
  }

  v5 = strstr(v2, ".perfdata");
  if (v5)
  {
    if (!v5[9])
    {
      return 22;
    }
  }

  v12 = 0;
  v6 = *(a1 + 112);
  v7 = pdwriter_open();
  if (!v7)
  {
    return *__error();
  }

  v8 = v7;
  v9 = pc_session_copy_description(a1, 0, &v12);
  if (v9)
  {
    v10 = v9;
    pdwriter_set_description();
    v12 = pc_session_record_values(a1, v8, 0);
    free(v10);
  }

  pdwriter_close();
  return v12;
}

uint64_t emit_perfdata_v1(uint64_t a1, char *__s1)
{
  v25 = 0;
  v26 = -1;
  v4 = strstr(__s1, ".perfdata");
  if (!v4 || v4[9])
  {
    return 22;
  }

  v6 = copy_meas_session(a1, 0, &v25, &v26);
  if (!v6)
  {
    return v26;
  }

  v7 = v6;
  if (v25 < 1)
  {
    v24 = 14;
LABEL_46:
    v26 = v24;
    free(v7);
    return v26;
  }

  v8 = fopen(__s1, "w");
  if (!v8)
  {
    v24 = *__error();
    goto LABEL_46;
  }

  v9 = v8;
  if (fputs("{\n  version : 1.0,\n  measurements : {\n    easyperf_metrics : {\n", v8) < 1 || fprintf(v9, "      description : Easyperf metrics for '%s',\n", (a1 + 16)) < 1)
  {
    goto LABEL_42;
  }

  if (v25 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = (v7 + 1);
    do
    {
      if (*(v12 - 1))
      {
        v13 = *v12;
        if (v11)
        {
          v14 = fprintf(v9, ", %s");
        }

        else
        {
          v14 = fprintf(v9, "      names : [%s");
        }

        if (v14 <= 0)
        {
          goto LABEL_42;
        }

        v11 = 1;
      }

      ++v10;
      v12 += 12;
    }

    while (v10 < v25);
  }

  if (fprintf(v9, "],\n") < 1)
  {
    goto LABEL_42;
  }

  if (v25 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = v7;
    do
    {
      if (*v17)
      {
        v18 = v17[11];
        if (v16)
        {
          v19 = fprintf(v9, ", %.0f", v18);
        }

        else
        {
          v19 = fprintf(v9, "      data : [%.0f", v18);
        }

        if (v19 <= 0)
        {
          goto LABEL_42;
        }

        v16 = 1;
      }

      ++v15;
      v17 += 12;
    }

    while (v15 < v25);
  }

  if (fprintf(v9, "],\n") < 1)
  {
    goto LABEL_42;
  }

  if (v25 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = (v7 + 2);
    do
    {
      if (*(v22 - 2))
      {
        unitstr_iorunit(*v22);
        if (v21)
        {
          v23 = fprintf(v9, ", %s");
        }

        else
        {
          v23 = fprintf(v9, "      units : [%s");
        }

        if (v23 <= 0)
        {
          goto LABEL_42;
        }

        v21 = 1;
      }

      ++v20;
      v22 += 12;
    }

    while (v20 < v25);
  }

  if (fprintf(v9, "]\n") <= 0 || fputs("    }\n  }\n}\n", v9) <= 0)
  {
LABEL_42:
    v26 = *__error();
  }

  else
  {
    v26 = 0;
  }

  free(v7);
  fclose(v9);
  return v26;
}

void ___getIgnoredVars_block_invoke()
{
  v0 = _getIgnoredVars_sIgnoredVars;
  _getIgnoredVars_sIgnoredVars = &unk_2A1F8D348;
}

uint64_t get_name_metricid(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 120);
    if (!v2)
    {
      return 0;
    }

    v3 = *(a1 + 128);
  }

  else
  {
    v2 = &s_all_known_metrics;
    v3 = 8;
  }

  v4 = v3;
  v5 = v2 + 88 * v3 + 8;
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = v5 - 88;
    v8 = *(v5 - 96);
    v5 -= 88;
    if (v8 == a2)
    {
      return *v7;
    }
  }

  return 0;
}

uint64_t get_metricid_name(uint64_t a1, char *__s1)
{
  if (a1)
  {
    v3 = *(a1 + 128);
    if (v3 < 1)
    {
      return 0;
    }

    v4 = *(a1 + 120);
  }

  else
  {
    v4 = &s_all_known_metrics;
    v3 = 8;
  }

  v5 = v3;
  for (i = (v4 + 8); strcmp(__s1, *i); i += 11)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  return *(i - 1);
}

const char *unitstr_iorunit(uint64_t a1)
{
  if (a1 > 0x9008BFFFFFFFFFFLL)
  {
    if (a1 != 0x9008C0000000000)
    {
      if (a1 == 0x6600008200000000)
      {
        return "kI";
      }

      return "unknown";
    }

    return "kB";
  }

  else
  {
    if (a1)
    {
      if (a1 == 0x100007600000000)
      {
        return "ns";
      }

      return "unknown";
    }

    return "";
  }
}

uint64_t set_threshold(uint64_t a1, int a2, uint64_t a3, int a4, double a5)
{
  v5 = 22;
  if (!a1 || a2 < 3)
  {
    return v5;
  }

  v6 = a3 & 0xFFFFFFFEFFFFFFFFLL;
  if ((a3 & 0xFFFFFFFEFFFFFFFFLL) <= 32782)
  {
    if (v6 != 3)
    {
      v7 = 32771;
      goto LABEL_9;
    }

    a1 += 32;
  }

  else if (v6 != 98319 && v6 != 98307)
  {
    v7 = 32783;
LABEL_9:
    if (v6 != v7)
    {
      return v5;
    }

    a1 += 16;
  }

  if (*a1 && !a4)
  {
    return 0;
  }

  v5 = 0;
  *a1 = a3;
  *(a1 + 8) = a5;
  return v5;
}

uint64_t pc_session_set_threshold(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = 22;
  if (a1 && a2)
  {
    v8 = *(a1 + 120);
    if (v8)
    {
      v9 = *(a1 + 128);
      v10 = v8 + 88 * v9;
      v11 = v9 + 1;
      while (--v11)
      {
        v12 = (v10 - 88);
        v13 = *(v10 - 88);
        v10 -= 88;
        if (v13 == a2)
        {
          goto LABEL_10;
        }
      }
    }

    v17 = 0;
    result = _add_metric(a1, a2, (a1 + 120), (a1 + 128), &v17);
    if (!result)
    {
      v12 = v17;
LABEL_10:
      v14 = a3 & 0xFFFFFFFEFFFFFFFFLL;
      result = 22;
      if ((a3 & 0xFFFFFFFEFFFFFFFFLL) <= 32782)
      {
        if (v14 != 3)
        {
          v16 = 32771;
          goto LABEL_16;
        }

        v15 = v12 + 18;
      }

      else
      {
        v15 = v12 + 10;
        if (v14 != 98319 && v14 != 98307)
        {
          v16 = 32783;
LABEL_16:
          if (v14 != v16)
          {
            return result;
          }

          v15 = v12 + 14;
        }
      }

      result = 0;
      *v15 = a3;
      *(v15 + 1) = a4;
    }
  }

  return result;
}

uint64_t pc_session_set_default_thresholds(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 128) >= 1)
  {
    v2 = 0;
    v3 = (*(a1 + 120) + 48);
    do
    {
      if (*(v3 - 6) != 0x63707574696D6500 || (is_monotonic_active() & 1) == 0)
      {
        *(v3 - 1) = 0x10001800FLL;
        *v3 = 0x4024000000000000;
      }

      ++v2;
      v3 += 11;
    }

    while (v2 < *(a1 + 128));
  }

  return 0;
}

uint64_t pc_session_clear_thresholds(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 128) >= 1)
  {
    v1 = 0;
    v2 = 40;
    do
    {
      v3 = (*(a1 + 120) + v2);
      v3[1] = 0uLL;
      v3[2] = 0uLL;
      *v3 = 0uLL;
      ++v1;
      v2 += 88;
    }

    while (v1 < *(a1 + 128));
  }

  return 0;
}

uint64_t get_thresholds(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = 22;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      v6 = *(a1 + 128);
      v7 = v5 + 88 * v6 + 40;
      v8 = v6 + 1;
      while (--v8)
      {
        result = v7 - 88;
        v10 = *(v7 - 128);
        v7 -= 88;
        if (v10 == a2)
        {
          *a3 = 3;
          return result;
        }
      }
    }

    v4 = 93;
  }

  result = 0;
  if (a4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t custom_metric_clean_up(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3);
      *(a1 + 24) = 0;
    }
  }

  return 0;
}

uint64_t pc_session_add_custom_metric(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  result = 22;
  if (a1 && a2 && a4 && a5 && a6)
  {
    v14 = *(a1 + 136);
    v15 = *(a1 + 144);
    if (v14 && v15 >= 1)
    {
      v16 = *(a1 + 144);
      while (1)
      {
        v17 = *v14;
        v14 += 7;
        if (v17 == a2)
        {
          return 37;
        }

        if (!--v16)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v18 = *(a1 + 144);
      v19 = malloc_type_calloc(v15 + 1, 0x38uLL, 0x1090040B8221D5BuLL);
      if (v19)
      {
        v20 = v19;
        if (*(a1 + 144))
        {
          memcpy(v19, *(a1 + 136), 56 * v15);
        }

        else
        {
          v18 = v15;
        }

        v21 = &v20[56 * v18];
        v22 = *(a1 + 136);
        if (v22)
        {
          free(v22);
        }

        *(a1 + 136) = v20;
        *(a1 + 144) = v15 + 1;
        *v21 = a2;
        v21[1] = a3;
        v21[2] = strdup(a4);
        v21[3] = strdup(a5);
        v21[5] = a6;
        v21[6] = a7;

        return pc_session_add_metric(a1, a2);
      }

      else
      {
        return *__error();
      }
    }
  }

  return result;
}