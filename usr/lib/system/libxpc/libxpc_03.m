void xpc_create_from_plist_descriptor(dispatch_fd_t a1, dispatch_queue_t queue, uint64_t a3)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __xpc_create_from_plist_descriptor_block_invoke;
  handler[3] = &unk_1E74AB608;
  handler[4] = a3;
  dispatch_read(a1, 0xFFFFFFFFFFFFFFFFLL, queue, handler);
}

void __xpc_create_from_plist_descriptor_block_invoke(uint64_t a1, dispatch_data_t data, int a3)
{
  if (a3 || (v7 = 0, buffer_ptr = 0, (v5 = dispatch_data_create_map(data, &buffer_ptr, &v7)) == 0))
  {
    v4 = 0;
  }

  else
  {
    v6 = v5;
    v4 = xpc_create_from_plist_with_string_cache(buffer_ptr, v7, 0, 0);
    dispatch_release(v6);
  }

  (*(*(a1 + 32) + 16))();
  if (v4)
  {
    xpc_release(v4);
  }
}

uint64_t _xpc_plist_swap_int(unint64_t *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  if (!a3)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v4 = a2 + a3 - 1;
  if (v4 < *a1 || v4 >= *a1 + a1[1])
  {
    return 0;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v5 = bswap32(*a2);
      goto LABEL_10;
    }

    if (a3 == 8)
    {
      v5 = bswap64(*a2);
      goto LABEL_10;
    }

LABEL_14:
    v5 = 0;
    do
    {
      v7 = *a2;
      a2 = (a2 + 1);
      v5 = v7 | (v5 << 8);
      --a3;
    }

    while (a3);
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    v5 = *a2;
    goto LABEL_10;
  }

  if (a3 != 2)
  {
    goto LABEL_14;
  }

  v5 = bswap32(*a2) >> 16;
LABEL_10:
  *a4 = v5;
  return 1;
}

void _xpc_plist_unwind_stack(uint64_t a1)
{
  for (i = *(a1 + 48); i; *(a1 + 48) = i)
  {
    v3 = i;
    i = *(i + 40);
    if (v3[4])
    {
      xpc_release(v3[4]);
      v3 = *(a1 + 48);
    }

    free(v3);
  }
}

uint64_t _xpc_plist_parse_date(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 + a2;
  v4 = (v3 + 1);
  if (v3 + 1 < *a1)
  {
    return 0;
  }

  v6 = v2 + a1[1];
  if (v4 >= v6)
  {
    return 0;
  }

  v7 = v3 + 9;
  if (v7 < v2 || v7 >= v6)
  {
    return 0;
  }

  *(a1[6] + 32) = xpc_date_create_absolute(COERCE_DOUBLE(bswap64(*v4)));
  return 1;
}

uint64_t _xpc_plist_collapse_stack(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 40);
  if (v3)
  {
    if ((*(v2 + 48) & 8) != 0)
    {
      return 1;
    }

    if ((*(v3 + 48) & 8) != 0)
    {
      if (*(v2 + 32))
      {
        result = *(v3 + 32);
        if (!result)
        {
          return result;
        }

        v5 = *(v3 + 40);
        if (v5)
        {
          if ((*(v5 + 48) & 2) != 0 && xpc_get_type(result) == OS_xpc_string)
          {
            v6 = *(v5 + 32);
            string_ptr = xpc_string_get_string_ptr(*(v3 + 32));
            xpc_dictionary_set_value_with_key_string_cache(v6, string_ptr, *(*(a1 + 48) + 32), *(a1 + 56));
            xpc_release(*(v3 + 32));
            xpc_release(*(*(a1 + 48) + 32));
            free(*(a1 + 48));
            free(v3);
LABEL_17:
            *(a1 + 48) = v5;
            return 1;
          }
        }
      }
    }

    else if ((*(v3 + 48) & 4) != 0)
    {
      v8 = *(v2 + 32);
      if (v8)
      {
        result = *(v3 + 32);
        if (!result)
        {
          return result;
        }

        xpc_array_append_value(result, v8);
        xpc_release(*(*(a1 + 48) + 32));
        v2 = *(a1 + 48);
        goto LABEL_16;
      }
    }

    else if (*(v3 + 48))
    {
      *(v3 + 32) = *(v2 + 32);
LABEL_16:
      free(v2);
      v5 = v3;
      goto LABEL_17;
    }
  }

  return 0;
}

unint64_t _xpc_plist_offset_of_object(uint64_t a1, unsigned int *a2)
{
  v4 = *a1;
  if (*a1 + 8 > a2)
  {
    return -1;
  }

  v11[3] = v2;
  v11[4] = v3;
  v7 = v4 + *(a1 + 40);
  v8 = *(a1 + 23);
  if (v7 - v8 < a2)
  {
    return -1;
  }

  v11[0] = 0;
  if (!_xpc_plist_swap_int(a1, a2, v8, v11) || *(a1 + 24) <= v11[0])
  {
    return -1;
  }

  v9 = *(a1 + 22);
  v10 = 0;
  if (_xpc_plist_swap_int(a1, (v7 + v11[0] * v9), v9, &v10))
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

uint64_t _xpc_plist_read_int(unint64_t *a1, _BYTE *a2, unint64_t *a3, void *a4)
{
  if (*a1 > a2)
  {
    return 0;
  }

  if (*a1 + a1[1] <= a2)
  {
    return 0;
  }

  v5 = (a2 + 1);
  if ((*a2 & 0xF0) != 0x10)
  {
    return 0;
  }

  v7 = 1 << (*a2 & 0xF);
  result = _xpc_plist_swap_int(a1, v5, v7, a3);
  if (a4)
  {
    if (result)
    {
      *a4 = v5 + v7;
      return 1;
    }
  }

  return result;
}

xpc_object_t _xpc_plist_parse_xml(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v71 = 0;
  v69[0] = 0;
  v69[1] = a1;
  v69[2] = a2;
  v69[3] = a3;
  v69[4] = a4;
  v69[5] = 1;
  v70 = a1;
  v67 = 0u;
  v68 = 0u;
  if (!_xpc_xml_lex(v69, &v67))
  {
    return 0;
  }

  while ((v67 - 1) < 2)
  {
    if ((_xpc_xml_lex(v69, &v67) & 1) == 0)
    {
      return 0;
    }
  }

  if (v67 != 4)
  {
    goto LABEL_139;
  }

  v6 = _xpc_alloc_typed(0x18uLL, 0x10A00406B6A53AFuLL);
  *v6 = 0;
  v6[2] = 4;
  *(v6 + 2) = 0;
  v71 = v6;
  if (_xpc_xml_lex(v69, &v67))
  {
    v7 = 0;
    v8 = "";
    v9 = MEMORY[0x1E69E9668];
    v10 = *MEMORY[0x1E69E9658];
    while (1)
    {
      if (v67 > 10)
      {
        if (v67 > 15)
        {
          switch(v67)
          {
            case 0x10:
              if (*(&v68 + 1) < 6uLL || (*v68 == 1769108595 ? (v19 = *(v68 + 4) == 26478) : (v19 = 0), !v19))
              {
                v61 = _xpc_xml_parser_string_terminate(v68, *(&v68 + 1));
                if (v61)
                {
                  free(v61);
                }

LABEL_139:
                while (v71)
                {
                  _xpc_xml_parser_pop(&v71);
                }

                return 0;
              }

              if (a4)
              {
                cached = xpc_string_create_cached(v8, a4);
              }

              else
              {
                cached = xpc_string_create(v8);
              }

              goto LABEL_64;
            case 0x11:
              v17 = 1;
LABEL_63:
              cached = xpc_BOOL_create(v17);
LABEL_64:
              v16 = cached;
LABEL_65:
              if (!_xpc_xml_parser_stack_finish_leaf(&v71, v16, a3))
              {
                goto LABEL_139;
              }

              goto LABEL_84;
            case 0x12:
              v17 = 0;
              goto LABEL_63;
          }
        }

        else
        {
          switch(v67)
          {
            case 0xB:
              cached = xpc_array_create(0, 0);
              goto LABEL_64;
            case 0xC:
              if (!v71)
              {
                return 0;
              }

              if (*(v71 + 2) != 6 || !_xpc_xml_lex(v69, &v67))
              {
                goto LABEL_139;
              }

              if (v67 == 13)
              {
                if (a3)
                {
                  v27 = xpc_string_create_cached(v8, a3);
                }

                else
                {
                  v27 = xpc_string_create(v8);
                }

                v16 = v27;
                v20 = v27;
                v21 = 12;
LABEL_83:
                _xpc_xml_parser_push(&v71, v20, v21);
LABEL_84:
                xpc_release(v16);
                break;
              }

              if (v67 != 19)
              {
                goto LABEL_139;
              }

              v22 = _xpc_xml_parser_string_terminate(v68, *(&v68 + 1));
              if (!v22)
              {
                goto LABEL_139;
              }

              v23 = v22;
              if (strchr(v22, 38))
              {
                v24 = _xpc_xml_replace_entities(v23);
                if (v24)
                {
                  v25 = v24;
                  free(v23);
                  v23 = v25;
                }
              }

              string_no_copy_with_string_cache = _xpc_xml_create_string_no_copy_with_string_cache(v23, a3);
              _xpc_xml_parser_push(&v71, string_no_copy_with_string_cache, 12);
              xpc_release(string_no_copy_with_string_cache);
              if (!_xpc_xml_lex(v69, &v67) || v67 != 13)
              {
                goto LABEL_139;
              }

              break;
            case 0xE:
              v12 = *(&v68 + 1);
              __s2 = v68;
              v13 = v9;
              while (1)
              {
                if (!_xpc_xml_lex(v69, &v67))
                {
                  goto LABEL_139;
                }

                if ((v67 - 19) >= 2)
                {
                  break;
                }

                v14 = dispatch_data_create(v68, *(&v68 + 1), 0, v10);
                concat = dispatch_data_create_concat(v13, v14);
                dispatch_release(v13);
                dispatch_release(v14);
                v13 = concat;
                if ((v67 - 19) >= 2)
                {
                  goto LABEL_71;
                }
              }

              concat = v13;
              if (v67 != 15)
              {
                goto LABEL_139;
              }

LABEL_71:
              size_ptr = 0;
              buffer_ptr = 0;
              v28 = dispatch_data_create_map(concat, &buffer_ptr, &size_ptr);
              dispatch_release(concat);
              if (!v28)
              {
                goto LABEL_139;
              }

              object = v28;
              v29 = size_ptr;
              v30 = buffer_ptr;
              v31 = __s2;
              if (!_xpc_memcmp(__s2, v12, "data", 4))
              {
                v35 = v8;
                v36 = dispatch_data_create(v30, v29, 0, v10);
                v37 = dispatch_data_create_with_transform();
                v38 = v36;
                v8 = v35;
                v31 = __s2;
                dispatch_release(v38);
                if (v37)
                {
                  v34 = xpc_data_create_with_dispatch_data(v37);
                  dispatch_release(v37);
                  v39 = object;
LABEL_98:
                  dispatch_release(v39);
                  v9 = MEMORY[0x1E69E9668];
                  if (v34)
                  {
                    if (_xpc_xml_parser_stack_finish_leaf(&v71, v34, a3))
                    {
                      xpc_release(v34);
                      if (!memcmp(v68, __s2, *(&v68 + 1)))
                      {
                        break;
                      }
                    }
                  }

                  goto LABEL_139;
                }
              }

              v32 = _xpc_xml_parser_string_terminate(v30, v29);
              if (!v32)
              {
                dispatch_release(object);
                goto LABEL_139;
              }

              v33 = v32;
              if (_xpc_memcmp(v31, v12, "string", 6))
              {
                if (_xpc_memcmp(v31, v12, "integer", 7))
                {
                  if (_xpc_memcmp(v31, v12, "real", 4))
                  {
                    if (_xpc_memcmp(v31, v12, "date", 4))
                    {
                      v34 = 0;
                      goto LABEL_93;
                    }

                    memset(&v72, 0, sizeof(v72));
                    v39 = object;
                    if (strptime(v33, "%Y-%m-%dT%H:%M:%SZ", &v72))
                    {
                      v47 = v72.tm_year - 101;
                      v48 = (v47 / 400) * 146097.0 + 0.0;
                      v49 = v47 - 400 * (v47 / 400);
                      if (v49 < 0)
                      {
                        v54 = ~v49;
                        v55 = v49;
                        do
                        {
                          v56 = v54 % 0x190;
                          v57 = 365.0;
                          if (((v54 % 0x190) & 3) == 0)
                          {
                            v57 = 365.0;
                            if (v56 != 100)
                            {
                              v57 = 365.0;
                              if (v56 != 200)
                              {
                                v57 = 365.0;
                                if (v56 != 300)
                                {
                                  v57 = 366.0;
                                }
                              }
                            }
                          }

                          v48 = v48 - v57;
                          --v54;
                          ++v55;
                        }

                        while (v55);
                      }

                      else if (v49)
                      {
                        v50 = 1;
                        v51 = v49;
                        do
                        {
                          v52 = v50 % 0x190;
                          v53 = 365.0;
                          if (((v50 % 0x190) & 3) == 0)
                          {
                            v53 = 365.0;
                            if (v52 != 100)
                            {
                              v53 = 365.0;
                              if (v52 != 200)
                              {
                                v53 = 365.0;
                                if (v52 != 300)
                                {
                                  v53 = 366.0;
                                }
                              }
                            }
                          }

                          v48 = v48 + v53;
                          ++v50;
                          --v51;
                        }

                        while (v51);
                      }

                      v58 = v48 + _xpc_mktime_days_before[v72.tm_mon];
                      v59 = (v49 + 1) % 400;
                      if (v59 < 0)
                      {
                        v59 = -v59;
                      }

                      v60 = v58 + 1.0;
                      if (v59 == 300)
                      {
                        v60 = v58;
                      }

                      if (v59 == 200)
                      {
                        v60 = v58;
                      }

                      if (v59 == 100)
                      {
                        v60 = v58;
                      }

                      if ((v59 & 3) != 0)
                      {
                        v60 = v58;
                      }

                      if (v72.tm_mon >= 2)
                      {
                        v58 = v60;
                      }

                      absolute = xpc_date_create_absolute((v58 + (v72.tm_mday - 1)) * 86400.0 + v72.tm_min * 60.0 + v72.tm_hour * 3600.0 + v72.tm_sec);
                      goto LABEL_96;
                    }

                    v34 = 0;
LABEL_97:
                    free(v33);
                    goto LABEL_98;
                  }

                  v45 = strtod(v33, 0);
                  v44 = xpc_double_create(v45);
                }

                else
                {
                  v43 = strtoll(v33, 0, 10);
                  v44 = xpc_int64_create(v43);
                }

                v34 = v44;
LABEL_93:
                v39 = object;
                goto LABEL_97;
              }

              v40 = _xpc_xml_parser_string_terminate(v30, v29);
              if (strchr(v40, 38))
              {
                v41 = _xpc_xml_replace_entities(v40);
                v39 = object;
                if (v41)
                {
                  v42 = v41;
                  free(v40);
                  v40 = v42;
                }
              }

              else
              {
                v39 = object;
              }

              absolute = _xpc_xml_create_string_no_copy_with_string_cache(v40, a4);
LABEL_96:
              v34 = absolute;
              goto LABEL_97;
          }
        }
      }

      else
      {
        if (v67 > 7)
        {
          if (v67 == 8)
          {
            cached = xpc_dictionary_create(0, 0, 0);
            goto LABEL_64;
          }

          if (v67 == 9)
          {
            v16 = xpc_array_create(0, 0);
            v20 = v16;
            v21 = 9;
            goto LABEL_83;
          }

          v11 = v71;
          if (!v71)
          {
            return 0;
          }

          if (*(v71 + 2) != 9)
          {
            goto LABEL_139;
          }

LABEL_29:
          v16 = xpc_retain(*v11);
          _xpc_xml_parser_pop(&v71);
          goto LABEL_65;
        }

        switch(v67)
        {
          case 5:
            if (!v71)
            {
              return 0;
            }

            if (*(v71 + 2) != 4 || !*v71)
            {
              goto LABEL_139;
            }

            v7 = xpc_retain(*v71);
            _xpc_xml_parser_pop(&v71);
            break;
          case 6:
            v16 = xpc_dictionary_create(0, 0, 0);
            v20 = v16;
            v21 = 6;
            goto LABEL_83;
          case 7:
            v11 = v71;
            if (!v71)
            {
              return 0;
            }

            if (*(v71 + 2) != 6)
            {
              goto LABEL_139;
            }

            goto LABEL_29;
        }
      }

      if ((_xpc_xml_lex(v69, &v67) & 1) == 0)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t _xpc_xml_lex(int *a1, uint64_t a2)
{
  *a2 = 0;
  v2 = *(a1 + 6);
  v3 = v2 + 1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = v5 + v4;
  if ((v2 + 1) >= v5 + v4)
  {
    return 0;
  }

  while (1)
  {
    v9 = *v2;
    *(a1 + 56) = v9;
    *(a1 + 6) = v3;
    v10 = *a1;
    if (!*a1)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != 60)
      {
        v24 = v3 - 1;
        *(a1 + 6) = v3 - 1;
        v25 = v3 - v5 - 1;
        v19 = v4 >= v25;
        v26 = v4 - v25;
        if (v19)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        result = memchr(v24, 60, v27);
        if (result)
        {
          v28 = *(a1 + 5);
          *a2 = 19;
          *(a2 + 8) = v28;
          *(a2 + 16) = v24;
          *(a2 + 24) = result - v24;
          *(a1 + 6) = result;
          return 1;
        }

        return result;
      }

      v11 = v4 - (v3 - v5);
      if (v4 < v3 - v5)
      {
        v11 = 0;
      }

      if (v11 < 9 || *v3 != 0x5B41544144435B21)
      {
        if (_xpc_xml_lexer_read_tag(a1, a2))
        {
          _xpc_xml_lexer_process_tag(a2);
        }

        if ((*a2 | 2) == 0xF)
        {
          *a1 = 0;
        }

        return 1;
      }

      *a1 = 2;
      *(a1 + 6) = ++v3;
    }

    else if (v10 == 2)
    {
      v17 = v3 - 1;
      *(a1 + 6) = v3 - 1;
      v18 = v3 - v5 - 1;
      v19 = v4 >= v18;
      v20 = v4 - v18;
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      result = strnstr(v17, "]]>", v21);
      if (!result)
      {
        return result;
      }

      v23 = *(a1 + 5);
      v22 = *(a1 + 6);
      *a2 = 20;
      *(a2 + 8) = v23;
      *(a2 + 16) = v22;
      *(a2 + 24) = result - v22;
      *(a1 + 6) = result + 3;
      result = 1;
      goto LABEL_39;
    }

LABEL_12:
    v2 = v3;
    v3 = (v3 + 1);
    v6 = v5 + v4;
    if (v3 >= v5 + v4)
    {
      return 0;
    }
  }

  result = 0;
  if (v9 <= 12)
  {
    if (v9 != 9)
    {
      if (v9 != 10)
      {
        return result;
      }

      ++*(a1 + 5);
    }

    goto LABEL_12;
  }

  if (v9 == 13 || v9 == 32)
  {
    goto LABEL_12;
  }

  if (v9 != 60)
  {
    return result;
  }

  v13 = v3 + 1;
  if (v3 + 1 >= v6)
  {
    goto LABEL_12;
  }

  v14 = *v3;
  *(a1 + 56) = v14;
  *(a1 + 6) = v13;
  if (v14 == 33)
  {
    if (v4 >= &v13[-v5])
    {
      v15 = v4 - &v13[-v5];
    }

    else
    {
      v15 = 0;
    }

    if (v15 < 5)
    {
      return 0;
    }

    if (*v13 != 11565)
    {
      if (v15 < 0xE)
      {
        return 0;
      }

      if (*v13 != 0x2045505954434F44 || *(v3 + 6) != 0x7473696C70204550)
      {
        return 0;
      }

      v30 = v3 + 14;
      *(a1 + 6) = v3 + 14;
      v31 = v3 - v5 + 14;
      v19 = v4 >= v31;
      v32 = v4 - v31;
      if (v19)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      result = strnstr(v30, ">", v33);
      if (result)
      {
        *a2 = 2;
        *(a2 + 8) = *(a1 + 5);
        *(a2 + 16) = 0;
        *(a1 + 6) = result + 1;
        return 1;
      }

      return result;
    }

    result = strnstr(v13, "-->", v15);
    if (!result)
    {
      return result;
    }

    *a2 = 3;
    v16 = *(a1 + 6) + 2;
    *(a2 + 8) = *(a1 + 5);
    *(a2 + 16) = v16;
    *(a2 + 24) = result - v16;
    v3 = (result + 3);
    *(a1 + 6) = result + 3;
    v5 = *(a1 + 1);
    v4 = *(a1 + 2);
    goto LABEL_12;
  }

  if (v14 == 63)
  {

    return _xpc_xml_lexer_read_header(a1, a2);
  }

  *(a1 + 6) = v3;
  if (_xpc_xml_lexer_read_tag(a1, a2))
  {
    _xpc_xml_lexer_process_tag(a2);
  }

  result = 1;
  if ((*a2 | 2) == 0xE)
  {
LABEL_39:
    *a1 = 1;
  }

  return result;
}

void *_xpc_xml_parser_push(void *a1, void *a2, int a3)
{
  result = _xpc_alloc_typed(0x18uLL, 0x10A00406B6A53AFuLL);
  v7 = result;
  *result = 0;
  if (a2)
  {
    result = xpc_retain(a2);
    *v7 = result;
  }

  *(v7 + 2) = a3;
  v7[2] = *a1;
  *a1 = v7;
  return result;
}

void _xpc_xml_parser_pop(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*v1)
    {
      xpc_release(*v1);
    }

    *a1 = *(v1 + 16);

    free(v1);
  }
}

uint64_t _xpc_xml_parser_stack_finish_leaf(uint64_t *a1, __objc2_class **value, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(v3 + 8);
  switch(v6)
  {
    case 12:
      v9 = xpc_retain(*v3);
      _xpc_xml_parser_pop(a1);
      if (*a1 && *(*a1 + 8) == 6)
      {
        string_ptr = xpc_string_get_string_ptr(v9);
        xpc_dictionary_set_value_with_key_string_cache(**a1, string_ptr, value, a3);
        xpc_release(v9);
        return 1;
      }

      break;
    case 9:
      xpc_array_append_value(*v3, value);
      return 1;
    case 4:
      **a1 = xpc_retain(value);
      return 1;
  }

  return 0;
}

_BYTE *_xpc_xml_parser_string_terminate(const void *a1, size_t a2)
{
  v4 = malloc_type_malloc(a2 + 1, 0x22D0131DuLL);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, a1, a2);
    v5[a2] = 0;
  }

  return v5;
}

char *_xpc_xml_replace_entities(char *a1)
{
  v2 = strchr(a1, 38);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = strchr(v3, 59);
      if (!v5)
      {
        return v4;
      }

      v6 = v5;
      v7 = v5 - v3;
      if (v5 - v3 >= 3)
      {
        if (v3[1] != 35)
        {
          v15 = &dword_1E74AB658;
          v16 = 5;
          while (v7 - 1 != *(v15 - 1) || strncmp(v3 + 1, *(v15 - 2), v7 - 1))
          {
            v15 += 6;
            if (!--v16)
            {
              if (v7 != 1)
              {
                goto LABEL_43;
              }

              v10 = 0;
              goto LABEL_30;
            }
          }

          v10 = *v15;
          if (v4)
          {
            goto LABEL_32;
          }

LABEL_31:
          v4 = _xpc_strdup(a1);
          v3 = &v4[v3 - a1];
LABEL_32:
          v17 = strlen(v3);
          if (v10 > 0x7F)
          {
            if (v10 > 0x7FF)
            {
              if (HIWORD(v10))
              {
                v6 = v3;
                if (!(v10 >> 21))
                {
                  *v3 = (v10 >> 18) | 0xF0;
                  v3[1] = (v10 >> 12) & 0x3F | 0x80;
                  v3[2] = (v10 >> 6) & 0x3F | 0x80;
                  v6 = v3 + 4;
                  v3[3] = v10 & 0x3F | 0x80;
                }
              }

              else
              {
                *v3 = (v10 >> 12) | 0xE0;
                v3[1] = (v10 >> 6) & 0x3F | 0x80;
                v6 = v3 + 3;
                v3[2] = v10 & 0x3F | 0x80;
              }
            }

            else
            {
              *v3 = (v10 >> 6) | 0xC0;
              v6 = v3 + 2;
              v3[1] = v10 & 0x3F | 0x80;
            }
          }

          else
          {
            *v3 = v10;
            v6 = v3 + 1;
          }

          memmove(v6, &v3[v7 + 1], v17 - (v7 + 1) + 1);
          goto LABEL_43;
        }

        v8 = v3[2];
        if (v8 == 120)
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }

        v9 = v3[v7];
        if (v9 != 59)
        {
          v10 = 0;
          if (v8 == 120)
          {
            v11 = 16;
          }

          else
          {
            v11 = 10;
          }

          do
          {
            v12 = v9;
            if ((v9 - 48) > 9u)
            {
              if (v8 != 120 || (v13 = v9 - 97, (v12 - 97) > 5u))
              {
                v13 = v12 - 65;
                if ((v12 - 65) >= 6u || v8 != 120)
                {
                  v13 = 0;
                }
              }
            }

            else
            {
              v13 = v9 - 48;
            }

            v10 = v13 + v10 * v11;
            v9 = v3[++v7];
          }

          while (v9 != 59);
LABEL_30:
          if (!v4)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }
      }

LABEL_43:
      v3 = strchr(v6, 38);
      if (!v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t _xpc_xml_create_string_no_copy_with_string_cache(char *a1, void *a2)
{
  if (a2)
  {
    cached = xpc_string_create_cached(a1, a2);
    free(a1);
    return cached;
  }

  else
  {

    return xpc_string_create_no_copy(a1);
  }
}

uint64_t _xpc_xml_lexer_read_header(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[1];
  v4 = a1[2];
  v5 = v4 - (v2 - v3);
  if (v4 < v2 - v3)
  {
    v5 = 0;
  }

  if (v5 < 6)
  {
    return 0;
  }

  if (*v2 != 543976824)
  {
    return 0;
  }

  a1[6] = v2 + 4;
  v9 = v2 + 4 - v3;
  v10 = v4 >= v9;
  v11 = v4 - v9;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = strnstr((v2 + 4), "?>", v12);
  if (result)
  {
    v13 = result;
    v15 = a1[5];
    v14 = a1[6];
    v16 = result - v14;
    result = 1;
    *a2 = 1;
    *(a2 + 8) = v15;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    a1[6] = v13 + 2;
  }

  return result;
}

BOOL _xpc_xml_lexer_read_tag(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[2];
  v6 = &v4[-a1[1]];
  v7 = v5 >= v6;
  v8 = v5 - v6;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = strnstr(v4, ">", v9);
  if (v10)
  {
    v12 = a1[5];
    v11 = a1[6];
    *a2 = 14;
    *(a2 + 8) = v12;
    *(a2 + 16) = v11;
    *(a2 + 24) = v10 - v11;
    if (*v11 == 47)
    {
      *a2 = 15;
      *(a2 + 16) = v11 + 1;
    }

    else
    {
      if (*(v10 - 1) != 47)
      {
LABEL_10:
        a1[6] = v10 + 1;
        return v10 != 0;
      }

      *a2 = 16;
    }

    *(a2 + 24) = v10 - v11 - 1;
    goto LABEL_10;
  }

  return v10 != 0;
}

int *_xpc_xml_lexer_process_tag(int *result)
{
  v1 = *result;
  if (*result == 16)
  {
    v9 = *(result + 3);
    if (v9 < 4)
    {
      return result;
    }

    v10 = *(result + 2);
    if (*v10 == 1952672100)
    {
      v5 = 8;
      goto LABEL_81;
    }

    if (v9 == 4)
    {
      if (*v10 != 1702195828)
      {
        return result;
      }
    }

    else
    {
      if (*v10 == 1634890337 && *(v10 + 4) == 121)
      {
        v5 = 11;
        goto LABEL_81;
      }

      if (*v10 != 1702195828)
      {
        v28 = *v10;
        v29 = *(v10 + 4);
        if (v28 == 1936482662 && v29 == 101)
        {
          v5 = 18;
          goto LABEL_81;
        }

        return result;
      }
    }

    v5 = 17;
    goto LABEL_81;
  }

  if (v1 == 15)
  {
    v6 = *(result + 3);
    if (v6 < 5)
    {
      if (v6 != 4)
      {
        if (v6 <= 2)
        {
          return result;
        }

        v19 = *(result + 2);
        v20 = *v19;
        v21 = *(v19 + 2);
        if (v20 != 25963 || v21 != 121)
        {
          return result;
        }

        goto LABEL_57;
      }

      v7 = *(result + 2);
    }

    else
    {
      v7 = *(result + 2);
      if (*v7 == 1936288880 && *(v7 + 4) == 116)
      {
        v5 = 5;
        goto LABEL_81;
      }
    }

    if (*v7 == 1952672100)
    {
      v5 = 7;
      goto LABEL_81;
    }

    if (*v7 != 25963 || *(v7 + 2) != 121)
    {
      if (v6 >= 5)
      {
        v12 = *v7;
        v13 = *(v7 + 4);
        if (v12 == 1634890337 && v13 == 121)
        {
          v5 = 10;
          goto LABEL_81;
        }
      }

      return result;
    }

LABEL_57:
    v5 = 13;
    goto LABEL_81;
  }

  if (v1 != 14)
  {
    return result;
  }

  v2 = *(result + 3);
  if (v2 >= 5)
  {
    v3 = *(result + 2);
    if (*v3 == 1936288880 && *(v3 + 4) == 116)
    {
      v5 = 4;
      goto LABEL_81;
    }

    goto LABEL_39;
  }

  if (v2 == 4)
  {
    v3 = *(result + 2);
LABEL_39:
    if (*v3 == 1952672100)
    {
      v5 = 6;
      goto LABEL_81;
    }

    if (*v3 != 25963 || *(v3 + 2) != 121)
    {
      if (v2 < 5)
      {
        return result;
      }

      v16 = *v3;
      v17 = *(v3 + 4);
      if (v16 != 1634890337 || v17 != 121)
      {
        return result;
      }

      v5 = 9;
LABEL_81:
      *result = v5;
      return result;
    }

LABEL_64:
    v5 = 12;
    goto LABEL_81;
  }

  if (v2 > 2)
  {
    v23 = *(result + 2);
    v24 = *v23;
    v25 = *(v23 + 2);
    if (v24 == 25963 && v25 == 121)
    {
      goto LABEL_64;
    }
  }

  return result;
}

uint64_t _xpc_mach_recv_desc(unsigned int *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1[6];
  if (v4 == -1)
  {
    v6 = "(consumed)";
    v7 = -1;
  }

  else
  {
    *__str = 0;
    v5 = MEMORY[0x19A8DD090](*MEMORY[0x1E69E9A60], v4, 1, __str);
    if (v5)
    {
      if (v5 == 15)
      {
        v6 = "(none)";
      }

      else if (v5 == 17)
      {
        v6 = "(consumed)";
      }

      else
      {
        v6 = "(invalid)";
      }
    }

    else
    {
      v6 = "receive";
    }

    v7 = a1[6];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__str = 0u;
  v13 = 0u;
  v8 = snprintf(__str, 0x80uLL, "<%s: %p> { name = 0x%x, right = %s }", "mach receive right", a1, v7, v6);
  if (v8 >= 0x7F)
  {
    v9 = 127;
  }

  else
  {
    v9 = v8;
  }

  result = _xpc_serializer_append(a2, __str, (v9 + 1), 0);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_mach_recv_serialize(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  __swp(a5, (a1 + 24));
  if (a5 == -1)
  {
    v6 = _xpc_asprintf("Multiple attempts to serialize a receive right.");
    _xpc_api_misuse(v6);
  }

  v7 = 86016;
  return _xpc_serializer_append_port(a2, &v7, 4uLL, a1, a5, 16);
}

uint64_t _xpc_mach_recv_deserialize(uint64_t *a1)
{
  v3 = 0;
  if (!_xpc_graph_deserializer_read_port(a1, 16, &v3))
  {
    return 0;
  }

  v1 = v3;
  result = _xpc_base_create(OS_xpc_mach_recv, 8);
  if ((v1 - 1) <= 0xFFFFFFFD)
  {
    *(result + 24) = v1;
  }

  *(result + 16) |= 3u;
  return result;
}

uint64_t _xpc_mach_recv_dispose(uint64_t result)
{
  __swp(result, (result + 24));
  if ((result - 1) <= 0xFFFFFFFD)
  {
    result = _xpc_mach_port_close_recv(result, 0, 0);
    if (result)
    {
      return _os_assumes_log();
    }
  }

  return result;
}

uint64_t xpc_mach_recv_create(int a1)
{
  result = _xpc_base_create(OS_xpc_mach_recv, 8);
  if ((a1 - 1) <= 0xFFFFFFFD)
  {
    *(result + 24) = a1;
  }

  *(result + 16) |= 2u;
  return result;
}

__objc2_class *xpc_mach_recv_extract_right(unsigned int *a1)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_mach_recv)
  {
    return 0;
  }

  __swp(result, a1 + 6);
  if (result == -1)
  {
    v3 = _xpc_asprintf("Attempt to extract a receive right multiple times from the same object. This is unsafe.");
    _xpc_api_misuse(v3);
  }

  return result;
}

uint64_t _xpc_bundle_desc(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  _xpc_bundle_resolve(a1);
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  *__str = 0u;
  v78 = 0u;
  v4 = snprintf(__str, 0x100uLL, "<%s: %p> {\n", "bundle", a1);
  if (v4 >= 0xFF)
  {
    v5 = 255;
  }

  else
  {
    v5 = v4;
  }

  _xpc_serializer_append(a2, __str, v5, 0);
  v6 = _xpc_serializer_pad(a2);
  v7 = _xpc_object_pad(__str, 0x100uLL, v6);
  v8 = v7;
  v9 = 256 - v7;
  if ((256 - v7) < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = snprintf(&__str[v7], v9, "resolved = %d,\n", (*(a1 + 312) >> 2) & 1);
    if (v9 <= v10)
    {
      v10 = 255 - v8;
    }
  }

  _xpc_serializer_append(a2, __str, v10 + v8, 0);
  v11 = _xpc_object_pad(__str, 0x100uLL, v6);
  v12 = v11;
  v13 = 256 - v11;
  if ((256 - v11) < 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = snprintf(&__str[v11], v13, "populated = %d,\n", (*(a1 + 312) >> 3) & 1);
    if (v13 <= v14)
    {
      v14 = 255 - v12;
    }
  }

  _xpc_serializer_append(a2, __str, v14 + v12, 0);
  if (*(a1 + 304))
  {
    v15 = _xpc_object_pad(__str, 0x100uLL, v6);
    v16 = v15;
    v17 = 256 - v15;
    if ((256 - v15) < 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = snprintf(&__str[v15], v17, "taint = %s,\n", *(a1 + 304));
      if (v17 <= v18)
      {
        v18 = 255 - v16;
      }
    }

    _xpc_serializer_append(a2, __str, v18 + v16, 0);
  }

  v19 = _xpc_object_pad(__str, 0x100uLL, v6);
  v20 = v19;
  v21 = 256 - v19;
  if ((256 - v19) < 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = snprintf(&__str[v19], v21, "error = %d,\n", *(a1 + 36));
    if (v21 <= v22)
    {
      v22 = 255 - v20;
    }
  }

  _xpc_serializer_append(a2, __str, v22 + v20, 0);
  v23 = _xpc_object_pad(__str, 0x100uLL, v6);
  v24 = v23;
  v25 = 256 - v23;
  if ((256 - v23) < 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = snprintf(&__str[v23], v25, "origin type = %d,\n", *(a1 + 40));
    if (v25 <= v26)
    {
      v26 = 255 - v24;
    }
  }

  _xpc_serializer_append(a2, __str, v26 + v24, 0);
  v27 = _xpc_object_pad(__str, 0x100uLL, v6);
  v28 = v27;
  v29 = 256 - v27;
  if ((256 - v27) < 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = snprintf(&__str[v27], v29, "origin path = %s,\n", *(a1 + 48));
    if (v29 <= v30)
    {
      v30 = 255 - v28;
    }
  }

  _xpc_serializer_append(a2, __str, v30 + v28, 0);
  v31 = _xpc_object_pad(__str, 0x100uLL, v6);
  v32 = v31;
  v33 = 256 - v31;
  if ((256 - v31) < 2)
  {
    v34 = 0;
  }

  else
  {
    v34 = snprintf(&__str[v31], v33, "resolved origin path = %s,\n", *(a1 + 56));
    if (v33 <= v34)
    {
      v34 = 255 - v32;
    }
  }

  _xpc_serializer_append(a2, __str, v34 + v32, 0);
  v35 = _xpc_object_pad(__str, 0x100uLL, v6);
  v36 = v35;
  v37 = 256 - v35;
  if ((256 - v35) < 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = snprintf(&__str[v35], v37, "root path = %s,\n", *(a1 + 64));
    if (v37 <= v38)
    {
      v38 = 255 - v36;
    }
  }

  _xpc_serializer_append(a2, __str, v38 + v36, 0);
  v39 = _xpc_object_pad(__str, 0x100uLL, v6);
  v40 = v39;
  v41 = 256 - v39;
  if ((256 - v39) < 2)
  {
    v42 = 0;
  }

  else
  {
    v42 = snprintf(&__str[v39], v41, "executable path = %s,\n", *(a1 + 232));
    if (v41 <= v42)
    {
      v42 = 255 - v40;
    }
  }

  _xpc_serializer_append(a2, __str, v42 + v40, 0);
  v43 = _xpc_object_pad(__str, 0x100uLL, v6);
  v44 = v43;
  v45 = 256 - v43;
  if ((256 - v43) < 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = snprintf(&__str[v43], v45, "info plist = ");
    if (v45 <= v46)
    {
      v46 = 255 - v44;
    }
  }

  _xpc_serializer_append(a2, __str, v46 + v44, 0);
  v47 = *(a1 + 240);
  if (v47)
  {
    if ((v47 & 0x8000000000000000) != 0)
    {
      v48 = 0;
      v49 = *MEMORY[0x1E69E5910];
      if ((~v47 & 0xC000000000000007) == 0)
      {
        v49 = 0;
      }

      v50 = v49 ^ v47;
      do
      {
        if ((v50 & 7) == *(MEMORY[0x1E69E5900] + v48))
        {
          break;
        }

        ++v48;
      }

      while (v48 != 7);
      v51 = v48 | v50;
      v52 = v48 & 7;
      v53 = (v51 >> 55) + 8;
      if (v52 == 7)
      {
        LODWORD(v52) = v53;
      }

      if (v52 == 12)
      {
        extension_vtable = &_OS_xpc_type_uint64;
      }

      else
      {
        if (v52 != 13)
        {
          goto LABEL_103;
        }

        extension_vtable = &_OS_xpc_type_int64;
      }
    }

    else
    {
      Class = object_getClass(*(a1 + 240));
      if (Class < OBJC_CLASS___OS_xpc_object || Class > OS_xpc_string_cache || (Class & 7) != 0)
      {
        extension_vtable = _xpc_get_extension_vtable(v47);
      }

      else
      {
        extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
      }
    }

    (*(extension_vtable + 6))(v47, a2);
    v56 = *(a2 + 56) + 1;
    --*(a2 + 48);
    *(a2 + 56) = v56;
  }

  else
  {
    _xpc_serializer_append(a2, "(null)", 6uLL, 0);
  }

  _xpc_serializer_append(a2, "\n", 1uLL, 0);
  if (*(a1 + 248))
  {
    v57 = _xpc_object_pad(__str, 0x100uLL, v6);
    v58 = v57;
    v59 = 256 - v57;
    if ((256 - v57) < 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = snprintf(&__str[v57], v59, "services = ");
      if (v59 <= v60)
      {
        v60 = 255 - v58;
      }
    }

    _xpc_serializer_append(a2, __str, v60 + v58, 0);
    v61 = *(a1 + 248);
    if (!v61)
    {
      _xpc_get_extension_vtable_cold_1(&v76, v93);
    }

    if ((v61 & 0x8000000000000000) == 0)
    {
      v69 = object_getClass(v61);
      if (v69 < OBJC_CLASS___OS_xpc_object || v69 > OS_xpc_string_cache || (v69 & 7) != 0)
      {
        v68 = _xpc_get_extension_vtable(v61);
      }

      else
      {
        v68 = (&_xpc_vtables + 2 * (v69 - OBJC_CLASS___OS_xpc_object));
      }

      goto LABEL_98;
    }

    v62 = 0;
    v63 = *MEMORY[0x1E69E5910];
    if ((~v61 & 0xC000000000000007) == 0)
    {
      v63 = 0;
    }

    v64 = v63 ^ v61;
    do
    {
      if ((v64 & 7) == *(MEMORY[0x1E69E5900] + v62))
      {
        break;
      }

      ++v62;
    }

    while (v62 != 7);
    v65 = v62 | v64;
    v66 = v62 & 7;
    v67 = (v65 >> 55) + 8;
    if (v66 == 7)
    {
      LODWORD(v66) = v67;
    }

    if (v66 == 12)
    {
      v68 = &_OS_xpc_type_uint64;
      goto LABEL_98;
    }

    if (v66 == 13)
    {
      v68 = &_OS_xpc_type_int64;
LABEL_98:
      (*(v68 + 6))(v61, a2);
      v70 = *(a2 + 56) + 1;
      --*(a2 + 48);
      *(a2 + 56) = v70;
      _xpc_serializer_append(a2, "\n", 1uLL, 0);
      goto LABEL_99;
    }

LABEL_103:
    v75 = _xpc_asprintf("Object is not an XPC object");
    _xpc_api_misuse(v75);
  }

LABEL_99:
  v71 = _xpc_serializer_unpad(a2);
  v72 = _xpc_object_pad(__str, 0x100uLL, v71);
  _xpc_serializer_append(a2, __str, v72, 0);
  result = _xpc_serializer_append(a2, "}", 2uLL, 0);
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_bundle_dispose(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    xpc_release(v4);
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    xpc_release(v5);
  }

  v6 = *(a1 + 264);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 256);
  if (v7)
  {
    dispatch_release(v7);
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 72));
  free(*(a1 + 64));
  v8 = *(a1 + 232);

  free(v8);
}

char *xpc_bundle_copy_normalized_cryptex_path(const char *a1)
{
  v2 = _normalize_cryptex_path(a1);
  if (!v2)
  {
    v2 = a1;
  }

  return _xpc_strdup(v2);
}

const char *_normalize_cryptex_path(const char *a1)
{
  if (_xpc_has_prefix(a1, "/private/preboot/Cryptexes/OS/"))
  {
    return a1 + 29;
  }

  has_prefix = _xpc_has_prefix(a1, "/System/Cryptexes/OS/");
  v4 = 20;
  if (!has_prefix)
  {
    v4 = 0;
  }

  v5 = &a1[v4];
  if (has_prefix)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t xpc_bundle_create_with_string_cache(const char *a1, unsigned int a2, void *a3, void *a4)
{
  v4 = a2;
  result = xpc_bundle_create_from_origin_with_string_cache((a2 >> 1) & 1, a1, a3, a4);
  *(result + 312) |= 1u;
  if ((v4 & 4) != 0)
  {
    v6 = _xpc_asprintf("This platform does not support bundles in other platforms' formats.");
    _xpc_api_misuse(v6);
  }

  return result;
}

uint64_t xpc_bundle_create_from_origin_with_string_cache(int a1, const char *a2, void *a3, void *a4)
{
  v8 = _xpc_base_create(OS_xpc_bundle, 296);
  *(v8 + 40) = a1;
  *(v8 + 48) = _xpc_strdup(a2);
  if (a3)
  {
    *(v8 + 288) = xpc_retain(a3);
  }

  if (a4)
  {
    *(v8 + 296) = xpc_retain(a4);
  }

  v9 = *(v8 + 48);
  if (v9[strlen(v9) - 1] == 47)
  {
    v10 = strrchr(v9, 47) + 2;
    do
    {
      v11 = *(v10 - 2);
      --v10;
    }

    while (v11 == 47);
    *v10 = 0;
  }

  return v8;
}

uint64_t xpc_bundle_create_main()
{
  v4 = *MEMORY[0x1E69E9840];
  bzero(buf, 0x400uLL);
  bufsize = 1024;
  _NSGetExecutablePath(buf, &bufsize);
  result = xpc_bundle_create_from_origin_with_string_cache(1, buf, 0, 0);
  *(result + 312) |= 1u;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_bundle_resolve(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  global_queue = dispatch_get_global_queue(0, 0);

  xpc_bundle_resolve_on_queue(a1, a2, global_queue, a3, a4);
}

void xpc_bundle_resolve_on_queue(uint64_t a1, NSObject *a2, dispatch_object_t object, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 312) & 8) != 0)
  {
    v9 = _xpc_asprintf("Attempt to resolve populated bundle.", a2, object);
    _xpc_api_misuse(v9);
  }

  *(a1 + 256) = object;
  dispatch_retain(object);
  *(a1 + 264) = a2;
  dispatch_retain(a2);
  *(a1 + 272) = a5;
  *(a1 + 280) = a4;

  _xpc_bundle_resolve(a1);
}

void _xpc_bundle_resolve(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___xpc_bundle_resolve_block_invoke;
  block[3] = &__block_descriptor_tmp_26_1;
  block[4] = a1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }
}

void xpc_bundle_populate(uint64_t a1, xpc_object_t object, void *a3)
{
  if (*(a1 + 40) == 2)
  {
    v7 = _xpc_asprintf("Attempt to populate an unknown bundle type.", object);
    goto LABEL_14;
  }

  if (*(a1 + 256))
  {
    v7 = _xpc_asprintf("Attempt to populate a non-inert bundle.", object);
LABEL_14:
    _xpc_api_misuse(v7);
  }

  if (object)
  {
    v5 = xpc_retain(object);
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
  }

  *(a1 + 240) = v5;
  if (a3)
  {
    v6 = xpc_retain(a3);
  }

  else
  {
    v6 = xpc_array_create(0, 0);
  }

  *(a1 + 248) = v6;
  *(a1 + 312) |= 8u;

  _xpc_bundle_resolve(a1);
}

char *xpc_bundle_get_property(uint64_t a1, int a2)
{
  _xpc_bundle_resolve(a1);
  result = 0;
  if (a2 > 3)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        return *(a1 + 240);
      }

      else if (a2 == 9)
      {
        v5 = *(a1 + 64);
        v6 = *(a1 + 32);

        return _xpc_bundle_variant_create_subpath(v5, v6, 5, 0);
      }
    }

    else if (a2 == 4)
    {
      return (a1 + 80);
    }

    else if (a2 == 6)
    {
      return *(a1 + 304);
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      return *(a1 + 64);
    }

    else
    {
      return *(a1 + 232);
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return *(a1 + 48);
    }
  }

  else
  {
    return *(a1 + 40);
  }

  return result;
}

void *xpc_bundle_copy_info_dictionary(uint64_t a1)
{
  _xpc_bundle_resolve(a1);
  result = *(a1 + 240);
  if (result)
  {
    xpc_retain(result);
    return *(a1 + 240);
  }

  return result;
}

xpc_object_t xpc_bundle_get_xpcservice_dictionary(uint64_t a1)
{
  _xpc_bundle_resolve(a1);
  result = *(a1 + 240);
  if (result)
  {
    result = xpc_dictionary_get_value(result, "XPCService");
    if (result)
    {
      v3 = result;
      if (xpc_get_type(result) == OS_xpc_dictionary)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *xpc_bundle_copy_services(uint64_t a1)
{
  _xpc_bundle_resolve(a1);
  result = *(a1 + 248);
  if (result)
  {
    xpc_retain(result);
    return *(a1 + 248);
  }

  return result;
}

void xpc_bundle_resolve_sync(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 312) & 1) == 0)
  {
    xpc_bundle_resolve_sync_cold_1(*(a1 + 312), &v2, v3);
  }

  v1 = *MEMORY[0x1E69E9840];

  _xpc_bundle_resolve(a1);
}

void ___xpc_bundle_resolve_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((*(v2 + 312) & 8) != 0)
  {
    *(v2 + 56) = _xpc_strdup(*(v2 + 48));
    v6 = _xpc_strdup(*(v2 + 48));
    v7 = strrchr(v6, 47);
    if (v7)
    {
      *v7 = 0;
    }

    if (*v6)
    {
      if (_xpc_has_suffix(v6, "/Contents/MacOS"))
      {
        v8 = 0;
LABEL_15:
        *(v2 + 32) = v8;
        free(v6);
        if (*(v2 + 40) == 1)
        {
          v12 = _xpc_bundle_copy_container(v8, *(v2 + 48));
        }

        else
        {
          v12 = _xpc_strdup(*(v2 + 48));
        }

        *(v2 + 64) = v12;
        _xpc_bundle_normalize_cryptex_path((v2 + 64));
        if (!**(v2 + 64))
        {
          *(v2 + 304) = "invalid populated entry";
          v18 = 0;
          v19 = 0;
          v16 = 0;
          v17 = 0;
          if ((_dyld_get_image_uuid() & 1) == 0)
          {
            v18 = 0;
            v19 = 0;
          }

          if (_dyld_get_shared_cache_uuid())
          {
            block[5] = 0;
            _dyld_get_shared_cache_range();
          }

          else
          {
            v16 = 0;
            v17 = 0;
          }

          v14 = *(v2 + 48);
          _os_log_simple();
        }

        _xpc_bundle_resolve_executable(v2);
        v5 = *(a1 + 32);
        goto LABEL_26;
      }

      v11 = strrchr(v6, 47);
      if (v11)
      {
        *v11 = 0;
      }

      if (_xpc_has_suffix(v6, "/Versions"))
      {
        v8 = 1;
        goto LABEL_15;
      }
    }

    v8 = 2;
    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  if (*(v2 + 312))
  {
    v4 = _xpc_bundle_resolve_sync(v3);
    v5 = *(a1 + 32);
    *(v5 + 36) = v4;
LABEL_26:
    *(v5 + 312) |= 4u;
    goto LABEL_27;
  }

  xpc_retain(v3);
  v9 = *(a1 + 32);
  v10 = *(v9 + 256);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___xpc_bundle_resolve_block_invoke_2;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = v9;
  dispatch_async(v10, block);
LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_bundle_resolve_sync(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = _xpc_realpath(*(a1 + 48));
  *(a1 + 56) = v2;
  v3 = (a1 + 56);
  if (v2)
  {
    goto LABEL_2;
  }

  v4 = *__error();
  if (*(a1 + 40) != 1)
  {
LABEL_13:
    if (!*v3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = *(a1 + 48);
  v6 = _dyld_shared_cache_real_path();
  if (!v6)
  {
    *v3 = 0;
LABEL_8:
    *&v23.st_dev = 0;
    v23.st_ino = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      *&v23.st_dev = 0;
      v23.st_ino = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    v22 = *(a1 + 48);
    _os_log_simple();
    goto LABEL_13;
  }

  v7 = _xpc_strdup(v6);
  *v3 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_2:
  v4 = 0;
LABEL_14:
  _xpc_bundle_normalize_cryptex_path((a1 + 56));
LABEL_15:
  if (v4)
  {
    goto LABEL_38;
  }

  if ((*(a1 + 312) & 0x10) != 0)
  {
    v9 = 2;
  }

  else
  {
    v8 = *(a1 + 56);
    if (*(a1 + 40) == 1)
    {
      v9 = _xpc_bundle_resolve_executable_variant(v8);
    }

    else
    {
      v9 = _xpc_bundle_resolve_path_variant(v8);
    }

    if (v9 == 3)
    {
      v4 = 128;
      goto LABEL_38;
    }
  }

  *(a1 + 32) = v9;
  if (!_xpc_bundle_is_valid_variant(v9))
  {
    _xpc_bundle_resolve_sync_cold_1();
  }

  v10 = _xpc_bundle_resolve_root(a1);
  if (v10)
  {
    v4 = v10;
    goto LABEL_38;
  }

  memset(&v23, 0, sizeof(v23));
  subpath = _xpc_bundle_variant_create_subpath(*(a1 + 64), *(a1 + 32), 1, 0);
  v12 = open(subpath, 0);
  if ((v12 & 0x80000000) != 0)
  {
    if (*__error() != 2 && *__error())
    {
      _os_assumes_log();
    }

    v4 = *__error();
    free(subpath);
    v16 = 0;
    v15 = 0;
    goto LABEL_35;
  }

  v13 = v12;
  if (fstat(v12, &v23))
  {
LABEL_28:
    v14 = __error();
    v15 = 0;
    v16 = 0;
LABEL_29:
    v4 = *v14;
    goto LABEL_30;
  }

  v19 = _xpc_realpath_fd(v13);
  if (!v19)
  {
    if (*__error() == 2)
    {
      v15 = 0;
      v16 = 0;
      v4 = 128;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v16 = v19;
  if (!_xpc_has_prefix(v19, *(a1 + 64)))
  {
    *(a1 + 304) = "linked info.plist";
  }

  v15 = malloc_type_malloc(v23.st_size, 0x100004077774924uLL);
  if (!v15)
  {
    goto LABEL_50;
  }

  v20 = read(v13, v15, v23.st_size);
  if (v20 == -1)
  {
    _xpc_fd_desc_cold_1();
  }

  if (v20 != v23.st_size)
  {
LABEL_50:
    v14 = __error();
    goto LABEL_29;
  }

  v21 = xpc_create_from_plist_with_string_cache(v15, v20, *(a1 + 288), *(a1 + 296));
  *(a1 + 240) = v21;
  if (v21)
  {
    if (xpc_get_type(v21) == OS_xpc_dictionary)
    {
      v4 = 0;
      goto LABEL_30;
    }

    xpc_release(*(a1 + 240));
    *(a1 + 240) = 0;
  }

  v4 = 109;
LABEL_30:
  free(subpath);
  _xpc_strict_close(v13);
LABEL_35:
  free(v16);
  free(v15);
  if (!v4)
  {
    v4 = _xpc_bundle_resolve_executable(a1);
    if (!v4)
    {
      _xpc_bundle_resolve_services(a1);
      _xpc_bundle_resolve_resources(a1);
    }
  }

LABEL_38:
  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

void ___xpc_bundle_resolve_block_invoke_2(uint64_t a1)
{
  v2 = _xpc_bundle_resolve_sync(*(a1 + 32));
  v3 = *(a1 + 32);
  *(v3 + 36) = v2;
  *(v3 + 312) |= 4u;
  v4 = *(a1 + 32);
  xpc_retain(v4);
  v5 = v4[33];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___xpc_bundle_invoke_callback_async_block_invoke;
  block[3] = &__block_descriptor_tmp_42_0;
  block[4] = v4;
  dispatch_async(v5, block);
  xpc_release(*(a1 + 32));
}

uint64_t _xpc_bundle_resolve_executable(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 312) & 8) == 0)
  {
    v2 = _xpc_bundle_resolve_executable_name(*(a1 + 64), *(a1 + 240));
    subpath = _xpc_bundle_variant_create_subpath(*(a1 + 64), *(a1 + 32), 0, v2);
    v4 = _resolve_and_stat_path(subpath, (a1 + 232), 0, 0);
    if (v4)
    {
      v5 = v4;
      if (v4 != 2)
      {
        *(a1 + 304) = "failed to resolve executable";
        _dyld_get_image_uuid();
        if (_dyld_get_shared_cache_uuid())
        {
          _dyld_get_shared_cache_range();
        }

        v10 = *(a1 + 48);
        _os_log_simple();
        goto LABEL_19;
      }

      v6 = _dyld_shared_cache_real_path();
      if (!v6 || (v7 = _xpc_strdup(v6)) == 0)
      {
        *(a1 + 232) = _xpc_strdup(subpath);
        *(a1 + 304) = "missing executable";
        _dyld_get_image_uuid();
        if (_dyld_get_shared_cache_uuid())
        {
          _dyld_get_shared_cache_range();
        }

        v11 = *(a1 + 48);
        _os_log_simple();
        v5 = 2;
        goto LABEL_19;
      }

      *(a1 + 232) = v7;
    }

    else if (!_xpc_has_prefix(*(a1 + 232), *(a1 + 64)))
    {
      *(a1 + 304) = "linked executable";
      _dyld_get_image_uuid();
      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      v12 = *(a1 + 48);
      _os_log_simple();
    }

    _xpc_bundle_normalize_cryptex_path((a1 + 232));
    v5 = 0;
LABEL_19:
    free(v2);
    free(subpath);
    goto LABEL_20;
  }

  *(a1 + 232) = _xpc_strdup(*(a1 + 48));
  _xpc_bundle_normalize_cryptex_path((a1 + 232));
  v5 = 0;
LABEL_20:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void _xpc_bundle_normalize_cryptex_path(const char **a1)
{
  v2 = *a1;
  v3 = _normalize_cryptex_path(*a1);
  if (v3)
  {
    *a1 = _xpc_strdup(v3);
  }

  else
  {
    v2 = 0;
  }

  free(v2);
}

uint64_t _resolve_and_stat_path(const char *a1, char **a2, stat *a3, _BYTE *a4)
{
  if (access(a1, 4))
  {
    return *__error();
  }

  v9 = open(a1, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return *__error();
  }

  v10 = v9;
  if (a3 && fstat(v9, a3))
  {
    goto LABEL_10;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v11 = _xpc_realpath_fd(v10);
  if (!v11)
  {
LABEL_10:
    v8 = *__error();
  }

  else
  {
    v8 = 0;
    *a2 = v11;
  }

  _xpc_strict_close(v10);
  return v8;
}

uint64_t _xpc_bundle_resolve_root(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  if (*v1 != 47 || !*(v1 + 1))
  {
    goto LABEL_23;
  }

  v3 = *(a1 + 40);
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = _resolve_and_stat_path(*(a1 + 56), (a1 + 64), (a1 + 80), (a1 + 224));
      if (v4)
      {
        *(a1 + 304) = "missing root";
        *&v13.st_dev = 0;
        v13.st_ino = 0;
        v14 = 0;
        v15 = 0;
        if ((_dyld_get_image_uuid() & 1) == 0)
        {
          *&v13.st_dev = 0;
          v13.st_ino = 0;
        }

        if (_dyld_get_shared_cache_uuid())
        {
          _dyld_get_shared_cache_range();
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v11 = *(a1 + 48);
        _os_log_simple();
      }

      else
      {
        _xpc_bundle_normalize_cryptex_path((a1 + 64));
      }

      goto LABEL_24;
    }

    memset(&v13, 0, sizeof(v13));
    if (stat(*(a1 + 48), &v13))
    {
      v4 = *__error();
      goto LABEL_24;
    }

    *(a1 + 312) |= 2u;
    v7 = v13.st_mode & 0xF000;
    if (v7 == 0x8000)
    {
      v8 = 1;
      goto LABEL_32;
    }

    if (v7 == 0x4000)
    {
      v8 = 0;
LABEL_32:
      *(a1 + 40) = v8;
      v4 = _xpc_bundle_resolve_root(a1);
      goto LABEL_24;
    }

LABEL_23:
    v4 = 22;
    goto LABEL_24;
  }

  v5 = _xpc_bundle_copy_container(*(a1 + 32), v1);
  v6 = v5;
  if (*v5)
  {
    v4 = _resolve_and_stat_path(v5, (a1 + 64), (a1 + 80), (a1 + 224));
    if (v4)
    {
      *(a1 + 304) = "missing root";
      *&v13.st_dev = 0;
      v13.st_ino = 0;
      v14 = 0;
      v15 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        *&v13.st_dev = 0;
        v13.st_ino = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      v12 = *(a1 + 48);
      _os_log_simple();
    }

    else
    {
      _xpc_bundle_normalize_cryptex_path((a1 + 64));
    }
  }

  else
  {
    v4 = 128;
  }

  free(v6);
LABEL_24:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

void _xpc_bundle_resolve_services(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 248) = xpc_array_create(0, 0);
  subpath = _xpc_bundle_variant_create_subpath(*(a1 + 64), *(a1 + 32), 2, 0);
  v3 = opendir(subpath);
  if (v3)
  {
    v4 = v3;
    v5 = readdir(v3);
    if (v5)
    {
      v6 = v5;
      do
      {
        if (_xpc_has_suffix(v6->d_name, ".xpc"))
        {
          v7 = _xpc_bundle_variant_create_subpath(*(a1 + 64), *(a1 + 32), 2, v6->d_name);
          v8 = _xpc_realpath(v7);
          free(v7);
          if (v8)
          {
            if (!_xpc_has_prefix(v8, *(a1 + 64)))
            {
              *(a1 + 304) = "linked xpc services";
              _dyld_get_image_uuid();
              if (_dyld_get_shared_cache_uuid())
              {
                _dyld_get_shared_cache_range();
              }

              v15 = *(a1 + 48);
              _os_log_simple();
            }

            v9 = xpc_bundle_create_from_origin_with_string_cache(0, v8, 0, 0);
            if (v9)
            {
              v10 = v9;
              *(v9 + 312) = *(v9 + 312) & 0xFE | *(a1 + 312) & 1;
              v12 = *(a1 + 256);
              v11 = *(a1 + 264);
              v10[32] = v12;
              v10[33] = v11;
              if (v12)
              {
                dispatch_retain(v12);
                v11 = v10[33];
              }

              if (v11)
              {
                dispatch_retain(v11);
              }

              xpc_array_append_value(*(a1 + 248), v10);
              xpc_release(v10);
            }

            free(v8);
          }
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    free(subpath);
    if (closedir(v4) == -1)
    {
      _xpc_fd_desc_cold_1();
    }

    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];

    free(subpath);
  }
}

void _xpc_bundle_resolve_resources(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  subpath = _xpc_bundle_variant_create_subpath(*(a1 + 64), *(a1 + 32), 3, 0);
  v3 = subpath;
  if ((*(a1 + 312) & 8) != 0)
  {
    v4 = subpath;
LABEL_8:
    *(a1 + 72) = v4;
    goto LABEL_9;
  }

  v4 = _xpc_realpath(subpath);
  free(v3);
  if (v4)
  {
    if (!_xpc_has_prefix(v4, v4))
    {
      *(a1 + 304) = "linked resources";
      _dyld_get_image_uuid();
      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      v6 = *(a1 + 48);
      _os_log_simple();
    }

    goto LABEL_8;
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
}

void ___xpc_bundle_invoke_callback_async_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 272))(*(a1 + 32), *(*(a1 + 32) + 36), *(*(a1 + 32) + 280));
  v2 = *(a1 + 32);

  xpc_release(v2);
}

uint64_t xpc_peer_requirement_create_lwcr(void *a1, size_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    if (xpc_get_type(a1) != OS_xpc_data)
    {
      type = xpc_get_type(a1);
      name = xpc_type_get_name(type);
      v14 = _xpc_asprintf("Attempting to create peer requirement with invalid type: %s", name);
      _xpc_api_misuse(v14);
    }

    data_from_lwcr_dictionary = xpc_retain(a1);
    goto LABEL_5;
  }

  lwcr_dictionary = xpc_create_lwcr_dictionary(1, 0, a1);
  data_from_lwcr_dictionary = xpc_create_data_from_lwcr_dictionary(lwcr_dictionary);
  xpc_release(lwcr_dictionary);
  if (data_from_lwcr_dictionary)
  {
LABEL_5:
    if (xpc_get_type(data_from_lwcr_dictionary) != OS_xpc_data)
    {
      _os_assumes_log();
    }

    self_audit_token = _xpc_get_self_audit_token();
    v7 = self_audit_token[1];
    v15[0] = *self_audit_token;
    v15[1] = v7;
    bzero(&v16, 0x404uLL);
    _xpc_token_satisfies_lwcr(v15, data_from_lwcr_dictionary, &v16);
    if (a2 && v16 >= 2)
    {
      v8 = _xpc_asprintf("LWCR invalid: %s", v17);
      v9 = 0;
      *a2 = xpc_rich_error_create_no_copy(v8, 0);
    }

    else if (v16 > 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = _xpc_peer_requirement_alloc(32);
      *(v9 + 16) = xpc_retain(data_from_lwcr_dictionary);
      *(v9 + 24) = _xpc_peer_requirement_handle_lwcr_match;
    }

    xpc_release(data_from_lwcr_dictionary);
    goto LABEL_14;
  }

  v9 = 0;
  if (a2)
  {
    *a2 = &_xpc_rich_error_peer_requirement_convert_failed;
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t xpc_peer_requirement_create_entitlement_exists(const char *a1, size_t *a2)
{
  empty = xpc_array_create_empty();
  v5 = xpc_array_create_empty();
  xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, 1);
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, a1);
  xpc_array_append_value(empty, v5);
  lwcr_entitlement_requirement = _xpc_peer_requirement_create_lwcr_entitlement_requirement(empty, a2);
  xpc_release(empty);
  xpc_release(v5);
  return lwcr_entitlement_requirement;
}

uint64_t xpc_peer_requirement_create_entitlement_matches_value(const char *a1, void *a2, size_t *a3)
{
  empty = xpc_array_create_empty();
  v7 = xpc_array_create_empty();
  xpc_array_set_int64(v7, 0xFFFFFFFFFFFFFFFFLL, 1);
  xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, a1);
  xpc_array_append_value(empty, v7);
  xpc_release(v7);
  v8 = xpc_array_create_empty();
  if (xpc_get_type(a2) == OS_xpc_BOOL)
  {
    v9 = 5;
  }

  else if (xpc_get_type(a2) == OS_xpc_string)
  {
    v9 = 3;
  }

  else
  {
    if (xpc_get_type(a2) != OS_xpc_int64)
    {
      type = xpc_get_type(a2);
      name = xpc_type_get_name(type);
      v14 = _xpc_asprintf("Attempting to set entitlement matching value with unsupported value type: %s", name);
      _xpc_api_misuse(v14);
    }

    v9 = 7;
  }

  xpc_array_set_int64(v8, 0xFFFFFFFFFFFFFFFFLL, v9);
  xpc_array_set_value(v8, 0xFFFFFFFFFFFFFFFFLL, a2);
  xpc_array_append_value(empty, v8);
  lwcr_entitlement_requirement = _xpc_peer_requirement_create_lwcr_entitlement_requirement(empty, a3);
  xpc_release(v8);
  xpc_release(empty);
  return lwcr_entitlement_requirement;
}

uint64_t xpc_peer_requirement_create_team_identity(const char *a1, size_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, "team-identifier-for-current-process", 1);
  if (a1)
  {
    xpc_dictionary_set_string(empty, "signing-identifier", a1);
  }

  v10 = 6;
  v9 = xmmword_1972A7DE8;
  lwcr_query_for_validation_category = xpc_create_lwcr_query_for_validation_category(&v9, 5);
  xpc_dictionary_set_value(empty, "validation-category", lwcr_query_for_validation_category);
  xpc_release(lwcr_query_for_validation_category);
  lwcr = xpc_peer_requirement_create_lwcr(empty, a2);
  xpc_release(empty);
  v7 = *MEMORY[0x1E69E9840];
  return lwcr;
}

uint64_t xpc_peer_requirement_create_platform_identity(const char *a1, size_t *a2)
{
  empty = xpc_dictionary_create_empty();
  v5 = empty;
  if (a1)
  {
    xpc_dictionary_set_string(empty, "signing-identifier", a1);
  }

  v9 = 1;
  v6 = xpc_create_lwcr_query_for_validation_category(&v9, 1);
  xpc_dictionary_set_value(v5, "validation-category", v6);
  xpc_release(v6);
  lwcr = xpc_peer_requirement_create_lwcr(v5, a2);
  xpc_release(v5);
  return lwcr;
}

uint64_t _xpc_peer_requirement_match_token(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return v2(v3, v6);
}

uint64_t xpc_peer_requirement_match_received_message(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0u;
  v7 = 0u;
  xpc_dictionary_get_audit_token(a2, &v6);
  v8[0] = v6;
  v8[1] = v7;
  return (*(a1 + 24))(*(a1 + 16), v8, a3);
}

BOOL _xpc_peer_requirement_handle_lwcr_match(void *a1, __int128 *a2, size_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(&v12, 0x404uLL);
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  _xpc_token_satisfies_lwcr(v11, a1, &v12);
  v7 = v12;
  if (a3 && v12)
  {
    v8 = _xpc_asprintf("LWCR requirement doesn't match: %s (%d)", v13, v12);
    *a3 = xpc_rich_error_create_no_copy(v8, 0);
  }

  result = v7 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_token_satisfies_lwcr@<X0>(__int128 *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  if (!xpc_data_get_bytes_ptr_and_length(a2, &v10, &v9))
  {
    _xpc_token_satisfies_lwcr_cold_1(&v8, v11);
  }

  bzero(a3, 0x404uLL);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  result = amfi_launch_constraint_matches_process(v11, v10, v9, a3);
  if (((result ^ (*a3 != 0)) & 1) == 0)
  {
    _xpc_token_satisfies_lwcr_cold_2(&v8, v11);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_peer_requirement_create_lwcr_entitlement_requirement(void *a1, size_t *a2)
{
  empty = xpc_dictionary_create_empty();
  v5 = xpc_dictionary_create_empty();
  xpc_dictionary_set_value(v5, "$query", a1);
  xpc_dictionary_set_value(empty, "entitlements", v5);
  lwcr = xpc_peer_requirement_create_lwcr(empty, a2);
  xpc_release(empty);
  xpc_release(v5);
  return lwcr;
}

char *_xpc_copy_nsobject_debug_description(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(a1 "debugDescription")];
  if (v3)
  {
    v4 = _xpc_strdup(v3);
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

id _xpc_payload_alloc(uint64_t a1)
{
  v1 = a1 - 8;
  v2 = objc_opt_class();

  return class_createInstance(v2, v1);
}

uint64_t _xpc_os_transaction_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE6FD88](v2, a1);
}

uint64_t _xpc_event_publisher_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE6FD88](v2, a1);
}

uint64_t _xpc_listener_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE6FD88](v2, a1);
}

uint64_t _xpc_session_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE6FD88](v2, a1);
}

uint64_t _xpc_peer_requirement_alloc(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE6FD88](v2, a1);
}

uint64_t _xpc_file_transfer_desc(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  v3 = "YES";
  if (!*(a1 + 72))
  {
    v3 = "NO";
  }

  v4 = snprintf(__str, 0x80uLL, "<%s> { id = %lld, state = %d, transaction = %s }", "file transfer", *(a1 + 24), *(a1 + 88), v3);
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  result = _xpc_serializer_append(a2, __str, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_file_transfer_debug_desc(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  v3 = "YES";
  if (!*(a1 + 72))
  {
    v3 = "NO";
  }

  v4 = snprintf(__str, 0x80uLL, "<%s: %p> { id = %lld, state = %d, transaction = %s }", "file transfer", a1, *(a1 + 24), *(a1 + 88), v3);
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  result = _xpc_serializer_append(a2, __str, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_file_transfer_serialize(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    _xpc_file_transfer_serialize_cold_1(&v19, v20);
  }

  *(a1 + 88) = 1;
  *(a1 + 72) = os_transaction_create("com.apple.xpc.file_transfer.outgoing");
  __src = 106496;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  if (!*(a1 + 24))
  {
    _xpc_file_transfer_serialize_cold_5(&v19, v20);
  }

  v17 = *(a1 + 24);
  _xpc_serializer_append(a2, &v17, 8uLL, 1);
  v4 = *(a1 + 32);
  if (!v4)
  {
    _xpc_base_desc_cold_1(&v19, v20);
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E69E5910];
    if ((~v4 & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ v4;
    do
    {
      if ((v7 & 7) == *(MEMORY[0x1E69E5900] + v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != 7);
    v8 = v5 | v7;
    v9 = v5 & 7;
    v10 = (v8 >> 55) + 8;
    if (v9 == 7)
    {
      LODWORD(v9) = v10;
    }

    if (v9 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v9 != 13)
      {
        v16 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v16);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(*(a1 + 32));
    if (Class < OBJC_CLASS___OS_xpc_object || Class > OS_xpc_string_cache || (Class & 7) != 0)
    {
      extension_vtable = _xpc_get_extension_vtable(v4);
    }

    else
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
    }
  }

  (*(extension_vtable + 9))(v4, a2);
  v13 = *(a2 + 104);
  if (!v13)
  {
    _xpc_file_transfer_serialize_cold_3(&v19, v20);
  }

  result = (*(v13 + 16))(v13, a1);
  if ((result & 1) == 0)
  {
    _xpc_file_transfer_serialize_cold_2(&v19, v20);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_file_transfer_deserialize(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  connection = _xpc_received_message_get_connection(a1);
  if (!connection)
  {
    goto LABEL_12;
  }

  v3 = connection;
  v4 = _xpc_graph_deserializer_read(a1, 8uLL);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_12;
  }

  v6 = _xpc_file_transfer_create();
  *(v6 + 24) = v5;
  v7 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v7 || (v8 = *v7, v9 = _xpc_class_id_valid(*v7), v8 != 61440) || !v9 || (depth = _xpc_graph_deserializer_get_depth(a1), !_xpc_graph_deserializer_enter_container(a1)) || (v11 = _xpc_deserialize_from_wire_id(0xF000u), v12 = v11(a1), _xpc_graph_deserializer_restore_depth(a1, depth), !v12))
  {
    xpc_release(v6);
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if (xpc_dictionary_get_count(*(v6 + 32)))
  {
    _xpc_file_transfer_deserialize_cold_1(&v15, v16);
  }

  xpc_release(*(v6 + 32));
  *(v6 + 32) = v12;
  (*(v3 + 16))(v3, v6);
LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

void _xpc_file_transfer_dispose(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88) == 1)
  {
    _xpc_file_transfer_dispose_cold_1(&v9, v10);
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    if (!*(a1 + 88))
    {
      v5[2](v5, *(a1 + 24));
      v5 = *(a1 + 48);
    }

    _Block_release(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    dispatch_io_close(v6, 0);
    dispatch_release(*(a1 + 80));
  }

  v7 = *(a1 + 32);
  v8 = *MEMORY[0x1E69E9840];

  xpc_release(v7);
}

uint64_t xpc_file_transfer_create_with_fd(int a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  if (fstat(a1, &v8) == -1)
  {
    xpc_file_transfer_create_with_fd_cold_1(&v7, v9);
  }

  v4 = v8.st_mode & 0xF000;
  if (v4 == 4096 || v4 == 49152 || v4 == 0x8000)
  {
    result = _xpc_file_transfer_create_with_fd_impl(a1, &v8, a2);
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_file_transfer_create_with_fd_impl(dispatch_fd_t a1, uint64_t a2, const void *a3)
{
  v6 = *(a2 + 4) & 0xF000;
  if (v6 != 4096 && v6 != 0x8000 && v6 != 49152)
  {
    _xpc_file_transfer_create_with_fd_impl_cold_1();
  }

  v7 = _xpc_file_transfer_create();
  *(v7 + 56) = _Block_copy(a3);
  *(v7 + 16) |= 2u;
  if ((*(a2 + 4) & 0xF000) == 0x8000)
  {
    v8 = *(a2 + 96);
  }

  else
  {
    v8 = -1;
  }

  xpc_dictionary_set_uint64(*(v7 + 32), "s", v8);
  *(v7 + 80) = _xpc_file_transfer_create_io_for_fd(v7, a1);
  return v7;
}

uint64_t xpc_file_transfer_create_with_path(const char *a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = open(a1, 0);
  if (v3 == -1)
  {
    goto LABEL_6;
  }

  v4 = v3;
  memset(&v8, 0, sizeof(v8));
  if (fstat(v3, &v8) == -1)
  {
    xpc_file_transfer_create_with_fd_cold_1(&v7, v9);
  }

  if ((v8.st_mode & 0xF000) != 0x8000)
  {
    _xpc_strict_close(v4);
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = _xpc_file_transfer_create_with_fd_impl(v4, &v8, a2);
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_file_transfer_cancel(void *a1)
{
  if (xpc_get_type(a1) == OS_xpc_file_transfer)
  {
    _os_crash();
    __break(1u);
  }

  if (a1)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
  }

  else
  {
    Name = "null";
  }

  v4 = class_getName(OS_xpc_file_transfer);
  v5 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v4);
  _xpc_api_misuse(v5);
}

uint64_t xpc_file_transfer_get_size(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v6 = class_getName(OS_xpc_file_transfer);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v6);
    _xpc_api_misuse(v7);
  }

  v2 = a1[4];

  return xpc_dictionary_get_uint64(v2, "s");
}

uint64_t xpc_file_transfer_write_to_fd(void *a1, dispatch_fd_t a2, const void *a3)
{
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v9 = class_getName(OS_xpc_file_transfer);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v9);
    _xpc_api_misuse(v10);
  }

  return _xpc_file_transfer_write_to_fd_impl(a1, a2, a3);
}

uint64_t _xpc_file_transfer_write_to_fd_impl(uint64_t a1, dispatch_fd_t a2, const void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    _xpc_file_transfer_serialize_cold_1(&v9, v10);
  }

  *(a1 + 88) = 1;
  *(a1 + 72) = os_transaction_create("com.apple.xpc.file_transfer.incoming");
  if (!a3)
  {
    _xpc_file_transfer_write_to_fd_impl_cold_2(&v9, v10);
  }

  *(a1 + 64) = _Block_copy(a3);
  *(a1 + 80) = _xpc_file_transfer_create_io_for_fd(a1, a2);
  v6 = *(*(a1 + 40) + 16);
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t xpc_file_transfer_write_to_path(void *a1, const char *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v14 = class_getName(OS_xpc_file_transfer);
    v15 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v14);
    _xpc_api_misuse(v15);
  }

  v6 = open(a2, 2561, 438);
  if (v6 == -1)
  {
    if (!*__error())
    {
      xpc_file_transfer_write_to_path_cold_1(&v16, v17);
    }

    v9 = *__error();
    v10 = a3[2];
    v11 = *MEMORY[0x1E69E9840];

    return v10(a3, v9);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    return _xpc_file_transfer_write_to_fd_impl(a1, v6, a3);
  }
}

dispatch_object_t xpc_file_transfer_copy_io(dispatch_object_t *a1)
{
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v5 = class_getName(OS_xpc_file_transfer);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  dispatch_retain(a1[10]);
  return a1[10];
}

uint64_t xpc_file_transfer_get_transfer_id(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v5 = class_getName(OS_xpc_file_transfer);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return a1[3];
}

void *xpc_file_transfer_set_transport_writing_callbacks(uint64_t a1, const void *a2, const void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v10 = class_getName(OS_xpc_file_transfer);
    v11 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v10);
    _xpc_api_misuse(v11);
  }

  if (*(a1 + 88))
  {
    _xpc_file_transfer_serialize_cold_1(&v12, v13);
  }

  if (*(a1 + 40))
  {
    xpc_file_transfer_set_transport_writing_callbacks_cold_2(&v12, v13);
  }

  if (*(a1 + 48))
  {
    xpc_file_transfer_set_transport_writing_callbacks_cold_3(&v12, v13);
  }

  *(a1 + 40) = _Block_copy(a2);
  result = _Block_copy(a3);
  *(a1 + 48) = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_file_transfer_write_finished(uint64_t a1, NSObject *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v11 = class_getName(OS_xpc_file_transfer);
    v12 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v11);
    _xpc_api_misuse(v12);
  }

  if (*(a1 + 88) != 1)
  {
    xpc_file_transfer_write_finished_cold_1(&v15, v16);
  }

  *(a1 + 88) = 2;
  v6 = *(a1 + 64);
  if (v6)
  {
    if (!a2)
    {
      xpc_file_transfer_write_finished_cold_2(&v15, v16);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __xpc_file_transfer_write_finished_block_invoke;
    block[3] = &unk_1E74AB728;
    block[4] = v6;
    v14 = a3;
    dispatch_async(a2, block);
    *(a1 + 64) = 0;
  }

  v7 = *(a1 + 72);
  if (!v7)
  {
    xpc_file_transfer_write_finished_cold_3(&v15, v16);
  }

  os_release(v7);
  *(a1 + 72) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void __xpc_file_transfer_write_finished_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void xpc_file_transfer_send_finished(uint64_t a1, NSObject *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_file_transfer)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v11 = class_getName(OS_xpc_file_transfer);
    v12 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v11);
    _xpc_api_misuse(v12);
  }

  if (*(a1 + 88) != 1)
  {
    xpc_file_transfer_write_finished_cold_1(&v15, v16);
  }

  *(a1 + 88) = 2;
  v6 = *(a1 + 56);
  if (v6)
  {
    if (!a2)
    {
      xpc_file_transfer_write_finished_cold_2(&v15, v16);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __xpc_file_transfer_send_finished_block_invoke;
    block[3] = &unk_1E74AB750;
    block[4] = v6;
    v14 = a3;
    dispatch_async(a2, block);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 72);
  if (!v7)
  {
    xpc_file_transfer_write_finished_cold_3(&v15, v16);
  }

  os_release(v7);
  *(a1 + 72) = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void __xpc_file_transfer_send_finished_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 32);

  _Block_release(v3);
}

uint64_t _xpc_file_transfer_create()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = _xpc_base_create(OS_xpc_file_transfer, 72);
  add_explicit = atomic_fetch_add_explicit(&_file_transfer_id_last, 1uLL, memory_order_relaxed);
  *(v0 + 24) = add_explicit + 1;
  if (add_explicit == -1)
  {
    _xpc_file_transfer_create_cold_1(&v5, v6);
  }

  v2 = v0;
  *(v0 + 32) = xpc_dictionary_create(0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

dispatch_io_t _xpc_file_transfer_create_io_for_fd(uint64_t a1, dispatch_fd_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = 0;
  if (change_fdguard_np() == -1)
  {
    _xpc_file_transfer_create_io_for_fd_cold_2(&v8, v11);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___xpc_file_transfer_create_io_for_fd_block_invoke;
  v6[3] = &__block_descriptor_tmp_15;
  v7 = a2;
  v6[4] = v10;
  result = dispatch_io_create(0, a2, global_queue, v6);
  if (!result)
  {
    _xpc_file_transfer_create_io_for_fd_cold_1(&v8, v11);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___xpc_file_transfer_create_io_for_fd_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  result = guarded_close_np();
  if (result == -1)
  {
    ___xpc_file_transfer_create_io_for_fd_block_invoke_cold_1(&v4, v5);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

char *xpc_strerror(int a1)
{
  if ((a1 - 107) > 0x39)
  {
    return strerror(a1);
  }

  else
  {
    return *(&_errors + (a1 - 106));
  }
}

int64_t launch_service_stats_enable(const char *a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "monitor_id", a1);
  xpc_dictionary_set_uint64(v4, "capacity", a2);
  object = 0;
  v5 = _xpc_bootstrap_routine(905, v4, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(v4);
  return v5;
}

int64_t launch_service_stats_disable(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "monitor_id", a1);
  object = 0;
  v3 = _xpc_bootstrap_routine(906, v2, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(v2);
  return v3;
}

BOOL launch_service_stats_is_enabled(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "monitor_id", a1);
  xdict = 0;
  if (_xpc_bootstrap_routine(903, v2, &xdict))
  {
    v3 = 0;
  }

  else
  {
    v3 = xpc_dictionary_get_BOOL(xdict, "enabled");
  }

  if (xdict)
  {
    xpc_release(xdict);
  }

  xpc_release(v2);
  return v3;
}

int64_t _launch_service_stats_copy_impl(const char *a1, unsigned int a2, uint64_t a3, int a4)
{
  xdict[10] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    _launch_service_stats_copy_impl_cold_1(&v21, xdict);
  }

  if ((a4 - 2) >= 5)
  {
    v19 = _xpc_asprintf("Unsupported service stats version %d", a4);
    _xpc_api_misuse(v19);
  }

  v6 = qword_1972A7E08[a4 - 2];
  v7 = *MEMORY[0x1E69E9AC8] + 59 * a2 - 1;
  v8 = -*MEMORY[0x1E69E9AC8];
  purgable_buffer = _xpc_allocate_purgable_buffer(v7 & v8);
  v10 = xpc_shmem_create(purgable_buffer, v7 & v8);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v11, "monitor_id", a1);
  xpc_dictionary_set_value(v11, "shmem", v10);
  xpc_release(v10);
  xdict[0] = 0;
  v12 = _xpc_bootstrap_routine(902, v11, xdict);
  if (!v12)
  {
    *(a3 + 16) = xpc_dictionary_get_uint64(xdict[0], "count");
    *(a3 + 20) = xpc_dictionary_get_uint64(xdict[0], "dropped-count");
    value = xpc_dictionary_get_value(xdict[0], "labels");
    *a3 = value;
    if (value)
    {
      xpc_retain(value);
    }

    v14 = *(a3 + 16);
    if (v14)
    {
      v15 = _xpc_alloc_typed(v6 * v14, 0xFFBF24B8uLL);
      v20 = v15;
      v16 = purgable_buffer;
      do
      {
        memcpy(v15, v16, v6);
        v16 += 59;
        v15 += v6;
        --v14;
      }

      while (v14);
      *(a3 + 8) = v20;
    }
  }

  if (xdict[0])
  {
    xpc_release(xdict[0]);
  }

  xpc_release(v11);
  _xpc_deallocate_purgable_buffer(purgable_buffer, v7 & v8);
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _xpc_service_instance_desc(_DWORD *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
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
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x200uLL, "<%s: %p> { pid = %d }", "service", a1, a1[12]);
  if (v3 >= 0x1FF)
  {
    v4 = 511;
  }

  else
  {
    v4 = v3;
  }

  result = _xpc_serializer_append(a2, __str, (v4 + 1), 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_service_instance_dispose(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  free(*(a1 + 80));
  v3 = *(a1 + 88);
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    xpc_release(v4);
  }

  free(*(a1 + 96));
  v5 = *(a1 + 72);
  if (v5)
  {
    xpc_release(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    xpc_release(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    xpc_release(v7);
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    v9 = *(a1 + 136);

    v8(v9);
  }
}

void xpc_service_instance_set_path(uint64_t a1, const char *a2)
{
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = _xpc_asprintf("Attempt to configure non-configurable service instance.");
    goto LABEL_10;
  }

  if (!*(a1 + 128))
  {
    v3 = _xpc_asprintf("Attempt to configure a service after it has been run.");
LABEL_10:
    _xpc_api_misuse(v3);
  }

  v2 = atomic_exchange_explicit((a1 + 80), _xpc_strdup(a2), memory_order_release);
  if (v2)
  {

    free(v2);
  }
}

void xpc_service_instance_set_environment(uint64_t a1, xpc_object_t object)
{
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = _xpc_asprintf("Attempt to configure non-configurable service instance.", object);
    goto LABEL_10;
  }

  if (!*(a1 + 128))
  {
    v3 = _xpc_asprintf("Attempt to configure a service after it has been run.", object);
LABEL_10:
    _xpc_api_misuse(v3);
  }

  v2 = atomic_exchange_explicit((a1 + 64), xpc_retain(object), memory_order_release);
  if (v2)
  {

    xpc_release(v2);
  }
}

void xpc_service_instance_dup2(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = _xpc_asprintf("Attempt to configure non-configurable service instance.");
    goto LABEL_6;
  }

  if (!*(a1 + 128))
  {
    v3 = _xpc_asprintf("Attempt to configure a service after it has been run.");
LABEL_6:
    _xpc_api_misuse(v3);
  }

  v4 = a1;
  v5 = a2;
  v6 = a3;
  dispatch_sync_f(*(a1 + 40), &v4, _xpc_service_instance_dup2_insert);
}

void _xpc_service_instance_dup2_insert(_DWORD *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(*a1 + 72);
  if (!v4)
  {
    v4 = xpc_array_create(0, 0);
    *(v1 + 72) = v4;
  }

  xpc_array_set_fd(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
  v5 = *(v1 + 72);

  xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, v3);
}

void xpc_service_instance_set_cwd(uint64_t a1, const char *a2)
{
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = _xpc_asprintf("Attempt to configure non-configurable service instance.");
    goto LABEL_10;
  }

  if (!*(a1 + 128))
  {
    v3 = _xpc_asprintf("Attempt to configure a service after it has been run.");
LABEL_10:
    _xpc_api_misuse(v3);
  }

  v2 = atomic_exchange_explicit((a1 + 96), _xpc_strdup(a2), memory_order_release);
  if (v2)
  {

    free(v2);
  }
}

void xpc_service_instance_set_endpoint(uint64_t a1, xpc_object_t object)
{
  if ((*(a1 + 57) & 1) == 0)
  {
    v3 = _xpc_asprintf("Attempt to configure non-configurable service instance.", object);
    goto LABEL_10;
  }

  if (!*(a1 + 128))
  {
    v3 = _xpc_asprintf("Attempt to configure a service after it has been run.", object);
LABEL_10:
    _xpc_api_misuse(v3);
  }

  if (atomic_exchange_explicit((a1 + 104), xpc_retain(object), memory_order_release))
  {

    xpc_release(object);
  }
}

_DWORD *xpc_service_instance_set_jetsam_properties(_DWORD *result, int a2, int a3, int a4)
{
  result[28] = a2;
  result[29] = a3;
  if (!a4)
  {
    a4 = -1;
    goto LABEL_5;
  }

  if (a4 >= 1)
  {
LABEL_5:
    result[30] = a4;
  }

  return result;
}

uint64_t xpc_service_instance_set_context(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 144);
  if (v4)
  {
    result = v4(a2);
  }

  *(v3 + 136) = a2;
  return result;
}

void xpc_service_instance_run(uint64_t a1)
{
  if ((*(a1 + 57) & 1) == 0)
  {
    v16 = _xpc_asprintf("This SPI may not be called on non-configurable services.");
    _xpc_api_misuse(v16);
  }

  __swp(v6, (a1 + 80));
  __swp(v5, (a1 + 64));
  __swp(v4, (a1 + 96));
  __swp(v3, (a1 + 72));
  __swp(v2, (a1 + 104));
  __swp(v8, (a1 + 112));
  __swp(v1, (a1 + 116));
  __swp(v7, (a1 + 120));
  if (v6)
  {
    xpc_dictionary_set_string(*(a1 + 128), "program", v6);
    free(v6);
  }

  if (*(a1 + 56) == 1)
  {
    xpc_dictionary_set_BOOL(*(a1 + 128), "suspended", 1);
  }

  v10 = *(a1 + 28);
  if (v10)
  {
    xpc_dictionary_set_uint64(*(a1 + 128), "binpref", v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    xpc_dictionary_set_uint64(*(a1 + 128), "archpref", v11);
  }

  if (v5)
  {
    xpc_dictionary_set_value(*(a1 + 128), "environment", v5);
    xpc_release(v5);
  }

  if (v4)
  {
    xpc_dictionary_set_string(*(a1 + 128), "cwd", v4);
    free(v4);
  }

  if (v3)
  {
    xpc_dictionary_set_value(*(a1 + 128), "fds", v3);
    xpc_release(v3);
  }

  if (v2)
  {
    listener_port = _xpc_endpoint_get_listener_port(v2);
    xpc_dictionary_set_mach_send(*(a1 + 128), "endpoint", listener_port);
  }

  if (v8)
  {
    xpc_dictionary_set_int64(*(a1 + 128), "jetsam-flags", v8);
  }

  if ((v1 & 0x80000000) == 0)
  {
    xpc_dictionary_set_int64(*(a1 + 128), "jetsam-priority", v1);
  }

  if (v7)
  {
    xpc_dictionary_set_int64(*(a1 + 128), "jetsam-memlimit", v7);
  }

  if (*(a1 + 58) == 1)
  {
    xpc_dictionary_set_BOOL(*(a1 + 128), "checked-allocations", 1);
  }

  object = 0;
  v13 = _xpc_service_routine(705, *(a1 + 128), &object);
  if (v13)
  {
    v14 = v13;
    v15 = xpc_strerror(v13);
    syslog(3, "Could not configure service: %d: %s", v14, v15);
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(*(a1 + 128));
  *(a1 + 128) = 0;
}

uint64_t _xpc_service_desc(const char *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
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
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x200uLL, "<%s: %p> { name = %s }", "service", a1, a1 + 76);
  if (v3 >= 0x1FF)
  {
    v4 = 511;
  }

  else
  {
    v4 = v3;
  }

  result = _xpc_serializer_append(a2, __str, (v4 + 1), 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_service_dispose(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  dispatch_release(*(a1 + 24));
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  _Block_release(v3);
}

void _xpc_service_last_xref_cancel(uint64_t a1)
{
  request = _xpc_service_create_request(a1);
  object = 0;
  if (!_xpc_service_routine(706, request, &object))
  {
    xpc_release(object);
  }

  xpc_release(request);
  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_source_cancel(v3);
  }
}

uint64_t xpc_service_create(int a1, char *__s, uint64_t a3, NSObject *a4)
{
  result = _xpc_service_create_internal(__s, a4);
  if (a1 == 1)
  {
    v7 = 5;
  }

  else
  {
    v7 = 6;
  }

  *(result + 48) = a1;
  *(result + 52) = v7;
  *(result + 40) = a3;
  return result;
}

uint64_t _xpc_service_create_internal(char *__s, NSObject *global_queue)
{
  v10 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    v4 = strlen(__s) + 57;
  }

  else
  {
    v4 = 93;
  }

  v5 = _xpc_base_create(OS_xpc_service, v4);
  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  *(v5 + 24) = global_queue;
  dispatch_retain(global_queue);
  if (__s)
  {
    strcpy((v5 + 76), __s);
  }

  else
  {
    *uu = 0;
    v9 = 0;
    MEMORY[0x19A8DD7E0](uu);
    uuid_unparse(uu, (v5 + 76));
  }

  *(v5 + 56) = 0;
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t xpc_service_create_from_specifier(const char *a1, NSObject *a2)
{
  v14 = 0;
  __s = 0;
  v13 = 0;
  internal = 0;
  v11 = _xpc_parse_service_specifier(a1, &v14, &v13, &__s);
  if (!v11)
  {
    v4 = __s;
    if (__s)
    {
      v5 = v14;
      foreground_uid = v13;
      if (v14 == 2 && v13 == 4294967294)
      {
        if (!xpc_user_sessions_enabled())
        {
          syslog(3, "user/foreground/ specifier is not supported on this platform");
          return 0;
        }

        foreground_uid = xpc_user_sessions_get_foreground_uid(&v11);
        v8 = v11;
        if (v11)
        {
          v9 = xpc_strerror(v11);
          syslog(3, "xpc_user_sessions_get_foreground_uid() failed with error: %d - %s", v8, v9);
        }
      }

      internal = _xpc_service_create_internal(v4, a2);
      free(v4);
      *(internal + 48) = 3;
      *(internal + 52) = v5;
      *(internal + 40) = foreground_uid;
    }
  }

  return internal;
}

uint64_t _xpc_parse_service_specifier(const char *a1, int *a2, unint64_t *a3, char **a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = _xpc_strdup(a1);
  v8 = 0;
  v21 = v7;
  __s1 = 0;
  __str = 0;
  v25[0] = 0;
  p_str = &__str;
  do
  {
    v10 = strsep(&v21, "/");
    if (!v10)
    {
      break;
    }

    (&__s1)[v8++] = v10;
  }

  while (v8 != 3);
  v11 = __s1;
  if (!__s1)
  {
    goto LABEL_24;
  }

  if (!strcmp(__s1, "system"))
  {
    v16 = 0;
    v13 = 1;
    goto LABEL_21;
  }

  if (strcmp(v11, "user"))
  {
    v12 = strcmp(v11, "pid");
    if (v12)
    {
      v13 = 9;
    }

    else
    {
      v13 = 5;
    }

    v14 = 140;
    if (v12)
    {
      goto LABEL_27;
    }

    v15 = __str;
    if (!__str)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v15 = __str;
  if (!__str)
  {
    goto LABEL_24;
  }

  v13 = 2;
  if (!_xpc_equal_strings(__str, "foreground"))
  {
LABEL_17:
    __endptr = 0;
    v16 = strtol(v15, &__endptr, 10);
    if (__endptr && !*__endptr && v16 < 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

LABEL_24:
    v14 = 140;
    goto LABEL_27;
  }

  v16 = 4294967294;
LABEL_20:
  p_str = v25;
LABEL_21:
  v17 = *p_str;
  *a2 = v13;
  *a3 = v16;
  if (v17 && *v17)
  {
    v18 = strdup(v17);
  }

  else
  {
    v18 = 0;
  }

  v14 = 0;
  *a4 = v18;
LABEL_27:
  free(v7);
  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

void xpc_service_set_attach_handler(mach_port_context_t a1, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    os_unfair_lock_lock((a1 + 56));
    if (!*(a1 + 72))
    {
      v4 = _xpc_mach_port_allocate(0x33u, 6u, a1);
      *(a1 + 72) = v4;
      v5 = dispatch_source_create(MEMORY[0x1E69E96D8], v4, 0, *(a1 + 24));
      *(a1 + 64) = v5;
      v6 = _xpc_retain(a1);
      dispatch_set_context(v5, v6);
      dispatch_source_set_event_handler_f(*(a1 + 64), _xpc_service_attach_event);
      v7 = *(a1 + 64);
      dispatch_source_set_mandatory_cancel_handler_f();
      dispatch_activate(*(a1 + 64));
    }

    os_unfair_lock_unlock((a1 + 56));
    v8 = _xpc_Block_copy_impl(a2);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v13 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 32), &v13, v9, memory_order_release, memory_order_relaxed);
    if (!v13)
    {
      request = _xpc_service_create_request(a1);
      xpc_dictionary_set_mach_send(request, "port", *(a1 + 72));
      v23 = 0;
      if (_xpc_mach_port_make_send_once(*(a1 + 72), &v23) || (v23 - 1) >= 0xFFFFFFFE)
      {
        xpc_service_set_attach_handler_cold_1(&v22, v24);
      }

      v15 = xpc_mach_send_once_create(v23);
      xpc_dictionary_set_value(request, "service-ctl-reply-port", v15);
      v16 = _xpc_event_routine_async(704, request, 0);
      if (v16)
      {
        v17 = v16;
        v18 = xpc_copy_description(a1);
        v19 = xpc_strerror(v17);
        syslog(3, "Could not attach to service: %d: %s:\n%s", v17, v19, v18);
        free(v18);
      }

      xpc_release(request);
      v20 = *MEMORY[0x1E69E9840];
      return;
    }

    v21 = _xpc_asprintf("Attempt to reset attach handler.");
LABEL_20:
    _xpc_api_misuse(v21);
  }

  v10 = atomic_exchange_explicit((a1 + 32), 0, memory_order_release);
  if (!v10)
  {
    v21 = _xpc_asprintf("Attach handler is already NULL.");
    goto LABEL_20;
  }

  _Block_release(v10);
  v11 = *(a1 + 64);
  v12 = *MEMORY[0x1E69E9840];

  dispatch_source_cancel(v11);
}

xpc_object_t _xpc_service_create_request(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", *(a1 + 52));
  xpc_dictionary_set_uint64(v2, "handle", *(a1 + 40));
  xpc_dictionary_set_string(v2, "name", (a1 + 76));
  xpc_dictionary_set_BOOL(v2, "unidomain", 1);
  return v2;
}

int64_t xpc_service_kickstart(uint64_t a1, char a2, int a3)
{
  if (a3)
  {
    a2 |= 2u;
  }

  return xpc_service_kickstart_with_flags(a1, a2);
}

int64_t xpc_service_kickstart_with_flags(uint64_t a1, char a2)
{
  request = _xpc_service_create_request(a1);
  xpc_dictionary_set_BOOL(request, "suspended", a2 & 1);
  xpc_dictionary_set_BOOL(request, "kill", (a2 & 2) != 0);
  xpc_dictionary_set_BOOL(request, "unthrottle", 1);
  object = 0;
  v4 = _xpc_service_routine(702, request, &object);
  v5 = v4;
  if (v4)
  {
    v6 = xpc_strerror(v4);
    syslog(3, "Could not kickstart service: %d: %s", v5, v6);
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(request);
  return v5;
}

int64_t xpc_service_attach(uint64_t a1, char a2, int a3)
{
  if (a3)
  {
    a2 |= 2u;
  }

  return xpc_service_attach_with_flags(a1, a2);
}

int64_t xpc_service_attach_with_flags(uint64_t a1, char a2)
{
  request = _xpc_service_create_request(a1);
  xpc_dictionary_set_BOOL(request, "run", a2 & 1);
  xpc_dictionary_set_BOOL(request, "kill", (a2 & 2) != 0);
  object = 0;
  v4 = _xpc_service_routine(703, request, &object);
  v5 = v4;
  if (v4)
  {
    v6 = xpc_strerror(v4);
    syslog(3, "Could not attach service: %d: %s", v5, v6);
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(request);
  return v5;
}

char *xpc_get_service_name_from_pid(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v2, "pid", a1);
  xdict = 0;
  v3 = _xpc_service_routine(725, v2, &xdict);
  xpc_release(v2);
  v4 = 0;
  if (!v3)
  {
    string = xpc_dictionary_get_string(xdict, "service-name");
    if (string)
    {
      v4 = strdup(string);
    }

    else
    {
      v4 = 0;
    }

    xpc_release(xdict);
  }

  return v4;
}

void _xpc_service_attach_event(uint64_t a1)
{
  xdict = 0;
  int64 = xpc_pipe_receive(*(a1 + 72), &xdict, 0);
  if (int64 || (int64 = xpc_dictionary_get_int64(xdict, "error")) != 0)
  {
    if (xdict)
    {
      xpc_release(xdict);
    }

    v3 = xpc_strerror(int64);
    syslog(3, "Could not attach to service: %d: %s", int64, v3);
    return;
  }

  v4 = xpc_dictionary_get_int64(xdict, "pid");
  v5 = xpc_dictionary_get_int64(xdict, "hostpid");
  v6 = xpc_dictionary_get_BOOL(xdict, "configurable");
  if (*(a1 + 40) || *(a1 + 48) != 1)
  {
    if (!v6)
    {
      request = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }

    *(a1 + 40) = v5;
  }

  request = _xpc_service_create_request(a1);
  xpc_dictionary_set_int64(request, "pid", v4);
LABEL_14:
  v8 = *(a1 + 48);
  v9 = _xpc_base_create(OS_xpc_service_instance, 128);
  *(v9 + 48) = v4;
  *(v9 + 52) = v5;
  *(v9 + 24) = v8;
  *(v9 + 112) = 0xFFFFFFFF00000000;
  *(v9 + 120) = 0;
  if (request)
  {
    *(v9 + 128) = xpc_retain(request);
    *(v9 + 57) = 1;
  }

  *(v9 + 40) = dispatch_queue_create("com.apple.xpc.service-instance", 0);
  (*(*(a1 + 32) + 16))(*(a1 + 32), v9);
  xpc_release(v9);
  if (request)
  {
    xpc_release(request);
  }

  xpc_release(xdict);
}

uint64_t _xpc_service_attach_cancel(mach_port_context_t guard)
{
  if (_xpc_mach_port_close_recv(*(guard + 72), -1, guard))
  {
    _os_assumes_log();
  }

  return _xpc_release(guard);
}

uint64_t _xpc_activity_desc(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x80uLL, "<%s: %s>", "activity", *(a1 + 24));
  if (v3 >= 0x7F)
  {
    v4 = 127;
  }

  else
  {
    v4 = v3;
  }

  result = _xpc_serializer_append(a2, __str, (v4 + 1), 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_activity_debug_desc(const char **a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x80uLL, "<%s: %p>: %s", "activity", a1, a1[3]);
  if (v3 >= 0x7F)
  {
    v4 = 127;
  }

  else
  {
    v4 = v3;
  }

  result = _xpc_serializer_append(a2, __str, (v4 + 1), 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_activity_dispose(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v2 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 96);
    if (*(a1 + 136))
    {
      v5 = "(is running)";
    }

    else
    {
      v5 = "(not running)";
    }

    *buf = 136446978;
    v14 = v3;
    v15 = 2048;
    v16 = a1;
    v17 = 2048;
    v18 = v4;
    v19 = 2082;
    v20 = v5;
    _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispose: %{public}s (%p) seqno: %llu, %{public}s", buf, 0x2Au);
  }

  _xpc_activity_end_running(a1);
  free(*(a1 + 24));
  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 48);
    _Block_release(v7);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    xpc_connection_cancel(v9);
    xpc_release(*(a1 + 80));
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    xpc_release(v10);
  }

  if (*(a1 + 56))
  {
    _xpc_activity_dispose_cold_2(&v12, buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void xpc_activity_register(const char *identifier, xpc_object_t criteria, xpc_activity_handler_t handler)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v6 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "dictionary";
    if (criteria == &_xpc_activity_check_in)
    {
      v7 = "check-in";
    }

    *buf = 136446466;
    *&buf[4] = identifier;
    v15 = 2082;
    v16 = v7;
    _os_log_impl(&dword_197263000, v6, OS_LOG_TYPE_DEFAULT, "xpc_activity_register: %{public}s, criteria: %{public}s", buf, 0x16u);
  }

  if (_xpc_activity_once != -1)
  {
    xpc_activity_register_cold_2();
  }

  *buf = 0;
  v8 = _xpc_base_create(OS_xpc_activity, 120);
  *(v8 + 3) = strdup(identifier);
  asprintf(buf, "com.apple.xpc.activity.%s", identifier);
  dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_attr_make_with_overcommit();
  *(v8 + 5) = dispatch_queue_create_with_target_V2(*buf, v9, 0);
  free(*buf);
  v10 = _Block_copy(handler);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 6) = v11;
  *(v8 + 7) = 0;
  if (criteria == &_xpc_activity_check_in)
  {
    *(v8 + 4) = &_xpc_activity_check_in;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __xpc_activity_register_block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = v8;
  dispatch_sync(_xpc_activity_queue, block);
  xpc_activity_set_criteria(v8, criteria);
  xpc_release(v8);
  v12 = *MEMORY[0x1E69E9840];
}

xpc_object_t __xpc_activity_register_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  registration = _xpc_activity_find_registration(*(v2 + 24));
  v4 = registration;
  if (registration[2] == -1)
  {
    registration[2] = 0;
  }

  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v5 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v2 + 24);
    v7 = v4[2];
    v13 = 136446722;
    v14 = v6;
    v15 = 2048;
    v16 = v2;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, "_xpc_activity_register: %{public}s (%p), %llu", &v13, 0x20u);
  }

  v10 = v4[3];
  v9 = v4 + 3;
  v8 = v10;
  *(v2 + 120) = v10;
  if (v10)
  {
    *(v8 + 128) = v2 + 120;
  }

  *v9 = v2;
  *(v2 + 128) = v9;
  *(v2 + 136) |= 8u;
  result = xpc_retain(*(a1 + 32));
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t xpc_activity_copy_criteria(xpc_activity_t activity)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __xpc_activity_copy_criteria_block_invoke;
  v3[3] = &unk_1E74ABBA8;
  v3[4] = &v4;
  v3[5] = activity;
  dispatch_sync(_xpc_activity_queue, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __xpc_activity_copy_criteria_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 32);
  if (v2)
  {
    v3 = v2 == &_xpc_activity_check_in;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_copy(v2);
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (v4)
    {

      xpc_dictionary_set_value(v4, "_SequenceNumber", 0);
    }
  }
}

void _xpc_activity_normalize_critiera(void *a1)
{
  if (a1)
  {
    _xpc_activity_normalize_integer(a1, "Delay");
    _xpc_activity_normalize_integer(a1, "RandomInitialDelay");
    _xpc_activity_normalize_integer(a1, "GracePeriod");

    _xpc_activity_normalize_integer(a1, "Interval");
  }
}

void __xpc_activity_set_criteria_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v2 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    if (*(a1 + 40) == &_xpc_activity_check_in)
    {
      v5 = "check-in";
    }

    else
    {
      v5 = "dict";
    }

    *buf = 136446722;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    *&buf[22] = 2082;
    v29 = v5;
    _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria, lower half: %{public}s (%p), %{public}s", buf, 0x20u);
  }

  v6 = *(a1 + 40);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __xpc_activity_set_criteria_block_invoke_70;
  block[3] = &unk_1E74ABBD0;
  block[6] = *(a1 + 32);
  block[7] = v6;
  block[4] = buf;
  block[5] = &v18;
  dispatch_sync(_xpc_activity_queue, block);
  if (_activity_log_pred != -1)
  {
    __xpc_activity_set_criteria_block_invoke_cold_2();
  }

  v7 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *v22 = 136446722;
    v23 = v9;
    v24 = 2048;
    v25 = v8;
    v26 = 2048;
    v27 = v6 != &_xpc_activity_check_in;
    _os_log_impl(&dword_197263000, v7, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria: %{public}s (%p), setting state now to %ld", v22, 0x20u);
  }

  _xpc_activity_set_state_with_completion_status(*(a1 + 32), v6 != &_xpc_activity_check_in, 0);
  if (*(*&buf[8] + 24))
  {
    if (_activity_log_pred != -1)
    {
      __xpc_activity_set_criteria_block_invoke_cold_2();
    }

    v10 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 24);
      uint64 = xpc_dictionary_get_uint64(*(*&buf[8] + 24), "_SequenceNumber");
      *v22 = 136446722;
      v23 = v12;
      v24 = 2048;
      v25 = v11;
      v26 = 2048;
      v27 = uint64;
      _os_log_impl(&dword_197263000, v10, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria: %{public}s (%p), there is a pending event, which contained seqno %llu. If next state is CHECK_IN, it will be dispatched. If next state is WAIT, it will be dropped.", v22, 0x20u);
    }

    if (v6 == &_xpc_activity_check_in)
    {
      global_queue = dispatch_get_global_queue(9, 0);
      xpc_retain(*(*&buf[8] + 24));
      os_retain(v19[3]);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __xpc_activity_set_criteria_block_invoke_72;
      v16[3] = &unk_1E74ABBF8;
      v16[4] = buf;
      v16[5] = &v18;
      dispatch_async(global_queue, v16);
    }

    xpc_release(*(*&buf[8] + 24));
  }

  os_release(v19[3]);
  xpc_release(*(a1 + 32));
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __xpc_activity_set_criteria_block_invoke_70(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((*(v2 + 136) & 8) != 0)
  {
    registration = _xpc_activity_find_registration(*(v2 + 24));
    _xpc_activity_set_criteria(registration, *(a1 + 48), *(a1 + 56));
    v8 = registration[6];
    if (v8 || registration[7])
    {
      if (v8 >= registration[2])
      {
        if (_activity_log_pred != -1)
        {
          _xpc_activity_dispose_cold_1();
        }

        v9 = _activity_log__log;
        if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 48);
          v11 = *(v10 + 24);
          v12 = registration[6];
          v13 = registration[2];
          v21 = 136446978;
          v22 = v11;
          v23 = 2048;
          v24 = v10;
          v25 = 2048;
          v26 = v12;
          v27 = 2048;
          v28 = v13;
          _os_log_impl(&dword_197263000, v9, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria: %{public}s (%p): registration->pending_seqno %llu >= registration->seqno %llu; creating a pending event", &v21, 0x2Au);
        }

        *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(*(*(*(a1 + 32) + 8) + 24), "XPCEventName", *registration);
        xpc_dictionary_set_uint64(*(*(*(a1 + 32) + 8) + 24), "_SequenceNumber", registration[6]);
        v14 = registration[7];
        if (v14)
        {
          xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 24), "_ReplyEndpoint", v14);
        }

        *(*(*(a1 + 40) + 8) + 24) = registration[8];
        registration[8] = 0;
      }

      if (_activity_log_pred != -1)
      {
        __xpc_activity_set_criteria_block_invoke_cold_2();
      }

      v15 = _activity_log__log;
      if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        v17 = *(v16 + 24);
        v18 = registration[6];
        v21 = 136446722;
        v22 = v17;
        v23 = 2048;
        v24 = v16;
        v25 = 2048;
        v26 = v18;
        _os_log_impl(&dword_197263000, v15, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria: %{public}s (%p): clearing pending seqno %llu, endpoint, transaction", &v21, 0x20u);
      }

      registration[6] = 0;
      v19 = registration[7];
      if (v19)
      {
        xpc_release(v19);
        registration[7] = 0;
      }

      os_release(registration[8]);
      registration[8] = 0;
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (v3 != &_xpc_activity_check_in)
    {
      xpc_release(v3);
    }

    if (_activity_log_pred != -1)
    {
      _xpc_activity_dispose_cold_1();
    }

    v4 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(v5 + 24);
      v21 = 136446466;
      v22 = v6;
      v23 = 2048;
      v24 = v5;
      _os_log_impl(&dword_197263000, v4, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria: %{public}s (%p): early return", &v21, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void *_xpc_activity_find_registration(const char *a1)
{
  registration = __xpc_activity_find_registration(a1);
  if (!registration)
  {
    registration = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040881EC984uLL);
    *registration = strdup(a1);
    registration[3] = 0;
    v3 = _xpc_activity_list;
    registration[4] = _xpc_activity_list;
    if (v3)
    {
      *(v3 + 40) = registration + 4;
    }

    _xpc_activity_list = registration;
    registration[5] = &_xpc_activity_list;
  }

  return registration;
}

xpc_object_t _xpc_activity_set_criteria(uint64_t a1, uint64_t a2, __objc2_class **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v6 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 24);
    v8 = "dict";
    *buf = 136446722;
    if (a3 == &_xpc_activity_check_in)
    {
      v8 = "check-in";
    }

    v33 = v7;
    v34 = 2048;
    v35 = a2;
    v36 = 2082;
    v37 = v8;
    _os_log_impl(&dword_197263000, v6, OS_LOG_TYPE_DEFAULT, "_xpc_activity_set_criteria: %{public}s (%p), %{public}s", buf, 0x20u);
  }

  dispatch_assert_queue_V2(_xpc_activity_queue);
  v9 = *(a1 + 8);
  if (v9)
  {
    xpc_release(v9);
  }

  if (a3 == &_xpc_activity_check_in)
  {
    if (*(MEMORY[0x1E69E99F0] + 16) == -1)
    {
      v16 = *(MEMORY[0x1E69E99F0] + 24);
    }

    else
    {
      v16 = _os_alloc_once();
    }

    if (*(v16 + 3))
    {
      v17 = xpc_copy_event("com.apple.xpc.activity", *a1);
      *(a1 + 8) = v17;
      if (v17)
      {
        *(a1 + 16) = xpc_dictionary_get_uint64(v17, "_SequenceNumber");
        _xpc_activity_normalize_critiera(*(a1 + 8));
        goto LABEL_30;
      }
    }

    else
    {
      *(a1 + 8) = 0;
    }

    *(a1 + 16) = 1;
    goto LABEL_30;
  }

  v10 = *(a1 + 16) + 1;
  *(a1 + 8) = a3;
  *(a1 + 16) = v10;
  xpc_dictionary_set_uint64(a3, "_SequenceNumber", v10);
  v11 = MEMORY[0x1E69E99F0];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v12 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v12 = _os_alloc_once();
  }

  if (*(v12 + 3))
  {
    if (_activity_log_pred != -1)
    {
      __xpc_activity_set_criteria_block_invoke_cold_2();
    }

    v13 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a1;
      v15 = *(a1 + 16);
      *buf = 136446466;
      v33 = v14;
      v34 = 2048;
      v35 = v15;
      _os_log_impl(&dword_197263000, v13, OS_LOG_TYPE_DEFAULT, "_xpc_activity_set_criteria: xpc_set_event %{public}s, %llu", buf, 0x16u);
    }

    xpc_set_event("com.apple.xpc.activity", *a1, *(a1 + 8));
  }

  else
  {
    v18 = *(a2 + 80);
    if (v18 && (xpc_release(v18), *(v11 + 16) != -1))
    {
      v19 = _os_alloc_once();
    }

    else
    {
      v19 = *(v11 + 24);
    }

    if (*(v19 + 3) == 1)
    {
      _xpc_activity_set_criteria_cold_2(&v31, buf);
    }

    global_queue = dispatch_get_global_queue(9, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.xpc.activity.unmanaged", global_queue, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___xpc_activity_new_unmanaged_connection_block_invoke;
    handler[3] = &__block_descriptor_tmp_111;
    handler[4] = mach_service;
    handler[5] = a2;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    v22 = *(a2 + 88) + 1;
    *(a2 + 80) = mach_service;
    *(a2 + 88) = v22;
    v23 = xpc_copy(*(a1 + 8));
    xpc_dictionary_set_string(v23, "name", *a1);
    xpc_connection_send_message(*(a2 + 80), v23);
    xpc_release(v23);
  }

LABEL_30:
  v24 = *(a2 + 32);
  if (v24 && v24 != &_xpc_activity_check_in)
  {
    xpc_release(v24);
  }

  result = *(a1 + 8);
  if (!result)
  {
    *(a2 + 32) = 0;
    v28 = *(a2 + 136) & 0xFB;
LABEL_40:
    *(a2 + 136) = v28;
    goto LABEL_41;
  }

  v26 = xpc_retain(result);
  *(a2 + 32) = v26;
  *(a2 + 136) = *(a2 + 136) & 0xFB | (4 * (xpc_dictionary_get_int64(v26, "Interval") != 0));
  result = xpc_dictionary_get_value(*(a2 + 32), "Repeating");
  if (result)
  {
    result = xpc_BOOL_get_value(result);
    if (result)
    {
      v27 = 4;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a2 + 136) & 0xFB | v27;
    goto LABEL_40;
  }

LABEL_41:
  *(a2 + 96) = *(a1 + 16);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void __xpc_activity_set_criteria_block_invoke_72(uint64_t a1)
{
  _xpc_activity_dispatch(*(*(*(a1 + 32) + 8) + 24), 0);
  xpc_release(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);

  os_release(v2);
}

void _xpc_activity_dispatch(xpc_object_t xdict, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v4 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  v5 = *(v4 + 3);
  if ((v5 & 1) == 0)
  {
    string = xpc_dictionary_get_string(xdict, "name");
    if (!strcmp(string, "com.apple.xpc.activity.control"))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      return;
    }

LABEL_9:
    v8 = os_transaction_create(string);
    uint64 = xpc_dictionary_get_uint64(xdict, "_SequenceNumber");
    if (_activity_log_pred != -1)
    {
      dispatch_once(&_activity_log_pred, &__block_literal_global_9);
    }

    v10 = v5 ^ 1;
    v11 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = string;
      *&buf[12] = 2048;
      *&buf[14] = uint64;
      _os_log_impl(&dword_197263000, v11, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: beginning dispatch, activity name %{public}s, seqno %llu", buf, 0x16u);
    }

    if (v5)
    {
      value = xpc_dictionary_get_value(xdict, "_ReplyEndpoint");
    }

    else
    {
      value = 0;
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___xpc_activity_dispatch_block_invoke;
    block[3] = &unk_1E74ABE60;
    v23 = v5 ^ 1;
    block[6] = uint64;
    block[7] = a2;
    block[4] = &v25;
    block[5] = string;
    block[8] = v8;
    block[9] = value;
    dispatch_sync(_xpc_activity_queue, block);
    if (!v26[3])
    {
      goto LABEL_33;
    }

    if (value)
    {
      xpc_retain(value);
    }

    if (xdict)
    {
      xpc_retain(xdict);
    }

    if (a2)
    {
      if (v5)
      {
        v21 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24[0] = 134217984;
        *&v24[1] = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else if (xdict)
      {
        xpc_retain(a2);
        v13 = xpc_dictionary_get_value(xdict, "eligible");
        if (v13)
        {
          _xpc_activity_set_eligible(v26[3], v13 == &_xpc_BOOL_true);
        }

        goto LABEL_26;
      }

      v21 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(buf, 0, sizeof(buf));
      xdict = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v24[0] = 134217984;
      *&v24[1] = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_37;
    }

LABEL_26:
    v5 = v26[3];
    if (*(v5 + 136))
    {
LABEL_32:
      v17 = *(v26[3] + 40);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___xpc_activity_dispatch_block_invoke_115;
      v19[3] = &unk_1E74ABEA8;
      v19[4] = &v25;
      v19[5] = uint64;
      v20 = v10;
      v19[6] = value;
      v19[7] = a2;
      v19[8] = xdict;
      dispatch_async(v17, v19);
LABEL_33:
      os_release(v8);
      _Block_object_dispose(&v25, 8);
      v18 = *MEMORY[0x1E69E9840];
      return;
    }

    *(v5 + 136) |= 1u;
    if (*(v5 + 112))
    {
      _os_assumes_log();
    }

    *(v5 + 112) = os_retain(v8);
    if (_activity_log_pred == -1)
    {
LABEL_30:
      v14 = _activity_log__log;
      if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v5 + 24);
        v16 = *(v5 + 96);
        *buf = 136446722;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v5;
        *&buf[22] = 2048;
        *&buf[24] = v16;
        _os_log_impl(&dword_197263000, v14, OS_LOG_TYPE_DEFAULT, "_xpc_activity_begin_running: %{public}s (%p) seqno: %llu.", buf, 0x20u);
      }

      goto LABEL_32;
    }

LABEL_37:
    dispatch_once(&_activity_log_pred, &__block_literal_global_9);
    goto LABEL_30;
  }

  string = xpc_dictionary_get_string(xdict, "XPCEventName");
  if (strcmp(string, "com.apple.xpc.activity.control"))
  {
    goto LABEL_9;
  }

  v7 = *MEMORY[0x1E69E9840];

  _xpc_activity_setup_control_channel(xdict);
}

xpc_activity_state_t xpc_activity_get_state(xpc_activity_t activity)
{
  result = *(activity + 9);
  if (!result)
  {
    return *(activity + 8);
  }

  return result;
}

char *xpc_activity_copy_identifier(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return strdup(result);
  }

  return result;
}

void *xpc_activity_add_eligibility_changed_handler(void *a1, const void *a2)
{
  dispatch_assert_queue_not_V2(_xpc_activity_queue);
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0xA0040A3F8AD00uLL);
  *v4 = xpc_retain(a1);
  v5 = _Block_copy(a2);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v4[1] = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __xpc_activity_add_eligibility_changed_handler_block_invoke;
  block[3] = &__block_descriptor_tmp_75;
  block[4] = v4;
  block[5] = a1;
  dispatch_sync(_xpc_activity_queue, block);
  xpc_retain(a1);
  v8 = _Block_copy(v6);
  v9 = a1[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __xpc_activity_add_eligibility_changed_handler_block_invoke_2;
  v11[3] = &unk_1E74ABC60;
  v11[4] = v8;
  v11[5] = a1;
  dispatch_async(v9, v11);
  return v4;
}

uint64_t __xpc_activity_add_eligibility_changed_handler_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 56);
  *(*(result + 32) + 16) = v1;
  if (v1)
  {
    *(*(*(result + 40) + 56) + 24) = *(result + 32) + 16;
  }

  v2 = *(result + 32);
  *(*(result + 40) + 56) = v2;
  *(v2 + 24) = *(result + 40) + 56;
  return result;
}

void __xpc_activity_add_eligibility_changed_handler_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v3 = *(a1 + 40);

  xpc_release(v3);
}

void xpc_activity_remove_eligibility_changed_handler(uint64_t a1)
{
  dispatch_assert_queue_not_V2(_xpc_activity_queue);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __xpc_activity_remove_eligibility_changed_handler_block_invoke;
  block[3] = &__block_descriptor_tmp_77_0;
  block[4] = a1;
  dispatch_sync(_xpc_activity_queue, block);
  xpc_release(*a1);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = 0;
  }

  _Block_release(v2);
  free(a1);
}

uint64_t __xpc_activity_remove_eligibility_changed_handler_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v2 + 24) = *(v1 + 24);
    v1 = *(result + 32);
    v2 = *(v1 + 16);
  }

  **(v1 + 24) = v2;
  *(*(result + 32) + 16) = -1;
  *(*(result + 32) + 24) = -1;
  return result;
}

uint64_t xpc_activity_should_be_data_budgeted(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __xpc_activity_should_be_data_budgeted_block_invoke;
  v3[3] = &unk_1E74ABCA8;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(_xpc_activity_queue, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void *__xpc_activity_should_be_data_budgeted_block_invoke(uint64_t a1)
{
  result = xpc_dictionary_get_string(*(*(a1 + 40) + 32), "Priority");
  if (result && (result = strncmp(result, "Maintenance", 0xBuLL), result))
  {
    result = xpc_dictionary_get_value(*(*(a1 + 40) + 32), "DataBudgeting");
    if (result)
    {
      result = xpc_BOOL_get_value(result);
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t xpc_activity_set_state_with_completion_status(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 5 && a3)
  {
    return 0;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
    v3 = *(a1 + 64);
  }

  if (v3 == 4)
  {
    if (a2 != 5 && a2 != 3)
    {
      return 0;
    }

LABEL_11:
    _xpc_activity_set_state_with_completion_status(a1, a2, a3);
    return 1;
  }

  if (v3 == 2 && (a2 - 3) < 3)
  {
    goto LABEL_11;
  }

  return 0;
}

void xpc_activity_unregister(const char *identifier)
{
  if (_xpc_activity_once != -1)
  {
    xpc_activity_unregister_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __xpc_activity_unregister_block_invoke;
  block[3] = &__block_descriptor_tmp_79;
  block[4] = identifier;
  dispatch_sync(_xpc_activity_queue, block);
}

BOOL __xpc_activity_unregister_block_invoke(uint64_t a1)
{
  registration = _xpc_activity_find_registration(*(a1 + 32));

  return _xpc_activity_unregister(registration, 0);
}

BOOL _xpc_activity_unregister(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    __xpc_activity_unregister(a2);
    v4 = *(a1 + 24) == 0;
  }

  else
  {
    while (1)
    {
      v5 = *(a1 + 24);
      if (!v5)
      {
        break;
      }

      __xpc_activity_unregister(v5);
    }

    v4 = 1;
  }

  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v6 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1;
    v8 = *(a1 + 16);
    v16 = 136446722;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 1024;
    v21 = v4;
    _os_log_impl(&dword_197263000, v6, OS_LOG_TYPE_DEFAULT, "_xpc_activity_unregister: %{public}s %llu, last registration: %{BOOL}d", &v16, 0x1Cu);
  }

  if (v4)
  {
    if (*(MEMORY[0x1E69E99F0] + 16) == -1)
    {
      v9 = *(MEMORY[0x1E69E99F0] + 24);
    }

    else
    {
      v9 = _os_alloc_once();
    }

    if (*(v9 + 3) == 1)
    {
      xpc_set_event("com.apple.xpc.activity", *a1, 0);
    }

    os_release(*(a1 + 64));
    *(a1 + 64) = 0;
    v10 = *(a1 + 8);
    if (v10)
    {
      xpc_release(v10);
      *(a1 + 8) = 0;
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      xpc_release(v11);
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      if (v12)
      {
        *(v12 + 40) = v13;
      }

      *v13 = v12;
      *(a1 + 32) = -1;
      *(a1 + 40) = -1;
      free(*a1);
      free(a1);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = -1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void xpc_activity_run(const char *a1, uint64_t a2)
{
  _xpc_activity_create_control_channel();
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "Command", "Run");
  xpc_dictionary_set_string(v4, "Identifier", a1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_activity_run_block_invoke;
  v5[3] = &unk_1E74ABD18;
  v5[4] = a2;
  v5[5] = v4;
  dispatch_async(_control_queue, v5);
}

void _xpc_activity_create_control_channel()
{
  if (_xpc_activity_once != -1)
  {
    xpc_activity_unregister_cold_1();
  }

  if (_control_once != -1)
  {
    _xpc_activity_create_control_channel_cold_2();
  }
}

void __xpc_activity_run_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __xpc_activity_run_block_invoke_2;
  handler[3] = &unk_1E74ABCF0;
  v2 = *(a1 + 40);
  handler[4] = *(a1 + 32);
  xpc_connection_send_message_with_reply(_control_connection, v2, _xpc_activity_queue, handler);
  xpc_release(*(a1 + 40));
}

uint64_t __xpc_activity_run_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "Result");
  if (xpc_get_type(xdict) == OS_xpc_error)
  {
    v5 = 5;
  }

  else
  {
    v5 = int64;
  }

  v6 = *(*(a1 + 32) + 16);
  v7 = *(a1 + 32);

  return v6(v7, v5);
}

void xpc_activity_list(const char *a1, uint64_t a2)
{
  _xpc_activity_create_control_channel();
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "Command", "List");
  if (a1)
  {
    xpc_dictionary_set_string(v4, "Identifier", a1);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_activity_list_block_invoke;
  v5[3] = &unk_1E74ABD68;
  v5[4] = a2;
  v5[5] = v4;
  dispatch_async(_control_queue, v5);
}

void __xpc_activity_list_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __xpc_activity_list_block_invoke_2;
  handler[3] = &unk_1E74ABD40;
  v2 = *(a1 + 40);
  handler[4] = *(a1 + 32);
  xpc_connection_send_message_with_reply(_control_connection, v2, _xpc_activity_queue, handler);
  xpc_release(*(a1 + 40));
}

uint64_t __xpc_activity_list_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(xdict, "List");
  v4 = *(v2 + 16);

  return v4(v2, value);
}

void xpc_activity_debug(const char *a1, uint64_t a2, uint64_t a3)
{
  _xpc_activity_create_control_channel();
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "Command", "Debug");
  xpc_dictionary_set_string(v6, "Identifier", a1);
  xpc_dictionary_set_uint64(v6, "Flags", a2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __xpc_activity_debug_block_invoke;
  v7[3] = &unk_1E74ABDB8;
  v7[4] = a3;
  v7[5] = v6;
  dispatch_async(_control_queue, v7);
}

void __xpc_activity_debug_block_invoke(uint64_t a1)
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __xpc_activity_debug_block_invoke_2;
  handler[3] = &unk_1E74ABD90;
  v2 = *(a1 + 40);
  handler[4] = *(a1 + 32);
  xpc_connection_send_message_with_reply(_control_connection, v2, _xpc_activity_queue, handler);
  xpc_release(*(a1 + 40));
}

uint64_t __xpc_activity_debug_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "Result");
  if (xpc_get_type(xdict) == OS_xpc_error)
  {
    v5 = 5;
  }

  else
  {
    v5 = int64;
  }

  v6 = *(*(a1 + 32) + 16);
  v7 = *(a1 + 32);

  return v6(v7, v5);
}

void _xpc_activity_end_running(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136))
  {
    *(a1 + 136) &= ~1u;
    if (!*(a1 + 112))
    {
      goto LABEL_10;
    }

    if (_activity_log_pred != -1)
    {
      _xpc_activity_dispose_cold_1();
    }

    v2 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 24);
      v4 = *(a1 + 96);
      v7 = 136446722;
      v8 = v3;
      v9 = 2048;
      v10 = a1;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "_xpc_activity_end_running: %{public}s (%p) seqno: %llu.", &v7, 0x20u);
    }

    v5 = *(a1 + 112);
    if (!v5)
    {
LABEL_10:
      _os_assumes_log();
      v5 = *(a1 + 112);
    }

    os_release(v5);
    *(a1 + 112) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

os_log_t ___activity_log_block_invoke()
{
  result = os_log_create("com.apple.xpc.activity", "Client");
  _activity_log__log = result;
  return result;
}

void ___xpc_activity_init_block_invoke()
{
  _xpc_activity_list = 0;
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  _xpc_activity_queue = dispatch_queue_create("com.apple.xpc.activity", v0);
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v1 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v1 = _os_alloc_once();
  }

  if (*(v1 + 3) == 1)
  {
    global_queue = dispatch_get_global_queue(9, 0);

    xpc_set_event_stream_handler("com.apple.xpc.activity", global_queue, &__block_literal_global_108);
  }
}

void _xpc_activity_normalize_integer(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v5 = value;
    type = xpc_get_type(value);
    if (type == OS_xpc_uint64)
    {
      v7 = xpc_uint64_get_value(v5);
      if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      xpc_dictionary_set_int64(a1, a2, v8);
    }

    else if (type == OS_xpc_int64 && xpc_int64_get_value(v5) < 0)
    {

      xpc_dictionary_set_value(a1, a2, 0);
    }
  }
}

uint64_t __xpc_activity_find_registration(const char *a1)
{
  dispatch_assert_queue_V2(_xpc_activity_queue);
  v2 = _xpc_activity_list;
  if (!_xpc_activity_list)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (!strcmp(*v2, a1))
    {
      v3 = v2;
    }

    v2 = *(v2 + 32);
  }

  while (v2);
  return v3;
}

void ___xpc_activity_new_unmanaged_connection_block_invoke(uint64_t a1, __objc2_class **object)
{
  if (xpc_get_type(object) == OS_xpc_dictionary)
  {
    v4 = *(a1 + 32);

    _xpc_activity_dispatch(object, v4);
  }

  else if (object == &_xpc_error_connection_interrupted)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 4);

    xpc_activity_set_criteria(v5, v6);
  }
}

void _xpc_activity_setup_control_channel(xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v2 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  if ((*(v2 + 3) & 1) == 0)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (_control_connection)
  {
    xpc_connection_cancel(_control_connection);
    xpc_release(_control_connection);
    dispatch_suspend(_control_queue);
  }

  value = xpc_dictionary_get_value(xdict, "_ReplyEndpoint");
  if (value && (v4 = xpc_connection_create_from_endpoint(value)) != 0)
  {
    v5 = v4;
    xpc_connection_set_target_queue(v4, _control_queue);
    xpc_connection_set_event_handler(v5, &__block_literal_global_122);
    xpc_connection_activate(v5);
    _control_connection = v5;
    v6 = _control_queue;
    v7 = *MEMORY[0x1E69E9840];

    dispatch_resume(v6);
  }

  else
  {
    _control_connection = 0;
    v8 = *MEMORY[0x1E69E9840];
  }
}

void ___xpc_activity_dispatch_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  registration = _xpc_activity_find_registration(*(a1 + 40));
  v3 = registration[3];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v3 = *(v3 + 120);
        if (!*(v5 + 64) && *(v5 + 32) == &_xpc_activity_check_in)
        {
          if (_activity_log_pred != -1)
          {
            __xpc_activity_set_criteria_block_invoke_cold_2();
          }

          v6 = _activity_log__log;
          if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 40);
            *buf = 136446466;
            v34 = v7;
            v35 = 2048;
            v36 = v5;
            _os_log_impl(&dword_197263000, v6, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%p): state is checking and criteria is checking. Calling _xpc_activity_set_criteria(...CHECK_IN)", buf, 0x16u);
          }

          _xpc_activity_set_criteria(registration, v5, &_xpc_activity_check_in);
        }

        v8 = *(v5 + 96);
        v9 = *(a1 + 48);
        if (v8 == v9)
        {
          break;
        }

        if (v8 >= v9)
        {
          if (_activity_log_pred != -1)
          {
            __xpc_activity_set_criteria_block_invoke_cold_2();
          }

          v23 = _activity_log__log;
          if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v5 + 96);
            v25 = *(a1 + 40);
            v26 = *(a1 + 48);
            *buf = 136446978;
            v34 = v25;
            v35 = 2048;
            v36 = v5;
            v37 = 2048;
            v38 = v24;
            v39 = 2048;
            v40 = v26;
            _os_log_impl(&dword_197263000, v23, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%p): found a activity with seqno %llu NEWER THAN than the event's seqno %llu. Doing nothing.", buf, 0x2Au);
          }

          v4 = 1;
          if (!v3)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v9 > registration[2])
          {
            goto LABEL_37;
          }

          if (_activity_log_pred != -1)
          {
            __xpc_activity_set_criteria_block_invoke_cold_2();
          }

          v14 = _activity_log__log;
          if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(v5 + 96);
            v16 = *(a1 + 40);
            v17 = *(a1 + 48);
            *buf = 136446978;
            v34 = v16;
            v35 = 2050;
            v36 = v5;
            v37 = 2048;
            v38 = v15;
            v39 = 2048;
            v40 = v17;
            _os_log_impl(&dword_197263000, v14, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%{public}p): found an activity with seqno %llu older than the event's seqno %llu. Unregistering it.", buf, 0x2Au);
          }

          if (!_xpc_activity_unregister(registration, v5))
          {
            goto LABEL_37;
          }

          if (_activity_log_pred != -1)
          {
            __xpc_activity_set_criteria_block_invoke_cold_2();
          }

          v18 = _activity_log__log;
          if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 40);
            *buf = 136446466;
            v34 = v19;
            v35 = 2050;
            v36 = v5;
            _os_log_impl(&dword_197263000, v18, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%{public}p): no references remain after unregistering old activity.", buf, 0x16u);
          }

          registration = 0;
          if (!v3)
          {
            goto LABEL_46;
          }
        }
      }

      if (*(a1 + 80) != 1)
      {
        break;
      }

      v10 = *(a1 + 56);
      if (v10)
      {
        if (*(v5 + 80) == v10)
        {
          break;
        }
      }

      if (_activity_log_pred != -1)
      {
        __xpc_activity_set_criteria_block_invoke_cold_2();
      }

      v11 = _activity_log__log;
      if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        *buf = 136446722;
        v34 = v12;
        v35 = 2048;
        v36 = v5;
        v37 = 2048;
        v38 = v13;
        _os_log_impl(&dword_197263000, v11, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%p): ignoring an activity with matching seqno because of reply connection mismatch %llu", buf, 0x20u);
        if (!v3)
        {
          goto LABEL_46;
        }
      }

      else
      {
LABEL_37:
        if (!v3)
        {
          goto LABEL_46;
        }
      }
    }

    if (_activity_log_pred != -1)
    {
      __xpc_activity_set_criteria_block_invoke_cold_2();
    }

    v20 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *buf = 136446722;
      v34 = v21;
      v35 = 2048;
      v36 = v5;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&dword_197263000, v20, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%p): found an activity with matching seqno %llu", buf, 0x20u);
    }

    *(*(*(a1 + 32) + 8) + 24) = xpc_retain(v5);
    goto LABEL_37;
  }

  v4 = 0;
LABEL_46:
  if ((v4 & 1) == 0 && registration && !*(*(*(a1 + 32) + 8) + 24) && registration[2] != -1)
  {
    if (_activity_log_pred != -1)
    {
      __xpc_activity_set_criteria_block_invoke_cold_2();
    }

    v28 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      *buf = 136446722;
      v34 = v29;
      v35 = 2048;
      v36 = 0;
      v37 = 2048;
      v38 = v30;
      _os_log_impl(&dword_197263000, v28, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: %{public}s (%p): An event was delivered before the process has checked in. Stashing pending_seqno %llu, transaction, endpoint", buf, 0x20u);
    }

    registration[6] = *(a1 + 48);
    os_release(registration[8]);
    registration[8] = os_retain(*(a1 + 64));
    v31 = registration[7];
    if (v31)
    {
      xpc_release(v31);
      registration[7] = 0;
    }

    v32 = *(a1 + 72);
    if (v32)
    {
      xpc_retain(v32);
      registration[7] = *(a1 + 72);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void _xpc_activity_set_eligible(_BYTE *a1, int a2)
{
  v2 = a1[136];
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  a1[136] = v2 & 0xFD | v3;
  if ((v2 & 2) != 0 && (a2 & 1) == 0)
  {
    xpc_retain(a1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___xpc_activity_notify_eligibility_changed_handlers_block_invoke;
    block[3] = &__block_descriptor_tmp_124;
    block[4] = a1;
    dispatch_async(_xpc_activity_queue, block);
  }
}

void ___xpc_activity_dispatch_block_invoke_115(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v2 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = *(v4 + 24);
    *buf = 136446722;
    v28 = v5;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v3;
    _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: lower half, activity name %{public}s (%p), seqno from top half was %llu", buf, 0x20u);
  }

  v6 = *(a1 + 48);
  if (v6 && *(*(*(*(a1 + 32) + 8) + 24) + 80))
  {
    if (*(a1 + 72) == 1)
    {
      ___xpc_activity_dispatch_block_invoke_115_cold_2(&v26, buf);
    }

    listener_port = _xpc_endpoint_get_listener_port(v6);
    v8 = _xpc_connection_copy_listener_port(*(*(*(*(a1 + 32) + 8) + 24) + 80));
    if (listener_port != v8)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      xpc_connection_cancel(*(v9 + 80));
      xpc_release(*(v9 + 80));
      *(v9 + 80) = 0;
    }

    if (_xpc_mach_port_release(v8))
    {
      _os_assumes_log();
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      ___xpc_activity_dispatch_block_invoke_115_cold_3(&v26, buf);
    }

    if (v10 != *(*(*(*(a1 + 32) + 8) + 24) + 80))
    {
      ___xpc_activity_dispatch_block_invoke_115_cold_4(&v26, buf);
    }

    if (xpc_dictionary_get_value(*(a1 + 64), "run") == &_xpc_BOOL_true)
    {
      v11 = *(*(*(a1 + 32) + 8) + 24);
      *(v11 + 136) |= 2u;
      _xpc_activity_set_state_with_completion_status(*(*(*(a1 + 32) + 8) + 24), 2, 0);
    }
  }

  if (*(a1 + 48))
  {
    if (!*(*(*(*(a1 + 32) + 8) + 24) + 80))
    {
      if (*(a1 + 72) == 1)
      {
        ___xpc_activity_dispatch_block_invoke_115_cold_2(&v26, buf);
      }

      v12 = *(a1 + 64);
      if (!v12)
      {
        ___xpc_activity_dispatch_block_invoke_115_cold_6(&v26, buf);
      }

      xpc_retain(v12);
      v13 = xpc_connection_create_from_endpoint(*(a1 + 48));
      xpc_connection_set_target_queue(v13, _xpc_activity_queue);
      *(*(*(*(a1 + 32) + 8) + 24) + 80) = v13;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = ___xpc_activity_dispatch_block_invoke_117;
      handler[3] = &__block_descriptor_tmp_118;
      v14 = *(a1 + 40);
      handler[4] = *(a1 + 64);
      handler[5] = v14;
      v25 = *(a1 + 72);
      handler[6] = v13;
      xpc_connection_set_event_handler(v13, handler);
      xpc_connection_activate(v13);
      if (_activity_log_pred != -1)
      {
        __xpc_activity_set_criteria_block_invoke_cold_2();
      }

      v15 = _activity_log__log;
      if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        v17 = *(*(*(a1 + 32) + 8) + 24);
        v18 = *(v17 + 24);
        *buf = 134218754;
        v28 = v13;
        v29 = 2082;
        v30 = v18;
        v31 = 2048;
        v32 = v17;
        v33 = 2048;
        v34 = v16;
        _os_log_impl(&dword_197263000, v15, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: created connection %p for activity name %{public}s (%p), seqno %llu", buf, 0x2Au);
      }
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      xpc_release(v19);
    }
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    xpc_release(v20);
  }

  v21 = *(a1 + 64);
  if (v21)
  {
    xpc_release(v21);
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v22 = *(*(*(a1 + 32) + 8) + 24);
    *(v22 + 136) |= 2u;
    _xpc_activity_set_state_with_completion_status(*(*(*(a1 + 32) + 8) + 24), 2, 0);
  }

  xpc_release(*(*(*(a1 + 32) + 8) + 24));
  v23 = *MEMORY[0x1E69E9840];
}

void ___xpc_activity_dispatch_block_invoke_117(uint64_t a1, __objc2_class **object)
{
  v23 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(object) != OS_xpc_error)
  {
    value = xpc_dictionary_get_value(object, "eligible");
    if (value)
    {
      v5 = value;
      string = xpc_dictionary_get_string(*(a1 + 32), "XPCEventName");
      registration = __xpc_activity_find_registration(string);
      if (registration)
      {
        v8 = *(registration + 24);
        if (v8)
        {
          v9 = 0;
          do
          {
            while (1)
            {
              v10 = v8;
              v8 = *(v8 + 120);
              if (*(v10 + 96) == *(a1 + 40))
              {
                if (*(a1 + 56) != 1)
                {
                  break;
                }

                v11 = *(a1 + 48);
                if (v11)
                {
                  if (*(v10 + 80) == v11)
                  {
                    break;
                  }
                }
              }

              if (!v8)
              {
                goto LABEL_22;
              }
            }

            if (_activity_log_pred != -1)
            {
              __xpc_activity_set_criteria_block_invoke_cold_2();
            }

            v12 = _activity_log__log;
            if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a1 + 40);
              *buf = 136446722;
              v18 = string;
              v19 = 2048;
              v20 = v10;
              v21 = 2048;
              v22 = v13;
              _os_log_impl(&dword_197263000, v12, OS_LOG_TYPE_DEFAULT, "_xpc_activity_dispatch: xpc_connection_set_event_handler: %{public}s (%p): found an activity with matching seqno %llu", buf, 0x20u);
            }

            v9 = v10;
          }

          while (v8);
LABEL_22:
          if (v9)
          {
            _xpc_activity_set_eligible(v9, v5 == &_xpc_BOOL_true);
          }
        }
      }
    }

    goto LABEL_24;
  }

  if (object != &_xpc_error_connection_invalid)
  {
LABEL_24:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = *(a1 + 32);
  v15 = *MEMORY[0x1E69E9840];

  xpc_release(v14);
}

void ___xpc_activity_notify_eligibility_changed_handlers_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (v3)
  {
    do
    {
      if (*(v3 + 8))
      {
        v4 = *(v3 + 8);
      }

      else
      {
        v4 = 0;
      }

      xpc_retain(*(a1 + 32));
      v5 = _Block_copy(v4);
      v6 = *(a1 + 32);
      v7 = *(v6 + 40);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = ___xpc_activity_notify_eligibility_changed_handlers_block_invoke_2;
      v8[3] = &unk_1E74ABEF0;
      v8[4] = v5;
      v8[5] = v6;
      dispatch_async(v7, v8);
      v3 = *(v3 + 16);
    }

    while (v3);
    v2 = *(a1 + 32);
  }

  xpc_release(v2);
}

void ___xpc_activity_notify_eligibility_changed_handlers_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v3 = *(a1 + 40);

  xpc_release(v3);
}

void _xpc_activity_set_state_with_completion_status(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v6 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 24);
    *buf = 136446722;
    v13 = v7;
    v14 = 2048;
    v15 = a1;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&dword_197263000, v6, OS_LOG_TYPE_DEFAULT, "_xpc_activity_set_state: %{public}s (%p), %ld", buf, 0x20u);
  }

  if (a2)
  {
    if (*(a1 + 80) && *(a1 + 72) != a2)
    {
      *(a1 + 72) = a2;
      xpc_retain(a1);
      v8 = *(a1 + 88);
      v9 = *(a1 + 40);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = ___xpc_activity_set_state_with_completion_status_block_invoke;
      v11[3] = &__block_descriptor_tmp_130;
      v11[4] = v8;
      v11[5] = a1;
      v11[6] = a2;
      v11[7] = a3;
      dispatch_async(v9, v11);
    }
  }

  else
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    *(a1 + 64) = 0;
    __XPC_ACTIVITY_CALLING_HANDLER__(a1);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __XPC_ACTIVITY_CALLING_HANDLER__(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    dispatch_once(&_activity_log_pred, &__block_literal_global_9);
  }

  v2 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v16 = 136446978;
    v17 = v3;
    v18 = 2048;
    v19 = a1;
    v20 = 2048;
    v21 = v4;
    v22 = 2048;
    v23 = v5;
    _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "__XPC_ACTIVITY_CALLING_HANDLER__: %{public}s (%p), current state %ld, pending state %ld", &v16, 0x2Au);
  }

  dispatch_assert_queue_V2(*(a1 + 40));
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 48);
    (*(v6 + 16))(v6, a1);
  }

  if (_activity_log_pred != -1)
  {
    dispatch_once(&_activity_log_pred, &__block_literal_global_9);
  }

  v8 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v16 = 136446978;
    v17 = v9;
    v18 = 2048;
    v19 = a1;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&dword_197263000, v8, OS_LOG_TYPE_DEFAULT, "__XPC_ACTIVITY_CALLING_HANDLER__ returned from handler: %{public}s (%p), current state %ld, pending state %ld", &v16, 0x2Au);
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    v12 = *(a1 + 64);
  }

  if (v12 > 5)
  {
    abort();
  }

  if (((1 << v12) & 0x29) != 0)
  {
    v13 = 1;
LABEL_18:
    _xpc_activity_set_state_with_completion_status(a1, v13, 0);
    goto LABEL_19;
  }

  if (((1 << v12) & 0x12) == 0)
  {
    v13 = 5;
    goto LABEL_18;
  }

LABEL_19:
  result = _os_avoid_tail_call();
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void ___xpc_activity_set_state_with_completion_status_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[11])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "state", *(a1 + 48));
    if (*(a1 + 48) == 5)
    {
      xpc_dictionary_set_int64(v4, "completion_status", *(a1 + 56));
    }

    xpc_retain(*(a1 + 40));
    if (_activity_log_pred != -1)
    {
      _xpc_activity_dispose_cold_1();
    }

    v5 = _activity_log__log;
    if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(v6 + 24);
      *buf = 136446722;
      v18 = v8;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, "_xpc_activity_set_state: send new state to CTS: %{public}s (%p), %ld", buf, 0x20u);
    }

    v9 = *(a1 + 40);
    v10 = *(v9 + 80);
    v11 = *(v9 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = ___xpc_activity_set_state_with_completion_status_block_invoke_128;
    v15[3] = &__block_descriptor_tmp_129_0;
    v15[4] = v9;
    xpc_connection_send_message_with_reply(v10, v4, v11, v15);
    xpc_release(v4);
  }

  else
  {
    xpc_retain(v2);
    v12 = *(a1 + 40);
    v13 = *(v12 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___xpc_activity_set_state_with_completion_status_block_invoke_2;
    block[3] = &__block_descriptor_tmp_125;
    block[4] = v12;
    dispatch_async(v13, block);
  }

  xpc_release(*(a1 + 40));
  v14 = *MEMORY[0x1E69E9840];
}

void ___xpc_activity_set_state_with_completion_status_block_invoke_2(uint64_t a1)
{
  _xpc_activity_set_state_fakereply(*(a1 + 32));
  v2 = *(a1 + 32);

  xpc_release(v2);
}

void _xpc_activity_set_state_fakereply(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  v4 = *(a1 + 72);
  if (!v4)
  {
    v4 = *(a1 + 64);
  }

  if (((v4 - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  xpc_dictionary_set_int64(v2, "state", v5);
  _xpc_activity_set_state_from_cts(a1, v3);

  xpc_release(v3);
}

void ___xpc_activity_set_state_with_completion_status_block_invoke_128(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v5 = *(a1 + 32);
  if (type == OS_xpc_error)
  {
    _xpc_activity_set_state_fakereply(v5);
  }

  else
  {
    _xpc_activity_set_state_from_cts(v5, object);
  }

  v6 = *(a1 + 32);

  xpc_release(v6);
}

void _xpc_activity_set_state_from_cts(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 40));
  int64 = xpc_dictionary_get_int64(a2, "state");
  if (*(a1 + 64) == int64 && *(a1 + 104) == *(a1 + 96))
  {
    goto LABEL_18;
  }

  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v5 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 24);
    *buf = 136446722;
    v11 = v6;
    v12 = 2048;
    v13 = a1;
    v14 = 2048;
    v15 = int64;
    _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, "_xpc_activity_set_state_from_cts: %{public}s (%p), set activity state to %ld", buf, 0x20u);
  }

  *(a1 + 104) = *(a1 + 96);
  *(a1 + 64) = int64;
  *(a1 + 72) = 0;
  if (int64 > 2)
  {
    if (int64 != 3)
    {
      if (int64 != 5)
      {
        goto LABEL_18;
      }

      if ((*(a1 + 136) & 4) == 0)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___xpc_activity_set_state_from_cts_block_invoke;
        block[3] = &__block_descriptor_tmp_131;
        block[4] = a1;
        dispatch_sync(_xpc_activity_queue, block);
      }
    }

LABEL_17:
    _xpc_activity_end_running(a1);
    goto LABEL_18;
  }

  if (int64 == 1)
  {
    goto LABEL_17;
  }

  if (int64 == 2)
  {
    value = xpc_dictionary_get_value(a2, "eligible");
    if (value)
    {
      _xpc_activity_set_eligible(a1, value == &_xpc_BOOL_true);
    }

    __XPC_ACTIVITY_CALLING_HANDLER__(a1);
  }

LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
}

BOOL ___xpc_activity_set_state_from_cts_block_invoke(uint64_t a1)
{
  registration = _xpc_activity_find_registration(*(*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  return _xpc_activity_unregister(registration, v3);
}

void __xpc_activity_unregister(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v2 = _activity_log__log;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 96);
    if ((*(a1 + 136) & 8) != 0)
    {
      v5 = "(is registered)";
    }

    else
    {
      v5 = "(not registered)";
    }

    v9 = 136446978;
    v10 = v3;
    v11 = 2048;
    v12 = a1;
    v13 = 2048;
    v14 = v4;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "__xpc_activity_unregister: %{public}s (%p) seqno: %llu, %{public}s", &v9, 0x2Au);
  }

  if ((*(a1 + 136) & 8) != 0)
  {
    v6 = *(a1 + 120);
    *(a1 + 136) &= ~8u;
    v7 = *(a1 + 128);
    if (v6)
    {
      *(v6 + 128) = v7;
    }

    *v7 = v6;
    *(a1 + 120) = -1;
    *(a1 + 128) = -1;
    xpc_release(a1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void ___xpc_activity_create_control_channel_block_invoke()
{
  _control_queue = dispatch_queue_create_with_target_V2("com.apple.xpc.activity.control", 0, _xpc_activity_queue);
  dispatch_suspend(_control_queue);
  mach_service = xpc_connection_create_mach_service("com.apple.xpc.activity.control", _control_queue, 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_139);
  _control_connection = mach_service;
  xpc_connection_activate(mach_service);
  v1 = _control_queue;

  dispatch_resume(v1);
}

xpc_object_t _der_vm_context_to_xpc(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = a1[2];
  v8 = *(a1 + 6);
  if (!der_vm_context_is_valid(&v5))
  {
    return 0;
  }

  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  v7 = a1[2];
  v8 = *(a1 + 6);
  return _objectForActiveContext(&v5);
}

xpc_object_t _objectForActiveContext(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v23 = *a1;
  v24 = v3;
  v25 = *(a1 + 2);
  v26 = a1[6];
  v4 = der_vm_CEType_from_context(&v23, 0);
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v19 = *a1;
        v20 = *(a1 + 1);
        v21 = *(a1 + 2);
        v22 = a1[6];
        empty = xpc_dictionary_create_empty();
        break;
      case 2:
        v19 = *a1;
        v20 = *(a1 + 1);
        v21 = *(a1 + 2);
        v22 = a1[6];
        empty = xpc_array_create_empty();
        break;
      case 3:
        v5 = *(a1 + 1);
        v23 = *a1;
        v24 = v5;
        v25 = *(a1 + 2);
        v26 = a1[6];
        v6 = der_vm_integer_from_context(&v23);
        return xpc_int64_create(v6);
      default:
        goto LABEL_17;
    }

    v14 = empty;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    der_vm_iterate(&v23, empty, _manufacturingCallback);
    return v14;
  }

  switch(v4)
  {
    case 4:
      v15 = *(a1 + 1);
      v23 = *a1;
      v24 = v15;
      v25 = *(a1 + 2);
      v26 = a1[6];
      v16 = string_for_context(&v23);
      return xpc_string_create_no_copy(v16);
    case 5:
      v12 = *(a1 + 1);
      v23 = *a1;
      v24 = v12;
      v25 = *(a1 + 2);
      v26 = a1[6];
      v13 = der_vm_BOOL_from_context(&v23);
      return xpc_BOOL_create(v13);
    case 6:
      v8 = *(a1 + 1);
      v23 = *a1;
      v24 = v8;
      v25 = *(a1 + 2);
      v26 = a1[6];
      v9 = der_vm_data_from_context(&v23);
      return xpc_data_create(v9, v10);
  }

LABEL_17:
  v18 = (*(v2 + 32))(v2, "[%s]: %s\n", "_objectForActiveContext", "CoreEntitlements: unknown DER type");
  return xpc_create_from_ce_der(v18);
}

xpc_object_t xpc_create_from_ce_der(unsigned __int8 *a1, uint64_t a2)
{
  v12 = 0uLL;
  v13 = 0;
  v2 = CEValidate(_CERuntimeImpl, &v12, a1, &a1[a2]);
  result = 0;
  if (v2 == &Errors)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = v12;
    *&v5 = v13;
    if (CEAcquireUnmanagedContext(_CERuntimeImpl, &v4, &v8) == &Errors)
    {
      v4 = v8;
      v5 = v9;
      v6 = v10;
      v7 = v11;
      return _der_vm_context_to_xpc(&v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xpc_object_t xpc_create_from_ce_der_with_key(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v19 = 0uLL;
  v20 = 0;
  v4 = CEValidate(_CERuntimeImpl, &v19, a1, &a1[a2]);
  result = 0;
  if (v4 == &Errors)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v21 = v19;
    v22 = v20;
    if (CEAcquireUnmanagedContext(_CERuntimeImpl, &v21, &v15) == &Errors)
    {
      v37 = 0;
      v36 = 0u;
      v35 = 0u;
      v34 = 0u;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      *&v21 = 0x4000000000000001;
      *(&v21 + 1) = a3;
      v22 = strlen(a3);
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v7 = v15;
      v8 = v16;
      v9 = v17;
      v10 = v18;
      der_vm_execute_nocopy(&v7, &v21, &v11);
      v7 = v11;
      v8 = v12;
      v9 = v13;
      v10 = v14;
      result = _der_vm_context_to_xpc(&v7);
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _manufacturingCallback(uint64_t *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 29);
  if (v3 == 2)
  {
    if (*(a1 + 28) == 1)
    {
      v7 = a1[15];
      v15 = *(a1 + 7);
      v16 = *(a1 + 9);
      v17 = *(a1 + 11);
      v18 = a1[13];
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      memset(v27 + 8, 0, 248);
      v8 = *(a1 + 9);
      v21[0] = *(a1 + 7);
      v21[1] = v8;
      v21[2] = *(a1 + 11);
      v22 = a1[13];
      *&v27[0] = 2;
      der_vm_execute(v21, v27, &v23);
      v27[0] = v23;
      v27[1] = v24;
      v27[2] = v25;
      *&v27[3] = v26;
      v9 = string_for_context(v27);
      v19[0] = v15;
      v19[1] = v16;
      v19[2] = v17;
      v20 = v18;
      v27[0] = xmmword_1972A7E90;
      memset(&v27[1], 0, 240);
      der_vm_execute(v19, v27, v21);
      active = _objectForActiveContext(v21);
      xpc_dictionary_set_value(v7, v9, active);
      free(v9);
    }

    else
    {
      active = xpc_array_create_empty();
      v11 = *(a1 + 9);
      v27[0] = *(a1 + 7);
      v27[1] = v11;
      v27[2] = *(a1 + 11);
      *&v27[3] = a1[13];
      if (der_vm_iterate(v27, active, _manufacturingCallback) != &Errors)
      {
        v14 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: Couldn't iterate over DER entitlements\n");
        return string_for_context(v14);
      }

      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, active);
    }

    v6 = active;
    goto LABEL_10;
  }

  if (v3)
  {
    if (*(a1 + 28) == 2)
    {
      v4 = *(a1 + 9);
      v27[0] = *(a1 + 7);
      v27[1] = v4;
      v27[2] = *(a1 + 11);
      *&v27[3] = a1[13];
      v5 = _objectForActiveContext(v27);
      xpc_array_set_value(a1[15], 0xFFFFFFFFFFFFFFFFLL, v5);
      v6 = v5;
LABEL_10:
      xpc_release(v6);
      v12 = *MEMORY[0x1E69E9840];
      return 1;
    }

    v14 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: not a sequence");
  }

  else
  {
    v14 = (*(v2 + 32))(v2, "[%s]: %s\n", "_manufacturingCallback", "CoreEntitlements: unknown DER type");
  }

  return string_for_context(v14);
}

void *string_for_context(uint64_t a1)
{
  v1 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v2 = der_vm_string_from_context(v7);
  v4 = v3;
  v5 = _xpc_alloc_typed(v3 + 1, 0xCECD693BuLL);
  memcpy(v5, v2, v4);
  return v5;
}

void _ce_abort(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsyslog(2, a2, &a9);
  qword_1EAF1E800 = "Data corruption: CoreEntitlements has aborted due to an unrecoverable error";
  __break(1u);
}

unsigned int *xpc_format_specifiers_lookup(const char *a1, int a2)
{
  if ((a2 - 2) > 0x10)
  {
    return 0;
  }

  v3 = specifier_hash_asso_values[a1[a2 - 1]] + a2;
  if (v3 > 0x13)
  {
    return 0;
  }

  v4 = (&xpc_format_specifiers_lookup_wordlist + 12 * v3);
  v5 = *v4;
  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = &stringpool_contents[v5];
  if (*a1 != stringpool_contents[v5] || strncmp(a1 + 1, v6 + 1, (a2 - 1)) || v6[a2])
  {
    return 0;
  }

  return v4;
}

uint64_t (*notify_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 73) >= 0xFFFFFFF7)
  {
    return do_notify_subsystem[5 * (v1 - 64) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_Xmach_notify_port_deleted(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 36)
  {
    v2 = result[3];
    v3 = result[8];
    do_mach_notify_port_deleted();
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _Xmach_notify_port_destroyed(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 0x100000)
    {
      result = do_mach_notify_port_destroyed(*(result + 12), *(result + 28));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -300;
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_Xmach_notify_no_senders(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = do_mach_notify_no_senders();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xmach_notify_send_once(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    result = do_mach_notify_send_once(result[3]);
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *_Xmach_notify_dead_name(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 36)
  {
    v2 = result[3];
    v3 = result[8];
    do_mach_notify_dead_name();
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t notify_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 73) >= 0xFFFFFFF7 && (v5 = do_notify_subsystem[5 * (v4 - 64) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

BOOL ccder_blob_encode_body(void *a1, unint64_t a2, const void *a3)
{
  if (!a3)
  {
    return a2 == 0;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = ccder_blob_reserve(a1, a2, __dst);
  if (v5)
  {
    memmove(__dst[0], a3, a2);
  }

  return v5;
}

uint64_t ccder_blob_decode_range(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = ccder_blob_decode_tl_internal(a1, a2, &v8, 0);
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v6 = *a1;
    v7 = &(*a1)[v8];
    *a1 = v7;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t ccder_blob_decode_len_internal(uint64_t a1, unint64_t *a2, int a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1)
  {
    v5 = v4 >= v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v4 + 1;
  v7 = *v4;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = *v4;
  if (v9 > 0x82)
  {
    if (v9 == 131)
    {
      if ((v3 - v6) < 3)
      {
        goto LABEL_7;
      }

      v10 = v4[1];
      v6 = v4 + 4;
      v7 = v4[3] | (v10 << 16) | (v4[2] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v9 != 132 || (v3 - v6) < 4)
      {
        goto LABEL_7;
      }

      LODWORD(v10) = v4[1];
      v6 = v4 + 5;
      v7 = (v4[1] << 24) | (v4[2] << 16) | v4[4] | (v4[3] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 == 129)
  {
    if ((v3 - v6) < 1)
    {
      goto LABEL_7;
    }

    v6 = v4 + 2;
    v11 = v4[1];
    v7 = v11;
    if (a3)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (v9 != 130 || (v3 - v6) < 2)
  {
    goto LABEL_7;
  }

  v10 = v4[1];
  v6 = v4 + 3;
  v7 = v4[2] | (v10 << 8);
  if (a3)
  {
    goto LABEL_26;
  }

LABEL_6:
  if (v3 - v6 < v7)
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    return result;
  }

  *a2 = v7;
  *a1 = v6;
  return 1;
}

uint64_t ccder_blob_decode_tag(unsigned __int8 **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v8 = *v2;
  v6 = v2 + 1;
  v7 = v8;
  v9 = v8 & 0x1F;
  if (v9 == 31)
  {
    v9 = 0;
    while (1)
    {
      v5 = 0;
      if (v6 >= v3)
      {
        break;
      }

      v10 = v9;
      if (v9 >> 57)
      {
        break;
      }

      v11 = *v6++;
      v9 = v11 & 0x7F | (v9 << 7);
      if ((v11 & 0x80) == 0)
      {
        if (v10 >> 54)
        {
          return 0;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    *a2 = v9 | (v7 >> 5 << 61);
    *a1 = v6;
    return 1;
  }

  return v5;
}

uint64_t ccder_blob_decode_tl_internal(unsigned __int8 **a1, uint64_t a2, unint64_t *a3, int a4)
{
  v10 = 0;
  *a3 = 0;
  v8 = ccder_blob_decode_tag(a1, &v10);
  result = 0;
  if (v8 && v10 == a2)
  {
    if (a4)
    {
      return ccder_blob_decode_len_strict(a1, a3);
    }

    else
    {
      return ccder_blob_decode_len(a1, a3);
    }
  }

  return result;
}

BOOL ccder_blob_reserve(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < a2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = v3 - a2;
    a1[1] = v3 - a2;
  }

  result = v4 >= a2;
  *a3 = v5;
  a3[1] = v3;
  return result;
}

uint64_t ccder_blob_reserve_tl(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v9 = 0uLL;
  *a4 = 0;
  a4[1] = 0;
  result = ccder_blob_reserve(a1, a3, &v9);
  if (result)
  {
    result = ccder_blob_encode_tl(a1, a2, a3);
    if (result)
    {
      *a4 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t ccder_blob_encode_len(uint64_t *a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  if (a2 > 0x7F)
  {
    if (a2 > 0xFF)
    {
      if (a2 >> 16)
      {
        if (a2 >> 24)
        {
          if (v3 + 5 <= v4)
          {
            *(v4 - 4) = bswap32(a2);
            LOBYTE(a2) = -124;
            v5 = -5;
            goto LABEL_17;
          }
        }

        else if (v3 + 4 <= v4)
        {
          *(v4 - 2) = bswap32(a2) >> 16;
          *(v4 - 3) = BYTE2(a2);
          LOBYTE(a2) = -125;
          v5 = -4;
          goto LABEL_17;
        }
      }

      else if (v3 + 3 <= v4)
      {
        *(v4 - 2) = bswap32(a2) >> 16;
        LOBYTE(a2) = -126;
        v5 = -3;
        goto LABEL_17;
      }
    }

    else if (v3 + 2 <= v4)
    {
      *(v4 - 1) = a2;
      LOBYTE(a2) = -127;
      v5 = -2;
      goto LABEL_17;
    }

    return 0;
  }

  if (v3 + 1 > v4)
  {
    return 0;
  }

  v5 = -1;
LABEL_17:
  v6 = (v4 + v5);
  *v6 = a2;
  *a1 = v3;
  a1[1] = v6;
  return 1;
}

uint64_t ccder_blob_encode_tag(void *a1, unint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = HIBYTE(a2);
  v5 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFFFFLL) > 0x1E)
  {
    if (v5 > 0x7F)
    {
      if (v5 >> 14)
      {
        if (v5 >> 21)
        {
          v8 = v2 - v3;
          if (v5 >> 28)
          {
            if (v8 < 6)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            *(v2 - 4) = (a2 >> 21) | 0x80;
            LOBYTE(a2) = (a2 >> 28) | 0x80;
            v7 = -5;
          }

          else
          {
            if (v8 < 5)
            {
              return 0;
            }

            *(v2 - 1) = a2 & 0x7F;
            *(v2 - 2) = (a2 >> 7) | 0x80;
            *(v2 - 3) = (a2 >> 14) | 0x80;
            LODWORD(a2) = (a2 >> 21) | 0xFFFFFF80;
            v7 = -4;
          }
        }

        else
        {
          if ((v2 - v3) < 4)
          {
            return 0;
          }

          *(v2 - 1) = a2 & 0x7F;
          *(v2 - 2) = (a2 >> 7) | 0x80;
          LODWORD(a2) = (a2 >> 14) | 0xFFFFFF80;
          v7 = -3;
        }
      }

      else
      {
        if ((v2 - v3) < 3)
        {
          return 0;
        }

        *(v2 - 1) = a2 & 0x7F;
        LODWORD(a2) = (a2 >> 7) | 0xFFFFFF80;
        v7 = -2;
      }
    }

    else
    {
      if ((v2 - v3) < 2)
      {
        return 0;
      }

      v7 = -1;
    }

    v2 += v7;
    *v2 = a2;
    v6 = v4 | 0x1F;
    goto LABEL_20;
  }

  if (v2 == v3)
  {
    return 0;
  }

  v6 = HIBYTE(a2) & 0xE0 | a2;
LABEL_20:
  *(v2 - 1) = v6;
  *a1 = v3;
  a1[1] = v2 - 1;
  return 1;
}

uint64_t ccder_blob_encode_tl(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = ccder_blob_encode_len(a1, a3);
  if (result)
  {

    return ccder_blob_encode_tag(a1, a2);
  }

  return result;
}

uint64_t ccder_blob_encode_body_tl(uint64_t *a1, unint64_t a2, unint64_t a3, const void *a4)
{
  result = ccder_blob_encode_body(a1, a3, a4);
  if (result)
  {

    return ccder_blob_encode_tl(a1, a2, a3);
  }

  return result;
}

uint64_t ccder_sizeof_len(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = 3;
  v3 = 4;
  v4 = 5;
  v5 = 6;
  v6 = 7;
  v7 = 8;
  if (HIBYTE(a1))
  {
    v7 = 9;
  }

  if (HIWORD(a1))
  {
    v6 = v7;
  }

  if (a1 >> 40)
  {
    v5 = v6;
  }

  if (HIDWORD(a1))
  {
    v4 = v5;
  }

  if (a1 >> 24)
  {
    v3 = v4;
  }

  if (a1 >= 0x10000)
  {
    v2 = v3;
  }

  if (a1 >= 0x100)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t ccder_sizeof_tag(uint64_t a1)
{
  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >> 28)
  {
    v5 = 6;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  if (v1 >= 0x1F)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t amfi_interface_cdhash_in_trustcache(__int128 *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 22;
  if (a1 && a2 == 20 && a3)
  {
    *a3 = 0;
    v7 = *a1;
    v8 = *(a1 + 4);
    result = __sandbox_ms();
    if (result)
    {
      result = *__error();
    }

    else
    {
      *a3 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_query_bootarg_state(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  *a1 = 0;
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  *a1 = 0;
  return result;
}

uint64_t amfi_interface_get_local_signing_private_key(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (a1)
  {
    a1[144] = 0;
    *(a1 + 7) = 0uLL;
    *(a1 + 8) = 0uLL;
    *(a1 + 5) = 0uLL;
    *(a1 + 6) = 0uLL;
    *(a1 + 3) = 0uLL;
    *(a1 + 4) = 0uLL;
    *(a1 + 1) = 0uLL;
    *(a1 + 2) = 0uLL;
    *a1 = 0uLL;
    result = __sandbox_ms();
    if (!result)
    {
      result = 2 * (memcmp(a1, __s2, 0x91uLL) == 0);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_get_local_signing_public_key(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (a1)
  {
    a1[96] = 0;
    *(a1 + 4) = 0uLL;
    *(a1 + 5) = 0uLL;
    *(a1 + 2) = 0uLL;
    *(a1 + 3) = 0uLL;
    *a1 = 0uLL;
    *(a1 + 1) = 0uLL;
    result = __sandbox_ms();
    if (!result)
    {
      result = 2 * (memcmp(a1, __s2, 0x61uLL) == 0);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_set_local_signing_public_key(_OWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (!a1 || !memcmp(a1, __s2, 0x61uLL))
  {
    result = 22;
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = *(a1 + 96);
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    result = __sandbox_ms();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_authorize_local_signing(__int128 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 4);
  result = __sandbox_ms();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL amfi_developer_mode_status()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v3, 0, 0) && v2 == 1;
}

BOOL amfi_developer_mode_resolved()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_resolved", &v2, &v3, 0, 0) && v2 == 1;
}

uint64_t amfi_launch_constraint_set_spawnattr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 1) <= 0x3FFE)
  {
    return MEMORY[0x1EEE72EF0]();
  }

  else
  {
    return 22;
  }
}

uint64_t amfi_launch_constraint_matches_process(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11[128] = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    if (a4)
    {
      result = 0;
      *a4 = 5;
      strcpy((a4 + 4), "No Constraint provided");
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a3 <= 0x4000)
  {
    bzero(v11, 0x400uLL);
    v10 = 5;
    if (!v4)
    {
      v4 = &v10;
    }

    v8 = *a1;
    v9 = a1[1];
    if (!__sandbox_ms() && !*v4)
    {
      result = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = 0;
  *a4 = 5;
  strcpy((a4 + 4), "Constraint too large");
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

char *CESizeSerialization(char *result, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  v10 = 0;
  if (a2 <= 1 || *result != 7)
  {
    return &unk_1E74AC038;
  }

  v3 = &result[32 * a2];
  v4 = (v3 - 32);
  if (v3 < 0x20 || v4 < result)
  {
    goto LABEL_17;
  }

  if (*v4 != 8)
  {
    return &unk_1E74AC038;
  }

  v9 = &result[32 * a2];
  if ((result + 32) > v3 || result + 32 < result)
  {
LABEL_17:
    __break(0x5519u);
    return result;
  }

  v8 = result + 32;
  result = der_size_dictionary(result, &v8, &v10);
  if (result == &Errors)
  {
    if (v8 == v9)
    {
      v7 = ccder_sizeof(2, 1uLL);
      *a3 = ccder_sizeof(0x6000000000000010, v10 + v7);
      return &Errors;
    }

    else
    {
      return &unk_1E74AC058;
    }
  }

  return result;
}

uint64_t CESerializeWithOptions(uint64_t result, _DWORD *a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v30 = 0;
  v31 = 0;
  if (a5 > a6)
  {
    goto LABEL_43;
  }

  v11 = result;
  v30 = a5;
  v31 = a6;
  v12 = a6 - a5;
  if (a6 > a5 && ((a4 - 1) & 0x8000000000000000) == 0)
  {
    v13 = a3 + 32 * a4;
    v14 = (v13 - 32);
    v15 = a4;
    do
    {
      if (v14 < a3 || (v14 + 4) > v13)
      {
        goto LABEL_43;
      }

      v16 = *v14;
      if (*v14 > 4)
      {
        switch(v16)
        {
          case 5:
            v20 = v14[2];
            v21 = 0x2000000000000010;
            break;
          case 7:
            v20 = v14[2];
            v21 = 0xA000000000000010;
            break;
          case 9:
            if (v14 >= v13)
            {
              goto LABEL_43;
            }

            v18 = v14[1];
            v17 = v14[2];
            if (__CFADD__(v18, v17))
            {
              goto LABEL_43;
            }

            v19 = 4;
            goto LABEL_22;
          default:
            goto LABEL_33;
        }

        result = ccder_blob_encode_tl(&v30, v21, v20);
        if ((result & 1) == 0)
        {
          return &unk_1E74AC038;
        }
      }

      else
      {
        if ((v16 - 2) < 2)
        {
          if (v14 >= v13)
          {
            goto LABEL_43;
          }

          v18 = v14[1];
          v17 = v14[2];
          if (__CFADD__(v18, v17))
          {
            goto LABEL_43;
          }

          v19 = 12;
LABEL_22:
          result = ccder_blob_encode_body_tl(&v30, v19, v17, v18);
          if ((result & 1) == 0)
          {
            return &unk_1E74AC038;
          }

          goto LABEL_33;
        }

        if (v16 == 1)
        {
          v27 = 0;
          v28 = 0;
          result = ccder_blob_reserve_tl(&v30, 1uLL, v14[2], &v27);
          if (!result || v27 >= v28)
          {
            return &unk_1E74AC038;
          }

          if (v14[1])
          {
            v22 = -1;
          }

          else
          {
            v22 = 0;
          }

          *v27 = v22;
        }

        else if (v16 == 4)
        {
          result = der_encode_number(&v30, v14[1]);
          if ((result & 1) == 0)
          {
            return &unk_1E74AC038;
          }
        }
      }

LABEL_33:
      v14 -= 4;
    }

    while (v15-- > 1);
  }

  result = der_encode_number(&v30, 1uLL);
  if ((result & 1) == 0)
  {
    return &unk_1E74AC058;
  }

  if (!a4)
  {
LABEL_43:
    __break(0x5519u);
    return result;
  }

  v24 = ccder_sizeof(0xA000000000000010, *(a3 + 16));
  v25 = ccder_sizeof(2, 1uLL);
  if ((ccder_blob_encode_tl(&v30, 0x6000000000000010uLL, v25 + v24) & 1) == 0)
  {
    return &unk_1E74AC058;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = CEValidateWithOptions(v11, a2, &v27, a5, a6);
  result = &Errors;
  if (v26 != &Errors)
  {
    cc_clear(v12, a5);
    return v26;
  }

  return result;
}

unint64_t der_vm_execute_nocopy@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v100 = *MEMORY[0x1E69E9840];
  if ((*(result + 33) & 1) == 0)
  {
    goto LABEL_43;
  }

  v6 = *result;
  v7 = *result + 64;
  v8 = *a2;
  v9 = *a2 & 0xBFFFFFFFFFFFFFFFLL;
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          if (v9 != 2)
          {
            goto LABEL_197;
          }

          if (result + 56 >= result)
          {
            v10 = *(result + 32);
            *(a3 + 16) = *(result + 16);
            *(a3 + 32) = v10;
            *a3 = *result;
            *(a3 + 48) = *(result + 48);
            *(a3 + 33) = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            v11 = *(a2 + 8);
            v96 = 0uLL;
            *v93 = *(result + 40);
            result = der_decode_next(v6, 0, 0, &v96, v93);
            if (result)
            {
              v12 = v96 < *(&v96 + 1);
              if (v96 >= *(&v96 + 1) || v11 < 1)
              {
                v13 = v11;
LABEL_159:
                if (!v12 || v13 != 0)
                {
                  goto LABEL_45;
                }

                if (v6 < v7)
                {
                  result = der_decode_next(v6, 0, (a3 + 40), 0, &v96);
                  *(a3 + 33) = result;
                  goto LABEL_45;
                }
              }

              else
              {
                while (1)
                {
                  result = der_decode_next(v6, 0, 0, 0, &v96);
                  if ((result & 1) == 0)
                  {
                    break;
                  }

                  v13 = v11 - 1;
                  v12 = v96 < *(&v96 + 1);
                  if (v96 >= *(&v96 + 1) || v11-- <= 1)
                  {
                    goto LABEL_159;
                  }
                }

                v51 = *(v6 + 24);
                if (!v51)
                {
                  goto LABEL_45;
                }

                if (v6 < v7)
                {
                  v52 = "encountered invalid element in an array";
                  goto LABEL_177;
                }
              }
            }

            else
            {
              v51 = *(v6 + 24);
              if (!v51)
              {
                goto LABEL_45;
              }

              if (v6 < v7)
              {
                v52 = "array decoding failure";
LABEL_177:
                v65 = "der_vm_execute_select_index";
                goto LABEL_182;
              }
            }
          }

          goto LABEL_196;
        }

        if (result + 56 < result)
        {
          goto LABEL_196;
        }

        v35 = *(result + 16);
        v96 = *result;
        v97 = v35;
        LOBYTE(v98) = *(result + 32);
        *v93 = *(result + 34);
        *&v93[14] = *(result + 48);
        v36 = (a2 + 8);
        *(&v96 + 1) = 0;
        *&v97 = 0;
        if ((v8 & 0x4000000000000000) != 0)
        {
          v36 = *v36;
          v37 = 16;
        }

        else
        {
          v37 = 248;
        }

        *v86 = *(a2 + v37);
        v53 = *(result + 16);
        if (v53)
        {
          v54 = v36;
          v55 = 0;
          v7 = *(result + 40);
          *(a3 + 48) = *(result + 48);
          v56 = *(result + 32);
          *(a3 + 16) = *(result + 16);
          *(a3 + 32) = v56;
          *a3 = *result;
          *(a3 + 33) = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          v57 = v53 - 1;
          v58 = *(result + 8);
          while (1)
          {
            v59 = (v55 + v57) >> 1;
            v60 = *(v58 + 8 * v59);
            v6 = HIDWORD(v60);
            result = CEBuffer_cmp(v54, *v86, (v7 + v60), HIDWORD(v60));
            if (!result)
            {
              break;
            }

            if ((result & 0x80000000) != 0)
            {
              if (v55 + v57 < 2)
              {
                goto LABEL_45;
              }

              v57 = v59 - 1;
            }

            else
            {
              v55 = v59 + 1;
            }

            if (v55 > v57)
            {
              goto LABEL_45;
            }
          }

          *(a3 + 33) = 1;
          v71 = *(a3 + 40);
          v72 = v71 + (HIDWORD(v60) + v60);
          if (v72 <= *(a3 + 48) && v71 <= v72)
          {
            *(a3 + 40) = v72;
            goto LABEL_45;
          }

          goto LABEL_196;
        }

        __s1 = 0;
        v92 = 0;
        v90 = *(result + 40);
        result = der_decode_next(v6, 0, 0, &__s1, &v90);
        if (result)
        {
          if (*v86)
          {
            while (1)
            {
              if (__s1 >= v92)
              {
                goto LABEL_187;
              }

              v88 = 0;
              v89 = 0;
              v87 = 0uLL;
              if (v6 >= v7)
              {
                goto LABEL_196;
              }

              result = der_decode_key_value(v6, &v88, &v87, &__s1);
              if ((result & 1) == 0)
              {
                break;
              }

              result = CEBuffer_cmp(v36, *v86, v88, v89);
              if (!result)
              {
                *&v93[6] = v87;
                LOBYTE(v66) = 1;
LABEL_193:
                v84 = v97;
                *a3 = v96;
                *(a3 + 16) = v84;
                *(a3 + 32) = v98;
                *(a3 + 33) = v66;
                goto LABEL_188;
              }
            }

            v66 = *(v6 + 24);
            if (v66)
            {
              result = v66(v6, "[%s]: %s\n", "der_vm_execute_select_key", "invalid dictionary element");
              LOBYTE(v66) = 0;
            }

            goto LABEL_193;
          }

          v80 = *(v6 + 24);
          if (!v80)
          {
            goto LABEL_187;
          }

          if (v6 >= v7)
          {
            goto LABEL_196;
          }

          v81 = "key length is invalid";
        }

        else
        {
          v80 = *(v6 + 24);
          if (!v80)
          {
            goto LABEL_187;
          }

          if (v6 >= v7)
          {
            goto LABEL_196;
          }

          v81 = "dictionary decoding failure";
        }

        result = v80(v6, "[%s]: %s\n", "der_vm_execute_select_key", v81);
LABEL_187:
        v82 = v97;
        *a3 = v96;
        *(a3 + 16) = v82;
        *(a3 + 32) = v98;
        *(a3 + 33) = 0;
LABEL_188:
        *(a3 + 34) = *v93;
        v26 = *&v93[14];
        goto LABEL_44;
      }

      v24 = *(v6 + 24);
      if (v24)
      {
        if (v6 >= v7)
        {
          goto LABEL_196;
        }

        result = v24(v6, "[%s]: %s\n", "der_vm_execute_nocopy", "noop");
      }

LABEL_43:
      v25 = *(v3 + 16);
      *a3 = *v3;
      *(a3 + 16) = v25;
      *(a3 + 32) = *(v3 + 32);
      v26 = *(v3 + 48);
LABEL_44:
      *(a3 + 48) = v26;
      goto LABEL_45;
    }

    if (v9 == 3)
    {
      if (result + 56 >= result)
      {
        v31 = *MEMORY[0x1E69E9840];

        return der_vm_execute_match_string(a3, result, a2);
      }

      goto LABEL_196;
    }

    if (v9 == 4)
    {
      if (result + 56 >= result)
      {
        v39 = *MEMORY[0x1E69E9840];

        return der_vm_execute_match_string_prefix(a3, result, a2);
      }

      goto LABEL_196;
    }

    if (result + 56 >= result)
    {
      v18 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v18;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v93[0] = 0;
      v96 = *(result + 40);
      result = der_decode_BOOLean(v6, v93, &v96);
      if ((result & 1) == 0)
      {
        v51 = *(v6 + 24);
        if (!v51)
        {
          goto LABEL_45;
        }

        if (v6 < v7)
        {
          v52 = "BOOL decode failure";
          v65 = "der_vm_execute_match_BOOL";
          goto LABEL_182;
        }

        goto LABEL_196;
      }

      v19 = *(a2 + 8) == v93[0];
      goto LABEL_36;
    }

    do
    {
LABEL_196:
      __break(0x5519u);
LABEL_197:
      ;
    }

    while (v6 >= v7);
    v85 = (*(v6 + 32))(v6, "[%s]: %s\n", "der_vm_execute_nocopy", "unhandled opcode");
    return der_vm_execute(v85);
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      if (result + 56 < result)
      {
        goto LABEL_196;
      }

      v28 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v28;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      v29 = (a2 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      if ((v8 & 0x4000000000000000) != 0)
      {
        v29 = *v29;
        v30 = 16;
      }

      else
      {
        v30 = 248;
      }

      v44 = *(a2 + v30);
      v45 = *(result + 16);
      v96 = *result;
      v97 = v45;
      v98 = *(result + 32);
      v99 = *(result + 48);
      result = der_vm_CEType_from_context(&v96, 0);
      if (result != 2)
      {
        if (result != 4)
        {
          v51 = *(v6 + 24);
          if (!v51)
          {
            goto LABEL_45;
          }

          if (v6 < v7)
          {
            v52 = "Unexpected type to match against";
            v65 = "der_vm_execute_string_value_allowed";
            goto LABEL_182;
          }

          goto LABEL_196;
        }

        result = der_vm_execute_match_string(&v96, v3, a2);
        v23 = BYTE1(v98);
        if (BYTE1(v98) != 1)
        {
          v46 = *(v3 + 16);
          *v93 = *v3;
          *&v93[16] = v46;
          v94 = *(v3 + 32);
          v95 = *(v3 + 48);
          result = der_vm_string_from_context(v93);
          if (!v47)
          {
            goto LABEL_45;
          }

          v48 = v47 - 1;
          v49 = (result + v47 - 1);
          if (v49 >= result + v47 || v49 < result)
          {
            goto LABEL_196;
          }

          if (*v49 != 42)
          {
            goto LABEL_45;
          }

          if (v48 > v47)
          {
            goto LABEL_196;
          }

          if (v47 != 1)
          {
            if (v48 > v44)
            {
LABEL_107:
              v23 = 0;
              goto LABEL_39;
            }

            v50 = v29;
LABEL_190:
            result = memcmp(result, v50, v48);
            v19 = result == 0;
LABEL_36:
            v23 = v19;
            goto LABEL_39;
          }

LABEL_178:
          v23 = 1;
        }

LABEL_39:
        *(a3 + 33) = v23;
        goto LABEL_45;
      }

      *v93 = a3;
      *&v93[8] = a2;
      v67 = *(v3 + 16);
      v96 = *v3;
      v97 = v67;
      v98 = *(v3 + 32);
      v99 = *(v3 + 48);
      v68 = string_value_allowed_iterate;
    }

    else
    {
      if (v9 == 7)
      {
        if (result + 56 >= result)
        {
          v38 = *MEMORY[0x1E69E9840];

          return der_vm_execute_match_integer(a3, result, a2);
        }

        goto LABEL_196;
      }

      if (result + 56 < result)
      {
        goto LABEL_196;
      }

      v15 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v15;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      v16 = (a2 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      if ((v8 & 0x4000000000000000) != 0)
      {
        v16 = *v16;
        v17 = 16;
      }

      else
      {
        v17 = 248;
      }

      v61 = *(a2 + v17);
      v62 = *(result + 16);
      v96 = *result;
      v97 = v62;
      v98 = *(result + 32);
      v99 = *(result + 48);
      result = der_vm_CEType_from_context(&v96, 0);
      if (result != 2)
      {
        if (result != 4)
        {
          v51 = *(v6 + 24);
          if (!v51)
          {
            goto LABEL_45;
          }

          if (v6 < v7)
          {
            v52 = "Unexpected type to match against";
            v65 = "der_vm_execute_string_prefix_value_allowed";
            goto LABEL_182;
          }

          goto LABEL_196;
        }

        result = der_vm_execute_match_string_prefix(&v96, v3, a2);
        v23 = BYTE1(v98);
        if (BYTE1(v98) != 1)
        {
          v63 = *(v3 + 16);
          *v93 = *v3;
          *&v93[16] = v63;
          v94 = *(v3 + 32);
          v95 = *(v3 + 48);
          result = der_vm_string_from_context(v93);
          if (v61)
          {
            if (v61 > v64)
            {
              goto LABEL_107;
            }

            v83 = result;
            result = v16;
            v50 = v83;
            v48 = v61;
            goto LABEL_190;
          }

          goto LABEL_178;
        }

        goto LABEL_39;
      }

      *v93 = a3;
      *&v93[8] = a2;
      v70 = *(v3 + 16);
      v96 = *v3;
      v97 = v70;
      v98 = *(v3 + 32);
      v99 = *(v3 + 48);
      v68 = string_prefix_allowed_iterate;
    }

LABEL_121:
    result = der_vm_iterate(&v96, v93, v68);
    goto LABEL_45;
  }

  if (v9 != 9)
  {
    if (v9 != 10)
    {
      if (v9 != 11)
      {
        goto LABEL_197;
      }

      if (result + 56 < result)
      {
        goto LABEL_196;
      }

      v20 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v20;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v21 = *(a2 + 8);
      if ((v21 - 7) < 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_45;
      }

      v22 = *(result + 16);
      v96 = *result;
      v97 = v22;
      v98 = *(result + 32);
      v99 = *(result + 48);
      result = der_vm_CEType_from_context(&v96, 0);
      if (!result)
      {
        goto LABEL_45;
      }

      v19 = result == v21;
      goto LABEL_36;
    }

    if (result + 56 < result)
    {
      goto LABEL_196;
    }

    v40 = *(result + 16);
    v41 = *(result + 32);
    v42 = *result;
    v43 = *result;
    *(a3 + 16) = v40;
    *(a3 + 32) = v41;
    *a3 = v42;
    *(a3 + 48) = *(result + 48);
    *(a3 + 33) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v96 = v43;
    v97 = v40;
    v98 = *(result + 32);
    v99 = *(result + 48);
    result = der_vm_CEType_from_context(&v96, 0);
    if (result != 2)
    {
      if (result != 3)
      {
        v51 = *(v6 + 24);
        if (!v51)
        {
          goto LABEL_45;
        }

        if (v6 < v7)
        {
          v52 = "Unexpected type to match against";
          v65 = "der_vm_execute_integer_value_allowed";
          goto LABEL_182;
        }

        goto LABEL_196;
      }

      result = der_vm_execute_match_integer(&v96, v3, a2);
      v23 = BYTE1(v98);
      if (BYTE1(v98) != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    *v93 = a3;
    *&v93[8] = a2;
    v69 = *(v3 + 16);
    v96 = *v3;
    v97 = v69;
    v98 = *(v3 + 32);
    v99 = *(v3 + 48);
    v68 = integer_allowed_iterate;
    goto LABEL_121;
  }

  if (result + 56 < result)
  {
    goto LABEL_196;
  }

  v32 = *(result + 32);
  *(a3 + 16) = *(result + 16);
  *(a3 + 32) = v32;
  *a3 = *result;
  *(a3 + 48) = *(result + 48);
  *(a3 + 33) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v96 = 0uLL;
  *v93 = *(result + 40);
  result = der_decode_next(v6, 0, 0, &v96, v93);
  if ((result & 1) == 0)
  {
    v51 = *(v6 + 24);
    if (!v51)
    {
      goto LABEL_45;
    }

    if (v6 < v7)
    {
      v52 = "dictionary decoding failure";
      goto LABEL_181;
    }

    goto LABEL_196;
  }

  v33 = (a2 + 8);
  if ((*(a2 + 7) & 0x40) != 0)
  {
    v33 = *v33;
    v34 = 16;
  }

  else
  {
    v34 = 248;
  }

  v74 = *(a2 + v34);
  if (!v74)
  {
    v51 = *(v6 + 24);
    if (!v51)
    {
      goto LABEL_45;
    }

    if (v6 < v7)
    {
      v52 = "key length is invalid";
      goto LABEL_181;
    }

    goto LABEL_196;
  }

  if (v96 >= *(&v96 + 1))
  {
    v75 = 0;
LABEL_173:
    *(a3 + 33) = v75;
    goto LABEL_45;
  }

  v75 = 0;
  while (1)
  {
    __s1 = 0;
    v92 = 0;
    v90 = 0uLL;
    if (v6 >= v7)
    {
      v75 = 0;
LABEL_195:
      *(a3 + 33) = v75;
      goto LABEL_196;
    }

    result = der_decode_key_value(v6, &__s1, &v90, &v96);
    if ((result & 1) == 0)
    {
      break;
    }

    if (v92)
    {
      v76 = __s1;
      v77 = __s1 + v92 - 1;
      if (v77 >= __s1 + v92 || v77 < __s1)
      {
        goto LABEL_195;
      }

      if (*v77 == 42)
      {
        if (v92 != 1)
        {
          if (v92 - 1 > v74)
          {
            goto LABEL_156;
          }

          result = memcmp(__s1, v33, v92 - 1);
          if (result)
          {
            goto LABEL_156;
          }
        }

LABEL_155:
        *(a3 + 40) = v90;
        v75 = 1;
        goto LABEL_156;
      }
    }

    else
    {
      v76 = __s1;
    }

    result = CEBuffer_cmp(v33, v74, v76, v92);
    if (!result)
    {
      goto LABEL_155;
    }

LABEL_156:
    if (v96 >= *(&v96 + 1))
    {
      goto LABEL_173;
    }
  }

  *(a3 + 33) = v75;
  v51 = *(v6 + 24);
  if (!v51)
  {
    goto LABEL_45;
  }

  v52 = "invalid dictionary element";
LABEL_181:
  v65 = "der_vm_execute_select_longest_matching_key";
LABEL_182:
  result = v51(v6, "[%s]: %s\n", v65, v52);
LABEL_45:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}