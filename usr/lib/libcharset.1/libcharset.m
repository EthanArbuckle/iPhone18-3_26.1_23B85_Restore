const char *locale_charset(void)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!os_variant_has_internal_content() || (v0 = getenv("LIBCHARSET_CODESET")) == 0)
  {
    v0 = nl_langinfo(0);
  }

  v1 = charset_map;
  if (charset_map)
  {
    v2 = charset_elems;
    goto LABEL_6;
  }

  v3 = getenv("CHARSETALIASDIR");
  if (v3)
  {
    if (*v3)
    {
      v4 = open(v3, 0x100000);
      v5 = v4;
      if (v4 != -1)
      {
        v6 = openat(v4, "charset.alias", 0);
        if (v6 != -1)
        {
          v7 = fdopen(v6, "r");
          if (v7)
          {
            v8 = v7;
            v9 = 0;
            v1 = &charset_mappings_static;
            v10 = 8;
            v11 = MEMORY[0x29EDCA600];
            while (!feof(v8) && !ferror(v8))
            {
              do
              {
                v12 = getc(v8);
                v13 = v12;
                if (v12 > 0x7F)
                {
                  v14 = __maskrune(v12, 0x4000uLL);
                }

                else
                {
                  v14 = *(v11 + 4 * v12 + 60) & 0x4000;
                }
              }

              while (v13 != -1 && v14);
              if (v13 == 35)
              {
                v27 = 0;
                fgetln(v8, &v27);
              }

              else
              {
                if (v13 == -1)
                {
                  break;
                }

                ungetc(v13, v8);
                if (fscanf(v8, "%64s %64s", __s1, &v28) != 2 || !__s1[0])
                {
                  break;
                }

                if (v9 == v10)
                {
                  v15 = 64;
                  if (v10 < 0x40)
                  {
                    v15 = v10;
                  }

                  v16 = v15 + v10;
                  v17 = malloc_type_calloc(v15 + v10, 0x10uLL, 0x10040B8F86A93uLL);
                  if (!v17)
                  {
                    v9 = v10;
                    break;
                  }

                  v18 = v17;
                  memcpy(v17, v1, 16 * v10);
                  if (v1 != &charset_mappings_static)
                  {
                    free(v1);
                  }

                  v1 = v18;
                  v10 = v16;
                }

                v19 = &v1[2 * v9];
                v20 = strdup(__s1);
                *v19 = v20;
                if (v28)
                {
                  v21 = &v28;
                }

                else
                {
                  v21 = "ASCII";
                }

                v22 = strdup(v21);
                v19[1] = v22;
                if (!v20 || !v22)
                {
                  free(v20);
                  *v19 = 0;
                  free(v19[1]);
                  v19[1] = 0;
LABEL_59:
                  charset_elems = v9;
                  goto LABEL_62;
                }

                ++v9;
                if (*__s1 == 42)
                {
                  goto LABEL_59;
                }
              }
            }

            charset_elems = v9;
            if (!v1)
            {
              locale_charset_cold_1();
            }

LABEL_62:
            fclose(v8);
            goto LABEL_52;
          }
        }
      }
    }

    else
    {
      v5 = -1;
    }

    v1 = 0;
    charset_elems = 0;
LABEL_52:
    if (v5 != -1)
    {
      close(v5);
    }

    charset_map = v1;
    v2 = charset_elems;
    if (!v1 && charset_elems)
    {
      locale_charset_cold_2();
    }

LABEL_6:
    if (!v2)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  v2 = 1;
  charset_elems = 1;
  v1 = &charset_mappings_static;
  charset_map = &charset_mappings_static;
LABEL_41:
  v23 = v1 + 1;
  while (1)
  {
    v24 = *(v23 - 1);
    if (*v24 == 42 && !*(v24 + 1))
    {
      break;
    }

    if (!strcmp(v24, v0))
    {
      break;
    }

    v23 += 2;
    if (!--v2)
    {
      goto LABEL_48;
    }
  }

  v0 = *v23;
LABEL_48:
  if (!*v0)
  {
    locale_charset_cold_3();
  }

  v25 = *MEMORY[0x29EDCA608];
  return v0;
}