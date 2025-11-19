uint64_t _sl_dlopen(void *a1, char **a2)
{
  v3 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v4 = a1;
  if (!*a1)
  {
LABEL_5:
    if (!a2)
    {
      v24 = 0;
      goto LABEL_33;
    }

    v7 = malloc_type_calloc(v4 - v3, 8uLL, 0x10040436913F5uLL);
    v8 = v7;
    v33 = v4 - v3;
    if (v4 == v3)
    {
      v22 = malloc_type_calloc(0, 1uLL, 0x100004077774924uLL);
      if (v22)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = a2;
      v9 = 0;
      if ((v4 - v3) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v4 - v3;
      }

      v11 = MEMORY[0x277D86220];
      v31 = v3;
      v32 = v7;
      v12 = v3;
      v13 = v10;
      v14 = v7;
      do
      {
        v15 = *v12;
        v16 = dlopen_from();
        if (v16)
        {
          v24 = v16;
          v3 = v31;
          v8 = v32;
          goto LABEL_26;
        }

        v17 = dlerror();
        v18 = strdup(v17);
        *v14 = v18;
        v19 = strlen(v18);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v35 = v18;
          _os_log_impl(&dword_26A939000, v11, OS_LOG_TYPE_INFO, "SoftLinking client failed to load dependency: %{public}s", buf, 0xCu);
        }

        v9 += v19 + 1;
        ++v14;
        ++v12;
        --v13;
      }

      while (v13);
      v20 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
      a2 = v30;
      v3 = v31;
      v21 = v32;
      if (v20)
      {
        v22 = v20;
        v23 = 1;
        do
        {
          strlcat(v22, *v21, v9);
          if (v23 < v33)
          {
            strlcat(v22, "\n", v9);
          }

          ++v23;
          ++v21;
          --v10;
        }

        while (v10);
        v8 = v32;
LABEL_24:
        v24 = 0;
        *a2 = v22;
LABEL_26:
        if (v4 != v3)
        {
          if (v33 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v33;
          }

          v26 = v8;
          do
          {
            v27 = *v26++;
            free(v27);
            --v25;
          }

          while (v25);
        }

        free(v8);
        goto LABEL_33;
      }
    }

    _sl_dlopen_cold_1();
  }

  v4 = a1;
  while (1)
  {
    v5 = dlopen_from();
    if (v5)
    {
      break;
    }

    v6 = v4[1];
    ++v4;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v24 = v5;
LABEL_33:
  v28 = *MEMORY[0x277D85DE8];
  return v24;
}