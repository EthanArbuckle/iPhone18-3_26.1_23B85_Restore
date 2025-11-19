uint64_t tre_add_tag_left(uint64_t a1, uint64_t a2, int a3)
{
  v6 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x10uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v8 = tre_ast_new_literal(a1, -3, a3, -1);
  *v7 = v8;
  if (!v8)
  {
    return 12;
  }

  v9 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x48uLL);
  v7[1] = v9;
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  result = 0;
  v12 = *(a2 + 48);
  *v10 = *a2;
  *(v10 + 32) = -1;
  *(v10 + 12) = v12;
  *(v10 + 13) = -1;
  *a2 = v7;
  *(a2 + 48) = 1;
  *(a2 + 40) = v10;
  return result;
}

uint64_t tre_merge_branches(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a2 + 8);
  if (a3)
  {
    v9 = *(a3 + 8);
    if (!v8)
    {
      v8 = *(a3 + 8);
      goto LABEL_18;
    }

    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = (a5 + 7) >> 3;
    if (v10 >= 1)
    {
      v11 = (v9 + 40);
      v12 = v8 + 40;
      v13 = v10 + 1;
      do
      {
        v14 = *v11++;
        *v12++ |= v14;
        --v13;
      }

      while (v13 > 1);
    }

    *(v8 + 6) += *(v9 + 24);
    *(v8 + 9) += *(v9 + 36);
    v15 = *(v8 + 1);
    v16 = *(v9 + 8);
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      do
      {
        v17 = v15;
        v15 = *v15;
      }

      while (v15);
      *v17 = v16;
      *(v8 + 4) += *(v9 + 16);
      v18 = vadd_s32(*(v8 + 28), *(v9 + 28));
    }

    else
    {
      if (!v16)
      {
        goto LABEL_18;
      }

      *(v8 + 1) = v16;
      *(v8 + 4) = *(v9 + 16);
      v18 = *(v9 + 28);
    }

    *(v8 + 28) = v18;
  }

  else if (!v8)
  {
    if (a4)
    {
      goto LABEL_20;
    }

    v8 = 0;
    goto LABEL_24;
  }

LABEL_18:
  if (a4)
  {
    if (v8)
    {
LABEL_22:
      if (a4 >= 1)
      {
        v8[(a4 >> 3) + 40] |= 1 << (a4 & 7);
        ++*(v8 + 6);
        ++*(v8 + 9);
      }

      goto LABEL_24;
    }

LABEL_20:
    v8 = tre_mem_alloc_impl(a1, 0, 0, 1, ((a5 + 7) >> 3) + 40);
    if (!v8)
    {
      return 12;
    }

    *(v8 + 7) = 1;
    goto LABEL_22;
  }

LABEL_24:
  v19 = 0;
  *(a2 + 8) = v8;
  return v19;
}

uint64_t tre_expand_ast(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v10 = tre_stack_num_objects(a2);
  v53 = 0;
  result = tre_stack_push_voidptr(a2, a3);
  if (result)
  {
    return result;
  }

  result = tre_stack_push_int(a2, 0);
  if (result)
  {
    return result;
  }

  v46 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v49 = v10;
  while (1)
  {
    if (tre_stack_num_objects(a2) <= v10)
    {
      result = 0;
LABEL_87:
      v44 = *v46 + v14;
      if (v53 > v44)
      {
        v44 = v53;
      }

      *v46 = v44;
      return result;
    }

    v16 = tre_stack_pop_int(a2);
    v17 = tre_stack_pop_voidptr(a2);
    if (v16 == 1)
    {
      break;
    }

    if (!v16)
    {
      v18 = v17[12];
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v38 = v17;
          v39 = *v17;
          result = tre_stack_push_int(a2, v13);
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_voidptr(a2, v38);
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_int(a2, 1u);
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_voidptr(a2, *v39);
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_int(a2, 0);
          if (result)
          {
            goto LABEL_87;
          }

          if (*(v39 + 8) > 1 || *(v39 + 12) >= 2)
          {
            v12 = 0;
            v13 = 0;
            v54 = 0;
          }

          ++v15;
        }

        else if (v18 == 3)
        {
LABEL_28:
          v27 = *v17;
          result = tre_stack_push_voidptr(a2, *(*v17 + 8));
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_int(a2, 0);
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_voidptr(a2, *v27);
          if (result)
          {
            goto LABEL_87;
          }

          result = tre_stack_push_int(a2, 0);
          if (result)
          {
            goto LABEL_87;
          }
        }
      }

      else if (v18)
      {
        if (v18 == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v36 = *v17;
        v37 = **v17;
        if ((v37 & 0x80000000) == 0 || v37 == -4)
        {
          v42 = *(v36 + 8) + v12;
          *(v36 + 8) = v42;
          v43 = v53;
          if (v42 > v53)
          {
            v43 = v42;
          }

          v53 = v43;
LABEL_81:
          v13 = v12;
        }
      }
    }
  }

  v50 = v17;
  v19 = *v17;
  v20 = tre_stack_pop_int(a2);
  v21 = v20;
  v54 = v20;
  v22 = v19[2];
  if (!v22)
  {
    v28 = v19[3];
    if (!v28)
    {
      v40 = tre_ast_new_literal(a1, -1, -1, -1);
      v10 = v49;
      if (!v40)
      {
        return 12;
      }

      *v50 = *v40;
      v50[12] = *(v40 + 12);
      v26 = v21;
      goto LABEL_77;
    }

    if (v28 >= 2)
    {
      v24 = 0;
      v22 = 0;
      v52 = 0;
      goto LABEL_39;
    }

LABEL_51:
    v26 = v20;
    v10 = v49;
LABEL_77:
    --v15;
    v14 = v26 - v21 + v14;
    if (v15)
    {
      v12 = v26;
    }

    else
    {
      v12 = v14;
    }

    v54 = v12;
    goto LABEL_81;
  }

  if (v22 < 2)
  {
    if (v19[3] > 1)
    {
      v52 = 0;
      if (v22 == 1)
      {
        goto LABEL_15;
      }

      v24 = 0;
LABEL_39:
      v26 = v20;
LABEL_40:
      v29 = v19[3];
      v48 = v21;
      if (v29 == -1)
      {
        v26 = v54;
        result = tre_copy_ast(a1, a2, *v19, 0, &v54, 0, &v52, &v53);
        v10 = v49;
        if (result)
        {
          return result;
        }

        v41 = tre_ast_new_iter(a1, v52, 0, -1, 0);
        v52 = v41;
        if (!v41)
        {
          return 12;
        }

        v30 = v41;
      }

      else
      {
        if (v22 < v29)
        {
          v30 = 0;
          v45 = v15;
          while (1)
          {
            v51 = 0;
            v26 = v54;
            result = tre_copy_ast(a1, a2, *v19, 0, &v54, 0, &v51, &v53);
            if (result)
            {
              return result;
            }

            v31 = a5;
            v32 = v14;
            v33 = v51;
            if (v30)
            {
              v33 = tre_ast_new_catenation(a1, v51, v30);
            }

            if (!v33)
            {
              return 12;
            }

            v34 = tre_ast_new_literal(a1, -1, -1, -1);
            if (!v34)
            {
              return 12;
            }

            v35 = tre_ast_new_union(a1, v34, v33);
            if (!v35)
            {
              return 12;
            }

            v30 = v35;
            ++v22;
            v14 = v32;
            a5 = v31;
            v15 = v45;
            if (v22 >= v19[3])
            {
              goto LABEL_71;
            }
          }
        }

        v30 = 0;
LABEL_71:
        v52 = v30;
        v10 = v49;
      }

      if (v24)
      {
        if (!v30)
        {
LABEL_76:
          *v50 = *v24;
          v50[12] = *(v24 + 12);
          v21 = v48;
          goto LABEL_77;
        }

        v30 = tre_ast_new_catenation(a1, v24, v30);
      }

      v24 = v30;
      if (!v30)
      {
        return 12;
      }

      goto LABEL_76;
    }

    goto LABEL_51;
  }

  v52 = 0;
LABEL_15:
  v47 = v20;
  v23 = 0;
  v24 = 0;
  while (1)
  {
    v51 = 0;
    v25 = ++v23 < v22 ? 1 : 2;
    v26 = v54;
    result = tre_copy_ast(a1, a2, *v19, v25, &v54, a5, &v51, &v53);
    if (result)
    {
      return result;
    }

    if (v24)
    {
      v24 = tre_ast_new_catenation(a1, v24, v51);
    }

    else
    {
      v24 = v51;
    }

    if (!v24)
    {
      return 12;
    }

    v22 = v19[2];
    if (v23 >= v22)
    {
      v21 = v47;
      goto LABEL_40;
    }
  }
}

uint64_t tre_compute_nfl(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = tre_stack_num_objects(a2);
  matched = tre_stack_push_voidptr(a2, a3);
  if (matched)
  {
    return matched;
  }

  matched = tre_stack_push_int(a2, 0);
  if (matched)
  {
    return matched;
  }

  if (tre_stack_num_objects(a2) <= v6)
  {
    return 0;
  }

  v10 = -NAN;
  while (1)
  {
    v11 = tre_stack_pop_int(a2);
    v12 = tre_stack_pop_voidptr(a2);
    v13 = v12;
    if (v11 <= 1)
    {
      break;
    }

    if (v11 != 2)
    {
      if (v11 != 3)
      {
        goto LABEL_79;
      }

      v52 = 0;
      v51 = 0;
      v18 = *v12;
      v19 = **v12;
      if (*(*v12 + 2) && !*(v19 + 64))
      {
        *(v12 + 32) = 0;
      }

      else
      {
        *(v12 + 32) = 1;
        if (*(v19 + 64))
        {
          matched = tre_match_empty(a2, v19, 0, 0, 0, &v52 + 1, &v51);
          if (matched)
          {
            return matched;
          }

          v20 = malloc_type_malloc(4 * SHIDWORD(v52) + 4, 0x100004052888210uLL);
          if (!v20)
          {
            return 12;
          }

          v21 = v20;
          *v20 = -1;
          LODWORD(v52) = 0;
          if (v51)
          {
            v22 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
            if (!v22)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v22 = 0;
          }

          v35 = tre_match_empty(a2, *v18, v21, &v52, v22, 0, 0);
          if (v35)
          {
            goto LABEL_87;
          }

          v13[4] = tre_set_union(a1, *(*v18 + 32), *(*v18 + 32), v21, v52, v22);
          free(v21);
          if (!v13[4])
          {
            return 12;
          }

          v19 = *v18;
          goto LABEL_78;
        }
      }

      v12[4] = *(v19 + 32);
LABEL_78:
      v13[3] = *(v19 + 24);
      goto LABEL_79;
    }

    v52 = 0;
    v51 = 0;
    v26 = *v12;
    v27 = **v12;
    v28 = *(v27 + 64);
    if (v28)
    {
      v28 = *(v26[1] + 64) != 0;
    }

    *(v12 + 32) = v28;
    if (*(v27 + 64))
    {
      matched = tre_match_empty(a2, v27, 0, 0, 0, &v52 + 1, &v51);
      if (matched)
      {
        return matched;
      }

      v29 = malloc_type_malloc(4 * SHIDWORD(v52) + 4, 0x100004052888210uLL);
      if (!v29)
      {
        return 12;
      }

      v21 = v29;
      *v29 = -1;
      LODWORD(v52) = 0;
      if (v51)
      {
        v30 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
        if (!v30)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v30 = 0;
      }

      v35 = tre_match_empty(a2, *v26, v21, &v52, v30, 0, 0);
      if (v35)
      {
LABEL_87:
        v8 = v35;
LABEL_89:
        free(v21);
        return v8;
      }

      v13[3] = tre_set_union(a1, *(v26[1] + 24), *(*v26 + 24), v21, v52, v30);
      free(v21);
      if (!v13[3])
      {
        return 12;
      }
    }

    else
    {
      v12[3] = *(v27 + 24);
    }

    v36 = v26[1];
    if (*(v36 + 64))
    {
      matched = tre_match_empty(a2, v36, 0, 0, 0, &v52 + 1, &v51);
      if (matched)
      {
        return matched;
      }

      v37 = malloc_type_malloc(4 * SHIDWORD(v52) + 4, 0x100004052888210uLL);
      if (!v37)
      {
        return 12;
      }

      v21 = v37;
      *v37 = -1;
      LODWORD(v52) = 0;
      if (v51)
      {
        v38 = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
        if (!v38)
        {
LABEL_88:
          v8 = 12;
          goto LABEL_89;
        }
      }

      else
      {
        v38 = 0;
      }

      v35 = tre_match_empty(a2, v26[1], v21, &v52, v38, 0, 0);
      if (v35)
      {
        goto LABEL_87;
      }

      v13[4] = tre_set_union(a1, *(*v26 + 32), *(v26[1] + 32), v21, v52, v38);
      free(v21);
      if (!v13[4])
      {
        return 12;
      }
    }

    else
    {
      v13[4] = *(v36 + 32);
    }

LABEL_79:
    v8 = 0;
    if (tre_stack_num_objects(a2) <= v6)
    {
      return v8;
    }
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_79;
    }

    v14 = *v12;
    v15 = **v12;
    v16 = (*v12)[1];
    if (*(v15 + 64))
    {
      v17 = 1;
    }

    else
    {
      v17 = *(v16 + 64) != 0;
    }

    *(v12 + 32) = v17;
    v33 = tre_set_union(a1, *(v15 + 24), *(v16 + 24), 0, 0, 0);
    v13[3] = v33;
    if (!v33)
    {
      return 12;
    }

    v34 = tre_set_union(a1, *(*v14 + 32), *(v14[1] + 32), 0, 0, 0);
    goto LABEL_45;
  }

  v23 = *(v12 + 12);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      matched = tre_stack_push_voidptr(a2, v12);
      if (matched)
      {
        return matched;
      }

      v31 = a2;
      v32 = 3;
LABEL_70:
      matched = tre_stack_push_int(v31, v32);
      if (matched)
      {
        return matched;
      }

      matched = tre_stack_push_voidptr(a2, **v13);
      if (matched)
      {
        return matched;
      }

      matched = tre_stack_push_int(a2, 0);
      if (matched)
      {
        return matched;
      }

      goto LABEL_79;
    }

    if (v23 != 3)
    {
      goto LABEL_79;
    }

    matched = tre_stack_push_voidptr(a2, v12);
    if (matched)
    {
      return matched;
    }

    v24 = a2;
    v25 = 1;
LABEL_39:
    matched = tre_stack_push_int(v24, v25);
    if (matched)
    {
      return matched;
    }

    matched = tre_stack_push_voidptr(a2, (*v13)[1]);
    if (matched)
    {
      return matched;
    }

    v31 = a2;
    v32 = 0;
    goto LABEL_70;
  }

  if (v23)
  {
    if (v23 != 1)
    {
      goto LABEL_79;
    }

    matched = tre_stack_push_voidptr(a2, v12);
    if (matched)
    {
      return matched;
    }

    v24 = a2;
    v25 = 2;
    goto LABEL_39;
  }

  v39 = *v12;
  v40 = **v12;
  if (v40 != -4)
  {
    if (v40 < 0)
    {
      *(v12 + 32) = 1;
      tre_set_empty(a1);
      v13[3] = v50;
      if (!v50)
      {
        return 12;
      }

      tre_set_empty(a1);
    }

    else
    {
      *(v12 + 32) = 0;
      v47 = *(v39 + 1);
      v48 = *(v39 + 2);
      v49 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x80uLL);
      if (!v49)
      {
LABEL_90:
        v13[3] = 0;
        return 12;
      }

      *v49 = v48;
      *(v49 + 1) = v40;
      *(v49 + 2) = v47;
      *(v49 + 4) = 0;
      *(v49 + 10) = -1;
      *(v49 + 8) = -1;
      *(v49 + 18) = -1;
      v13[3] = v49;
      tre_set_one(a1, *(v39 + 2), *v39, *(v39 + 1), v39[2], -1);
    }

LABEL_45:
    v13[4] = v34;
    if (!v34)
    {
      return 12;
    }

    goto LABEL_79;
  }

  *(v12 + 32) = 0;
  v41 = *(v39 + 2);
  v42 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x80uLL);
  if (!v42)
  {
    goto LABEL_90;
  }

  *v42 = v41;
  *(v42 + 4) = v10;
  *(v42 + 4) = 0;
  *(v42 + 10) = -1;
  *(v42 + 8) = -1;
  *(v42 + 18) = -1;
  v13[3] = v42;
  v45 = v39 + 4;
  v43 = *(v39 + 1);
  v44 = *(v45 + 1);
  v46 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x80uLL);
  if (v46)
  {
    *v46 = v44;
    *(v46 + 4) = v10;
    *(v46 + 4) = 0;
    *(v46 + 10) = v43;
    *(v46 + 8) = -1;
    *(v46 + 18) = -1;
    v13[4] = v46;
    goto LABEL_79;
  }

  v13[4] = 0;
  return 12;
}

double tre_set_empty(uint64_t a1)
{
  v1 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x40uLL);
  if (v1)
  {
    result = NAN;
    *v1 = -1;
    *(v1 + 2) = -1;
  }

  return result;
}

uint64_t tre_match_empty(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v14 = tre_stack_num_objects(a1);
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  result = tre_stack_push_voidptr(a1, a2);
  if (!result)
  {
    while (1)
    {
      while (1)
      {
        if (tre_stack_num_objects(a1) <= v14)
        {
          return 0;
        }

        v16 = tre_stack_pop_voidptr(a1);
        v17 = *(v16 + 12);
        if (v17 > 1)
        {
          break;
        }

        if (v17)
        {
          if (v17 == 1)
          {
            v18 = *v16;
            result = tre_stack_push_voidptr(a1, **v16);
            if (result)
            {
              return result;
            }

            v19 = v18[1];
            goto LABEL_28;
          }
        }

        else
        {
          v21 = *v16;
          v22 = *v21;
          if (*v21 == -5)
          {
            if (a5)
            {
              for (i = 0; i != 36; i += 4)
              {
                *(a5 + i) = *(v21[2] + i);
              }
            }

            if (a7)
            {
              *a7 = 1;
            }
          }

          else if (v22 == -2)
          {
            if (a4)
            {
              *a4 |= *(v21 + 1);
            }
          }

          else if (v22 == -3)
          {
            v23 = *(v21 + 1);
            if ((v23 & 0x80000000) == 0)
            {
              if (a3)
              {
                v24 = *a3;
                if (*a3 < 0)
                {
                  v26 = 0;
LABEL_38:
                  v28 = &a3[v26];
                  *v28 = v23;
                  v28[1] = -1;
                }

                else
                {
                  v25 = 0;
                  while (v24 != v23)
                  {
                    v26 = v25 + 1;
                    v24 = a3[++v25];
                    if (v24 < 0)
                    {
                      goto LABEL_38;
                    }
                  }
                }
              }

              if (a6)
              {
                ++*a6;
              }
            }
          }
        }
      }

      if (v17 == 2)
      {
        break;
      }

      if (v17 == 3)
      {
        v20 = *v16;
        v19 = *v20;
        if (*(*v20 + 64))
        {
LABEL_28:
          result = tre_stack_push_voidptr(a1, v19);
          if (result)
          {
            return result;
          }
        }

        else
        {
          v19 = v20[1];
LABEL_27:
          if (*(v19 + 64))
          {
            goto LABEL_28;
          }
        }
      }
    }

    v19 = **v16;
    goto LABEL_27;
  }

  return result;
}

char *tre_set_union(uint64_t a1, int *a2, _DWORD *a3, unint64_t a4, int a5, uint64_t a6)
{
  v9 = a3;
  if (a4)
  {
    v12 = -1;
    v13 = a4;
    do
    {
      v14 = *v13++;
      ++v12;
    }

    while ((v14 & 0x80000000) == 0);
  }

  else
  {
    v12 = 0;
  }

  v15 = 0;
  do
  {
    v16 = a2[v15];
    v15 += 16;
  }

  while ((v16 & 0x80000000) == 0);
  v17 = v15 * 4 - 64;
  v18 = a3;
  do
  {
    v19 = *v18;
    v18 += 16;
    v17 += 64;
  }

  while ((v19 & 0x80000000) == 0);
  result = tre_mem_alloc_impl(a1, 0, 0, 1, v17 & 0x3FFFFFFFC0);
  v58 = result;
  if (result)
  {
    v21 = *a2;
    if (*a2 < 0)
    {
      LODWORD(v22) = 0;
    }

    else
    {
      v22 = 0;
      v57 = v9;
      v23 = result;
      do
      {
        v24 = &a2[16 * v22];
        v25 = *(v24 + 2);
        v26 = &v23[64 * v22];
        *v26 = v21;
        *(v26 + 4) = *(v24 + 1);
        *(v26 + 6) = v24[6] | a5;
        *(v26 + 4) = *(v24 + 4);
        *(v26 + 10) = v24[10];
        if (a4 | v25)
        {
          if (v25)
          {
            v27 = -1;
            do
            {
              v28 = *v25;
              v25 += 4;
              ++v27;
            }

            while ((v28 & 0x80000000) == 0);
          }

          else
          {
            v27 = 0;
          }

          result = tre_mem_alloc_impl(a1, 0, 0, 0, 4 * (v12 + 1 + v27));
          if (!result)
          {
            return result;
          }

          if (v27)
          {
            v29 = *(v24 + 2);
            v30 = v27;
            v31 = result;
            do
            {
              v32 = *v29++;
              *v31 = v32;
              v31 += 4;
              --v30;
            }

            while (v30);
          }

          if (v12)
          {
            v33 = &result[4 * v27];
            v34 = v12;
            v35 = a4;
            do
            {
              v36 = *v35++;
              *v33 = v36;
              v33 += 4;
              --v34;
            }

            while (v34);
          }

          *&result[4 * v12 + 4 * v27] = -1;
          v23 = v58;
        }

        else
        {
          result = 0;
        }

        *(v26 + 2) = result;
        v37 = *(v24 + 6);
        if (v37)
        {
          *(v26 + 6) = v37;
        }

        if (a6)
        {
          if (*(v26 + 6))
          {
            result = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
            *(v26 + 6) = result;
            if (!result)
            {
              return result;
            }

            for (i = 0; i != 36; i += 4)
            {
              v39 = *(a6 + i);
              if (v39 != -1)
              {
                *&result[i] = v39;
              }
            }
          }

          else
          {
            *(v26 + 6) = a6;
          }
        }

        v21 = a2[16 * ++v22];
      }

      while ((v21 & 0x80000000) == 0);
      v9 = v57;
    }

    v40 = *v9;
    if ((*v9 & 0x80000000) != 0)
    {
      LODWORD(v41) = 0;
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = &v9[16 * v41];
        v43 = &v58[64 * v22 + 64 * v41];
        *v43 = v40;
        *(v43 + 4) = *(v42 + 1);
        *(v43 + 24) = v42[6];
        *(v43 + 32) = *(v42 + 4);
        *(v43 + 40) = v42[10];
        v44 = *(v42 + 2);
        if (v44)
        {
          v45 = v9;
          v46 = 0;
          v47 = 0;
          v48 = -1;
          do
          {
            v49 = v46;
            v50 = *(v44 + v47);
            ++v48;
            v47 += 4;
            ++v46;
          }

          while ((v50 & 0x80000000) == 0);
          result = tre_mem_alloc_impl(a1, 0, 0, 0, v47 & 0x3FFFFFFFCLL);
          if (!result)
          {
            return result;
          }

          if (v48)
          {
            v51 = *(v42 + 2);
            v52 = result;
            do
            {
              v53 = *v51++;
              *v52 = v53;
              v52 += 4;
              --v49;
            }

            while (v49);
          }

          *&result[4 * v48] = -1;
          v9 = v45;
        }

        else
        {
          result = 0;
        }

        *(v43 + 16) = result;
        v54 = *(v42 + 6);
        if (v54)
        {
          *(v43 + 48) = v54;
        }

        if (a6)
        {
          if (*(v43 + 48))
          {
            result = tre_mem_alloc_impl(a1, 0, 0, 0, 0x24uLL);
            *(v43 + 48) = result;
            if (!result)
            {
              return result;
            }

            for (j = 0; j != 36; j += 4)
            {
              v56 = *(a6 + j);
              if (v56 != -1)
              {
                *&result[j] = v56;
              }
            }
          }

          else
          {
            *(v43 + 48) = a6;
          }
        }

        v40 = v9[16 * ++v41];
      }

      while ((v40 & 0x80000000) == 0);
    }

    result = v58;
    *&v58[64 * (v41 + v22)] = -1;
  }

  return result;
}

double tre_set_one(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v11 = tre_mem_alloc_impl(a1, 0, 0, 1, 0x80uLL);
  if (v11)
  {
    *v11 = a2;
    *(v11 + 1) = a3;
    *(v11 + 2) = a4;
    *(v11 + 4) = a5;
    *(v11 + 10) = a6;
    result = NAN;
    *(v11 + 8) = -1;
    *(v11 + 18) = -1;
  }

  return result;
}

uint64_t tre_ast_to_tnfa(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v7 = a1[12];
    if (v7 != 1)
    {
      break;
    }

    v11 = *a1;
    v10 = *a1 + 8;
    result = tre_make_trans(*(**a1 + 32), *(*v10 + 24), a2, a3, a4);
    if (result)
    {
      return result;
    }

    result = tre_ast_to_tnfa(*v11, a2, a3, a4);
    if (result)
    {
      return result;
    }

LABEL_11:
    a1 = *v10;
  }

  if (v7 == 2)
  {
    v10 = *a1;
    if (*(*a1 + 12) == -1)
    {
      result = tre_make_trans(*(*v10 + 32), *(*v10 + 24), a2, a3, a4);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_11;
  }

  if (v7 == 3)
  {
    v8 = *a1;
    result = tre_ast_to_tnfa(**a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    v10 = v8 + 8;
    goto LABEL_11;
  }

  return 0;
}

uint64_t tre_make_trans(int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = *a1;
  if (!a3)
  {
    if ((v7 & 0x80000000) == 0)
    {
      do
      {
        if ((*a2 & 0x80000000) == 0)
        {
          v48 = (a2 + 16);
          do
          {
            ++*(a4 + 4 * *v6);
            v49 = *v48;
            v48 += 16;
          }

          while ((v49 & 0x80000000) == 0);
        }

        v50 = v6[16];
        v6 += 16;
      }

      while ((v50 & 0x80000000) == 0);
    }

    return 0;
  }

  if (v7 < 0)
  {
    return 0;
  }

  v52 = a3 - 56;
  while (1)
  {
    v10 = *a2;
    if ((v10 & 0x80000000) == 0)
    {
      break;
    }

LABEL_65:
    v47 = v6[16];
    v6 += 16;
    if (v47 < 0)
    {
      return 0;
    }
  }

  v11 = 0xFFFFFFFFLL;
  v12 = a2;
  while (1)
  {
    v13 = v11;
    v12 += 16;
    v11 = v10;
    while (v11 == v13)
    {
      v14 = *v12;
      v12 += 16;
      v11 = v14;
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_65;
      }
    }

    v15 = v52 + 56 * *(a5 + 4 * *v6);
    do
    {
      v16 = *(v15 + 64);
      v15 += 56;
    }

    while (v16);
    *(v15 + 64) = 0;
    *v15 = *(v6 + 1);
    *(v15 + 8) = a3 + 56 * *(a5 + 4 * v11);
    *(v15 + 16) = v11;
    v17 = *(v6 + 4);
    v18 = *(v12 - 10) | v6[6] | (4 * (v17 != 0));
    *(v15 + 40) = v18;
    v19 = v6[10];
    if ((v19 & 0x80000000) == 0)
    {
      *(v15 + 48) = v19;
      *(v15 + 40) = v18 | 0x80;
      v17 = *(v6 + 4);
    }

    if (v17)
    {
      v20 = malloc_type_malloc(8 * *v17 + 8, 0x100004000313F17uLL);
      *(v15 + 48) = v20;
      if (!v20)
      {
        return 12;
      }

      j__mkdtempat_np(v20, *(v6 + 4));
    }

    v21 = *(v6 + 2);
    if (v21)
    {
      v22 = -1;
      do
      {
        v23 = *v21++;
        ++v22;
      }

      while ((v23 & 0x80000000) == 0);
    }

    else
    {
      v22 = 0;
    }

    v24 = *(v12 - 6);
    if (v24)
    {
      v25 = -1;
      do
      {
        v26 = *v24++;
        ++v25;
      }

      while ((v26 & 0x80000000) == 0);
    }

    else
    {
      v25 = 0;
    }

    v27 = *(v15 + 24);
    if (v27)
    {
      free(v27);
    }

    *(v15 + 24) = 0;
    if (v25 + v22)
    {
      v28 = malloc_type_malloc(4 * (v25 + v22 + 1), 0x100004052888210uLL);
      *(v15 + 24) = v28;
      if (!v28)
      {
        return 12;
      }

      v29 = *(v6 + 2);
      if (!v29 || (v30 = *v29, *v29 < 0))
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v31 = 0;
        v32 = v29 + 1;
        do
        {
          v28[v31] = v30;
          v30 = v32[v31++];
        }

        while ((v30 & 0x80000000) == 0);
      }

      v33 = *(v12 - 6);
      if (!v33 || (v34 = *v33, *v33 < 0))
      {
        v36 = v31;
      }

      else
      {
        v35 = 0;
        v36 = v31;
        do
        {
          v37 = v31;
          v38 = v28;
          if (v31)
          {
            while (1)
            {
              v39 = *v38++;
              if (v39 == v34)
              {
                break;
              }

              if (!--v37)
              {
                goto LABEL_43;
              }
            }
          }

          else
          {
LABEL_43:
            v28[v36++] = v34;
          }

          v34 = v33[++v35];
        }

        while ((v34 & 0x80000000) == 0);
      }

      v28[v36] = -1;
    }

    if (!*(v6 + 6) && !*(v12 - 2))
    {
      v46 = *(v15 + 32);
      if (v46)
      {
        free(v46);
      }

      *(v15 + 32) = 0;
      goto LABEL_60;
    }

    v40 = *(v15 + 32);
    if (!v40)
    {
      v40 = malloc_type_malloc(0x24uLL, 0x100004052888210uLL);
      *(v15 + 32) = v40;
      if (!v40)
      {
        return 12;
      }
    }

    v41 = 0;
    v42 = *(v6 + 6);
    v43 = *(v12 - 2);
    do
    {
      *&v40[v41] = -1;
      if (v42)
      {
        v44 = *(v42 + v41);
        if (v44 != -1)
        {
          *&v40[v41] = v44;
        }
      }

      if (v43)
      {
        v45 = *(v43 + v41);
        if (v45 != -1)
        {
          *&v40[v41] = v45;
        }
      }

      v41 += 4;
    }

    while (v41 != 36);
LABEL_60:
    v10 = *v12;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_65;
    }
  }
}

void tre_mem_destroy(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      free(*v2);
      v3 = *(v2 + 8);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

void tre_stack_destroy(void **a1)
{
  free(a1[2]);

  free(a1);
}

void tre_free(uint64_t a1)
{
  *a1 = 0;
  v1 = *(a1 + 24);
  if (v1)
  {
    *(a1 + 24) = 0;
    if (*(v1 + 64))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = *v1;
        v5 = *v1 + v2;
        if (*(v5 + 8))
        {
          v6 = *(v5 + 24);
          if (v6)
          {
            free(v6);
            v4 = *v1;
          }

          if ((v4[v2 + 40] & 4) != 0)
          {
            free(*&v4[v2 + 48]);
            v4 = *v1;
          }

          v7 = *&v4[v2 + 32];
          if (v7)
          {
            free(v7);
          }
        }

        ++v3;
        v2 += 56;
      }

      while (v3 < *(v1 + 64));
    }

    if (*v1)
    {
      free(*v1);
    }

    v8 = *(v1 + 8);
    if (v8)
    {
      if (v8[1])
      {
        v9 = v8 + 4;
        do
        {
          v10 = *(v9 - 1);
          if (v10)
          {
            free(v10);
          }

          if (*v9)
          {
            free(*v9);
          }

          v11 = v9[4];
          v9 += 7;
        }

        while (v11);
        v8 = *(v1 + 8);
      }

      free(v8);
    }

    v12 = *(v1 + 24);
    if (v12)
    {
      free(v12);
    }

    v13 = *(v1 + 32);
    if (v13)
    {
      free(v13);
    }

    v14 = *(v1 + 40);
    if (v14)
    {
      free(v14);
    }

    v15 = *(v1 + 56);
    if (v15)
    {
      if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          v16();
        }
      }
    }

    v17 = *(v1 + 48);
    if (v17)
    {
      free(v17);
    }

    free(v1);
  }
}

unint64_t __strncat_chk(unint64_t a1, char *a2, size_t a3, unint64_t a4)
{
  v8 = j__strsignal_r(a1, a2, a3);
  v9 = MEMORY[0x193AD6A70](a2, a3);
  v10 = v9 + v8;
  v11 = v9 + v8 + 1;
  if (v11 > a4)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v11, a2, v9 + 1);
  }

  j__mkdtempat_np(a1 + v8, a2);
  *(a1 + v10) = 0;
  return a1;
}

pid_t waitpid(pid_t a1, int *a2, int a3)
{
  if ((a3 & 0xFFFFFFEC) != 0)
  {
    *__error() = 22;
    return -1;
  }

  else
  {

    return MEMORY[0x1EEE722B8](*&a1, a2, *&a3, 0);
  }
}

int timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len)
{
  if (!__len)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 |= *(__b2 + __len - 1) ^ *(__b1 + __len - 1);
    --__len;
  }

  while (__len);
  return (v3 + 255) >> 8;
}

int puts(const char *a1)
{
  if (off_1EAC9EA80)
  {
    (off_1EAC9EA80)(a1);
  }

  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = "(null)";
  }

  v12 = v4;
  v13 = j__strsignal_r(v4, v1, v2);
  v14 = "\n";
  v15 = 1;
  v9 = &v12;
  v10 = 2;
  v11 = v13 + 1;
  flockfile(__stdoutp);
  v5 = __stdoutp;
  extra = __stdoutp->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  if (__sfvwrite(v5, &v9))
  {
    v7 = -1;
  }

  else
  {
    v7 = 10;
  }

  funlockfile(__stdoutp);
  return v7;
}

uint64_t sig_keycreate()
{
  result = pthread_key_create(&sig_key, MEMORY[0x1E69E9B38]);
  sig_keycreated = result == 0;
  return result;
}

int strsignal_r(int __sig, char *__strsignalbuf, size_t __buflen)
{
  v16 = 0;
  v17[0] = 0;
  *(v17 + 7) = 0;
  if (__sig >= 0)
  {
    v6 = __sig;
  }

  else
  {
    v6 = -__sig;
  }

  v7 = &v16;
  do
  {
    *v7 = a0123456789[v6 % 0xA];
    v7 = (v7 + 1);
    v8 = v6 > 9;
    v6 /= 0xAu;
  }

  while (v8);
  if (__sig < 0)
  {
    *v7 = 45;
    v7 = (v7 + 1);
  }

  v9 = j__strsignal_r(&v16, __strsignalbuf, __buflen) + 2;
  if ((__sig - 1) > 0x1E)
  {
    v10 = MEMORY[0x193AD6A30](__strsignalbuf, "Unknown signal", __buflen);
    v11 = __buflen - v9;
    result = 22;
  }

  else
  {
    v10 = MEMORY[0x193AD6A30](__strsignalbuf, sys_siglist[__sig], __buflen);
    v11 = __buflen - v9;
    if (v10 >= v11)
    {
      result = 34;
    }

    else
    {
      result = 0;
    }
  }

  if (v10 < v11)
  {
    v13 = &__strsignalbuf[v10];
    *v13 = 8250;
    v14 = v13 + 2;
    do
    {
      v15 = *(v7 - 1);
      v7 = (v7 - 1);
      *v14++ = v15;
    }

    while (v7 > &v16);
    *v14 = 0;
  }

  return result;
}

char *__cdecl strsignal(int __sig)
{
  if (pthread_once(&sig_init_once, sig_keycreate))
  {
    v2 = 1;
  }

  else
  {
    v2 = sig_keycreated == 0;
  }

  if (v2)
  {
    goto LABEL_6;
  }

  v5 = pthread_getspecific(sig_key);
  v3 = v5;
  if (!v5)
  {
    v3 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
    if (!v3)
    {
      goto LABEL_7;
    }

    if (!pthread_setspecific(sig_key, v3))
    {
      goto LABEL_9;
    }

    free(v3);
LABEL_6:
    v3 = 0;
LABEL_7:
    v4 = 12;
LABEL_11:
    *__error() = v4;
    return v3;
  }

LABEL_9:
  if (strsignal_r(__sig, v3, 0x800uLL))
  {
    v4 = 22;
    goto LABEL_11;
  }

  return v3;
}

void uuid_unparse_lower(const uuid_t uu, uuid_string_t out)
{
  v2 = 0;
  do
  {
    if (v2 <= 0xA && ((1 << v2) & 0x550) != 0)
    {
      *out++ = 45;
    }

    *out = a0123456789abcd[uu[v2] >> 4];
    out[1] = a0123456789abcd[uu[v2] & 0xF];
    out += 2;
    ++v2;
  }

  while (v2 != 16);
  *out = 0;
}

int strnvisx(char *a1, size_t a2, const char *a3, size_t a4, int a5)
{
  v6 = a2;
  v7 = a1;
  return istrsenvisx(&v7, &v6, a3, a4, a5, "", 0);
}

uint64_t istrsenvisx(char **a1, uint64_t a2, const char *a3, unint64_t a4, unsigned int a5, uint64_t a6, int *a7)
{
  v67 = a5;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v59 - v15;
  if (!v12)
  {
    istrsenvisx_cold_4();
  }

  if (!a3 && a4)
  {
    istrsenvisx_cold_3();
  }

  if (!v14)
  {
    istrsenvisx_cold_2();
  }

  v65 = v13;
  v66 = v14;
  if (a4 == 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = a4;
  }

  v18 = malloc_type_calloc(v17 + 1, 4uLL, 0x100004052888210uLL);
  if (v18)
  {
    v19 = v18;
    v61 = v16;
    v62 = StatusReg;
    memset(&v69, 0, sizeof(v69));
    v22 = malloc_type_calloc((16 * v17) | 1, 4uLL, 0x100004052888210uLL);
    if (v22)
    {
      v59 = a7;
      v23 = *a1;
      if (*a1)
      {
        v60 = 0;
LABEL_15:
        v63 = v22;
        if ((v67 & 0x4000) != 0)
        {
          v26 = 1;
        }

        else if (v59)
        {
          v26 = *v59;
        }

        else
        {
          v26 = 0;
        }

        memset(&v69, 0, sizeof(v69));
        v64 = v19;
        v29 = v19;
        if (v17 >= 1)
        {
          do
          {
            if (v26 || (v17 >= 6 ? (v31 = 6) : (v31 = v17), v30 = mbrtowc(v29, a3, v31, &v69), (v30 & 0x80000000) != 0))
            {
              *v29 = *a3;
              v30 = 1;
              v26 = 1;
            }

            else
            {
              v26 = 0;
            }

            if (v30 <= 1)
            {
              v32 = 1;
            }

            else
            {
              v32 = v30;
            }

            ++v29;
            a3 += v32;
            v33 = v17 <= v32;
            v17 -= v32;
          }

          while (!v33);
        }

        v19 = v64;
        v68 = v66;
        if ((v29 - v64) >> 2 < a4)
        {
          a4 = (v29 - v64) >> 2;
        }

        memset(&v70, 0, sizeof(v70));
        v34 = j__strsignal_r(v66, v20, v21);
        v35 = malloc_type_calloc(v34 + 30, 4uLL, 0x100004052888210uLL);
        if (v35)
        {
          v27 = v35;
          v22 = v63;
          v36 = v67;
          if ((v67 & 0x4000) != 0 || mbsrtowcs(v35, &v68, v34, &v70) == -1)
          {
            if (v34)
            {
              v37 = 0;
              v38 = v68;
              do
              {
                v27[v37] = v38[v37];
                ++v37;
              }

              while (v34 != v37);
            }
          }

          else
          {
            v34 = wcslen(v27);
          }

          v39 = &v27[v34];
          if ((v36 & 0x100) != 0)
          {
            *v39 = xmmword_18E98AB50;
            v39 += 4;
          }

          if ((v36 & 0x2000) != 0)
          {
            v40 = 39;
            v41 = &dword_18E98ABBC;
            do
            {
              *v39++ = v40;
              v42 = *v41++;
              v40 = v42;
            }

            while (v42);
          }

          if ((v36 & 4) != 0)
          {
            *v39++ = 32;
            if ((v36 & 8) == 0)
            {
LABEL_50:
              if ((v36 & 0x10) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_70;
            }
          }

          else if ((v36 & 8) == 0)
          {
            goto LABEL_50;
          }

          *v39++ = 9;
          if ((v36 & 0x10) == 0)
          {
LABEL_51:
            if ((v36 & 0x8000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_71;
          }

LABEL_70:
          *v39++ = 10;
          if ((v36 & 0x8000) == 0)
          {
LABEL_52:
            if ((v36 & 0x40) != 0)
            {
LABEL_54:
              *v39 = 0;
              v43 = do_mvis;
              if ((v36 & 0x200) == 0)
              {
                v43 = do_svis;
              }

              if ((v36 & 0x80) != 0)
              {
                v44 = do_hvis;
              }

              else
              {
                v44 = v43;
              }

              v45 = v22;
              if (a4)
              {
                v46 = v64 + 1;
                v45 = v22;
                do
                {
                  v45 = v44(v45, *(v46 - 1), v36, *v46, v27);
                  if (!v45)
                  {
                    *__error() = 28;
                    v24 = 0xFFFFFFFFLL;
                    v19 = v64;
                    goto LABEL_107;
                  }

                  ++v46;
                  --a4;
                }

                while (a4);
              }

              *v45 = 0;
              v47 = wcslen(v22);
              v48 = v47;
              if (v65)
              {
                v49 = *v65;
              }

              else
              {
                v49 = (6 * v47) | 1;
              }

              memset(&v69, 0, sizeof(v69));
              if (v47)
              {
                v24 = 0;
                while (1)
                {
                  if (v26)
                  {
                    goto LABEL_78;
                  }

                  v54 = *(v62 + 8 * __locale_key);
                  if (!v54)
                  {
                    v54 = &__global_locale;
                  }

                  if (v49 - v24 <= *(v54[166] + 64))
                  {
                    v55 = v61;
                  }

                  else
                  {
                    v55 = v23;
                  }

                  v56 = wcrtomb(v55, *v22, &v69);
                  v50 = v56;
                  if (v56 >= 1 && v55 != v23)
                  {
                    if ((v56 & 0x7FFFFFFF) + v24 >= v49)
                    {
LABEL_101:
                      *__error() = 28;
                      v24 = 0xFFFFFFFFLL;
                      v22 = v63;
                      v19 = v64;
                      goto LABEL_107;
                    }

                    j__mkdtempat_np(v23, v55);
                  }

                  if (v50 < 0)
                  {
LABEL_78:
                    v50 = 0;
                    v51 = 0;
                    for (i = 56; i != -8; i -= 8)
                    {
                      v51 |= 255 << i;
                      v53 = *v22;
                      if (!i || (v51 & v53) != 0)
                      {
                        if (v24 + 1 + v50 >= v49)
                        {
                          goto LABEL_101;
                        }

                        v23[v50++] = ((255 << i) & v53) >> i;
                      }
                    }

                    v26 = 1;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  v24 += v50;
                  if (v24 >= v49)
                  {
                    istrsenvisx_cold_1();
                  }

                  v23 += v50;
                  ++v22;
                  if (!--v48)
                  {
                    v22 = v63;
                    LOWORD(v36) = v67;
                    goto LABEL_103;
                  }
                }
              }

              v24 = 0;
LABEL_103:
              *v23 = 0;
              v28 = v64;
              if ((v36 & 0x4000) != 0 && v59)
              {
                *v59 = v26;
              }

              goto LABEL_109;
            }

LABEL_53:
            *v39++ = 92;
            goto LABEL_54;
          }

LABEL_71:
          *v39++ = 34;
          if ((v36 & 0x40) != 0)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }

        v22 = v63;
        if (v65 && !*v65)
        {
          v27 = 0;
          *__error() = 28;
          v24 = 0xFFFFFFFFLL;
        }

        else
        {
          v27 = 0;
          v24 = 0;
          *v23 = 0;
        }

LABEL_107:
        v28 = v60;
LABEL_108:
        free(v27);
        v27 = v22;
        v22 = v19;
LABEL_109:
        free(v27);
        free(v22);
        free(v28);
        return v24;
      }

      v25 = malloc_type_calloc((16 * v17) | 1, 1uLL, 0x100004077774924uLL);
      if (v25)
      {
        v23 = v25;
        *a1 = v25;
        v60 = v25;
        goto LABEL_15;
      }
    }

    v27 = 0;
    v28 = 0;
    v24 = 0xFFFFFFFFLL;
    goto LABEL_108;
  }

  return 0xFFFFFFFFLL;
}

uint64_t do_svis(uint64_t a1, unsigned __int32 a2, __int16 a3, char a4, __int32 *__s)
{
  v9 = wcschr(__s, a2);
  if (v9)
  {
LABEL_2:
    v10 = 0;
    v11 = a4 & 0xF8;
    v12 = 56;
    v13 = 0x1ED3F0000uLL;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = 0x300000005CLL;
    v16 = 0x610000005CLL;
    v17 = 0x620000005CLL;
    v18 = 0x740000005CLL;
    v19 = 0x6E0000005CLL;
    v20 = 0x760000005CLL;
    v21 = 0x660000005CLL;
    v22 = 0x720000005CLL;
    v23 = 0x730000005CLL;
    while (1)
    {
      v10 |= 255 << v12;
      if (v12 && (v10 & a2) == 0)
      {
        goto LABEL_18;
      }

      v24 = ((255 << v12) & a2) >> v12;
      if ((a3 & 2) == 0)
      {
        goto LABEL_15;
      }

      if (v24 > 35)
      {
        if (((v24 - 77) > 0x29 || ((1 << (v24 - 77)) & 0x2E202320001) == 0) && v24 != 36 && v24 != 48)
        {
          goto LABEL_47;
        }

        goto LABEL_15;
      }

      if (v24 <= 9)
      {
        break;
      }

      if (v24 <= 11)
      {
        if (v24 == 10)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v20;
        }

        a1 += 8;
        goto LABEL_18;
      }

      if (v24 == 12)
      {
        *a1 = v21;
        a1 += 8;
        goto LABEL_18;
      }

      if (v24 == 13)
      {
        *a1 = v22;
        a1 += 8;
        goto LABEL_18;
      }

      if (v24 != 32)
      {
        goto LABEL_47;
      }

      *a1 = v23;
      a1 += 8;
LABEL_18:
      v12 -= 8;
      if (v12 == -8)
      {
        return a1;
      }
    }

    if (v24 > 7)
    {
      if (v24 == 8)
      {
        *a1 = v17;
      }

      else
      {
        *a1 = v18;
      }

      a1 += 8;
      goto LABEL_18;
    }

    if (!v24)
    {
      *a1 = v15;
      if (v11 != 48)
      {
        a1 += 8;
        goto LABEL_18;
      }

      *(a1 + 8) = 0x3000000030;
LABEL_17:
      a1 += 16;
      goto LABEL_18;
    }

    if (v24 == 7)
    {
      *a1 = v16;
      a1 += 8;
      goto LABEL_18;
    }

LABEL_47:
    if ((a3 & 0x4000) != 0)
    {
      if (v24 > 0x7F)
      {
        if (v24 < 0x100)
        {
          v43 = &__c_locale;
          goto LABEL_73;
        }

        v49 = v11;
        v34 = v13;
        v60 = StatusReg;
        v48 = v15;
        v55 = v20;
        v58 = v21;
        v52 = v19;
        v38 = v18;
        v39 = v17;
        v40 = v16;
        v41 = v22;
        v42 = v23;
        v35 = ___runetype_l(v24, 0);
        v23 = v42;
        v22 = v41;
        v16 = v40;
        v17 = v39;
        v18 = v38;
        v19 = v52;
        v20 = v55;
        v21 = v58;
LABEL_67:
        v15 = v48;
        StatusReg = v60;
        v13 = v34;
        v11 = v49;
        if ((v35 & 0x800) != 0)
        {
          goto LABEL_75;
        }

LABEL_15:
        if (!v9 && (a3 & 1) == 0 && (v24 & 0x7F) != 0x20)
        {
          if ((a3 & 0x40) == 0)
          {
            *a1 = 92;
            a1 += 4;
          }

          if ((v24 & 0x80) != 0)
          {
            *a1 = 77;
            a1 += 4;
            LODWORD(v24) = v24 & 0x7F;
          }

          else if (v24 > 0x7F)
          {
            if (v24 >= 0x100)
            {
              v25 = v13;
              v59 = StatusReg;
              v26 = v15;
              v53 = v20;
              v56 = v21;
              v50 = v19;
              v27 = v18;
              v28 = v17;
              v29 = v16;
              v30 = v22;
              v31 = v23;
              v32 = ___runetype(v24);
              v23 = v31;
              v22 = v30;
              v16 = v29;
              v17 = v28;
              v18 = v27;
              v19 = v50;
              v20 = v53;
              v21 = v56;
              v15 = v26;
              StatusReg = v59;
              v13 = v25;
              if ((v32 & 0x200) != 0)
              {
LABEL_28:
                *a1 = 94;
                if (v24 == 127)
                {
                  *(a1 + 4) = 63;
                }

                else
                {
                  *(a1 + 4) = v24 + 64;
                }

                goto LABEL_52;
              }

LABEL_37:
              *a1 = 45;
LABEL_38:
              *(a1 + 4) = v24;
LABEL_52:
              a1 += 8;
              goto LABEL_18;
            }

            v36 = *(StatusReg + 8 * *(v13 + 3208));
            if (!v36)
            {
              v36 = &__global_locale;
            }

            v33 = (*(v36[166] + 120) + 4 * v24);
LABEL_36:
            if ((*(v33 + 15) & 0x200) != 0)
            {
              goto LABEL_28;
            }

            goto LABEL_37;
          }

          v33 = &_DefaultRuneLocale.__magic[4 * v24];
          goto LABEL_36;
        }

        *a1 = 92;
        *(a1 + 4) = *&vand_s8(vshl_u32(vdup_n_s32(v24), 0xFFFFFFFDFFFFFFFALL), 0x700000003) | 0x3000000030;
        *(a1 + 12) = v24 & 7 | 0x30;
        goto LABEL_17;
      }
    }

    else if (v24 > 0x7F)
    {
      if (v24 >= 0x100)
      {
        v49 = v11;
        v34 = v13;
        v60 = StatusReg;
        v48 = v15;
        v54 = v22;
        v57 = v16;
        v51 = v23;
        v35 = ___runetype(v24);
        v23 = v51;
        v22 = v54;
        v16 = v57;
        goto LABEL_67;
      }

      v43 = *(StatusReg + 8 * *(v13 + 3208));
      if (!v43)
      {
        v43 = &__global_locale;
      }

LABEL_73:
      v37 = (*(v43[166] + 120) + 4 * v24);
LABEL_74:
      if ((*(v37 + 15) & 0x800) != 0)
      {
LABEL_75:
        if ((v24 & 0xF8) != 0x30)
        {
          *a1 = 92;
          goto LABEL_38;
        }
      }

      goto LABEL_15;
    }

    v37 = &_DefaultRuneLocale.__magic[4 * ((((255 << v12) & a2) >> v12) & 0x7F)];
    goto LABEL_74;
  }

  if ((a3 & 0x4000) == 0)
  {
    if (a2 > 0x7F)
    {
      if (a2 >= 0x100)
      {
        if ((___runetype(a2) & 0x800) != 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v45 = __locale_key;
      v46 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v45);
      if (!v46)
      {
        v46 = &__global_locale;
      }

      goto LABEL_91;
    }

LABEL_83:
    v44 = &_DefaultRuneLocale;
    goto LABEL_92;
  }

  if (a2 <= 0x7F)
  {
    goto LABEL_83;
  }

  if (a2 < 0x100)
  {
    v46 = &__c_locale;
LABEL_91:
    v44 = *(v46[166] + 120);
LABEL_92:
    if ((v44->__runetype[a2] & 0x800) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  if ((___runetype_l(a2, 0) & 0x800) != 0)
  {
    goto LABEL_95;
  }

LABEL_93:
  if ((a2 > 0x20 || ((1 << a2) & 0x100000600) == 0) && (a2 < 128 || (a3 & 0x4000) != 0 || !iswspace(a2)) && ((a3 & 0x20) == 0 || a2 > 0xD || ((1 << a2) & 0x2180) == 0))
  {
    goto LABEL_2;
  }

LABEL_95:
  *a1 = a2;
  a1 += 4;
  return a1;
}

__int32 *__cdecl wcschr(__int32 *__s, __int32 __c)
{
  v2 = __s - 1;
  do
  {
    v4 = v2[1];
    ++v2;
    v3 = v4;
  }

  while (v4 != __c && v3 != 0);
  if (v3 == __c)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

size_t mbsrtowcs(__int32 *a1, const char **a2, size_t a3, mbstate_t *a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (!v5)
  {
    v5 = &__global_locale;
  }

  if (v5 == -1)
  {
    v6 = &__global_locale;
  }

  else
  {
    v6 = v5;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (v6 + 528);
  }

  return (*(*(v6 + 166) + 88))(a1, a2, -1, a3, v7);
}

uint64_t _none_mbsnrtowcs(uint64_t a1, const char **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      while (1)
      {
        if (a3 == result)
        {
          v5 += result;
          a4 = a3;
          goto LABEL_12;
        }

        v8 = v5[result];
        *(a1 + 4 * result) = v8;
        if (!v8)
        {
          break;
        }

        if (a4 == ++result)
        {
          v5 += result;
          goto LABEL_12;
        }
      }

      *a2 = 0;
    }

    else
    {
LABEL_12:
      *a2 = v5;
      return a4;
    }
  }

  else
  {
    v9 = j__mkdirx_np(*a2, 0);
    if (v9)
    {
      return v9 - v5;
    }

    else
    {
      return a3;
    }
  }

  return result;
}

size_t wcrtomb(char *a1, __int32 a2, mbstate_t *a3)
{
  v3 = __locale_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if (!v4)
  {
    v4 = &__global_locale;
  }

  if (v4 == -1)
  {
    v5 = &__global_locale;
  }

  else
  {
    v5 = v4;
  }

  if (!a3)
  {
    a3 = (v5 + 784);
  }

  return (*(*(v5 + 166) + 96))(a1, *&a2, a3);
}

int mergesort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  if (__width <= 3)
  {
    *__error() = 22;
    return -1;
  }

  if (!__nel)
  {
    return 0;
  }

  v85 = __width * __nel;
  v8 = malloc_type_malloc(__width * __nel + 8, 0x10040436913F5uLL);
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  v10 = __width;
  if (__nel > 5)
  {
    v11 = __nel & 1 | 4;
    v12 = (__nel - v11) * __width;
    insertionsort_0(__base + v12, v11, __width, __compar);
    v94 = &v9[v85];
    *(&v9[v12 + 7] & 0xFFFFFFFFFFFFFFF8) = &v9[v85];
    v13 = __base + v12;
    v14 = (*(__compar + 2))(__compar, __base, __base + __width);
    if (v12 < 1)
    {
      goto LABEL_42;
    }

    v15 = 2 * __width;
    v16 = v14 > 0;
    v17 = v9;
    v18 = __base;
    v98 = 3 * __width;
    v89 = v9;
    v103 = v13;
    v96 = -__width;
    v100 = -2 * __width;
    while (1)
    {
      v19 = &v18[v15];
      if (&v18[v15] < v13)
      {
        v20 = &v18[v98];
        v21 = 2;
        v22 = &v18[v15];
        do
        {
          if ((v16 & 1) == (*(__compar + 2))(__compar, v22, v20) < 1)
          {
            break;
          }

          v21 += 2;
          v22 += v15;
          v20 += v15;
        }

        while (v22 < v103);
        if (v21 > 0xF)
        {
          v28 = __compar;
          v29 = v100;
          if (v19 >= v22)
          {
LABEL_32:
            __compar = v28;
            v9 = v89;
            v13 = v103;
            if (v16)
            {
              v34 = &v19[v96];
              v35 = v18 + 1;
              v36 = v10;
              while (1)
              {
                v37 = *(v35 - 1);
                *(v35 - 1) = *v34;
                *v34++ = v37;
                if (!--v36)
                {
                  v34 += v29;
                  v36 = v10;
                  if (v35 >= v34)
                  {
                    break;
                  }
                }

                ++v35;
              }
            }

            if (v19 < v103 || (v38 = (*(__compar + 2))(__compar, &v19[v96], v19), v23 = v94, v38 >= 1))
            {
              v23 = &v89[v19 - __base];
            }

            *((v17 + 7) & 0xFFFFFFFFFFFFFFF8) = v23;
            v18 = v19;
            goto LABEL_41;
          }

          while (2)
          {
            v30 = &v19[v96];
            if (((v16 ^ ((*(v28 + 2))(v28, &v19[v96], v19) < 1)) & 1) == 0)
            {
              *((v17 + 7) & 0xFFFFFFFFFFFFFFF8) = &v89[v19 - __base];
              if (v16)
              {
                v31 = v18 + 1;
                v32 = v10;
                v29 = v100;
                while (1)
                {
                  v33 = *(v31 - 1);
                  *(v31 - 1) = *v30;
                  *v30++ = v33;
                  if (!--v32)
                  {
                    v30 += v100;
                    v32 = v10;
                    if (v31 >= v30)
                    {
                      break;
                    }
                  }

                  ++v31;
                }

                v18 = v19;
                v17 = &v89[v19 - __base];
LABEL_31:
                v19 += v15;
                if (v19 >= v22)
                {
                  goto LABEL_32;
                }

                continue;
              }

              v18 = v19;
              v17 = &v89[v19 - __base];
            }

            break;
          }

          v29 = v100;
          goto LABEL_31;
        }

        v19 = v22;
        v9 = v89;
        v13 = v103;
      }

      do
      {
        v23 = &v9[&v18[v15] - __base];
        *((v17 + 7) & 0xFFFFFFFFFFFFFFF8) = v23;
        if (v16)
        {
          v24 = 0;
          v25 = v10;
          v26 = &v18[v10];
          do
          {
            v27 = v18[v24];
            v18[v24] = v26[v24];
            v26[v24++] = v27;
            --v25;
          }

          while (v25);
        }

        v18 += v15;
        v17 = v23;
      }

      while (v18 < v19);
LABEL_41:
      v16 ^= 1u;
      v17 = v23;
      if (v18 >= v13)
      {
        goto LABEL_42;
      }
    }
  }

  insertionsort_0(__base, __nel, __width, __compar);
  *((v9 + 7) & 0xFFFFFFFFFFFFFFF8) = &v9[v85];
LABEL_42:
  if (*((v9 + 7) & 0xFFFFFFFFFFFFFFF8) != &v9[v85])
  {
    v101 = 0;
    v39 = v10;
    v99 = (__base | v10) & 3;
    v93 = -v10;
    v40 = __base;
    v41 = &v9[v85];
    v102 = v10;
    while (1)
    {
      v42 = v9;
      v9 = v40;
      if (v42 != v41)
      {
        break;
      }

LABEL_141:
      v40 = v42;
      v41 = &v9[v85];
      if (*((v9 + 7) & 0xFFFFFFFFFFFFFFF8) == &v9[v85])
      {
        goto LABEL_144;
      }
    }

    v43 = v42;
    v44 = v40;
    v45 = v42;
    v90 = v40;
    v86 = v42;
    v87 = v41;
    while (1)
    {
      v43 = *((v43 + 7) & 0xFFFFFFFFFFFFFFF8);
      v46 = v43 - v42;
      v47 = &v9[v43 - v42];
      v92 = v44;
      if (v43 == v41)
      {
        v48 = &v9[v43 - v42];
        if (v44 < v47)
        {
          goto LABEL_132;
        }

        goto LABEL_140;
      }

      v91 = *((v43 + 7) & 0xFFFFFFFFFFFFFFF8);
      v48 = &v9[v91 - v42];
      v49 = v46 < v91 - v42;
      v50 = v44 < v47;
      v51 = &v9[v43 - v42];
      if (v44 < v47 && v46 < v91 - v42)
      {
        break;
      }

LABEL_124:
      if (v49)
      {
        v43 = v91;
        if (v99)
        {
          v42 = v86;
          v41 = v87;
          do
          {
            v81 = *v51++;
            *v45++ = v81;
          }

          while (v51 < v48);
        }

        else
        {
          v42 = v86;
          v41 = v87;
          do
          {
            v84 = *v51;
            v51 += 4;
            *v45 = v84;
            v45 += 4;
          }

          while (v51 < v48);
        }

        v9 = v90;
        goto LABEL_140;
      }

      v9 = v90;
      v43 = v91;
      v42 = v86;
      v41 = v87;
      if (v50)
      {
LABEL_132:
        if (v99)
        {
          do
          {
            v82 = *v44++;
            *v45++ = v82;
          }

          while (v44 < v47);
        }

        else
        {
          do
          {
            v83 = *v44;
            v44 += 4;
            *v45 = v83;
            v45 += 4;
          }

          while (v44 < v47);
        }
      }

LABEL_140:
      *((v92 + 7) & 0xFFFFFFFFFFFFFFF8) = v48;
      v44 = v48;
      if (v43 == v41)
      {
        goto LABEL_141;
      }
    }

    v95 = v48;
    v97 = v47;
    while (1)
    {
      v53 = (*(__compar + 2))(__compar, v44, v51);
      if (v53 >= 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = -1;
      }

      v104 = v54;
      if (v53 >= 1)
      {
        v55 = v48;
      }

      else
      {
        v55 = v47;
      }

      if (v53 >= 1)
      {
        v56 = v51;
      }

      else
      {
        v56 = v44;
      }

      if (v53 >= 1)
      {
        v57 = v44;
      }

      else
      {
        v57 = v51;
      }

      v58 = v57;
      if (!v101)
      {
        v62 = 6;
        while (1)
        {
          v56 += v39;
          if (v56 >= v55)
          {
            v101 = 0;
            goto LABEL_104;
          }

          if ((*(__compar + 2))(__compar) <= v104)
          {
            break;
          }

          --v62;
          v57 = v58;
          if (!v62)
          {
            goto LABEL_66;
          }
        }

        v101 = 0;
LABEL_86:
        v57 = v58;
        goto LABEL_104;
      }

LABEL_66:
      v59 = &v56[v39];
      if (&v56[v39] >= v55)
      {
LABEL_88:
        v66 = &v55[v93];
        if (&v55[v93] <= v56)
        {
          v56 = v55;
        }

        else
        {
          v67 = (*(__compar + 2))(__compar, v58, &v55[v93]);
          v57 = v58;
          if (v67 > v104)
          {
            v68 = v55;
          }

          else
          {
            v68 = &v55[v93];
          }

          if (v67 <= v104)
          {
            v66 = v56;
          }

          v56 = v68;
        }

        if (v56 <= &v66[v39])
        {
          v101 = 1;
          goto LABEL_104;
        }

        do
        {
          if ((*(__compar + 2))(__compar, v58, &v66[(((v56 - v66) / v39) >> 1) * v39]) > v104)
          {
            v66 += (((v56 - v66) / v39) >> 1) * v39;
          }

          else
          {
            v56 = &v66[(((v56 - v66) / v39) >> 1) * v39];
          }
        }

        while (v56 > &v66[v39]);
        v57 = v58;
        v101 = 1;
      }

      else
      {
        v60 = (*(__compar + 2))(__compar);
        v61 = v39;
        while (v60 > v104)
        {
          v56 = v59;
          v59 += 2 * v61;
          if (v59 >= v55)
          {
            v48 = v95;
            v57 = v58;
            goto LABEL_88;
          }

          v61 *= 2;
          v60 = (*(__compar + 2))(__compar, v58, v59);
        }

        if (v61 <= v39)
        {
          v101 = v61 != v39;
          v56 = v59;
          v48 = v95;
          goto LABEL_86;
        }

        v63 = __compar;
        v64 = v56;
        v56 = v59;
        do
        {
          v65 = v61 >> 1;
          if ((v63)[2](v63, v58, &v64[v61 >> 1]) > v104)
          {
            v64 += v61 >> 1;
          }

          else
          {
            v56 = &v64[v61 >> 1];
          }

          v61 >>= 1;
        }

        while (v65 > v102);
        v57 = v58;
        v101 = 1;
        __compar = v63;
        v39 = v102;
      }

      v48 = v95;
LABEL_104:
      v47 = v97;
      if (v57 == v44)
      {
        if (v99)
        {
          do
          {
            v75 = *v51++;
            *v45++ = v75;
          }

          while (v51 < v56);
          v76 = v39;
          do
          {
            v77 = *v44++;
            *v45++ = v77;
            --v76;
          }

          while (v76);
        }

        else
        {
          do
          {
            v78 = *v51;
            v51 += 4;
            *v45 = v78;
            v45 += 4;
          }

          while (v51 < v56);
          v79 = v39;
          do
          {
            v80 = *v44;
            v44 += 4;
            *v45 = v80;
            v45 += 4;
            v79 -= 4;
          }

          while (v79);
        }
      }

      else if (v99)
      {
        do
        {
          v69 = *v44++;
          *v45++ = v69;
        }

        while (v44 < v56);
        v70 = v39;
        do
        {
          v71 = *v51++;
          *v45++ = v71;
          --v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v72 = *v44;
          v44 += 4;
          *v45 = v72;
          v45 += 4;
        }

        while (v44 < v56);
        v73 = v39;
        do
        {
          v74 = *v51;
          v51 += 4;
          *v45 = v74;
          v45 += 4;
          v73 -= 4;
        }

        while (v73);
      }

      v49 = v51 < v48;
      v50 = v44 < v97;
      if (v44 >= v97 || v51 >= v48)
      {
        goto LABEL_124;
      }
    }
  }

  v42 = __base;
LABEL_144:
  if (v9 == __base)
  {
    j__mkostemp(v9, v42);
  }

  else
  {
    v42 = v9;
  }

  free(v42);
  return 0;
}

int __swbuf(int a1, FILE *a2)
{
  v3 = a1;
  a2->_w = a2->_lbfsize;
  if (((a2->_flags & 8) == 0 || (a2->_flags & 0x200) == 0 && !a2->_bf._base) && __swsetup(a2))
  {
    *__error() = 9;
    return -1;
  }

  extra = a2->_extra;
  if ((*(extra + 72) & 7) == 0)
  {
    *(extra + 72) |= 7u;
  }

  p = a2->_p;
  v6 = &a2->_p[-LODWORD(a2->_bf._base)];
  if (a2->_bf._size <= v6)
  {
    if (__fflush(a2))
    {
      return -1;
    }

    v6 = 0;
    p = a2->_p;
  }

  v7 = v3;
  --a2->_w;
  a2->_p = p + 1;
  *p = v3;
  if (v6 + 1 == a2->_bf._size || v3 == 10 && (a2->_flags) && __fflush(a2))
  {
    return -1;
  }

  return v7;
}

int vsprintf(char *a1, const char *a2, va_list a3)
{
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vsprintf_l(a1, v7, a2, a3);
}

int strnvis(char *a1, size_t a2, const char *a3, int a4)
{
  v5 = a2;
  v6 = a1;
  return istrsenvisxl(&v6, &v5, a3, a4, "");
}

uint64_t istrsenvisxl(char **a1, char *a2, const char *__sig, unsigned int a4, uint64_t a5)
{
  if (__sig)
  {
    v10 = j__strsignal_r(__sig, a2, __sig);
  }

  else
  {
    v10 = 0;
  }

  return istrsenvisx(a1, a2, __sig, v10, a4, a5, 0);
}

uint64_t _UTF8_mbrtowc(_DWORD *a1, const char *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  if (v4 >= 5)
  {
    v5 = __error();
    v6 = 22;
LABEL_3:
    *v5 = v6;
    return -1;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = "";
  }

  if (!a2)
  {
    a3 = 1;
  }

  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  if (!a3)
  {
    return -2;
  }

  if (!v4)
  {
    v20 = *v8;
    if ((*v8 & 0x80000000) == 0)
    {
      if (v10)
      {
        *v10 = v20;
      }

      return v20 != 0;
    }

    if ((v20 & 0xE0) == 0xC0)
    {
      if (v20 < 0xC2)
      {
LABEL_44:
        v5 = __error();
        v6 = 92;
        goto LABEL_3;
      }

      v12 = 191;
      v11 = 128;
      v13 = 2;
      v22 = 31;
    }

    else if ((v20 & 0xF0) == 0xE0)
    {
      if (v20 == 224)
      {
        v12 = 191;
        v11 = 160;
      }

      else
      {
        if (v20 == 237)
        {
          v12 = 159;
        }

        else
        {
          v12 = 191;
        }

        v11 = 128;
      }

      v13 = 3;
      v22 = 15;
    }

    else
    {
      if (v20 > 0xF4 || (v20 & 0xF8) != 0xF0)
      {
        goto LABEL_44;
      }

      if (v20 == 240)
      {
        v12 = 191;
        v11 = 144;
      }

      else
      {
        if (v20 == 244)
        {
          v12 = 143;
        }

        else
        {
          v12 = 191;
        }

        v11 = 128;
      }

      v13 = 4;
      v22 = 7;
    }

    ++v8;
    v14 = v22 & v20;
    goto LABEL_16;
  }

  v11 = *(a4 + 8);
  v12 = *(a4 + 9);
  v13 = *(a4 + 4);
  v14 = *a4;
LABEL_16:
  v15 = v4 == 0;
  v16 = v13;
  if (a3 < v13)
  {
    v16 = a3;
  }

  v17 = v16 - v15;
  if (v16 > v15)
  {
    do
    {
      v18 = *v8;
      if (v11)
      {
        if (v18 < v11 || v18 > v12)
        {
          goto LABEL_44;
        }

        v12 = 0;
      }

      else if ((v18 & 0xC0) != 0x80)
      {
        goto LABEL_44;
      }

      v11 = 0;
      ++v8;
      v14 = v18 & 0x3F | (v14 << 6);
      --v17;
    }

    while (v17);
    LOBYTE(v11) = 0;
    LODWORD(v15) = v16;
  }

  if (v13 <= v15)
  {
    if (v10)
    {
      *v10 = v14;
    }

    *(a4 + 4) = 0;
    if (v14)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a4 + 8) = v11;
    *(a4 + 9) = v12;
    result = -2;
    *a4 = v14;
    *(a4 + 4) = v13 - v15;
  }

  return result;
}

uint64_t grouping_print(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 24);
  if (a4 - a3 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = (a4 - a3);
  }

  if (v9 < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v10 = *(a2 + 20);
    v11 = *(a2 + 16);
    v12 = a2 + 16 * v11;
    *(v12 + 24) = a3;
    *(v12 + 32) = v9;
    v13 = v10 + v9;
    *(a2 + 16) = v11 + 1;
    *(a2 + 20) = v13;
    if (v11 >= 7)
    {
      if (v13)
      {
        v14 = __sfvwrite(*a2, a2 + 8);
        *(a2 + 16) = 0;
        if (v14)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        *(a2 + 16) = 0;
      }
    }
  }

  v16 = v8 - v9;
  if (v16 >= 1)
  {
    v18 = *(a2 + 16);
    v17 = *(a2 + 20);
    do
    {
      v19 = v18;
      if (v16 >= 0x10)
      {
        v20 = 16;
      }

      else
      {
        v20 = v16;
      }

      v21 = (a2 + 24 + 16 * v18);
      *v21 = &zeroes;
      v21[1] = v20;
      v17 += v20;
      v18 = v19 + 1;
      *(a2 + 16) = v19 + 1;
      *(a2 + 20) = v17;
      if (v19 >= 7)
      {
        if (v17)
        {
          v22 = __sfvwrite(*a2, a2 + 8);
          v17 = 0;
          v18 = 0;
          *(a2 + 16) = 0;
          if (v22)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          v18 = 0;
          *(a2 + 16) = 0;
        }
      }

      v23 = __OFSUB__(v16, v20);
      v16 -= v20;
    }

    while (!((v16 < 0) ^ v23 | (v16 == 0)));
  }

  v24 = a3 + *(a1 + 24);
  v25 = a2 + 24;
  while (1)
  {
    v26 = *(a1 + 28);
    v27 = *(a1 + 32);
    if (v26 <= 0)
    {
      break;
    }

    if (v27 < 1)
    {
      --*(a1 + 16);
      *(a1 + 28) = v26 - 1;
      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 32) = v27 - 1;
LABEL_29:
    v28 = *(a1 + 8);
    v29 = *(a2 + 20);
    v30 = *(a2 + 16);
    v31 = (v25 + 16 * v30);
    *v31 = *a1;
    v31[1] = v28;
    v32 = v29 + v28;
    v33 = v30 + 1;
    *(a2 + 16) = v30 + 1;
    *(a2 + 20) = v32;
    if (v30 >= 7)
    {
      if (v32)
      {
        v34 = __sfvwrite(*a2, a2 + 8);
        v32 = 0;
        v33 = 0;
        *(a2 + 16) = 0;
        if (v34)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v33 = 0;
        *(a2 + 16) = 0;
      }
    }

    v35 = **(a1 + 16);
    if (a4 - v24 >= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = (a4 - v24);
    }

    if (v36 < 1)
    {
      LODWORD(v36) = 0;
    }

    else
    {
      v37 = (v25 + 16 * v33);
      *v37 = v24;
      v37[1] = v36;
      v32 += v36;
      *(a2 + 16) = v33 + 1;
      *(a2 + 20) = v32;
      if (v33 < 7)
      {
        ++v33;
      }

      else if (v32)
      {
        v38 = __sfvwrite(*a2, a2 + 8);
        *(a2 + 16) = 0;
        if (v38)
        {
          return 0xFFFFFFFFLL;
        }

        v32 = 0;
        v33 = 0;
      }

      else
      {
        v33 = 0;
        *(a2 + 16) = 0;
      }
    }

    v39 = v35 - v36;
    if (v39 >= 1)
    {
      do
      {
        v40 = v33;
        if (v39 >= 0x10)
        {
          v41 = 16;
        }

        else
        {
          v41 = v39;
        }

        v42 = (v25 + 16 * v33);
        *v42 = &zeroes;
        v42[1] = v41;
        v32 += v41;
        v33 = v40 + 1;
        *(a2 + 16) = v40 + 1;
        *(a2 + 20) = v32;
        if (v40 >= 7)
        {
          if (v32)
          {
            v43 = __sfvwrite(*a2, a2 + 8);
            v32 = 0;
            v33 = 0;
            *(a2 + 16) = 0;
            if (v43)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            v33 = 0;
            *(a2 + 16) = 0;
          }
        }

        v23 = __OFSUB__(v39, v41);
        v39 -= v41;
      }

      while (!((v39 < 0) ^ v23 | (v39 == 0)));
    }

    v24 += **(a1 + 16);
  }

  if (v27 > 0)
  {
    goto LABEL_28;
  }

  if (v24 <= a4)
  {
    v44 = v24;
  }

  else
  {
    v44 = a4;
  }

  return (v44 - a3);
}

unint64_t grouping_print_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, locale_t a5)
{
  v10 = *(a1 + 16);
  v11 = (a4 - a3) >> 2;
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 < 1)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v13 = *(a2 + 16);
    v14.i32[0] = 1;
    v14.i32[1] = v12;
    v15 = a2 + 16 * v13.i32[0];
    *(v15 + 24) = a3;
    *(v15 + 32) = v12;
    *(a2 + 16) = vadd_s32(v13, v14);
    if (v13.i32[0] >= 7 && __sprint(*a2, a5, a2 + 8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v17 = v10 - v12;
  if (v17 < 1)
  {
LABEL_17:
    v23 = a3 + 4 * *(a1 + 16);
    v24 = a2 + 24;
    while (1)
    {
      v25 = *(a1 + 20);
      v26 = *(a1 + 24);
      if (v25 <= 0)
      {
        break;
      }

      if (v26 >= 1)
      {
        goto LABEL_22;
      }

      --*(a1 + 8);
      *(a1 + 20) = v25 - 1;
LABEL_23:
      v27 = *(a2 + 16);
      v28 = (v24 + 16 * v27.i32[0]);
      *v28 = a1;
      v28[1] = 1;
      *(a2 + 16) = vadd_s32(v27, 0x100000001);
      if (v27.i32[0] >= 7 && __sprint(*a2, a5, a2 + 8))
      {
        return 0xFFFFFFFFLL;
      }

      v29 = **(a1 + 8);
      v30 = (a4 - v23) >> 2;
      if (v30 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v30;
      }

      if (v31 < 1)
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v32 = *(a2 + 16);
        v33.i32[0] = 1;
        v33.i32[1] = v31;
        v34 = (v24 + 16 * v32.i32[0]);
        *v34 = v23;
        v34[1] = v31;
        *(a2 + 16) = vadd_s32(v32, v33);
        if (v32.i32[0] >= 7 && __sprint(*a2, a5, a2 + 8))
        {
          return 0xFFFFFFFFLL;
        }
      }

      v35 = v29 - v31;
      if (v35 >= 1)
      {
        do
        {
          v36 = v35 >= 0x10 ? 16 : v35;
          v37 = *(a2 + 16);
          v38.i32[0] = 1;
          v38.i32[1] = v36;
          v39 = (v24 + 16 * v37.i32[0]);
          *v39 = &zeroes_0;
          v39[1] = v36;
          *(a2 + 16) = vadd_s32(v37, v38);
          if (v37.i32[0] >= 7)
          {
            if (__sprint(*a2, a5, a2 + 8))
            {
              return 0xFFFFFFFFLL;
            }
          }

          v22 = __OFSUB__(v35, v36);
          v35 -= v36;
        }

        while (!((v35 < 0) ^ v22 | (v35 == 0)));
      }

      v23 += 4 * **(a1 + 8);
    }

    if (v26 <= 0)
    {
      if (v23 <= a4)
      {
        v40 = v23;
      }

      else
      {
        v40 = a4;
      }

      return (v40 - a3) >> 2;
    }

LABEL_22:
    *(a1 + 24) = v26 - 1;
    goto LABEL_23;
  }

  while (1)
  {
    v18 = v17 >= 0x10 ? 16 : v17;
    v19 = *(a2 + 16);
    v20.i32[0] = 1;
    v20.i32[1] = v18;
    v21 = (a2 + 24 + 16 * v19.i32[0]);
    *v21 = &zeroes_0;
    v21[1] = v18;
    *(a2 + 16) = vadd_s32(v19, v20);
    if (v19.i32[0] >= 7)
    {
      if (__sprint(*a2, a5, a2 + 8))
      {
        return 0xFFFFFFFFLL;
      }
    }

    v22 = __OFSUB__(v17, v18);
    v17 -= v18;
    if ((v17 < 0) ^ v22 | (v17 == 0))
    {
      goto LABEL_17;
    }
  }
}

int dirfd(DIR *dirp)
{
  if (!dirp || (result = dirp->__dd_fd, result < 0))
  {
    *__error() = 22;
    return -1;
  }

  return result;
}

uint64_t insertionsort(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v7 = result;
    v8 = -a3;
    v9 = result;
    do
    {
      v10 = v9;
      v9 += a3;
      if (v9 > v7)
      {
        v11 = v9;
        do
        {
          v12 = v11 + v8;
          result = a4(v11 + v8, v11);
          if (result < 1)
          {
            break;
          }

          v13 = 0;
          do
          {
            v14 = *(v10 + v13);
            *(v10 + v13) = *(v11 + v13);
            *(v11 + v13++) = v14;
          }

          while (a3 != v13);
          v10 += v8;
          v11 += v8;
        }

        while (v12 > v7);
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t insertionsort_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v7 = result;
    v8 = -a3;
    v9 = result;
    do
    {
      v10 = v9;
      v9 += a3;
      if (v9 > v7)
      {
        v11 = v9;
        do
        {
          v12 = v11 + v8;
          result = (*(a4 + 16))(a4, v11 + v8, v11);
          if (result < 1)
          {
            break;
          }

          v13 = 0;
          do
          {
            v14 = *(v10 + v13);
            *(v10 + v13) = *(v11 + v13);
            *(v11 + v13++) = v14;
          }

          while (a3 != v13);
          v10 += v8;
          v11 += v8;
        }

        while (v12 > v7);
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

size_t mbsrtowcs_l(__int32 *a1, const char **a2, size_t a3, mbstate_t *a4, locale_t a5)
{
  v5 = &__global_locale;
  if (a5 != -1)
  {
    v5 = a5;
  }

  if (a5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__c_locale;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (v6 + 528);
  }

  return (*(*(v6 + 166) + 88))(a1, a2, -1, a3, v7);
}

__int32 *__collate_mbstowcs(char *a1, locale_t a2)
{
  v8 = a1;
  v9 = a1;
  memset(&v10, 0, sizeof(v10));
  v3 = mbsrtowcs_l(0, &v8, 0, &v10, a2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(4 * v3 + 4, 0x100004052888210uLL);
  if (!v5)
  {
    __collate_err(71, "__collate_mbstowcs");
  }

  v6 = v5;
  memset(&v10, 0, sizeof(v10));
  mbsrtowcs_l(v5, &v9, v4, &v10, a2);
  v6[v4] = 0;
  return v6;
}

uint64_t _UTF8_mbsnrtowcs(int *a1, const char **a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v17 = 0;
  v7 = *a2;
  if (a1)
  {
    v8 = a4;
    v10 = a1;
    if (!a3 || !a4)
    {
      if (!a4)
      {
LABEL_20:
        *a2 = v7;
        return v8;
      }

      goto LABEL_12;
    }

    if (*(a5 + 4) < 1 || *v7 < 1)
    {
LABEL_12:
      v11 = 0;
      v12 = -a4;
      while (1)
      {
        if (v6 && (v13 = *v7, v13 >= 1))
        {
          *v10 = v13;
          v14 = 1;
        }

        else
        {
          v14 = _UTF8_mbrtowc(v10, v7, v6, a5);
          switch(v14)
          {
            case -2:
              *a2 = &v7[v6];
              return -v11;
            case 0:
              *a2 = 0;
              return -v11;
            case -1:
              *a2 = v7;
              return -1;
          }
        }

        v7 += v14;
        v6 -= v14;
        ++v10;
        if (v12 == --v11)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_10:
    *__error() = 92;
    return -1;
  }

  if (a3 && *(a5 + 4) >= 1 && *v7 >= 1)
  {
    goto LABEL_10;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (*v7 > 0)
  {
    v15 = 1;
    goto LABEL_27;
  }

LABEL_24:
  while (1)
  {
    v15 = _UTF8_mbrtowc(&v17, v7, v6, a5);
    switch(v15)
    {
      case -2:
        return v8;
      case -1:
        return -1;
      case 0:
        return v8;
    }

LABEL_27:
    v7 += v15;
    v6 -= v15;
    ++v8;
    if (v6)
    {
      goto LABEL_22;
    }
  }
}

uint64_t _UTF8_wcrtomb(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    v3 = __error();
    v4 = 22;
LABEL_3:
    *v3 = v4;
    return -1;
  }

  if (!a1)
  {
    return 1;
  }

  if (a2 <= 0x7F)
  {
    *a1 = a2;
    return 1;
  }

  if (a2 < 0x800)
  {
    v6 = -64;
    v5 = 2;
    goto LABEL_10;
  }

  if (!HIWORD(a2))
  {
    if ((a2 & 0xF800) != 0xD800)
    {
      v6 = -32;
      v5 = 3;
      goto LABEL_10;
    }

LABEL_18:
    v3 = __error();
    v4 = 92;
    goto LABEL_3;
  }

  if (a2 >= 0x110000)
  {
    goto LABEL_18;
  }

  v6 = -16;
  v5 = 4;
LABEL_10:
  v7 = v5 - 1;
  do
  {
    a1[v7] = a2 & 0x3F | 0x80;
    a2 = a2 >> 6;
    v8 = v7-- + 1;
  }

  while (v8 > 2);
  *a1 = a2 | v6;
  return v5;
}

uint64_t both_ftw(char *a1, uint64_t (*a2)(char *, stat *, uint64_t), uint64_t (*a3)(char *, stat *, uint64_t, uint64_t *), int a4, char a5)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  if ((a4 - 10241) <= 0xFFFFD7FF)
  {
    *__error() = 22;
    v5 = -1;
    goto LABEL_3;
  }

  if ((a5 & 8) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 5;
  }

  v14 = a5 & 2;
  v15 = v13 & 0xFFFFFFBF | (((v14 >> 1) & 1) << 6);
  if (a5)
  {
    v16 = 16;
  }

  else
  {
    v16 = 2;
  }

  v17 = v15 | v16;
  if ((a5 & 8) != 0)
  {
    v5 = open_NOCANCEL();
    if (v5 < 0)
    {
      goto LABEL_3;
    }

    v17 |= 4u;
  }

  else
  {
    v5 = -1;
  }

  memset(&v34, 0, sizeof(v34));
  if ((stat(a1, &v34) & 0x80000000) == 0)
  {
    if (!a3 || (v34.st_mode & 0xF000) == 0x4000)
    {
      goto LABEL_19;
    }

    *__error() = 20;
LABEL_3:
    v6 = *__error();
    v7 = 0xFFFFFFFFLL;
    if (v5 < 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    close_NOCANCEL();
    goto LABEL_5;
  }

  if (*__error() == 62 || *__error() == 63 || *__error() == 2 || *__error() == 20 || *__error() == 13)
  {
    goto LABEL_3;
  }

LABEL_19:
  v36 = a1;
  v37 = 0;
  v18 = fts_open(&v36, v17, 0);
  if (!v18)
  {
    goto LABEL_3;
  }

  v19 = v18;
  v20 = fts_read(v18);
  if (!v20)
  {
LABEL_75:
    v7 = 0;
    goto LABEL_76;
  }

  v21 = v20;
  if (a3)
  {
    v22 = 6;
  }

  else
  {
    v22 = 5;
  }

  v32 = v22;
  while (1)
  {
    fts_info = v21->fts_info;
    v7 = 0xFFFFFFFFLL;
    if (fts_info > 7)
    {
      break;
    }

    if (v21->fts_info > 2u)
    {
      if (fts_info != 3)
      {
        if (fts_info == 4)
        {
          v24 = 2;
          if (v5 < 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (fts_info != 6)
          {
            goto LABEL_76;
          }

          if ((a5 & 4) == 0 || v14 && v21->fts_statp->st_dev != v34.st_dev)
          {
            goto LABEL_74;
          }

          v24 = 3;
          if (v5 < 0)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_64;
      }

      goto LABEL_51;
    }

    if (fts_info == 1)
    {
      if ((a5 & 4) != 0 || v14 && v21->fts_statp->st_dev != v34.st_dev || access(v21->fts_path, 4))
      {
        goto LABEL_74;
      }

LABEL_61:
      v24 = 1;
      if (v5 < 0)
      {
LABEL_68:
        if (a3)
        {
          fts_level = v21->fts_level;
          LODWORD(v35) = v21->fts_pathlen - v21->fts_namelen;
          HIDWORD(v35) = fts_level;
          v29 = a3(v21->fts_path, v21->fts_statp, v24, &v35);
        }

        else
        {
          v29 = a2(v21->fts_path, v21->fts_statp, v24);
        }

        v7 = v29;
        if ((v5 & 0x80000000) == 0 && fchdir(v5) < 0)
        {
          v7 = 0xFFFFFFFFLL;
          goto LABEL_76;
        }

        if (v7)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

      goto LABEL_64;
    }

    if (fts_info != 2)
    {
      goto LABEL_76;
    }

    if ((a3 == 0) | a5 & 1)
    {
      v30 = __error();
      v31 = 62;
      goto LABEL_90;
    }

    if ((a5 & 4) == 0)
    {
      goto LABEL_61;
    }

LABEL_74:
    v21 = fts_read(v19);
    if (!v21)
    {
      goto LABEL_75;
    }
  }

  if (v21->fts_info <= 0xBu)
  {
    if (fts_info - 10 < 2)
    {
      v24 = 4;
      if (v5 < 0)
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    }

    if (fts_info != 8)
    {
      goto LABEL_76;
    }

LABEL_51:
    if (v14 && v21->fts_statp->st_dev != v34.st_dev)
    {
      goto LABEL_74;
    }

    v24 = 0;
    if (v5 < 0)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (fts_info == 12)
  {
    v24 = 5;
    if (v5 < 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if (fts_info != 13)
    {
      goto LABEL_76;
    }

    memset(&v33, 0, sizeof(v33));
    if (stat(v21->fts_path, &v33) < 0 && *__error() == 62)
    {
      goto LABEL_76;
    }

    v24 = v32;
    if (v5 < 0)
    {
      goto LABEL_68;
    }
  }

LABEL_64:
  fts_path = v21->fts_path;
  if (v24 == 1)
  {
    v26 = chdir(fts_path);
  }

  else
  {
    v27 = strdup(fts_path);
    v27[v21->fts_pathlen - v21->fts_namelen] = 0;
    v26 = chdir(v27);
    free(v27);
  }

  if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  v7 = 0xFFFFFFFFLL;
  if (v24 == 2 && v21->fts_pathlen == v21->fts_namelen)
  {
    v30 = __error();
    v31 = 24;
LABEL_90:
    *v30 = v31;
  }

LABEL_76:
  v6 = *__error();
  fts_close(v19);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  *__error() = v6;
  return v7;
}

char *generalSlowpath(uint64_t a1, int a2, int *a3, int a4)
{
  v7 = *(a1 + 72);
  v8 = *(a1 + 24);
  if (v7 > v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = *(a1 + 72);
  }

  v10 = *(a1 + 92) - v9 + v7;
  v11 = (1701 * v9) >> 9;
  if (v10 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = -v10;
  }

  v13 = (1189 * v12 + 1189) >> 9;
  v14 = v13 + 31;
  if (v13 < -31)
  {
    v14 = v13 + 62;
  }

  v15 = v14 >> 5;
  if ((v10 & 0x80000000) == 0)
  {
    v17 = v11 + 31;
    v16 = v11 < -31;
    v18 = v11 + 62;
    if (!v16)
    {
      v18 = v17;
    }

    v19 = v15 + (v18 >> 5);
    if (v19 > a4)
    {
      generalSlowpath_cold_13();
    }

    MEMORY[0x193AD5FD0](a3, 4 * a4);
    v115 = a3;
    v116 = a3;
    initMPFromDigits(&v115, a1);
    multiplyByFiveToTheN(&v115, v10);
    v21 = v115;
    v20 = v116;
    if (v19 < v116 - v115)
    {
      generalSlowpath_cold_12();
    }

    v22 = bitCountMP(v115, v116);
    v23 = v22 + v10;
    v24 = shiftRightMPWithRounding(v21, v20, v22 - *a1, 0, *(a1 + 96), a2);
    v26 = v25;
    if (bitCountMP(v24, v25) <= *a1)
    {
LABEL_88:
      if (v23 > *(a1 + 8))
      {
        return overflow(a1);
      }

      goto LABEL_92;
    }

    v27 = (v24 + 1);
    v28 = *v24 >> 1;
    if ((v24 + 1) < v26)
    {
      do
      {
        v29 = *v27;
        *(v27 - 1) = v28 | (v29 << 31);
        v28 = v29 >> 1;
        ++v27;
      }

      while (v27 < v26);
LABEL_80:
      v92 = (v27 - 1);
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v30 = v13 + *a1 + 2;
  if (v11 <= v30)
  {
    v11 = v30;
  }

  v31 = v11 + 31;
  v16 = v11 < -31;
  v32 = v11 + 62;
  if (!v16)
  {
    v32 = v31;
  }

  v33 = (v32 >> 5) + 2;
  if (v33 + v15 > a4)
  {
    generalSlowpath_cold_11();
  }

  MEMORY[0x193AD5FD0](a3, 4 * a4);
  v111 = a3;
  v112 = a3;
  v34 = v33;
  v35 = &a3[v33];
  v109 = v35;
  if (-v10 >= 27)
  {
    v36 = 27;
  }

  else
  {
    v36 = -v10;
  }

  v37 = powersOfFive[v36];
  do
  {
    *v35++ = v37;
    v37 >>= 32;
  }

  while (v37);
  v110 = v35;
  multiplyByFiveToTheN(&v109, -v10 - v36);
  v38 = v109;
  v39 = v110;
  v40 = v110 - v109;
  if (v15 < (v110 - v109) >> 2)
  {
    generalSlowpath_cold_10();
  }

  if (!*(v110 - 1))
  {
    generalSlowpath_cold_9();
  }

  initMPFromDigits(&v111, a1);
  v41 = v112;
  if (!*(v112 - 1))
  {
    generalSlowpath_cold_8();
  }

  v42 = bitCountMP(v38, v39);
  v43 = v111;
  v44 = v42 - bitCountMP(v111, v41) + *a1;
  if (v44 < -1)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44 + 2;
    shiftLeftMP(&v111, v44 + 2);
    v41 = v112;
    if (!*(v112 - 1))
    {
      generalSlowpath_cold_7();
    }

    v43 = v111;
    if (v34 <= (v112 - v111) >> 2)
    {
      generalSlowpath_cold_1();
    }
  }

  v115 = v43;
  v116 = v41;
  v113 = v38;
  v114 = v39;
  if (v43 >= v41)
  {
    generalSlowpath_cold_2();
  }

  if (v39 <= v38)
  {
    generalSlowpath_cold_3();
  }

  if (!*(v41 - 1))
  {
    generalSlowpath_cold_6();
  }

  v46 = *(v39 - 4);
  if (!v46)
  {
    generalSlowpath_cold_5();
  }

  if (v40 == 4)
  {
    v47 = 0;
    v48 = *v38;
    v49 = v41;
    do
    {
      v50 = *--v49;
      v51 = v50 | (v47 << 32);
      *v49 = v51 / v48;
      v47 = v51 - (v51 / v48) * v48;
    }

    while (v49 > v43);
    v52 = (v41 + 1);
    do
    {
      v53 = *(v52 - 8);
      v52 -= 4;
    }

    while (!v53);
    v54 = v47 != 0;
  }

  else
  {
    v55 = __clz(v46);
    shiftLeftMP(&v113, v55);
    shiftLeftMP(&v115, v55);
    v56 = v116;
    v57 = v114;
    if (*(v116 - 1) >= *(v114 - 4))
    {
      *v116 = 0;
      ++v56;
    }

    v58 = v113;
    v59 = v115;
    if (v56 >= v113 && v57 >= v115)
    {
      generalSlowpath_cold_4();
    }

    v43 = v56 + 1;
    v60 = ((v56 - v115) >> 2) - ((v57 - v113) >> 2);
    if (v60 < 1)
    {
      v62 = v56;
    }

    else
    {
      v61 = 0;
      v62 = v56;
      do
      {
        v63 = v62;
        v64 = *--v62;
        v65 = *(v62 - 1) | (v64 << 32);
        v66 = *(v57 - 4);
        if (v64 == v66)
        {
          LODWORD(v67) = -1;
        }

        else
        {
          v67 = v65 / v66;
        }

        do
        {
          v68 = v67;
          v69 = v67;
          v67 = v65 - v66 * v67;
          if (HIDWORD(v67))
          {
            break;
          }

          v70 = *(v63 - 3) | (v67 << 32);
          LODWORD(v67) = v68 - 1;
        }

        while (*(v57 - 8) * v69 > v70);
        if (v58 < v57)
        {
          v71 = 0;
          v72 = ~((v57 - v58) >> 2);
          v73 = v58;
          do
          {
            v74 = *v73++;
            v75 = v71 + v74 * v69;
            v76 = v63[v72];
            v77 = v76 >= v75;
            v63[v72] = v76 - v75;
            v71 = HIDWORD(v75);
            if (!v77)
            {
              ++v71;
            }

            ++v72;
          }

          while (v73 < v57);
          if (v71 > *v62)
          {
            v78 = 0;
            v79 = ~((v57 - v58) >> 2);
            v80 = v58;
            do
            {
              v81 = *v80++;
              v82 = v78 + v81 + v63[v79];
              v63[v79] = v82;
              v78 = HIDWORD(v82);
              ++v79;
            }

            while (v80 < v57);
            --v68;
          }
        }

        *--v43 = v68;
        ++v61;
      }

      while (v61 != v60);
    }

    if (v59 >= v62)
    {
      v54 = 0;
    }

    else
    {
      v83 = 0;
      do
      {
        v84 = *v59++;
        v83 |= v84;
      }

      while (v59 < v62);
      v54 = v83 != 0;
    }

    v52 = (v56 + 2);
    do
    {
      v85 = *(v52 - 8);
      v52 -= 4;
    }

    while (!v85);
  }

  v86 = bitCountMP(v43, v52);
  v87 = v10 - v45;
  v23 = v10 - v45 + v86;
  v88 = *a1;
  v89 = *(a1 + 4);
  if (v23 > v89)
  {
    v24 = shiftRightMPWithRounding(v43, v52, v86 - v88, v54, *(a1 + 96), a2);
    v26 = v90;
    if (bitCountMP(v24, v90) <= *a1)
    {
      goto LABEL_88;
    }

    v27 = (v24 + 1);
    v28 = *v24 >> 1;
    if ((v24 + 1) < v26)
    {
      do
      {
        v91 = *v27;
        *(v27 - 1) = v28 | (v91 << 31);
        v28 = v91 >> 1;
        ++v27;
      }

      while (v27 < v26);
      goto LABEL_80;
    }

LABEL_81:
    v92 = v24;
LABEL_82:
    ++v23;
    if (v28)
    {
      *v92 = v28;
    }

    else
    {
      v26 -= 4;
    }

    goto LABEL_88;
  }

  v93 = v89 - v88;
  if (v23 <= v93)
  {
    return underflow(a1);
  }

  v24 = shiftRightMPWithRounding(v43, v52, v93 - v87 + 1, v54, *(a1 + 96), a2);
  v26 = v94;
  if (bitCountMP(v24, v94) >= *a1)
  {
    v23 = v89 + 1;
  }

  else
  {
    *__error() = 34;
    v23 = v89;
  }

LABEL_92:
  v96 = v26 - v24;
  v97 = *a1 + 31;
  if (*a1 < -31)
  {
    v97 = *a1 + 62;
  }

  v98 = v97 >> 5;
  if (v98 > v96 >> 2)
  {
    MEMORY[0x193AD5FD0](v26, 4 * (v98 - (v96 >> 2)));
  }

  result = j__mkdtempat_np(*(a1 + 32), v24);
  v99 = v23 - *(a1 + 4);
  v100 = *(a1 + 12);
  if (v100 <= 8)
  {
    v99 <<= *a1 - 8 * v100 + 15;
  }

  if (*(a1 + 96))
  {
    v101 = 0x8000;
  }

  else
  {
    v101 = 0;
  }

  v102 = v101 | v99;
  v103 = *(a1 + 32);
  v104 = &v103[v100];
  HIDWORD(v106) = v100 - 2;
  LODWORD(v106) = v100 - 2;
  v105 = v106 >> 1;
  if (v105 > 2)
  {
    if (v105 != 3)
    {
      if (v105 != 4 && v105 != 7)
      {
        goto LABEL_112;
      }

      goto LABEL_111;
    }

    v107 = v103[6] & 0xF;
LABEL_110:
    LOBYTE(v99) = v107 | v99;
LABEL_111:
    *(v104 - 2) = v99;
    goto LABEL_112;
  }

  if (!v105)
  {
    v108 = v103[1] & 3 | (v102 >> 8);
    goto LABEL_113;
  }

  if (v105 == 1)
  {
    v107 = v103[2] & 0x7F;
    goto LABEL_110;
  }

LABEL_112:
  v108 = v102 >> 8;
LABEL_113:
  *(v104 - 1) = v108;
  return result;
}

unint64_t *shiftLeftMP(unint64_t *result, unsigned int a2)
{
  v2 = result;
  v3 = a2 & 0x1F;
  if (a2 >= 0x20)
  {
    v4 = a2 >> 5;
    v5 = 4 * (a2 >> 5);
    j__mkostemp((*result + v5), *result);
    result = MEMORY[0x193AD5FD0](*v2, v5);
    v2[1] += 4 * v4;
  }

  if (v3)
  {
    v6 = *v2;
    v7 = v2[1];
    if (*v2 < v7)
    {
      LODWORD(v8) = 0;
      do
      {
        v9 = *v6 << v3;
        *v6++ = v9 | v8;
        v8 = HIDWORD(v9);
      }

      while (v6 < v7);
      if (v8)
      {
        *v6 = HIDWORD(v9);
        v2[1] = (v6 + 1);
      }
    }
  }

  return result;
}

uint64_t bitCountMP(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 0;
  }

  v3 = *(a2 - 4);
  if (!v3)
  {
    bitCountMP_cold_1();
  }

  return 8 * (a2 - a1) - __clz(v3);
}

uint64_t OSThermalNotificationCurrentLevel()
{
  if (thermalLevelsReady == 1)
  {

    return _OSThermalNotificationLevelForBehavior(0);
  }

  else
  {
    state64 = 0;
    if (qword_1EAC9E0A8 != -1)
    {
      OSThermalNotificationCurrentLevel_cold_1();
    }

    notify_get_state(dword_1EAC9E048, &state64);
    if (state64 == 11)
    {
      thermalLevelsReady = 1;
      return _OSThermalNotificationLevelForBehavior(0);
    }

    else
    {
      thermalLevelsReady = 0;
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t initMPFromDigits(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  for (i = *(a2 + 64); i; i >>= 32)
  {
    *v3++ = i;
  }

  *(result + 8) = v3;
  v5 = *(a2 + 72);
  v6 = *(a2 + 24);
  if (v5 <= v6)
  {
    v7 = *(a2 + 88);
  }

  else
  {
    v7 = *(a2 + 88) - v5 + v6;
  }

  if (v5 <= v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 - v6;
  }

  v9 = *(a2 + 80);
  if (v7 >= 1)
  {
    do
    {
      v10 = 0;
      v11 = 0;
      if (v7 >= 9)
      {
        v12 = 9;
      }

      else
      {
        v12 = v7;
      }

      do
      {
        do
        {
          v13 = *v9++;
          v14 = v13 - 48;
        }

        while ((v13 - 48) > 9);
        v11 = 10 * v11 + v14;
        ++v10;
      }

      while (v10 != v12);
      v16 = *v2;
      v15 = v2[1];
      if (*v2 < v15)
      {
        v17 = 0;
        v18 = initMPFromDigits_powersOfTen[v12];
        do
        {
          v19 = v17 + *v16 * v18;
          *v16++ = v19;
          v17 = HIDWORD(v19);
        }

        while (v16 < v15);
        if (v17)
        {
          *v15 = v17;
          v2[1] = v15 + 1;
        }
      }

      result = addToMP(v2, v11);
      v20 = __OFSUB__(v7, v12);
      v7 -= v12;
    }

    while (!((v7 < 0) ^ v20 | (v7 == 0)));
  }

  if (v8 >= 1)
  {
    v22 = *v2;
    v21 = v2[1];
    if (*v2 < v21)
    {
      v23 = 0;
      do
      {
        v24 = v23 + 10 * *v22;
        *v22++ = v24;
        v23 = HIDWORD(v24);
      }

      while (v22 < v21);
      if (v23)
      {
        *v21 = v23;
        v2[1] = v21 + 1;
      }
    }

    do
    {
      v25 = *v9;
      if (v25 == 48)
      {
        --v8;
      }

      else if ((v25 - 49) <= 8)
      {

        return addToMP(v2, 1uLL);
      }

      ++v9;
    }

    while (v8 > 0);
  }

  return result;
}

uint64_t _OSThermalNotificationLevelForBehavior(unsigned int a1)
{
  state64 = -1;
  if (a1 > 0xA)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = (&predicates + 8 * a1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___OSThermalNotificationLevelForBehavior_block_invoke;
  v4[3] = &__block_descriptor_tmp;
  v5 = a1;
  if (*v2 != -1)
  {
    dispatch_once(v2, v4);
  }

  notify_get_state(tokens[a1], &state64);
  return state64;
}

void *multiplyByFiveToTheN(void *result, int a2)
{
  if (a2 >= 41)
  {
    v2 = *result;
    v3 = result[1];
    do
    {
      v4 = a2;
      v5 = v3;
      v3 = v2;
      if (v2 < v5)
      {
        v6 = 0;
        v7 = 0;
        v3 = v2;
        do
        {
          v8 = __PAIR128__(493038065, 0xC35CA4BFABB9F561) * *v3 + __PAIR128__(v7, v6);
          *v3++ = v8;
          v6 = v8 >> 32;
          v7 = HIDWORD(*(&v8 + 1));
        }

        while (v3 < v5);
        if (*(&v8 + 1) | DWORD1(v8))
        {
          do
          {
            *v3++ = v6;
            *(&v9 + 1) = v7;
            *&v9 = v6;
            v6 = v9 >> 32;
            v10 = v6 | HIDWORD(v7);
            v7 >>= 32;
          }

          while (v10);
        }
      }

      a2 -= 40;
    }

    while (v4 > 80);
    result[1] = v3;
  }

  if (a2 >= 1)
  {
    v11 = *result;
    v12 = result[1];
    do
    {
      v13 = v12;
      if (a2 >= 0x1B)
      {
        v14 = 27;
      }

      else
      {
        v14 = a2;
      }

      v12 = v11;
      if (v11 < v13)
      {
        v15 = 0;
        v16 = 0;
        v17 = powersOfFive[v14];
        v12 = v11;
        do
        {
          v18 = *v12 * v17 + __PAIR128__(v16, v15);
          *v12++ = v18;
          v15 = v18 >> 32;
          v16 = HIDWORD(*(&v18 + 1));
        }

        while (v12 < v13);
        if (*(&v18 + 1) | DWORD1(v18))
        {
          do
          {
            *v12++ = v15;
            *(&v19 + 1) = v16;
            *&v19 = v15;
            v15 = v19 >> 32;
            v20 = v15 | HIDWORD(v16);
            v16 >>= 32;
          }

          while (v20);
        }
      }

      v21 = __OFSUB__(a2, 27);
      a2 -= 27;
    }

    while (!((a2 < 0) ^ v21 | (a2 == 0)));
    result[1] = v12;
  }

  return result;
}

int *shiftRightMPWithRounding(int *result, unint64_t a2, unsigned int a3, int a4, char a5, int a6)
{
  v6 = result;
  v32[0] = result;
  v32[1] = a2;
  if (!a3)
  {
    return result;
  }

  if ((a3 & 0x80000000) != 0)
  {
    shiftLeftMP(v32, -a3);
    return v32[0];
  }

  result += a3 >> 5;
  v7 = a3 & 0x1F;
  if ((a3 & 0x1F) == 0)
  {
    HIDWORD(v14) = a6;
    LODWORD(v14) = a6;
    v13 = v14 >> 22;
    if (v13 != 1)
    {
      if (v13 == 3)
      {
        return result;
      }

      if (v13 != 2)
      {
        v29 = result - 1;
        v30 = *(result - 1);
        if ((v30 & 0x80000000) == 0)
        {
          return result;
        }

        if (v30 == 0x80000000)
        {
          for (; v6 < v29; a4 |= v31)
          {
            v31 = *v6++;
          }

          if (!a4 && (result >= a2 || (*result & 1) == 0))
          {
            return result;
          }
        }

LABEL_18:
        v17 = 1;
        v18 = result;
        do
        {
          if (v18 >= a2)
          {
            break;
          }

          v19 = v17 + *v18;
          *v18++ = v19;
          v17 = HIDWORD(v19);
        }

        while (v17);
        goto LABEL_39;
      }

      a5 ^= 1u;
    }

    do
    {
      v15 = *v6++;
      a4 |= v15;
    }

    while (v6 < result);
    if (a4)
    {
      v16 = a5;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return result;
    }

    goto LABEL_18;
  }

  v9 = (result + 1);
  v8 = *result;
  v10 = *result >> v7;
  if ((result + 1) >= a2)
  {
    v12 = &v6[a3 >> 5];
  }

  else
  {
    do
    {
      v11 = *v9 << (32 - v7);
      *(v9 - 1) = v11 | v10;
      v10 = HIDWORD(v11);
      ++v9;
    }

    while (v9 < a2);
    v12 = v9 - 1;
  }

  if (v10)
  {
    *v12 = v10;
  }

  else
  {
    a2 -= 4;
  }

  v20 = v8 & ~(-1 << v7);
  HIDWORD(v22) = a6;
  LODWORD(v22) = a6;
  v21 = v22 >> 22;
  if (v21 != 1)
  {
    if (v21 == 3)
    {
      return result;
    }

    if (v21 != 2)
    {
      v27 = 1 << (v7 - 1);
      if (v20 >= v27)
      {
        if (v20 > v27)
        {
          goto LABEL_36;
        }

        if (a3 >= 0x20)
        {
          do
          {
            v28 = *v6++;
            a4 |= v28;
          }

          while (v6 < result);
        }

        if (a4 || a2 > result && (*result & 1) != 0)
        {
          goto LABEL_36;
        }
      }

      return result;
    }

    a5 ^= 1u;
  }

  v23 = v20 | a4;
  if (a3 >= 0x20)
  {
    do
    {
      v24 = *v6++;
      v23 |= v24;
    }

    while (v6 < result);
  }

  if (v23)
  {
    v25 = a5;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
LABEL_36:
    v17 = 1;
    v18 = result;
    do
    {
      if (v18 >= a2)
      {
        break;
      }

      v26 = v17 + *v18;
      *v18++ = v26;
      v17 = HIDWORD(v26);
    }

    while (v17);
LABEL_39:
    if (v17)
    {
      *v18 = v17;
    }
  }

  return result;
}

uint64_t overflow(uint64_t a1)
{
  *__error() = 34;
  result = fegetround();
  v3 = *(a1 + 96);
  if (result == 12582912 || !((result != 0x800000) | v3 & 1) || ((result == 0x400000) & *(a1 + 96)) != 0)
  {
    v4 = *(a1 + 12);
    switch(v4)
    {
      case 8:
        v7 = (v3 & 1) == 0;
        v8 = 0x7FEFFFFFFFFFFFFFLL;
        if (!v7)
        {
          v8 = 0xFFEFFFFFFFFFFFFFLL;
        }

        **(a1 + 32) = v8;
        break;
      case 4:
        if (*(a1 + 96))
        {
          v6 = -8388609;
        }

        else
        {
          v6 = 2139095039;
        }

        **(a1 + 32) = v6;
        break;
      case 2:
        if (*(a1 + 96))
        {
          v5 = -1025;
        }

        else
        {
          v5 = 31743;
        }

        **(a1 + 32) = v5;
        break;
      default:
        v9 = *(a1 + 32);

        return j__mkostemps(v9, 255, v4);
    }
  }

  else
  {

    return infinity(a1);
  }

  return result;
}

uint64_t infinity(uint64_t result)
{
  v1 = *(result + 12);
  switch(v1)
  {
    case 8:
      v4 = 0x7FF0000000000000;
      if (*(result + 96))
      {
        v4 = 0xFFF0000000000000;
      }

      **(result + 32) = v4;
      break;
    case 4:
      if (*(result + 96))
      {
        v3 = -8388608;
      }

      else
      {
        v3 = 2139095040;
      }

      **(result + 32) = v3;
      break;
    case 2:
      if (*(result + 96))
      {
        v2 = -1024;
      }

      else
      {
        v2 = 31744;
      }

      **(result + 32) = v2;
      break;
    default:
      JUMPOUT(0x193AD5FD0);
  }

  return result;
}

uint64_t __printf_comp(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = malloc_type_calloc(8uLL, 0x58uLL, 0x4C41EDAEuLL);
  v61[0] = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v61[1] = 0x800000058;
  v60[0] = malloc_type_calloc(8uLL, 4uLL, 0x4C41EDAEuLL);
  if (!v60[0])
  {
    v50 = v6;
    goto LABEL_132;
  }

  v60[1] = 0x800000004;
  v7 = arrayget(v61, 0);
  if (!v7)
  {
    goto LABEL_131;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = a2 + 200;
  v59 = a2 + 296;
  v12 = 1;
  while (1)
  {
    if (!*v4)
    {
      goto LABEL_119;
    }

    *(v8 + 8) = 32;
    *(v8 + 2) = -4294967208;
    v13 = v4 + 1;
    *(v8 + 7) = v4;
    for (*(v8 + 8) = v4; ; *(v8 + 8) = v13++)
    {
      if (!*(v13 - 1))
      {
        v8 += 88;
LABEL_119:
        if (v12 <= v9)
        {
          v51 = v9;
        }

        else
        {
          v51 = v12;
        }

        v52 = v60[0];
        *(a1 + 96) = v8;
        *(a1 + 104) = v52;
        v53 = v61[0];
        *(a1 + 88) = v61[0];
        *(a1 + 120) = v51;
        if (v51 <= 1)
        {
          v51 = 1;
        }

        v54 = malloc_type_malloc(16 * v51, 0x1092040C99D0F4CuLL);
        *(a1 + 112) = v54;
        if (!v54)
        {
          goto LABEL_131;
        }

        while (v53 < v8)
        {
          v55 = *(v53 + 9);
          if (v55)
          {
            *(v53 + 9) = &v54[16 * v55];
          }

          v56 = *(v53 + 10);
          if (v56)
          {
            *(v53 + 10) = &v54[16 * v56];
          }

          v53 += 88;
        }

        result = 0;
        *(a1 + 72) = a2;
        return result;
      }

      if (*(v13 - 1) == 37)
      {
        break;
      }
    }

LABEL_69:
    while (2)
    {
      while (2)
      {
        while (1)
        {
          v31 = *v13;
          while (1)
          {
            v32 = v31;
            *(v8 + 7) = v32;
            if (v31 > 0x2Fu)
            {
              break;
            }

            if (v31 <= 0x2Bu)
            {
              if (v31 <= 0x26u)
              {
                if (v31 != 32)
                {
                  if (v31 == 35)
                  {
                    v14 = *(v8 + 20) | 0x10;
                    goto LABEL_42;
                  }

                  goto LABEL_107;
                }

                v21 = *(v8 + 20);
                if ((v21 & 0x80) != 0)
                {
                  goto LABEL_43;
                }

                *(v8 + 20) = v21 | 0x20;
                v22 = 32;
LABEL_33:
                *(v8 + 9) = v22;
                goto LABEL_43;
              }

              if (v31 == 39)
              {
                v14 = *(v8 + 20) | 0x100;
                goto LABEL_42;
              }

              if (v31 != 42)
              {
                if (v31 != 43)
                {
                  goto LABEL_107;
                }

                *(v8 + 20) |= 0x80u;
                v22 = 43;
                goto LABEL_33;
              }

              v15 = v13 + 1;
              v16 = v13[1];
              if (!v13[1])
              {
                goto LABEL_57;
              }

              v17 = v16 - 48;
              if ((v16 - 48) <= 9)
              {
                v18 = 0;
                v15 = v13 + 2;
                while (1)
                {
                  v19 = *v15;
                  if (!*v15)
                  {
                    goto LABEL_57;
                  }

                  v18 = v17 + 10 * v18;
                  v17 = v19 - 48;
                  ++v15;
                  if ((v19 - 48) > 9)
                  {
                    v20 = v19;
                    v13 = v15 - 2;
                    --v15;
                    goto LABEL_53;
                  }
                }
              }

              v18 = 0;
              v20 = v13[1];
LABEL_53:
              if (v20 == 36)
              {
                if (v18 >= v9)
                {
                  v9 = v18 + 1;
                }

                v13 += 2;
                v29 = v12;
                LODWORD(v12) = v18;
              }

              else
              {
LABEL_57:
                v29 = (v12 + 1);
                v13 = v15;
              }

              *(v8 + 12) = v12;
              goto LABEL_67;
            }

            if (v31 != 46)
            {
              if (v31 != 44)
              {
                if (v31 == 45)
                {
                  v14 = *(v8 + 20) | 0x40;
                  goto LABEL_42;
                }

                goto LABEL_107;
              }

              goto LABEL_20;
            }

            *(v8 + 5) = 0;
            v33 = (v13 + 1);
            v34 = v13[1];
            if (v34 == 42)
            {
              v24 = v13[2];
              if (v24)
              {
                v25 = 0;
                v13 += 3;
                while (1)
                {
                  v26 = v24 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  v25 = v26 + 10 * v25;
                  v27 = *v13++;
                  v24 = v27;
                  if (!v27)
                  {
                    goto LABEL_64;
                  }
                }

                if (v24 != 36)
                {
LABEL_64:
                  --v13;
                  goto LABEL_65;
                }

                if (v25 >= v9)
                {
                  v9 = v25 + 1;
                }

                v29 = v12;
                LODWORD(v12) = v25;
              }

              else
              {
                v13 += 2;
LABEL_65:
                v29 = (v12 + 1);
              }

              *(v8 + 13) = v12;
LABEL_67:
              v30 = arrayget(v60, v12);
              if (!v30)
              {
                goto LABEL_131;
              }

              *v30 = 1;
              v12 = v29;
              goto LABEL_69;
            }

            v31 = *++v13;
            if ((v34 - 48) <= 9)
            {
              v35 = 0;
              do
              {
                v36 = 5 * v35;
                *(v8 + 5) = 2 * v36;
                v35 = *v33 + 2 * v36 - 48;
                *(v8 + 5) = v35;
                v38 = *++v33;
                v37 = v38;
              }

              while ((v38 - 48) < 0xA);
              v31 = v37;
              v13 = v33;
            }
          }

          if (v31 > 0x39u)
          {
            break;
          }

          if (v31 - 49 >= 9)
          {
            if (v31 == 48)
            {
              *(v8 + 8) = 48;
              goto LABEL_43;
            }

            goto LABEL_107;
          }

          v39 = *v13;
          if (*v13)
          {
            v40 = 0;
            ++v13;
            while (1)
            {
              v41 = v39 - 48;
              if (v41 > 9)
              {
                break;
              }

              v40 = v41 + 10 * v40;
              v42 = *v13++;
              v39 = v42;
              if (!v42)
              {
                goto LABEL_15;
              }
            }

            if (v39 != 36)
            {
LABEL_15:
              --v13;
              goto LABEL_16;
            }

            if (v12 > v9)
            {
              v9 = v12;
            }

            v12 = v40;
          }

          else
          {
            LODWORD(v40) = 0;
LABEL_16:
            *(v8 + 6) = v40;
          }
        }

        if (v31 > 0x6Bu)
        {
          if (v31 > 0x73u)
          {
            switch(v31)
            {
              case 't':
                v14 = *(v8 + 20) | 0x2000;
                goto LABEL_42;
              case 'v':
                v14 = *(v8 + 20) | 0x8000;
                goto LABEL_42;
              case 'z':
                v14 = *(v8 + 20) | 0x4000;
                goto LABEL_42;
            }

            goto LABEL_107;
          }

          if (v31 != 108)
          {
            if (v31 == 113)
            {
              v14 = *(v8 + 20) & 0xF7F7 | 0x800;
              goto LABEL_42;
            }

            goto LABEL_107;
          }

          v23 = v13 + 1;
          if (v13[1] == 108)
          {
            v13 += 2;
            *(v8 + 20) = *(v8 + 20) & 0xF7FE | 1;
            continue;
          }

          v28 = *(v8 + 20) & 0xF7F7 | 8;
          goto LABEL_51;
        }

        break;
      }

      if (v31 <= 0x5Eu)
      {
        if (v31 - 58 >= 2)
        {
          if (v31 == 76)
          {
            v14 = *(v8 + 20) | 1;
            goto LABEL_42;
          }

          break;
        }

LABEL_20:
        *(v8 + 4) = v32;
        goto LABEL_43;
      }

      switch(v31)
      {
        case '_':
          goto LABEL_20;
        case 'h':
          v23 = v13 + 1;
          if (v13[1] == 104)
          {
            v13 += 2;
            *(v8 + 20) |= 2u;
            continue;
          }

          v28 = *(v8 + 20) | 4;
LABEL_51:
          *(v8 + 20) = v28;
          v13 = v23;
          continue;
        case 'j':
          v14 = *(v8 + 20) | 0x1000;
LABEL_42:
          *(v8 + 20) = v14;
LABEL_43:
          ++v13;
          continue;
      }
    }

LABEL_107:
    if ((v32 - 33) <= 0x5D)
    {
      break;
    }

LABEL_115:
    v4 = v13 + 1;
    v8 = arrayget(v61, ++v10);
    if (!v8)
    {
      goto LABEL_131;
    }
  }

  v43 = *(v11 + (v32 - 33));
  if ((v43 - 1) >= 2)
  {
    if (v43 == 3)
    {
      errx(1, "Unexpected flag: %c", v32);
    }

    goto LABEL_115;
  }

  if (arrayget(v60, v12 + 1))
  {
    v58 = a2;
    v44 = v11;
    v45 = (v59 + 24 * *(v8 + 7) - 792);
    v46 = *(a1 + 80);
    *v8 = *(v59 + 24 * *(v8 + 7) - 776);
    *(v8 + 1) = v46;
    v47 = *v45;
    v48 = arrayget(v60, v12);
    v49 = v47(v8, 2, v48);
    if (v49 >= 1)
    {
      *(v8 + 9) = v12;
      if (v49 != 1)
      {
        *(v8 + 10) = v12 + 1;
      }
    }

    v12 = (v49 + v12);
    v11 = v44;
    a2 = v58;
    goto LABEL_115;
  }

LABEL_131:
  free(v61[0]);
  v50 = v60[0];
LABEL_132:
  free(v50);
  return 0xFFFFFFFFLL;
}

char *arrayget(char **a1, int a2)
{
  v4 = *(a1 + 3);
  v5 = *a1;
  if (v4 <= a2)
  {
    v6 = *(a1 + 2);
    v7 = a2 + 8;
    v8 = v6 * (a2 + 8);
    result = malloc_type_realloc(*a1, v8, 0x46A4583CuLL);
    if (!result)
    {
      return result;
    }

    v5 = result;
    MEMORY[0x193AD5FD0](&result[v6 * v4], v8 - v6 * v4);
    *a1 = v5;
    *(a1 + 3) = v7;
  }

  return &v5[*(a1 + 2) * a2];
}

uint64_t __printf_arginfo_str(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a2)
  {
    __printf_arginfo_str_cold_1();
  }

  v3 = 16;
  if ((*(a1 + 40) & 8) == 0)
  {
    if (*(a1 + 28) == 67)
    {
      v3 = 16;
    }

    else
    {
      v3 = 8;
    }
  }

  *a3 = v3;
  return 1;
}

uint64_t __printf_exec(uint64_t a1, uint64_t a2, __int16 *a3)
{
  memset(v41, 0, sizeof(v41));
  v42 = v41;
  v43 = a3;
  v39 = v41;
  v40 = 0;
  v38 = a2;
  v5 = *(a1 + 120);
  if (v5 >= 2)
  {
    v6 = (*(a1 + 104) + 4);
    v7 = 16 * v5;
    for (i = 16; v7 != i; i += 16)
    {
      v10 = *v6++;
      v9 = v10;
      if (v10 > 0x10000)
      {
        if (v9 > 0x100000)
        {
          if (v9 > 0x400000)
          {
            if (v9 != 4194305)
            {
              v13 = 8388609;
LABEL_33:
              if (v9 != v13)
              {
LABEL_63:
                errx(1, "argtype = %x (fmt = %s)\n", v9, *(a1 + 64));
              }
            }
          }

          else if (v9 != 1048577)
          {
            v13 = 2097153;
            goto LABEL_33;
          }
        }

        else if (v9 > 0x20000)
        {
          if (v9 != 131073)
          {
            if (v9 != 262145)
            {
              goto LABEL_63;
            }

            v17 = v43;
            v43 += 4;
            v12 = *v17;
            goto LABEL_36;
          }
        }

        else if (v9 != 65537)
        {
          if (v9 != 65664)
          {
            goto LABEL_63;
          }

LABEL_37:
          v21 = v43;
          v43 += 4;
          *(*(a1 + 112) + i) = *v21;
          continue;
        }
      }

      else
      {
        if (v9 <= 15)
        {
          if (v9 > 3)
          {
            if (v9 != 4)
            {
              if (v9 != 8)
              {
                goto LABEL_63;
              }

              v14 = v43;
              v43 += 4;
              v15 = *v14;
              v16 = off_1EAC9EA80;
              if (off_1EAC9EA80)
              {
LABEL_39:
                v16(v15);
              }

LABEL_40:
              *(*(a1 + 112) + i) = v15;
              continue;
            }
          }

          else if (v9 != 1)
          {
            if (v9 != 2)
            {
              goto LABEL_63;
            }

            v11 = v43;
            v43 += 4;
            v12 = *v11;
            goto LABEL_36;
          }

          v20 = v43;
          v43 += 4;
          v12 = *v20;
LABEL_36:
          *(*(a1 + 112) + i) = v12;
          continue;
        }

        if (v9 > 127)
        {
          if (v9 != 128)
          {
            if (v9 != 256)
            {
              goto LABEL_63;
            }

            v18 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
            v43 = (v18 + 1);
            *(*(a1 + 112) + i) = *v18;
            continue;
          }

          goto LABEL_37;
        }

        if (v9 == 16)
        {
          v22 = v43;
          v43 += 4;
          v15 = *v22;
          v16 = off_1EAC9EA88;
          if (off_1EAC9EA88)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }

        if (v9 != 32)
        {
          goto LABEL_63;
        }
      }

      v19 = v43;
      v43 += 4;
      *(*(a1 + 112) + i) = *v19;
    }
  }

  v23 = *(a1 + 88);
  v24 = *(a1 + 96);
  if (v23 < v24)
  {
    LODWORD(v25) = 0;
    while (1)
    {
      v26 = *(v23 + 48);
      if (v26)
      {
        v27 = *(*(a1 + 112) + 16 * v26);
        *(v23 + 24) = v27;
        if (v27 < 0)
        {
          *(v23 + 40) |= 0x40u;
          *(v23 + 24) = -v27;
        }
      }

      v28 = *(v23 + 52);
      if (v28)
      {
        *(v23 + 20) = *(*(a1 + 112) + 16 * v28);
      }

      v29 = *(v23 + 56);
      v30 = *(v23 + 64) - v29;
      __printf_puts(&v38, v29, v30);
      v25 = v25 + v30;
      v31 = *(v23 + 28);
      if (!v31)
      {
        goto LABEL_56;
      }

      v32 = v31 - 33;
      if ((v31 - 33) > 0x5D)
      {
        break;
      }

      v33 = *(a1 + 72);
      v34 = *(v33 + v32 + 200);
      if (v34 == 2)
      {
        *(v23 + 44) = v25;
        v35 = (*(v33 + 24 * v32 + 304))(&v38, v23, v23 + 72);
        if (v35 < 0)
        {
          *(v38 + 16) |= 0x40u;
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v34 == 1)
      {
        __sfvwrite(v38, &v39);
        v42 = v41;
        v39 = v41;
        v40 = 0;
        *(v23 + 44) = v25;
        v35 = (*(v33 + 24 * *(v23 + 28) - 488))(a2, v23, v23 + 72);
        goto LABEL_55;
      }

      if (!*(v33 + v32 + 200))
      {
        break;
      }

LABEL_56:
      v23 += 88;
      if (v23 >= v24)
      {
        goto LABEL_62;
      }
    }

    v37 = *(v23 + 28);
    v35 = __printf_out(&v38, v23, &v37, 1);
LABEL_55:
    v25 = (v35 + v25);
    goto LABEL_56;
  }

  v25 = 0;
LABEL_62:
  __sfvwrite(v38, &v39);
  return v25;
}

uint64_t __printf_puts(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a1[19];
    *v5 = a2;
    v5[1] = a3;
    a1[19] = (v5 + 2);
    v6 = a1[2];
    v7.i32[0] = 1;
    v7.i32[1] = a3;
    a1[2] = vadd_s32(v6, v7);
    if (v6.i32[0] >= 7)
    {
      __sfvwrite(*a1, (a1 + 1));
      a1[19] = (a1 + 3);
      a1[1] = (a1 + 3);
      a1[2] = 0;
    }
  }

  return a3;
}

uint64_t __printf_render_str(uint64_t *a1, uint64_t a2, const __int32 ***a3)
{
  v3 = a2;
  v4 = a1;
  if ((*(a2 + 40) & 8) != 0 || *(a2 + 28) == 83)
  {
    v5 = **a3;
    if (v5)
    {
      v6 = *(a2 + 20);
      v7 = *(a2 + 8);
      memset(&v29, 0, sizeof(v29));
      v27 = 0;
      if ((v6 & 0x80000000) != 0)
      {
        v27 = v5;
        memset(&v29, 0, sizeof(v29));
        v8 = wcsrtombs_l(0, &v27, 0, &v29, v7);
        if (v8 == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v6 > 0x7F)
      {
        v16 = 0;
        v27 = v5;
        memset(&v29, 0, sizeof(v29));
        do
        {
          v8 = v16;
          v17 = *v27++;
          v18 = wcrtomb_l(v28, v17, &v29, v7);
          v16 = v18 + v8;
        }

        while (v18 + 1 >= 2 && v6 >= v16);
      }

      else
      {
        v8 = v6;
      }

      v20 = malloc_type_malloc(v8 + 1, 0x148EEA97uLL);
      if (v20)
      {
        v21 = v20;
        v27 = v5;
        memset(&v29, 0, sizeof(v29));
        v22 = wcsrtombs_l(v20, &v27, v8, &v29, v7);
        if (v22 != -1)
        {
          v21[v22] = 0;
          v25 = j__strsignal_r(v21, v23, v24);
          v26 = __printf_out(v4, v3, v21, v25);
          __printf_flush(v4);
          free(v21);
          return v26;
        }

        free(v21);
      }

      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v9 = **a3;
    if (v9)
    {
      v10 = j__strsignal_r(**a3, a2, a3);
      v11 = *(v3 + 20);
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = *(v3 + 20);
      }

      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      a1 = v4;
      a2 = v3;
      v14 = v9;
      goto LABEL_16;
    }
  }

  v14 = "(null)";
  v13 = 6;
LABEL_16:

  return __printf_out(a1, a2, v14, v13);
}

uint64_t __printf_out(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 40) & 0x40) != 0 || (v8 = *(a2 + 24), v8 <= a4))
  {
    v9 = 0;
  }

  else
  {
    v9 = __printf_pad(a1, (v8 - a4), *(a2 + 32) == 48);
  }

  __printf_puts(a1, a3, a4);
  v10 = (v9 + a4);
  if ((*(a2 + 40) & 0x40) != 0)
  {
    v11 = *(a2 + 24);
    if (v11 > a4)
    {
      return __printf_pad(a1, (v11 - a4), *(a2 + 32) == 48) + v10;
    }
  }

  return v10;
}

__darwin_ct_rune_t ___tolower(__darwin_ct_rune_t a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return ___tolower_l(a1, v3);
}

int fnmatch(const char *a1, const char *a2, int a3)
{
  v5 = a1;
  v6 = __locale_key;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
  memset(&v33._mbstateL + 10, 0, 32);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__global_locale;
  }

  memset(&v33, 0, 80);
  memset(&v32, 0, sizeof(v32));
  memset(&v35, 0, sizeof(v35));
  memset(&v34, 0, sizeof(v34));
  *(&v33._mbstateL + 7) = 0uLL;
  *v29 = 0;
  v9 = mbrtowc_l(&v29[1], a1, 6uLL, &v33, v8);
  if (v9 > 0xFFFFFFFFFFFFFFFDLL)
  {
    return 2;
  }

  v11 = v9;
  v12 = 0;
  v13 = 0;
  v30 = 0;
  v31 = 0;
  v28 = a2;
  while (1)
  {
    v14 = mbrtowc_l(v29, a2, 6uLL, &v32, v8);
    if (v14 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v29[0] = *a2;
      memset(&v32, 0, sizeof(v32));
      v14 = 1;
    }

    v15 = &v5[v11];
    result = v29[1];
    if (v29[1] > 62)
    {
      if (v29[1] == 63)
      {
        if (v29[0] == 47)
        {
          if ((a3 & 2) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (!v29[0])
          {
            return 1;
          }

          if ((a3 & 4) == 0 || v29[0] != 46 || a2 != v28 && ((a3 & 2) == 0 || *(a2 - 1) != 47))
          {
LABEL_50:
            a2 += v14;
            goto LABEL_79;
          }
        }

        goto LABEL_70;
      }

      if (v29[1] != 91)
      {
        if (v29[1] == 92)
        {
          if (a3)
          {
            result = 92;
          }

          else
          {
            v16 = mbrtowc_l(&v29[1], &v5[v11], 6uLL, &v33, v8);
            if (v16 > 0xFFFFFFFFFFFFFFFDLL)
            {
              return 2;
            }

            v17 = v16;
            if (v16)
            {
              result = v29[1];
            }

            else
            {
              result = 92;
              v29[1] = 92;
            }

            v15 += v17;
          }
        }

LABEL_61:
        a2 += v14;
        v21 = v29[0];
        if (result == v29[0])
        {
          goto LABEL_79;
        }

        if ((a3 & 0x10) != 0)
        {
          if (result > 0x7F)
          {
            v22 = ___tolower_l(result, v8);
            v21 = v29[0];
          }

          else
          {
            v22 = _DefaultRuneLocale.__maplower[result];
          }

          v23 = v21 > 0x7F ? ___tolower_l(v21, v8) : _DefaultRuneLocale.__maplower[v21];
          if (v22 == v23)
          {
            goto LABEL_79;
          }
        }

LABEL_70:
        if (!v13)
        {
          return 1;
        }

        v24 = mbrtowc(v29, v12, 6uLL, &v34);
        if (v24 < 0xFFFFFFFFFFFFFFFELL)
        {
          v25 = v29[0];
        }

        else
        {
          v25 = *v12;
          v29[0] = v25;
          memset(&v34, 0, sizeof(v34));
          v24 = 1;
        }

        if (v25 == 47)
        {
          if ((a3 & 2) != 0)
          {
            return 1;
          }
        }

        else if (!v25)
        {
          return 1;
        }

        a2 = &v12[v24];
        v33 = v35;
        v32 = v34;
        v15 = v13;
        v12 += v24;
        goto LABEL_79;
      }

      if (v29[0] == 47)
      {
        if ((a3 & 2) != 0)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (!v29[0])
        {
          return 1;
        }

        if ((a3 & 4) != 0 && v29[0] == 46 && (a2 == v28 || (a3 & 2) != 0 && *(a2 - 1) == 47))
        {
          goto LABEL_70;
        }
      }

      v20 = rangematch(&v5[v11], v29[0], &a2[v14], a3, &v31, &v30, &v33, &v32, v8);
      if (v20)
      {
        if (v20 == 1)
        {
          a2 = v30;
          v15 = v31;
        }

        else if (v20 == -1)
        {
          return 2;
        }

        goto LABEL_79;
      }

      goto LABEL_70;
    }

    if (!v29[1])
    {
      if (((v29[0] == 47) & (a3 >> 3)) != 0 || !v29[0])
      {
        return result;
      }

      goto LABEL_70;
    }

    if (v29[1] != 42)
    {
      goto LABEL_61;
    }

    v15 = &v5[v11 - 1];
    do
    {
      v19 = *++v15;
      v18 = v19;
    }

    while (v19 == 42);
    if ((a3 & 4) != 0 && v29[0] == 46 && (a2 == v28 || (a3 & 2) != 0 && *(a2 - 1) == 47))
    {
      goto LABEL_70;
    }

    if (v18 != 47)
    {
      break;
    }

    if ((a3 & 2) == 0)
    {
      goto LABEL_57;
    }

    j__strmode(a2, 0x2F);
    a2 = v26;
    if (!v26)
    {
      return 1;
    }

LABEL_79:
    v11 = mbrtowc_l(&v29[1], v15, 6uLL, &v33, v8);
    v5 = v15;
    if (v11 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return 2;
    }
  }

  if (v18)
  {
LABEL_57:
    v35 = v33;
    v34 = v32;
    v13 = v15;
    v12 = a2;
    goto LABEL_79;
  }

  if ((a3 & 0xA) != 2)
  {
    return 0;
  }

  j__strmode(a2, 0x2F);
  return v27 != 0;
}

int statx_np(const char *a1, stat *a2, filesec_t a3)
{
  v4 = a1;
  if (a3)
  {
    return statx1(&v4, statx_syscall, a2, a3);
  }

  return stat(a1, a2);
}

uint64_t statx1(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _DWORD *, unint64_t *), uint64_t a3, _filesec *a4)
{
  v8 = malloc_type_malloc(0x1ACuLL, 0x1000040504FFAC1uLL);
  v18 = v8;
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v17 = 428;
  v10 = a2(a1, a3, v8, &v17);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v13 = 428;
    while (v17 > v13)
    {
      v14 = malloc_type_realloc(v9, v17 + 48, 0x1000040504FFAC1uLL);
      v18 = v14;
      if (!v14)
      {
        v18 = v9;
        v11 = 0;
        *__error() = 12;
        goto LABEL_4;
      }

      v15 = v14;
      v13 = v17;
      v16 = a2(a1, a3, v14, &v17);
      v9 = v15;
      if (v16)
      {
        v11 = v16;
        v9 = v15;
        goto LABEL_4;
      }
    }

    filesec_set_property(a4, FILESEC_OWNER, (a3 + 16));
    filesec_set_property(a4, FILESEC_GROUP, (a3 + 20));
    filesec_set_property(a4, FILESEC_MODE, (a3 + 4));
    if (v17 < 0x44)
    {
      filesec_set_property(a4, FILESEC_UUID, 0);
      filesec_set_property(a4, FILESEC_GRPUUID, 0);
    }

    else
    {
      filesec_set_property(a4, FILESEC_UUID, v9 + 1);
      v9 = v18;
      filesec_set_property(a4, FILESEC_GRPUUID, v18 + 5);
      if (v9[9] != -1)
      {
        filesec_set_property(a4, FILESEC_ACL_ALLOCSIZE, &v17);
        filesec_set_property(a4, FILESEC_ACL_RAW, &v18);
        return 0;
      }
    }

    filesec_set_property(a4, FILESEC_ACL_ALLOCSIZE, 0);
    filesec_set_property(a4, FILESEC_ACL_RAW, 0);
    v11 = 0;
  }

LABEL_4:
  free(v9);
  return v11;
}

int lstatx_np(const char *a1, stat *a2, filesec_t a3)
{
  v4 = a1;
  if (a3)
  {
    return statx1(&v4, lstatx_syscall, a2, a3);
  }

  return lstat(a1, a2);
}

int filesec_get_property(filesec_t a1, filesec_property_t a2, void *a3)
{
  v4 = 22;
  if (a2 > FILESEC_MODE)
  {
    if (a2 > 99)
    {
      if (a2 == FILESEC_ACL_RAW)
      {
        if ((*a1 & 0x20) == 0)
        {
          goto LABEL_38;
        }

        if (!a3)
        {
          return 0;
        }

        v5 = 0;
        v8 = *(a1 + 7);
      }

      else
      {
        if (a2 != FILESEC_ACL_ALLOCSIZE)
        {
          goto LABEL_39;
        }

        if ((*a1 & 0x20) == 0)
        {
          goto LABEL_38;
        }

        if (!a3)
        {
          return 0;
        }

        v5 = 0;
        v8 = *(a1 + 6);
      }
    }

    else
    {
      if (a2 != FILESEC_ACL)
      {
        if (a2 != FILESEC_GRPUUID)
        {
          goto LABEL_39;
        }

        if ((*a1 & 8) != 0)
        {
          if (!a3)
          {
            return 0;
          }

          v7 = a1 + 28;
          goto LABEL_36;
        }

LABEL_38:
        v4 = 2;
        goto LABEL_39;
      }

      if ((*a1 & 0x20) == 0)
      {
        goto LABEL_38;
      }

      if (!a3)
      {
        return 0;
      }

      v9 = *(a1 + 7);
      if (v9 != 1)
      {
        v10 = acl_copy_int_native(v9);
        *a3 = v10;
        if (v10)
        {
          return 0;
        }

        v4 = *__error();
        if (!v4)
        {
          return 0;
        }

        goto LABEL_39;
      }

      v5 = 0;
      v8 = 1;
    }

    *a3 = v8;
    return v5;
  }

  if (a2 <= FILESEC_GROUP)
  {
    if (a2 == FILESEC_OWNER)
    {
      if (*a1)
      {
        if (a3)
        {
          v5 = 0;
          v6 = *(a1 + 1);
          goto LABEL_26;
        }

        return 0;
      }

      goto LABEL_38;
    }

    if (a2 == FILESEC_GROUP)
    {
      if ((*a1 & 2) != 0)
      {
        if (a3)
        {
          v5 = 0;
          v6 = *(a1 + 2);
LABEL_26:
          *a3 = v6;
          return v5;
        }

        return 0;
      }

      goto LABEL_38;
    }

LABEL_39:
    *__error() = v4;
    return -1;
  }

  if (a2 == FILESEC_UUID)
  {
    if ((*a1 & 4) == 0)
    {
      goto LABEL_38;
    }

    if (!a3)
    {
      return 0;
    }

    v7 = a1 + 12;
LABEL_36:
    uuid_copy(a3, v7);
    return 0;
  }

  if ((*a1 & 0x10) == 0)
  {
    goto LABEL_38;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  *a3 = *(a1 + 22);
  return v5;
}

int fstatx_np(int a1, stat *a2, filesec_t a3)
{
  v4 = a1;
  if (a3)
  {
    return statx1(&v4, fstatx_syscall, a2, a3);
  }

  return fstat(a1, a2);
}

uint64_t chmodx1(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, uint64_t), filesec_t a3)
{
  v17 = -101;
  v18 = -101;
  v15 = 0;
  v14 = 0;
  memset(v13, 0, 68);
  if (!a3)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v16 = 0;
  if (filesec_get_property(a3, FILESEC_OWNER, &v18) && *__error() != 2 || filesec_get_property(a3, FILESEC_GROUP, &v17) && *__error() != 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!filesec_get_property(a3, FILESEC_MODE, &v16))
  {
    v6 = v16;
    goto LABEL_13;
  }

  v6 = 0xFFFFFFFFLL;
  if (*__error() == 2)
  {
LABEL_13:
    if (!filesec_get_property(a3, FILESEC_ACL_RAW, &v14) && !filesec_get_property(a3, FILESEC_ACL_ALLOCSIZE, &v15) || *__error() == 2)
    {
      v8 = v14;
      v9 = v14 < 2;
      v10 = v14;
      if (v14 <= 1)
      {
        memset(&v13[2] + 4, 0, 32);
        memset(v13 + 4, 0, 32);
        v10 = v13;
        v14 = v13;
        LODWORD(v13[0]) = 19710317;
        DWORD1(v13[2]) = -1;
      }

      if (!filesec_get_property(a3, FILESEC_UUID, v10 + 4))
      {
        v9 = 0;
        v11 = v14;
        goto LABEL_22;
      }

      if (*__error() == 2)
      {
        v11 = v14;
        *(v14 + 12) = 0;
        *(v11 + 4) = 0;
LABEL_22:
        if (!filesec_get_property(a3, FILESEC_GRPUUID, (v11 + 20)))
        {
          v12 = v14;
          return a2(a1, v18, v17, v6, v12);
        }

        if (*__error() == 2)
        {
          v12 = v14;
          *(v14 + 28) = 0;
          *(v12 + 20) = 0;
          if (v9)
          {
            if (v8 == 1)
            {
              v12 = 1;
              v14 = 1;
            }

            else
            {
              v12 = 0;
              v14 = 0;
            }
          }

          return a2(a1, v18, v17, v6, v12);
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

char *__cdecl strpbrk(char *__s1, const char *__s2)
{
  while (1)
  {
    v2 = *__s1;
    if (!*__s1)
    {
      break;
    }

    v3 = __s1++;
    for (i = __s2; ; ++i)
    {
      v5 = *i;
      if (!*i)
      {
        break;
      }

      if (v5 == v2)
      {
        return v3;
      }
    }
  }

  return 0;
}

FILE *__cdecl open_memstream(char **__bufp, size_t *__sizep)
{
  if (__bufp && __sizep)
  {
    v4 = malloc_type_calloc(1uLL, 1uLL, 0xF4EB573BuLL);
    *__bufp = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(0x20uLL, 0x10900405C4C9827uLL);
      if (v5)
      {
        v6 = v5;
        *v5 = __bufp;
        v5[1] = __sizep;
        v5[2] = 0;
        v5[3] = 0;
        memstream_update(v5);
        v7 = funopen(v6, 0, memstream_write, memstream_seek, memstream_close);
        v8 = v7;
        if (v7)
        {
          fwide(v7, -1);
        }

        else
        {
          v10 = *__error();
          free(v6);
          free(*__bufp);
          *__bufp = 0;
          *__error() = v10;
        }
      }

      else
      {
        v9 = *__error();
        free(*__bufp);
        *__bufp = 0;
        v8 = 0;
        *__error() = v9;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
    *__error() = 22;
  }

  return v8;
}

uint64_t memstream_update(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 0x8000000000000000) != 0 || (v2 = *(result + 24), (v2 & 0x8000000000000000) != 0))
  {
    memstream_update_cold_1();
  }

  if (v1 >= v2)
  {
    v1 = *(result + 24);
  }

  **(result + 8) = v1;
  return result;
}

int fwide(FILE *a1, int a2)
{
  flockfile(a1);
  if (a2)
  {
    extra = a1->_extra;
    if ((*(extra + 72) & 7) == 0)
    {
      if (a2 >= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = 7;
      }

      *(extra + 72) |= v5;
    }
  }

  v6 = *(a1->_extra + 72) << 29 >> 29;
  funlockfile(a1);
  return v6;
}

uint64_t memstream_write(uint64_t a1, char *path, int a3)
{
  LODWORD(v3) = a3;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = v6 + a3;
  if (v8 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v8 = 0x7FFFFFFFFFFFFFFELL;
  }

  if (v8 > v7)
  {
    v9 = 15 * v7 / 10;
    if ((v7 * 15) >> 64 != (15 * v7) >> 63)
    {
      v9 = 0x7FFFFFFFFFFFFFFELL;
    }

    if (v9 <= v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = v9;
    }

    v10 = malloc_type_realloc(**a1, v7 + 1, 0x232B92CDuLL);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v10;
    MEMORY[0x193AD5FD0](&v10[*(a1 + 16) + 1], v7 - *(a1 + 16));
    **a1 = v11;
    *(a1 + 16) = v7;
    v6 = *(a1 + 24);
  }

  if (v7 - v6 >= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v7 - v6;
  }

  j__mkdtempat_np(**a1 + v6, path);
  *(a1 + 24) += v3;
  memstream_update(a1);
  return v3;
}

char *__cdecl strptime_l(const char *a1, const char *a2, tm *a3, locale_t a4)
{
  v5 = &__global_locale;
  if (a4 != -1)
  {
    v5 = a4;
  }

  if (a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = __c_locale;
  }

  v12 = 0;
  a3->tm_zone = 0;
  v7 = _strptime0(a1, a2, a3, &v12, v6);
  if (v7)
  {
    v11 = 0;
    if (v12 == 2)
    {
      tm_gmtoff = a3->tm_gmtoff;
      a3->tm_gmtoff = 0;
      v8 = timeoff(a3, tm_gmtoff);
      goto LABEL_11;
    }

    if (v12 == 1)
    {
      v8 = timegm(a3);
LABEL_11:
      v11 = v8;
      localtime_r(&v11, a3);
    }
  }

  return v7;
}

uint64_t _strptime0(char *a1, unsigned __int8 *a2, tm *a3, _DWORD *a4, _xlocale *a5)
{
  current_time_locale = __get_current_time_locale(a5);
  v11 = *a2;
  if (!*a2)
  {
    return a1;
  }

  v190 = 0;
  v12 = &__global_locale;
  if (a5 != -1)
  {
    v12 = a5;
  }

  if (a5)
  {
    v13 = v12;
  }

  else
  {
    v13 = __c_locale;
  }

  v182 = current_time_locale + 24;
  v183 = (current_time_locale + 44);
  v184 = 85;
  v189 = 1;
  v185 = current_time_locale;
  v188 = v13;
  while (2)
  {
    ++a2;
    if (v11 != 37)
    {
      if ((v11 & 0x80) != 0)
      {
        runetype = (*(*(v13 + 166) + 120) + 60);
      }

      else
      {
        runetype = _DefaultRuneLocale.__runetype;
      }

      if ((runetype[v11] & 0x4000) != 0)
      {
        v27 = *a1;
        if (*a1)
        {
          do
          {
            if ((v27 & 0x80) != 0)
            {
              v28 = (*(*(v13 + 166) + 120) + 60);
            }

            else
            {
              v28 = _DefaultRuneLocale.__runetype;
            }

            if ((v28[v27] & 0x4000) == 0)
            {
              break;
            }

            v29 = *++a1;
            v27 = v29;
          }

          while (v29);
        }

        goto LABEL_399;
      }

      v26 = *a1++;
      if (v11 == v26)
      {
        goto LABEL_399;
      }

      return 0;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = *a2;
    v18 = 1;
LABEL_10:
    if (v17 == 48)
    {
      goto LABEL_16;
    }

    v19 = a2 + 1;
    if (v17 != 43)
    {
      goto LABEL_17;
    }

    v20 = *v19;
    v21 = 43;
    if (!*v19 || v20 == 37)
    {
      goto LABEL_30;
    }

    if (v20 < 0)
    {
      if ((___runetype_l(v20, a5) & 0x4000) == 0)
      {
        goto LABEL_16;
      }

LABEL_30:
      LOBYTE(v17) = 43;
      goto LABEL_31;
    }

    if ((_DefaultRuneLocale.__runetype[v20] & 0x4000) != 0)
    {
      goto LABEL_30;
    }

LABEL_16:
    v19 = a2 + 2;
    LOBYTE(v17) = a2[1];
LABEL_17:
    v21 = v17;
    if ((v17 & 0x80) != 0)
    {
      if ((___runetype_l(v17, a5) & 0x400) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

LABEL_31:
    if ((_DefaultRuneLocale.__runetype[v21] & 0x400) == 0)
    {
LABEL_32:
      a2 = v19;
      goto LABEL_33;
    }

LABEL_19:
    v16 = v21 - 48;
    LOBYTE(v22) = *v19;
    if (!*v19)
    {
      LOBYTE(v17) = 0;
      goto LABEL_28;
    }

    while ((v22 & 0x80) == 0)
    {
      if ((_DefaultRuneLocale.__runetype[v22] & 0x400) == 0)
      {
        goto LABEL_27;
      }

LABEL_24:
      v23 = v19 + 1;
      v22 = v19[1];
      v16 = *v19++ + 10 * v16 - 48;
      if (!v22)
      {
        LOBYTE(v17) = 0;
        v19 = v23;
        goto LABEL_28;
      }
    }

    if ((___runetype_l(v22, a5) & 0x400) != 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    LOBYTE(v17) = *v19;
LABEL_28:
    a2 = v19 + 1;
LABEL_33:
    result = 0;
    switch(v17)
    {
      case '%':
        v70 = *a1++;
        if (v70 != 37)
        {
          return 0;
        }

        goto LABEL_172;
      case '+':
        result = _strptime0(a1, v185[43], a3, a4, a5);
        if (!result)
        {
          return result;
        }

        a1 = result;
        v189 |= 0x36u;
        goto LABEL_172;
      case 'A':
      case 'a':
        v40 = 0;
        for (i = v182; ; ++i)
        {
          v42 = i[7];
          v43 = j__strsignal_r(v42, v9, v10);
          if (!strncasecmp_l(a1, v42, v43, a5))
          {
            break;
          }

          v44 = *i;
          v43 = j__strsignal_r(*i, v9, v10);
          if (!strncasecmp_l(a1, v44, v43, a5))
          {
            break;
          }

          if (--v40 == -7)
          {
            return 0;
          }
        }

        v13 = v188;
        a1 += v43;
        a3->tm_wday = -v40;
        v55 = v189 | 0x20;
        goto LABEL_104;
      case 'B':
      case 'b':
      case 'h':
        v31 = 0;
        v32 = v183;
        do
        {
          if (v18)
          {
            v33 = *(v32 - 32);
          }

          else
          {
            if (v17 != 66)
            {
              goto LABEL_61;
            }

            v33 = *v32;
          }

          v34 = j__strsignal_r(v33, v9, v10);
          if (!strncasecmp_l(a1, v33, v34, a5))
          {
            v35 = -v31;
            v13 = v188;
            goto LABEL_103;
          }

LABEL_61:
          --v31;
          ++v32;
        }

        while (v31 != -12);
        if (v15)
        {
          return 0;
        }

        v35 = 0;
        v13 = v188;
        while (1)
        {
          v36 = v185[v35];
          v34 = j__strsignal_r(v36, v9, v10);
          if (!strncasecmp_l(a1, v36, v34, a5))
          {
            break;
          }

          if (++v35 == 12)
          {
            return 0;
          }
        }

LABEL_103:
        a3->tm_mon = v35;
        a1 += v34;
        v55 = v189 | 4;
LABEL_104:
        v189 = v55;
LABEL_399:
        v11 = *a2;
        if (*a2)
        {
          continue;
        }

        if ((v189 & 0xA) != 2)
        {
          v152 = a3;
          goto LABEL_415;
        }

        v152 = a3;
        if ((~v189 & 0x14) != 0)
        {
          if ((v189 & 0x40) == 0)
          {
            goto LABEL_415;
          }

          v155 = v184 != 85;
          wday_of = first_wday_of(a3->tm_year + 1900);
          if (v190 || v155 != wday_of)
          {
            if ((v189 & 0x20) != 0)
            {
              tm_wday = a3->tm_wday;
            }

            else
            {
              a3->tm_wday = v155;
              v189 |= 0x20u;
              tm_wday = v184 != 85;
            }

            v178 = (v155 - wday_of + 7 - 7 * ((((v155 - wday_of + 7 - ((37 * (v155 - wday_of + 7)) >> 8)) >> 1) + ((37 * (v155 - wday_of + 7)) >> 8)) >> 2));
            if ((wday_of - 2) < 3 && v184 == 86)
            {
              v178 -= 7;
            }

            v180 = v178 - v190 + 8 * v190;
            v181 = v184 == 85 ? 7 : 6;
            v161 = v180 + (v181 + tm_wday) % 7 - 7;
            if (v161 >= 0)
            {
              v152 = a3;
              goto LABEL_414;
            }
          }

          return 0;
        }

        tm_year = a3->tm_year;
        if ((tm_year & 3) != 0)
        {
          v154 = 0;
        }

        else
        {
          v158 = -1030792151 * (tm_year + 1900) + 85899344;
          HIDWORD(v159) = v158;
          LODWORD(v159) = v158;
          if ((v159 >> 2) <= 0x28F5C28)
          {
            HIDWORD(v160) = v158;
            LODWORD(v160) = v158;
            v154 = (v160 >> 4) < 0xA3D70B;
          }

          else
          {
            v154 = 1;
          }
        }

        v161 = _strptime0_start_of_month[13 * v154 + a3->tm_mon] + a3->tm_mday - 1;
LABEL_414:
        v152->tm_yday = v161;
        v189 |= 8u;
LABEL_415:
        if ((~v189 & 0xA) != 0)
        {
          return a1;
        }

        if ((v189 & 4) != 0)
        {
          if ((v189 & 0x10) != 0)
          {
            goto LABEL_428;
          }
        }

        else
        {
          tm_yday = v152->tm_yday;
          v163 = v152->tm_year;
          HIDWORD(v165) = -1030792151 * v163 + 85899420;
          LODWORD(v165) = HIDWORD(v165);
          v164 = v165 >> 2;
          LODWORD(v165) = HIDWORD(v165);
          v166 = v165 >> 4;
          v168 = v164 > 0x28F5C28 || v166 < 0xA3D70B;
          v169 = (v152->tm_year & 3) == 0 && v168;
          v170 = &_strptime0_start_of_month[13 * v169];
          v171 = -1;
          do
          {
            v172 = *v170++;
            ++v171;
          }

          while (tm_yday >= v172);
          if (v171 > 0xC)
          {
            v152->tm_yday = tm_yday - _strptime0_start_of_month[13 * v169 + 12];
            v152->tm_year = v163 + 1;
            LODWORD(v171) = 1;
          }

          v152->tm_mon = v171 - 1;
          if ((v189 & 0x10) != 0)
          {
LABEL_428:
            if ((v189 & 0x20) == 0)
            {
              goto LABEL_429;
            }

            return a1;
          }
        }

        v173 = v152->tm_year;
        if ((v173 & 3) != 0)
        {
          v174 = 0;
        }

        else
        {
          v175 = -1030792151 * (v173 + 1900) + 85899344;
          HIDWORD(v176) = v175;
          LODWORD(v176) = v175;
          if ((v176 >> 2) <= 0x28F5C28)
          {
            HIDWORD(v177) = v175;
            LODWORD(v177) = v175;
            v174 = (v177 >> 4) < 0xA3D70B;
          }

          else
          {
            v174 = 1;
          }
        }

        v152->tm_mday = v152->tm_yday - _strptime0_start_of_month[13 * v174 + v152->tm_mon] + 1;
        if ((v189 & 0x20) == 0)
        {
LABEL_429:
          v152->tm_wday = (v152->tm_yday + first_wday_of(v152->tm_year + 1900)) % 7;
        }

        return a1;
      case 'C':
        if (*a1 < 0)
        {
          v13 = v188;
          v72 = (*(*(v188 + 166) + 120) + 60);
        }

        else
        {
          v72 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        v106 = *a1;
        if ((v72[*a1] & 0x400) != 0)
        {
          v107 = 0;
          if (v16)
          {
            v108 = v16;
          }

          else
          {
            v108 = 2;
          }

          if (v106 == 43)
          {
LABEL_314:
            ++a1;
            if (!--v108)
            {
              v129 = 0;
              goto LABEL_324;
            }

LABEL_315:
            v129 = 0;
            v130 = &a1[v108 - 1 + 1];
            do
            {
              v131 = *a1;
              if (!*a1)
              {
                goto LABEL_324;
              }

              v132 = (v131 & 0x80) != 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
              if ((v132[v131] & 0x400) == 0)
              {
                goto LABEL_324;
              }

              v129 = v131 + 10 * v129 - 48;
              ++a1;
              --v108;
            }

            while (v108);
            a1 = v130;
LABEL_324:
            if (v107)
            {
              v133 = -v129;
            }

            else
            {
              v133 = v129;
            }

            v134 = 100 * v133;
            if ((v189 & 0x200) != 0)
            {
              a3->tm_year = v134 + a3->tm_year % 100 - 1900;
              v135 = v189 & 0xFFFFFDFF;
            }

            else
            {
              a3->tm_year = v134 - 1900;
              v135 = v189 | 0x102;
            }

            v189 = v135;
            goto LABEL_399;
          }

          if (v106 != 45)
          {
            goto LABEL_315;
          }
        }

        else
        {
          if (v106 != 45)
          {
            if (v106 == 43)
            {
              v107 = 0;
              if (v16)
              {
                v108 = v16;
              }

              else
              {
                v108 = 2;
              }

              goto LABEL_314;
            }

            return 0;
          }

          if (v16)
          {
            v108 = v16;
          }

          else
          {
            v108 = 2;
          }
        }

        v107 = 1;
        goto LABEL_314;
      case 'D':
        v69 = "%m/%d/%y";
        goto LABEL_143;
      case 'E':
        if ((v14 | v15))
        {
          goto LABEL_172;
        }

        v15 = 0;
        v17 = *a2;
        v14 = 1;
        v18 = 1;
        goto LABEL_38;
      case 'F':
        v69 = "%Y-%m-%d";
        goto LABEL_143;
      case 'H':
      case 'I':
      case 'k':
      case 'l':
        if (*a1 < 0)
        {
          v13 = v188;
          v30 = (*(*(v188 + 166) + 120) + 60);
        }

        else
        {
          v30 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        if ((v30[*a1] & 0x400) == 0)
        {
          return 0;
        }

        v50 = 0;
        if (v16)
        {
          v51 = v16;
        }

        else
        {
          v51 = 2;
        }

        v52 = &a1[v51 - 1 + 1];
        do
        {
          v53 = *a1;
          if (!*a1)
          {
            goto LABEL_97;
          }

          v54 = (v53 & 0x80) != 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v54[v53] & 0x400) == 0)
          {
            goto LABEL_97;
          }

          v50 = v53 + 10 * v50 - 48;
          ++a1;
          --v51;
        }

        while (v51);
        a1 = v52;
LABEL_97:
        if (v17 == 107 || v17 == 72)
        {
          if (v50 > 23)
          {
            return 0;
          }
        }

        else if (v50 > 12)
        {
          return 0;
        }

        a3->tm_hour = v50;
        goto LABEL_399;
      case 'M':
      case 'S':
        v46 = *a1;
        if (!*a1)
        {
          goto LABEL_172;
        }

        v13 = v188;
        if ((v46 & 0x80) != 0)
        {
          v47 = (*(*(v188 + 166) + 120) + 4 * v46);
        }

        else
        {
          v47 = &_DefaultRuneLocale.__magic[4 * v46];
        }

        v91 = *(v47 + 15);
        if ((v91 & 0x4000) != 0)
        {
          goto LABEL_399;
        }

        if ((v91 & 0x400) == 0)
        {
          return 0;
        }

        v92 = 0;
        if (v16)
        {
          v93 = v16;
        }

        else
        {
          v93 = 2;
        }

        v94 = &a1[v93 - 1 + 1];
        do
        {
          v95 = *a1;
          if (!*a1)
          {
            goto LABEL_213;
          }

          v96 = (v95 & 0x80) != 0 ? (*(*(v188 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v96[v95] & 0x400) == 0)
          {
            goto LABEL_213;
          }

          v92 = v95 + 10 * v92 - 48;
          ++a1;
          --v93;
        }

        while (v93);
        a1 = v94;
LABEL_213:
        if (v17 == 77)
        {
          if (v92 <= 59)
          {
            a3->tm_min = v92;
            goto LABEL_399;
          }
        }

        else if (v92 <= 60)
        {
          a3->tm_sec = v92;
          goto LABEL_399;
        }

        return 0;
      case 'O':
        if ((v14 | v15))
        {
          goto LABEL_172;
        }

        v14 = 0;
        v18 = 0;
        v17 = *a2;
        v15 = 1;
LABEL_38:
        if (v17 == 37)
        {
          return 0;
        }

        goto LABEL_10;
      case 'R':
        v71 = "%H:%M";
        goto LABEL_170;
      case 'T':
        v71 = "%H:%M:%S";
        goto LABEL_170;
      case 'U':
      case 'V':
      case 'W':
        if (*a1 < 0)
        {
          v13 = v188;
          v37 = (*(*(v188 + 166) + 120) + 60);
        }

        else
        {
          v37 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        if ((v37[*a1] & 0x400) == 0)
        {
          return 0;
        }

        v190 = 0;
        v184 = v17;
        if (v16)
        {
          v56 = v16;
        }

        else
        {
          v56 = 2;
        }

        v57 = &a1[v56 - 1 + 1];
        do
        {
          v58 = *a1;
          if (!*a1)
          {
            goto LABEL_120;
          }

          v59 = (v58 & 0x80) != 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v59[v58] & 0x400) == 0)
          {
            goto LABEL_120;
          }

          v190 = v58 + 10 * v190 - 48;
          ++a1;
          --v56;
        }

        while (v56);
        a1 = v57;
LABEL_120:
        if (v190 > 53 || v17 == 86 && v190 < 1)
        {
          return 0;
        }

        v60 = v189 | 0x40;
        goto LABEL_398;
      case 'X':
        v71 = v185[38];
        goto LABEL_170;
      case 'Y':
      case 'y':
        v48 = *a1;
        if (!*a1)
        {
          goto LABEL_172;
        }

        v13 = v188;
        if ((v48 & 0x80) != 0)
        {
          v49 = (*(*(v188 + 166) + 120) + 4 * v48);
        }

        else
        {
          v49 = &_DefaultRuneLocale.__magic[4 * v48];
        }

        v97 = *(v49 + 15);
        if ((v97 & 0x4000) != 0)
        {
          goto LABEL_399;
        }

        if ((v97 & 0x400) != 0)
        {
          v98 = 0;
          v99 = v17 == 89;
          if (v17 == 89)
          {
            v100 = 4;
          }

          else
          {
            v100 = 2;
          }

          if (v16)
          {
            v100 = v16;
          }

          if (v48 == 43)
          {
            goto LABEL_372;
          }

          if (v48 != 45)
          {
            goto LABEL_373;
          }
        }

        else
        {
          if (v48 != 45)
          {
            if (v48 != 43)
            {
              return 0;
            }

            v98 = 0;
            v99 = v17 == 89;
            if (v17 == 89)
            {
              v100 = 4;
            }

            else
            {
              v100 = 2;
            }

            if (v16)
            {
              v100 = v16;
            }

LABEL_372:
            ++a1;
            if (!--v100)
            {
              v148 = 0;
              if (v99)
              {
LABEL_386:
                v148 -= 1900;
                v149 = 1;
                v150 = v189;
LABEL_395:
                a3->tm_year = v148;
                if (v149)
                {
                  v60 = v150 & 0xFFFFFCFD | 2;
                }

                else
                {
                  v60 = v150 | 2;
                }

LABEL_398:
                v189 = v60;
                goto LABEL_399;
              }

LABEL_388:
              v150 = v189;
              if (v17 == 121 && (v189 & 0x100) != 0)
              {
                v149 = 0;
                v148 = a3->tm_year + v148 % 100;
                v150 = v189 & 0xFFFFFEFF;
              }

              else
              {
                v151 = v148 + 100;
                if (v148 >= 69)
                {
                  v151 = v148;
                }

                v149 = 0;
                if (v17 == 121)
                {
                  v148 = v151;
                  v150 = v189 | 0x200;
                }
              }

              goto LABEL_395;
            }

LABEL_373:
            v144 = 0;
            v145 = &a1[v100 - 1 + 1];
            do
            {
              v146 = *a1;
              if (!*a1)
              {
                goto LABEL_381;
              }

              v147 = (v146 & 0x80) != 0 ? (*(*(v188 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
              if ((v147[v146] & 0x400) == 0)
              {
                goto LABEL_381;
              }

              v144 = v146 + 10 * v144 - 48;
              ++a1;
              --v100;
            }

            while (v100);
            a1 = v145;
LABEL_381:
            if (v144 < 0)
            {
              return 0;
            }

            if (v98)
            {
              v148 = -v144;
            }

            else
            {
              v148 = v144;
            }

            if (v99)
            {
              goto LABEL_386;
            }

            goto LABEL_388;
          }

          v99 = v17 == 89;
          if (v17 == 89)
          {
            v143 = 4;
          }

          else
          {
            v143 = 2;
          }

          if (v16)
          {
            v100 = v16;
          }

          else
          {
            v100 = v143;
          }
        }

        v98 = 1;
        goto LABEL_372;
      case 'Z':
        v75 = *a1;
        v76 = a1;
        v13 = v188;
        if (*a1)
        {
          do
          {
            if ((v75 & 0x80) != 0)
            {
              v77 = (*(*(v188 + 166) + 120) + 60);
            }

            else
            {
              v77 = _DefaultRuneLocale.__runetype;
            }

            if ((v77[v75] & 0x8000) == 0)
            {
              break;
            }

            v78 = *++v76;
            v75 = v78;
          }

          while (v78);
          v79 = v76 - a1;
          if (v16)
          {
            v80 = v16;
          }

          else
          {
            v80 = v79;
          }

          if (v80 == 3)
          {
            if (*a1 == 71 && a1[1] == 77 && a1[2] == 84)
            {
              *a4 = 1;
              a1 += 3;
              goto LABEL_399;
            }

            v80 = 3;
          }
        }

        else
        {
          v80 = v16;
        }

        tzset();
        v121 = tzname[0];
        if (v80 == j__strsignal_r(tzname[0], v122, v123) && !j__strsvisx(a1, v121, v80, v124, v125))
        {
          a3->tm_isdst = 0;
        }

        else
        {
          v126 = off_1ED3F0C18;
          if (v80 != j__strsignal_r(off_1ED3F0C18, v9, v10) || j__strsvisx(a1, v126, v80, v127, v128))
          {
            return 0;
          }

          a3->tm_isdst = 1;
        }

LABEL_309:
        a1 += v80;
        goto LABEL_399;
      case 'c':
        result = _strptime0(a1, v185[40], a3, a4, a5);
        if (!result)
        {
          return result;
        }

        a1 = result;
        v61 = v189 & 0xFFFFFCFF;
        v62 = 54;
        goto LABEL_145;
      case 'd':
        v13 = v188;
        goto LABEL_333;
      case 'e':
        v73 = *a1;
        if (*a1)
        {
          v13 = v188;
          if ((v73 & 0x80) != 0)
          {
            v74 = (*(*(v188 + 166) + 120) + 60);
          }

          else
          {
            v74 = _DefaultRuneLocale.__runetype;
          }

          a1 += (v74[v73] >> 14) & 1;
LABEL_333:
          v109 = *a1;
          if (v16)
          {
            v110 = v16;
          }

          else
          {
            v110 = 2;
          }

          if (*a1 < 0)
          {
            v111 = (*(*(v13 + 166) + 120) + 60);
          }

          else
          {
            v111 = _DefaultRuneLocale.__runetype;
          }
        }

        else
        {
          v109 = 0;
          if (v16)
          {
            v110 = v16;
          }

          else
          {
            v110 = 2;
          }

          v111 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        if ((v111[v109] & 0x4000) != 0)
        {
          v136 = a1[1] < 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v136[a1[1]] & 0x400) != 0)
          {
            if (a1[2] < 0)
            {
              v137 = (*(*(v13 + 166) + 120) + 60);
            }

            else
            {
              v137 = _DefaultRuneLocale.__runetype;
            }

            if ((v137[a1[2]] & 0x400) == 0)
            {
              v110 = 1;
              ++a1;
            }

            v109 = *a1;
          }
        }

        if ((v109 & 0x80) != 0)
        {
          v138 = (*(*(v13 + 166) + 120) + 60);
        }

        else
        {
          v138 = _DefaultRuneLocale.__runetype;
        }

        if ((v138[v109] & 0x400) == 0)
        {
          return 0;
        }

        v139 = 0;
        v140 = &a1[v110 - 1 + 1];
        do
        {
          v141 = *a1;
          if (!*a1)
          {
            goto LABEL_362;
          }

          v142 = (v141 & 0x80) != 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v142[v141] & 0x400) == 0)
          {
            goto LABEL_362;
          }

          v139 = v141 + 10 * v139 - 48;
          ++a1;
          --v110;
        }

        while (v110);
        a1 = v140;
LABEL_362:
        if (v139 > 31)
        {
          return 0;
        }

        a3->tm_mday = v139;
        v60 = v189 | 0x10;
        goto LABEL_398;
      case 'j':
        if (*a1 < 0)
        {
          v13 = v188;
          v81 = (*(*(v188 + 166) + 120) + 60);
        }

        else
        {
          v81 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        if ((v81[*a1] & 0x400) == 0)
        {
          return 0;
        }

        v112 = 0;
        if (v16)
        {
          v113 = v16;
        }

        else
        {
          v113 = 3;
        }

        v114 = &a1[v113 - 1 + 1];
        do
        {
          v115 = *a1;
          if (!*a1)
          {
            goto LABEL_272;
          }

          v116 = (v115 & 0x80) != 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v116[v115] & 0x400) == 0)
          {
            goto LABEL_272;
          }

          v112 = v115 + 10 * v112 - 48;
          ++a1;
          --v113;
        }

        while (v113);
        a1 = v114;
LABEL_272:
        if ((v112 - 367) < 0xFFFFFE92)
        {
          return 0;
        }

        a3->tm_yday = v112 - 1;
        v60 = v189 | 8;
        goto LABEL_398;
      case 'm':
        if (*a1 < 0)
        {
          v13 = v188;
          v68 = (*(*(v188 + 166) + 120) + 60);
        }

        else
        {
          v68 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        if ((v68[*a1] & 0x400) == 0)
        {
          return 0;
        }

        v101 = 0;
        if (v16)
        {
          v102 = v16;
        }

        else
        {
          v102 = 2;
        }

        v103 = &a1[v102 - 1 + 1];
        do
        {
          v104 = *a1;
          if (!*a1)
          {
            goto LABEL_239;
          }

          v105 = (v104 & 0x80) != 0 ? (*(*(v13 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
          if ((v105[v104] & 0x400) == 0)
          {
            goto LABEL_239;
          }

          v101 = v104 + 10 * v101 - 48;
          ++a1;
          --v102;
        }

        while (v102);
        a1 = v103;
LABEL_239:
        if ((v101 - 13) < 0xFFFFFFF4)
        {
          return 0;
        }

        a3->tm_mon = v101 - 1;
        v60 = v189 | 4;
        goto LABEL_398;
      case 'n':
      case 't':
        v38 = *a1;
        if (v38 < 0)
        {
          v86 = __locale_key;
          v87 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v86);
          if (!v87)
          {
            v87 = &__global_locale;
          }

          v39 = (*(v87[166] + 120) + 60);
        }

        else
        {
          v39 = _DefaultRuneLocale.__runetype;
        }

        v13 = v188;
        if ((v39[v38] & 0x4000) == 0)
        {
          return 0;
        }

        --a1;
        do
        {
          v88 = a1[1];
          if (v88 < 0)
          {
            v89 = (*(*(v188 + 166) + 120) + 60);
          }

          else
          {
            v89 = _DefaultRuneLocale.__runetype;
          }

          ++a1;
        }

        while ((v89[v88] & 0x4000) != 0);
        goto LABEL_399;
      case 'p':
        if (a3->tm_hour > 12)
        {
          return 0;
        }

        v82 = v185[41];
        v80 = j__strsignal_r(v82, v9, v10);
        if (strncasecmp_l(a1, v82, v80, a5))
        {
          v83 = v185[42];
          v84 = j__strsignal_r(v83, v9, v10);
          if (!strncasecmp_l(a1, v83, v84, a5))
          {
            tm_hour = a3->tm_hour;
            if (tm_hour != 12)
            {
              a3->tm_hour = tm_hour + 12;
            }

            a1 += v84;
            v13 = v188;
            goto LABEL_399;
          }

          return 0;
        }

        v13 = v188;
        if (a3->tm_hour == 12)
        {
          a3->tm_hour = 0;
        }

        goto LABEL_309;
      case 'r':
        v71 = v185[57];
LABEL_170:
        result = _strptime0(a1, v71, a3, a4, a5);
        if (!result)
        {
          return result;
        }

        a1 = result;
        goto LABEL_172;
      case 's':
        v193 = 0;
        v192 = 0;
        v63 = *__error();
        *__error() = 0;
        v64 = strtol_l(a1, &v193, 10, a5);
        if (*__error() == 34)
        {
          *__error() = v63;
        }

        else
        {
          v192 = v64;
          *__error() = v63;
          a1 = v193;
          if (gmtime_r(&v192, a3))
          {
            *a4 = 1;
            v65 = v189 & 0xFFFFFCC1 | 0x3E;
LABEL_146:
            v189 = v65;
LABEL_172:
            v13 = v188;
            goto LABEL_399;
          }
        }

        return 0;
      case 'u':
      case 'w':
        if (*a1 < 0)
        {
          v13 = v188;
          v45 = (*(*(v188 + 166) + 120) + 60);
        }

        else
        {
          v45 = _DefaultRuneLocale.__runetype;
          v13 = v188;
        }

        v90 = *a1;
        if ((v45[v90] & 0x400) == 0 || (v90 - 56) < 0xF8u || v17 == 117 && v90 < 0x31 || v17 == 119 && v90 > 0x36)
        {
          return 0;
        }

        a3->tm_wday = (v90 - 48) % 7u;
        v189 |= 0x20u;
        ++a1;
        goto LABEL_399;
      case 'x':
        v69 = v185[39];
LABEL_143:
        result = _strptime0(a1, v69, a3, a4, a5);
        if (!result)
        {
          return result;
        }

        a1 = result;
        v61 = v189 & 0xFFFFFCFF;
        v62 = 22;
LABEL_145:
        v65 = v61 | v62;
        goto LABEL_146;
      case 'z':
        v191 = 0;
        LODWORD(v193) = 0;
        LODWORD(v192) = 0;
        v66 = *a1;
        v13 = v188;
        if (v66 != 45 && v66 != 43)
        {
          return 0;
        }

        v67 = a1[1] < 0 ? (*(*(v188 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
        if ((v67[a1[1]] & 0x400) == 0)
        {
          return 0;
        }

        v117 = a1[2] < 0 ? (*(*(v188 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
        if ((v117[a1[2]] & 0x400) == 0)
        {
          return 0;
        }

        v118 = a1[3] < 0 ? (*(*(v188 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
        if ((v118[a1[3]] & 0x400) == 0)
        {
          return 0;
        }

        v119 = a1[4] < 0 ? (*(*(v188 + 166) + 120) + 60) : _DefaultRuneLocale.__runetype;
        if ((v119[a1[4]] & 0x400) == 0)
        {
          return 0;
        }

        sscanf(a1, "%c%2d%2d", &v191, &v193, &v192);
        *a4 = 2;
        v120 = 60 * (v192 + 60 * v193);
        a3->tm_gmtoff = v120;
        if (v191 == 45)
        {
          a3->tm_gmtoff = -v120;
        }

        a1 += 5;
        goto LABEL_399;
      default:
        return result;
    }
  }
}