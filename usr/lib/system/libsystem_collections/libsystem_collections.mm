uint64_t os_map_str_find(uint64_t *a1, char *__s1)
{
  if (*(a1 + 2))
  {
    v3 = *(a1 + 3);
    v4 = *a1;
    v5 = *a1 + 8 * v3;
    v6 = *__s1;
    if (*__s1)
    {
      v7 = 0;
      v8 = __s1 + 1;
      do
      {
        v7 = (1025 * (v7 + v6)) ^ ((1025 * (v7 + v6)) >> 6);
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
      v10 = 9 * v7;
    }

    else
    {
      v10 = 0;
    }

    v11 = 32769 * (v10 ^ (v10 >> 11)) % v3;
    v12 = *(a1 + 9) + 1;
    v13 = *(a1 + 3);
    while (v12)
    {
      v14 = *(v5 + 8 * v11);
      if (!v14)
      {
        return v14;
      }

      v15 = *(v4 + 8 * v11);
      if (v15 == __s1 || !strcmp(__s1, v15))
      {
        return v14;
      }

      if (v11 + 1 < v3)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      --v12;
      if (!--v13)
      {
        os_map_str_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t os_map_str_delete(uint64_t a1, char *__s1)
{
  if (*(a1 + 8))
  {
    v4 = *(a1 + 12);
    v5 = *a1;
    v6 = *a1 + 8 * v4;
    v7 = *__s1;
    v27 = *(a1 + 8);
    v8 = 0;
    if (*__s1)
    {
      v9 = __s1 + 1;
      do
      {
        v8 = (1025 * (v8 + v7)) ^ ((1025 * (v8 + v7)) >> 6);
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
      v8 *= 9;
    }

    v11 = 32769 * (v8 ^ (v8 >> 11)) % v4;
    v12 = *(a1 + 18) + 1;
    v13 = *(a1 + 12);
    while (v12)
    {
      v14 = *(v6 + 8 * v11);
      if (!v14)
      {
        return v14;
      }

      v15 = v11;
      v16 = *(v5 + 8 * v11);
      if (v16 == __s1 || !strcmp(__s1, v16))
      {
        if (v11 + 1 < v4)
        {
          v17 = v11 + 1;
        }

        else
        {
          v17 = 0;
        }

        v18 = *(v6 + 8 * v17);
        if (v18)
        {
          while (1)
          {
            v19 = v17;
            v20 = *(v5 + 8 * v17);
            v21 = *v20;
            if (*v20)
            {
              v22 = 0;
              v23 = v20 + 1;
              do
              {
                v22 = (1025 * (v22 + v21)) ^ ((1025 * (v22 + v21)) >> 6);
                v24 = *v23++;
                v21 = v24;
              }

              while (v24);
              v25 = 9 * v22;
            }

            else
            {
              v25 = 0;
            }

            if (32769 * (v25 ^ (v25 >> 11)) % v4 == v19)
            {
              break;
            }

            *(v5 + 8 * v11) = v20;
            *(v6 + 8 * v11) = v18;
            if (v19 + 1 < v4)
            {
              v17 = v19 + 1;
            }

            else
            {
              v17 = 0;
            }

            v18 = *(v6 + 8 * v17);
            v11 = v19;
            if (!v18)
            {
              goto LABEL_33;
            }
          }

          v19 = v11;
LABEL_33:
          v15 = v19;
        }

        *(v6 + 8 * v15) = 0;
        *(a1 + 8) = v27 - 1;
        if (v4 >= 0x40 && v27 - 1 < v4 >> 3)
        {
          _os_map_str_rehash(a1, -1);
        }

        return v14;
      }

      if (v11 + 1 < v4)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      --v12;
      if (!--v13)
      {
        os_map_str_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t *os_map_str_insert(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a3)
  {
    os_map_str_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_map_str_rehash(a1, 1);
  }

  return _os_map_str_insert_no_rehash(a1, a2, a3);
}

uint64_t os_map_32_find(uint64_t *a1, unsigned int a2)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 3);
    v3 = *a1;
    v4 = *a1 + 4 * v2;
    v5 = 73244475 * ((73244475 * (a2 ^ HIWORD(a2))) ^ ((73244475 * (a2 ^ HIWORD(a2))) >> 16));
    v6 = (v5 ^ HIWORD(v5)) % v2;
    v7 = *(a1 + 9) + 1;
    v8 = *(a1 + 3);
    while (v7)
    {
      result = *(v4 + 8 * v6);
      if (!result || *(v3 + 4 * v6) == a2)
      {
        return result;
      }

      if (v6 + 1 < v2)
      {
        ++v6;
      }

      else
      {
        v6 = 0;
      }

      --v7;
      if (!--v8)
      {
        os_map_32_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t *os_map_32_insert(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    os_map_32_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_map_32_rehash(a1, 1);
  }

  return _os_map_32_insert_no_rehash(a1, a2, a3);
}

uint64_t *_os_map_32_insert_no_rehash(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 3);
  v5 = 73244475 * ((73244475 * (a2 ^ HIWORD(a2))) ^ ((73244475 * (a2 ^ HIWORD(a2))) >> 16));
  v6 = (v5 ^ HIWORD(v5)) % v4;
  v7 = *result;
  v8 = *result + 4 * v4;
  v9 = *(result + 3);
  while (1)
  {
    v10 = *(v8 + 8 * v6);
    if (!v10)
    {
      break;
    }

    if (v3)
    {
      v11 = *(v7 + 4 * v6);
      v12 = 73244475 * ((73244475 * (v11 ^ HIWORD(v11))) ^ ((73244475 * (v11 ^ HIWORD(v11))) >> 16));
      v13 = *(result + 3);
      v14 = (v12 ^ HIWORD(v12)) % v13;
      v15 = v6 >= v14;
      v16 = v6 - v14;
      if (v15)
      {
        v13 = 0;
      }

      v17 = v13 + v16;
      if (v3 > v17)
      {
        if (v3 > *(result + 9))
        {
          if (v3 >= 0x10000)
          {
            _os_map_32_insert_no_rehash_cold_1();
          }

          *(result + 9) = v3;
        }

        *(v7 + 4 * v6) = a2;
        *(v8 + 8 * v6) = a3;
        a2 = v11;
        a3 = v10;
        v3 = v17;
      }
    }

    ++v3;
    if (v6 + 1 < v4)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    if (!--v9)
    {
      _os_map_32_insert_no_rehash_cold_2();
    }
  }

  if (v3 > *(result + 9))
  {
    if (v3 >= 0x10000)
    {
      _os_map_32_insert_no_rehash_cold_3();
    }

    *(result + 9) = v3;
  }

  *(v7 + 4 * v6) = a2;
  *(v8 + 8 * v6) = a3;
  ++*(result + 2);
  return result;
}

uint64_t *_os_map_str_insert_no_rehash(uint64_t *result, _BYTE *a2, uint64_t a3)
{
  v3 = *(result + 3);
  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v5 = (1025 * (v5 + v4)) ^ ((1025 * (v5 + v4)) >> 6);
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
    v8 = 9 * v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 32769 * (v8 ^ (v8 >> 11)) % v3;
  v11 = *result;
  v12 = *result + 8 * v3;
  v13 = *(result + 3);
  while (1)
  {
    v14 = *(v12 + 8 * v10);
    if (!v14)
    {
      break;
    }

    if (v9)
    {
      v15 = *(v11 + 8 * v10);
      v16 = *v15;
      if (*v15)
      {
        v17 = 0;
        v18 = v15 + 1;
        do
        {
          v17 = (1025 * (v17 + v16)) ^ ((1025 * (v17 + v16)) >> 6);
          v19 = *v18++;
          v16 = v19;
        }

        while (v19);
        v20 = 9 * v17;
      }

      else
      {
        v20 = 0;
      }

      v21 = 32769 * (v20 ^ (v20 >> 11)) % v3;
      v22 = v10 >= v21;
      v23 = v10 - v21;
      v24 = v22 ? 0 : v3;
      v25 = v24 + v23;
      if (v9 > v25)
      {
        if (v9 > *(result + 9))
        {
          if (v9 >= 0x10000)
          {
            _os_map_str_insert_no_rehash_cold_1();
          }

          *(result + 9) = v9;
        }

        *(v11 + 8 * v10) = a2;
        *(v12 + 8 * v10) = a3;
        a2 = v15;
        a3 = v14;
        v9 = v25;
      }
    }

    ++v9;
    if (v10 + 1 < v3)
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }

    if (!--v13)
    {
      _os_map_str_insert_no_rehash_cold_2();
    }
  }

  if (v9 > *(result + 9))
  {
    if (v9 >= 0x10000)
    {
      _os_map_str_insert_no_rehash_cold_3();
    }

    *(result + 9) = v9;
  }

  *(v11 + 8 * v10) = a2;
  *(v12 + 8 * v10) = a3;
  ++*(result + 2);
  return result;
}

void *os_map_str_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_map_str_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 0x10uLL, 0x50040EE9192B6uLL);
  if (!result)
  {
    os_map_str_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

uint64_t *os_set_32_ptr_insert(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    os_set_32_ptr_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_set_32_ptr_rehash(a1, 1);
  }

  return _os_set_32_ptr_insert_no_rehash(a1, a2, a2);
}

uint64_t *_os_set_32_ptr_insert_no_rehash(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v3 = 0;
  v4 = *(result + 3);
  v5 = 73244475 * (*a2 ^ HIWORD(*a2));
  v6 = ((73244475 * (v5 ^ HIWORD(v5))) ^ ((73244475 * (v5 ^ HIWORD(v5))) >> 16)) % v4;
  v7 = *result;
  v8 = v4;
  while (1)
  {
    v9 = *(v7 + 8 * v6);
    if (!v9)
    {
      break;
    }

    if (v3 && ((v10 = 73244475 * (*v9 ^ HIWORD(*v9)), v11 = ((73244475 * (v10 ^ HIWORD(v10))) ^ ((73244475 * (v10 ^ HIWORD(v10))) >> 16)) % v4, v12 = v6 >= v11, v13 = v6 - v11, v12) ? (v14 = 0) : (v14 = v4), v15 = v14 + v13, v3 > v15))
    {
      if (v3 > *(result + 9))
      {
        if (v3 >= 0x10000)
        {
          _os_set_32_ptr_insert_no_rehash_cold_1();
        }

        *(result + 9) = v3;
      }

      *(v7 + 8 * v6) = a3;
      v3 = v15;
    }

    else
    {
      v9 = a3;
    }

    ++v3;
    if (v6 + 1 < v4)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    a3 = v9;
    if (!--v8)
    {
      _os_set_32_ptr_insert_no_rehash_cold_2();
    }
  }

  if (v3 > *(result + 9))
  {
    if (v3 >= 0x10000)
    {
      _os_set_32_ptr_insert_no_rehash_cold_3();
    }

    *(result + 9) = v3;
  }

  *(v7 + 8 * v6) = a3;
  ++*(result + 2);
  return result;
}

_DWORD *os_set_32_ptr_find(uint64_t *a1, unsigned int a2)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 3);
    v3 = *a1;
    v4 = 73244475 * ((73244475 * (a2 ^ HIWORD(a2))) ^ ((73244475 * (a2 ^ HIWORD(a2))) >> 16));
    v5 = (v4 ^ HIWORD(v4)) % v2;
    v6 = *(a1 + 9) + 1;
    v7 = v2;
    while (v6)
    {
      result = *(v3 + 8 * v5);
      if (!result || *result == a2)
      {
        return result;
      }

      if (v5 + 1 < v2)
      {
        ++v5;
      }

      else
      {
        v5 = 0;
      }

      --v6;
      if (!--v7)
      {
        os_set_32_ptr_find_cold_1();
      }
    }
  }

  return 0;
}

void *os_set_64_ptr_find(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 3);
    v3 = *a1;
    v4 = 73244475 * ((73244475 * (a2 ^ WORD1(a2))) ^ ((73244475 * (a2 ^ WORD1(a2))) >> 16));
    v5 = (v4 ^ HIWORD(v4)) % v2;
    v6 = *(a1 + 9) + 1;
    v7 = v2;
    while (v6)
    {
      result = *(v3 + 8 * v5);
      if (!result || *result == a2)
      {
        return result;
      }

      if (v5 + 1 < v2)
      {
        ++v5;
      }

      else
      {
        v5 = 0;
      }

      --v6;
      if (!--v7)
      {
        os_set_64_ptr_find_cold_1();
      }
    }
  }

  return 0;
}

const char **os_set_str_ptr_find(uint64_t *a1, char *__s1)
{
  if (*(a1 + 2))
  {
    v3 = *(a1 + 3);
    v4 = *a1;
    v5 = *__s1;
    if (*__s1)
    {
      v6 = 0;
      v7 = __s1 + 1;
      do
      {
        v6 = (1025 * (v6 + v5)) ^ ((1025 * (v6 + v5)) >> 6);
        v8 = *v7++;
        v5 = v8;
      }

      while (v8);
      v9 = 9 * v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = 32769 * (v9 ^ (v9 >> 11)) % v3;
    v11 = *(a1 + 9) + 1;
    v12 = *(a1 + 3);
    while (v11)
    {
      v13 = *(v4 + 8 * v10);
      if (!v13 || *v13 == __s1 || !strcmp(__s1, *v13))
      {
        return v13;
      }

      if (v10 + 1 < v3)
      {
        ++v10;
      }

      else
      {
        v10 = 0;
      }

      --v11;
      if (!--v12)
      {
        os_set_str_ptr_find_cold_1();
      }
    }
  }

  return 0;
}

void os_map_str_clear(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 12);
  *(a1 + 8) = 0x2000000000;
  *(a1 + 18) = 0;
  v6 = malloc_type_calloc(0x20uLL, 0x10uLL, 0x50040EE9192B6uLL);
  if (!v6)
  {
    os_map_str_init_cold_2();
  }

  *a1 = v6;
  *(a1 + 16) = 5;
  if (a2 && v5)
  {
    v7 = v4;
    v8 = v5;
    do
    {
      if (v7[v5])
      {
        (*(a2 + 16))(a2, *v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  free(v4);
}

uint64_t *os_set_64_ptr_insert(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    os_set_64_ptr_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_set_64_ptr_rehash(a1, 1);
  }

  return _os_set_64_ptr_insert_no_rehash(a1, a2, a2);
}

uint64_t *_os_set_64_ptr_insert_no_rehash(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v3 = 0;
  v4 = *(result + 3);
  v5 = 73244475 * (*a2 ^ HIWORD(*a2));
  v6 = ((73244475 * (v5 ^ HIWORD(v5))) ^ ((73244475 * (v5 ^ HIWORD(v5))) >> 16)) % v4;
  v7 = *result;
  v8 = v4;
  while (1)
  {
    v9 = *(v7 + 8 * v6);
    if (!v9)
    {
      break;
    }

    if (v3 && ((v10 = 73244475 * (*v9 ^ HIWORD(*v9)), v11 = ((73244475 * (v10 ^ HIWORD(v10))) ^ ((73244475 * (v10 ^ HIWORD(v10))) >> 16)) % v4, v12 = v6 >= v11, v13 = v6 - v11, v12) ? (v14 = 0) : (v14 = v4), v15 = v14 + v13, v3 > v15))
    {
      if (v3 > *(result + 9))
      {
        if (v3 >= 0x10000)
        {
          _os_set_64_ptr_insert_no_rehash_cold_1();
        }

        *(result + 9) = v3;
      }

      *(v7 + 8 * v6) = a3;
      v3 = v15;
    }

    else
    {
      v9 = a3;
    }

    ++v3;
    if (v6 + 1 < v4)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    a3 = v9;
    if (!--v8)
    {
      _os_set_64_ptr_insert_no_rehash_cold_2();
    }
  }

  if (v3 > *(result + 9))
  {
    if (v3 >= 0x10000)
    {
      _os_set_64_ptr_insert_no_rehash_cold_3();
    }

    *(result + 9) = v3;
  }

  *(v7 + 8 * v6) = a3;
  ++*(result + 2);
  return result;
}

void *os_set_32_ptr_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_set_32_ptr_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 8uLL, 0x10040436913F5uLL);
  if (!result)
  {
    os_set_32_ptr_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

uint64_t *os_set_str_ptr_insert(uint64_t a1, void *a2)
{
  if (!a2)
  {
    os_set_str_ptr_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_set_str_ptr_rehash(a1, 1);
  }

  return _os_set_str_ptr_insert_no_rehash(a1, a2, a2);
}

uint64_t *_os_set_str_ptr_insert_no_rehash(uint64_t *result, void *a2, void *a3)
{
  v3 = *(result + 3);
  v4 = **a2;
  if (**a2)
  {
    v5 = 0;
    v6 = (*a2 + 1);
    do
    {
      v5 = (1025 * (v5 + v4)) ^ ((1025 * (v5 + v4)) >> 6);
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
    v8 = 9 * v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 32769 * (v8 ^ (v8 >> 11)) % v3;
  v11 = *result;
  v12 = *(result + 3);
  while (1)
  {
    v13 = *(v11 + 8 * v10);
    if (!v13)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    v14 = **v13;
    if (**v13)
    {
      v15 = 0;
      v16 = (*v13 + 1);
      do
      {
        v15 = (1025 * (v15 + v14)) ^ ((1025 * (v15 + v14)) >> 6);
        v17 = *v16++;
        v14 = v17;
      }

      while (v17);
      v18 = 9 * v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = 32769 * (v18 ^ (v18 >> 11)) % v3;
    v20 = v10 >= v19;
    v21 = v10 - v19;
    v22 = v20 ? 0 : v3;
    v23 = v22 + v21;
    if (v9 > v23)
    {
      if (v9 > *(result + 9))
      {
        if (v9 >= 0x10000)
        {
          _os_set_str_ptr_insert_no_rehash_cold_1();
        }

        *(result + 9) = v9;
      }

      *(v11 + 8 * v10) = a3;
      v9 = v23;
    }

    else
    {
LABEL_22:
      v13 = a3;
    }

    ++v9;
    if (v10 + 1 < v3)
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }

    a3 = v13;
    if (!--v12)
    {
      _os_set_str_ptr_insert_no_rehash_cold_2();
    }
  }

  if (v9 > *(result + 9))
  {
    if (v9 >= 0x10000)
    {
      _os_set_str_ptr_insert_no_rehash_cold_3();
    }

    *(result + 9) = v9;
  }

  *(v11 + 8 * v10) = a3;
  ++*(result + 2);
  return result;
}

void *os_set_64_ptr_delete(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 12);
    v4 = *a1;
    v5 = 73244475 * ((73244475 * (a2 ^ WORD1(a2))) ^ ((73244475 * (a2 ^ WORD1(a2))) >> 16));
    v6 = (v5 ^ HIWORD(v5)) % v3;
    v7 = *(a1 + 18) + 1;
    v8 = v3;
    while (v7)
    {
      v9 = *(v4 + 8 * v6);
      if (!v9)
      {
        return v9;
      }

      if (v6 + 1 < v3)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (*v9 == a2)
      {
        v12 = *(v4 + 8 * v10);
        if (v12)
        {
          while (1)
          {
            v13 = v10;
            v14 = 73244475 * (*v12 ^ HIWORD(*v12));
            if (((73244475 * (v14 ^ HIWORD(v14))) ^ ((73244475 * (v14 ^ HIWORD(v14))) >> 16)) % v3 == v13)
            {
              break;
            }

            *(v4 + 8 * v6) = v12;
            if (v13 + 1 < v3)
            {
              v10 = v13 + 1;
            }

            else
            {
              v10 = 0;
            }

            v12 = *(v4 + 8 * v10);
            v6 = v13;
            if (!v12)
            {
              goto LABEL_22;
            }
          }

          v13 = v6;
LABEL_22:
          v15 = v13;
        }

        else
        {
          v15 = v6;
        }

        *(v4 + 8 * v15) = 0;
        v16 = v2 - 1;
        *(a1 + 8) = v16;
        if (v3 >= 0x40 && v16 < v3 >> 3)
        {
          _os_set_64_ptr_rehash(a1, -1);
        }

        return v9;
      }

      --v7;
      v6 = v10;
      if (!--v8)
      {
        os_set_64_ptr_find_cold_1();
      }
    }
  }

  return 0;
}

void *os_set_str_ptr_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_set_str_ptr_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  if (!result)
  {
    os_set_str_ptr_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

void _os_set_32_ptr_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_set_32_ptr_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
  if (!v11)
  {
    os_set_32_ptr_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = v10;
    do
    {
      if (*v12)
      {
        _os_set_32_ptr_insert_no_rehash(a1, *v12, *v12);
      }

      ++v12;
      --v3;
    }

    while (v3);
  }

  free(v10);
}

void _os_set_str_ptr_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_set_str_ptr_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
  if (!v11)
  {
    os_set_str_ptr_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = v10;
    do
    {
      if (*v12)
      {
        _os_set_str_ptr_insert_no_rehash(a1, *v12, *v12);
      }

      ++v12;
      --v3;
    }

    while (v3);
  }

  free(v10);
}

void *os_set_64_ptr_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_set_64_ptr_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 8uLL, 0x10040436913F5uLL);
  if (!result)
  {
    os_set_64_ptr_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

const char **os_set_str_ptr_delete(uint64_t a1, char *__s1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *(a1 + 12);
    v6 = *a1;
    v7 = *__s1;
    if (*__s1)
    {
      v8 = 0;
      v9 = __s1 + 1;
      do
      {
        v8 = (1025 * (v8 + v7)) ^ ((1025 * (v8 + v7)) >> 6);
        v10 = *v9++;
        v7 = v10;
      }

      while (v10);
      v11 = 9 * v8;
    }

    else
    {
      v11 = 0;
    }

    v12 = 32769 * (v11 ^ (v11 >> 11)) % v5;
    v13 = *(a1 + 18) + 1;
    v14 = *(a1 + 12);
    while (v13)
    {
      v15 = *(v6 + 8 * v12);
      if (!v15)
      {
        return v15;
      }

      if (*v15 == __s1 || !strcmp(__s1, *v15))
      {
        if (v12 + 1 < v5)
        {
          v16 = v12 + 1;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v6 + 8 * v16);
        if (v17)
        {
          while (1)
          {
            v18 = v16;
            v19 = **v17;
            if (**v17)
            {
              v20 = 0;
              v21 = (*v17 + 1);
              do
              {
                v20 = (1025 * (v20 + v19)) ^ ((1025 * (v20 + v19)) >> 6);
                v22 = *v21++;
                v19 = v22;
              }

              while (v22);
              v23 = 9 * v20;
            }

            else
            {
              v23 = 0;
            }

            if (32769 * (v23 ^ (v23 >> 11)) % v5 == v18)
            {
              break;
            }

            *(v6 + 8 * v12) = v17;
            if (v18 + 1 < v5)
            {
              v16 = v18 + 1;
            }

            else
            {
              v16 = 0;
            }

            v17 = *(v6 + 8 * v16);
            v12 = v18;
            if (!v17)
            {
              goto LABEL_35;
            }
          }

          v18 = v12;
LABEL_35:
          v24 = v18;
        }

        else
        {
          v24 = v12;
        }

        *(v6 + 8 * v24) = 0;
        *(a1 + 8) = v2 - 1;
        if (v5 >= 0x40 && v2 - 1 < v5 >> 3)
        {
          _os_set_str_ptr_rehash(a1, -1);
        }

        return v15;
      }

      if (v12 + 1 < v5)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }

      --v13;
      if (!--v14)
      {
        os_set_str_ptr_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t os_map_32_delete(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 12);
    v3 = *a1;
    v4 = *a1 + 4 * v2;
    v5 = 73244475 * ((73244475 * (a2 ^ HIWORD(a2))) ^ ((73244475 * (a2 ^ HIWORD(a2))) >> 16));
    v6 = (v5 ^ HIWORD(v5)) % v2;
    v7 = *(a1 + 18) + 1;
    v8 = *(a1 + 12);
    while (v7)
    {
      v9 = *(v4 + 8 * v6);
      if (!v9)
      {
        return v9;
      }

      if (v6 + 1 < v2)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (*(v3 + 4 * v6) == a2)
      {
        v12 = *(v4 + 8 * v10);
        if (v12)
        {
          while (1)
          {
            v13 = v10;
            v14 = *(v3 + 4 * v10);
            v15 = 73244475 * ((73244475 * (v14 ^ HIWORD(v14))) ^ ((73244475 * (v14 ^ HIWORD(v14))) >> 16));
            if ((v15 ^ HIWORD(v15)) % *(a1 + 12) == v13)
            {
              break;
            }

            *(v3 + 4 * v6) = v14;
            *(v4 + 8 * v6) = v12;
            if (v13 + 1 < v2)
            {
              v10 = v13 + 1;
            }

            else
            {
              v10 = 0;
            }

            v12 = *(v4 + 8 * v10);
            v6 = v13;
            if (!v12)
            {
              LODWORD(v2) = *(a1 + 12);
              v6 = v13;
              goto LABEL_21;
            }
          }

          LODWORD(v2) = *(a1 + 12);
        }

LABEL_21:
        *(v4 + 8 * v6) = 0;
        v16 = *(a1 + 8) - 1;
        *(a1 + 8) = v16;
        if (v2 >= 0x40 && v16 < v2 >> 3)
        {
          _os_map_32_rehash(a1, -1);
        }

        return v9;
      }

      --v7;
      v6 = v10;
      if (!--v8)
      {
        os_map_32_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t os_map_str_foreach(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = *result + 8 * v2;
    do
    {
      if (*(v7 + 8 * v5))
      {
        result = (*(a2 + 16))(a2, *(v6 + 8 * v5));
        if (!result)
        {
          return result;
        }

        v2 = *(v4 + 12);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

_DWORD *os_set_32_ptr_delete(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 12);
    v4 = *a1;
    v5 = 73244475 * ((73244475 * (a2 ^ HIWORD(a2))) ^ ((73244475 * (a2 ^ HIWORD(a2))) >> 16));
    v6 = (v5 ^ HIWORD(v5)) % v3;
    v7 = *(a1 + 18) + 1;
    v8 = v3;
    while (v7)
    {
      v9 = *(v4 + 8 * v6);
      if (!v9)
      {
        return v9;
      }

      if (v6 + 1 < v3)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (*v9 == a2)
      {
        v12 = *(v4 + 8 * v10);
        if (v12)
        {
          while (1)
          {
            v13 = v10;
            v14 = 73244475 * (*v12 ^ HIWORD(*v12));
            if (((73244475 * (v14 ^ HIWORD(v14))) ^ ((73244475 * (v14 ^ HIWORD(v14))) >> 16)) % v3 == v13)
            {
              break;
            }

            *(v4 + 8 * v6) = v12;
            if (v13 + 1 < v3)
            {
              v10 = v13 + 1;
            }

            else
            {
              v10 = 0;
            }

            v12 = *(v4 + 8 * v10);
            v6 = v13;
            if (!v12)
            {
              goto LABEL_22;
            }
          }

          v13 = v6;
LABEL_22:
          v15 = v13;
        }

        else
        {
          v15 = v6;
        }

        *(v4 + 8 * v15) = 0;
        v16 = v2 - 1;
        *(a1 + 8) = v16;
        if (v3 >= 0x40 && v16 < v3 >> 3)
        {
          _os_set_32_ptr_rehash(a1, -1);
        }

        return v9;
      }

      --v7;
      v6 = v10;
      if (!--v8)
      {
        os_set_32_ptr_find_cold_1();
      }
    }
  }

  return 0;
}

void _os_map_str_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_map_str_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 0x10uLL, 0x50040EE9192B6uLL);
  if (!v11)
  {
    os_map_str_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = 0;
    v13 = 8 * v3;
    v14 = v10;
    do
    {
      v15 = v14[v13 / 8];
      if (v15)
      {
        _os_map_str_insert_no_rehash(a1, *v14, v15);
      }

      ++v14;
      v12 += 8;
    }

    while (v13 != v12);
  }

  free(v10);
}

void os_map_str_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

void _os_set_64_ptr_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_set_64_ptr_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
  if (!v11)
  {
    os_set_64_ptr_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = v10;
    do
    {
      if (*v12)
      {
        _os_set_64_ptr_insert_no_rehash(a1, *v12, *v12);
      }

      ++v12;
      --v3;
    }

    while (v3);
  }

  free(v10);
}

void os_set_str_ptr_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

void os_set_str_ptr_clear(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v10 = __os_set_str_ptr_clear_block_invoke;
    v11 = &unk_29F28BDC8;
    v12 = a2;
    v3 = *a1;
    v4 = *(a1 + 12);
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v5 = malloc_type_calloc(0x20uLL, 8uLL, 0x80040B8603338uLL);
    if (!v5)
    {
      os_set_str_ptr_init_cold_2();
    }

    *a1 = v5;
    *(a1 + 16) = 5;
    if (v4)
    {
      v6 = v3;
      do
      {
        if (*v6)
        {
          (v10)(v9, *v6, *v6);
        }

        ++v6;
        --v4;
      }

      while (v4);
    }

    free(v3);
  }

  else
  {
    v7 = *a1;
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v8 = malloc_type_calloc(0x20uLL, 8uLL, 0x80040B8603338uLL);
    if (!v8)
    {
      os_set_str_ptr_init_cold_2();
    }

    *a1 = v8;
    *(a1 + 16) = 5;

    free(v7);
  }
}

uint64_t os_set_str_ptr_foreach(uint64_t result, uint64_t a2)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v8 = __os_set_str_ptr_foreach_block_invoke;
  v9 = &unk_29F28BDF0;
  v10 = a2;
  v2 = *(result + 12);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = *result;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        result = (v8)(v7, v6, *(v5 + 8 * v4));
        if (!result)
        {
          return result;
        }

        v2 = *(v3 + 12);
      }

      ++v4;
    }

    while (v4 < v2);
  }

  return result;
}

void os_set_32_ptr_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

void os_set_32_ptr_clear(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v10 = __os_set_32_ptr_clear_block_invoke;
    v11 = &unk_29F28BE18;
    v12 = a2;
    v3 = *a1;
    v4 = *(a1 + 12);
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v5 = malloc_type_calloc(0x20uLL, 8uLL, 0x10040436913F5uLL);
    if (!v5)
    {
      os_set_32_ptr_init_cold_2();
    }

    *a1 = v5;
    *(a1 + 16) = 5;
    if (v4)
    {
      v6 = v3;
      do
      {
        if (*v6)
        {
          (v10)(v9, *v6, *v6);
        }

        ++v6;
        --v4;
      }

      while (v4);
    }

    free(v3);
  }

  else
  {
    v7 = *a1;
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v8 = malloc_type_calloc(0x20uLL, 8uLL, 0x10040436913F5uLL);
    if (!v8)
    {
      os_set_32_ptr_init_cold_2();
    }

    *a1 = v8;
    *(a1 + 16) = 5;

    free(v7);
  }
}

uint64_t os_set_32_ptr_foreach(uint64_t result, uint64_t a2)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v8 = __os_set_32_ptr_foreach_block_invoke;
  v9 = &unk_29F28BE40;
  v10 = a2;
  v2 = *(result + 12);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = *result;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        result = (v8)(v7, v6, *(v5 + 8 * v4));
        if (!result)
        {
          return result;
        }

        v2 = *(v3 + 12);
      }

      ++v4;
    }

    while (v4 < v2);
  }

  return result;
}

void os_set_64_ptr_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

void os_set_64_ptr_clear(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v10 = __os_set_64_ptr_clear_block_invoke;
    v11 = &unk_29F28BE68;
    v12 = a2;
    v3 = *a1;
    v4 = *(a1 + 12);
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v5 = malloc_type_calloc(0x20uLL, 8uLL, 0x10040436913F5uLL);
    if (!v5)
    {
      os_set_64_ptr_init_cold_2();
    }

    *a1 = v5;
    *(a1 + 16) = 5;
    if (v4)
    {
      v6 = v3;
      do
      {
        if (*v6)
        {
          (v10)(v9, *v6, *v6);
        }

        ++v6;
        --v4;
      }

      while (v4);
    }

    free(v3);
  }

  else
  {
    v7 = *a1;
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v8 = malloc_type_calloc(0x20uLL, 8uLL, 0x10040436913F5uLL);
    if (!v8)
    {
      os_set_64_ptr_init_cold_2();
    }

    *a1 = v8;
    *(a1 + 16) = 5;

    free(v7);
  }
}

uint64_t os_set_64_ptr_foreach(uint64_t result, uint64_t a2)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v8 = __os_set_64_ptr_foreach_block_invoke;
  v9 = &unk_29F28BE90;
  v10 = a2;
  v2 = *(result + 12);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = *result;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        result = (v8)(v7, v6, *(v5 + 8 * v4));
        if (!result)
        {
          return result;
        }

        v2 = *(v3 + 12);
      }

      ++v4;
    }

    while (v4 < v2);
  }

  return result;
}

char *os_map_str_entry(uint64_t *a1, char *__s1)
{
  if (*(a1 + 2))
  {
    v3 = *a1;
    v4 = *(a1 + 3);
    v5 = *a1 + 8 * v4;
    v6 = *__s1;
    if (*__s1)
    {
      v7 = 0;
      v8 = __s1 + 1;
      do
      {
        v7 = (1025 * (v7 + v6)) ^ ((1025 * (v7 + v6)) >> 6);
        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
      v10 = 9 * v7;
    }

    else
    {
      v10 = 0;
    }

    v11 = 32769 * (v10 ^ (v10 >> 11)) % v4;
    v12 = *(a1 + 9) + 1;
    v13 = *(a1 + 3);
    while (v12 && *(v5 + 8 * v11))
    {
      v14 = *(v3 + 8 * v11);
      if (v14 == __s1 || !strcmp(__s1, *(v3 + 8 * v11)))
      {
        return v14;
      }

      if (v11 + 1 < v4)
      {
        ++v11;
      }

      else
      {
        v11 = 0;
      }

      --v12;
      if (!--v13)
      {
        os_map_str_find_cold_1();
      }
    }
  }

  return 0;
}

void *os_map_32_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_map_32_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 0xCuLL, 0x100004052888210uLL);
  if (!result)
  {
    os_map_32_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

void os_map_32_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

void os_map_32_clear(char **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 3);
  a1[1] = 0x2000000000;
  *(a1 + 9) = 0;
  v6 = malloc_type_calloc(0x20uLL, 0xCuLL, 0x100004052888210uLL);
  if (!v6)
  {
    os_map_32_init_cold_2();
  }

  *a1 = v6;
  *(a1 + 8) = 5;
  if (a2 && v5)
  {
    v7 = &v4[4 * v5];
    v8 = v4;
    do
    {
      if (*v7)
      {
        (*(a2 + 16))(a2, *v8);
      }

      ++v8;
      v7 += 8;
      --v5;
    }

    while (v5);
  }

  free(v4);
}

uint64_t os_map_32_foreach(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = *result + 4 * v2;
    do
    {
      if (*(v7 + 8 * v5))
      {
        result = (*(a2 + 16))(a2, *(v6 + 4 * v5));
        if (!result)
        {
          return result;
        }

        v2 = *(v4 + 12);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

void *os_map_64_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_map_64_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 0x10uLL, 0x100004000313F17uLL);
  if (!result)
  {
    os_map_64_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

void os_map_64_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

uint64_t *os_map_64_insert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    os_map_64_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_map_64_rehash(a1, 1);
  }

  return _os_map_64_insert_no_rehash(a1, a2, a3);
}

uint64_t os_map_64_find(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 3);
    v3 = *a1;
    v4 = *a1 + 8 * v2;
    v5 = 73244475 * (HIDWORD(a2) ^ a2 ^ ((HIDWORD(a2) ^ a2) >> 16));
    v6 = ((73244475 * (v5 ^ HIWORD(v5))) ^ ((73244475 * (v5 ^ HIWORD(v5))) >> 16)) % v2;
    v7 = *(a1 + 9) + 1;
    v8 = *(a1 + 3);
    while (v7)
    {
      result = *(v4 + 8 * v6);
      if (!result || *(v3 + 8 * v6) == a2)
      {
        return result;
      }

      if (v6 + 1 < v2)
      {
        ++v6;
      }

      else
      {
        v6 = 0;
      }

      --v7;
      if (!--v8)
      {
        os_map_64_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t os_map_64_delete(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 12);
    v4 = *a1;
    v5 = *a1 + 8 * v3;
    v6 = 73244475 * (HIDWORD(a2) ^ a2 ^ ((HIDWORD(a2) ^ a2) >> 16));
    v7 = ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) % v3;
    v8 = *(a1 + 18) + 1;
    v9 = *(a1 + 12);
    while (v8)
    {
      v10 = *(v5 + 8 * v7);
      if (!v10)
      {
        return v10;
      }

      v11 = v7;
      if (v7 + 1 < v3)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = 0;
      }

      if (*(v4 + 8 * v7) == a2)
      {
        v14 = *(v5 + 8 * v12);
        if (v14)
        {
          while (1)
          {
            v15 = v12;
            v16 = *(v4 + 8 * v12);
            v17 = 73244475 * (HIDWORD(v16) ^ v16 ^ ((HIDWORD(v16) ^ v16) >> 16));
            if (((73244475 * (v17 ^ HIWORD(v17))) ^ ((73244475 * (v17 ^ HIWORD(v17))) >> 16)) % v3 == v15)
            {
              break;
            }

            *(v4 + 8 * v7) = v16;
            *(v5 + 8 * v7) = v14;
            if (v15 + 1 < v3)
            {
              v12 = v15 + 1;
            }

            else
            {
              v12 = 0;
            }

            v14 = *(v5 + 8 * v12);
            v7 = v15;
            if (!v14)
            {
              goto LABEL_21;
            }
          }

          v15 = v7;
LABEL_21:
          v11 = v15;
        }

        *(v5 + 8 * v11) = 0;
        v18 = v2 - 1;
        *(a1 + 8) = v18;
        if (v3 >= 0x40 && v18 < v3 >> 3)
        {
          _os_map_64_rehash(a1, -1);
        }

        return v10;
      }

      --v8;
      v7 = v12;
      if (!--v9)
      {
        os_map_64_find_cold_1();
      }
    }
  }

  return 0;
}

void os_map_64_clear(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 12);
  *(a1 + 8) = 0x2000000000;
  *(a1 + 18) = 0;
  v6 = malloc_type_calloc(0x20uLL, 0x10uLL, 0x100004000313F17uLL);
  if (!v6)
  {
    os_map_64_init_cold_2();
  }

  *a1 = v6;
  *(a1 + 16) = 5;
  if (a2 && v5)
  {
    v7 = v4;
    v8 = v5;
    do
    {
      if (v7[v5])
      {
        (*(a2 + 16))(a2, *v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  free(v4);
}

uint64_t os_map_64_foreach(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = *result + 8 * v2;
    do
    {
      if (*(v7 + 8 * v5))
      {
        result = (*(a2 + 16))(a2, *(v6 + 8 * v5));
        if (!result)
        {
          return result;
        }

        v2 = *(v4 + 12);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

void *os_map_128_init(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 <= 0x20)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(a2 + 8);
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = v4;
    *(a1 + 18) = 0;
    if (v3 == -1)
    {
      os_map_128_init_cold_1();
    }
  }

  else
  {
    *(a1 + 8) = 0x2000000000;
    *(a1 + 18) = 0;
    v4 = 32;
  }

  result = malloc_type_calloc(v4, 0x18uLL, 0x1000040451B5BE8uLL);
  if (!result)
  {
    os_map_128_init_cold_2();
  }

  *a1 = result;
  *(a1 + 16) = 5;
  return result;
}

void os_map_128_destroy(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 12) = 0;
}

uint64_t *os_map_128_insert(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    os_map_128_insert_cold_1();
  }

  if (*(a1 + 8) >= 4 * *(a1 + 12) / 5u)
  {
    _os_map_128_rehash(a1, 1);
  }

  return _os_map_128_insert_no_rehash(a1, a2, a3, a4);
}

uint64_t os_map_128_find(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 2))
  {
    v3 = *(a1 + 3);
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    v6 = 73244475 * (((a2 ^ a3) >> 32) ^ a2 ^ a3 ^ ((((a2 ^ a3) >> 32) ^ a2 ^ a3) >> 16));
    v7 = ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) % v3;
    v8 = *(a1 + 9) + 1;
    v9 = *(a1 + 3);
    while (v8)
    {
      result = *(v5 + 8 * v7);
      if (!result)
      {
        return result;
      }

      v11 = (v4 + 16 * v7);
      v13 = *v11;
      v12 = v11[1];
      if (a2 == v13 && a3 == v12)
      {
        return result;
      }

      if (v7 + 1 < v3)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }

      --v8;
      if (!--v9)
      {
        os_map_128_find_cold_1();
      }
    }
  }

  return 0;
}

uint64_t os_map_128_delete(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 12);
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    v6 = 73244475 * (((a2 ^ a3) >> 32) ^ a2 ^ a3 ^ ((((a2 ^ a3) >> 32) ^ a2 ^ a3) >> 16));
    v7 = ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) % v3;
    v8 = *(a1 + 18) + 1;
    v9 = *(a1 + 12);
    while (v8)
    {
      v10 = *(v5 + 8 * v7);
      if (!v10)
      {
        return v10;
      }

      v11 = (v4 + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      if (v7 + 1 < v3)
      {
        v14 = v7 + 1;
      }

      else
      {
        v14 = 0;
      }

      if (a2 == v12 && a3 == v13)
      {
        v17 = *(v5 + 8 * v14);
        if (v17)
        {
          while (1)
          {
            v18 = v14;
            v19 = *(v4 + 16 * v14);
            v20 = veorq_s8(v19, vdupq_laneq_s64(v19, 1)).u64[0];
            v21 = 73244475 * (HIDWORD(v20) ^ v20 ^ ((HIDWORD(v20) ^ v20) >> 16));
            if (((73244475 * (v21 ^ HIWORD(v21))) ^ ((73244475 * (v21 ^ HIWORD(v21))) >> 16)) % *(a1 + 12) == v18)
            {
              break;
            }

            *(v4 + 16 * v7) = v19;
            *(v5 + 8 * v7) = v17;
            if (v18 + 1 < v3)
            {
              v14 = v18 + 1;
            }

            else
            {
              v14 = 0;
            }

            v17 = *(v5 + 8 * v14);
            v7 = v18;
            if (!v17)
            {
              LODWORD(v3) = *(a1 + 12);
              v7 = v18;
              goto LABEL_24;
            }
          }

          LODWORD(v3) = *(a1 + 12);
        }

LABEL_24:
        *(v5 + 8 * v7) = 0;
        v22 = *(a1 + 8) - 1;
        *(a1 + 8) = v22;
        if (v3 >= 0x40 && v22 < v3 >> 3)
        {
          _os_map_128_rehash(a1, -1);
        }

        return v10;
      }

      --v8;
      v7 = v14;
      if (!--v9)
      {
        os_map_128_find_cold_1();
      }
    }
  }

  return 0;
}

void os_map_128_clear(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 12);
  *(a1 + 8) = 0x2000000000;
  *(a1 + 18) = 0;
  v6 = malloc_type_calloc(0x20uLL, 0x18uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    os_map_128_init_cold_2();
  }

  *a1 = v6;
  *(a1 + 16) = 5;
  if (a2 && v5)
  {
    v7 = &v4[2 * v5];
    v8 = v4 + 1;
    do
    {
      if (*v7)
      {
        (*(a2 + 16))(a2, *(v8 - 1), *v8);
      }

      v8 += 2;
      ++v7;
      --v5;
    }

    while (v5);
  }

  free(v4);
}

uint64_t os_map_128_foreach(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = *result + 16 * v2;
    v7 = (*result + 8);
    do
    {
      if (*(v6 + 8 * v5))
      {
        result = (*(a2 + 16))(a2, *(v7 - 1), *v7);
        if (!result)
        {
          return result;
        }

        v2 = *(v4 + 12);
      }

      ++v5;
      v7 += 2;
    }

    while (v5 < v2);
  }

  return result;
}

void _os_map_32_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_map_32_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 0xCuLL, 0x100004052888210uLL);
  if (!v11)
  {
    os_map_32_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = &v10[v3];
    v13 = v10;
    do
    {
      if (*v12)
      {
        _os_map_32_insert_no_rehash(a1, *v13, *v12);
      }

      ++v12;
      ++v13;
      --v3;
    }

    while (v3);
  }

  free(v10);
}

void _os_map_64_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_map_64_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 0x10uLL, 0x100004000313F17uLL);
  if (!v11)
  {
    os_map_64_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = 0;
    v13 = 8 * v3;
    v14 = v10;
    do
    {
      v15 = v14[v13 / 8];
      if (v15)
      {
        _os_map_64_insert_no_rehash(a1, *v14, v15);
      }

      ++v14;
      v12 += 8;
    }

    while (v13 != v12);
  }

  free(v10);
}

uint64_t *_os_map_64_insert_no_rehash(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 3);
  v5 = 73244475 * (HIDWORD(a2) ^ a2 ^ ((HIDWORD(a2) ^ a2) >> 16));
  v6 = ((73244475 * (v5 ^ HIWORD(v5))) ^ ((73244475 * (v5 ^ HIWORD(v5))) >> 16)) % v4;
  v7 = *result;
  v8 = *result + 8 * v4;
  v9 = *(result + 3);
  while (1)
  {
    v10 = *(v8 + 8 * v6);
    if (!v10)
    {
      break;
    }

    if (v3)
    {
      v11 = *(v7 + 8 * v6);
      v12 = 73244475 * (HIDWORD(v11) ^ v11 ^ ((HIDWORD(v11) ^ v11) >> 16));
      v13 = ((73244475 * (v12 ^ HIWORD(v12))) ^ ((73244475 * (v12 ^ HIWORD(v12))) >> 16)) % v4;
      v14 = v6 >= v13;
      v15 = v6 - v13;
      v16 = v14 ? 0 : v4;
      v17 = v16 + v15;
      if (v3 > v17)
      {
        if (v3 > *(result + 9))
        {
          if (v3 >= 0x10000)
          {
            _os_map_64_insert_no_rehash_cold_1();
          }

          *(result + 9) = v3;
        }

        *(v7 + 8 * v6) = a2;
        *(v8 + 8 * v6) = a3;
        a2 = v11;
        a3 = v10;
        v3 = v17;
      }
    }

    ++v3;
    if (v6 + 1 < v4)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    if (!--v9)
    {
      _os_map_64_insert_no_rehash_cold_2();
    }
  }

  if (v3 > *(result + 9))
  {
    if (v3 >= 0x10000)
    {
      _os_map_64_insert_no_rehash_cold_3();
    }

    *(result + 9) = v3;
  }

  *(v7 + 8 * v6) = a2;
  *(v8 + 8 * v6) = a3;
  ++*(result + 2);
  return result;
}

void _os_map_128_rehash(uint64_t a1, int a2)
{
  v3 = *(a1 + 12);
  if (a2 < 1)
  {
    v5 = *(a1 + 12);
    if (a2 < 0)
    {
      v6 = *(a1 + 16);
      if (v6 >= 6)
      {
        LOWORD(v6) = v6 - 1;
        *(a1 + 16) = v6;
      }

      v7 = 1 << v6;
      v8 = v7 - 1;
      v9 = v7 - ((v7 - 1) & (v3 >> 1));
      if ((v8 & (v3 >> 1)) == 0)
      {
        v9 = 0;
      }

      v5 = v9 + (v3 >> 1);
      *(a1 + 12) = v5;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = (1 << v4) + v3;
    *(a1 + 12) = v5;
    if (v5 == 8 << v4)
    {
      *(a1 + 16) = v4 + 1;
    }
  }

  v10 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  if (v5 == -1)
  {
    os_map_128_init_cold_1();
  }

  v11 = malloc_type_calloc(v5, 0x18uLL, 0x1000040451B5BE8uLL);
  if (!v11)
  {
    os_map_128_init_cold_2();
  }

  *a1 = v11;
  if (v3)
  {
    v12 = &v10[2 * v3];
    v13 = v10 + 1;
    do
    {
      if (*v12)
      {
        _os_map_128_insert_no_rehash(a1, *(v13 - 1), *v13, *v12);
      }

      ++v12;
      v13 += 2;
      --v3;
    }

    while (v3);
  }

  free(v10);
}

uint64_t *_os_map_128_insert_no_rehash(uint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *(result + 3);
  v6 = 73244475 * (((a2 ^ a3) >> 32) ^ a2 ^ a3 ^ ((((a2 ^ a3) >> 32) ^ a2 ^ a3) >> 16));
  v7 = ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) % v5;
  v8 = *result;
  v9 = *result + 16 * v5;
  v10 = *(result + 3);
  while (1)
  {
    v11 = *(v9 + 8 * v7);
    if (!v11)
    {
      break;
    }

    if (v4)
    {
      v12 = (v8 + 16 * v7);
      v14 = *v12;
      v13 = v12[1];
      v15 = ((v13 ^ *v12) >> 32) ^ v13 ^ *v12;
      v16 = 73244475 * ((73244475 * (v15 ^ HIWORD(v15))) ^ ((73244475 * (v15 ^ HIWORD(v15))) >> 16));
      v17 = *(result + 3);
      v18 = (v16 ^ HIWORD(v16)) % v17;
      v19 = v7 >= v18;
      v20 = v7 - v18;
      if (v19)
      {
        v17 = 0;
      }

      v21 = v17 + v20;
      if (v4 > v21)
      {
        if (v4 > *(result + 9))
        {
          if (v4 >= 0x10000)
          {
            _os_map_128_insert_no_rehash_cold_1();
          }

          *(result + 9) = v4;
        }

        *v12 = a2;
        v12[1] = a3;
        a3 = v13;
        a2 = v14;
        *(v9 + 8 * v7) = a4;
        a4 = v11;
        v4 = v21;
      }
    }

    ++v4;
    if (v7 + 1 < v5)
    {
      ++v7;
    }

    else
    {
      v7 = 0;
    }

    if (!--v10)
    {
      _os_map_128_insert_no_rehash_cold_2();
    }
  }

  if (v4 > *(result + 9))
  {
    if (v4 >= 0x10000)
    {
      _os_map_128_insert_no_rehash_cold_3();
    }

    *(result + 9) = v4;
  }

  v22 = (v8 + 16 * v7);
  *v22 = a2;
  v22[1] = a3;
  *(v9 + 8 * v7) = a4;
  ++*(result + 2);
  return result;
}