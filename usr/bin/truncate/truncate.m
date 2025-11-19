BOOL start(int a1, char **a2)
{
  v4 = 0;
  v5 = 0;
  v24 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  memset(&v25, 0, sizeof(v25));
  while (1)
  {
    while (1)
    {
      v9 = getopt(a1, a2, "cr:s:");
      if (v9 != 114)
      {
        break;
      }

      v8 = optarg;
      v6 = 1;
    }

    if (v9 == -1)
    {
      break;
    }

    if (v9 == 99)
    {
      v4 = 1;
    }

    else
    {
      if (v9 != 115)
      {
        goto LABEL_55;
      }

      v10 = (((*optarg - 37) >> 1) | ((*optarg - 37) << 7));
      v11 = v24;
      if ((v10 - 3) < 2)
      {
        v5 = 1;
      }

      else if (v10 == 5 || v10 == 0)
      {
        v11 = 1;
      }

      v24 = v11;
      if (expand_number() == -1)
      {
      }

      v7 = 1;
      *optarg;
    }
  }

  v13 = optind;
  if (optind >= a1 || v7 + v6 != 1)
  {
LABEL_55:
    fprintf(__stderrp, "%s\n%s\n", "usage: truncate [-c] -s [+|-|%|/]size[K|k|M|m|G|g|T|t] file ...", "       truncate [-c] -r rfile file ...");
    exit(1);
  }

  if (v6)
  {
    if (stat(v8, &v25) == -1)
    {
      err(1, "%s", v8);
    }

    st_size = v25.st_size;
  }

  else
  {
    st_size = 0;
  }

  v16 = &a2[v13];
  if (v4)
  {
    v17 = 1;
  }

  else
  {
    v17 = 513;
  }

  v18 = *v16;
  if (!*v16)
  {
    v19 = 0;
    return v19 != 0;
  }

  v19 = 0;
  v20 = -1;
LABEL_32:
  ++v16;
  do
  {
    if (v20 != -1)
    {
      close(v20);
    }

    v21 = open(v18, v17, 420);
    v20 = v21;
    if (v21 != -1)
    {
      if (v5 != 1)
      {
        goto LABEL_43;
      }

      if (fstat(v21, &v25) != -1)
      {
        st_size = v25.st_size;
LABEL_43:
        if (v24 == 1)
        {
          if (fstat(v20, &v25) != -1)
          {
            st_size = v25.st_size;
            if (v25.st_size % 0)
            {
              st_size = 0;
            }

            goto LABEL_47;
          }

LABEL_50:
          warn("%s", v18);
          ++v19;
        }

        else
        {
LABEL_47:
          st_size &= ~(st_size >> 63);
          if (ftruncate(v20, st_size) == -1)
          {
            goto LABEL_50;
          }
        }

        v18 = *v16;
        if (*v16)
        {
          goto LABEL_32;
        }

        goto LABEL_52;
      }

LABEL_38:
      warn("%s", v18);
      ++v19;
      goto LABEL_40;
    }

    if (*__error() != 2)
    {
      goto LABEL_38;
    }

LABEL_40:
    v22 = *v16++;
    v18 = v22;
  }

  while (v22);
  if (v20 == -1)
  {
    return v19 != 0;
  }

LABEL_52:
  close(v20);
  return v19 != 0;
}