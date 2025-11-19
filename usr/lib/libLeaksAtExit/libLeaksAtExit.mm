char *resetDyldInsertLibraries(const char *a1)
{
  result = getenv("DYLD_INSERT_LIBRARIES");
  if (result)
  {
    v3 = result;
    strlen(result);
    v4 = __chkstk_darwin();
    v5 = &v16 - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4 + 1);
    v6 = *v3;
    if (!*v3)
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }

    v7 = v5;
    do
    {
      v8 = 0;
      for (i = v6; i; i = v3[++v8])
      {
        if (i == 58)
        {
          break;
        }
      }

      if (v8)
      {
        v10 = v8;
        while (v3[v10] != 47)
        {
          if (!--v10)
          {
            goto LABEL_11;
          }
        }

        v11 = &v3[v10];
        v6 = 47;
      }

      else
      {
LABEL_11:
        v11 = v3;
      }

      v12 = v6 == 47;
      v13 = v6 == 47;
      if (v12)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      if (&v3[v8] != v14 && strncmp(v14, a1, v3 - v11 - v13 + v8))
      {
        if (v7 != v5)
        {
          *v7++ = 58;
        }

        v7 = stpncpy(v7, v3, v8);
        i = v3[v8];
      }

      if (i == 58)
      {
        v15 = v3 + 1;
      }

      else
      {
        v15 = v3;
      }

      v3 = &v15[v8];
      v6 = v15[v8];
    }

    while (v6);
    if (v7 > v5)
    {
      *v7 = 0;
      return setenv("DYLD_INSERT_LIBRARIES", v5, 1);
    }

    else
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }
  }

  return result;
}

void my__exit(int a1)
{
  v2 = getpid();
  kill(v2, 17);
  _exit(a1);
}

void my_abort()
{
  v0 = getpid();
  kill(v0, 17);
  abort();
}