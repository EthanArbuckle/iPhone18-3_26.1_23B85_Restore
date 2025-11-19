uint64_t _entry_remove_from_list(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 11);
  v3 = result + 12 * ((v2 >> 57) & 7);
  v4 = *(a2 + 8) | (*(a2 + 10) << 16);
  if (v4 == 0xFFFFFF || (v5 = *(result + 88)) == 0)
  {
    *(v3 + 144) = *(v3 + 144) & 0xFF000000FFFFFFFFLL | ((v2 & 0xFFFFFF) << 32);
  }

  else
  {
    *(v5 + 19 * v4 + 11) = *(v5 + 19 * v4 + 11) & 0xFFFFFFFFFF000000 | v2 & 0xFFFFFF;
  }

  v6 = *(a2 + 11) & 0xFFFFFFLL;
  if (v6 == 0xFFFFFF || (v7 = *(result + 88)) == 0)
  {
    *(v3 + 144) = *(v3 + 144) & 0xFFFFFFFFFF000000 | *(a2 + 8) | (*(a2 + 10) << 16);
  }

  else
  {
    v8 = *(a2 + 8);
    v9 = v7 + 19 * v6;
    *(v9 + 10) = *(a2 + 10);
    *(v9 + 8) = v8;
  }

  *(a2 + 10) = -1;
  *(a2 + 8) = -1;
  *(a2 + 11) = *(a2 + 11) & 0xF1FFFFFFFF000000 | 0x800000000FFFFFFLL;
  *(v3 + 152) = *(v3 + 152) & 0xFF000000 | (*(v3 + 152) - 1) & 0xFFFFFF;
  return result;
}

uint64_t cache_get(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2 && a3)
  {
    v5 = result;
    v6 = *(result + 200);
    os_unfair_lock_lock_with_options();
    ++*(v5 + 248);
    v7 = *(v5 + 200);
    optionally_checking_collisions = _entry_get_optionally_checking_collisions(v5, a2, 1);
    if (optionally_checking_collisions)
    {
      v9 = optionally_checking_collisions;
      if (*optionally_checking_collisions)
      {
        v10 = *(optionally_checking_collisions + 11);
        if ((v10 & 0x100000000000000) == 0)
        {
          if ((~v10 & 0xFF000000000000) != 0)
          {
            v10 = (v10 + 0x1000000000000) & 0xFF000000000000 | v10 & 0xFE00FFFFFFFFFFFFLL;
            *(optionally_checking_collisions + 11) = v10;
          }

          if ((v10 & 0xFFFFFF000000) != 0)
          {
            v11 = *(v5 + 96);
            v12 = (v10 >> 24) & 0xFFFFFF;
            if ((*(v11 + 22 * v12 - 1) & 1) == 0)
            {
              if ((v10 & 0x800000000000000) == 0)
              {
                _entry_remove_from_list(v5, optionally_checking_collisions);
                v11 = *(v5 + 96);
                v12 = (*(v9 + 11) >> 24) & 0xFFFFFFLL;
              }

              v13 = v11 + 22 * v12;
              v14 = (v13 - 22);
              if (*(v13 - 6) || (v17 = *(v5 + 72)) == 0 || (v17(*v14, *(v5 + 208)) & 1) != 0)
              {
                if (v14)
                {
                  ++*(v5 + 252);
                  v15 = *(v5 + 200);
                  _entry_add_to_list(v5, v9, (*(v9 + 11) & 0xFE000000000000) != 0);
                  v16 = *v14;
                  v21 = 0;
                  (*(a3 + 16))(a3, v16, &v21);
                  if (v21 == 1)
                  {
                    _entry_remove(v5, v9);
                  }
                }
              }

              else
              {
                _entry_evict(v5, v9);
              }
            }
          }
        }
      }
    }

    v18 = *(v5 + 200);
    v19 = *(v5 + 252) / *(v5 + 248);
    os_unfair_lock_unlock((v5 + 80));
    v20 = *(v5 + 200);
    return v5;
  }

  return result;
}

uint64_t _entry_get_optionally_checking_collisions(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(a1 + 16))(a2, *(a1 + 208));
  v6 = *(a1 + 104) & 0xFFFFFFLL;
  v7 = v5 % v6;
  v8 = *(a1 + 88);
  v9 = v8 + 19 * (v5 % v6);
  if (a3)
  {
    v10 = (v6 - v7);
    if (v6 != v7)
    {
      v11 = 0;
      do
      {
        v12 = v9 + 19 * v11;
        v13 = *(v12 + 11);
        if (*v12)
        {
          if ((v13 & 0x100000000000000) == 0)
          {
            v14 = *(a1 + 208);
            if ((*(a1 + 24))())
            {
              return v12;
            }
          }
        }

        else if ((v13 & 0x100000000000000) == 0)
        {
          return v12;
        }

        ++v11;
        --v10;
      }

      while (v10);
      v8 = *(a1 + 88);
    }

    if (v7)
    {
      v15 = 0;
      v12 = v8;
      do
      {
        v16 = *(v12 + 11);
        if (*v12)
        {
          if ((v16 & 0x100000000000000) == 0)
          {
            v17 = *(a1 + 208);
            if ((*(a1 + 24))())
            {
              return v8 + 19 * v15;
            }
          }
        }

        else if ((v16 & 0x100000000000000) == 0)
        {
          return v12;
        }

        ++v15;
        v12 += 19;
        --v7;
      }

      while (v7);
    }

    return 0;
  }

  v18 = (v6 - v7);
  if (!v18)
  {
LABEL_25:
    while (v7)
    {
      if (!*v8 && (*(v8 + 18) & 1) == 0)
      {
        return v8;
      }

      v8 += 19;
      --v7;
    }

    return 0;
  }

  v19 = 0;
  while (1)
  {
    v12 = v9 + 19 * v19;
    if (!*v12 && (*(v12 + 18) & 1) == 0)
    {
      return v12;
    }

    ++v19;
    if (!--v18)
    {
      goto LABEL_25;
    }
  }
}

uint64_t _entry_add_to_list(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = result + 12 * a3;
  v6 = *(v3 + 144);
  v4 = (v3 + 144);
  v5 = v6;
  v7 = *(result + 88);
  v8 = 678152731 * (a2 - v7);
  v9 = v6 & 0xFFFFFF;
  if ((v6 & 0xFFFFFF) == 0xFFFFFF || v7 == 0)
  {
    *v4 = v5 & 0xFF000000FFFFFFFFLL | ((*&v8 & 0xFFFFFFLL) << 32);
    *(a2 + 10) = -1;
    *(a2 + 8) = -1;
    v12 = *&v8 & 0xFFFFFFLL;
  }

  else
  {
    v11 = v7 + 19 * v9;
    v12 = *&v8 & 0xFFFFFFLL;
    *(v11 + 11) = *(v11 + 11) & 0xFFFFFFFFFF000000 | *&v8 & 0xFFFFFFLL;
    v13 = *v4;
    *(a2 + 8) = *v4;
    *(a2 + 10) = BYTE2(v13);
  }

  *(a2 + 11) = *(a2 + 11) & 0xF1FFFFFFFFFFFFFFLL | ((a3 & 7) << 57) | 0xFFFFFF;
  *v4 = *v4 & 0xFFFFFFFFFF000000 | v12;
  v4[2] = v4[2] & 0xFF000000 | (v4[2] + 1) & 0xFFFFFF;
  return result;
}

uint64_t _cache_update_limits(_DWORD *a1)
{
  if (*(MEMORY[0x29EDCA698] + 80) == -1)
  {
    v2 = *(MEMORY[0x29EDCA698] + 88);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v3 = (mach_absolute_time() - *(v2 + 40)) * *(v2 + 48) / *(v2 + 52) / 0xF4240;
  v4 = *(v2 + 56);
  *(v2 + 32) = v3 < v4;
  v5 = a1[55];
  if ((a1[31] & 0xFFFFFFu) > v5 && v3 >= v4)
  {
    if (v5 >= 0x14)
    {
      ++v5;
    }

    else
    {
      v5 = 20;
    }

    a1[55] = v5;
  }

  v6 = a1[58];
  if (v6)
  {
    if (v5 >= v6)
    {
      v5 = a1[58];
    }

    a1[55] = v5;
  }

  return _cache_enforce_limits(a1);
}

void cache_set_count_hint(os_unfair_lock_s *a1, uint32_t a2)
{
  atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
  a1[55]._os_unfair_lock_opaque = a2;
  a1[58]._os_unfair_lock_opaque = a2;
  os_unfair_lock_lock_with_options();
  _cache_update_limits(a1);
  os_unfair_lock_unlock(a1 + 20);

  cache_release(a1);
}

void cache_release(void *a1)
{
  if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_release) <= 1)
  {
    __dmb(9u);
    v3 = a1[25];
    if (*(MEMORY[0x29EDCA698] + 80) == -1)
    {
      v4 = *(MEMORY[0x29EDCA698] + 88);
    }

    else
    {
      v4 = _os_alloc_once();
    }

    os_unfair_lock_lock_with_options();
    v5 = *v4;
    if (*v4 == a1)
    {
      v7 = v4;
    }

    else
    {
      do
      {
        v6 = v5;
        v5 = v5[1];
      }

      while (v5 != a1);
      v7 = v6 + 1;
    }

    *v7 = v5[1];
    os_unfair_lock_unlock((v4 + 8));
    _cache_remove_all_locked(a1);
    v8 = a1[25];
    if (v8)
    {
      free(v8);
    }

    v9 = a1[11];
    if (v9)
    {
      free(v9);
    }

    v10 = a1[12];
    if (v10)
    {
      free(v10);
    }

    free(a1);
  }
}

char *cache_set_name(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    free(v4);
  }

  result = strdup(__s1);
  *(a1 + 200) = result;
  return result;
}

int cache_create(const char *name, const cache_attributes_t *attrs, cache_t **cache_out)
{
  result = 22;
  if (!name || !attrs || !cache_out)
  {
    return result;
  }

  v7 = malloc_type_calloc(1uLL, 0x110uLL, 0x10B0040B72EFD24uLL);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  v9 = strdup(name);
  v8[12].i64[1] = v9;
  if (!v9)
  {
    free(v8);
    return 12;
  }

  v10 = MEMORY[0x29EDCA698];
  if (*(MEMORY[0x29EDCA698] + 80) != -1)
  {
    cache_create_cold_1();
  }

  v11 = v8[12].i64[1];
  key_hash_cb = attrs->key_hash_cb;
  if (!key_hash_cb)
  {
    key_hash_cb = cache_key_hash_cb_integer;
  }

  v8[1].i64[0] = key_hash_cb;
  key_is_equal_cb = attrs->key_is_equal_cb;
  if (!key_is_equal_cb)
  {
    key_is_equal_cb = cache_key_is_equal_cb_integer;
  }

  v8[1].i64[1] = key_is_equal_cb;
  v8[2] = *&attrs->key_retain_cb;
  v8[3].i64[1] = attrs->value_release_cb;
  v8[4] = vextq_s8(*&attrs->value_make_nonpurgeable_cb, *&attrs->value_make_nonpurgeable_cb, 8uLL);
  v8[13].i64[0] = attrs->user_data;
  if (attrs->version >= 2)
  {
    v8[3].i64[0] = attrs->value_retain_cb;
  }

  v14 = v8[12].i64[1];
  for (i = 144; i != 192; i += 12)
  {
    *(v8->i64 + i) |= 0xFFFFFF00FFFFFFuLL;
  }

  v8[13].i64[1] = 0x1400000000;
  _entry_table_resize(v8);
  _value_entry_table_resize(v8);
  v8[5].i32[0] = 0;
  v8->i32[0] = 1;
  if (*(v10 + 80) == -1)
  {
    v16 = *(v10 + 88);
  }

  else
  {
    v16 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  v8->i64[1] = *v16;
  *v16 = v8;
  os_unfair_lock_unlock((v16 + 8));
  *cache_out = v8;
  v17 = v8[12].i64[1];
  return 0;
}

void *_entry_table_resize(void *result)
{
  v1 = result;
  v2 = result[13];
  v3 = v2 & 0xFFFFFF;
  if ((result[13] & 0xFFFFFF) != 0)
  {
    v4 = *(result + 29) & 0xFFFFFF;
    v5 = result[13] & 0xFFFFFFLL;
    if ((HIDWORD(v2) & 0xFFFFFFu) > v4)
    {
      if ((2 * v3 - 16777214) >> 24 == 255)
      {
        LODWORD(v5) = (2 * v3) | 1;
      }

      else
      {
        LODWORD(v5) = 0xFFFFFF;
        if (v3 == 0xFFFFFF && v4 < 0x28F5C)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v5) = 3;
  }

  v6 = result[25];
  v7 = result[13] & 0xFFFFFFLL;
  v8 = malloc_type_calloc(v5, 0x13uLL, 0x108004050A0F9FEuLL);
  if (v8)
  {
    v9 = v1[11];
    v1[11] = v8;
    v10 = v1[14] & 0xFF000000FF000000 | ((75 * v5) / 0x64uLL);
    v1[13] = v1[13] & 0xFFFFFFFFFF000000 | v5;
    v1[14] = v10;
    if (v3)
    {
      v11 = v2 & 0xFFFFFF;
      v12 = malloc_type_calloc(v2 & 0xFFFFFF, 8uLL, 0x2004093837F09uLL);
      v13 = 0;
      v14 = 8 * v11;
      v15 = v9;
      do
      {
        if (*v15 && (v15[18] & 1) == 0)
        {
          optionally_checking_collisions = _entry_get_optionally_checking_collisions(v1, *v15, 0);
          if (optionally_checking_collisions)
          {
            v17 = *v15;
            *(optionally_checking_collisions + 15) = *(v15 + 15);
            *optionally_checking_collisions = v17;
          }

          v12[v13 / 8] = optionally_checking_collisions;
        }

        v15 += 19;
        v13 += 8;
      }

      while (v14 != v13);
    }

    else
    {
      v12 = 0;
    }

    for (i = 0; i != 4; ++i)
    {
      v20 = v1 + 12 * i + 144;
      v21 = *v20;
      *v20 |= 0xFFFFFF00FFFFFFuLL;
      *(v20 + 8) = *(v20 + 11) << 24;
      for (j = HIDWORD(v21) & 0xFFFFFF; j != 0xFFFFFF; j = *&v9[19 * j + 11] & 0xFFFFFFLL)
      {
        _entry_add_to_list(v1, v12[j], i);
      }
    }

    free(v12);
    free(v9);
    v23 = v1[25];
    return v1;
  }

  else
  {
    v18 = v1[25];
    return v1;
  }
}

void *_value_entry_table_resize(void *result)
{
  v1 = result;
  v2 = result[15];
  v3 = v2 & 0xFFFFFF;
  if ((result[15] & 0xFFFFFF) != 0)
  {
    v4 = *(result + 33) & 0xFFFFFF;
    v5 = result[15] & 0xFFFFFFLL;
    if ((HIDWORD(v2) & 0xFFFFFFu) > v4)
    {
      if ((2 * v3 - 16777214) >> 24 == 255)
      {
        LODWORD(v5) = (2 * v3) | 1;
      }

      else
      {
        LODWORD(v5) = 0xFFFFFF;
        if (v3 == 0xFFFFFF && v4 < 0x28F5C)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v5) = 3;
  }

  v6 = result[25];
  v7 = result[15] & 0xFFFFFFLL;
  v8 = malloc_type_calloc(v5, 0x16uLL, 0x1080040A6DDC68FuLL);
  if (v8)
  {
    v9 = v8;
    if (v3)
    {
      v10 = 0;
      v11 = 22 * (v2 & 0xFFFFFF);
      do
      {
        v12 = v1[12] + v10;
        v13 = *(v12 + 18);
        if ((v13 & 0x1FFFFFF) != 0 || *(v12 + 16))
        {
          if ((v13 & 0x1000000) != 0)
          {
            v1[16] = v1[16] & 0xFF000000FFFFFFFFLL | ((((v1[16] + 0xFFFFFF00000000) >> 32) & 0xFFFFFF) << 32);
          }

          else
          {
            v14 = _value_entry_table_get(v9, v5, *v12);
            v15 = *(v12 + 14);
            *v14 = *v12;
            *(v14 + 14) = v15;
          }
        }

        v10 += 22;
      }

      while (v11 != v10);
    }

    v16 = v1[15];
    v17 = v1[16] & 0xFFFFFFFFFF000000 | (75 * v5 / 0x64u) & 0xFFFFFF;
    v18 = v1[13];
    v26 = v1[12];
    v1[12] = v9;
    v1[15] = v16 & 0xFFFFFFFFFF000000 | v5;
    v1[16] = v17;
    if ((v18 & 0xFFFFFF) != 0)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v1[11];
        if (*(v21 + v19))
        {
          v22 = v21 + v19;
          v23 = *(v21 + v19 + 11);
          if ((v23 & 0xFFFFFF000000) != 0)
          {
            *(v22 + 11) = *(v22 + 11) & 0xFFFF000000FFFFFFLL | ((((0xE8BA2E8BA3000000 * ((_value_entry_table_get(v9, v5, *&v26[22 * ((v23 >> 24) & 0xFFFFFF) - 22]) - v1[12]) >> 1) + 0x1000000) >> 24) & 0xFFFFFF) << 24);
            v18 = v1[13];
          }
        }

        ++v20;
        v19 += 19;
      }

      while (v20 < (v18 & 0xFFFFFFuLL));
    }

    free(v26);
    v24 = v1[25];
    return v1;
  }

  else
  {
    v25 = v1[25];
    return v1;
  }
}

uint64_t _entry_remove(uint64_t result, uint64_t a2)
{
  v3 = result;
  *(result + 104) = *(result + 104) & 0xFF000000FFFFFFFFLL | ((((*(result + 104) + 0xFFFFFF00000000) >> 32) & 0xFFFFFF) << 32);
  v4 = *(result + 200);
  v5 = *(a2 + 11);
  if ((v5 & 0x800000000000000) == 0)
  {
    result = _entry_remove_from_list(result, a2);
    v5 = *(a2 + 11);
  }

  if (v5 & 0xFFFFFF000000) == 0 || (v6 = *(v3 + 96) + 22 * ((v5 >> 24) & 0xFFFFFF), (*(v6 - 1)))
  {
    --*(v3 + 264);
  }

  else
  {
    *(a2 + 11) = v5 & 0xFFFF000000FFFFFFLL;
    result = _value_entry_unmap(v3, v6 - 22);
  }

  v7 = *(v3 + 40);
  if (v7)
  {
    result = v7(*a2, *(v3 + 208));
  }

  *a2 = 0;
  *(a2 + 11) &= 0xFF00000000FFFFFFLL;
  v8 = a2 + 19;
  if (a2 + 19 == *(v3 + 88) + 19 * (*(v3 + 104) & 0xFFFFFFLL))
  {
    v8 = *(v3 + 88);
  }

  if (*v8 || (*(v8 + 18) & 1) != 0)
  {
    *(v3 + 112) = *(v3 + 112) & 0xFF000000FFFFFFFFLL | ((((*(v3 + 112) + 0x100000000) >> 32) & 0xFFFFFF) << 32);
    *(a2 + 11) |= 0x100000000000000uLL;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 15) = 0;
  }

  return result;
}

uint64_t _cache_remove_all_locked(uint64_t result)
{
  v1 = *(result + 104);
  if ((v1 & 0xFFFFFF) != 0)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v2 + 88) + v3;
      if (*v5)
      {
        if ((*(v5 + 18) & 1) == 0)
        {
          result = _entry_remove(v2, v5);
          v1 = *(v2 + 104);
        }
      }

      ++v4;
      v3 += 19;
    }

    while (v4 < (v1 & 0xFFFFFFuLL));
  }

  return result;
}

int cache_remove_all(cache_t *cache)
{
  if (!cache)
  {
    return 22;
  }

  atomic_fetch_add_explicit(cache, 1u, memory_order_relaxed);
  v2 = *(cache + 25);
  os_unfair_lock_lock_with_options();
  _cache_remove_all_locked(cache);
  os_unfair_lock_unlock(cache + 20);
  v3 = *(cache + 25);
  cache_release(cache);
  return 0;
}

int cache_set_and_retain(cache_t *cache, void *key, void *value, cache_cost_t cost)
{
  v54 = key;
  v4 = 22;
  if (cache)
  {
    if (key)
    {
      v8 = *(cache + 4);
      if (!v8 || (v8(key, &v54, *(cache + 26)), v54))
      {
        atomic_fetch_add_explicit(cache, 1u, memory_order_relaxed);
        v9 = *(cache + 25);
        os_unfair_lock_lock_with_options();
        v10 = _value_entry_table_get(*(cache + 12), *(cache + 30) & 0xFFFFFF, value);
        v11 = v10;
        if (!v10)
        {
          goto LABEL_10;
        }

        v12 = *(v10 + 18);
        if ((v12 & 0x1000000) != 0)
        {
          goto LABEL_10;
        }

        v13 = v12 & 0xFFFFFF;
        if (v13 != 0xFFFFFF)
        {
          if (!v13 && !*(v10 + 16))
          {
LABEL_10:
            if ((*(cache + 33) & 0xFFFFFF) + (*(cache + 31) & 0xFFFFFFu) >= (*(cache + 32) & 0xFFFFFFu))
            {
              _value_entry_table_resize(cache);
              v11 = _value_entry_table_get(*(cache + 12), *(cache + 30) & 0xFFFFFF, value);
            }

            if (!v11)
            {
              _evict_last(cache);
              goto LABEL_50;
            }

            v14 = *(cache + 15) & 0xFF000000FFFFFFFFLL | ((((*(cache + 15) + 0x100000000) >> 32) & 0xFFFFFF) << 32);
            *(cache + 15) = v14;
            v15 = *(cache + 25);
            v16 = HIDWORD(v14) & 0xFFFFFF;
            *(cache + 17) += cost;
            *v11 = value;
            *(v11 + 8) = cost;
            v17 = *(cache + 6);
            if (v17)
            {
              v17(value, *(cache + 26), v16);
            }

LABEL_38:
            v29 = *(v11 + 16);
            if (v29 != 0xFFFF)
            {
              *(v11 + 16) = v29 + 1;
            }

            v30 = *(v11 + 18);
            if ((~v30 & 0xFFFFFF) != 0)
            {
              *(v11 + 18) = v30 & 0xFF000000 | (v30 + 1) & 0xFFFFFF;
            }

            v31 = v54;
            if ((*(cache + 29) & 0xFFFFFF) + (*(cache + 27) & 0xFFFFFFu) >= (*(cache + 28) & 0xFFFFFFu))
            {
              _entry_table_resize(cache);
            }

            optionally_checking_collisions = _entry_get_optionally_checking_collisions(cache, v31, 1);
            if (optionally_checking_collisions)
            {
              v33 = optionally_checking_collisions;
              v34 = *(optionally_checking_collisions + 11);
              if (!*optionally_checking_collisions && (v34 & 0x100000000000000) == 0)
              {
                v35 = *(cache + 25);
                *(cache + 13) = *(cache + 13) & 0xFF000000FFFFFFFFLL | ((((*(cache + 13) + 0x100000000) >> 32) & 0xFFFFFF) << 32);
                v36 = *(cache + 25);
LABEL_76:
                *v33 = v31;
                v49 = *(v33 + 11);
                v50 = *(cache + 12);
                if ((v49 & 0xFFFFFF000000) != 0)
                {
                  v51 = v50 + 22 * ((v49 >> 24) & 0xFFFFFF);
                  if ((*(v51 - 1) & 1) != 0 || (_value_entry_unmap(cache, v51 - 22), v49 = *(v33 + 11), v50 = *(cache + 12), (v49 & 0xFFFFFF000000) != 0))
                  {
                    if ((*(v50 + 22 * ((v49 >> 24) & 0xFFFFFF) - 1) & 1) == 0)
                    {
                      v49 &= 0xFFFF000000FFFFFFLL;
                      *(v33 + 11) = v49;
                      v50 = *(cache + 12);
                    }
                  }
                }

                *(v33 + 11) = v49 & 0xFFFF000000FFFFFFLL | ((((0xE8BA2E8BA3000000 * ((v11 - v50) >> 1) + 0x1000000) >> 24) & 0xFFFFFF) << 24);
                _entry_add_to_list(cache, v33, (v49 & 0xFE000000000000) != 0);
                v4 = 0;
LABEL_82:
                _cache_update_limits(cache);
                os_unfair_lock_unlock(cache + 20);
                v52 = *(cache + 25);
                cache_release(cache);
                return v4;
              }

              v39 = *(cache + 47) & 0xFFFFFF;
              v40 = *(cache + 44) & 0xFFFFFF;
              v41 = (v34 >> 57) & 7;
              if (v41 > 1)
              {
                if (v41 == 3)
                {
LABEL_62:
                  if (v39)
                  {
                    v40 /= v39;
                  }

                  v44 = *(cache + 48);
                  if (v40 <= 1)
                  {
                    v45 = 1;
                  }

                  else
                  {
                    v45 = v40;
                  }

                  v46 = v44 - v45;
                  if (v40 <= v44)
                  {
                    v43 = v46;
                  }

                  else
                  {
                    v43 = 0;
                  }

LABEL_70:
                  *(cache + 48) = v43;
                  goto LABEL_71;
                }

                if (v41 != 2)
                {
LABEL_71:
                  if ((*(optionally_checking_collisions + 18) & 8) == 0)
                  {
                    _entry_remove_from_list(cache, optionally_checking_collisions);
                  }

                  v47 = *(cache + 5);
                  if (v47)
                  {
                    v47(*v33, *(cache + 26));
                  }

                  *v33 = 0;
                  v48 = *(cache + 25);
                  goto LABEL_76;
                }
              }

              else if (v41)
              {
                goto LABEL_62;
              }

              v42 = v39 / v40;
              if (v42 <= 1)
              {
                v42 = 1;
              }

              v43 = *(cache + 48) + v42;
              if (v43 >= *(cache + 55))
              {
                v43 = *(cache + 55);
              }

              goto LABEL_70;
            }

            _evict_last(cache);
            _value_entry_release(cache, v11);
            v37 = *(v11 + 18);
            if ((v37 & 0x1000000) != 0)
            {
              *(v11 + 18) = v37 & 0xFEFFFFFF;
              *(cache + 16) = *(cache + 16) & 0xFF000000FFFFFFFFLL | ((((*(cache + 16) + 0xFFFFFF00000000) >> 32) & 0xFFFFFF) << 32);
            }

LABEL_50:
            v38 = *(cache + 5);
            if (v38)
            {
              v38(v54, *(cache + 26));
            }

            v4 = 84;
            goto LABEL_82;
          }

LABEL_36:
          if (*(v11 + 16) == -1 || (~*(v11 + 18) & 0xFFFFFF) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_38;
        }

        if ((*(cache + 38) & 0xFFFFFF) != 0 && ((*(cache + 38) & 0xFFFFFFu) > *(cache + 48) || (*(cache + 41) & 0xFFFFFF) == 0) && (v18 = *(cache + 18), (~v18 & 0xFFFFFF00000000) != 0) && (v19 = *(cache + 11)) != 0 && (v20 = *(v19 + 19 * (HIDWORD(v18) & 0xFFFFFF) + 11) & 0xFFFFFFLL, v20 != 0xFFFFFF))
        {
          while (1)
          {
            v21 = v19 + 19 * v20;
            v22 = *(v21 + 11);
            if ((v22 & 0xFFFFFF000000) != 0)
            {
              v23 = *(cache + 12) + 22 * ((v22 >> 24) & 0xFFFFFF);
              if ((*(v23 - 1) & 1) == 0 && *(v23 - 22) == value)
              {
                break;
              }
            }

            v20 = v22 & 0xFFFFFF;
            if (v20 == 0xFFFFFF)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:
          if ((*(cache + 41) & 0xFFFFFF) == 0)
          {
            goto LABEL_36;
          }

          v24 = *(cache + 156);
          if ((~v24 & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_36;
          }

          v25 = *(cache + 11);
          if (!v25)
          {
            goto LABEL_36;
          }

          v26 = *(v25 + 19 * (HIDWORD(v24) & 0xFFFFFF) + 11) & 0xFFFFFFLL;
          if (v26 == 0xFFFFFF)
          {
            goto LABEL_36;
          }

          while (1)
          {
            v21 = v25 + 19 * v26;
            v27 = *(v21 + 11);
            if ((v27 & 0xFFFFFF000000) != 0)
            {
              v28 = *(cache + 12) + 22 * ((v27 >> 24) & 0xFFFFFF);
              if ((*(v28 - 1) & 1) == 0 && *(v28 - 22) == value)
              {
                break;
              }
            }

            v26 = v27 & 0xFFFFFF;
            if (v26 == 0xFFFFFF)
            {
              goto LABEL_36;
            }
          }
        }

        _entry_evict(cache, v21);
        goto LABEL_36;
      }
    }
  }

  return v4;
}

uint64_t _value_entry_table_get(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = os_simple_hash() % a2;
  v6 = a2 - v5;
  if (a2 == v5)
  {
LABEL_7:
    if (v5)
    {
      v9 = 0;
      for (result = a1; *result != a3; result += 22)
      {
        if ((*(result + 18) & 0x1FFFFFF) == 0 && !*(result + 16))
        {
          return result;
        }

        ++v9;
        if (!--v5)
        {
          return 0;
        }
      }

      return a1 + 22 * v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = 0;
    while (1)
    {
      result = a1 + 22 * v5 + 22 * v7;
      if (*result == a3 || (*(result + 18) & 0x1FFFFFF) == 0 && !*(result + 16))
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

int cache_release_value(cache_t *cache, void *value)
{
  if (!cache)
  {
    return 22;
  }

  atomic_fetch_add_explicit(cache, 1u, memory_order_relaxed);
  v4 = *(cache + 25);
  os_unfair_lock_lock_with_options();
  v5 = _value_entry_table_get(*(cache + 12), *(cache + 30) & 0xFFFFFF, value);
  if (v5 && ((*(v5 + 18) & 0x1FFFFFF) != 0 || *(v5 + 16)))
  {
    v6 = _value_entry_release(cache, v5);
  }

  else
  {
    v6 = 2;
  }

  os_unfair_lock_unlock(cache + 20);
  v7 = *(cache + 25);
  cache_release(cache);
  return v6;
}

uint64_t _cache_enforce_limits(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 200);
    v3 = *(a1 + 220);
    v4 = *(a1 + 224);
    v5 = *(a1 + 136);
    v6 = *(a1 + 124) & 0xFFFFFF;
    result = a1;
    if ((*(a1 + 124) & 0xFFFFFFu) <= *(a1 + 220))
    {
      v8 = *(a1 + 224);
      if (!v8 || *(a1 + 136) <= v8)
      {
        break;
      }
    }

    result = _evict_last(a1);
  }

  while ((result & 1) != 0);
  while (1)
  {
    v9 = *(a1 + 264);
    if (v9 <= (*(a1 + 108) & 0xFFFFFF) - v9 && v9 <= *(a1 + 220))
    {
      return result;
    }

    if ((*(a1 + 176) & 0xFFFFFF) == 0)
    {
      if ((*(a1 + 188) & 0xFFFFFF) == 0)
      {
        return result;
      }

LABEL_12:
      v10 = *(a1 + 180);
      goto LABEL_13;
    }

    if ((*(a1 + 176) & 0xFFFFFFu) <= *(a1 + 192) && (*(a1 + 188) & 0xFFFFFF) != 0)
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 168);
LABEL_13:
    if ((~v10 & 0xFFFFFF00000000) == 0)
    {
      return result;
    }

    v11 = *(a1 + 88);
    if (!v11)
    {
      return result;
    }

    result = _entry_remove(a1, v11 + 19 * (HIDWORD(v10) & 0xFFFFFF));
  }
}

uint64_t _value_entry_release(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 84;
  }

  v2 = *(a2 + 16) - 1;
  *(a2 + 16) = v2;
  if (!v2)
  {
    if ((*(a2 + 18) & 0xFFFFFF) != 0)
    {
      v4 = a1[8];
      if (v4)
      {
        v4(*a2, a1[26]);
      }
    }

    else
    {
      _value_entry_remove(a1, a2);
    }
  }

  return 0;
}

const char *_cache_init_globals(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  mach_timebase_info((a1 + 48));
  *(a1 + 32) = 0;
  v2 = dispatch_workloop_create("com.apple.libcache.memorypressure");
  *(a1 + 16) = v2;
  v3 = dispatch_source_create(MEMORY[0x29EDCA5A8], 0, 7uLL, v2);
  *(a1 + 24) = v3;
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___cache_enable_memory_pressure_event_block_invoke;
  handler[3] = &__block_descriptor_tmp_3;
  handler[4] = a1;
  dispatch_source_set_event_handler(v3, handler);
  v4 = *(a1 + 24);
  dispatch_set_qos_class();
  dispatch_resume(*(a1 + 24));
  result = getenv("LIBCACHE_JETSAM_WINDOW");
  if (result)
  {
    result = atoi(result);
    v6 = result;
  }

  else
  {
    v6 = 4000;
  }

  *(a1 + 56) = v6;
  return result;
}

void *_value_entry_unmap(void *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  *(a2 + 18) = v2 & 0xFF000000 | (v2 - 1) & 0xFFFFFF;
  if (((v2 - 1) & 0xFFFFFF) == 0 && !*(a2 + 16))
  {
    return _value_entry_remove(result, a2);
  }

  return result;
}

void *_value_entry_remove(void *result, uint64_t a2)
{
  if ((*(a2 + 21) & 1) == 0)
  {
    v3 = result;
    v4 = result[25];
    v5 = result[15] & 0xFF000000FFFFFFFFLL | ((((result[15] + 0xFFFFFF00000000) >> 32) & 0xFFFFFF) << 32);
    result[15] = v5;
    v6 = result[25];
    v7 = HIDWORD(v5) & 0xFFFFFF;
    result[17] -= *(a2 + 8);
    v8 = result[7];
    if (v8)
    {
      v8(*a2, result[26], v7);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 14) = 0;
    v9 = a2 + 22;
    if (a2 + 22 == v3[12] + 22 * (v3[15] & 0xFFFFFFLL))
    {
      v9 = v3[12];
    }

    if ((*(v9 + 18) & 0x1FFFFFF) != 0 || *(v9 + 16))
    {
      *(a2 + 18) |= 0x1000000u;
      v3[16] = v3[16] & 0xFF000000FFFFFFFFLL | ((((v3[16] + 0x100000000) >> 32) & 0xFFFFFF) << 32);
    }

    v10 = v3[25];
    return v3;
  }

  return result;
}

int cache_get_and_retain(cache_t *cache, void *key, void **value_out)
{
  v3 = 22;
  if (cache && key && value_out)
  {
    atomic_fetch_add_explicit(cache, 1u, memory_order_relaxed);
    v7 = *(cache + 25);
    os_unfair_lock_lock_with_options();
    ++*(cache + 62);
    v8 = *(cache + 25);
    optionally_checking_collisions = _entry_get_optionally_checking_collisions(cache, key, 1);
    *value_out = 0;
    if (optionally_checking_collisions)
    {
      v10 = optionally_checking_collisions;
      if (*optionally_checking_collisions)
      {
        v11 = *(optionally_checking_collisions + 11);
        if ((v11 & 0x100000000000000) == 0)
        {
          if ((~v11 & 0xFF000000000000) != 0)
          {
            v11 = (v11 + 0x1000000000000) & 0xFF000000000000 | v11 & 0xFE00FFFFFFFFFFFFLL;
            *(optionally_checking_collisions + 11) = v11;
          }

          if ((v11 & 0xFFFFFF000000) != 0)
          {
            v12 = *(cache + 12);
            v13 = (v11 >> 24) & 0xFFFFFF;
            if ((*(v12 + 22 * v13 - 1) & 1) == 0)
            {
              if ((v11 & 0x800000000000000) == 0)
              {
                _entry_remove_from_list(cache, optionally_checking_collisions);
                v12 = *(cache + 12);
                v13 = (*(v10 + 11) >> 24) & 0xFFFFFFLL;
              }

              v14 = v12 + 22 * v13;
              LODWORD(v15) = *(v14 - 6);
              if (*(v14 - 6))
              {
LABEL_14:
                if (v15 == 0xFFFF)
                {
                  v3 = 84;
LABEL_22:
                  v17 = *(cache + 25);
                  v18 = *(cache + 63) / *(cache + 62);
                  _cache_update_limits(cache);
                  os_unfair_lock_unlock(cache + 20);
                  v19 = *(cache + 25);
                  v20 = *value_out;
                  cache_release(cache);
                  return v3;
                }

LABEL_19:
                *(v14 - 6) = v15 + 1;
                *value_out = *(v14 - 22);
                ++*(cache + 63);
                v16 = *(cache + 25);
                _entry_add_to_list(cache, v10, (*(v10 + 11) & 0xFE000000000000) != 0);
                v3 = 0;
                goto LABEL_22;
              }

              v15 = *(cache + 9);
              if (!v15)
              {
                goto LABEL_19;
              }

              if (v15(*(v14 - 22), *(cache + 26)))
              {
                LODWORD(v15) = *(v14 - 6);
                goto LABEL_14;
              }

              _entry_evict(cache, v10);
            }
          }
        }
      }
    }

    v3 = 2;
    goto LABEL_22;
  }

  return v3;
}

uint64_t _entry_evict(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 260);
  v4 = *(a1 + 200);
  v5 = *(a2 + 11);
  if ((v5 & 0x800000000000000) == 0)
  {
    _entry_remove_from_list(a1, a2);
    v5 = *(a2 + 11);
  }

  if ((v5 & 0xFFFFFF000000) != 0)
  {
    v6 = *(a1 + 96) + 22 * ((v5 >> 24) & 0xFFFFFF);
    if ((*(v6 - 1) & 1) == 0)
    {
      *(a2 + 11) = v5 & 0xFFFF000000FFFFFFLL;
      _value_entry_unmap(a1, v6 - 22);
      v5 = *(a2 + 11);
    }
  }

  if ((v5 & 0xFE000000000000) != 0)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  result = _entry_add_to_list(a1, a2, v7);
  ++*(a1 + 264);
  return result;
}

int cache_remove(cache_t *cache, void *key)
{
  v2 = 22;
  if (cache && key)
  {
    atomic_fetch_add_explicit(cache, 1u, memory_order_relaxed);
    v5 = *(cache + 25);
    os_unfair_lock_lock_with_options();
    optionally_checking_collisions = _entry_get_optionally_checking_collisions(cache, key, 1);
    if (optionally_checking_collisions && *optionally_checking_collisions && (*(optionally_checking_collisions + 18) & 1) == 0)
    {
      _entry_remove(cache, optionally_checking_collisions);
      v2 = 0;
    }

    else
    {
      v2 = 2;
    }

    os_unfair_lock_unlock(cache + 20);
    v7 = *(cache + 25);
    cache_release(cache);
  }

  return v2;
}

void ___cache_enable_memory_pressure_event_block_invoke(uint64_t a1)
{
  data = dispatch_source_get_data(*(*(a1 + 32) + 24));

  _cache_handle_memory_pressure_event(data);
}

uint64_t _evict_last(uint64_t a1)
{
  if ((*(a1 + 152) & 0xFFFFFF) == 0)
  {
    if ((*(a1 + 164) & 0xFFFFFF) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if ((*(a1 + 152) & 0xFFFFFFu) <= *(a1 + 192) && (*(a1 + 164) & 0xFFFFFF) != 0)
  {
LABEL_6:
    v1 = *(a1 + 156);
    goto LABEL_7;
  }

  v1 = *(a1 + 144);
LABEL_7:
  if ((~v1 & 0xFFFFFF00000000) != 0)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      _entry_evict(a1, v2 + 19 * (HIDWORD(v1) & 0xFFFFFF));
      return 1;
    }
  }

  return 0;
}

void cache_set_cost_hint(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
  *(a1 + 240) = a2;
  *(a1 + 224) = a2;
  os_unfair_lock_lock_with_options();
  _cache_update_limits(a1);
  os_unfair_lock_unlock((a1 + 80));

  cache_release(a1);
}

uint64_t _cache_get_info_for_key(uint64_t a1, uint64_t a2, char *a3)
{
  result = _entry_get_optionally_checking_collisions(a1, a2, 1);
  if (!result)
  {
    a3[1] = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  a3[1] = *(result + 17);
  if (!*result)
  {
    goto LABEL_8;
  }

  v6 = *(result + 11);
  if (v6 & 0x100000000000000) != 0 || (v6 & 0xFFFFFF000000) == 0 || (*(*(a1 + 96) + 22 * ((v6 >> 24) & 0xFFFFFF) - 1))
  {
    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:
  *a3 = v7;
  return result;
}

void _cache_handle_memory_pressure_event(uint64_t a1)
{
  if (*(MEMORY[0x29EDCA698] + 80) == -1)
  {
    v2 = *(MEMORY[0x29EDCA698] + 88);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  *(v2 + 32) = a1 != 1;
  if (a1 != 1)
  {
    os_unfair_lock_lock_with_options();
    *(v2 + 40) = mach_absolute_time();
    v3 = *v2;
    if (*v2)
    {
      if (a1 == 4)
      {
        v4 = QOS_CLASS_USER_INITIATED;
      }

      else
      {
        v4 = QOS_CLASS_UTILITY;
      }

      do
      {
        if (atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed))
        {
          v6[0] = MEMORY[0x29EDCA5F8];
          v6[1] = 0x40000000;
          v6[2] = ___cache_handle_memory_pressure_event_block_invoke;
          v6[3] = &__block_descriptor_tmp_23;
          v6[4] = v3;
          v6[5] = a1;
          v5 = dispatch_block_create_with_qos_class(0, v4, 0, v6);
          dispatch_async(*(v2 + 16), v5);
          _Block_release(v5);
        }

        else
        {
          atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed);
        }

        v3 = *(v3 + 8);
      }

      while (v3);
    }

    os_unfair_lock_unlock((v2 + 8));
  }
}

void ___cache_handle_memory_pressure_event_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (*(a1 + 40) == 4)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = (*(v3 + 120) >> 33) & 0x7FFFFFLL;
    v5 = *(v3 + 216);
    if (v5 <= v4)
    {
      v6 = (*(v3 + 120) >> 33) & 0x7FFFFF;
    }

    else
    {
      v6 = *(v3 + 216);
    }

    if (v5)
    {
      LODWORD(v4) = v6;
    }
  }

  *(v3 + 220) = v4;
  _cache_enforce_limits(v3);
  os_unfair_lock_unlock((*(a1 + 32) + 80));
  v7 = *(a1 + 32);

  cache_release(v7);
}

uint64_t cache_get_info_for_key(os_unfair_lock_s *a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    return 22;
  }

  os_unfair_lock_lock_with_options();
  _cache_get_info_for_key(a1, a2, a3);
  os_unfair_lock_unlock(a1 + 20);
  return 0;
}

uint64_t cache_invoke(uint64_t a1, void (*a2)(void))
{
  result = 22;
  if (a1 && a2)
  {
    os_unfair_lock_lock_with_options();
    v5 = *(a1 + 104);
    if ((v5 & 0xFFFFFF) != 0)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(a1 + 88);
        if (*(v8 + v6))
        {
          v9 = *(v8 + v6 + 11);
          if ((v9 & 0x100000000000000) == 0 && (v9 & 0xFFFFFF000000) != 0)
          {
            v10 = *(a1 + 96) + 22 * ((v9 >> 24) & 0xFFFFFF);
            if ((*(v10 - 1) & 1) == 0)
            {
              v11 = *(v10 - 22);
              a2();
              v5 = *(a1 + 104);
            }
          }
        }

        ++v7;
        v6 += 19;
      }

      while (v7 < (v5 & 0xFFFFFFuLL));
    }

    os_unfair_lock_unlock((a1 + 80));
    return 0;
  }

  return result;
}

uint64_t cache_remove_with_block(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 22;
  }

  atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
  v4 = *(a1 + 200);
  os_unfair_lock_lock_with_options();
  if ((*(a1 + 104) & 0xFFFFFF) != 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(a1 + 88) + v5);
      if (*v7)
      {
        v8 = *(v7 + 11);
        if ((v8 & 0x100000000000000) == 0)
        {
          if ((v8 & 0xFFFFFF000000) != 0)
          {
            v9 = *(*(a1 + 96) + 22 * ((v8 >> 24) & 0xFFFFFF) - 22);
          }

          else
          {
            v9 = 0;
          }

          if ((*(a2 + 16))(a2, *(a1 + 88) + v5, v9))
          {
            _entry_remove(a1, v7);
          }
        }
      }

      ++v6;
      v5 += 19;
    }

    while (v6 < (*(a1 + 104) & 0xFFFFFFuLL));
  }

  os_unfair_lock_unlock((a1 + 80));
  v10 = *(a1 + 200);
  cache_release(a1);
  return 0;
}

void cache_print(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v3 = *(a1 + 248);
    v2 = *(a1 + 252);
    if (v3)
    {
      v4 = 100 * v2 / v3;
    }

    else
    {
      v4 = 0;
    }

    printf("Hits: %u/%u (%2d%%)\n", v2, *(a1 + 248), v4);
    printf("Keys: %u (+%u) / %u ", *(a1 + 108) & 0xFFFFFF, *(a1 + 116) & 0xFFFFFF, *(a1 + 104) & 0xFFFFFF);
    if ((*(a1 + 104) & 0xFFFFFF) != 0)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(a1 + 88);
        v8 = (v7 + v5);
        if (*(v7 + v5 + 18))
        {
          v23 = *(v7 + v5);
          snprintf(__str, 0x20uLL, "-%p-");
        }

        else if (*(v7 + v5))
        {
          v22 = *(v7 + v5);
          snprintf(__str, 0x20uLL, " %p ");
        }

        else
        {
          strcpy(__str, "                    ");
        }

        v9 = *(v8 + 11);
        if ((v9 & 0x100000000000000) != 0 || *v8)
        {
          printf("    %5s %7u %7u [%5u]    key: %s removed %u access %u valid: %1u idx: %7u\n", off_29F286558[(v9 >> 57) & 7], *(v8 + 11) & 0xFFFFFF, *(v7 + v5 + 8) | (*(v7 + v5 + 10) << 16), v6, __str, HIBYTE(v9) & 1, BYTE6(v9), ((v9 >> 24) & 0xFFFFFF) != 0, (v9 >> 24) & 0xFFFFFF);
        }

        ++v6;
        v5 += 19;
      }

      while (v6 < (*(a1 + 104) & 0xFFFFFFuLL));
    }

    printf("Values: %u (+%u) / %u\n", *(a1 + 124) & 0xFFFFFF, *(a1 + 132) & 0xFFFFFF, *(a1 + 120) & 0xFFFFFF);
    if ((*(a1 + 120) & 0xFFFFFF) != 0)
    {
      v10 = 0;
      for (i = 0; i < (*(a1 + 120) & 0xFFFFFFuLL); ++i)
      {
        v12 = *(a1 + 96);
        v13 = v12 + v10;
        if ((*(v12 + v10 + 18) & 0xFFFFFF) != 0)
        {
          v14 = *(v12 + v10);
        }

        else
        {
          v14 = *v13;
          if (*(v13 + 16))
          {
            v15 = 0;
          }

          else
          {
            v15 = v14 == 0;
          }

          if (v15)
          {
            strcpy(__str, "                  ");
            goto LABEL_26;
          }
        }

        snprintf(__str, 0x20uLL, "%p", v14);
LABEL_26:
        v16 = *(v13 + 18);
        if ((v16 & 0x1FFFFFF) != 0 || *(v12 + v10 + 16) != 0)
        {
          if ((v16 & 0x1000000) != 0)
          {
            v18 = "-";
          }

          else
          {
            v18 = " ";
          }

          printf("[%5u] value: %s%s%s removed: %u retain: %u entries: %d\n", i + 1, v18, __str, v18, (v16 & 0x1000000u) >> 24, *(v12 + v10 + 16), v16 & 0xFFFFFF);
        }

        v10 += 22;
      }
    }

    v19 = 0;
    v20 = (a1 + 152);
    do
    {
      if ((*v20 & 0xFFFFFF) != 0)
      {
        printf("%5s Size: %5u Front: %7u Back: %7u\n", off_29F286558[v19], *v20 & 0xFFFFFF, *(v20 - 2) & 0xFFFFFF, *(v20 - 1) & 0xFFFFFF);
      }

      ++v19;
      v20 += 3;
    }

    while (v19 != 4);
    putchar(10);
    os_unfair_lock_unlock((a1 + 80));
  }

  v21 = *MEMORY[0x29EDCA608];
}

void cache_print_stats(os_unfair_lock_s *a1)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    os_unfair_lock_opaque = a1[62]._os_unfair_lock_opaque;
    v2 = a1[63]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque)
    {
      v4 = 100 * v2 / os_unfair_lock_opaque;
    }

    else
    {
      v4 = 0;
    }

    printf("Hits: %u/%u (%2d%%)\n", v2, a1[62]._os_unfair_lock_opaque, v4);
    printf("Keys: %u (+%u) / %u ", a1[27]._os_unfair_lock_opaque & 0xFFFFFF, a1[29]._os_unfair_lock_opaque & 0xFFFFFF, a1[26]._os_unfair_lock_opaque & 0xFFFFFF);
    printf("Values: %u (+%u) / %u\n", a1[31]._os_unfair_lock_opaque & 0xFFFFFF, a1[33]._os_unfair_lock_opaque & 0xFFFFFF, a1[30]._os_unfair_lock_opaque & 0xFFFFFF);

    os_unfair_lock_unlock(a1 + 20);
  }
}

void cache_get_info(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    os_unfair_lock_lock_with_options();
    *(a2 + 12) = *(a1 + 248);
    *(a2 + 4) = *(a1 + 108) & 0xFFFFFF;
    *(a2 + 8) = *(a1 + 124) & 0xFFFFFF;
    *(a2 + 24) = *(a1 + 136);
    *a2 = 1;

    os_unfair_lock_unlock((a1 + 80));
  }
}

uint64_t cache_get_info_for_keys(os_unfair_lock_s *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  os_unfair_lock_lock_with_options();
  if (a2)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      _cache_get_info_for_key(a1, *(a3 + 8 * v8), (a4 + 2 * v8));
      v8 = v9++;
    }

    while (v8 < a2);
  }

  os_unfair_lock_unlock(a1 + 20);
  return 0;
}

void cache_simulate_memory_warning_event(uint64_t a1)
{
  if (*(MEMORY[0x29EDCA698] + 80) == -1)
  {
    v2 = *(MEMORY[0x29EDCA698] + 88);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v3 = *(v2 + 16);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __cache_simulate_memory_warning_event_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = a1;
  dispatch_async_and_wait(v3, block);
}