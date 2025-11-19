uint64_t process_head_service(_DWORD *a1, uint64_t a2)
{
  v3 = process_head_file();
  if (v3)
  {
    return v3;
  }

  else
  {
    *(a2 + 19400) = *(a2 + 19400) & 0xFD | 2;
    data_skip = rar5_read_data_skip(a1);
    if (data_skip)
    {
      return data_skip;
    }

    else
    {
      return -10;
    }
  }
}

uint64_t process_head_file()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v102 = *MEMORY[0x1E69E9840];
  v99 = v0;
  v98 = v1;
  v97 = v2;
  v96 = v3;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  size = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  archive_entry_clear(v2);
  if ((*(v98 + 56) & 4) == 0)
  {
    reset_file_context(v98);
  }

  if (v96)
  {
    v81 = 0;
    if (!read_var_sized(v99, &v81, 0, v4, v5, v6, v7, v8))
    {
      v100 = 1;
      goto LABEL_100;
    }

    v95 = v81;
  }

  if ((v96 & 2) != 0)
  {
    if (read_var_sized(v99, &v94, 0, v4, v5, v6, v7, v8))
    {
      *(v98 + 19368) = v94;
      if (read_var_sized(v99, &v93, 0, v9, v10, v11, v12, v13))
      {
        if (read_var(v99, &v88, 0, v15, v16, v17, v18, v19))
        {
          if ((v93 & 8) != 0)
          {
            archive_set_error(v99, 22, "Files with unknown unpacked size are not supported", v20, v21, v22, v23, v24, v75);
            v100 = -30;
          }

          else
          {
            *(v98 + 19400) = *(v98 + 19400) & 0xF7 | (8 * ((v93 & 1) != 0));
            if (read_var_sized(v99, &v92, 0, v20, v21, v22, v23, v24))
            {
              if ((v93 & 2) == 0 || read_u32(v99, &v86, v25, v26, v27, v28, v29, v30))
              {
                if ((v93 & 4) == 0 || read_u32(v99, &v85, v25, v26, v27, v28, v29, v30))
                {
                  if (read_var_sized(v99, &v91, 0, v26, v27, v28, v29, v30))
                  {
                    v84 = (v91 >> 7) & 7;
                    v83 = v91 & 0x3F;
                    if (v31 | (((*(v98 + 19400) >> 3) & 1) == 0))
                    {
                      v76 = 0x20000 << ((v91 >> 10) & 0xF);
                    }

                    else
                    {
                      v76 = 0;
                    }

                    size = v76;
                    *(v98 + 64) = v84;
                    *(v98 + 68) = v83 + 50;
                    *(v98 + 19400) = *(v98 + 19400) & 0xFE | ((v91 & 0x40) != 0);
                    if ((*(v98 + 19400) & 1) == 0 || *(v98 + 80))
                    {
                      if (size <= 0x4000000 && ((*(v98 + 19400) & 8) != 0 || size))
                      {
                        if (__OFSUB__(size, 0x4000000) || (*(v98 + 19400) & 1) == 0 || *(v98 + 21256) <= 0 || *(v98 + 21256) == size)
                        {
                          v37 = *(v98 + 72);
                          v38 = __OFSUB__(v37, size);
                          if (v37 < size && *(v98 + 80))
                          {
                            clear_data_ready_stack();
                            v80 = malloc_type_realloc(*(v98 + 80), size, 0x7B4F005DuLL);
                            if (!v80)
                            {
                              archive_set_error(v99, 22, "Not enough memory when trying to realloc the window buffer.", v39, v40, v41, v42, v43, v75);
                              v100 = -30;
                              goto LABEL_100;
                            }

                            *(v98 + 80) = v80;
                          }

                          *(v98 + 72) = size;
                          if (!v38 && (*(v98 + 19400) & 1) != 0 && !*(v98 + 21256))
                          {
                            *(v98 + 21256) = *(v98 + 72);
                          }

                          init_window_mask(v98);
                          *(v98 + 19400) &= ~2u;
                          if (read_var_sized(v99, &v90, 0, v44, v45, v46, v47, v48))
                          {
                            if (v90)
                            {
                              if (v90 != 1)
                              {
                                archive_set_error(v99, 79, "Unsupported Host OS: 0x%x", v49, v50, v51, v52, v53, v90);
                                v100 = -30;
                                goto LABEL_100;
                              }

                              archive_entry_set_mode(v97, v92);
                            }

                            else
                            {
                              if ((v92 & 0x10) != 0)
                              {
                                if (v92)
                                {
                                  archive_entry_set_mode(v97, 16749);
                                }

                                else
                                {
                                  archive_entry_set_mode(v97, 16877);
                                }
                              }

                              else if (v92)
                              {
                                archive_entry_set_mode(v97, 33060);
                              }

                              else
                              {
                                archive_entry_set_mode(v97, 33188);
                              }

                              if ((v92 & 7) != 0)
                              {
                                v79 = malloc_type_malloc(0x16uLL, 0x100004077774924uLL);
                                if (v79)
                                {
                                  v78 = v79;
                                  if (v92)
                                  {
                                    __strcpy_chk();
                                    v78 = v79 + 7;
                                  }

                                  if ((v92 & 2) != 0)
                                  {
                                    __strcpy_chk();
                                    v78 += 7;
                                  }

                                  if ((v92 & 4) != 0)
                                  {
                                    __strcpy_chk();
                                    v78 += 7;
                                  }

                                  if (v78 > v79)
                                  {
                                    *(v78 - 1) = 0;
                                    archive_entry_copy_fflags_text(v97, v79);
                                  }

                                  free(v79);
                                }
                              }
                            }

                            if (read_var_sized(v99, &v89, 0, v54, v55, v56, v57, v58))
                            {
                              if (read_ahead(v99, v89, &v82, v59, v60, v61, v62, v63))
                              {
                                if (v89 <= 0x7FF)
                                {
                                  if (v89)
                                  {
                                    __memcpy_chk();
                                    v101[v89] = 0;
                                    if (consume(v99, v89))
                                    {
                                      v100 = 1;
                                    }

                                    else
                                    {
                                      archive_entry_update_pathname_utf8(v97, v101);
                                      v73 = 0;
                                      if (v95 > 0 && (v77 = process_head_file_extra(v99, v97, v98, v95, v69, v70, v71, v72)) != 0)
                                      {
                                        v100 = v77;
                                      }

                                      else
                                      {
                                        if ((v93 & 8) == 0)
                                        {
                                          *(v98 + 19376) = v88;
                                          if (!*(v98 + 21240))
                                          {
                                            archive_entry_set_size(v97, v88);
                                          }
                                        }

                                        if ((v93 & 2) != 0)
                                        {
                                          archive_entry_set_mtime(v97, v86, 0);
                                        }

                                        if ((v93 & 4) != 0)
                                        {
                                          *(v98 + 19436) = v85;
                                        }

                                        if ((*(v98 + 56) & 4) == 0)
                                        {
                                          *(v98 + 56) = *(v98 + 56) & 0xF7 | 8;
                                          *(v98 + 56) = *(v98 + 56) & 0xFD | 2;
                                          *(v98 + 56) &= ~1u;
                                        }

                                        if (v73 | (((*(v98 + 32) >> 1) & 1) == 0))
                                        {
                                          v100 = 0;
                                        }

                                        else
                                        {
                                          v100 = -10;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    archive_set_error(v99, 79, "No filename specified", v64, v65, v66, v67, v68, v75);
                                    v100 = -30;
                                  }
                                }

                                else
                                {
                                  archive_set_error(v99, 79, "Filename is too long", v64, v65, v66, v67, v68, v75);
                                  v100 = -30;
                                }
                              }

                              else
                              {
                                v100 = 1;
                              }
                            }

                            else
                            {
                              v100 = 1;
                            }
                          }

                          else
                          {
                            v100 = 1;
                          }
                        }

                        else
                        {
                          archive_set_error(v99, 79, "Window size for this solid file doesn't match the window size used in previous solid file. ", v32, v33, v34, v35, v36, v75);
                          v100 = -30;
                        }
                      }

                      else
                      {
                        archive_set_error(v99, 79, "Declared dictionary size is not supported.", v32, v33, v34, v35, v36, v75);
                        v100 = -30;
                      }
                    }

                    else
                    {
                      archive_set_error(v99, 79, "Declared solid file, but no window buffer initialized yet.", v32, v33, v34, v35, v36, v75);
                      v100 = -30;
                    }
                  }

                  else
                  {
                    v100 = 1;
                  }
                }

                else
                {
                  v100 = 1;
                }
              }

              else
              {
                v100 = 1;
              }
            }

            else
            {
              v100 = 1;
            }
          }
        }

        else
        {
          v100 = 1;
        }
      }

      else
      {
        v100 = 1;
      }
    }

    else
    {
      v100 = 1;
    }
  }

  else
  {
    *(v98 + 19368) = 0;
    archive_set_error(v99, 79, "no data found in file/service block", v4, v5, v6, v7, v8, v75);
    v100 = -30;
  }

LABEL_100:
  *MEMORY[0x1E69E9840];
  return v100;
}

uint64_t scan_for_signature(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v8 = 0;
  rar5_signature(__s2);
  while (read_ahead(v9, 0x200uLL, &v8, v1, v2, v3, v4, v5))
  {
    for (i = 0; i < 504; ++i)
    {
      if (!memcmp((v8 + i), __s2, 8uLL))
      {
        consume(v9, i + 8);
        v10 = 0;
        goto LABEL_10;
      }
    }

    consume(v9, 0x200uLL);
  }

  v10 = 1;
LABEL_10:
  *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t read_var(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if (read_ahead(a1, 8uLL, &v10, a4, a5, a6, a7, a8))
  {
    v12 = 0;
    v11 = 0;
    while (v11 < 8)
    {
      v9 = *(v10 + v11);
      v13 += (v9 & 0x7F) << v12;
      if ((v9 & 0x80) == 0)
      {
        if (v15)
        {
          *v15 = v13;
        }

        if (v14)
        {
          *v14 = v11 + 1;
        }

        else if (consume(v16, v11 + 1))
        {
          return 0;
        }

        return 1;
      }

      ++v11;
      v12 += 7;
    }

    if (v15)
    {
      *v15 = v13;
    }

    if (v14)
    {
      *v14 = 9;
    }

    else if (consume(v16, 9uLL))
    {
      return 0;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL process_main_locator_extra_block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  return !read_var(a1, &v14, 0, a4, a5, a6, a7, a8) || (v14 & 1) != 0 && !read_var(v16, (v15 + 16), 0, v8, v9, v10, v11, v12) || (v14 & 2) != 0 && !read_var(v16, (v15 + 24), 0, v8, v9, v10, v11, v12);
}

_WORD *reset_file_context(uint64_t a1)
{
  __memset_chk();
  blake2sp_init(a1 + 19480, 0x20uLL);
  if (*(a1 + 44))
  {
    *(a1 + 136) += *(a1 + 112);
  }

  else
  {
    *(a1 + 136) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 21240) = 0;
  *(a1 + 21248) = 0;
  return free_filters(a1);
}

uint64_t init_window_mask(uint64_t result)
{
  if (*(result + 72))
  {
    *(result + 104) = *(result + 72) - 1;
  }

  else
  {
    *(result + 104) = 0;
  }

  return result;
}

uint64_t process_head_file_extra(_DWORD *a1, _DWORD **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v21 = 0;
  v20 = -30;
  v19 = 0;
  while (v23 > 0)
  {
    if (!read_var_sized(v26, &v22, &v19, a4, a5, a6, a7, a8))
    {
      return 1;
    }

    v23 -= v19;
    if (consume(v26, v19))
    {
      return 1;
    }

    if (!read_var_sized(v26, &v21, &v19, v8, v9, v10, v11, v12))
    {
      return 1;
    }

    v23 -= v19;
    if (consume(v26, v19))
    {
      return 1;
    }

    switch(v21)
    {
      case 1:
        return consume(v26, v23);
      case 2:
        v20 = parse_file_extra_hash(v26, v24, &v23, v13, v14, v15, v16, v17);
        break;
      case 3:
        v20 = parse_file_extra_htime(v26, v25, v24, &v23, v14, v15, v16, v17);
        break;
      case 4:
        v20 = parse_file_extra_version(v26, v25, &v23, v13, v14, v15, v16, v17);
        break;
      case 5:
        v20 = parse_file_extra_redir();
        break;
      case 6:
        v20 = parse_file_extra_owner(v26, v25, &v23, v13, v14, v15, v16, v17);
        break;
      default:
        return consume(v26, v23);
    }
  }

  if (v20)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

uint64_t cdeque_pop_front(unsigned __int16 *a1, void *a2)
{
  if (a1 && a2)
  {
    if (a1[3])
    {
      cdeque_pop_front_fast(a1, a2);
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 2;
  }
}

unsigned __int16 *cdeque_pop_front_fast(unsigned __int16 *result, void *a2)
{
  *a2 = *(*(result + 1) + 8 * *result);
  *result = (*result + 1) & result[2];
  --result[3];
  return result;
}

uint64_t parse_file_extra_hash(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = 0;
  v15 = 0;
  if (read_var_sized(a1, &v16, &v15, a4, a5, a6, a7, a8))
  {
    *v17 -= v15;
    if (consume(v19, v15))
    {
      return 1;
    }

    else if (v16)
    {
      archive_set_error(v19, 79, "Unsupported hash type (0x%x)", v8, v9, v10, v11, v12, v16);
      return -30;
    }

    else
    {
      v14 = 0;
      if (read_ahead(v19, 0x20uLL, &v14, v8, v9, v10, v11, v12))
      {
        *(v18 + 21232) = 1;
        __memcpy_chk();
        if (consume(v19, 0x20uLL))
        {
          return 1;
        }

        else
        {
          *v17 -= 32;
          return 0;
        }
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    return 1;
  }
}

uint64_t parse_file_extra_htime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (read_var_sized(a1, &v16, &v15, a4, a5, a6, a7, a8))
  {
    *v18 -= v15;
    if (!consume(v21, v15))
    {
      v17 = v16 & 1;
      if ((v16 & 2) != 0)
      {
        parse_htime_item(v21, v17, v19 + 19408, v18, v10, v11, v12, v13);
        archive_entry_set_mtime(v20, *(v19 + 19408), 0);
      }

      if ((v16 & 4) != 0)
      {
        parse_htime_item(v21, v17, v19 + 19416, v18, v10, v11, v12, v13);
        archive_entry_set_ctime(v20, *(v19 + 19416), 0);
      }

      if ((v16 & 8) != 0)
      {
        parse_htime_item(v21, v17, v19 + 19424, v18, v10, v11, v12, v13);
        archive_entry_set_atime(v20, *(v19 + 19424), 0);
      }

      if ((v16 & 0x10) != 0)
      {
        if (!read_u32(v21, (v19 + 19432), v8, v9, v10, v11, v12, v13))
        {
          return 1;
        }

        *v18 -= 4;
      }

      return 0;
    }

    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t parse_file_extra_redir()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v40 = *MEMORY[0x1E69E9840];
  v37 = v0;
  v36 = v1;
  v35 = v2;
  v34 = v3;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (read_var(v0, (v2 + 21240), &v33, v3, v4, v5, v6, v7))
  {
    if (consume(v37, v33))
    {
      v38 = 1;
    }

    else
    {
      *v34 -= v33;
      if (read_var(v37, (v35 + 21248), &v33, v8, v9, v10, v11, v12))
      {
        if (consume(v37, v33))
        {
          v38 = 1;
        }

        else
        {
          *v34 -= v33;
          if (read_var_sized(v37, &v32, 0, v13, v14, v15, v16, v17))
          {
            *v34 -= v32 + 1;
            if (read_ahead(v37, v32, &v31, v18, v19, v20, v21, v22))
            {
              if (v32 <= 0x7FF)
              {
                if (v32)
                {
                  __memcpy_chk();
                  v39[v32] = 0;
                  if (consume(v37, v32))
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v30 = *(v35 + 21240);
                    if ((v30 - 1) <= 1)
                    {
                      archive_entry_set_filetype(v36, 40960);
                      archive_entry_update_symlink_utf8(v36, v39);
                      if (*(v35 + 21248))
                      {
                        archive_entry_set_symlink_type(v36, 2);
                      }

                      else
                      {
                        archive_entry_set_symlink_type(v36, 1);
                      }
                    }

                    else if (v30 == 4)
                    {
                      archive_entry_set_filetype(v36, 0x8000);
                      archive_entry_update_hardlink_utf8(v36, v39);
                    }

                    v38 = 0;
                  }
                }

                else
                {
                  archive_set_error(v37, 79, "No link target specified", v23, v24, v25, v26, v27, v29);
                  v38 = -30;
                }
              }

              else
              {
                archive_set_error(v37, 79, "Link target is too long", v23, v24, v25, v26, v27, v29);
                v38 = -30;
              }
            }

            else
            {
              v38 = 1;
            }
          }

          else
          {
            v38 = 1;
          }
        }
      }

      else
      {
        v38 = 1;
      }
    }
  }

  else
  {
    v38 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v38;
}

uint64_t parse_file_extra_owner(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (read_var(a1, &v29, &v28, a4, a5, a6, a7, a8))
  {
    if (!consume(v32, v28))
    {
      *v30 -= v28;
      if (v29)
      {
        if (!read_var_sized(v32, &v25, 0, v8, v9, v10, v11, v12))
        {
          v33 = 1;
          goto LABEL_40;
        }

        *v30 -= v25 + 1;
        if (!read_ahead(v32, v25, &v24, v13, v14, v15, v16, v17))
        {
          v33 = 1;
          goto LABEL_40;
        }

        if (v25 < 0x100)
        {
          v26 = v25;
        }

        else
        {
          v26 = 255;
        }

        __memcpy_chk();
        v34[v26] = 0;
        if (consume(v32, v25))
        {
          v33 = 1;
          goto LABEL_40;
        }

        archive_entry_set_uname(v31, v34);
      }

      if ((v29 & 2) != 0)
      {
        if (!read_var_sized(v32, &v25, 0, v8, v9, v10, v11, v12))
        {
          v33 = 1;
          goto LABEL_40;
        }

        *v30 -= v25 + 1;
        if (!read_ahead(v32, v25, &v24, v18, v19, v20, v21, v22))
        {
          v33 = 1;
          goto LABEL_40;
        }

        if (v25 < 0x100)
        {
          v26 = v25;
        }

        else
        {
          v26 = 255;
        }

        __memcpy_chk();
        v34[v26] = 0;
        if (consume(v32, v25))
        {
          v33 = 1;
          goto LABEL_40;
        }

        archive_entry_set_gname(v31, v34);
      }

      if ((v29 & 4) != 0)
      {
        if (!read_var(v32, &v27, &v28, v8, v9, v10, v11, v12))
        {
          v33 = 1;
          goto LABEL_40;
        }

        if (consume(v32, v28))
        {
          v33 = 1;
          goto LABEL_40;
        }

        *v30 -= v28;
        archive_entry_set_uid(v31, v27);
      }

      if ((v29 & 8) != 0)
      {
        if (!read_var(v32, &v27, &v28, v8, v9, v10, v11, v12))
        {
          v33 = 1;
          goto LABEL_40;
        }

        if (consume(v32, v28))
        {
          v33 = 1;
          goto LABEL_40;
        }

        *v30 -= v28;
        archive_entry_set_gid(v31, v27);
      }

      v33 = 0;
      goto LABEL_40;
    }

    v33 = 1;
  }

  else
  {
    v33 = 1;
  }

LABEL_40:
  *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t parse_file_extra_version(_DWORD *a1, _DWORD **a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (read_var_sized(a1, &v30, &v28, a4, a5, a6, a7, a8))
  {
    *v31 -= v28;
    if (consume(v33, v28))
    {
      return 1;
    }

    else if (read_var_sized(v33, &v29, &v28, v8, v9, v10, v11, v12))
    {
      *v31 -= v28;
      if (consume(v33, v28))
      {
        return 1;
      }

      else
      {
        v21 = archive_entry_pathname_utf8(v32);
        if (v21)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          archive_string_sprintf(&v25, ";%zu", v13, v14, v15, v16, v17, v18, v29);
          archive_strcat(&v22, v21);
          archive_strcat(&v22, v25);
          archive_entry_update_pathname_utf8(v32, v22);
          archive_string_free(&v25);
          archive_string_free(&v22);
          return 0;
        }

        else
        {
          archive_set_error(v33, 22, "Version entry without file name", v14, v15, v16, v17, v18, v20);
          return -30;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t parse_htime_item(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  if (!a2)
  {
    v10 = 0;
    if (!read_u64(v15, &v10, a3, a4, a5, a6, a7, a8))
    {
      return 1;
    }

    v8 = time_win_to_unix(v10);
    *v13 = v8;
    *v12 -= 8;
    return 0;
  }

  v11 = 0;
  if (read_u32(v15, &v11, a3, a4, a5, a6, a7, a8))
  {
    *v12 -= 4;
    *v13 = v11;
    return 0;
  }

  return 1;
}

BOOL read_u64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  if (read_ahead(a1, 8uLL, &v10, a4, a5, a6, a7, a8))
  {
    v8 = archive_le64dec_1(v10);
    *v11 = v8;
    return consume(v12, 8uLL) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t use_data(uint64_t a1, void *a2, void *a3, void *a4)
{
  for (i = 0; ; ++i)
  {
    if (i >= 2)
    {
      return -10;
    }

    v5 = a1 + 19304 + 32 * i;
    if (*v5)
    {
      break;
    }
  }

  if (a2)
  {
    *a2 = *(v5 + 8);
  }

  if (a3)
  {
    *a3 = *(v5 + 16);
  }

  if (a4)
  {
    *a4 = *(v5 + 24);
  }

  *v5 = 0;
  return 0;
}

uint64_t do_unpack(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (v8 | (((*(a2 + 19400) >> 1) & 1) == 0) && (v10 = *(a2 + 64)) != 0)
  {
    if ((v10 - 1) <= 4)
    {
      if (a5)
      {
        *a5 = *(a2 + 120);
      }

      return uncompress_file(a1);
    }

    else
    {
      archive_set_error(a1, 79, "Compression method not supported: 0x%x", a4, a5, a6, a7, a8, *(a2 + 64));
      return -30;
    }
  }

  else
  {
    return do_unstore_file(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t do_unstore_file(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = 0;
  v18 = 0;
  if (*(a2 + 19368) || v8 | (((v23[44] >> 1) & 1) == 0) || v8 | ((v23[32] & 1) == 0) || (v23[56] = v23[56] & 0xFB | 4, v17 = advance_multivolume(v24), v23[56] &= ~4u, !v17))
  {
    if (*(v23 + 2421) <= 0x10000)
    {
      v16 = *(v23 + 2421);
    }

    else
    {
      v16 = 0x10000;
    }

    v19 = v16;
    if (v16)
    {
      if (read_ahead(v24, v19, &v18, a4, a5, a6, a7, a8))
      {
        if (consume(v24, v19))
        {
          return 1;
        }

        else
        {
          if (v22)
          {
            *v22 = v18;
          }

          if (v21)
          {
            *v21 = v19;
          }

          if (v20)
          {
            *v20 = *(v23 + 16);
          }

          *(v23 + 2421) -= v19;
          *(v23 + 16) += v19;
          update_crc(v23, v18, v19);
          return 0;
        }
      }

      else
      {
        archive_set_error(v24, 79, "I/O error when unstoring file", v9, v10, v11, v12, v13, v15);
        return -30;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return v17;
  }
}

uint64_t uncompress_file(_DWORD *a1)
{
  do
  {
    v2 = do_uncompress_file(a1);
  }

  while (v2 == -10);
  return v2;
}

uint64_t advance_multivolume(uint64_t a1)
{
  context = get_context(a1);
  while (((*(context + 44) >> 2) & 1) != 1)
  {
    v5 = skip_base_block(a1);
    if (v5 == -30 || v5 == -25)
    {
      return v5;
    }

    if (v5 != -10 && (*(context + 44) & 4) == 0)
    {
      return v5;
    }
  }

  v2 = 1;
  *(context + 44) &= ~4u;
  while (v2)
  {
    v4 = skip_base_block(a1);
    if (v4 != -10)
    {
      if (v4)
      {
        return v4;
      }

      v2 = 0;
    }
  }

  return 0;
}

char *update_crc(char *result, const Bytef *a2, unint64_t a3)
{
  v5 = result;
  if (!*(result + 2))
  {
    if (*(result + 4859))
    {
      result = crc32(*(result + 4860), a2, a3);
      *(v5 + 4860) = result;
    }

    if (v5[21232] > 0)
    {
      return blake2sp_update((v5 + 19480), a2, a3);
    }
  }

  return result;
}

uint64_t skip_base_block(uint64_t a1)
{
  context = get_context(a1);
  v2 = archive_entry_new();
  v4 = process_base_block(a1, v2);
  archive_entry_free(v2);
  if (v4 == -30)
  {
    return -30;
  }

  else if (*(context + 40) == 2 && ((*(context + 32) >> 1) & 1) != 0)
  {
    return 0;
  }

  else if (v4)
  {
    return v4;
  }

  else
  {
    return -10;
  }
}

uint64_t do_uncompress_file(_DWORD *a1)
{
  context = get_context(a1);
  if ((*(context + 56) & 1) == 0)
  {
    if ((*(context + 44) & 1) == 0 || !*(context + 80))
    {
      init_unpack(context);
    }

    *(context + 56) = *(context + 56) & 0xFE | 1;
  }

  if (*(context + 72))
  {
    if (((*(context + 56) >> 1) & 1) == 1)
    {
      do
      {
        v16 = process_block(a1);
        if (v16 == 1 || v16 == -30)
        {
          return v16;
        }

        if (*(context + 120) != *(context + 112))
        {
          goto LABEL_16;
        }
      }

      while (!bf_is_last_block((context + 21288)));
      return 1;
    }

    else
    {
LABEL_16:
      v17 = apply_filters(a1);
      if (v17 == -10)
      {
        return 0;
      }

      else if (v17 == -30)
      {
        return -30;
      }

      else
      {
        if (cdeque_size(context + 19256))
        {
          cdeque_filter_p();
          if (cdeque_front((context + 19256), v10))
          {
            archive_set_error(a1, 22, "Can't read first filter", v11, v6, v7, v8, v9, v13);
            return -30;
          }

          if (MEMORY[0x10] <= *(context + 112))
          {
            v14 = MEMORY[0x10];
          }

          else
          {
            v14 = *(context + 112);
          }

          v15 = v14;
        }

        else
        {
          v15 = *(context + 112);
        }

        if (v15 == *(context + 120))
        {
          return -10;
        }

        else
        {
          push_window_data(a1, context, *(context + 120), v15, v6, v7, v8, v9);
          *(context + 120) = v15;
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(a1, 79, "Invalid window size declaration in this file", v1, v2, v3, v4, v5, v13);
    return -30;
  }
}

uint64_t init_unpack(uint64_t a1)
{
  *(a1 + 19440) = 0;
  init_window_mask(a1);
  free(*(a1 + 80));
  free(*(a1 + 88));
  if (*(a1 + 72) <= 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    *(a1 + 80) = malloc_type_calloc(1uLL, *(a1 + 72), 0x190C64D0uLL);
    *(a1 + 88) = malloc_type_calloc(1uLL, *(a1 + 72), 0x1AC5B2BEuLL);
  }

  clear_data_ready_stack();
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  __memset_chk();
  __memset_chk();
  __memset_chk();
  __memset_chk();
  return __memset_chk();
}

uint64_t process_block(_DWORD *a1)
{
  v24 = a1;
  v23 = 0;
  context = get_context(a1);
  v21 = 0;
  if ((*(context + 44) & 2) != 0 && !*(context + 19368) && (v21 = advance_multivolume(v24)) != 0)
  {
    return v21;
  }

  else
  {
    if ((*(context + 56) & 8) != 0)
    {
      v20 = 0;
      if (!read_ahead(v24, 6uLL, &v23, v1, v2, v3, v4, v5))
      {
        return 1;
      }

      v21 = parse_block_header(v24, v23, &v20, (context + 21288));
      if (v21)
      {
        return v21;
      }

      v19 = bf_byte_count((context + 21288)) + 3;
      if (consume(v24, v19))
      {
        return 1;
      }

      *(context + 19368) -= v19;
      if (*(context + 19368) <= v20)
      {
        v17 = *(context + 19368);
      }

      else
      {
        v17 = v20;
      }

      v18 = v17;
      if (v20 <= *(context + 19368))
      {
        *(context + 56) &= ~4u;
        if (!read_ahead(v24, v17 + 4, &v23, v6, v7, v8, v9, v10))
        {
          return 1;
        }
      }

      else
      {
        v21 = merge_block(v24, v20, &v23);
        if (v21)
        {
          return v21;
        }

        v18 = v20;
      }

      *(context + 96) = v23;
      *(context + 144) = v18;
      *(context + 56) &= ~8u;
      *(context + 21268) = 0;
      *(context + 21264) = 0;
      if (bf_is_table_present((context + 21288)))
      {
        v21 = parse_tables(v24, context, v23, v11, v12, v13, v14, v15);
        if (v21)
        {
          return v21;
        }
      }
    }

    else
    {
      v23 = *(context + 96);
    }

    v21 = do_uncompress_block(v24, v23);
    if (!v21)
    {
      if ((*(context + 56) & 8) == 0 || (*(context + 56) & 4) != 0 || *(context + 144) <= 0)
      {
        if ((*(context + 56) & 4) != 0)
        {
          *(context + 56) &= ~4u;
        }
      }

      else
      {
        if (consume(v24, *(context + 144)))
        {
          return -30;
        }

        *(context + 19368) -= *(context + 144);
      }

      return 0;
    }

    return v21;
  }
}

uint64_t apply_filters(_DWORD *a1)
{
  context = get_context(a1);
  *(context + 56) &= ~2u;
  cdeque_filter_p();
  if (cdeque_front((context + 19256), v1) || *(context + 112) <= MEMORY[0x10] || *(context + 112) < MEMORY[0x10] + MEMORY[0x18])
  {
    *(context + 56) = *(context + 56) & 0xFD | 2;
    return 0;
  }

  if (*(context + 120) != MEMORY[0x10])
  {
    push_window_data(a1, context, *(context + 120), MEMORY[0x10], v2, v3, v4, v5);
    return -10;
  }

  v8 = run_filter(a1, 0);
  if (!v8)
  {
    cdeque_filter_p();
    cdeque_pop_front((context + 19256), v6);
    free(0);
    return -10;
  }

  return v8;
}

uint64_t cdeque_front(unsigned __int16 *a1, void *a2)
{
  if (a1[3])
  {
    cdeque_front_fast(a1, a2);
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t parse_block_header(_DWORD *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  __memcpy_chk();
  if (bf_byte_count(a4) <= 2)
  {
    *a3 = 0;
    v16 = bf_byte_count(a4);
    if (v16)
    {
      if (v16 == 1)
      {
        *a3 = archive_le16dec_2((a2 + 2));
      }

      else
      {
        if (v16 != 2)
        {
          return -30;
        }

        *a3 = archive_le32dec_6((a2 + 2));
        *a3 &= 0xFFFFFFuLL;
      }
    }

    else
    {
      *a3 = *(a2 + 2);
    }

    if ((*a4 ^ 0x5A ^ *a3 ^ BYTE1(*a3) ^ BYTE2(*a3)) == a4[1])
    {
      return 0;
    }

    else
    {
      archive_set_error(a1, 79, "Block checksum error: got 0x%x, expected 0x%x", v10, v11, v12, v13, v14, a4[1]);
      return -30;
    }
  }

  else
  {
    v4 = bf_byte_count(a4);
    archive_set_error(a1, 79, "Unsupported block header size (was %d, max is 2)", v5, v6, v7, v8, v9, v4);
    return -30;
  }
}

uint64_t merge_block(_DWORD *a1, int64_t a2, void *a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  context = get_context(a1);
  v31 = 0;
  v30 = 0;
  v29 = 0;
  if (*(context + 12))
  {
    archive_set_error(v35, 22, "Recursive merge is not allowed", v3, v4, v5, v6, v7, v26);
    return -30;
  }

  else
  {
    *(context + 56) = *(context + 56) & 0xFB | 4;
    if (*(context + 21280))
    {
      free(*(context + 21280));
    }

    *(context + 21280) = malloc_type_malloc(v34 + 8, 0xADB13346uLL);
    if (*(context + 21280))
    {
      v13 = *(context + 21280);
      __memset_chk();
      while (1)
      {
        if (*(context + 19368) <= v34 - v30)
        {
          v27 = *(context + 19368);
        }

        else
        {
          v27 = v34 - v30;
        }

        v31 = v27;
        if (!v27)
        {
          archive_set_error(v35, 79, "Encountered block size == 0 during block merge", v14, v15, v16, v17, v18, 0);
          return -30;
        }

        if (!read_ahead(v35, v31, &v29, v14, v15, v16, v17, v18))
        {
          return 1;
        }

        if ((v30 + v31) > v34)
        {
          archive_set_error(v35, 22, "Consumed too much data when merging blocks.", v19, v20, v21, v22, v23, v27);
          return -30;
        }

        v24 = *(context + 21280);
        __memcpy_chk();
        if (consume(v35, v31))
        {
          return 1;
        }

        v30 += v31;
        *(context + 19368) -= v31;
        if (v30 == v34)
        {
          *v33 = *(context + 21280);
          return 0;
        }

        if (!*(context + 19368))
        {
          ++*(context + 12);
          v28 = advance_multivolume(v35);
          --*(context + 12);
          if (v28)
          {
            break;
          }
        }
      }

      return v28;
    }

    else
    {
      archive_set_error(v35, 12, "Can't allocate memory for a merge block buffer.", v8, v9, v10, v11, v12, v26);
      return -30;
    }
  }
}

uint64_t parse_tables(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = *MEMORY[0x1E69E9840];
  v67 = a1;
  v66 = a2;
  v65 = a3;
  decode_tables = 0;
  v63 = 0;
  v60 = 0;
  v59 = -16;
  v58 = 4;
  v61 = 0;
  v62 = 0;
  while (v61 < 20)
  {
    if (v62 >= *(v66 + 144))
    {
      archive_set_error(v67, 79, "Truncated data in huffman tables", a4, a5, a6, a7, a8, v50);
      v68 = -30;
      goto LABEL_59;
    }

    v63 = (*(v65 + v62) & v59) >> v58;
    if (v59 == 15)
    {
      ++v62;
    }

    v59 = ~v59;
    v58 ^= 4u;
    if (v63 == 15)
    {
      v63 = (*(v65 + v62) & v59) >> v58;
      if (v59 == 15)
      {
        ++v62;
      }

      v59 = ~v59;
      v58 ^= 4u;
      if (v63)
      {
        for (i = 0; ; ++i)
        {
          v53 = 0;
          if (i < v63 + 2)
          {
            v53 = v61 < 20;
          }

          if (!v53)
          {
            break;
          }

          v9 = v61++;
          v70[v9] = 0;
        }
      }

      else
      {
        v8 = v61++;
        v70[v8] = 15;
      }
    }

    else
    {
      v10 = v61++;
      v70[v10] = v63;
    }
  }

  *(v66 + 21268) = v62;
  *(v66 + 21264) = v58 ^ 4;
  decode_tables = create_decode_tables(v70, (v66 + 156), 20);
  if (decode_tables)
  {
    archive_set_error(v67, 79, "Decoding huffman tables failed", v11, v12, v13, v14, v15, v50);
    v68 = -30;
  }

  else
  {
    v62 = 0;
    while (v62 < 430)
    {
      v56 = 0;
      decode_tables = decode_number(v67, (v66 + 156), v65, &v56);
      if (decode_tables)
      {
        archive_set_error(v67, 79, "Decoding huffman tables failed", v16, v17, v18, v19, v20, v50);
        v68 = -30;
        goto LABEL_59;
      }

      if (v56 >= 0x10u)
      {
        if (v56 >= 0x12u)
        {
          v54 = 0;
          decode_tables = read_bits_16(v67, v66, v65, &v54, v17, v18, v19, v20);
          if (decode_tables)
          {
            v68 = decode_tables;
            goto LABEL_59;
          }

          if (v56 == 18)
          {
            v54 = v54 >> 13;
            v54 += 3;
            skip_bits(v66, 3);
          }

          else
          {
            v54 = v54 >> 9;
            v54 += 11;
            skip_bits(v66, 7);
          }

          while (1)
          {
            v27 = v54--;
            v51 = 0;
            if (v27 > 0)
            {
              v51 = v62 < 430;
            }

            if (!v51)
            {
              break;
            }

            v28 = v62++;
            v69[v28] = 0;
          }
        }

        else
        {
          v55 = 0;
          decode_tables = read_bits_16(v67, v66, v65, &v55, v17, v18, v19, v20);
          if (decode_tables)
          {
            v68 = decode_tables;
            goto LABEL_59;
          }

          if (v56 == 16)
          {
            v55 = v55 >> 13;
            v55 += 3;
            skip_bits(v66, 3);
          }

          else
          {
            v55 = v55 >> 9;
            v55 += 11;
            skip_bits(v66, 7);
          }

          if (v62 <= 0)
          {
            archive_set_error(v67, 79, "Unexpected error when decoding huffman tables", v21, v22, v23, v24, v25, v50);
            v68 = -30;
            goto LABEL_59;
          }

          while (1)
          {
            v26 = v55--;
            v52 = 0;
            if (v26 > 0)
            {
              v52 = v62 < 430;
            }

            if (!v52)
            {
              break;
            }

            v69[v62] = v69[v62 - 1];
            ++v62;
          }
        }
      }

      else
      {
        v69[v62++] = v56;
      }
    }

    decode_tables = create_decode_tables(&v69[v60], (v66 + 3976), 306);
    if (decode_tables)
    {
      archive_set_error(v67, 79, "Failed to create literal table", v29, v30, v31, v32, v33, v50);
      v68 = -30;
    }

    else
    {
      v60 += 306;
      decode_tables = create_decode_tables(&v69[v60], (v66 + 7796), 64);
      if (decode_tables)
      {
        archive_set_error(v67, 79, "Failed to create distance table", v34, v35, v36, v37, v38, v50);
        v68 = -30;
      }

      else
      {
        v60 += 64;
        decode_tables = create_decode_tables(&v69[v60], (v66 + 11616), 16);
        if (decode_tables)
        {
          archive_set_error(v67, 79, "Failed to create lower bits of distances table", v39, v40, v41, v42, v43, v50);
          v68 = -30;
        }

        else
        {
          v60 += 16;
          decode_tables = create_decode_tables(&v69[v60], (v66 + 15436), 44);
          if (decode_tables)
          {
            archive_set_error(v67, 79, "Failed to create repeating distances table", v44, v45, v46, v47, v48, v50);
            v68 = -30;
          }

          else
          {
            v68 = 0;
          }
        }
      }
    }
  }

LABEL_59:
  *MEMORY[0x1E69E9840];
  return v68;
}

uint64_t do_uncompress_block(_DWORD *a1, uint64_t a2)
{
  v43 = a1;
  v42 = a2;
  context = get_context(a1);
  v40 = 0;
  consume_bits = 0;
  v38 = *(context + 13);
  v37 = context + 5322;
  v36 = bf_bit_size(context + 21288) + 1;
  while (*(context + 14) - *(context + 15) <= *(context + 9) >> 1)
  {
    if (context[5317] > *(context + 18) - 1 || context[5317] == *(context + 18) - 1 && *(context + 21264) >= v36)
    {
      *(context + 56) = context[14] & 0xF7 | 8;
      break;
    }

    if (decode_number(v43, context + 994, v42, &v40))
    {
      return 1;
    }

    if (v40 >= 0x100u)
    {
      if (v40 < 0x106u)
      {
        if (v40 == 256)
        {
          consume_bits = parse_filter(v43, v42);
          if (consume_bits)
          {
            return consume_bits;
          }
        }

        else if (v40 == 257)
        {
          if (context[38] && copy_string(v43, context[38], context[4822]))
          {
            return -30;
          }
        }

        else
        {
          v27 = v40 - 258;
          v26 = dist_cache_touch(context, v27);
          v25 = 0;
          if (decode_number(v43, context + 3859, v42, &v25))
          {
            return -30;
          }

          v24 = decode_code_length(v43, context, v42, v25, v18, v19, v20, v21);
          if (v24 == -1)
          {
            return -30;
          }

          context[38] = v24;
          if (copy_string(v43, v24, v26))
          {
            return -30;
          }
        }
      }

      else
      {
        v34 = 0;
        v33 = decode_code_length(v43, context, v42, v40 - 262, v2, v3, v4, v5);
        v32 = 0;
        v31 = 1;
        if (v33 == -1)
        {
          archive_set_error(v43, 22, "Failed to decode the code length", v8, v9, v10, v11, v12, v23);
          return -30;
        }

        if (decode_number(v43, context + 1949, v42, &v34))
        {
LABEL_15:
          archive_set_error(v43, 22, "Failed to decode the distance slot", v13, v14, v15, v16, v17, v23);
          return -30;
        }

        if (v34 >= 4u)
        {
          v32 = v34 / 2 - 1;
          v31 += (v34 & 1 | 2) << v32;
        }

        else
        {
          v32 = 0;
          v31 += v34;
        }

        if (v32 > 0)
        {
          if (v32 < 4)
          {
            v28 = 0;
            consume_bits = read_consume_bits(v43, context, v42, v32, &v28, v15, v16, v17);
            if (consume_bits)
            {
              return consume_bits;
            }

            v31 += v28;
          }

          else
          {
            v30 = 0;
            v29 = 0;
            if (v32 > 4)
            {
              consume_bits = read_bits_32(v43, context, v42, &v30, v14, v15, v16, v17);
              if (consume_bits)
              {
                return consume_bits;
              }

              skip_bits(context, v32 - 4);
              v30 = 16 * (v30 >> (36 - v32));
              v31 += v30;
            }

            if (decode_number(v43, context + 2904, v42, &v29))
            {
              goto LABEL_15;
            }

            if (v31 >= 2147483646 - v29)
            {
              archive_set_error(v43, 79, "Distance pointer overflow", v13, v14, v15, v16, v17, v23);
              return -30;
            }

            v31 += v29;
          }
        }

        if (v31 > 256)
        {
          ++v33;
          if (v31 > 0x2000)
          {
            ++v33;
            if (v31 > 0x40000)
            {
              ++v33;
            }
          }
        }

        dist_cache_push(context, v31);
        context[38] = v33;
        if (copy_string(v43, v33, v31))
        {
          return -30;
        }
      }
    }

    else
    {
      v6 = *(context + 17);
      v7 = *(context + 14);
      *(context + 14) = v7 + 1;
      v35 = v6 + v7;
      *(*(context + 10) + ((v6 + v7) & v38)) = v40;
    }
  }

  return 0;
}

uint64_t create_decode_tables(uint64_t a1, int *a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  memset(__b, 0, sizeof(__b));
  __memset_chk();
  *a2 = a3;
  if (a3 == 306)
  {
    v3 = 10;
  }

  else
  {
    v3 = 7;
  }

  a2[33] = v3;
  for (i = 0; i < a3; ++i)
  {
    ++__b[*(a1 + i) & 0xF];
  }

  __b[0] = 0;
  a2[17] = 0;
  a2[1] = 0;
  for (j = 1; j < 16; ++j)
  {
    v15 = v14 + __b[j];
    a2[j + 1] = v15 << (16 - j);
    a2[j + 17] = a2[j + 16] + __b[j - 1];
    v14 = 2 * v15;
  }

  memcpy(__dst, a2 + 17, sizeof(__dst));
  for (k = 0; k < a3; ++k)
  {
    v8 = *(a1 + k) & 0xF;
    if (v8)
    {
      *(a2 + __dst[v8]++ + 1604) = k;
    }
  }

  v9 = 1 << a2[33];
  v10 = 1;
  for (m = 0; m < v9; ++m)
  {
    v7 = m << (16 - a2[33]);
    while (1)
    {
      v5 = 0;
      if (v10 < 16)
      {
        v5 = v7 >= a2[v10 + 1];
      }

      if (!v5)
      {
        break;
      }

      ++v10;
    }

    *(a2 + m + 136) = v10;
    v6 = a2[(v10 & 0xF) + 17] + ((v7 - a2[v10]) >> (16 - v10));
    if (v10 >= 16 || v6 >= a3)
    {
      *(a2 + m + 580) = 0;
    }

    else
    {
      *(a2 + m + 580) = *(a2 + v6 + 1604);
    }
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t decode_number(_DWORD *a1, unsigned int *a2, uint64_t a3, _WORD *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  i = 0;
  v14 = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  context = get_context(a1);
  *&v12[2] = read_bits_16(v19, context, v17, v12, v4, v5, v6, v7);
  if (*&v12[2])
  {
    return *&v12[2];
  }

  else
  {
    *v12 = *v12 & 0xFFFE;
    if (*v12 >= v18[v18[33] + 1])
    {
      v14 = 15;
      for (i = v18[33] + 1; i < 15; ++i)
      {
        if (*v12 < v18[i + 1])
        {
          v14 = i;
          break;
        }
      }

      skip_bits(context, v14);
      v13 = *v12 - v18[v14];
      v13 >>= 16 - v14;
      v11 = v18[v14 + 17] + v13;
      if (v11 >= *v18)
      {
        v11 = 0;
      }

      *v16 = *(v18 + v11 + 1604);
      return 0;
    }

    else
    {
      v9 = *v12 >> (16 - v18[33]);
      skip_bits(context, *(v18 + v9 + 136));
      *v16 = *(v18 + v9 + 580);
      return 0;
    }
  }
}

uint64_t read_bits_16(_DWORD *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 21268) < *(a2 + 144))
  {
    *a4 = ((*(a3 + *(a2 + 21268)) << 16) | (*(a3 + *(a2 + 21268) + 1) << 8) | *(a3 + *(a2 + 21268) + 2)) >> (8 - *(a2 + 21264));
    return 0;
  }

  else
  {
    archive_set_error(a1, 22, "Premature end of stream during extraction of data (#2)", a4, a5, a6, a7, a8, v9);
    return -30;
  }
}

uint64_t skip_bits(uint64_t result, int a2)
{
  v2 = *(result + 21264) + a2;
  *(result + 21268) += v2 >> 3;
  *(result + 21264) = v2 & 7;
  return result;
}

uint64_t decode_code_length(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v10 = 2;
  if (a4 >= 8u)
  {
    v11 = v12 / 4 - 1;
    v10 += (v12 & 3 | 4) << v11;
  }

  else
  {
    v11 = 0;
    v10 += v12;
  }

  if (v11 <= 0)
  {
    return v10;
  }

  v9 = 0;
  if (!read_consume_bits(v15, v14, v13, v11, &v9, a6, a7, a8))
  {
    v10 += v9;
    return v10;
  }

  return -1;
}

uint64_t read_bits_32(_DWORD *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 21268) < *(a2 + 144))
  {
    *a4 = (((*(a3 + *(a2 + 21268)) << 24) | (*(a3 + *(a2 + 21268) + 1) << 16) | (*(a3 + *(a2 + 21268) + 2) << 8) | *(a3 + *(a2 + 21268) + 3)) << *(a2 + 21264)) | (*(a3 + *(a2 + 21268) + 4) >> (8 - *(a2 + 21264)));
    return 0;
  }

  else
  {
    archive_set_error(a1, 22, "Premature end of stream during extraction of data (#1)", a4, a5, a6, a7, a8, v9);
    return -30;
  }
}

uint64_t read_consume_bits(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 0;
  if (a4 && v13 <= 16)
  {
    v10 = read_bits_16(v16, v15, v14, &v11, a5, a6, a7, a8);
    if (v10)
    {
      return v10;
    }

    else
    {
      v9 = v11 >> (16 - v13);
      skip_bits(v15, v13);
      if (v12)
      {
        *v12 = v9;
      }

      return 0;
    }
  }

  else
  {
    return -30;
  }
}

_DWORD *dist_cache_push(_DWORD *result, int a2)
{
  result[4825] = result[4824];
  result[4824] = result[4823];
  result[4823] = result[4822];
  result[4822] = a2;
  return result;
}

uint64_t copy_string(uint64_t a1, int a2, int a3)
{
  context = get_context(a1);
  v6 = context[13];
  v5 = context[14] + context[17];
  if (context[10])
  {
    for (i = 0; i < a2; ++i)
    {
      *(context[10] + ((v5 + i) & v6)) = *(context[10] + ((v5 + i - a3) & v6));
    }

    context[14] += a2;
    return 0;
  }

  else
  {
    return -30;
  }
}

uint64_t parse_filter(_DWORD *a1, uint64_t a2)
{
  v34 = a1;
  v33 = a2;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  context = get_context(a1);
  consume_bits = parse_filter_data(v34, context, v33, &v32, v2, v3, v4, v5);
  if (consume_bits)
  {
    return consume_bits;
  }

  else
  {
    consume_bits = parse_filter_data(v34, context, v33, &v31, v6, v7, v8, v9);
    if (consume_bits)
    {
      return consume_bits;
    }

    else
    {
      consume_bits = read_bits_16(v34, context, v33, &v30, v10, v11, v12, v13);
      if (consume_bits)
      {
        return consume_bits;
      }

      else
      {
        v30 = v30 >> 13;
        skip_bits(context, 3);
        if (v31 >= 4 && v31 <= 0x400000 && v30 <= 3u && is_valid_filter_block_start(context, v32))
        {
          v29 = add_new_filter(context);
          if (v29)
          {
            *v29 = v30;
            v29[2] = context[14] + v32;
            v29[3] = v31;
            context[2409] = v29[2];
            context[2410] = v29[3];
            if (!v30)
            {
              v26 = 0;
              consume_bits = read_consume_bits(v34, context, v33, 5, &v26, v21, v22, v23);
              if (consume_bits)
              {
                return consume_bits;
              }

              *(v29 + 1) = v26 + 1;
            }

            return 0;
          }

          archive_set_error(v34, 12, "Can't allocate memory for a filter descriptor.", v19, v20, v21, v22, v23, v25);
          return -30;
        }

        else
        {
          archive_set_error(v34, 79, "Invalid filter encountered", v14, v15, v16, v17, v18, v25);
          return -30;
        }
      }
    }
  }
}

uint64_t dist_cache_touch(uint64_t a1, int a2)
{
  v5 = (a1 + 19288);
  v3 = *(a1 + 19288 + 4 * a2);
  for (i = a2; i > 0; --i)
  {
    v5[i] = v5[i - 1];
  }

  *v5 = v3;
  return v3;
}

uint64_t parse_filter_data(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  i = 0;
  v16 = 0;
  v14 = 0;
  consume_bits = read_consume_bits(a1, a2, a3, 2, &v16, a6, a7, a8);
  if (consume_bits)
  {
    return consume_bits;
  }

  else
  {
    ++v16;
    for (i = 0; i < v16; ++i)
    {
      v13 = 0;
      consume_bits = read_bits_16(v21, v20, v19, &v13, v8, v9, v10, v11);
      if (consume_bits)
      {
        return consume_bits;
      }

      v14 += HIBYTE(v13) << (8 * i);
      skip_bits(v20, 8);
    }

    *v18 = v14;
    return 0;
  }
}

BOOL is_valid_filter_block_start(void *a1, unsigned int a2)
{
  v6 = a1[2409];
  v5 = a1[2410];
  if (v6 && (v2 = a1[2410], v5))
  {
    v3 = a1[2410];
    return a2 + a1[14] >= v6 + v5;
  }

  else
  {
    return 1;
  }
}

void *add_new_filter(uint64_t a1)
{
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x1000040D61A056BuLL);
  if (!v3)
  {
    return 0;
  }

  cdeque_filter();
  cdeque_push_back(a1 + 19256, v1);
  return v3;
}

uint64_t cdeque_push_back(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 6) == *(a1 + 4) + 1)
    {
      return 3;
    }

    else
    {
      *(*(a1 + 8) + 8 * *(a1 + 2)) = a2;
      *(a1 + 2) = (*(a1 + 2) + 1) & *(a1 + 4);
      ++*(a1 + 6);
      return 0;
    }
  }

  else
  {
    return 2;
  }
}

uint64_t run_filter(_DWORD *a1, unsigned int *a2)
{
  context = get_context(a1);
  clear_data_ready_stack();
  free(*(context + 88));
  *(context + 88) = malloc_type_malloc(*(a2 + 3), 0x222A44EuLL);
  if (*(context + 88))
  {
    v17 = *a2;
    if (*a2)
    {
      if (v17 != 2 && v17 != 1)
      {
        if (v17 != 3)
        {
          archive_set_error(a1, 79, "Unsupported filter type: 0x%x", v2, v3, v4, v5, v6, *a2);
          return -30;
        }

        v19 = run_arm_filter(context, a2);
      }

      else
      {
        v19 = run_e8e9_filter(context, a2, *a2 == 2);
      }
    }

    else
    {
      v19 = run_delta_filter(context, a2);
    }

    if (v19)
    {
      return v19;
    }

    else if (push_data_ready(a1, context, *(context + 88), *(a2 + 3), *(context + 120), v7, v8, v9))
    {
      archive_set_error(a1, 22, "Stack overflow when submitting unpacked data", v10, v11, v12, v13, v14, v16);
      return -30;
    }

    else
    {
      *(context + 120) += *(a2 + 3);
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Can't allocate memory for filter data.", v2, v3, v4, v5, v6, v16);
    return -30;
  }
}

uint64_t run_delta_filter(void *a1, uint64_t a2)
{
  v4 = 0;
  for (i = 0; i < *(a2 + 4); ++i)
  {
    v3 = 0;
    for (j = i; j < *(a2 + 24); j += *(a2 + 4))
    {
      v3 -= *(a1[10] + ((a1[17] + *(a2 + 16) + v4) & a1[13]));
      *(a1[11] + j) = v3;
      ++v4;
    }
  }

  return 0;
}

uint64_t run_e8e9_filter(void *a1, uint64_t a2, int a3)
{
  circular_memcpy(a1[11], a1[10], a1[13], a1[17] + *(a2 + 16), a1[17] + *(a2 + 16) + *(a2 + 24));
  v8 = 0;
  while (v8 < *(a2 + 24) - 4)
  {
    v3 = v8++;
    v7 = *(a1[10] + ((a1[17] + *(a2 + 16) + v3) & a1[13]));
    if (v7 == 232 || a3 && v7 == 233)
    {
      v5 = (v8 + *(a2 + 16)) % 0x1000000;
      filter_data = read_filter_data(a1, (a1[17] + *(a2 + 16) + v8) & a1[13]);
      if (filter_data < 0)
      {
        if (((filter_data + v5) & 0x80000000) == 0)
        {
          write_filter_data(a1, v8, filter_data + 0x1000000);
        }
      }

      else if (filter_data - 0x1000000 < 0)
      {
        write_filter_data(a1, v8, filter_data - v5);
      }

      v8 += 4;
    }
  }

  return 0;
}

uint64_t run_arm_filter(void *a1, uint64_t a2)
{
  circular_memcpy(a1[11], a1[10], a1[13], a1[17] + *(a2 + 16), a1[17] + *(a2 + 16) + *(a2 + 24));
  for (i = 0; i < *(a2 + 24) - 3; i += 4)
  {
    if (*(a1[10] + ((a1[17] + *(a2 + 16) + i + 3) & a1[13])) == 235)
    {
      filter_data = read_filter_data(a1, (*(a1 + 34) + *(a2 + 16) + i) & a1[13]);
      write_filter_data(a1, i, ((filter_data & 0xFFFFFF) - (i + *(a2 + 16)) / 4) & 0xFFFFFF | 0xEB000000);
    }
  }

  return 0;
}

uint64_t push_data_ready(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8))
  {
    return 0;
  }

  else if (a5 == *(a2 + 19384) + *(a2 + 19392))
  {
    for (i = 0; i < 2; ++i)
    {
      v9 = a2 + 19304 + 32 * i;
      if (!*v9)
      {
        *v9 = 1;
        *(v9 + 8) = a3;
        *(v9 + 16) = a4;
        *(v9 + 24) = a5;
        *(a2 + 19384) = a5;
        *(a2 + 19392) = a4;
        update_crc(a2, *(v9 + 8), *(v9 + 16));
        return 0;
      }
    }

    archive_set_error(a1, 22, "Error: premature end of data_ready stack", a4, a5, a6, a7, a8, v9);
    return -30;
  }

  else
  {
    archive_set_error(a1, 22, "Sanity check error: output stream is not continuous", a4, a5, a6, a7, a8, v9);
    return -30;
  }
}

uint64_t circular_memcpy(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & a3) > (a5 & a3))
  {
    __memcpy_chk();
  }

  return __memcpy_chk();
}

uint64_t read_filter_data(uint64_t a1, unsigned int a2)
{
  v5 = a1;
  v4 = a2;
  circular_memcpy(v3, *(a1 + 80), *(a1 + 104), v4, v4 + 4);
  return archive_le32dec_6(v3);
}

uint64_t archive_le32enc_5(uint64_t result, unsigned int a2)
{
  *result = a2;
  *(result + 1) = a2 >> 8;
  *(result + 3) = HIBYTE(a2);
  return result;
}

uint64_t push_data(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2[13];
  v13 = (a2[17] + a2[15]) & v14;
  v16 = a4 + a2[17];
  v15 = a5 + a2[17];
  if ((v16 & v14) <= (v15 & v14))
  {
    result = push_data_ready(a1, a2, a3 + v13, (v15 - v16) & v14, a2[15], a6, a7, a8);
    a2[15] += v15 - v16;
  }

  else
  {
    v12 = a2[9] - (v16 & v14);
    push_data_ready(a1, a2, a3 + v13, v12, a2[15], a6, a7, a8);
    result = push_data_ready(a1, a2, a3, v15 & v14, a2[15] + v12, v8, v9, v10);
    a2[15] += v12 + (v15 & v14);
  }

  return result;
}

uint64_t verify_checksums(_DWORD *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  context = get_context(a1);
  if (*(context + 8))
  {
    goto LABEL_8;
  }

  if (!*(context + 19436) || *(context + 19440) == *(context + 19436))
  {
    if (*(context + 21232) > 0)
    {
      blake2sp_final(context + 19480, v16, 0x20uLL);
      if (memcmp((context + 19444), v16, 0x20uLL))
      {
        archive_set_error(a1, 79, "Checksum error: BLAKE2", v6, v7, v8, v9, v10, v12);
        v15 = -30;
        goto LABEL_9;
      }
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  archive_set_error(a1, 79, "Checksum error: CRC32", v1, v2, v3, v4, v5, v12);
  v15 = -30;
LABEL_9:
  *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t archive_set_format_option(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 256))
  {
    if (!a2 || !strcmp(a2, *(a1 + 256)))
    {
      if (*(a1 + 272))
      {
        return (*(a1 + 272))(a1, a3, a4);
      }

      else
      {
        return -20;
      }
    }

    else
    {
      return -21;
    }
  }

  else if (a2)
  {
    return -21;
  }

  else
  {
    return -25;
  }
}

uint64_t archive_set_filter_option(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = -20;
  for (i = *(a1 + 232); i; i = *(i + 16))
  {
    if (*(i + 24) && (!a2 || !strcmp(*(i + 80), a2)))
    {
      v6 = (*(i + 24))(i, a3, a4);
      if (v6 == -30)
      {
        return -30;
      }

      if (a2)
      {
        return v6;
      }

      if (!v6)
      {
        v5 = 0;
      }
    }
  }

  if (v5 == -20 && a2)
  {
    return -21;
  }

  return v5;
}

uint64_t Ppmd7_Construct(uint64_t a1)
{
  *(a1 + 64) = 0;
  v8 = 0;
  v6 = 0;
  while (v8 < 0x26)
  {
    if (v8 >= 0xC)
    {
      v3 = 4;
    }

    else
    {
      v3 = (v8 >> 2) + 1;
    }

    v4 = v3;
    do
    {
      v1 = v6++;
      *(a1 + 146 + v1) = v8;
      --v4;
    }

    while (v4);
    *(a1 + 108 + v8++) = v6;
  }

  *(a1 + 684) = 0;
  *(a1 + 685) = 2;
  __memset_chk();
  __memset_chk();
  for (i = 0; i < 3; ++i)
  {
    *(a1 + 428 + i) = i;
  }

  v5 = i;
  v7 = 1;
  while (i < 0x100)
  {
    *(a1 + 428 + i) = v5;
    if (!--v7)
    {
      v7 = ++v5 - 2;
    }

    ++i;
  }

  __memset_chk();
  return __memset_chk();
}

uint64_t Ppmd7_Alloc(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 64) && *(a1 + 52) == a2)
  {
    return 1;
  }

  if (a2 >= 0xC)
  {
    Ppmd7_Free(a1);
    *(a1 + 104) = 4 - (a2 & 3);
    v2 = malloc_type_malloc(*(a1 + 104) + a2 + 12, 0x100004077774924uLL);
    *(a1 + 64) = v2;
    if (!v2)
    {
      return 0;
    }

    *(a1 + 52) = a2;
    return 1;
  }

  return 0;
}

uint64_t Ppmd7_Init(uint64_t a1, int a2)
{
  *(a1 + 36) = a2;
  result = RestartModel_0(a1);
  *(a1 + 1198) = 7;
  *(a1 + 1196) = 0;
  *(a1 + 1199) = 64;
  return result;
}

void *Ppmd7z_RangeDec_CreateVTable(void *result)
{
  *result = Range_GetThreshold;
  result[1] = Range_Decode_7z;
  result[2] = Range_DecodeBit_7z;
  return result;
}

void *PpmdRAR_RangeDec_CreateVTable(void *result)
{
  *result = Range_GetThreshold;
  result[1] = Range_Decode_RAR;
  result[2] = Range_DecodeBit_RAR;
  return result;
}

uint64_t PpmdRAR_RangeDec_Init(uint64_t a1)
{
  if (Ppmd_RangeDec_Init(a1))
  {
    *(a1 + 36) = 0x8000;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Ppmd7_DecodeSymbol(uint64_t a1, uint64_t a2)
{
  v36[288] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v33 = a2;
  if (*(a1 + 64))
  {
    if (**v34 == 1)
    {
      v3 = &v34[32 * (*(*v34 + 3) - 1) + 700];
      v4 = v34[8] + *(v34 + *(*(v34 + 8) + *(*v34 + 8)) + 683);
      v5 = *(v34 + **(v34 + 2) + 940);
      v34[10] = v5;
      v25 = &v3[*(v34 + *(*v34 + 2) + 940)] + v4 + v5 + ((v34[11] >> 26) & 0x20);
      if ((*(v33 + 16))(v33, *v25))
      {
        *v25 -= (*v25 + 32) >> 7;
        v34[7] = PPMD7_kExpEscape[*v25 >> 10];
        for (i = 0; i < 0x20uLL; i += 8)
        {
          v36[i + 256] = -1;
          v36[i + 257] = -1;
          v36[i + 258] = -1;
          v36[i + 259] = -1;
          v36[i + 260] = -1;
          v36[i + 261] = -1;
          v36[i + 262] = -1;
          v36[i + 263] = -1;
        }

        *(&v36[256] + *(*v34 + 2)) = 0;
        v34[8] = 0;
        goto LABEL_24;
      }

      v24 = 0;
      *v25 = *v25 + 128 - ((*v25 + 32) >> 7);
      v6 = (*v34 + 2);
      *(v34 + 2) = v6;
      v24 = *v6;
      Ppmd7_UpdateBin(v34);
      v35 = v24;
    }

    else
    {
      v32 = (*(v34 + 8) + *(*v34 + 4));
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v30 = (*v33)(v33, *(*v34 + 2));
      v29 = v32[1];
      if (v30 >= v29)
      {
        v34[8] = 0;
        v31 = **v34 - 1;
        do
        {
          v2 = v32;
          v32 += 6;
          v29 += v2[7];
          if (v29 > v30)
          {
            v27 = 0;
            (*(v33 + 8))(v33, v29 - v32[1], v32[1]);
            *(v34 + 2) = v32;
            v27 = *v32;
            Ppmd7_Update1(v34);
            v35 = v27;
            goto LABEL_43;
          }

          --v31;
        }

        while (v31);
        if (v30 < *(*v34 + 2))
        {
          v34[10] = *(v34 + **(v34 + 2) + 940);
          (*(v33 + 8))(v33, v29, *(*v34 + 2) - v29);
          for (j = 0; j < 0x20uLL; j += 8)
          {
            v36[j + 256] = -1;
            v36[j + 257] = -1;
            v36[j + 258] = -1;
            v36[j + 259] = -1;
            v36[j + 260] = -1;
            v36[j + 261] = -1;
            v36[j + 262] = -1;
            v36[j + 263] = -1;
          }

          *(&v36[256] + *v32) = 0;
          v31 = **v34 - 1;
          do
          {
            v32 -= 6;
            *(&v36[256] + *v32) = 0;
            --v31;
          }

          while (v31);
LABEL_24:
          while (1)
          {
            bzero(v36, 0x200uLL);
            v22 = 0;
            v21 = 0;
            v14 = **v34;
            do
            {
              ++v34[6];
              if (!*(*v34 + 8))
              {
                v35 = -1;
                goto LABEL_43;
              }

              *v34 = *(v34 + 8) + *(*v34 + 8);
            }

            while (**v34 == v14);
            v18 = 0;
            v22 = (*(v34 + 8) + *(*v34 + 4));
            v16 = 0;
            v15 = **v34 - v14;
            do
            {
              v13 = *(&v36[256] + *v22);
              v18 += (v22[1] & v13);
              v7 = v22;
              v22 += 6;
              v36[v16] = v7;
              v16 -= v13;
            }

            while (v16 != v15);
            EscFreq = Ppmd7_MakeEscFreq(v34, v14, &v21);
            v21 += v18;
            v20 = (*v33)(v33, v21);
            if (v20 < v18)
            {
              break;
            }

            if (v20 >= v21)
            {
              v35 = -2;
              goto LABEL_43;
            }

            (*(v33 + 8))(v33, v18, v21 - v18);
            *EscFreq += v21;
            do
            {
              *(&v36[256] + *v36[--v16]) = 0;
            }

            while (v16);
          }

          v11 = v36;
          v19 = 0;
          while (1)
          {
            v19 += *(*v11 + 1);
            if (v19 > v20)
            {
              break;
            }

            ++v11;
          }

          v22 = *v11;
          (*(v33 + 8))(v33, v19 - v22[1], v22[1]);
          if (*(EscFreq + 2) < 7u)
          {
            v8 = *(EscFreq + 3);
            *(EscFreq + 3) = v8 - 1;
            if (v8 == 1)
            {
              *EscFreq *= 2;
              v9 = *(EscFreq + 2);
              *(EscFreq + 2) = v9 + 1;
              *(EscFreq + 3) = 3 << v9;
            }
          }

          *(v34 + 2) = v22;
          v12 = *v22;
          Ppmd7_Update2(v34);
          v35 = v12;
        }

        else
        {
          v35 = -2;
        }
      }

      else
      {
        v28 = 0;
        (*(v33 + 8))(v33, 0, v32[1]);
        *(v34 + 2) = v32;
        v28 = *v32;
        Ppmd7_Update1_0(v34);
        v35 = v28;
      }
    }
  }

  else
  {
    v35 = -1;
  }

LABEL_43:
  *MEMORY[0x1E69E9840];
  return v35;
}

uint64_t Ppmd7z_RangeEnc_Init(uint64_t result)
{
  *result = 0;
  *(result + 8) = -1;
  *(result + 12) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t Ppmd7z_RangeEnc_FlushData(uint64_t result)
{
  v2 = result;
  for (i = 0; i < 5; ++i)
  {
    result = RangeEnc_ShiftLow(v2);
  }

  return result;
}

uint64_t Ppmd7_EncodeSymbol(unsigned int *a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = a1;
  v25 = a2;
  v24 = a3;
  if (**a1 == 1)
  {
    v4 = &v26[32 * (*(*v26 + 3) - 1) + 700];
    v5 = v26[8] + *(v26 + *(*(v26 + 8) + *(*v26 + 8)) + 683);
    v6 = *(v26 + **(v26 + 2) + 940);
    v26[10] = v6;
    v19 = &v4[*(v26 + *(*v26 + 2) + 940)] + v5 + v6 + ((v26[11] >> 26) & 0x20);
    v18 = (*v26 + 2);
    if (*v18 == v24)
    {
      RangeEnc_EncodeBit_0(v25, *v19);
      *v19 = *v19 + 128 - ((*v19 + 32) >> 7);
      *(v26 + 2) = v18;
      result = Ppmd7_UpdateBin(v26);
      goto LABEL_33;
    }

    result = RangeEnc_EncodeBit_1(v25, *v19);
    *v19 -= (*v19 + 32) >> 7;
    v26[7] = PPMD7_kExpEscape[*v19 >> 10];
    for (i = 0; i < 0x20uLL; i += 8)
    {
      *&v27[8 * i] = -1;
      *&v27[8 * i + 8] = -1;
      *&v27[8 * i + 16] = -1;
      *&v27[8 * i + 24] = -1;
      *&v27[8 * i + 32] = -1;
      *&v27[8 * i + 40] = -1;
      *&v27[8 * i + 48] = -1;
      *&v27[8 * i + 56] = -1;
    }

    v27[*v18] = 0;
    v26[8] = 0;
  }

  else
  {
    v23 = (*(v26 + 8) + *(*v26 + 4));
    v22 = 0;
    v21 = 0;
    if (*v23 == v24)
    {
      RangeEnc_Encode(v25, 0, v23[1], *(*v26 + 2));
      *(v26 + 2) = v23;
      result = Ppmd7_Update1_0(v26);
      goto LABEL_33;
    }

    v26[8] = 0;
    v22 = v23[1];
    v21 = **v26 - 1;
    do
    {
      v23 += 6;
      if (*v23 == v24)
      {
        RangeEnc_Encode(v25, v22, v23[1], *(*v26 + 2));
        *(v26 + 2) = v23;
        result = Ppmd7_Update1(v26);
        goto LABEL_33;
      }

      v22 += v23[1];
      --v21;
    }

    while (v21);
    v26[10] = *(v26 + **(v26 + 2) + 940);
    for (j = 0; j < 0x20uLL; j += 8)
    {
      *&v27[8 * j] = -1;
      *&v27[8 * j + 8] = -1;
      *&v27[8 * j + 16] = -1;
      *&v27[8 * j + 24] = -1;
      *&v27[8 * j + 32] = -1;
      *&v27[8 * j + 40] = -1;
      *&v27[8 * j + 48] = -1;
      *&v27[8 * j + 56] = -1;
    }

    v27[*v23] = 0;
    v21 = **v26 - 1;
    do
    {
      v23 -= 6;
      v27[*v23] = 0;
      --v21;
    }

    while (v21);
    result = RangeEnc_Encode(v25, v22, *(*v26 + 2) - v22, *(*v26 + 2));
  }

LABEL_20:
  v16 = 0;
  v11 = **v26;
  while (1)
  {
    ++v26[6];
    if (!*(*v26 + 8))
    {
      break;
    }

    *v26 = *(v26 + 8) + *(*v26 + 8);
    if (**v26 != v11)
    {
      EscFreq = Ppmd7_MakeEscFreq(v26, v11, &v16);
      v14 = (*(v26 + 8) + *(*v26 + 4));
      v13 = 0;
      v12 = **v26;
      while (*v14 != v24)
      {
        v13 += v14[1] & v27[*v14];
        v27[*v14] = 0;
        v14 += 6;
        if (!--v12)
        {
          result = RangeEnc_Encode(v25, v13, v16, v13 + v16);
          *EscFreq += v13 + v16;
          goto LABEL_20;
        }
      }

      v10 = v13;
      v9 = v14;
      do
      {
        v13 += v14[1] & v27[*v14];
        v14 += 6;
        --v12;
      }

      while (v12);
      RangeEnc_Encode(v25, v10, v9[1], v13 + v16);
      if (*(EscFreq + 2) < 7u)
      {
        v7 = *(EscFreq + 3);
        *(EscFreq + 3) = v7 - 1;
        if (v7 == 1)
        {
          *EscFreq *= 2;
          v8 = *(EscFreq + 2);
          *(EscFreq + 2) = v8 + 1;
          *(EscFreq + 3) = 3 << v8;
        }
      }

      *(v26 + 2) = v9;
      result = Ppmd7_Update2(v26);
      break;
    }
  }

LABEL_33:
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RestartModel_0(uint64_t *a1)
{
  result = __memset_chk();
  a1[11] = a1[8] + *(a1 + 26);
  a1[10] = a1[11] + *(a1 + 13);
  v2 = a1[10] - 84 * (*(a1 + 13) / 8u / 0xC);
  a1[12] = v2;
  a1[9] = v2;
  *(a1 + 14) = 0;
  *(a1 + 6) = *(a1 + 9);
  if (*(a1 + 9) >= 0xCu)
  {
    v6 = 12;
  }

  else
  {
    v6 = *(a1 + 9);
  }

  v3 = -v6 - 1;
  *(a1 + 12) = v3;
  *(a1 + 11) = v3;
  *(a1 + 8) = 0;
  v4 = a1[10] - 12;
  a1[10] = v4;
  a1[1] = v4;
  *a1 = v4;
  *(*a1 + 8) = 0;
  **a1 = 256;
  *(*a1 + 2) = 257;
  a1[2] = a1[9];
  a1[9] += 1536;
  *(*a1 + 4) = a1[2] - a1[8];
  for (i = 0; i < 0x100; ++i)
  {
    v8 = (a1[2] + 6 * i);
    *v8 = i;
    v8[1] = 1;
    result = SetSuccessor_0(v8, 0);
  }

  for (j = 0; j < 0x80; ++j)
  {
    for (k = 0; k < 8; ++k)
    {
      v7 = 0x4000 - kInitBinEsc_0[k] / (j + 2);
      for (m = 0; m < 0x40; m += 8)
      {
        *(&a1[16 * j + 350] + k + m) = v7;
      }
    }
  }

  for (n = 0; n < 0x19; ++n)
  {
    for (ii = 0; ii < 0x10; ++ii)
    {
      v5 = &a1[8 * n + 150] + 4 * ii;
      *(v5 + 2) = 3;
      *v5 = 8 * (5 * n + 10);
      *(v5 + 3) = 4;
    }
  }

  return result;
}

uint64_t Range_GetThreshold(_DWORD *a1, unsigned int a2)
{
  v2 = a1[7] - a1[8];
  v3 = a1[6] / a2;
  a1[6] = v3;
  return v2 / v3;
}

uint64_t Range_Decode_7z(uint64_t a1, int a2, int a3)
{
  *(a1 + 28) -= a2 * *(a1 + 24);
  *(a1 + 24) *= a3;
  return Range_Normalize(a1);
}

uint64_t Range_DecodeBit_7z(uint64_t a1, int a2)
{
  v4 = (*(a1 + 24) >> 14) * a2;
  if (*(a1 + 28) >= v4)
  {
    v3 = 1;
    *(a1 + 28) -= v4;
    *(a1 + 24) -= v4;
  }

  else
  {
    v3 = 0;
    *(a1 + 24) = v4;
  }

  Range_Normalize(a1);
  return v3;
}

uint64_t Range_Normalize(uint64_t result)
{
  for (i = result; ; *(i + 32) <<= 8)
  {
    if ((*(i + 32) ^ (*(i + 32) + *(i + 24))) < 0x1000000)
    {
      goto LABEL_6;
    }

    if (*(i + 24) >= *(i + 36))
    {
      break;
    }

    *(i + 24) = -*(i + 32) & (*(i + 36) - 1);
LABEL_6:
    v1 = *(i + 28);
    result = (*(*(i + 40) + 8))(*(i + 40));
    *(i + 28) = result | (v1 << 8);
    *(i + 24) <<= 8;
  }

  return result;
}

uint64_t Range_Decode_RAR(uint64_t a1, int a2, int a3)
{
  *(a1 + 32) += a2 * *(a1 + 24);
  *(a1 + 24) *= a3;
  return Range_Normalize(a1);
}

uint64_t Range_DecodeBit_RAR(uint64_t a1, unsigned int a2)
{
  if ((*a1)(a1, 0x4000) >= a2)
  {
    v3 = 1;
    (*(a1 + 8))(a1, a2, 0x4000 - a2);
  }

  else
  {
    v3 = 0;
    (*(a1 + 8))(a1, 0, a2);
  }

  return v3;
}

BOOL Ppmd_RangeDec_Init(uint64_t a1)
{
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = -1;
  for (i = 0; i < 4; ++i)
  {
    v2 = *(a1 + 28);
    *(a1 + 28) = (*(*(a1 + 40) + 8))(*(a1 + 40)) | (v2 << 8);
  }

  return *(a1 + 28) != -1;
}

uint64_t *Ppmd7_Update1_0(unsigned __int16 **a1)
{
  *(a1 + 8) = 2 * *(a1[2] + 1) > (*a1)[1];
  *(a1 + 11) += *(a1 + 8);
  (*a1)[1] += 4;
  v1 = a1[2];
  v2 = *(v1 + 1) + 4;
  *(v1 + 1) = v2;
  if (v2 > 0x7Cu)
  {
    Rescale_0(a1);
  }

  return NextContext_0(a1);
}

uint64_t *Ppmd7_Update1(unsigned __int16 **a1)
{
  v2 = a1[2];
  *(v2 + 1) += 4;
  (*a1)[1] += 4;
  if (*(v2 + 1) > *(v2 - 5))
  {
    SwapStates_0(v2, (v2 - 3));
    v3 = v2 - 3;
    a1[2] = v3;
    if (*(v3 + 1) > 0x7Cu)
    {
      Rescale_0(a1);
    }
  }

  return NextContext_0(a1);
}

uint64_t *Ppmd7_UpdateBin(uint64_t a1)
{
  *(*(a1 + 16) + 1) += *(*(a1 + 16) + 1) < 0x80u;
  *(a1 + 32) = 1;
  ++*(a1 + 44);
  return NextContext_0(a1);
}

unsigned int *Ppmd7_MakeEscFreq(unsigned int *a1, unsigned int a2, int *a3)
{
  if (**a1 == 256)
  {
    v7 = a1 + 299;
    *a3 = 1;
  }

  else
  {
    v6 = **a1 - a2;
    v7 = &a1[16 * *(a1 + v6 + 427) + 300 + 4 * (a2 > v6) + 2 * (*(*a1 + 2) < 11 * **a1) + (v6 < *(*(a1 + 8) + *(*a1 + 8)) - **a1) + a1[10]];
    v5 = *v7 >> *(v7 + 2);
    *v7 -= v5;
    v3 = v5;
    if (!v5)
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return v7;
}

uint64_t *Ppmd7_Update2(unsigned __int16 **a1)
{
  (*a1)[1] += 4;
  v1 = a1[2];
  v2 = *(v1 + 1) + 4;
  *(v1 + 1) = v2;
  if (v2 > 0x7Cu)
  {
    Rescale_0(a1);
  }

  *(a1 + 11) = *(a1 + 12);
  return UpdateModel_0(a1);
}

unsigned __int16 **Rescale_0(unsigned __int16 **result)
{
  v20 = result;
  v15 = (v20[8] + *(*v20 + 4));
  v14 = result[2];
  v12 = *v14;
  v13 = v14[2];
  while (v14 != v15)
  {
    *v14 = *(v14 - 3);
    v14[2] = *(v14 - 1);
    v14 -= 3;
  }

  *v14 = v12;
  v14[2] = v13;
  v16 = (*result)[1] - *(v14 + 1);
  *(v14 + 1) += 4;
  v18 = *(result + 6) != 0;
  *(v14 + 1) = (*(v14 + 1) + v18) >> 1;
  v17 = *(v14 + 1);
  v19 = **result - 1;
  do
  {
    v1 = v14;
    v14 += 3;
    v16 -= *(v1 + 7);
    *(v14 + 1) = (*(v14 + 1) + v18) >> 1;
    v17 += *(v14 + 1);
    if (*(v14 + 1) > *(v14 - 5))
    {
      v11 = v14;
      v9 = *v14;
      v10 = v14[2];
      do
      {
        *v11 = *(v11 - 3);
        v11[2] = *(v11 - 1);
        v11 -= 3;
        v4 = 0;
        if (v11 != v15)
        {
          v4 = BYTE1(v9) > *(v11 - 5);
        }
      }

      while (v4);
      *v11 = v9;
      v11[2] = v10;
    }

    --v19;
  }

  while (v19);
  if (*(v14 + 1))
  {
    goto LABEL_21;
  }

  v8 = **result;
  do
  {
    ++v19;
    v2 = v14;
    v14 -= 3;
  }

  while (!*(v2 - 5));
  v16 += v19;
  **result -= v19;
  if (**result != 1)
  {
    v7 = (**result + 1) >> 1;
    if ((v8 + 1) >> 1 != v7)
    {
      result = ShrinkUnits_0(result, v15, (v8 + 1) >> 1, v7);
      *(*v20 + 4) = result - v20[8];
    }

LABEL_21:
    *(*v20 + 2) = v17 + v16 - (v16 >> 1);
    v20[2] = v20[8] + *(*v20 + 4);
    return result;
  }

  v5 = *v15;
  v6 = v15[2];
  do
  {
    BYTE1(v5) -= BYTE1(v5) >> 1;
    v16 >>= 1;
  }

  while (v16 > 1);
  result = InsertNode_0(result, v15, *(result + ((v8 + 1) >> 1) + 145));
  v3 = *v20;
  v20[2] = *v20 + 2;
  *(v3 + 2) = v5;
  *(v3 + 6) = v6;
  return result;
}

uint64_t *NextContext_0(uint64_t *result)
{
  v1 = result[8] + (*(result[2] + 2) | (*(result[2] + 4) << 16));
  if (*(result + 6) || v1 <= result[11])
  {
    return UpdateModel_0(result);
  }

  result[1] = v1;
  *result = v1;
  return result;
}

uint64_t InsertNode_0(uint64_t result, _DWORD *a2, unsigned int a3)
{
  *a2 = *(result + 276 + 4 * a3);
  *(result + 276 + 4 * a3) = a2 - *(result + 64);
  return result;
}

_DWORD *ShrinkUnits_0(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v10 = *(a1 + 146 + (a3 - 1));
  v9 = *(a1 + 146 + (a4 - 1));
  if (v10 == v9)
  {
    return a2;
  }

  if (*(a1 + 276 + 4 * *(a1 + 146 + (a4 - 1))))
  {
    v8 = RemoveNode_0(a1, v9);
    v7 = v8;
    v6 = a2;
    v5 = a4;
    do
    {
      *v7 = *v6;
      v7[1] = v6[1];
      v7[2] = v6[2];
      v6 += 3;
      v7 += 3;
      --v5;
    }

    while (v5);
    InsertNode_0(a1, a2, v10);
    return v8;
  }

  else
  {
    SplitBlock_0(a1, a2, v10, v9);
    return a2;
  }
}

_DWORD *RemoveNode_0(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) + *(a1 + 276 + 4 * a2));
  *(a1 + 276 + 4 * a2) = *v3;
  return v3;
}

uint64_t SplitBlock_0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = *(a1 + 108 + a3) - *(a1 + 108 + a4);
  v8 = (a2 + 12 * *(a1 + 108 + a4));
  v7 = *(a1 + 146 + (v6 - 1));
  if (*(a1 + 108 + *(a1 + 146 + (v6 - 1))) != v6)
  {
    v5 = *(a1 + 108 + --v7);
    InsertNode_0(a1, (v8 + (12 * v5)), v6 - v5 - 1);
  }

  return InsertNode_0(a1, v8, v7);
}

uint64_t *UpdateModel_0(uint64_t *result)
{
  v31 = result;
  v29 = *(result[2] + 2) | (*(result[2] + 4) << 16);
  if (*(result[2] + 1) < 0x1Fu && *(*result + 8))
  {
    v27 = result[8] + *(*result + 8);
    if (*v27 == 1)
    {
      if (*(v27 + 3) < 0x20u)
      {
        ++*(v27 + 3);
      }
    }

    else
    {
      v24 = (result[8] + *(v27 + 4));
      if (*v24 != *result[2])
      {
        do
        {
          v24 = (v24 + 6);
        }

        while (*v24 != *result[2]);
        if (*(v24 + 1) >= *(v24 - 5))
        {
          result = SwapStates_0(v24, (v24 - 6));
          v24 = (v24 - 6);
        }
      }

      if (*(v24 + 1) < 0x73u)
      {
        *(v24 + 1) += 2;
        *(v27 + 2) += 2;
      }
    }
  }

  if (!*(v31 + 6))
  {
    Successors_0 = CreateSuccessors_0(v31, 1);
    v31[1] = Successors_0;
    *v31 = Successors_0;
    if (*v31)
    {
      return SetSuccessor_0(v31[2], *v31 - v31[8]);
    }

    return RestartModel_0(v31);
  }

  v2 = *v31[2];
  v3 = v31[11];
  v31[11] = v3 + 1;
  *v3 = v2;
  v30 = v31[11] - v31[8];
  if (v31[11] >= v31[12])
  {
    return RestartModel_0(v31);
  }

  if (!v29)
  {
    result = SetSuccessor_0(v31[2], v30);
    v5 = v31[8];
    v6 = __OFSUB__(*v31, v5);
    v29 = *v31 - v5;
    goto LABEL_25;
  }

  if (v29 <= v30)
  {
    result = CreateSuccessors_0(v31, 0);
    if (result)
    {
      v29 = result - v31[8];
      goto LABEL_21;
    }

    return RestartModel_0(v31);
  }

LABEL_21:
  v4 = *(v31 + 6) - 1;
  *(v31 + 6) = v4;
  if (!v4)
  {
    v30 = v29;
    v31[11] -= v31[1] != *v31;
  }

LABEL_25:
  v25 = **v31;
  v26 = *(*v31 + 2) - v25 - (*(v31[2] + 1) - 1);
  for (i = v31[1]; i != *v31; i = (v31[8] + *(i + 2)))
  {
    v23 = *i;
    if (v23 == 1)
    {
      v13 = AllocUnits_0(v31, 0);
      if (!v13)
      {
        return RestartModel_0(v31);
      }

      *v13 = *(i + 1);
      *(v13 + 2) = i[3];
      *(i + 1) = v13 - v31[8];
      if (*(v13 + 1) < 0x1Eu)
      {
        *(v13 + 1) *= 2;
      }

      else
      {
        *(v13 + 1) = 120;
      }

      v8 = *(v13 + 1) + *(v31 + 7);
      if (v25 > 3)
      {
        LOWORD(v8) = v8 + 1;
      }

      i[1] = v8;
    }

    else
    {
      if ((v23 & 1) == 0)
      {
        v19 = *(v31 + (v23 >> 1) + 145);
        if (v19 != *(v31 + (v23 >> 1) + 146))
        {
          v18 = AllocUnits_0(v31, v19 + 1);
          if (!v18)
          {
            return RestartModel_0(v31);
          }

          v17 = (v31[8] + *(i + 1));
          v16 = v18;
          v15 = v17;
          v14 = v23 >> 1;
          do
          {
            *v16 = *v15;
            v16[1] = v15[1];
            v16[2] = v15[2];
            v15 += 3;
            v16 += 3;
            --v14;
          }

          while (v14);
          InsertNode_0(v31, v17, v19);
          *(i + 1) = v18 - v31[8];
        }
      }

      v7 = i[1];
      if (2 * v23 < v25)
      {
        ++v7;
      }

      i[1] = v7 + 2 * (4 * v23 <= v25 && i[1] <= 8 * v23);
    }

    v21 = 2 * *(v31[2] + 1) * (i[1] + 6);
    v20 = v26 + i[1];
    if (v21 >= 6 * v20)
    {
      if (v21 < 9 * v20)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }

      if (v21 >= 12 * v20)
      {
        ++v10;
      }

      if (v21 >= 15 * v20)
      {
        ++v10;
      }

      v22 = v10;
      i[1] += v10;
    }

    else
    {
      if (v21 <= v20)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      if (v21 >= 4 * v20)
      {
        ++v9;
      }

      v22 = v9;
      i[1] += 3;
    }

    v12 = (v31[8] + *(i + 1) + 6 * v23);
    result = SetSuccessor_0(v12, v30);
    *v12 = *v31[2];
    v12[1] = v22;
    *i = v23 + 1;
  }

  v11 = (v31[8] + v29);
  *v31 = v11;
  v31[1] = v11;
  return result;
}

int *SwapStates_0(int *result, int *a2)
{
  v2 = *result;
  v3 = *(result + 2);
  *result = *a2;
  *(result + 2) = *(a2 + 2);
  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

unsigned __int16 *CreateSuccessors_0(uint64_t a1, int a2)
{
  v20[64] = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a2;
  v15 = 0;
  v16 = 0;
  v14 = *a1;
  v13 = *(*(a1 + 16) + 2) | (*(*(a1 + 16) + 4) << 16);
  bzero(v20, 0x200uLL);
  v12 = 0;
  if (!v17)
  {
    v12 = 1;
    v20[0] = *(v18 + 16);
  }

  while (*(v14 + 2))
  {
    v14 = (*(v18 + 64) + *(v14 + 2));
    if (*v14 == 1)
    {
      i = (v14 + 1);
    }

    else
    {
        ;
      }
    }

    v11 = *(i + 1) | (*(i + 2) << 16);
    if (v11 != v13)
    {
      v14 = (*(v18 + 64) + v11);
      if (!v12)
      {
        v19 = (*(v18 + 64) + v11);
        goto LABEL_33;
      }

      break;
    }

    v2 = v12++;
    v20[v2] = i;
  }

  LOBYTE(v15) = *(*(v18 + 64) + v13);
  SetSuccessor_0(&v15, v13 + 1);
  if (*v14 == 1)
  {
    BYTE1(v15) = *(v14 + 3);
  }

  else
  {
      ;
    }

    v9 = j[1] - 1;
    v8 = v14[1] - *v14 - v9;
    if (2 * v9 > v8)
    {
      v5 = (2 * v9 + 3 * v8 - 1) / (2 * v8);
    }

    else
    {
      LOBYTE(v5) = 5 * v9 > v8;
    }

    BYTE1(v15) = v5 + 1;
  }

  while (v12)
  {
    if (*(v18 + 80) == *(v18 + 72))
    {
      if (*(v18 + 276))
      {
        v6 = RemoveNode_0(v18, 0);
      }

      else
      {
        v6 = AllocUnitsRare_0(v18, 0);
        if (!v6)
        {
          v19 = 0;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v3 = *(v18 + 80) - 12;
      *(v18 + 80) = v3;
      v6 = v3;
    }

    *v6 = 1;
    *(v6 + 2) = v15;
    *(v6 + 3) = v16;
    v6[2] = v14 - *(v18 + 64);
    SetSuccessor_0(v20[--v12], v6 - *(v18 + 64));
    v14 = v6;
  }

  v19 = v14;
LABEL_33:
  *MEMORY[0x1E69E9840];
  return v19;
}

_DWORD *AllocUnits_0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 276 + 4 * a2))
  {
    return RemoveNode_0(a1, a2);
  }

  v4 = 12 * *(a1 + 108 + a2);
  if (v4 > *(a1 + 80) - *(a1 + 72))
  {
    return AllocUnitsRare_0(a1, a2);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = v3 + v4;
  return v3;
}

_DWORD *AllocUnitsRare_0(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 56))
  {
    GlueFreeBlocks_0(a1);
    if (*(a1 + 276 + 4 * a2))
    {
      return RemoveNode_0(a1, a2);
    }
  }

  v7 = a2;
  while (++v7 != 38)
  {
    if (*(a1 + 276 + 4 * v7))
    {
      v6 = RemoveNode_0(a1, v7);
      SplitBlock_0(a1, v6, v7, a2);
      return v6;
    }
  }

  v5 = 12 * *(a1 + 108 + a2);
  --*(a1 + 56);
  if (*(a1 + 96) - *(a1 + 88) <= v5)
  {
    return 0;
  }

  v2 = *(a1 + 96) - v5;
  *(a1 + 96) = v2;
  return v2;
}

uint64_t GlueFreeBlocks_0(uint64_t result)
{
  v15 = result;
  v14 = *(v15 + 104) + *(v15 + 52);
  v12 = v14;
  *(result + 56) = 255;
  for (i = 0; i < 0x26; ++i)
  {
    v9 = *(result + 108 + i);
    v8 = *(result + 276 + 4 * i);
    *(result + 276 + 4 * i) = 0;
    while (v8)
    {
      v7 = *(result + 64) + v8;
      *(v7 + 4) = v12;
      *(*(result + 64) + v12 + 8) = v8;
      v12 = v8;
      v8 = *v7;
      *v7 = 0;
      *(v7 + 2) = v9;
    }
  }

  *(*(result + 64) + v14) = 1;
  *(*(result + 64) + v14 + 4) = v12;
  *(*(result + 64) + v12 + 8) = v14;
  if (*(result + 72) != *(result + 80))
  {
    **(result + 72) = 1;
  }

  while (v12 != v14)
  {
    v6 = *(result + 64) + v12;
    for (j = *(v6 + 2); ; *(v6 + 2) = j)
    {
      v4 = *(result + 64) + v12 + 12 * j;
      j += *(v4 + 2);
      if (*v4 || j >= 0x10000)
      {
        break;
      }

      *(*(result + 64) + *(v4 + 8) + 4) = *(v4 + 4);
      *(*(result + 64) + *(v4 + 4) + 8) = *(v4 + 8);
    }

    v12 = *(v6 + 4);
  }

  for (k = *(*(result + 64) + v14 + 4); k != v14; k = v1)
  {
    v3 = *(v15 + 64) + k;
    v1 = *(v3 + 4);
    for (m = *(v3 + 2); m > 0x80; m -= 128)
    {
      InsertNode_0(v15, v3, 0x25u);
      v3 += 1536;
    }

    v11 = *(v15 + 146 + m - 1);
    if (*(v15 + 108 + *(v15 + 146 + m - 1)) != m)
    {
      --v11;
      InsertNode_0(v15, (v3 + 12 * *(v15 + 108 + v11)), m - *(v15 + 108 + v11) - 1);
    }

    result = InsertNode_0(v15, v3, v11);
  }

  return result;
}

uint64_t RangeEnc_ShiftLow(uint64_t result)
{
  v3 = result;
  if (*result < 0xFF000000 || HIDWORD(*result))
  {
    v2 = *(result + 12);
    do
    {
      result = (*(*(v3 + 24) + 8))(*(v3 + 24), (v2 + HIDWORD(*v3)));
      v2 = -1;
      v1 = *(v3 + 16) - 1;
      *(v3 + 16) = v1;
    }

    while (v1);
    *(v3 + 12) = BYTE3(*v3);
  }

  ++*(v3 + 16);
  *v3 = *v3 << 8;
  return result;
}

uint64_t RangeEnc_Encode(uint64_t result, unsigned int a2, int a3, unsigned int a4)
{
  v5 = result;
  v4 = *(result + 8) / a4;
  *(result + 8) = v4;
  *result += a2 * v4;
  *(result + 8) *= a3;
  while (*(v5 + 8) < 0x1000000u)
  {
    *(v5 + 8) <<= 8;
    result = RangeEnc_ShiftLow(v5);
  }

  return result;
}

uint64_t RangeEnc_EncodeBit_0(uint64_t result, int a2)
{
  v2 = result;
  *(result + 8) = (*(result + 8) >> 14) * a2;
  while (*(v2 + 8) < 0x1000000u)
  {
    *(v2 + 8) <<= 8;
    result = RangeEnc_ShiftLow(v2);
  }

  return result;
}

uint64_t RangeEnc_EncodeBit_1(uint64_t result, int a2)
{
  v3 = result;
  v2 = (*(result + 8) >> 14) * a2;
  *result += v2;
  *(result + 8) -= v2;
  while (*(v3 + 8) < 0x1000000u)
  {
    *(v3 + 8) <<= 8;
    result = RangeEnc_ShiftLow(v3);
  }

  return result;
}

uint64_t xar_read_header(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a1;
  v79 = a2;
  v78 = 0;
  v77 = 0;
  i = 0;
  toc = 0;
  v78 = **(a1 + 2072);
  toc = 0;
  if (*v78)
  {
    while (1)
    {
LABEL_7:
      entry_0 = heap_get_entry_0((v78 + 856));
      *(v78 + 840) = entry_0;
      v77 = entry_0;
      if (!entry_0)
      {
        *(v78 + 24) = 1;
        return 1;
      }

      if ((v77[36] & 0xF000) != 0x4000 || *(v77 + 7) != 130)
      {
        break;
      }

      file_free_1(v77);
    }

    if ((*(v77 + 7) & 0x20000) != 0)
    {
      archive_entry_set_atime(v79, v77[27], 0);
    }

    if ((*(v77 + 7) & 0x8000) != 0)
    {
      archive_entry_set_ctime(v79, v77[25], 0);
    }

    if ((*(v77 + 7) & 0x10000) != 0)
    {
      archive_entry_set_mtime(v79, v77[26], 0);
    }

    archive_entry_set_gid(v79, v77[35]);
    if (v77[33] && _archive_entry_copy_gname_l(v79, v77[32], v77[33], *(v78 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v80, 12, "Can't allocate memory for Gname", v9, v10, v11, v12, v13, v71);
        return -30;
      }

      v14 = archive_string_conversion_charset_name(*(v78 + 1016));
      archive_set_error(v80, 79, "Gname cannot be converted from %s to current locale.", v15, v16, v17, v18, v19, v14);
      toc = -20;
    }

    archive_entry_set_uid(v79, v77[31]);
    if (v77[29] && _archive_entry_copy_uname_l(v79, v77[28], v77[29], *(v78 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v80, 12, "Can't allocate memory for Uname", v20, v21, v22, v23, v24, v71);
        return -30;
      }

      v25 = archive_string_conversion_charset_name(*(v78 + 1016));
      archive_set_error(v80, 79, "Uname cannot be converted from %s to current locale.", v26, v27, v28, v29, v30, v25);
      toc = -20;
    }

    archive_entry_set_mode(v79, *(v77 + 144));
    if (_archive_entry_copy_pathname_l(v79, v77[19], v77[20], *(v78 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v80, 12, "Can't allocate memory for Pathname", v31, v32, v33, v34, v35, v71);
        return -30;
      }

      v36 = archive_string_conversion_charset_name(*(v78 + 1016));
      archive_set_error(v80, 79, "Pathname cannot be converted from %s to current locale.", v37, v38, v39, v40, v41, v36);
      toc = -20;
    }

    if (v77[23] && _archive_entry_copy_symlink_l(v79, v77[22], v77[23], *(v78 + 1016)))
    {
      if (*__error() == 12)
      {
        archive_set_error(v80, 12, "Can't allocate memory for Linkname", v42, v43, v44, v45, v46, v71);
        return -30;
      }

      v47 = archive_string_conversion_charset_name(*(v78 + 1016));
      archive_set_error(v80, 79, "Linkname cannot be converted from %s to current locale.", v48, v49, v50, v51, v52, v47);
      toc = -20;
    }

    if ((v77[36] & 0xF000) == 0x4000)
    {
      archive_entry_set_nlink(v79, *(v77 + 6) + 2);
    }

    else
    {
      archive_entry_set_nlink(v79, *(v77 + 85));
    }

    archive_entry_set_size(v79, v77[7]);
    if (v77[44])
    {
      archive_entry_set_hardlink(v79, v77[43]);
    }

    archive_entry_set_ino64(v79, v77[38]);
    if ((*(v77 + 7) & 0x100) != 0)
    {
      archive_entry_set_dev(v79, *(v77 + 73));
    }

    if ((*(v77 + 7) & 0x200) != 0)
    {
      archive_entry_set_devmajor(v79, *(v77 + 74));
    }

    if ((*(v77 + 7) & 0x400) != 0)
    {
      archive_entry_set_devminor(v79, *(v77 + 75));
    }

    if (v77[40])
    {
      archive_entry_copy_fflags_text(v79, v77[39]);
    }

    *(v78 + 888) = 1;
    *(v78 + 896) = 0;
    *(v78 + 904) = v77[5];
    *(v78 + 920) = v77[7];
    *(v78 + 928) = *(v77 + 16);
    memcpy((v78 + 936), v77 + 9, 0x28uLL);
    memcpy((v78 + 976), v77 + 14, 0x28uLL);
    for (i = v77[46]; i; i = *i)
    {
      v74 = 0;
      v73 = 0;
      v72 = 0;
      toc = move_reading_point(v80, i[6]);
      if (toc)
      {
        break;
      }

      toc = rd_contents_init(v80, *(i + 16), *(i + 18), *(i + 28), v53, v54, v55, v56);
      if (toc)
      {
        break;
      }

      v74 = 0;
      toc = rd_contents(v80, &v74, &v73, &v72, i[5], v57, v58, v59);
      if (toc)
      {
        break;
      }

      if (v73 != i[7])
      {
        archive_set_error(v80, -1, "Decompressed size error", v60, v61, v62, v63, v64, v71);
        toc = -30;
        break;
      }

      toc = checksum_final_0(v80, i + 11, i[10], i + 16, i[15]);
      if (toc)
      {
        archive_set_error(v80, -1, "Xattr checksum error", v65, v66, v67, v68, v69, v71);
        toc = -20;
        break;
      }

      if (!i[1])
      {
        archive_set_error(v80, -1, "Xattr name error", v65, v66, v67, v68, v69, v71);
        toc = -20;
        break;
      }

      archive_entry_xattr_add_entry(v79, i[1], v74, v73);
    }

    if (!toc)
    {
      if (*(v78 + 904))
      {
        toc = move_reading_point(v80, v77[6]);
      }

      else
      {
        toc = 0;
      }
    }

    file_free_1(v77);
    return toc;
  }

  else if (*(v78 + 1016) || (*(v78 + 1016) = archive_string_conversion_from_charset(v80, "UTF-8", 1)) != 0)
  {
    toc = read_toc(v80, a2, a3, a4, a5, a6, a7, a8);
    if (!toc)
    {
      goto LABEL_7;
    }

    return toc;
  }

  else
  {
    return -30;
  }
}

uint64_t xar_read_data(uint64_t a1, uint64_t *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = 0;
  v16 = 0;
  v17 = **(a1 + 2072);
  if (*(v17 + 912))
  {
    __archive_read_consume(v21, *(v17 + 912));
    *(v17 + 912) = 0;
  }

  if (*(v17 + 24) || !*(v17 + 904))
  {
    HIDWORD(v14) = 1;
LABEL_16:
    *v20 = 0;
    *v19 = 0;
    *v18 = *(v17 + 8);
    return HIDWORD(v14);
  }

  if (*(v17 + 888))
  {
    v15 = rd_contents_init(v21, *(v17 + 928), *(v17 + 936), *(v17 + 976), a5, a6, a7, a8);
    if (v15)
    {
      *(v17 + 904) = 0;
      return v15;
    }

    *(v17 + 888) = 0;
  }

  *v20 = 0;
  HIDWORD(v14) = rd_contents(v21, v20, v19, &v16, *(v17 + 904), a6, a7, a8);
  if (HIDWORD(v14))
  {
    goto LABEL_16;
  }

  *v18 = *(v17 + 896);
  *(v17 + 896) += *v19;
  *(v17 + 8) += *v19;
  *v17 += v16;
  *(v17 + 904) -= v16;
  *(v17 + 912) = v16;
  if (!*(v17 + 904))
  {
    if (*(v17 + 896) != *(v17 + 920))
    {
      archive_set_error(v21, -1, "Decompressed size error", v8, v9, v10, v11, v12, v14);
      HIDWORD(v14) = -30;
      goto LABEL_16;
    }

    HIDWORD(v14) = checksum_final_0(v21, (v17 + 952), *(v17 + 944), (v17 + 992), *(v17 + 984));
    if (HIDWORD(v14))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t xar_read_data_skip(uint64_t a1)
{
  v3 = **(a1 + 2072);
  if (*(v3 + 24))
  {
    return 1;
  }

  else
  {
    consume = __archive_read_consume(a1, *(v3 + 904) + *(v3 + 912));
    if (consume < 0)
    {
      return -30;
    }

    else
    {
      *v3 += consume;
      *(v3 + 912) = 0;
      return 0;
    }
  }
}

uint64_t read_toc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a1;
  v61 = 0;
  i = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v61 = **(a1 + 2072);
  v59 = __archive_read_ahead(a1, 0x1CuLL, &v55, a4, a5, a6, a7, a8);
  if (v55 < 0)
  {
    return v55;
  }

  else if (v55 >= 28)
  {
    if (archive_be32dec_2(v59) == 2019652129)
    {
      if (archive_be16dec(v59 + 3) == 1)
      {
        v58 = archive_be64dec((v59 + 4));
        v61[8] = v58;
        v57 = archive_be64dec((v59 + 8));
        v56 = archive_be32dec_2((v59 + 12));
        __archive_read_consume(v62, 0x1CuLL);
        *v61 += 28;
        v61[9] = 0;
        v50 = move_reading_point(v62, 28);
        if (v50)
        {
          return v50;
        }

        else
        {
          v51 = rd_contents_init(v62, 1, v56, 0, v24, v25, v26, v27);
          if (v51)
          {
            return v51;
          }

          else
          {
            toc = xml2_read_toc(v62);
            if (toc)
            {
              return toc;
            }

            else
            {
              v61[2] = *v61;
              if (v61[9] == v57)
              {
                if (v56)
                {
                  v53 = move_reading_point(v62, v61[10]);
                  if (v53)
                  {
                    return v53;
                  }

                  v59 = __archive_read_ahead(v62, v61[11], &v55, v33, v34, v35, v36, v37);
                  if (v55 < 0)
                  {
                    return v55;
                  }

                  if (v55 < v61[11])
                  {
                    archive_set_error(v62, 79, "Truncated archive file", v38, v39, v40, v41, v42, v44);
                    return -30;
                  }

                  v54 = checksum_final_0(v62, v59, v61[11], 0, 0);
                  __archive_read_consume(v62, v61[11]);
                  *v61 += v61[11];
                  if (v54)
                  {
                    return -30;
                  }
                }

                for (i = v61[109]; i; i = *(i + 8))
                {
                  for (j = (v61 + 110); *j; j = *j)
                  {
                    if (*(*j + 2) == *(i + 32))
                    {
                      v46 = *(*j + 3) + 1;
                      *(i + 340) = v46;
                      for (k = (*j)[2]; k; k = *(k + 8))
                      {
                        *(k + 340) = v46;
                        *(k + 352) = 0;
                        archive_string_concat((k + 344), (i + 152));
                      }

                      v48 = *j;
                      *j = **j;
                      free(v48);
                      break;
                    }
                  }
                }

                v62[4] = 655360;
                *(v62 + 3) = "xar";
                return 0;
              }

              else
              {
                archive_set_error(v62, -1, "TOC uncompressed size error", v28, v29, v30, v31, v32, v44);
                return -30;
              }
            }
          }
        }
      }

      else
      {
        v45 = v62;
        v18 = archive_be16dec(v59 + 3);
        archive_set_error(v45, 79, "Unsupported header version(%d)", v19, v20, v21, v22, v23, v18);
        return -30;
      }
    }

    else
    {
      archive_set_error(v62, 79, "Invalid header magic", v13, v14, v15, v16, v17, v44);
      return -30;
    }
  }

  else
  {
    archive_set_error(v62, 79, "Truncated archive header", v8, v9, v10, v11, v12, v44);
    return -30;
  }
}

uint64_t heap_get_entry_0(_DWORD *a1)
{
  if (a1[3] < 1)
  {
    return 0;
  }

  v6 = **a1;
  v1 = *a1;
  v2 = a1[3] - 1;
  a1[3] = v2;
  **a1 = v1[v2];
  v9 = 0;
  v11 = *(**a1 + 32);
  while (1)
  {
    v8 = 2 * v9 + 1;
    if (v8 >= a1[3])
    {
      return v6;
    }

    v10 = *(*(*a1 + 8 * v8) + 32);
    v7 = 2 * v9 + 2;
    if (v7 < a1[3])
    {
      v3 = *(*(*a1 + 8 * v8) + 32);
      if (*(*(*a1 + 8 * v7) + 32) < v10)
      {
        v8 = 2 * v9 + 2;
        v10 = *(*(*a1 + 8 * v7) + 32);
      }
    }

    if (v11 <= v10)
    {
      break;
    }

    v5 = *(*a1 + 8 * v9);
    *(*a1 + 8 * v9) = *(*a1 + 8 * v8);
    *(*a1 + 8 * v8) = v5;
    v9 = v8;
  }

  return v6;
}

void file_free_1(void *a1)
{
  archive_string_free((a1 + 19));
  archive_string_free((a1 + 22));
  archive_string_free((a1 + 28));
  archive_string_free((a1 + 32));
  archive_string_free((a1 + 43));
  for (i = a1[46]; i; i = v1)
  {
    v1 = *i;
    xattr_free(i);
  }

  free(a1);
}

uint64_t move_reading_point(uint64_t a1, uint64_t a2)
{
  v11 = **(a1 + 2072);
  if (*v11 - v11[2] == a2)
  {
    return 0;
  }

  v9 = a2 - (*v11 - v11[2]);
  if (v9 <= 0)
  {
    seek = __archive_read_seek(a1, v11[2] + a2, 0);
    if (seek == -25)
    {
      archive_set_error(a1, -1, "Cannot seek.", v2, v3, v4, v5, v6, 0xFFFFFFFFFFFFFFE7);
      return -25;
    }

    *v11 = seek;
    return 0;
  }

  consume = __archive_read_consume(a1, v9);
  if ((consume & 0x8000000000000000) == 0)
  {
    *v11 += consume;
    return 0;
  }

  return consume;
}

uint64_t rd_contents_init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3;
  v10 = a4;
  v9 = decompression_init(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    return v9;
  }

  else
  {
    checksum_init_0(a1, v11, v10);
    return 0;
  }
}

uint64_t rd_contents(_DWORD *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = 0;
  v14 = 0;
  v15 = __archive_read_ahead(a1, 1uLL, &v14, a4, a5, a6, a7, a8);
  if ((v14 & 0x8000000000000000) != 0)
  {
    return v14;
  }

  else if (v14)
  {
    if (v14 > v16)
    {
      v14 = v16;
    }

    *v17 = v14;
    if (decompress_0(v20, v19, v18, v15, v17))
    {
      return -30;
    }

    else
    {
      checksum_update_0(v20, v15, *v17, *v19, *v18);
      return 0;
    }
  }

  else
  {
    archive_set_error(v20, -1, "Truncated archive file", v8, v9, v10, v11, v12, 0);
    return -30;
  }
}

uint64_t checksum_final_0(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v13 = **(a1 + 2072);
  v12 = _checksum_final((v13 + 452), a2, a3);
  if (!v12)
  {
    v12 = _checksum_final((v13 + 644), a4, a5);
  }

  if (v12)
  {
    archive_set_error(a1, -1, "Sumcheck error", v5, v6, v7, v8, v9, v11);
  }

  return v12;
}

uint64_t xml2_read_toc(_DWORD *a1)
{
  v18 = a1;
  v16[0] = 0;
  v16[1] = 0;
  v17 = xmlReaderForIO(xml2_read_cb, xml2_close_cb, a1, 0, 0, 0);
  if (v17)
  {
    xmlTextReaderSetErrorHandler(v17, xml2_error_hdr, v18);
    while (1)
    {
      v14 = xmlTextReaderRead(v17);
      if (v14 != 1)
      {
        break;
      }

      v11 = xmlTextReaderNodeType(v17);
      v13 = xmlTextReaderConstLocalName(v17);
      switch(v11)
      {
        case 1:
          IsEmptyElement = xmlTextReaderIsEmptyElement(v17);
          v15 = xml2_xmlattr_setup(v18, v16, v17);
          if (!v15)
          {
            v15 = xml_start(v18, v13, v16);
          }

          xmlattr_cleanup(v16);
          if (v15)
          {
            xmlFreeTextReader(v17);
            xmlCleanupParser();
            return v15;
          }

          if (IsEmptyElement)
          {
            xml_end(v18, v13);
          }

          break;
        case 3:
          __s = xmlTextReaderConstValue(v17);
          v6 = strlen(__s);
          xml_data(v18, __s, v6);
          break;
        case 15:
          xml_end(v18, v13);
          break;
      }
    }

    xmlFreeTextReader(v17);
    xmlCleanupParser();
    if (v14)
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(v18, 12, "Couldn't allocate memory for xml parser", v1, v2, v3, v4, v5, v9);
    return -30;
  }
}

uint64_t xml2_read_cb(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v14 = a1;
  v13 = **(a1 + 2072);
  if (v13[8])
  {
    v12 = v16;
    v11 = v15;
    v9 = rd_contents(v14, &v12, &v11, &v10, v13[8], a6, a7, a8);
    if (v9)
    {
      return v9;
    }

    else
    {
      __archive_read_consume(v14, v10);
      v13[8] -= v10;
      *v13 += v10;
      v13[9] += v11;
      return v11;
    }
  }

  else
  {
    return 0;
  }
}

_DWORD *xml2_error_hdr(_DWORD *result, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 1 || a3 == 2 || a3 == 3 || a3 == 4)
  {
    return archive_set_error(result, -1, "XML Parsing error: %s", a4, a5, a6, a7, a8, a2);
  }

  return result;
}

uint64_t xml2_xmlattr_setup(_DWORD *a1, void *a2, xmlTextReader *a3)
{
  *a2 = 0;
  a2[1] = a2;
  for (HIDWORD(v21) = xmlTextReaderMoveToFirstAttribute(a3); HIDWORD(v21) == 1; HIDWORD(v21) = xmlTextReaderMoveToNextAttribute(a3))
  {
    v22 = malloc_type_malloc(0x18uLL, 0x30040F310086FuLL);
    if (!v22)
    {
      archive_set_error(a1, 12, "Out of memory", v3, v4, v5, v6, v7, v21);
      return -30;
    }

    v8 = xmlTextReaderConstLocalName(a3);
    v22[1] = strdup(v8);
    if (!v22[1])
    {
      free(v22);
      archive_set_error(a1, 12, "Out of memory", v9, v10, v11, v12, v13, v21);
      return -30;
    }

    v14 = xmlTextReaderConstValue(a3);
    v22[2] = strdup(v14);
    if (!v22[2])
    {
      free(v22[1]);
      free(v22);
      archive_set_error(a1, 12, "Out of memory", v15, v16, v17, v18, v19, v21);
      return -30;
    }

    *v22 = 0;
    *a2[1] = v22;
    a2[1] = v22;
  }

  return HIDWORD(v21);
}

uint64_t xml_start(uint64_t a1, const char *a2, uint64_t ***a3)
{
  v13 = **(a1 + 2072);
  *(v13 + 56) = 0;
  switch(*(v13 + 40))
  {
    case 0:
      if (!strcmp(a2, "xar"))
      {
        *(v13 + 40) = 1;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 1:
      if (!strcmp(a2, "toc"))
      {
        *(v13 + 40) = 2;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 2:
      if (!strcmp(a2, "creation-time"))
      {
        *(v13 + 40) = 3;
        goto LABEL_160;
      }

      if (!strcmp(a2, "checksum"))
      {
        *(v13 + 40) = 4;
        goto LABEL_160;
      }

      if (!strcmp(a2, "file"))
      {
        if (!file_new_1(a1, v13, a3))
        {
          *(v13 + 40) = 7;
          goto LABEL_160;
        }

        v17 = -30;
      }

      else
      {
        if (!unknowntag_start(a1, v13, a2))
        {
          goto LABEL_160;
        }

        v17 = -30;
      }

      break;
    case 3:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 4:
      if (!strcmp(a2, "offset"))
      {
        *(v13 + 40) = 5;
        goto LABEL_160;
      }

      if (!strcmp(a2, "size"))
      {
        *(v13 + 40) = 6;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 7:
      if (!strcmp(a2, "file"))
      {
        if (!file_new_1(a1, v13, a3))
        {
          goto LABEL_160;
        }

        v17 = -30;
      }

      else
      {
        if (!strcmp(a2, "data"))
        {
          *(v13 + 40) = 8;
          goto LABEL_160;
        }

        if (!strcmp(a2, "ea"))
        {
          if (!xattr_new(a1, v13, a3))
          {
            *(v13 + 40) = 16;
            goto LABEL_160;
          }

          v17 = -30;
        }

        else
        {
          if (!strcmp(a2, "ctime"))
          {
            *(v13 + 40) = 25;
            goto LABEL_160;
          }

          if (!strcmp(a2, "mtime"))
          {
            *(v13 + 40) = 26;
            goto LABEL_160;
          }

          if (!strcmp(a2, "atime"))
          {
            *(v13 + 40) = 27;
            goto LABEL_160;
          }

          if (!strcmp(a2, "group"))
          {
            *(v13 + 40) = 28;
            goto LABEL_160;
          }

          if (!strcmp(a2, "gid"))
          {
            *(v13 + 40) = 29;
            goto LABEL_160;
          }

          if (!strcmp(a2, "user"))
          {
            *(v13 + 40) = 30;
            goto LABEL_160;
          }

          if (!strcmp(a2, "uid"))
          {
            *(v13 + 40) = 31;
            goto LABEL_160;
          }

          if (!strcmp(a2, "mode"))
          {
            *(v13 + 40) = 32;
            goto LABEL_160;
          }

          if (!strcmp(a2, "device"))
          {
            *(v13 + 40) = 33;
            goto LABEL_160;
          }

          if (!strcmp(a2, "deviceno"))
          {
            *(v13 + 40) = 36;
            goto LABEL_160;
          }

          if (!strcmp(a2, "inode"))
          {
            *(v13 + 40) = 37;
            goto LABEL_160;
          }

          if (!strcmp(a2, "link"))
          {
            *(v13 + 40) = 38;
            goto LABEL_160;
          }

          if (!strcmp(a2, "type"))
          {
            *(v13 + 40) = 39;
            for (i = *a3; ; i = *i)
            {
              if (!i)
              {
                goto LABEL_160;
              }

              if (!strcmp(i[1], "link"))
              {
                if (*(*(v13 + 840) + 8) || *(*(v13 + 840) + 336))
                {
                  archive_set_error(a1, -1, "File with multiple link targets", v3, v4, v5, v6, v7, v10);
                  return -30;
                }

                if (!strcmp(i[2], "original"))
                {
                  *(*(v13 + 840) + 8) = *(v13 + 872);
                  *(v13 + 872) = *(v13 + 840);
                }

                else
                {
                  v10 = i[2];
                  v8 = strlen(v10);
                  *(*(v13 + 840) + 336) = atol10(v10, v8);
                  if (*(*(v13 + 840) + 336) && add_link(a1, v13, *(v13 + 840)))
                  {
                    return -30;
                  }
                }
              }
            }
          }

          if (!strcmp(a2, "name"))
          {
            *(v13 + 40) = 40;
            for (j = *a3; j; j = *j)
            {
              if (!strcmp(j[1], "enctype") && !strcmp(j[2], "base64"))
              {
                *(v13 + 56) = 1;
              }
            }

            goto LABEL_160;
          }

          if (!strcmp(a2, "acl"))
          {
            *(v13 + 40) = 41;
            goto LABEL_160;
          }

          if (!strcmp(a2, "flags"))
          {
            *(v13 + 40) = 45;
            goto LABEL_160;
          }

          if (!strcmp(a2, "ext2"))
          {
            *(v13 + 40) = 56;
            goto LABEL_160;
          }

          if (!unknowntag_start(a1, v13, a2))
          {
            goto LABEL_160;
          }

          v17 = -30;
        }
      }

      break;
    case 8:
      if (!strcmp(a2, "length"))
      {
        *(v13 + 40) = 9;
        goto LABEL_160;
      }

      if (!strcmp(a2, "offset"))
      {
        *(v13 + 40) = 10;
        goto LABEL_160;
      }

      if (!strcmp(a2, "size"))
      {
        *(v13 + 40) = 11;
        goto LABEL_160;
      }

      if (!strcmp(a2, "encoding"))
      {
        *(v13 + 40) = 12;
        *(*(v13 + 840) + 64) = getencoding(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "archived-checksum"))
      {
        *(v13 + 40) = 13;
        *(*(v13 + 840) + 72) = getsumalgorithm(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v13 + 40) = 14;
        *(*(v13 + 840) + 112) = getsumalgorithm(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "content"))
      {
        *(v13 + 40) = 15;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 0xF:
      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 0x10:
      if (!strcmp(a2, "length"))
      {
        *(v13 + 40) = 17;
        goto LABEL_160;
      }

      if (!strcmp(a2, "offset"))
      {
        *(v13 + 40) = 18;
        goto LABEL_160;
      }

      if (!strcmp(a2, "size"))
      {
        *(v13 + 40) = 19;
        goto LABEL_160;
      }

      if (!strcmp(a2, "encoding"))
      {
        *(v13 + 40) = 20;
        *(*(v13 + 848) + 64) = getencoding(a3);
        goto LABEL_160;
      }

      if (!strcmp(a2, "archived-checksum"))
      {
        *(v13 + 40) = 21;
        goto LABEL_160;
      }

      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v13 + 40) = 22;
        goto LABEL_160;
      }

      if (!strcmp(a2, "name"))
      {
        *(v13 + 40) = 23;
        goto LABEL_160;
      }

      if (!strcmp(a2, "fstype"))
      {
        *(v13 + 40) = 24;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 0x21:
      if (!strcmp(a2, "major"))
      {
        *(v13 + 40) = 34;
        goto LABEL_160;
      }

      if (!strcmp(a2, "minor"))
      {
        *(v13 + 40) = 35;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 0x29:
      if (!strcmp(a2, "appleextended"))
      {
        *(v13 + 40) = 44;
        goto LABEL_160;
      }

      if (!strcmp(a2, "default"))
      {
        *(v13 + 40) = 42;
        goto LABEL_160;
      }

      if (!strcmp(a2, "access"))
      {
        *(v13 + 40) = 43;
        goto LABEL_160;
      }

      if (!unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 0x2D:
      if (xml_parse_file_flags(v13, a2) || !unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    case 0x38:
      if (xml_parse_file_ext2(v13, a2) || !unknowntag_start(a1, v13, a2))
      {
        goto LABEL_160;
      }

      v17 = -30;
      break;
    default:
LABEL_160:
      v17 = 0;
      break;
  }

  return v17;
}

void xmlattr_cleanup(uint64_t a1)
{
  for (i = *a1; i; i = v1)
  {
    v1 = *i;
    free(i[1]);
    free(i[2]);
    free(i);
  }

  *a1 = 0;
  *(a1 + 8) = a1;
}

void xml_end(uint64_t a1, const char *a2)
{
  v2 = **(a1 + 2072);
  switch(*(v2 + 40))
  {
    case 1:
      if (!strcmp(a2, "xar"))
      {
        *(v2 + 40) = 0;
      }

      break;
    case 2:
      if (!strcmp(a2, "toc"))
      {
        *(v2 + 40) = 1;
      }

      break;
    case 3:
      if (!strcmp(a2, "creation-time"))
      {
        *(v2 + 40) = 2;
      }

      break;
    case 4:
      if (!strcmp(a2, "checksum"))
      {
        *(v2 + 40) = 2;
      }

      break;
    case 5:
      if (!strcmp(a2, "offset"))
      {
        *(v2 + 40) = 4;
      }

      break;
    case 6:
      if (!strcmp(a2, "size"))
      {
        *(v2 + 40) = 4;
      }

      break;
    case 7:
      if (!strcmp(a2, "file"))
      {
        if (*(*(v2 + 840) + 16) && (*(*(v2 + 840) + 288) & 0xF000) == 0x4000)
        {
          ++*(*(*(v2 + 840) + 16) + 24);
        }

        *(v2 + 840) = *(*(v2 + 840) + 16);
        if (!*(v2 + 840))
        {
          *(v2 + 40) = 2;
        }
      }

      break;
    case 8:
      if (!strcmp(a2, "data"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 9:
      if (!strcmp(a2, "length"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xA:
      if (!strcmp(a2, "offset"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xB:
      if (!strcmp(a2, "size"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xC:
      if (!strcmp(a2, "encoding"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xD:
      if (!strcmp(a2, "archived-checksum"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xE:
      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0xF:
      if (!strcmp(a2, "content"))
      {
        *(v2 + 40) = 8;
      }

      break;
    case 0x10:
      if (!strcmp(a2, "ea"))
      {
        *(v2 + 40) = 7;
        *(v2 + 848) = 0;
      }

      break;
    case 0x11:
      if (!strcmp(a2, "length"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x12:
      if (!strcmp(a2, "offset"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x13:
      if (!strcmp(a2, "size"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x14:
      if (!strcmp(a2, "encoding"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x15:
      if (!strcmp(a2, "archived-checksum"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x16:
      if (!strcmp(a2, "extracted-checksum"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x17:
      if (!strcmp(a2, "name"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x18:
      if (!strcmp(a2, "fstype"))
      {
        *(v2 + 40) = 16;
      }

      break;
    case 0x19:
      if (!strcmp(a2, "ctime"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1A:
      if (!strcmp(a2, "mtime"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1B:
      if (!strcmp(a2, "atime"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1C:
      if (!strcmp(a2, "group"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1D:
      if (!strcmp(a2, "gid"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1E:
      if (!strcmp(a2, "user"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x1F:
      if (!strcmp(a2, "uid"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x20:
      if (!strcmp(a2, "mode"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x21:
      if (!strcmp(a2, "device"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x22:
      if (!strcmp(a2, "major"))
      {
        *(v2 + 40) = 33;
      }

      break;
    case 0x23:
      if (!strcmp(a2, "minor"))
      {
        *(v2 + 40) = 33;
      }

      break;
    case 0x24:
      if (!strcmp(a2, "deviceno"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x25:
      if (!strcmp(a2, "inode"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x26:
      if (!strcmp(a2, "link"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x27:
      if (!strcmp(a2, "type"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x28:
      if (!strcmp(a2, "name"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x29:
      if (!strcmp(a2, "acl"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x2A:
      if (!strcmp(a2, "default"))
      {
        *(v2 + 40) = 41;
      }

      break;
    case 0x2B:
      if (!strcmp(a2, "access"))
      {
        *(v2 + 40) = 41;
      }

      break;
    case 0x2C:
      if (!strcmp(a2, "appleextended"))
      {
        *(v2 + 40) = 41;
      }

      break;
    case 0x2D:
      if (!strcmp(a2, "flags"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x2E:
      if (!strcmp(a2, "UserNoDump"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x2F:
      if (!strcmp(a2, "UserImmutable"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x30:
      if (!strcmp(a2, "UserAppend"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x31:
      if (!strcmp(a2, "UserOpaque"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x32:
      if (!strcmp(a2, "UserNoUnlink"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x33:
      if (!strcmp(a2, "SystemArchived"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x34:
      if (!strcmp(a2, "SystemImmutable"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x35:
      if (!strcmp(a2, "SystemAppend"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x36:
      if (!strcmp(a2, "SystemNoUnlink"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x37:
      if (!strcmp(a2, "SystemSnapshot"))
      {
        *(v2 + 40) = 45;
      }

      break;
    case 0x38:
      if (!strcmp(a2, "ext2"))
      {
        *(v2 + 40) = 7;
      }

      break;
    case 0x39:
      if (!strcmp(a2, "SecureDeletion"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3A:
      if (!strcmp(a2, "Undelete"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3B:
      if (!strcmp(a2, "Compress"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3C:
      if (!strcmp(a2, "Synchronous"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3D:
      if (!strcmp(a2, "Immutable"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3E:
      if (!strcmp(a2, "AppendOnly"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x3F:
      if (!strcmp(a2, "NoDump"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x40:
      if (!strcmp(a2, "NoAtime"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x41:
      if (!strcmp(a2, "CompDirty"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x42:
      if (!strcmp(a2, "CompBlock"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x43:
      if (!strcmp(a2, "NoCompBlock"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x44:
      if (!strcmp(a2, "CompError"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x45:
      if (!strcmp(a2, "BTree"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x46:
      if (!strcmp(a2, "HashIndexed"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x47:
      if (!strcmp(a2, "iMagic"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x48:
      if (!strcmp(a2, "Journaled"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x49:
      if (!strcmp(a2, "NoTail"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4A:
      if (!strcmp(a2, "DirSync"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4B:
      if (!strcmp(a2, "TopDir"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4C:
      if (!strcmp(a2, "Reserved"))
      {
        *(v2 + 40) = 56;
      }

      break;
    case 0x4D:
      unknowntag_end(v2, a2);
      break;
    default:
      return;
  }
}

uint64_t xml_data(uint64_t result, char *a2, int a3)
{
  v5 = **(result + 2072);
  v4 = *(v5 + 40);
  if (v4 == 5)
  {
    result = atol10(a2, a3);
    *(v5 + 80) = result;
  }

  else if (v4 == 6)
  {
    result = atol10(a2, a3);
    *(v5 + 88) = result;
  }

  if (*(v5 + 840))
  {
    switch(*(v5 + 40))
    {
      case 9:
        *(*(v5 + 840) + 28) |= 1u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 40) = result;
        break;
      case 0xA:
        *(*(v5 + 840) + 28) |= 1u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 48) = result;
        break;
      case 0xB:
        *(*(v5 + 840) + 28) |= 1u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 56) = result;
        break;
      case 0xD:
        result = atohex((*(v5 + 840) + 88), 20, a2, a3);
        *(*(v5 + 840) + 80) = result;
        break;
      case 0xE:
        result = atohex((*(v5 + 840) + 128), 20, a2, a3);
        *(*(v5 + 840) + 120) = result;
        break;
      case 0x11:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atol10(a2, a3);
        *(*(v5 + 848) + 40) = result;
        break;
      case 0x12:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atol10(a2, a3);
        *(*(v5 + 848) + 48) = result;
        break;
      case 0x13:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atol10(a2, a3);
        *(*(v5 + 848) + 56) = result;
        break;
      case 0x15:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atohex((*(v5 + 848) + 88), 20, a2, a3);
        *(*(v5 + 848) + 80) = result;
        break;
      case 0x16:
        *(*(v5 + 840) + 28) |= 0x2000u;
        result = atohex((*(v5 + 848) + 128), 20, a2, a3);
        *(*(v5 + 848) + 120) = result;
        break;
      case 0x17:
        *(*(v5 + 840) + 28) |= 0x2000u;
        *(*(v5 + 848) + 16) = 0;
        result = archive_strncat((*(v5 + 848) + 8), a2, a3);
        break;
      case 0x18:
        *(*(v5 + 840) + 28) |= 0x2000u;
        *(*(v5 + 848) + 160) = 0;
        result = archive_strncat((*(v5 + 848) + 152), a2, a3);
        break;
      case 0x19:
        *(*(v5 + 840) + 28) |= 0x8008u;
        result = parse_time(a2, a3);
        *(*(v5 + 840) + 200) = result;
        break;
      case 0x1A:
        *(*(v5 + 840) + 28) |= 0x10008u;
        result = parse_time(a2, a3);
        *(*(v5 + 840) + 208) = result;
        break;
      case 0x1B:
        *(*(v5 + 840) + 28) |= 0x20008u;
        result = parse_time(a2, a3);
        *(*(v5 + 840) + 216) = result;
        break;
      case 0x1C:
        *(*(v5 + 840) + 28) |= 0x20u;
        *(*(v5 + 840) + 264) = 0;
        result = archive_strncat((*(v5 + 840) + 256), a2, a3);
        break;
      case 0x1D:
        *(*(v5 + 840) + 28) |= 0x20u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 280) = result;
        break;
      case 0x1E:
        *(*(v5 + 840) + 28) |= 0x10u;
        *(*(v5 + 840) + 232) = 0;
        result = archive_strncat((*(v5 + 840) + 224), a2, a3);
        break;
      case 0x1F:
        *(*(v5 + 840) + 28) |= 0x10u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 248) = result;
        break;
      case 0x20:
        *(*(v5 + 840) + 28) |= 0x40u;
        v3 = *(*(v5 + 840) + 288) & 0xF000;
        result = atol8_2(a2, a3);
        *(*(v5 + 840) + 288) = v3 | result & 0xFFF;
        break;
      case 0x22:
        *(*(v5 + 840) + 28) |= 0x200u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 296) = result;
        break;
      case 0x23:
        *(*(v5 + 840) + 28) |= 0x400u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 300) = result;
        break;
      case 0x24:
        *(*(v5 + 840) + 28) |= 0x100u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 292) = result;
        break;
      case 0x25:
        *(*(v5 + 840) + 28) |= 0x800u;
        result = atol10(a2, a3);
        *(*(v5 + 840) + 304) = result;
        break;
      case 0x26:
        *(*(v5 + 840) + 28) |= 4u;
        *(*(v5 + 840) + 184) = 0;
        result = archive_strncat((*(v5 + 840) + 176), a2, a3);
        break;
      case 0x27:
        if (!is_string("file", a2, a3) || !is_string("hardlink", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x8000;
        }

        if (!is_string("directory", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x4000;
        }

        if (!is_string("symlink", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0xA000;
        }

        if (!is_string("character special", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x2000;
        }

        if (!is_string("block special", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x6000;
        }

        if (!is_string("socket", a2, a3))
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0xC000;
        }

        result = is_string("fifo", a2, a3);
        if (!result)
        {
          *(*(v5 + 840) + 288) = *(*(v5 + 840) + 288) & 0xFFF | 0x1000;
        }

        *(*(v5 + 840) + 28) |= 0x80u;
        break;
      case 0x28:
        if (*(*(v5 + 840) + 16))
        {
          archive_string_concat((*(v5 + 840) + 152), (*(*(v5 + 840) + 16) + 152));
          archive_strappend_char((*(v5 + 840) + 152), 47);
        }

        *(*(v5 + 840) + 28) |= 2u;
        if (*(v5 + 56))
        {
          result = strappend_base64(v5, (*(v5 + 840) + 152), a2, a3);
        }

        else
        {
          result = archive_strncat((*(v5 + 840) + 152), a2, a3);
        }

        break;
      case 0x2A:
      case 0x2B:
      case 0x2C:
        *(*(v5 + 840) + 28) |= 0x4000u;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t unknowntag_start(_DWORD *a1, uint64_t a2, const char *a3)
{
  v12 = malloc_type_malloc(0x20uLL, 0x103004057E7F81CuLL);
  if (v12)
  {
    *v12 = *(a2 + 48);
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = 0;
    v12[2] = 0;
    v11 = v12 + 1;
    if (a3)
    {
      v10 = strlen(a3);
      archive_strncat(v11, a3, v10);
    }

    else
    {
      archive_strncat(v11, 0, 0);
    }

    if (!*(a2 + 48))
    {
      *(a2 + 44) = *(a2 + 40);
      *(a2 + 40) = 77;
    }

    *(a2 + 48) = v12;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory", v3, v4, v5, v6, v7, v9);
    return -30;
  }
}

uint64_t file_new_1(_DWORD *a1, uint64_t a2, uint64_t ***a3)
{
  v12 = malloc_type_calloc(1uLL, 0x178uLL, 0x10300401D0EDC66uLL);
  if (v12)
  {
    v12[2] = *(a2 + 840);
    *(v12 + 144) = -32257;
    v12[27] = 0;
    v12[26] = 0;
    *(a2 + 840) = v12;
    *(a2 + 848) = 0;
    for (i = *a3; i; i = *i)
    {
      if (!strcmp(i[1], "id"))
      {
        v8 = strlen(i[2]);
        v12[4] = atol10(i[2], v8);
      }
    }

    *(v12 + 85) = 1;
    if (heap_add_entry_0(a1, a2 + 856, v12, v3, v4, v5, v6, v7))
    {
      return -30;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory", v3, v4, v5, v6, v7, v10);
    return -30;
  }
}

uint64_t xattr_new(_DWORD *a1, uint64_t a2, uint64_t ***a3)
{
  v13 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1030040E9BF76DFuLL);
  if (v13)
  {
    *(a2 + 848) = v13;
    for (i = *a3; i; i = *i)
    {
      if (!strcmp(i[1], "id"))
      {
        v8 = strlen(i[2]);
        v13[4] = atol10(i[2], v8);
      }
    }

      ;
    }

    *v13 = *j;
    *j = v13;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory", v3, v4, v5, v6, v7, v10);
    return -30;
  }
}

uint64_t atol10(char *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  *&v5[8] = 0;
  *v5 = (*a1 - 48);
  while (1)
  {
    v4 = 0;
    if ((*v5 & 0x80000000) == 0)
    {
      v4 = 0;
      if (*v5 < 10)
      {
        v2 = v6--;
        v4 = v2 != 0;
      }
    }

    if (!v4)
    {
      break;
    }

    *&v5[4] = 10 * *&v5[4] + *v5;
    *v5 = *++v7 - 48;
  }

  return *&v5[4];
}

uint64_t add_link(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 880); i; i = *i)
  {
    if (*(i + 2) == *(a3 + 336))
    {
      *(a3 + 8) = i[2];
      ++*(i + 3);
      i[2] = a3;
      return 0;
    }
  }

  v11 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
  if (v11)
  {
    *(a3 + 8) = 0;
    v11[2] = *(a3 + 336);
    v11[3] = 1;
    *(v11 + 2) = a3;
    *v11 = *(a2 + 880);
    *(a2 + 880) = v11;
    return 0;
  }

  else
  {
    archive_set_error(a1, 12, "Out of memory", v3, v4, v5, v6, v7, v9);
    return -30;
  }
}

uint64_t getencoding(uint64_t ***a1)
{
  v2 = 0;
  for (i = *a1; i; i = *i)
  {
    if (!strcmp(i[1], "style"))
    {
      if (!strcmp(i[2], "application/octet-stream"))
      {
        v2 = 0;
      }

      else if (!strcmp(i[2], "application/x-gzip"))
      {
        v2 = 1;
      }

      else if (!strcmp(i[2], "application/x-bzip2"))
      {
        v2 = 2;
      }

      else if (!strcmp(i[2], "application/x-lzma"))
      {
        v2 = 3;
      }

      else if (!strcmp(i[2], "application/x-xz"))
      {
        v2 = 4;
      }
    }
  }

  return v2;
}

uint64_t getsumalgorithm(uint64_t ***a1)
{
  v3 = 0;
  for (i = *a1; i; i = *i)
  {
    if (!strcmp(i[1], "style"))
    {
      v2 = i[2];
      if ((*v2 == 83 || *v2 == 115) && (*(v2 + 1) == 72 || *(v2 + 1) == 104) && (*(v2 + 2) == 65 || *(v2 + 2) == 97) && *(v2 + 3) == 49 && !*(v2 + 4))
      {
        v3 = 1;
      }

      if ((*v2 == 77 || *v2 == 109) && (*(v2 + 1) == 68 || *(v2 + 1) == 100) && *(v2 + 2) == 53 && !*(v2 + 3))
      {
        v3 = 2;
      }
    }
  }

  return v3;
}

uint64_t xml_parse_file_flags(uint64_t a1, const char *a2)
{
  v3 = 0;
  if (!strcmp(a2, "UserNoDump"))
  {
    *(a1 + 40) = 46;
    v3 = "nodump";
  }

  else if (!strcmp(a2, "UserImmutable"))
  {
    *(a1 + 40) = 47;
    v3 = "uimmutable";
  }

  else if (!strcmp(a2, "UserAppend"))
  {
    *(a1 + 40) = 48;
    v3 = "uappend";
  }

  else if (!strcmp(a2, "UserOpaque"))
  {
    *(a1 + 40) = 49;
    v3 = "opaque";
  }

  else if (!strcmp(a2, "UserNoUnlink"))
  {
    *(a1 + 40) = 50;
    v3 = "nouunlink";
  }

  else if (!strcmp(a2, "SystemArchived"))
  {
    *(a1 + 40) = 51;
    v3 = "archived";
  }

  else if (!strcmp(a2, "SystemImmutable"))
  {
    *(a1 + 40) = 52;
    v3 = "simmutable";
  }

  else if (!strcmp(a2, "SystemAppend"))
  {
    *(a1 + 40) = 53;
    v3 = "sappend";
  }

  else if (!strcmp(a2, "SystemNoUnlink"))
  {
    *(a1 + 40) = 54;
    v3 = "nosunlink";
  }

  else if (!strcmp(a2, "SystemSnapshot"))
  {
    *(a1 + 40) = 55;
    v3 = "snapshot";
  }

  if (v3)
  {
    *(*(a1 + 840) + 28) |= 0x1000u;
    if (*(*(a1 + 840) + 320))
    {
      archive_strappend_char((*(a1 + 840) + 312), 44);
    }

    archive_strcat((*(a1 + 840) + 312), v3);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t xml_parse_file_ext2(uint64_t a1, const char *a2)
{
  v3 = 0;
  if (!strcmp(a2, "SecureDeletion"))
  {
    *(a1 + 40) = 57;
    v3 = "securedeletion";
  }

  else if (!strcmp(a2, "Undelete"))
  {
    *(a1 + 40) = 58;
    v3 = "nouunlink";
  }

  else if (!strcmp(a2, "Compress"))
  {
    *(a1 + 40) = 59;
    v3 = "compress";
  }

  else if (!strcmp(a2, "Synchronous"))
  {
    *(a1 + 40) = 60;
    v3 = "sync";
  }

  else if (!strcmp(a2, "Immutable"))
  {
    *(a1 + 40) = 61;
    v3 = "simmutable";
  }

  else if (!strcmp(a2, "AppendOnly"))
  {
    *(a1 + 40) = 62;
    v3 = "sappend";
  }

  else if (!strcmp(a2, "NoDump"))
  {
    *(a1 + 40) = 63;
    v3 = "nodump";
  }

  else if (!strcmp(a2, "NoAtime"))
  {
    *(a1 + 40) = 64;
    v3 = "noatime";
  }

  else if (!strcmp(a2, "CompDirty"))
  {
    *(a1 + 40) = 65;
    v3 = "compdirty";
  }

  else if (!strcmp(a2, "CompBlock"))
  {
    *(a1 + 40) = 66;
    v3 = "comprblk";
  }

  else if (!strcmp(a2, "NoCompBlock"))
  {
    *(a1 + 40) = 67;
    v3 = "nocomprblk";
  }

  else if (!strcmp(a2, "CompError"))
  {
    *(a1 + 40) = 68;
    v3 = "comperr";
  }

  else if (!strcmp(a2, "BTree"))
  {
    *(a1 + 40) = 69;
    v3 = "btree";
  }

  else if (!strcmp(a2, "HashIndexed"))
  {
    *(a1 + 40) = 70;
    v3 = "hashidx";
  }

  else if (!strcmp(a2, "iMagic"))
  {
    *(a1 + 40) = 71;
    v3 = "imagic";
  }

  else if (!strcmp(a2, "Journaled"))
  {
    *(a1 + 40) = 72;
    v3 = "journal";
  }

  else if (!strcmp(a2, "NoTail"))
  {
    *(a1 + 40) = 73;
    v3 = "notail";
  }

  else if (!strcmp(a2, "DirSync"))
  {
    *(a1 + 40) = 74;
    v3 = "dirsync";
  }

  else if (!strcmp(a2, "TopDir"))
  {
    *(a1 + 40) = 75;
    v3 = "topdir";
  }

  else if (!strcmp(a2, "Reserved"))
  {
    *(a1 + 40) = 76;
    v3 = "reserved";
  }

  if (v3)
  {
    if (*(*(a1 + 840) + 320))
    {
      archive_strappend_char((*(a1 + 840) + 312), 44);
    }

    archive_strcat((*(a1 + 840) + 312), v3);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t heap_add_entry_0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 12) >= *(a2 + 8))
  {
    if (*(a2 + 8) < 1024)
    {
      v18 = 1024;
    }

    else
    {
      v18 = 2 * *(a2 + 8);
    }

    if (v18 <= *(a2 + 8))
    {
      archive_set_error(a1, 12, "Out of memory", a4, a5, a6, a7, a8, v17);
      return -30;
    }

    v19 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
    if (!v19)
    {
      archive_set_error(a1, 12, "Out of memory", v8, v9, v10, v11, v12, v17);
      return -30;
    }

    if (*(a2 + 8))
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      __memcpy_chk();
      free(*a2);
    }

    *a2 = v19;
    *(a2 + 8) = v18;
  }

  v22 = *(a3 + 32);
  v15 = *(a2 + 12);
  *(a2 + 12) = v15 + 1;
  for (i = v15; i > 0; i = (i - 1) / 2)
  {
    v20 = (i - 1) / 2;
    if (v22 >= *(*(*a2 + 8 * v20) + 32))
    {
      *(*a2 + 8 * i) = a3;
      return 0;
    }

    *(*a2 + 8 * i) = *(*a2 + 8 * v20);
  }

  **a2 = a3;
  return 0;
}

void unknowntag_end(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  if (v2 && a2 && !strcmp(v2[1], a2))
  {
    *(a1 + 48) = *v2;
    archive_string_free((v2 + 1));
    free(v2);
    if (!*(a1 + 48))
    {
      *(a1 + 40) = *(a1 + 44);
    }
  }
}

uint64_t *strappend_base64(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v15 = v18;
  while (a4 && (base64_0[*a3] & 0x80000000) == 0 && (base64_0[a3[1]] & 0x80000000) == 0)
  {
    v4 = a3;
    v5 = a3 + 1;
    a3 += 2;
    v12 = (base64_0[*v4] << 18) | (base64_0[*v5] << 12);
    v6 = v15++;
    *v6 = BYTE2(v12);
    ++v13;
    a4 -= 2;
    if (a4)
    {
      if ((base64_0[*a3] & 0x80000000) != 0)
      {
        break;
      }

      v7 = a3++;
      v12 |= base64_0[*v7] << 6;
      v8 = v15++;
      *v8 = BYTE1(v12);
      ++v13;
      --a4;
    }

    if (a4)
    {
      if ((base64_0[*a3] & 0x80000000) != 0)
      {
        break;
      }

      v9 = a3++;
      v10 = v15++;
      *v10 = v12 | LOBYTE(base64_0[*v9]);
      ++v13;
      --a4;
    }

    if (v13 + 3 >= 0x100)
    {
      result = archive_strncat(a2, v18, v13);
      v13 = 0;
      v15 = v18;
    }
  }

  if (v13)
  {
    result = archive_strncat(a2, v18, v13);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t is_string(const void *a1, const void *a2, size_t a3)
{
  if (strlen(a1) == a3)
  {
    return memcmp(a2, a1, a3);
  }

  else
  {
    return -1;
  }
}

uint64_t atol8_2(char *a1, uint64_t a2)
{
  v6 = a2;
  if (!a2)
  {
    return 0;
  }

  for (i = 0; ; i = (8 * i) | v4)
  {
    v2 = v6--;
    if (!v2 || *a1 < 48 || *a1 > 55)
    {
      break;
    }

    v4 = *a1++ - 48;
  }

  return i;
}

time_t parse_time(char *a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  memset(&__b, 0, sizeof(__b));
  if (v15 != 20)
  {
    return 0;
  }

  v8 = atol10(v16, 4);
  if (v8 < 1900)
  {
    return 0;
  }

  __b.tm_year = v8 - 1900;
  v16 += 4;
  v2 = v16++;
  if (*v2 != 45)
  {
    return 0;
  }

  v9 = atol10(v16, 2);
  if (v9 < 1 || v9 > 12)
  {
    return 0;
  }

  __b.tm_mon = v9 - 1;
  v16 += 2;
  v3 = v16++;
  if (*v3 != 45)
  {
    return 0;
  }

  v10 = atol10(v16, 2);
  if (v10 < 1 || v10 > 31)
  {
    return 0;
  }

  __b.tm_mday = v10;
  v16 += 2;
  v4 = v16++;
  if (*v4 != 84)
  {
    return 0;
  }

  v11 = atol10(v16, 2);
  if (v11 < 0 || v11 > 23)
  {
    return 0;
  }

  __b.tm_hour = v11;
  v16 += 2;
  v5 = v16++;
  if (*v5 != 58)
  {
    return 0;
  }

  v12 = atol10(v16, 2);
  if (v12 < 0 || v12 > 59)
  {
    return 0;
  }

  __b.tm_min = v12;
  v16 += 2;
  v6 = v16++;
  if (*v6 != 58)
  {
    return 0;
  }

  v13 = atol10(v16, 2);
  if (v13 < 0 || v13 > 60)
  {
    return 0;
  }

  __b.tm_sec = v13;
  return time_from_tm_0(&__b);
}

uint64_t atohex(_BYTE *a1, uint64_t a2, char *a3, unint64_t a4)
{
  for (i = a2; ; --i)
  {
    v6 = 0;
    if (i)
    {
      v6 = a4 > 1;
    }

    if (!v6)
    {
      break;
    }

    if (*a3 < 97 || *a3 > 122)
    {
      if (*a3 < 65 || *a3 > 90)
      {
        if (*a3 < 48 || *a3 > 57)
        {
          return -1;
        }

        v7 = 16 * (*a3 - 48);
      }

      else
      {
        v7 = 16 * (*a3 - 55);
      }
    }

    else
    {
      v7 = 16 * (*a3 - 87);
    }

    if (a3[1] < 97 || a3[1] > 122)
    {
      if (a3[1] < 65 || a3[1] > 90)
      {
        if (a3[1] < 48 || a3[1] > 57)
        {
          return -1;
        }

        v8 = v7 | (a3[1] - 48);
      }

      else
      {
        v8 = v7 | (a3[1] - 55);
      }
    }

    else
    {
      v8 = v7 | (a3[1] - 87);
    }

    v4 = a1++;
    *v4 = v8;
    a3 += 2;
    a4 -= 2;
  }

  return a2 - i;
}

uint64_t decompression_init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = **(a1 + 2072);
  *(v31 + 96) = a2;
  switch(a2)
  {
    case 0:
      return 0;
    case 1:
      if (*(v31 + 216))
      {
        v27 = inflateReset((v31 + 104));
      }

      else
      {
        v27 = inflateInit_((v31 + 104), "1.2.12", 112);
      }

      if (v27)
      {
        archive_set_error(a1, -1, "Couldn't initialize zlib stream.", v8, v9, v10, v11, v12, v24);
        return -30;
      }

      *(v31 + 216) = 1;
      *(v31 + 120) = 0;
      *(v31 + 144) = 0;
      return 0;
    case 2:
      if (*(v31 + 304))
      {
        BZ2_bzDecompressEnd((v31 + 224));
        *(v31 + 304) = 0;
      }

      v28 = BZ2_bzDecompressInit((v31 + 224), 0, 0);
      if (v28 == -3)
      {
        v28 = BZ2_bzDecompressInit((v31 + 224), 0, 1);
      }

      if (!v28)
      {
        *(v31 + 304) = 1;
        *(v31 + 236) = 0;
        *(v31 + 240) = 0;
        *(v31 + 260) = 0;
        *(v31 + 264) = 0;
        return 0;
      }

      v26 = -1;
      v30 = 0;
      switch(v28)
      {
        case -9:
          v30 = "mis-compiled library";
          break;
        case -3:
          v26 = 12;
          v30 = "out of memory";
          break;
        case -2:
          v30 = "invalid setup parameter";
          break;
      }

      if (v30)
      {
        archive_set_error(a1, v26, "Internal error initializing decompressor: %s", v13, v14, v15, v16, v17, v30);
      }

      else
      {
        archive_set_error(a1, v26, "Internal error initializing decompressor: %s", v13, v14, v15, v16, v17, "??");
      }

      *(v31 + 304) = 0;
      return -30;
    case 4:
    case 3:
      if (*(v31 + 448))
      {
        lzma_end();
        *(v31 + 448) = 0;
      }

      if (*(v31 + 928) == 4)
      {
        v29 = lzma_stream_decoder();
      }

      else
      {
        v29 = lzma_alone_decoder();
      }

      if (v29)
      {
        if (v29 == 5)
        {
          archive_set_error(a1, 12, "Internal error initializing compression library: Cannot allocate memory", v18, v19, v20, v21, v22, v24);
        }

        else if (v29 == 8)
        {
          archive_set_error(a1, -1, "Internal error initializing compression library: Invalid or unsupported options", v18, v19, v20, v21, v22, v24);
        }

        else
        {
          archive_set_error(a1, -1, "Internal error initializing lzma library", v18, v19, v20, v21, v22, v24);
        }

        return -30;
      }

      *(v31 + 448) = 1;
      *(v31 + 328) = 0;
      *(v31 + 352) = 0;
      return 0;
    default:
      v25 = *(v31 + 928);
      switch(v25)
      {
        case 2:
          archive_set_error(a1, -1, "%s compression not supported on this platform", a4, a5, a6, a7, a8, "bzip2");
          break;
        case 3:
          archive_set_error(a1, -1, "%s compression not supported on this platform", a4, a5, a6, a7, a8, "lzma");
          break;
        case 4:
          archive_set_error(a1, -1, "%s compression not supported on this platform", a4, a5, a6, a7, a8, "xz");
          break;
        default:
          archive_set_error(a1, -1, "%s compression not supported on this platform", a4, a5, a6, a7, a8, "??");
          break;
      }

      return -25;
  }
}

uint64_t checksum_init_0(uint64_t a1, int a2, int a3)
{
  v4 = **(a1 + 2072);
  _checksum_init(v4 + 452, a2);
  return _checksum_init(v4 + 644, a3);
}

uint64_t _checksum_init(uint64_t result, int a2)
{
  *result = a2;
  if (a2)
  {
    if (a2 == 1)
    {
      return off_1F3DE4E10((result + 96));
    }

    else if (a2 == 2)
    {
      return __archive_digest((result + 4));
    }
  }

  return result;
}

uint64_t decompress_0(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v40 = **(a1 + 2072);
  v38 = *a5;
  v39 = *a2;
  if (*a2)
  {
    v37 = *a3;
  }

  else
  {
    if (!*(v40 + 32))
    {
      *(v40 + 32) = malloc_type_malloc(0x10000uLL, 0x7727397FuLL);
      if (!*(v40 + 32))
      {
        archive_set_error(a1, 12, "Couldn't allocate memory for out buffer", v5, v6, v7, v8, v9, v33);
        return -30;
      }
    }

    v39 = *(v40 + 32);
    *a2 = v39;
    v37 = 0x10000;
  }

  v35 = *(v40 + 96);
  switch(v35)
  {
    case 0:
      goto LABEL_31;
    case 1:
      *(v40 + 104) = a4;
      *(v40 + 112) = v38;
      *(v40 + 128) = v39;
      *(v40 + 136) = v37;
      v36 = inflate((v40 + 104), 0);
      if (v36 > 1)
      {
        archive_set_error(a1, -1, "File decompression failed (%d)", v10, v11, v12, v13, v14, v36);
        return -30;
      }

      *a5 = v38 - *(v40 + 112);
      *a3 = v37 - *(v40 + 136);
      return 0;
    case 2:
      *(v40 + 224) = a4;
      *(v40 + 232) = v38;
      *(v40 + 248) = v39;
      *(v40 + 256) = v37;
      v34 = BZ2_bzDecompress((v40 + 224));
      if (v34)
      {
        if (v34 != 4)
        {
          archive_set_error(a1, -1, "bzip decompression failed", v15, v16, v17, v18, v19, v33);
          return -30;
        }

        if (BZ2_bzDecompressEnd((v40 + 224)))
        {
          archive_set_error(a1, -1, "Failed to clean up decompressor", v20, v21, v22, v23, v24, v33);
          return -30;
        }

        *(v40 + 304) = 0;
      }

      *a5 = v38 - *(v40 + 232);
      *a3 = v37 - *(v40 + 256);
      return 0;
  }

  if (v35 != 4 && v35 != 3)
  {
LABEL_31:
    if (v39 == *(v40 + 32))
    {
      *a2 = a4;
      *a5 = v38;
      *a3 = v38;
    }

    else
    {
      if (v37 > v38)
      {
        v37 = v38;
      }

      __memcpy_chk();
      *a5 = v37;
      *a3 = v37;
    }

    return 0;
  }

  *(v40 + 312) = a4;
  *(v40 + 320) = v38;
  *(v40 + 336) = v39;
  *(v40 + 344) = v37;
  v25 = lzma_code();
  if (!v25)
  {
    goto LABEL_26;
  }

  if (v25 == 1)
  {
    lzma_end();
    *(v40 + 448) = 0;
LABEL_26:
    *a5 = v38 - *(v40 + 320);
    *a3 = v37 - *(v40 + 344);
    return 0;
  }

  if (*(v40 + 928) == 4)
  {
    v31 = "xz";
  }

  else
  {
    v31 = "lzma";
  }

  archive_set_error(a1, -1, "%s decompression failed(%d)", v26, v27, v28, v29, v30, v31);
  return -30;
}

uint64_t checksum_update_0(uint64_t a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5)
{
  v6 = **(a1 + 2072);
  _checksum_update(v6 + 452, a2, a3);
  return _checksum_update(v6 + 644, a4, a5);
}

uint64_t _checksum_update(uint64_t result, const void *a2, CC_LONG a3)
{
  v3 = *result;
  if (*result)
  {
    if (v3 == 1)
    {
      return off_1F3DE4E18((result + 96), a2, a3);
    }

    else if (v3 == 2)
    {
      return off_1F3DE4DE8((result + 4), a2, a3);
    }
  }

  return result;
}

uint64_t archive_read_format_zip_options(uint64_t a1, const char *a2, const char *a3)
{
  v11 = -25;
  v12 = **(a1 + 2072);
  if (!strcmp(a2, "compat-2x"))
  {
    *(v12 + 8008) = a3 != 0;
    return 0;
  }

  else if (!strcmp(a2, "hdrcharset"))
  {
    if (a3 && *a3)
    {
      *(v12 + 7984) = archive_string_conversion_from_charset(a1, a3, 0);
      if (*(v12 + 7984))
      {
        if (!strcmp(a3, "UTF-8"))
        {
          *(v12 + 8000) = *(v12 + 7984);
        }

        return 0;
      }

      else
      {
        return -30;
      }
    }

    else
    {
      archive_set_error(a1, -1, "zip: hdrcharset option needs a character-set name", v3, v4, v5, v6, v7, v9);
    }

    return v11;
  }

  else if (!strcmp(a2, "ignorecrc32"))
  {
    if (a3 && *a3)
    {
      *(v12 + 176) = fake_crc32;
      *(v12 + 184) = 1;
    }

    else
    {
      *(v12 + 176) = real_crc32;
      *(v12 + 184) = 0;
    }

    return 0;
  }

  else if (!strcmp(a2, "mac-ext"))
  {
    v10 = 0;
    if (a3)
    {
      v10 = *a3 != 0;
    }

    *(v12 + 8012) = v10;
    return 0;
  }

  else
  {
    return -20;
  }
}

uint64_t archive_read_format_zip_streamable_read_header(_DWORD *a1, _DWORD **a2)
{
  v20 = a1;
  v19 = a2;
  v18 = 0;
  a1[4] = 327680;
  if (!*(v20 + 3))
  {
    *(v20 + 3) = "ZIP";
  }

  v18 = **(v20 + 259);
  if (*(v18 + 56) == -1)
  {
    *(v18 + 56) = 0;
  }

  if (*(v18 + 64) || (*(v18 + 64) = malloc_type_malloc(0x90uLL, 0x1030040EC8AD5CDuLL)) != 0)
  {
    *(v18 + 136) = *(v18 + 64);
    v7 = *(v18 + 136);
    __memset_chk();
    if (*(v18 + 8160))
    {
      off_1F3DE4E88(v18 + 8080);
    }

    if (*(v18 + 8548))
    {
      off_1F3DE4DD8();
    }

    *(v18 + 8548) = 0;
    *(v18 + 8160) = 0;
    *(v18 + 8076) = 0;
    __archive_read_reset_passphrase(v20);
    __archive_read_consume(v20, *(v18 + 128));
    *(v18 + 128) = 0;
    while (1)
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v16 = __archive_read_ahead(v20, 4uLL, &v14, v8, v9, v10, v11, v12);
      if (!v16)
      {
        break;
      }

      v15 = &v16[v14];
      while ((v16 + 4) <= v15)
      {
        if (*v16 == 80 && v16[1] == 75)
        {
          if (v16[2] == 3 && v16[3] == 4)
          {
            __archive_read_consume(v20, v17);
            return zip_read_local_file_header(v20, v19, v18);
          }

          if (v16[2] == 1 && v16[3] == 2)
          {
            return 1;
          }

          if (v16[2] == 5 && v16[3] == 6 || v16[2] == 6 && v16[3] == 6)
          {
            return 1;
          }
        }

        ++v16;
        ++v17;
      }

      __archive_read_consume(v20, v17);
    }

    return -30;
  }

  else
  {
    archive_set_error(v20, 12, "Out  of memory", v2, v3, v4, v5, v6, v14);
    return -30;
  }
}

uint64_t archive_read_format_zip_read_data(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  v33 = **(a1 + 2072);
  if (*(v33 + 56) == -1)
  {
    *(v33 + 56) = 0;
  }

  *a4 = *(v33 + 160);
  *a3 = 0;
  *a2 = 0;
  if (*(v33 + 186))
  {
    return 1;
  }

  else if ((*(*(v33 + 136) + 124) & 0xF000) == 0x8000)
  {
    __archive_read_consume(a1, *(v33 + 128));
    *(v33 + 128) = 0;
    if (*(v33 + 8020))
    {
      *(v33 + 56) = 1;
      if ((*(*(v33 + 136) + 126) & 0x40) != 0)
      {
        decryption_header = read_decryption_header(a1, v4, v5, v6, v7, v8, v9, v10);
      }

      else if (*(*(v33 + 136) + 128) == 99)
      {
        decryption_header = init_WinZip_AES_decryption(a1, v4, v5, v6, v7, v8, v9, v10);
      }

      else
      {
        decryption_header = init_traditional_PKWARE_decryption(a1, v4, v5, v6, v7, v8, v9, v10);
      }

      if (decryption_header)
      {
        return decryption_header;
      }

      *(v33 + 8020) = 0;
    }

    v32 = *(*(v33 + 136) + 128);
    if (*(*(v33 + 136) + 128))
    {
      switch(v32)
      {
        case 8:
          data_deflate = zip_read_data_deflate(a1, a2, a3, a4);
          break;
        case 12:
          data_deflate = zip_read_data_zipx_bzip2(a1, a2, a3, a4, v7, v8, v9, v10);
          break;
        case 14:
          data_deflate = zip_read_data_zipx_lzma_alone(a1, a2, a3, a4, v7, v8, v9, v10);
          break;
        case 95:
          data_deflate = zip_read_data_zipx_xz(a1, a2, a3, a4, v7, v8, v9, v10);
          break;
        case 98:
          data_deflate = zip_read_data_zipx_ppmd(a1, a2, a3, a4, v7, v8, v9, v10);
          break;
        default:
          v31 = *(*(v33 + 136) + 128);
          compression_name(v31);
          archive_set_error(a1, 79, "Unsupported ZIP compression method (%d: %s)", v17, v18, v19, v20, v21, v31);
          return -25;
      }
    }

    else
    {
      data_deflate = zip_read_data_none(a1, a2, a3, a4, v7, v8, v9, v10);
    }

    if (!data_deflate)
    {
      if (*a3)
      {
        *(v33 + 168) = (*(v33 + 176))(*(v33 + 168), *a2, *a3);
      }

      if (*(v33 + 186))
      {
        consume_end_of_file_marker(a1, v33, v11, v12, v13, v14, v15, v16);
        if ((!*(v33 + 8548) || *(*(v33 + 136) + 132) != 2) && *(*(v33 + 136) + 120) != *(v33 + 168) && !*(v33 + 184))
        {
          v28 = *(*(v33 + 136) + 120);
          archive_set_error(a1, -1, "ZIP bad CRC: 0x%lx should be 0x%lx", v22, v23, v24, v25, v26, *(v33 + 168));
          return -25;
        }

        if (*(*(v33 + 136) + 40) != *(v33 + 152))
        {
          v29 = *(*(v33 + 136) + 40);
          archive_set_error(a1, -1, "ZIP compressed data is wrong size (read %jd, expected %jd)", v22, v23, v24, v25, v26, *(v33 + 152));
          return -25;
        }

        if (*(*(v33 + 136) + 48) != *(v33 + 160))
        {
          v30 = *(*(v33 + 136) + 48);
          archive_set_error(a1, -1, "ZIP uncompressed data is wrong size (read %jd, expected %jd)\n", v22, v23, v24, v25, v26, *(v33 + 160));
          return -25;
        }
      }

      return 0;
    }

    return data_deflate;
  }

  else
  {
    return 1;
  }
}

uint64_t archive_read_format_zip_read_data_skip_streamable(uint64_t a1)
{
  v24 = a1;
  v23 = 0;
  consume = 0;
  v23 = **(a1 + 2072);
  consume = __archive_read_consume(a1, *(v23 + 128));
  *(v23 + 128) = 0;
  if (consume < 0)
  {
    return -30;
  }

  else if (*(v23 + 186))
  {
    return 0;
  }

  else if ((*(*(v23 + 136) + 126) & 8) != 0 && *(*(v23 + 136) + 40) <= 0)
  {
    if (*(v23 + 8020))
    {
      decryption_header = 0;
      *(v23 + 56) = 1;
      if ((*(*(v23 + 136) + 126) & 0x40) != 0)
      {
        decryption_header = read_decryption_header(v24, v1, v2, v3, v4, v5, v6, v7);
      }

      else if (*(*(v23 + 136) + 128) == 99)
      {
        decryption_header = init_WinZip_AES_decryption(v24, v1, v2, v3, v4, v5, v6, v7);
      }

      else
      {
        decryption_header = init_traditional_PKWARE_decryption(v24, v1, v2, v3, v4, v5, v6, v7);
      }

      if (decryption_header)
      {
        return decryption_header;
      }

      *(v23 + 8020) = 0;
    }

    if (*(*(v23 + 136) + 128) == 8)
    {
      while (!*(v23 + 186))
      {
        v20 = 0;
        v19 = 0;
        v18 = 0;
        v17 = zip_read_data_deflate(v24, &v19, &v18, &v20);
        if (v17)
        {
          return v17;
        }
      }

      return 0;
    }

    else
    {
LABEL_25:
      i = 0;
      v15 = 0;
      v14 = 0;
      v15 = __archive_read_ahead(v24, 0x10uLL, &v14, v3, v4, v5, v6, v7);
      if (v14 >= 16)
      {
        for (i = v15; ; i += 4)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                if (i > v15 + v14 - 16)
                {
                  __archive_read_consume(v24, &i[-v15]);
                  goto LABEL_25;
                }

                if (i[3] != 80)
                {
                  break;
                }

                i += 3;
              }

              if (i[3] != 75)
              {
                break;
              }

              i += 2;
            }

            if (i[3] != 7)
            {
              break;
            }

            ++i;
          }

          if (i[3] == 8 && i[2] == 7 && i[1] == 75 && *i == 80)
          {
            break;
          }
        }

        if (*(*(v23 + 136) + 130))
        {
          __archive_read_consume(v24, &i[-v15 + 24]);
        }

        else
        {
          __archive_read_consume(v24, &i[-v15 + 16]);
        }

        return 0;
      }

      else
      {
        archive_set_error(v24, 79, "Truncated ZIP file data", v8, v9, v10, v11, v12, v14);
        return -30;
      }
    }
  }

  else if (__archive_read_consume(v24, *(v23 + 144)) < 0)
  {
    return -30;
  }

  else
  {
    return 0;
  }
}

uint64_t archive_read_format_zip_has_encrypted_entries(uint64_t a1)
{
  if (a1 && *(a1 + 2072) && (v2 = **(a1 + 2072)) != 0)
  {
    return *(v2 + 56);
  }

  else
  {
    return -1;
  }
}

uint64_t archive_read_format_zip_seekable_read_header(uint64_t a1, _DWORD **a2)
{
  v9 = **(a1 + 2072);
  v4 = 0;
  if (*(v9 + 56) == -1)
  {
    *(v9 + 56) = 0;
  }

  *(a1 + 16) = 327680;
  if (!*(a1 + 24))
  {
    *(a1 + 24) = "ZIP";
  }

  if (*(v9 + 64))
  {
    if (*(v9 + 136))
    {
      *(v9 + 136) = __archive_rb_tree_iterate((v9 + 80), *(v9 + 136), 1u);
    }
  }

  else
  {
    v5 = slurp_central_directory_0(a1, a2, v9);
    if (v5)
    {
      return v5;
    }

    *(v9 + 136) = __archive_rb_tree_iterate((v9 + 80), 0, 0);
  }

  if (*(v9 + 136))
  {
    if (*(*(v9 + 136) + 72))
    {
      node = __archive_rb_tree_find_node((v9 + 96), *(*(v9 + 136) + 72));
    }

    else
    {
      node = 0;
    }

    if (*(v9 + 8160))
    {
      off_1F3DE4E88(v9 + 8080);
    }

    if (*(v9 + 8548))
    {
      off_1F3DE4DD8();
    }

    *(v9 + 8548) = 0;
    *(v9 + 8160) = 0;
    *(v9 + 8076) = 0;
    __archive_read_reset_passphrase(a1);
    v7 = archive_filter_bytes(a1, 0);
    if (v7 >= *(*(v9 + 136) + 32))
    {
      if (v7 != *(*(v9 + 136) + 32))
      {
        __archive_read_seek(a1, *(*(v9 + 136) + 32), 0);
      }
    }

    else
    {
      __archive_read_consume(a1, *(*(v9 + 136) + 32) - v7);
    }

    *(v9 + 128) = 0;
    local_file_header = zip_read_local_file_header(a1, a2, v9);
    if (local_file_header)
    {
      return local_file_header;
    }

    else
    {
      if (node)
      {
        mac_metadata = zip_read_mac_metadata(a1, a2, node);
        if (mac_metadata < 0)
        {
          return mac_metadata;
        }
      }

      return v4;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t zip_read_local_file_header(_DWORD *a1, _DWORD **a2, uint64_t a3)
{
  v134 = a1;
  v133 = a2;
  v132 = a3;
  ahead = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = *(a3 + 136);
  memset(__b, 0, sizeof(__b));
  v121 = 0;
  v120 = 0;
  memcpy(__b, v123, sizeof(__b));
  *(v132 + 185) = 0;
  *(v132 + 186) = 0;
  *(v132 + 160) = 0;
  *(v132 + 152) = 0;
  *(v132 + 168) = (*(v132 + 176))(0, 0);
  if (!*(v132 + 7984) && !*(v132 + 8008))
  {
    *(v132 + 7992) = archive_string_default_conversion_for_read();
    *(v132 + 8008) = 1;
  }

  ahead = __archive_read_ahead(v134, 0x1EuLL, 0, v3, v4, v5, v6, v7);
  if (!ahead)
  {
    goto LABEL_30;
  }

  if (!memcmp(ahead, "PK\x03\x04", 4uLL))
  {
    v120 = ahead[4];
    *(v123 + 129) = ahead[5];
    v18 = archive_le16dec_3(ahead + 6);
    *(v123 + 126) = v18;
    if ((*(v123 + 126) & 0x41) != 0 && (*(v132 + 56) = 1, archive_entry_set_is_data_encrypted(v133, 1), (*(v123 + 126) & 0x2000) != 0) && (*(v123 + 126) & 1) != 0 && (*(v123 + 126) & 0x40) != 0)
    {
      archive_entry_set_is_metadata_encrypted(v133, 1);
      return -30;
    }

    else
    {
      *(v132 + 8020) = *(v123 + 126) & 1;
      v19 = archive_le16dec_3(ahead + 8);
      *(v123 + 128) = v19;
      v20 = zip_time(ahead + 10);
      *(v123 + 96) = v20;
      v21 = archive_le32dec_7(ahead + 14);
      *(v123 + 120) = v21;
      if ((*(v123 + 126) & 8) != 0)
      {
        *(v123 + 131) = ahead[11];
      }

      else
      {
        *(v123 + 131) = ahead[17];
      }

      v22 = archive_le32dec_7(ahead + 18);
      *(v123 + 40) = v22;
      v23 = archive_le32dec_7(ahead + 22);
      *(v123 + 48) = v23;
      v126 = archive_le16dec_3(ahead + 26);
      v125 = archive_le16dec_3(ahead + 28);
      __archive_read_consume(v134, 0x1EuLL);
      v130 = __archive_read_ahead(v134, v126, 0, v24, v25, v26, v27, v28);
      if (!v130)
      {
        goto LABEL_30;
      }

      if ((*(v123 + 126) & 0x800) != 0)
      {
        if (!*(v132 + 8000))
        {
          v29 = archive_string_conversion_from_charset(v134, "UTF-8", 1);
          *(v132 + 8000) = v29;
          if (!*(v132 + 8000))
          {
            return -30;
          }
        }

        v124 = *(v132 + 8000);
      }

      else
      {
        v124 = *(v132 + 7984) ? *(v132 + 7984) : *(v132 + 7992);
      }

      if (_archive_entry_copy_pathname_l(v133, v130, v126, v124))
      {
        if (*__error() == 12)
        {
          archive_set_error(v134, 12, "Can't allocate memory for Pathname", v30, v31, v32, v33, v34, v94);
          return -30;
        }

        v108 = v134;
        v35 = archive_string_conversion_charset_name(v124);
        archive_set_error(v108, 79, "Pathname cannot be converted from %s to current locale.", v36, v37, v38, v39, v40, v35);
        v121 = -20;
      }

      __archive_read_consume(v134, v126);
      v130 = __archive_read_ahead(v134, v125, 0, v41, v42, v43, v44, v45);
      if (!v130)
      {
LABEL_30:
        archive_set_error(v134, 79, "Truncated ZIP file header", v8, v9, v10, v11, v12, v94);
        return -30;
      }

      if (process_extra(v134, v133, v130, v125, v123, v10, v11, v12))
      {
        return -30;
      }

      else if (*(v132 + 8016) && bomb_detect_overlap(v132, v123, v126 + 30 + v125))
      {
        archive_set_error(v134, 79, "Invalid header", v46, v47, v48, v49, v50, v94);
        return -30;
      }

      else
      {
        __archive_read_consume(v134, v125);
        if ((*(v123 + 124) & 0xF000) == 0x1000)
        {
          *(v123 + 124) &= 0xFFFu;
          *(v123 + 124) |= 0x8000u;
        }

        if (!*(v123 + 124))
        {
          *(v123 + 124) |= 0x1B4u;
        }

        if (!*(v123 + 129))
        {
          v129 = archive_entry_pathname_w(v133);
          if (v129)
          {
            if (!wcschr(v129, 47) && wcschr(v129, 92))
            {
              i = 0;
              v116 = 0;
              v118 = 0;
              v117 = 0;
              if (v129)
              {
                v107 = wcslen(v129);
                archive_wstrncat(&v116, v129, v107);
              }

              else
              {
                archive_wstrncat(&v116, 0, 0);
              }

              for (i = 0; i < v117; ++i)
              {
                if (v116[i] == 92)
                {
                  v116[i] = 47;
                }
              }

              archive_entry_copy_pathname_w(v133, v116);
              archive_wstring_free(&v116);
            }
          }
        }

        if ((*(v123 + 124) & 0xF000) != 0x4000)
        {
          v115 = 0;
          v129 = archive_entry_pathname_w(v133);
          if (v129)
          {
            v127 = wcslen(v129);
            v106 = 0;
            if (v127)
            {
              v106 = v129[v127 - 1] == 47;
            }

            v115 = v106;
          }

          else
          {
            v128 = archive_entry_pathname(v133);
            if (v128)
            {
              v105 = strlen(v128);
            }

            else
            {
              v105 = 0;
            }

            v127 = v105;
            v104 = 0;
            if (v105)
            {
              v104 = v128[v127 - 1] == 47;
            }

            v115 = v104;
          }

          if (v115)
          {
            *(v123 + 124) &= 0xFFFu;
            *(v123 + 124) |= 0x4000u;
            *(v123 + 124) |= 0x49u;
          }

          else if ((*(v123 + 124) & 0xF000) == 0)
          {
            *(v123 + 124) |= 0x8000u;
          }
        }

        if ((*(v123 + 124) & 0xF000) == 0x4000)
        {
          v129 = archive_entry_pathname_w(v133);
          if (v129)
          {
            v127 = wcslen(v129);
            if (v127 && v129[v127 - 1] != 47)
            {
              memset(v114, 0, sizeof(v114));
              archive_wstrcat(v114, v129);
              archive_wstrappend_wchar(v114, 47);
              archive_entry_copy_pathname_w(v133, v114[0]);
              archive_wstring_free(v114);
            }
          }

          else
          {
            v128 = archive_entry_pathname(v133);
            if (v128)
            {
              v103 = strlen(v128);
            }

            else
            {
              v103 = 0;
            }

            v127 = v103;
            if (v103 && v128[v127 - 1] != 47)
            {
              memset(v113, 0, sizeof(v113));
              archive_strcat(v113, v128);
              archive_strappend_char(v113, 47);
              archive_entry_set_pathname(v133, v113[0]);
              archive_string_free(v113);
            }
          }
        }

        if ((*(v123 + 130) & 2) != 0)
        {
          *(v123 + 126) &= ~8u;
          if (*(v123 + 120))
          {
            if (!*(v132 + 184) && *(v123 + 120) != LODWORD(__b[15]))
            {
              archive_set_error(v134, 79, "Inconsistent CRC32 values", v51, v52, v53, v54, v55, v94);
              v121 = -20;
            }
          }

          else
          {
            *(v123 + 120) = __b[15];
          }

          if (*(v123 + 40) && *(v123 + 40) != 0xFFFFFFFFLL)
          {
            if (*(v123 + 40) != __b[5])
            {
              v95 = *(v123 + 40);
              archive_set_error(v134, 79, "Inconsistent compressed size: %jd in central directory, %jd in local header", v51, v52, v53, v54, v55, __b[5]);
              v121 = -20;
            }
          }

          else
          {
            *(v123 + 40) = __b[5];
          }

          if (*(v123 + 48) && *(v123 + 48) != 0xFFFFFFFFLL)
          {
            if (*(v123 + 48) != __b[6])
            {
              v96 = *(v123 + 48);
              archive_set_error(v134, 79, "Inconsistent uncompressed size: %jd in central directory, %jd in local header", v51, v52, v53, v54, v55, __b[6]);
              v121 = -20;
            }
          }

          else
          {
            *(v123 + 48) = __b[6];
          }
        }

        archive_entry_set_mode(v133, *(v123 + 124));
        archive_entry_set_uid(v133, *(v123 + 64));
        archive_entry_set_gid(v133, *(v123 + 56));
        archive_entry_set_mtime(v133, *(v123 + 96), 0);
        archive_entry_set_ctime(v133, *(v123 + 112), 0);
        archive_entry_set_atime(v133, *(v123 + 104), 0);
        if ((*(*(v132 + 136) + 124) & 0xF000) == 0xA000)
        {
          v112 = 0;
          if (*(v123 + 40) > 0x10000)
          {
            archive_set_error(v134, -1, "Zip file with oversized link entry", v56, v57, v58, v59, v60, v94);
            return -30;
          }

          v112 = *(v123 + 40);
          archive_entry_set_size(v133, 0);
          v111 = v112;
          if (*(*(v132 + 136) + 128))
          {
            v110 = -30;
            v109 = 0;
            v102 = *(*(v132 + 136) + 128);
            if (v102 == 8)
            {
              *(v132 + 144) = *(v123 + 40);
              v110 = zip_read_data_deflate(v134, &v109, &v111, 0);
            }

            else if (v102 == 14)
            {
              *(v132 + 144) = *(v123 + 40);
              v110 = zip_read_data_zipx_lzma_alone(v134, &v109, &v111, 0, v62, v63, v64, v65);
            }

            if (v110)
            {
              v101 = v134;
              v100 = *(*(v132 + 136) + 128);
              compression_name(v100);
              archive_set_error(v101, 79, "Unsupported ZIP compression method during decompression of link entry (%d: %s)", v66, v67, v68, v69, v70, v100);
              return -25;
            }

            ahead = v109;
          }

          else
          {
            ahead = __archive_read_ahead(v134, v112, 0, v61, v62, v63, v64, v65);
          }

          if (!ahead)
          {
            archive_set_error(v134, -1, "Truncated Zip file", v61, v62, v63, v64, v65, v94);
            return -30;
          }

          v124 = *(v132 + 7984);
          if (!v124 && (*(*(v132 + 136) + 126) & 0x800) != 0)
          {
            v124 = *(v132 + 8000);
          }

          if (!v124)
          {
            v124 = *(v132 + 7992);
          }

          if (_archive_entry_copy_symlink_l(v133, ahead, v111, v124))
          {
            if (*__error() != 12 && v124 == *(v132 + 8000) && (*(*(v132 + 136) + 126) & 0x800) != 0)
            {
              _archive_entry_copy_symlink_l(v133, ahead, v111, 0);
            }

            if (*__error() == 12)
            {
              archive_set_error(v134, 12, "Can't allocate memory for Symlink", v71, v72, v73, v74, v75, v94);
              return -30;
            }

            if (v124 != *(v132 + 8000) || (*(*(v132 + 136) + 126) & 0x800) == 0)
            {
              v99 = v134;
              v76 = archive_string_conversion_charset_name(v124);
              archive_set_error(v99, 79, "Symlink cannot be converted from %s to current locale.", v77, v78, v79, v80, v81, v76);
              v121 = -20;
            }
          }

          *(v123 + 40) = 0;
          *(v123 + 48) = 0;
          if (__archive_read_consume(v134, v112) < 0)
          {
            archive_set_error(v134, -1, "Read error skipping symlink target name", v82, v83, v84, v85, v86, v94);
            return -30;
          }
        }

        else if ((*(v123 + 126) & 8) == 0 || *(v123 + 48) > 0 && *(v123 + 48) != 0xFFFFFFFFLL)
        {
          archive_entry_set_size(v133, *(v123 + 48));
        }

        *(v132 + 144) = *(v123 + 40);
        if ((*(v123 + 126) & 8) == 0 && *(v132 + 144) < 1)
        {
          *(v132 + 186) = 1;
        }

        *(v132 + 8) = 0;
        v98 = v132;
        v97 = v120 / 10;
        compression_name(*(*(v132 + 136) + 128));
        archive_string_sprintf(v98, "ZIP %d.%d (%s)", v87, v88, v89, v90, v91, v92, v97);
        *(v134 + 3) = *v132;
        return v121;
      }
    }
  }

  else
  {
    archive_set_error(v134, -1, "Damaged Zip archive", v13, v14, v15, v16, v17, v94);
    return -30;
  }
}

time_t zip_time(unsigned __int8 *a1)
{
  v5 = a1;
  v4 = 0;
  v3 = 0;
  memset(&__b, 0, sizeof(__b));
  v4 = *v5 + (v5[1] << 8);
  v3 = v5[2] + (v5[3] << 8);
  memset(&__b, 0, sizeof(__b));
  __b.tm_year = ((v3 >> 9) & 0x7F) + 80;
  __b.tm_mon = ((v3 >> 5) & 0xF) - 1;
  __b.tm_mday = v3 & 0x1F;
  __b.tm_hour = (v4 >> 11) & 0x1F;
  __b.tm_min = (v4 >> 5) & 0x3F;
  __b.tm_sec = (2 * v4) & 0x3E;
  __b.tm_isdst = -1;
  return mktime(&__b);
}

uint64_t process_extra(uint64_t a1, _DWORD **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  v32 = **(a1 + 2072);
  if (!a4)
  {
    return 0;
  }

  if (a4 >= 4)
  {
    while (1)
    {
      if (v33 > a4 - 4)
      {
        return 0;
      }

      v30 = archive_le16dec_3((a3 + v33));
      v29 = archive_le16dec_3((a3 + v33 + 2));
      v34 = v33 + 4;
      if (v34 + v29 > a4)
      {
        archive_set_error(a1, 79, "Extra data overflow: Need %d bytes but only found %d bytes", v8, v9, v10, v11, v12, v29);
        return -25;
      }

      switch(v30)
      {
        case 1u:
          *(a5 + 130) |= 1u;
          if (*(a5 + 48) == 0xFFFFFFFFLL)
          {
            if (v29 < 8u || (v28 = archive_le64dec_2((a3 + v34)), v28 > 0x7FFFFFFFFFFFFFFFLL))
            {
              archive_set_error(a1, 79, "Malformed 64-bit uncompressed size", v8, v9, v10, v11, v12, v17);
              return -25;
            }

            *(a5 + 48) = v28;
            v34 += 8;
            v29 -= 8;
          }

          if (*(a5 + 40) == 0xFFFFFFFFLL)
          {
            if (v29 < 8u || (v27 = archive_le64dec_2((a3 + v34)), v27 > 0x7FFFFFFFFFFFFFFFLL))
            {
              archive_set_error(a1, 79, "Malformed 64-bit compressed size", v8, v9, v10, v11, v12, v17);
              return -25;
            }

            *(a5 + 40) = v27;
            v34 += 8;
            v29 -= 8;
          }

          if (*(a5 + 32) == 0xFFFFFFFFLL)
          {
            if (v29 < 8u || (v26 = archive_le64dec_2((a3 + v34)), v26 > 0x7FFFFFFFFFFFFFFFLL))
            {
              archive_set_error(a1, 79, "Malformed 64-bit local header offset", v8, v9, v10, v11, v12, v17);
              return -25;
            }

            *(a5 + 32) = v26;
            v34 += 8;
            v29 -= 8;
          }

          break;
        case 0x5455u:
          if (!v29)
          {
            archive_set_error(a1, 79, "Incomplete extended time field", v8, v9, v10, v11, v12, v17);
            return -25;
          }

          v25 = *(a3 + v34++);
          --v29;
          if (v25)
          {
            if (v29 < 4u)
            {
              break;
            }

            *(a5 + 96) = archive_le32dec_7((a3 + v34));
            v34 += 4;
            v29 -= 4;
          }

          if ((v25 & 2) != 0)
          {
            if (v29 < 4u)
            {
              break;
            }

            *(a5 + 104) = archive_le32dec_7((a3 + v34));
            v34 += 4;
            v29 -= 4;
          }

          if ((v25 & 4) != 0 && v29 >= 4u)
          {
            *(a5 + 112) = archive_le32dec_7((a3 + v34));
            v34 += 4;
            v29 -= 4;
          }

          break;
        case 0x5855u:
          if (v29 >= 8u)
          {
            *(a5 + 104) = archive_le32dec_7((a3 + v34));
            *(a5 + 96) = archive_le32dec_7((a3 + v34 + 4));
          }

          if (v29 >= 0xCu)
          {
            *(a5 + 64) = archive_le16dec_3((a3 + v34 + 8));
            *(a5 + 56) = archive_le16dec_3((a3 + v34 + 10));
          }

          break;
        case 0x6C78u:
          if (!v29)
          {
            break;
          }

          v24 = *(a3 + v34);
          v23 = v24;
          ++v34;
          --v29;
          while (1)
          {
            v18 = 0;
            if (v23 < 0)
            {
              v18 = v29 != 0;
            }

            if (!v18)
            {
              break;
            }

            v23 = *(a3 + v34++);
            --v29;
          }

          if (v24)
          {
            if (v29 < 2u)
            {
              break;
            }

            *(a5 + 129) = archive_le16dec_3((a3 + v34)) >> 8;
            v34 += 2;
            v29 -= 2;
          }

          if ((v24 & 2) != 0)
          {
            if (v29 < 2u)
            {
              break;
            }

            archive_le16dec_3((a3 + v34));
            v34 += 2;
            v29 -= 2;
          }

          if ((v24 & 4) != 0)
          {
            if (v29 < 4u)
            {
              break;
            }

            v13 = archive_le32dec_7((a3 + v34));
            if (*(a5 + 129) == 3)
            {
              *(a5 + 124) = HIWORD(v13);
            }

            else if (*(a5 + 129))
            {
              *(a5 + 124) = 0;
            }

            else
            {
              if ((v13 & 0x10) == 0x10)
              {
                *(a5 + 124) = 16893;
              }

              else
              {
                *(a5 + 124) = -32332;
              }

              if ((v13 & 1) == 1)
              {
                *(a5 + 124) &= 0x16Du;
              }
            }

            v34 += 4;
            v29 -= 4;
          }

          if ((v24 & 8) != 0 && v29 >= 2u)
          {
            v14 = archive_le16dec_3((a3 + v34));
            v34 += 2;
            v29 -= 2;
            if (v29 >= v14)
            {
              v34 += v14;
              v29 -= v14;
            }
          }

          break;
        case 0x7075u:
          if (v29 >= 5u)
          {
            if (a2)
            {
              v34 += 5;
              v29 -= 5;
              if (*(v32 + 8000) || (*(v32 + 8000) = archive_string_conversion_from_charset(a1, "UTF-8", 1)) != 0)
              {
                if (*(v32 + 184) || (__s = archive_entry_pathname(a2)) == 0 || (v15 = strlen(__s), v21 = (*(v32 + 176))(0, __s, v15), v21 == archive_le32dec_7((a3 + v34 - 4))))
                {
                  _archive_entry_copy_pathname_l(a2, (a3 + v34), v29, *(v32 + 8000));
                }
              }
            }
          }

          break;
        case 0x7855u:
          if (v29 >= 2u)
          {
            *(a5 + 64) = archive_le16dec_3((a3 + v34));
          }

          if (v29 >= 4u)
          {
            *(a5 + 56) = archive_le16dec_3((a3 + v34 + 2));
          }

          break;
        case 0x7875u:
          v20 = 0;
          if (v29 && *(a3 + v34) == 1)
          {
            if (v29 >= 4u)
            {
              v20 = *(a3 + v34 + 1);
              if (v20 == 2)
              {
                *(a5 + 64) = archive_le16dec_3((a3 + v34 + 2));
              }

              else if (v20 == 4 && v29 >= 6u)
              {
                *(a5 + 64) = archive_le32dec_7((a3 + v34 + 2));
              }
            }

            if (v29 >= v20 + 5)
            {
              v19 = *(a3 + v34 + 2 + v20);
              if (v19 == 2)
              {
                *(a5 + 56) = archive_le16dec_3((a3 + v34 + 2 + v20 + 1));
              }

              else if (v19 == 4 && v29 >= v20 + 7)
              {
                *(a5 + 56) = archive_le32dec_7((a3 + v34 + 2 + v20 + 1));
              }
            }
          }

          break;
        case 0x9901u:
          if (v29 < 6u)
          {
            archive_set_error(a1, 79, "Incomplete AES field", v8, v9, v10, v11, v12, v17);
            return -25;
          }

          if (*(a3 + v34 + 2) == 65 && *(a3 + v34 + 3) == 69)
          {
            *(a5 + 132) = archive_le16dec_3((a3 + v34));
            *(a5 + 136) = *(a3 + v34 + 4);
            *(a5 + 140) = *(a3 + v34 + 5);
          }

          break;
      }

      v33 = v34 + v29;
    }
  }

  for (i = 0; i < a4; ++i)
  {
    if (*(a3 + i))
    {
      archive_set_error(a1, 79, "Too-small extra data: Need at least 4 bytes, but only found %d bytes", a4, a5, a6, a7, a8, a4);
      return -25;
    }
  }

  return 0;
}

uint64_t bomb_detect_overlap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = (a1 + 112);
  v8 = 0;
  v9 = 0;
  if (_bomb_get_begin_and_end(a2, a3, &v9, &v8))
  {
    return -30;
  }

  else
  {
    node_leq = __archive_rb_tree_find_node_leq(v10, &v9);
    node_geq = __archive_rb_tree_find_node_geq(v10, &v9);
    if (node_leq && *(node_leq + 48) >= v9)
    {
      return -30;
    }

    else
    {
      if (!node_geq || node_geq[5] > v8)
      {
        v5 = 0;
        if (node_leq)
        {
          v5 = 0;
          if ((*(node_leq + 48) & 0x8000000000000000) == 0)
          {
            v5 = v9 == *(node_leq + 48) + 1;
          }
        }

        v4 = 0;
        if (node_geq)
        {
          v4 = 0;
          if (node_geq[5] > 0)
          {
            v4 = v8 == node_geq[5] - 1;
          }
        }

        if (v5 && v4)
        {
          *(node_leq + 48) = node_geq[6];
          __archive_rb_tree_remove_node(v10, node_geq);
          _bomb_delete_node(v13, node_geq);
        }

        else if (v5)
        {
          *(node_leq + 48) = v8;
        }

        else if (v4)
        {
          __archive_rb_tree_remove_node(v10, node_geq);
          node_geq[5] = v9;
          if (!__archive_rb_tree_insert_node(v10, node_geq))
          {
            return -30;
          }
        }

        else if (_bomb_create_and_insert_node(v13, v9, v8))
        {
          return -30;
        }

        return 0;
      }

      return -30;
    }
  }
}

uint64_t zip_read_data_deflate(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v33 = **(a1 + 2072);
  if (*(v33 + 192) || (*(v33 + 200) = 0x40000, (*(v33 + 192) = malloc_type_malloc(*(v33 + 200), 0x100004077774924uLL)) != 0))
  {
    v28 = zip_deflate_init(v37, v33);
    if (v28)
    {
      return v28;
    }

    else
    {
      v29 = __archive_read_ahead(v37, 1uLL, &v32, v9, v10, v11, v12, v13);
      v30 = v29;
      if ((*(*(v33 + 136) + 126) & 8) == 0 && v32 > *(v33 + 144))
      {
        v32 = *(v33 + 144);
      }

      if ((v32 & 0x8000000000000000) != 0)
      {
        archive_set_error(v37, 79, "Truncated ZIP file body", v14, v15, v16, v17, v18, v25);
        return -30;
      }

      else
      {
        if (*(v33 + 8076) || *(v33 + 8160))
        {
          if (*(v33 + 8048) < v32)
          {
            v27 = *(v33 + 8024) + *(v33 + 8040) - (*(v33 + 8032) + *(v33 + 8048));
            if (v27 > v32)
            {
              v27 = v32;
            }

            if ((*(*(v33 + 136) + 126) & 8) == 0 && *(v33 + 144) > 0 && (*(v33 + 8048) + v27) > *(v33 + 144))
            {
              if (*(v33 + 144) < *(v33 + 8048))
              {
                v27 = 0;
              }

              else
              {
                v27 = *(v33 + 144) - *(v33 + 8048);
              }
            }

            if (v27)
            {
              if (*(v33 + 8076))
              {
                trad_enc_decrypt_update(v33 + 8064, v30, v27, *(v33 + 8032) + *(v33 + 8048), v27);
              }

              else
              {
                v26 = v27;
                off_1F3DE4E80(v33 + 8080, v30, v27, *(v33 + 8032) + *(v33 + 8048), &v26);
              }

              *(v33 + 8048) += v27;
            }
          }

          v32 = *(v33 + 8048);
          v30 = *(v33 + 8032);
        }

        *(v33 + 208) = v30;
        *(v33 + 216) = v32;
        *(v33 + 224) = 0;
        *(v33 + 232) = *(v33 + 192);
        *(v33 + 240) = *(v33 + 200);
        *(v33 + 248) = 0;
        v28 = inflate((v33 + 208), 0);
        if (v28 == -4)
        {
          archive_set_error(v37, 12, "Out of memory for ZIP decompression", v19, v20, v21, v22, v23, v25);
          return -30;
        }

        if (v28)
        {
          if (v28 != 1)
          {
            archive_set_error(v37, -1, "ZIP decompression failed (%d)", v19, v20, v21, v22, v23, v28);
            return -30;
          }

          *(v33 + 186) = 1;
        }

        v31 = *(v33 + 224);
        __archive_read_consume(v37, v31);
        *(v33 + 144) -= v31;
        *(v33 + 152) += v31;
        *(v33 + 160) += *(v33 + 248);
        if (*(v33 + 8076) || *(v33 + 8160))
        {
          *(v33 + 8048) -= v31;
          if (*(v33 + 8048))
          {
            *(v33 + 8032) += v31;
          }

          else
          {
            *(v33 + 8032) = *(v33 + 8024);
          }
        }

        if (*(v33 + 8548))
        {
          off_1F3DE4DC8((v33 + 8164), v29, v31);
        }

        if (*(v33 + 186) && *(v33 + 8548) && (v28 = check_authentication_code(v37, 0)) != 0)
        {
          return v28;
        }

        else
        {
          *v35 = *(v33 + 248);
          *v36 = *(v33 + 192);
          return 0;
        }
      }
    }
  }

  else
  {
    archive_set_error(v37, 12, "No memory for ZIP decompression", v4, v5, v6, v7, v8, v25);
    return -30;
  }
}

uint64_t zip_read_data_zipx_lzma_alone(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = **(a1 + 2072);
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  if (!*(v27 + 185))
  {
    v26 = zipx_lzma_alone_init(v31, v27);
    if (v26)
    {
      return v26;
    }
  }

  v24 = __archive_read_ahead(v31, 1uLL, &v23, a4, a5, a6, a7, a8);
  if (v23 < 0)
  {
    archive_set_error(v31, 79, "Truncated lzma file body", v8, v9, v10, v11, v12, v19);
    return -30;
  }

  if (*(v27 + 144) < v23)
  {
    v21 = *(v27 + 144);
  }

  else
  {
    v21 = v23;
  }

  *(v27 + 328) = v24;
  *(v27 + 336) = v21;
  *(v27 + 344) = 0;
  *(v27 + 352) = *(v27 + 192);
  if (*(v27 + 200) < *(*(v27 + 136) + 48) - *(v27 + 160))
  {
    v20 = *(v27 + 200);
  }

  else
  {
    v20 = *(*(v27 + 136) + 48) - *(v27 + 160);
  }

  *(v27 + 360) = v20;
  *(v27 + 368) = 0;
  v25 = lzma_code();
  if (v25)
  {
    if (v25 != 1)
    {
      if (v25 == 9)
      {
        archive_set_error(v31, -1, "lzma data error (error %d)", v13, v14, v15, v16, v17, 9uLL);
      }

      else
      {
        archive_set_error(v31, -1, "lzma unknown error %d", v13, v14, v15, v16, v17, v25);
      }

      return -30;
    }

    if (*(v27 + 344) != *(v27 + 144))
    {
      archive_set_error(v31, -1, "lzma alone premature end of stream", v13, v14, v15, v16, v17, v19);
      return -30;
    }

    *(v27 + 186) = 1;
  }

  v22 = *(v27 + 344);
  __archive_read_consume(v31, v22);
  *(v27 + 144) -= v22;
  *(v27 + 152) += v22;
  *(v27 + 160) += *(v27 + 368);
  if (!*(v27 + 144))
  {
    *(v27 + 186) = 1;
  }

  if (*(v27 + 186))
  {
    lzma_end();
    *(v27 + 464) = 0;
  }

  *v29 = *(v27 + 368);
  *v30 = *(v27 + 192);
  return 0;
}

const char *compression_name(int a1)
{
  for (i = 0; ; ++i)
  {
    v2 = 0;
    if ((a1 & 0x80000000) == 0)
    {
      v2 = i < 26;
    }

    if (!v2)
    {
      break;
    }

    if (*(&compression_methods + 4 * i) == a1)
    {
      return *(&compression_methods + 2 * i + 1);
    }
  }

  return "??";
}

uint64_t _bomb_get_begin_and_end(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v10 = *(a1 + 32);
    if ((*(a1 + 40) & 0x8000000000000000) != 0 || v10 < 0 || a2 < 1)
    {
      return -30;
    }

    else
    {
      v4 = *(a1 + 40);
      v5 = v4 + a2 - 1;
      if (__OFADD__(v4, a2 - 1))
      {
        return -30;
      }

      else
      {
        v7 = __OFADD__(v10, v5);
        v9 = v10 + v5;
        if (v7)
        {
          return -30;
        }

        else if (v10 <= v9)
        {
          *a3 = v10;
          *a4 = v9;
          return 0;
        }

        else
        {
          return -30;
        }
      }
    }
  }

  else
  {
    return -30;
  }
}

void _bomb_delete_node(uint64_t a1, void *a2)
{
  if (*(a1 + 72) && a2)
  {
    if (*(a1 + 72) == a2)
    {
      *(a1 + 72) = a2[3];
    }

    if (a2[3])
    {
      *(a2[3] + 32) = a2[4];
    }

    if (a2[4])
    {
      *(a2[4] + 24) = a2[3];
    }

    free(a2);
  }
}

uint64_t _bomb_create_and_insert_node(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 112);
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004014A78C51uLL);
  if (v4)
  {
    v4[3] = *(a1 + 72);
    if (v4[3])
    {
      *(v4[3] + 32) = v4;
    }

    *(a1 + 72) = v4;
    v4[4] = 0;
    v4[5] = a2;
    v4[6] = a3;
    if (__archive_rb_tree_insert_node(v5, v4))
    {
      return 0;
    }

    else
    {
      return -30;
    }
  }

  else
  {
    return -30;
  }
}

uint64_t zip_deflate_init(_DWORD *a1, uint64_t a2)
{
  if (*(a2 + 185))
  {
    return 0;
  }

  if (*(a2 + 320))
  {
    HIDWORD(v8) = inflateReset((a2 + 208));
  }

  else
  {
    HIDWORD(v8) = inflateInit2_((a2 + 208), -15, "1.2.12", 112);
  }

  if (!HIDWORD(v8))
  {
    *(a2 + 320) = 1;
    *(a2 + 185) = 1;
    return 0;
  }

  archive_set_error(a1, -1, "Can't initialize ZIP decompression.", v2, v3, v4, v5, v6, v8);
  return -30;
}

uLong trad_enc_decrypt_update(uLong result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = result;
  if (a3 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  for (i = 0; i < v6; ++i)
  {
    v5 = *(a2 + i);
    v7 = v5 ^ trad_enc_decrypt_byte(v11);
    *(a4 + i) = v7;
    result = trad_enc_update_keys(v11, v7);
  }

  return result;
}

uint64_t check_authentication_code(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = a1;
  v23 = a2;
  v22 = **(a1 + 2072);
  if (!*(v22 + 8548))
  {
    goto LABEL_9;
  }

  __s2 = 0;
  v20 = 20;
  off_1F3DE4DD0((v22 + 8164), __s1, &v20);
  if (v23)
  {
    __s2 = v23;
    goto LABEL_7;
  }

  __s2 = __archive_read_ahead(v24, 0xAuLL, 0, v2, v3, v4, v5, v6);
  if (__s2)
  {
LABEL_7:
    v19 = memcmp(__s1, __s2, 0xAuLL);
    __archive_read_consume(v24, 0xAuLL);
    if (v19)
    {
      archive_set_error(v24, -1, "ZIP bad Authentication code", v12, v13, v14, v15, v16, v18);
      v25 = -20;
      goto LABEL_10;
    }

LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  archive_set_error(v24, 79, "Truncated ZIP file data", v7, v8, v9, v10, v11, v18);
  v25 = -30;
LABEL_10:
  *MEMORY[0x1E69E9840];
  return v25;
}

uLong trad_enc_update_keys(int *a1, Bytef a2)
{
  v6 = a1;
  buf = a2;
  v4 = 0;
  v2 = crc32(*a1 ^ 0xFFFFFFFFLL, &buf, 1u);
  *v6 = ~v2;
  v6[1] = 134775813 * (v6[1] + *v6) + 1;
  v4 = HIBYTE(v6[1]);
  result = crc32(v6[2] ^ 0xFFFFFFFFLL, &v4, 1u);
  v6[2] = ~result;
  return result;
}

uint64_t zipx_lzma_alone_init(_DWORD *a1, uint64_t a2)
{
  v23 = a1;
  v22 = a2;
  v21 = 0;
  ahead = 0;
  v19[0] = 0;
  *(v19 + 5) = 0;
  if (*(a2 + 464))
  {
    lzma_end();
    *(v22 + 464) = 0;
  }

  __memset_chk();
  v21 = lzma_alone_decoder();
  if (v21)
  {
    archive_set_error(v23, -1, "lzma initialization failed(%d)", v2, v3, v4, v5, v6, v21);
    return -25;
  }

  else
  {
    *(v22 + 464) = 1;
    if (*(v22 + 144) >= 9 && (ahead = __archive_read_ahead(v23, 9uLL, 0, v2, v3, v4, v5, v6)) != 0)
    {
      if (*(ahead + 2) == 5 && !*(ahead + 3))
      {
        LODWORD(v19[0]) = *(ahead + 4);
        BYTE4(v19[0]) = *(ahead + 8);
        *(v19 + 5) = -1;
        if (*(v22 + 192) || (*(v22 + 200) = 0x40000, (*(v22 + 192) = malloc_type_malloc(*(v22 + 200), 0x100004077774924uLL)) != 0))
        {
          *(v22 + 328) = v19;
          *(v22 + 336) = 13;
          *(v22 + 344) = 0;
          *(v22 + 352) = *(v22 + 192);
          *(v22 + 360) = *(v22 + 200);
          *(v22 + 368) = 0;
          v21 = lzma_code();
          if (v21)
          {
            archive_set_error(v23, 22, "lzma stream initialization error", v12, v13, v14, v15, v16, v18);
            return -30;
          }

          else
          {
            __archive_read_consume(v23, 9uLL);
            *(v22 + 144) -= 9;
            *(v22 + 152) += 9;
            *(v22 + 185) = 1;
            return 0;
          }
        }

        else
        {
          archive_set_error(v23, 12, "No memory for lzma decompression", v7, v8, v9, v10, v11, v18);
          return -30;
        }
      }

      else
      {
        archive_set_error(v23, 79, "Invalid lzma data", v2, v3, v4, v5, v6, v18);
        return -30;
      }
    }

    else
    {
      archive_set_error(v23, 79, "Truncated lzma data", v2, v3, v4, v5, v6, v18);
      return -30;
    }
  }
}

uint64_t read_decryption_header(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87 = **(a1 + 2072);
  ahead = __archive_read_ahead(a1, 2uLL, 0, a4, a5, a6, a7, a8);
  if (!ahead)
  {
    goto LABEL_50;
  }

  v78 = *(v87 + 8552);
  *(v87 + 8552) = archive_le16dec_3(ahead);
  __archive_read_consume(a1, 2uLL);
  if (v78 < *(v87 + 8552))
  {
    free(*(v87 + 8584));
    *(v87 + 8584) = 0;
  }

  if (!__archive_read_ahead(a1, *(v87 + 8552), 0, v13, v14, v15, v16, v17))
  {
    goto LABEL_50;
  }

  if (!*(v87 + 8584))
  {
    *(v87 + 8584) = malloc_type_malloc(*(v87 + 8552), 0x975CCB23uLL);
    if (!*(v87 + 8584))
    {
      goto LABEL_52;
    }
  }

  v23 = *(v87 + 8584);
  v24 = *(v87 + 8552);
  __memcpy_chk();
  __archive_read_consume(a1, *(v87 + 8552));
  v83 = __archive_read_ahead(a1, 0xEuLL, 0, v25, v26, v27, v28, v29);
  if (!v83)
  {
    goto LABEL_50;
  }

  v81 = archive_le32dec_7(v83);
  if (v81 < 0x10 || v81 > 0x40000)
  {
    goto LABEL_51;
  }

  if (archive_le16dec_3(v83 + 4) == 3)
  {
    *(v87 + 8556) = archive_le16dec_3(v83 + 6);
    v77 = *(v87 + 8556);
    if ((v77 - 26113) > 2 && v77 != 26121 && (v77 - 26126) > 2 && v77 != 26370 && v77 != 26401 && v77 != 26400 && v77 != 26625)
    {
      archive_set_error(a1, 79, "Unknown encryption algorithm: %u", v41, v42, v43, v44, v45, *(v87 + 8556));
      return -25;
    }

    *(v87 + 8560) = archive_le16dec_3(v83 + 8);
    *(v87 + 8564) = archive_le16dec_3(v83 + 10);
    if ((*(v87 + 8564) & 0xF000u) - 1 > 2 || (*(v87 + 8564) & 0xF000) == 0 || (*(v87 + 8564) & 0xF000) == 0x4000)
    {
      archive_set_error(a1, 79, "Unknown encryption flag: %u", v46, v47, v48, v49, v50, *(v87 + 8564));
      return -25;
    }

    v79 = *(v87 + 8568);
    *(v87 + 8568) = archive_le16dec_3(v83 + 12);
    __archive_read_consume(a1, 0xEuLL);
    if ((*(v87 + 8568) & 0xF) != 0 || *(v87 + 8568) + 16 > v81 || (*(v87 + 8568) + 16) < *(v87 + 8568))
    {
LABEL_51:
      archive_set_error(a1, 79, "Corrupted ZIP file data", v30, v31, v32, v33, v34, v76);
      return -30;
    }

    if (v79 < *(v87 + 8568))
    {
      free(*(v87 + 8592));
      *(v87 + 8592) = 0;
    }

    if (!__archive_read_ahead(a1, *(v87 + 8568), 0, v30, v31, v32, v33, v34))
    {
      goto LABEL_50;
    }

    if (!*(v87 + 8592))
    {
      *(v87 + 8592) = malloc_type_malloc(*(v87 + 8568), 0x91762FCFuLL);
      if (!*(v87 + 8592))
      {
        goto LABEL_52;
      }
    }

    v51 = *(v87 + 8592);
    v52 = *(v87 + 8568);
    __memcpy_chk();
    __archive_read_consume(a1, *(v87 + 8568));
    v84 = __archive_read_ahead(a1, 4uLL, 0, v53, v54, v55, v56, v57);
    if (!v84)
    {
      goto LABEL_50;
    }

    if (archive_le32dec_7(v84))
    {
      goto LABEL_51;
    }

    __archive_read_consume(a1, 4uLL);
    v85 = __archive_read_ahead(a1, 2uLL, 0, v58, v59, v60, v61, v62);
    if (!v85)
    {
      goto LABEL_50;
    }

    v80 = *(v87 + 8572);
    *(v87 + 8572) = archive_le16dec_3(v85);
    __archive_read_consume(a1, 2uLL);
    if ((*(v87 + 8572) & 0xF) != 0 || *(v87 + 8568) + *(v87 + 8572) + 16 > v81 || *(v87 + 8568) + *(v87 + 8572) + 16 < (*(v87 + 8568) + *(v87 + 8572)))
    {
      goto LABEL_51;
    }

    if (v80 < *(v87 + 8572))
    {
      free(*(v87 + 8600));
      *(v87 + 8600) = 0;
    }

    if (!__archive_read_ahead(a1, *(v87 + 8572), 0, v30, v31, v32, v33, v34))
    {
LABEL_50:
      archive_set_error(a1, 79, "Truncated ZIP file data", v8, v9, v10, v11, v12, v76);
      return -30;
    }

    if (*(v87 + 8600) || (*(v87 + 8600) = malloc_type_malloc(*(v87 + 8572), 0xBE94EA6AuLL)) != 0)
    {
      v63 = *(v87 + 8600);
      v64 = *(v87 + 8572);
      __memcpy_chk();
      __archive_read_consume(a1, *(v87 + 8572));
      v86 = __archive_read_ahead(a1, 4uLL, 0, v65, v66, v67, v68, v69);
      if (v86)
      {
        *(v87 + 8576) = archive_le32dec_7(v86);
        __archive_read_consume(a1, 4uLL);
        archive_set_error(a1, 79, "Encrypted file is unsupported", v70, v71, v72, v73, v74, v76);
        return -25;
      }

      goto LABEL_50;
    }

LABEL_52:
    archive_set_error(a1, 12, "No memory for ZIP decryption", v18, v19, v20, v21, v22, v76);
    return -30;
  }

  v35 = archive_le16dec_3(v83 + 4);
  archive_set_error(a1, 79, "Unsupported encryption format version: %u", v36, v37, v38, v39, v40, v35);
  return -25;
}