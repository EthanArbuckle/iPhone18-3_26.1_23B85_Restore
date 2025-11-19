uint64_t _os_trial_factor_get_BOOL_impl(const char *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    __assert_rtn("_os_trial_factor_get_BOOL_impl", "trial_factor_private.c", 23, "search_true");
  }

  if (!a2)
  {
    __assert_rtn("_os_trial_factor_get_BOOL_impl", "trial_factor_private.c", 24, "search_false");
  }

  v6 = getenv_copy_np();
  if (v6)
  {
    v7 = v6;
    if (strnstr(v6, a1, 0x800uLL))
    {
      free(v7);
      return 1;
    }

    else
    {
      v8 = strnstr(v7, a2, 0x800uLL);
      free(v7);
      if (v8)
      {
        return 0;
      }

      else
      {
        return a3;
      }
    }
  }

  return a3;
}

uint64_t _os_trial_factor_get_long_impl(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("_os_trial_factor_get_long_impl", "trial_factor_private.c", 77, "search_prefix");
  }

  v4 = strnlen(a1, 0x800uLL);
  if (v4 > 0x7FF)
  {
    return 0;
  }

  v5 = v4;
  v6 = getenv_copy_np();
  if (v6)
  {
    v7 = v6;
    v8 = strnstr(v6, a1, 0x800uLL);
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = &v8[v5];
    v10 = &v8[v5] - v7;
    if (&v8[v5] < v7)
    {
      __assert_rtn("_os_trial_factor_get_long_impl", "trial_factor_private.c", 100, "level >= factors");
    }

    if (v10 >= 0x801)
    {
      __assert_rtn("_os_trial_factor_get_long_impl", "trial_factor_private.c", 102, "consumed_so_far <= MAX_FACTOR_STRING_LENGTH");
    }

    if (v10 == 2048)
    {
      goto LABEL_16;
    }

    v11 = 0;
    v12 = 2048 - v10;
    while ((v9[v11] | 0x20) != 0x20)
    {
      if (v12 == ++v11)
      {
        goto LABEL_14;
      }
    }

    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_14:
    *__error() = 0;
    v13 = strtoll(v9, 0, 10);
    if (v13 || *__error() != 22)
    {
      v15 = *__error();
      free(v7);
      if (v15 != 34)
      {
        return v13;
      }
    }

    else
    {
LABEL_16:
      free(v7);
    }
  }

  return a2;
}

BOOL _os_trial_factor_has_impl(const char *a1)
{
  if (!a1)
  {
    __assert_rtn("_os_trial_factor_has_impl", "trial_factor_private.c", 128, "search_string");
  }

  v2 = strnlen(a1, 0x800uLL);
  if (v2 > 0x7FF)
  {
    return 0;
  }

  v3 = v2;
  v4 = getenv_copy_np();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = strnstr(v4, a1, 0x800uLL);
  if (v6)
  {
    v7 = (v6[v3] & 0xDF) == 0;
  }

  else
  {
    v7 = 0;
  }

  free(v5);
  return v7;
}