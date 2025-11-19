_DWORD *write_bitdepth_colorspace_sampling(_DWORD *result, uint64_t a2)
{
  if (result[4539] < 2u)
  {
    goto LABEL_15;
  }

  v2 = result[4540];
  v3 = *a2;
  if (*a2)
  {
LABEL_10:
    v11 = result + 71;
    v12 = (a2 + 8);
    v13 = (a2 + 16);
    v14 = (a2 + 24);
    goto LABEL_43;
  }

  v4 = *(a2 + 8);
  if (v4 >= 0)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v4 + 7;
  }

  v6 = v5 >> 3;
  if (*(a2 + 16) <= v6)
  {
    v3 = 1;
    *a2 = 1;
    goto LABEL_10;
  }

  v7 = v5 & 0xFFFFFFF8;
  v8 = *(a2 + 24);
  v9 = v4 - v7;
  if (v9)
  {
    v10 = *(v8 + v6) | ((v2 != 10) << (7 - v9));
  }

  else if (v2 == 10)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    LOBYTE(v10) = 0x80;
  }

  *(v8 + v6) = v10;
  *(a2 + 8) = v4 + 1;
LABEL_15:
  v14 = (a2 + 24);
  v3 = *a2;
  v15 = result[71];
  v12 = (a2 + 8);
  v13 = (a2 + 16);
  if (*a2)
  {
    if (v15 == 7)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

  v11 = result + 71;
  v16 = *v12;
  if (*v12 >= 0)
  {
    v17 = *v12;
  }

  else
  {
    v17 = *v12 + 7;
  }

  v18 = v17 >> 3;
  if (*v13 <= v18)
  {
    goto LABEL_41;
  }

  v19 = v16 - (v17 & 0xFFFFFFF8);
  if (v19)
  {
    v20 = ((v15 >> 2) & 1) << (7 - v19);
    v21 = *v14;
    v22 = *(*v14 + v18) | v20;
  }

  else
  {
    v22 = ((result[71] & 4) != 0) << 7;
    v21 = *v14;
  }

  *(v21 + v18) = v22;
  v23 = v16 << 32;
  v24 = v23 + 0x100000000;
  *(a2 + 8) = (v23 + 0x100000000) >> 32;
  if (*a2)
  {
    goto LABEL_42;
  }

  v25 = HIDWORD(v24);
  v26 = (v24 & 0x8000000000000000) == 0 ? (v23 + 0x100000000) >> 32 : HIDWORD(v24) + 7;
  v27 = v26 >> 3;
  if (*v13 <= v27)
  {
    goto LABEL_41;
  }

  v28 = v25 - (v26 & 0xFFFFFFF8);
  if (v28)
  {
    v29 = *v14;
    v30 = *(*v14 + v27) | (((v15 >> 1) & 1) << (7 - v28));
  }

  else
  {
    v30 = ((v15 & 2) != 0) << 7;
    v29 = *v14;
  }

  *(v29 + v27) = v30;
  v31 = v23 + 0x200000000;
  *(a2 + 8) = (v23 + 0x200000000) >> 32;
  if (*a2)
  {
    goto LABEL_42;
  }

  v32 = HIDWORD(v31);
  v33 = (v31 & 0x8000000000000000) == 0 ? (v23 + 0x200000000) >> 32 : HIDWORD(v31) + 7;
  v34 = v33 >> 3;
  if (*v13 <= v34)
  {
LABEL_41:
    *a2 = 1;
  }

  else
  {
    v35 = v15 & 1;
    v36 = v32 - (v33 & 0xFFFFFFF8);
    if (v36)
    {
      v37 = v35 << (7 - v36);
      v38 = *v14;
      v39 = *(*v14 + v34) | v37;
    }

    else
    {
      v39 = v35 << 7;
      v38 = *v14;
    }

    *(v38 + v34) = v39;
    *v12 = (v23 + 0x300000000) >> 32;
  }

LABEL_42:
  v3 = *a2;
LABEL_43:
  if (*v11 == 7)
  {
LABEL_17:
    if (v3)
    {
      return result;
    }

    goto LABEL_73;
  }

LABEL_44:
  if (!v3)
  {
    v40 = *v12;
    if (*v12 >= 0)
    {
      v41 = *v12;
    }

    else
    {
      v41 = *v12 + 7;
    }

    v42 = v41 >> 3;
    if (*v13 > v42)
    {
      v43 = result[72];
      v44 = v40 - (v41 & 0xFFFFFFF8);
      if (v44)
      {
        v45 = v43 << (7 - v44);
        v46 = *v14;
        v47 = *(*v14 + v42) | v45;
      }

      else
      {
        v47 = v43 << 7;
        v46 = *v14;
      }

      *(v46 + v42) = v47;
      *v12 = v40 + 1;
      if ((result[4539] | 2) != 3)
      {
        return result;
      }

      goto LABEL_53;
    }

    *a2 = 1;
  }

  if ((result[4539] | 2) != 3)
  {
    return result;
  }

LABEL_53:
  if (*a2)
  {
    return result;
  }

  v48 = *v12;
  if (*v12 >= 0)
  {
    v49 = *v12;
  }

  else
  {
    v49 = *v12 + 7;
  }

  v50 = v49 >> 3;
  if (*v13 <= v50)
  {
    goto LABEL_79;
  }

  v51 = result[79];
  v52 = v48 - (v49 & 0xFFFFFFF8);
  if (v52)
  {
    v53 = v51 << (7 - v52);
    v54 = *v14;
    v55 = *(*v14 + v50) | v53;
  }

  else
  {
    v55 = v51 << 7;
    v54 = *v14;
  }

  *(v54 + v50) = v55;
  v56 = v48 << 32;
  v57 = v56 + 0x100000000;
  *(a2 + 8) = (v56 + 0x100000000) >> 32;
  if (!*a2)
  {
    v58 = HIDWORD(v57);
    if ((v57 & 0x8000000000000000) == 0)
    {
      v59 = (v56 + 0x100000000) >> 32;
    }

    else
    {
      v59 = HIDWORD(v57) + 7;
    }

    v60 = v59 >> 3;
    if (*v13 <= v60)
    {
      goto LABEL_79;
    }

    v61 = result[80];
    v62 = v58 - (v59 & 0xFFFFFFF8);
    if (v62)
    {
      v63 = v61 << (7 - v62);
      v64 = *v14;
      v65 = *(*v14 + v60) | v63;
    }

    else
    {
      v65 = v61 << 7;
      v64 = *v14;
    }

    *(v64 + v60) = v65;
    *(a2 + 8) = (v56 + 0x200000000) >> 32;
    if (!*a2)
    {
LABEL_73:
      v66 = *v12;
      v67 = *v12 + 7;
      if (*v12 >= 0)
      {
        v67 = *v12;
      }

      v68 = v67 >> 3;
      if (*v13 > v68)
      {
        if ((v66 & 7) == 0)
        {
          *(*v14 + v68) = 0;
        }

        *v12 = v66 + 1;
        return result;
      }

LABEL_79:
      *a2 = 1;
    }
  }

  return result;
}

_DWORD *write_frame_size(_DWORD *result, int *a2)
{
  if (!*a2)
  {
    v2 = 0;
    v3 = result[73] - 1;
    for (i = 17; i > 1; --i)
    {
      if (!v2)
      {
        v5 = *(a2 + 1);
        if (v5 >= 0)
        {
          v6 = *(a2 + 1);
        }

        else
        {
          v6 = v5 + 7;
        }

        v7 = v6 >> 3;
        if (*(a2 + 2) <= v7)
        {
          *a2 = 1;
        }

        else
        {
          v8 = (v3 >> (i - 2)) & 1;
          v9 = v5 - (v6 & 0xFFFFFFF8);
          if (v9)
          {
            v10 = v8 << (7 - v9);
            v11 = *(a2 + 3);
            v12 = *(v11 + v7) | v10;
          }

          else
          {
            v12 = v8 << 7;
            v11 = *(a2 + 3);
          }

          *(v11 + v7) = v12;
          *(a2 + 1) = v5 + 1;
        }
      }

      v2 = *a2;
    }

    if (!v2)
    {
      v26 = result[74] - 1;
      v27 = 16;
LABEL_31:
      v28 = *(a2 + 1);
      if (v28 >= 0)
      {
        v29 = *(a2 + 1);
      }

      else
      {
        v29 = v28 + 7;
      }

      v30 = v29 >> 3;
      if (*(a2 + 2) <= v30)
      {
        *a2 = 1;
        while (1)
        {
          v36 = v27-- != 0;
          if (v27 == 0 || !v36)
          {
            break;
          }

LABEL_40:
          if (!*a2)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v31 = (v26 >> (v27 - 1)) & 1;
        v32 = v28 - (v29 & 0xFFFFFFF8);
        if (v32)
        {
          v33 = v31 << (7 - v32);
          v34 = *(a2 + 3);
          v35 = *(v34 + v30) | v33;
        }

        else
        {
          v35 = v31 << 7;
          v34 = *(a2 + 3);
        }

        *(v34 + v30) = v35;
        *(a2 + 1) = v28 + 1;
        v36 = v27-- != 0;
        if (v27 != 0 && v36)
        {
          goto LABEL_40;
        }
      }
    }
  }

  if (result[73] == result[75])
  {
    v13 = result[74];
    v14 = result[76];
    if (!*a2)
    {
      v15 = *(a2 + 1);
      if (v15 >= 0)
      {
        v16 = *(a2 + 1);
      }

      else
      {
        v16 = v15 + 7;
      }

      v17 = v16 >> 3;
      if (*(a2 + 2) > v17)
      {
        v18 = v16 & 0xFFFFFFF8;
        v19 = *(a2 + 3);
        v20 = v15 - v18;
        if (v20)
        {
          v21 = *(v19 + v17) | ((v13 != v14) << (7 - v20));
        }

        else if (v13 == v14)
        {
          LOBYTE(v21) = 0;
        }

        else
        {
          LOBYTE(v21) = 0x80;
        }

        *(v19 + v17) = v21;
        *(a2 + 1) = v15 + 1;
        if (v13 == v14)
        {
          return result;
        }

        goto LABEL_47;
      }

      *a2 = 1;
    }

    if (v13 == v14)
    {
      return result;
    }

LABEL_47:
    if (*a2)
    {
      return result;
    }

    goto LABEL_57;
  }

  if (!*a2)
  {
    v22 = *(a2 + 1);
    if (v22 >= 0)
    {
      v23 = *(a2 + 1);
    }

    else
    {
      v23 = v22 + 7;
    }

    v24 = v23 >> 3;
    if (*(a2 + 2) <= v24)
    {
      *a2 = 1;
      return result;
    }

    v25 = v22 - (v23 & 0xFFFFFFF8);
    if (v25)
    {
      *(*(a2 + 3) + v24) |= 1 << (7 - v25);
    }

    else
    {
      *(*(a2 + 3) + v24) = 0x80;
    }

    *(a2 + 1) = v22 + 1;
    if (!*a2)
    {
LABEL_57:
      v37 = 0;
      v38 = result[75] - 1;
      for (j = 17; j > 1; --j)
      {
        if (!v37)
        {
          v40 = *(a2 + 1);
          if (v40 >= 0)
          {
            v41 = *(a2 + 1);
          }

          else
          {
            v41 = v40 + 7;
          }

          v42 = v41 >> 3;
          if (*(a2 + 2) <= v42)
          {
            *a2 = 1;
          }

          else
          {
            v43 = (v38 >> (j - 2)) & 1;
            v44 = v40 - (v41 & 0xFFFFFFF8);
            if (v44)
            {
              v45 = v43 << (7 - v44);
              v46 = *(a2 + 3);
              v47 = *(v46 + v42) | v45;
            }

            else
            {
              v47 = v43 << 7;
              v46 = *(a2 + 3);
            }

            *(v46 + v42) = v47;
            *(a2 + 1) = v40 + 1;
          }
        }

        v37 = *a2;
      }

      if (!v37)
      {
        v48 = result[76] - 1;
        v49 = 16;
LABEL_72:
        v50 = *(a2 + 1);
        if (v50 >= 0)
        {
          v51 = *(a2 + 1);
        }

        else
        {
          v51 = v50 + 7;
        }

        v52 = v51 >> 3;
        if (*(a2 + 2) <= v52)
        {
          *a2 = 1;
        }

        else
        {
          v53 = (v48 >> (v49 - 1)) & 1;
          v54 = v50 - (v51 & 0xFFFFFFF8);
          if (v54)
          {
            v55 = v53 << (7 - v54);
            v56 = *(a2 + 3);
            v57 = *(v56 + v52) | v55;
          }

          else
          {
            v57 = v53 << 7;
            v56 = *(a2 + 3);
          }

          *(v56 + v52) = v57;
          *(a2 + 1) = v50 + 1;
        }

        while (1)
        {
          v36 = v49-- != 0;
          if (v49 == 0 || !v36)
          {
            break;
          }

          if (!*a2)
          {
            goto LABEL_72;
          }
        }
      }
    }
  }

  return result;
}

BOOL encode_tile_worker(uint64_t a1, uint64_t *a2)
{
  *(a2 + 1) = xmmword_273BC4670;
  v4 = (a2 + 2);
  v5 = *a2;
  v6 = a2[1];
  if (v6 >= 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  *(a2 + 8) = 0;
  *(a2 + 9) = v6;
  v7 = *(a1 + 194488);
  a2[5] = v5;
  v17 = *(a2 + 12);
  v18 = 0;
  v8 = (v7 + 3720 * v17);
  if (*(a1 + 172972) && !*(a1 + 172988))
  {
    a2[70] = *(a1 + 176600) + 126;
    v9 = *v8;
    if (*v8 >= v8[1])
    {
      return vpx_stop_encode(v4) == 0;
    }
  }

  else
  {
    a2[70] = &vp9_kf_partition_probs;
    v9 = *v8;
    if (*v8 >= v8[1])
    {
      return vpx_stop_encode(v4) == 0;
    }
  }

  v16 = a1 + 196840;
  do
  {
    v10 = *(v16 + 8 * v17) + 24 * ((v9 - *v8 + 7) >> 3);
    v11 = *v10;
    v18 = *v10;
    v12 = *(v10 + 16);
    a2[87] = 0;
    v13 = v8[2];
    if (v13 < v8[3])
    {
      v14 = (v11 + 16 * v12);
      do
      {
        write_modes_sb(a1, (a2 + 10), v8, v4, &v18, v14, v9, v13, 0xCu, a2 + 13, (a2 + 7));
        v13 += 8;
      }

      while (v13 < v8[3]);
    }

    v9 += 8;
  }

  while (v9 < v8[1]);
  return vpx_stop_encode(v4) == 0;
}

_DWORD *write_modes_sb(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unsigned __int8 **a6, int a7, int a8, unsigned __int8 a9, unsigned int *a10, uint64_t a11)
{
  v11 = (result + 43008);
  v12 = b_width_log2_lookup[a9];
  if (1 << v12 >= 0)
  {
    v13 = 1 << v12;
  }

  else
  {
    v13 = (1 << v12) + 3;
  }

  v14 = result[43252];
  if (v14 <= a7)
  {
    return result;
  }

  v16 = result[43254];
  if (v16 <= a8)
  {
    return result;
  }

  v18 = partition_lookup[13 * b_width_log2_lookup[a9] + **(*(result + 21647) + 8 * (a8 + result[43255] * a7))];
  v19 = v13 >> 2;
  v20 = a2 + (a7 & 7);
  v88 = a8;
  v21 = (*(*(a2 + 608) + a8) >> mi_width_log2_lookup[a9]) & 1 | (2 * ((*(v20 + 616) >> mi_width_log2_lookup[a9]) & 1)) | (4 * mi_width_log2_lookup[a9]);
  v22 = *(a2 + 480) + v21 + 2 * v21;
  v23 = v19 + a7;
  v24 = v19 + a8;
  v25 = v19 + a7 < v14 && v24 < v16;
  v89 = partition_lookup[13 * b_width_log2_lookup[a9] + **(*(result + 21647) + 8 * (a8 + result[43255] * a7))];
  v86 = v19 + a7;
  v87 = v19 + a8;
  if (v25)
  {
    v40 = 0;
    v41 = (&partition_encodings + 8 * v18);
    v42 = *v41;
    v43 = v41[1];
    v45 = *(a4 + 4);
    v44 = *(a4 + 8);
    v46 = *a4;
    while (1)
    {
      --v43;
      v48 = ((v45 - 1) * *(v22 + (v40 >> 1))) >> 8;
      v49 = v45 - (v48 + 1);
      if (((v42 >> v43) & 1) == 0)
      {
        v49 = v48 + 1;
      }

      v47 = (((v42 >> v43 << 31) >> 31) & (v48 + 1)) + v46;
      v50 = vpx_norm[v49];
      v51 = v44 + v50;
      if (v44 + v50 < 0)
      {
        v44 += v50;
        LOBYTE(v51) = vpx_norm[v49];
        goto LABEL_30;
      }

      if (!*(a4 + 12))
      {
        v52 = *(a4 + 16);
        if (((v47 << ~v44) & 0x80000000) != 0)
        {
          v53 = v52 - 1;
          if (v52 >= 1)
          {
            while (1)
            {
              --v52;
              v54 = *(a4 + 24);
              if (*(v54 + v52) != 255)
              {
                break;
              }

              *(v54 + v52) = 0;
              if (v52 <= 0)
              {
                v53 = -1;
                goto LABEL_44;
              }
            }

            v53 = v52;
          }

LABEL_44:
          ++*(*(a4 + 24) + v53);
          v52 = *(a4 + 16);
          if (v52 < *(a4 + 20))
          {
LABEL_45:
            v55 = *(a4 + 24);
            *(a4 + 16) = v52 + 1;
            *(v55 + v52) = v47 >> (v44 + 24);
            goto LABEL_29;
          }
        }

        else if (v52 < *(a4 + 20))
        {
          goto LABEL_45;
        }

        *(a4 + 12) = 1;
      }

LABEL_29:
      v47 = (v47 << -v44) & 0xFFFFFF;
      v44 = v51 - 8;
LABEL_30:
      v45 = v49 << v50;
      v46 = v47 << v51;
      *(a4 + 4) = v45;
      *(a4 + 8) = v44;
      *a4 = v46;
      v40 = vp9_partition_tree[((v42 >> v43) & 1) + v40];
      if (!v43)
      {
        goto LABEL_64;
      }
    }
  }

  v25 = v23 < v14;
  v26 = v23 >= v14;
  if (!v25 && v24 < v16)
  {
    v56 = *(a4 + 4);
    v29 = *(a4 + 8);
    v57 = ((v56 - 1) * *(v22 + 1)) >> 8;
    v31 = v56 - (v57 + 1);
    if (v18 == 3)
    {
      v58 = v57 + 1;
    }

    else
    {
      v31 = v57 + 1;
      v58 = 0;
    }

    v33 = v58 + *a4;
    v34 = vpx_norm[v31];
    v35 = v29 + v34;
    if (v29 + v34 >= 0)
    {
      v36 = -v29;
      if (!*(a4 + 12))
      {
        if (((v33 << ~v29) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        v37 = *(a4 + 16);
        v38 = v37 - 1;
        if (v37 < 1)
        {
LABEL_58:
          ++*(*(a4 + 24) + v38);
LABEL_59:
          v61 = *(a4 + 16);
          if (v61 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v62 = *(a4 + 24);
            *(a4 + 16) = v61 + 1;
            *(v62 + v61) = v33 >> (v29 + 24);
          }

          goto LABEL_62;
        }

        while (1)
        {
          --v37;
          v59 = *(a4 + 24);
          if (*(v59 + v37) != 255)
          {
            break;
          }

          *(v59 + v37) = 0;
          if (v37 <= 0)
          {
LABEL_55:
            v38 = -1;
            goto LABEL_58;
          }
        }

LABEL_57:
        v38 = v37;
        goto LABEL_58;
      }

LABEL_62:
      v33 = (v33 << v36) & 0xFFFFFF;
      v60 = v35 - 8;
      goto LABEL_63;
    }

LABEL_56:
    v60 = v35;
    LOBYTE(v35) = v34;
LABEL_63:
    *(a4 + 4) = v31 << v34;
    *(a4 + 8) = v60;
    *a4 = v33 << v35;
    goto LABEL_64;
  }

  if (v24 < v16)
  {
    v26 = 1;
  }

  if (!v26)
  {
    v28 = *(a4 + 4);
    v29 = *(a4 + 8);
    v30 = ((v28 - 1) * *(v22 + 2)) >> 8;
    v31 = v28 - (v30 + 1);
    if (v18 == 3)
    {
      v32 = v30 + 1;
    }

    else
    {
      v31 = v30 + 1;
      v32 = 0;
    }

    v33 = v32 + *a4;
    v34 = vpx_norm[v31];
    v35 = v29 + v34;
    if (v29 + v34 >= 0)
    {
      v36 = -v29;
      if (!*(a4 + 12))
      {
        if (((v33 << ~v29) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        v37 = *(a4 + 16);
        v38 = v37 - 1;
        if (v37 < 1)
        {
          goto LABEL_58;
        }

        while (1)
        {
          --v37;
          v39 = *(a4 + 24);
          if (*(v39 + v37) != 255)
          {
            goto LABEL_57;
          }

          *(v39 + v37) = 0;
          if (v37 <= 0)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_56;
  }

LABEL_64:
  v63 = subsize_lookup[13 * v89 + a9];
  if (v63 <= 2)
  {
    result = write_modes_b(result, a2, a3, a4, a5, a6, a7, a8, a10, a11);
    v65 = a2;
    if (a9 != 3)
    {
      goto LABEL_66;
    }

    goto LABEL_77;
  }

  v85 = v20;
  if (v89 == 2)
  {
    v73 = result;
    v90 = a2;
    write_modes_b(result, a2, a3, a4, a5, a6, a7, a8, a10, a11);
    v78 = a6;
    v65 = v90;
    v20 = v85;
    if (v87 >= *(v11 + 246))
    {
      goto LABEL_77;
    }

    write_modes_b(v73, v90, a3, a4, a5, v78, a7, v87, a10, a11);
    goto LABEL_76;
  }

  if (v89 == 1)
  {
    v67 = result;
    v90 = a2;
    write_modes_b(result, a2, a3, a4, a5, a6, a7, a8, a10, a11);
    v72 = a6;
    v65 = v90;
    v20 = v85;
    if (v86 >= *(v11 + 244))
    {
      goto LABEL_77;
    }

    write_modes_b(v67, v90, a3, a4, a5, v72, v86, a8, a10, a11);
LABEL_76:
    v65 = v90;
    goto LABEL_77;
  }

  if (v89)
  {
    v84 = result;
    write_modes_sb(result, a2, a3);
    write_modes_sb(v84, a2, a3);
    write_modes_sb(v84, a2, a3);
    result = write_modes_sb(v84, a2, a3);
    v65 = a2;
    if (a9 != 3)
    {
LABEL_66:
      if (v89 == 3)
      {
        return result;
      }
    }
  }

  else
  {
    write_modes_b(result, a2, a3, a4, a5, a6, a7, a8, a10, a11);
    v65 = a2;
  }

LABEL_77:
  v79 = num_8x8_blocks_wide_lookup[a9];
  v80 = &partition_context_lookup[2 * v63];
  memset((*(v65 + 608) + v88), *v80, v79);
  v81 = v80[1];

  return memset((v20 + 616), v81, v79);
}

uint64_t write_modes_b(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unsigned __int8 **a6, int a7, int a8, unsigned int *a9, uint64_t a10)
{
  v12 = a1;
  v13 = *(a1 + 74776);
  v14 = a1 + 172972;
  v15 = (*(a1 + 173176) + 8 * (a8 + *(a1 + 173020) * a7));
  *(a2 + 448) = v15;
  v16 = **v15;
  v17 = num_8x8_blocks_high_lookup[v16];
  result = *(a1 + 173016);
  LODWORD(v16) = num_8x8_blocks_wide_lookup[v16];
  v19 = *(v14 + 36);
  *(a2 + 496) = -64 * a7;
  *(a2 + 500) = (v19 - a7 - v17) << 6;
  *(a2 + 488) = -64 * a8;
  *(a2 + 492) = (result - a8 - v16) << 6;
  if (a7)
  {
    v20 = v15[-*(a2 + 440)];
    *(a2 + 464) = v20;
    if (*(a3 + 8) < a8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = 0;
    *(a2 + 464) = 0;
    if (*(a3 + 8) < a8)
    {
LABEL_3:
      v21 = *(v15 - 1);
      *(a2 + 456) = v21;
      v620 = v12;
      v623 = v21;
      v597 = a6;
      v598 = a5;
      if (!*v14)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v21 = 0;
  *(a2 + 456) = 0;
  v620 = v12;
  v623 = 0;
  v597 = a6;
  v598 = a5;
  if (!*v14)
  {
LABEL_8:
    v22 = *v15;
    v23 = **v15;
    v609 = v22;
    if (*(v14 + 3501) && *(v14 + 3500))
    {
      v24 = v22[4];
      v25 = v14 + 3505;
      v26 = *(a4 + 4);
      v27 = *(a4 + 8);
      v28 = (v24 >> 2) & 1;
      v29 = ((v26 - 1) * *(v14 + 3505)) >> 8;
      v30 = v26 - (v29 + 1);
      if (v28)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 + 1;
      }

      if (v28)
      {
        v32 = v29 + 1;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32 + *a4;
      v34 = vpx_norm[v31];
      v35 = v27 + v34;
      if (v27 + v34 < 0)
      {
        v61 = v27 + v34;
        LOBYTE(v35) = vpx_norm[v31];
      }

      else
      {
        if (!*(a4 + 12))
        {
          v36 = *(a4 + 16);
          if (((v33 << ~v27) & 0x80000000) != 0)
          {
            v37 = v36 - 1;
            if (v36 >= 1)
            {
              while (1)
              {
                --v36;
                v38 = *(a4 + 24);
                if (*(v38 + v36) != 255)
                {
                  break;
                }

                *(v38 + v36) = 0;
                if (v36 <= 0)
                {
                  v37 = -1;
                  goto LABEL_57;
                }
              }

              v37 = v36;
            }

LABEL_57:
            ++*(*(a4 + 24) + v37);
            v36 = *(a4 + 16);
          }

          if (v36 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v82 = *(a4 + 24);
            *(a4 + 16) = v36 + 1;
            *(v82 + v36) = v33 >> (v27 + 24);
          }
        }

        v33 = (v33 << -v27) & 0xFFFFFF;
        v61 = v35 - 8;
      }

      v83 = v31 << v34;
      v84 = v33 << v35;
      *(a4 + 4) = v83;
      *(a4 + 8) = v61;
      *a4 = v84;
      v85 = vp9_segment_tree[v28];
      v86 = ((v83 - 1) * *(v25 + (v85 >> 1))) >> 8;
      v87 = v83 - (v86 + 1);
      if (((v24 >> 1) & 1) == 0)
      {
        v87 = v86 + 1;
      }

      v88 = (((v24 << 30) >> 31) & (v86 + 1)) + v84;
      v89 = vpx_norm[v87];
      v90 = v61 + v89;
      if (v61 + v89 < 0)
      {
        v94 = v61 + v89;
        LOBYTE(v90) = vpx_norm[v87];
      }

      else
      {
        if (!*(a4 + 12))
        {
          v91 = *(a4 + 16);
          if (((v88 << ~v61) & 0x80000000) != 0)
          {
            v92 = v91 - 1;
            if (v91 >= 1)
            {
              while (1)
              {
                --v91;
                v93 = *(a4 + 24);
                if (*(v93 + v91) != 255)
                {
                  break;
                }

                *(v93 + v91) = 0;
                if (v91 <= 0)
                {
                  v92 = -1;
                  goto LABEL_73;
                }
              }

              v92 = v91;
            }

LABEL_73:
            ++*(*(a4 + 24) + v92);
            v91 = *(a4 + 16);
          }

          if (v91 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v95 = *(a4 + 24);
            *(a4 + 16) = v91 + 1;
            *(v95 + v91) = v88 >> (v61 + 24);
          }

          v21 = v623;
        }

        v88 = (v88 << -v61) & 0xFFFFFF;
        v94 = v90 - 8;
      }

      v96 = v87 << v89;
      v97 = v88 << v90;
      *(a4 + 4) = v96;
      *(a4 + 8) = v94;
      *a4 = v97;
      v98 = (v24 << 31) >> 31;
      v99 = ((v96 - 1) * *(v25 + (vp9_segment_tree[((v24 >> 1) & 1) + v85] >> 1))) >> 8;
      if (v24)
      {
        v100 = v96 - (v99 + 1);
      }

      else
      {
        v100 = v99 + 1;
      }

      v101 = (v98 & (v99 + 1)) + v97;
      v102 = vpx_norm[v100];
      v103 = v94 + v102;
      if (v94 + v102 < 0)
      {
        v108 = v94 + v102;
        LOBYTE(v103) = vpx_norm[v100];
        v22 = v609;
      }

      else
      {
        v104 = -v94;
        v22 = v609;
        if (!*(a4 + 12))
        {
          v105 = *(a4 + 16);
          if (((v101 << ~v94) & 0x80000000) != 0)
          {
            v106 = v105 - 1;
            if (v105 >= 1)
            {
              while (1)
              {
                --v105;
                v107 = *(a4 + 24);
                if (*(v107 + v105) != 255)
                {
                  break;
                }

                *(v107 + v105) = 0;
                if (v105 <= 0)
                {
                  v106 = -1;
                  goto LABEL_91;
                }
              }

              v106 = v105;
            }

LABEL_91:
            ++*(*(a4 + 24) + v106);
            v105 = *(a4 + 16);
          }

          if (v105 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v109 = v101 >> (v94 + 24);
            v110 = *(a4 + 24);
            *(a4 + 16) = v105 + 1;
            *(v110 + v105) = v109;
          }
        }

        v101 = (v101 << v104) & 0xFFFFFF;
        v108 = v103 - 8;
      }

      *(a4 + 4) = v100 << v102;
      *(a4 + 8) = v108;
      *a4 = v101 << v103;
    }

    if (*(v14 + 3500) && (*(v12 + 4 * v22[4] + 176552) & 8) != 0)
    {
LABEL_125:
      if (v23 >= 3)
      {
        if (*(v14 + 52) == 4)
        {
          write_selected_tx_size(v12 + 171696, a2, a4);
          v21 = v623;
          v22 = v609;
        }

        if (v20 && v20[8] <= 0)
        {
          v165 = v20 + 44;
          if (*v20 >= 3u)
          {
            v165 = v20 + 1;
          }

          v134 = *v165;
          if (!v21)
          {
            goto LABEL_176;
          }
        }

        else
        {
          v134 = 0;
          if (!v21)
          {
            goto LABEL_176;
          }
        }

        if (v21[8] <= 0)
        {
          v167 = v21 + 32;
          if (*v21 >= 3u)
          {
            v167 = v21 + 1;
          }

          v166 = *v167;
LABEL_180:
          write_intra_mode(a4, v22[1], &vp9_kf_y_mode_prob + 90 * v134 + 9 * v166);
LABEL_181:
          v168 = v609;
          LODWORD(v41) = v609[1];
          v169 = &vp9_kf_uv_mode_prob;
          goto LABEL_182;
        }

LABEL_176:
        v166 = 0;
        goto LABEL_180;
      }

      v135 = 0;
      v136 = num_4x4_blocks_wide_lookup[v23];
      v611 = num_4x4_blocks_high_lookup[v23];
      v137 = v22 + 20;
      v616 = v21 + 20;
      v614 = v21 + 1;
LABEL_134:
      v138 = 0;
      v139 = 2 * v135;
LABEL_136:
      v140 = v138 + v139;
      if (v138 + v139 > 1)
      {
        v141 = v137[12 * v140 - 24];
        if ((v140 & 0xFFFFFFFD) == 0)
        {
          goto LABEL_140;
        }
      }

      else if (v20 && v20[8] <= 0)
      {
        v163 = &v20[12 * (v138 | 2) + 20];
        if (*v20 >= 3u)
        {
          v163 = v20 + 1;
        }

        v141 = *v163;
        if ((v140 & 0xFFFFFFFD) == 0)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v141 = 0;
        if ((v140 & 0xFFFFFFFD) == 0)
        {
LABEL_140:
          if (v623 && v623[8] <= 0)
          {
            v164 = v614;
            if (*v623 < 3u)
            {
              v164 = &v616[12 * (v140 & 2 | 1)];
            }

            v142 = *v164;
          }

          else
          {
            v142 = 0;
          }

          goto LABEL_145;
        }
      }

      v142 = v137[12 * v140 - 12];
LABEL_145:
      v143 = 0;
      v144 = &vp9_kf_y_mode_prob + 90 * v141 + 9 * v142;
      v145 = (&intra_mode_encodings + 8 * v137[12 * v140]);
      v146 = *v145;
      v147 = v145[1];
      v148 = *(a4 + 4);
      v149 = *(a4 + 8);
      v150 = *a4;
      while (1)
      {
        --v147;
        v152 = ((v148 - 1) * v144[v143 >> 1]) >> 8;
        v153 = v152 + 1;
        v154 = v148 - (v152 + 1);
        v155 = (v146 >> v147) & 1;
        if (v155)
        {
          v156 = v154;
        }

        else
        {
          v156 = v152 + 1;
        }

        v151 = (((v146 >> v147 << 31) >> 31) & v153) + v150;
        v157 = vpx_norm[v156];
        v158 = v149 + v157;
        if (v149 + v157 < 0)
        {
          v149 += v157;
          LOBYTE(v158) = vpx_norm[v156];
          goto LABEL_148;
        }

        if (!*(a4 + 12))
        {
          v159 = *(a4 + 16);
          if (((v151 << ~v149) & 0x80000000) != 0)
          {
            v160 = v159 - 1;
            if (v159 >= 1)
            {
              while (1)
              {
                --v159;
                v161 = *(a4 + 24);
                if (*(v161 + v159) != 255)
                {
                  break;
                }

                *(v161 + v159) = 0;
                if (v159 <= 0)
                {
                  v160 = -1;
                  goto LABEL_163;
                }
              }

              v160 = v159;
            }

LABEL_163:
            ++*(*(a4 + 24) + v160);
            v159 = *(a4 + 16);
            if (v159 < *(a4 + 20))
            {
LABEL_164:
              v162 = *(a4 + 24);
              *(a4 + 16) = v159 + 1;
              *(v162 + v159) = v151 >> (v149 + 24);
              goto LABEL_147;
            }
          }

          else if (v159 < *(a4 + 20))
          {
            goto LABEL_164;
          }

          *(a4 + 12) = 1;
        }

LABEL_147:
        v151 = (v151 << -v149) & 0xFFFFFF;
        v149 = v158 - 8;
LABEL_148:
        v148 = v156 << v157;
        v150 = v151 << v158;
        *(a4 + 4) = v148;
        *(a4 + 8) = v149;
        *a4 = v150;
        v143 = vp9_intra_mode_tree[v155 + v143];
        if (!v147)
        {
          v138 += v136;
          if (v138 >= 2)
          {
            v135 += v611;
            if (v135 >= 2)
            {
              goto LABEL_181;
            }

            goto LABEL_134;
          }

          goto LABEL_136;
        }
      }
    }

    v111 = (v14 + 3628);
    v113 = *(a2 + 456);
    v112 = *(a2 + 464);
    if (v112)
    {
      v114 = *(v112 + 3);
      v115 = v22[3];
      v116 = *v111;
      if (!v113)
      {
        goto LABEL_102;
      }
    }

    else
    {
      v114 = 0;
      v115 = v22[3];
      v116 = *v111;
      if (!v113)
      {
LABEL_102:
        v117 = *(v116 + v113 + v114 + 1967);
        v118 = *(a4 + 4);
        v119 = *(a4 + 8);
        v120 = ((v118 - 1) * v117) >> 8;
        v121 = v118 - (v120 + 1);
        v122 = v115 == 0;
        if (v115)
        {
          v123 = v121;
        }

        else
        {
          v123 = v120 + 1;
        }

        if (v122)
        {
          v124 = 0;
        }

        else
        {
          v124 = v120 + 1;
        }

        v125 = v124 + *a4;
        v126 = vpx_norm[v123];
        v127 = v119 + v126;
        if (v119 + v126 < 0)
        {
          v130 = v119 + v126;
          LOBYTE(v127) = vpx_norm[v123];
LABEL_124:
          *(a4 + 4) = v123 << v126;
          *(a4 + 8) = v130;
          *a4 = v125 << v127;
          goto LABEL_125;
        }

        if (*(a4 + 12))
        {
LABEL_123:
          v125 = (v125 << -v119) & 0xFFFFFF;
          v130 = v127 - 8;
          goto LABEL_124;
        }

        if (((v125 << ~v119) & 0x80000000) != 0)
        {
          v131 = *(a4 + 16);
          v132 = v131 - 1;
          if (v131 >= 1)
          {
            while (1)
            {
              --v131;
              v133 = *(a4 + 24);
              if (*(v133 + v131) != 255)
              {
                break;
              }

              *(v133 + v131) = 0;
              if (v131 <= 0)
              {
                v132 = -1;
                goto LABEL_121;
              }
            }

            v132 = v131;
          }

LABEL_121:
          ++*(*(a4 + 24) + v132);
          v128 = *(a4 + 16);
          if (v128 < *(a4 + 20))
          {
            goto LABEL_112;
          }
        }

        else
        {
          v128 = *(a4 + 16);
          if (v128 < *(a4 + 20))
          {
LABEL_112:
            v129 = *(a4 + 24);
            *(a4 + 16) = v128 + 1;
            *(v129 + v128) = v125 >> (v119 + 24);
            goto LABEL_123;
          }
        }

        *(a4 + 12) = 1;
        goto LABEL_123;
      }
    }

    v113 = *(v113 + 3);
    goto LABEL_102;
  }

LABEL_7:
  if (*(v14 + 16))
  {
    goto LABEL_8;
  }

  v621 = (v14 + 3628);
  v39 = *(v14 + 3628);
  v41 = (*v15)[1];
  v42 = (*v15)[4];
  v43 = **v15;
  v44 = *(v14 + 20);
  v40 = *v15;
  v45 = (*v15)[8];
  v603 = (*v15 + 8);
  v610 = *v15;
  v618 = (*v15)[9];
  if (!*(v14 + 3501))
  {
    goto LABEL_458;
  }

  if (!*(v14 + 3504))
  {
    if (!*(v14 + 3500))
    {
      v79 = 0;
      goto LABEL_460;
    }

    v62 = v14 + 3505;
    v63 = *(a4 + 4);
    v64 = *(a4 + 8);
    v65 = (v42 >> 2) & 1;
    v66 = ((v63 - 1) * *(v14 + 3505)) >> 8;
    v67 = v63 - (v66 + 1);
    if (v65)
    {
      v68 = v66 + 1;
    }

    else
    {
      v67 = v66 + 1;
      v68 = 0;
    }

    v69 = v68 + *a4;
    v70 = vpx_norm[v67];
    v71 = v64 + v70;
    if (v64 + v70 < 0)
    {
      v80 = v45;
      v81 = v64 + v70;
      LOBYTE(v71) = vpx_norm[v67];
    }

    else
    {
      if (!*(a4 + 12))
      {
        v72 = v45;
        v73 = *(a4 + 16);
        if (((v69 << ~v64) & 0x80000000) != 0)
        {
          v74 = v73 - 1;
          if (v73 >= 1)
          {
            while (1)
            {
              --v73;
              v75 = *(a4 + 24);
              if (*(v75 + v73) != 255)
              {
                break;
              }

              *(v75 + v73) = 0;
              if (v73 <= 0)
              {
                v74 = -1;
                goto LABEL_383;
              }
            }

            v74 = v73;
          }

LABEL_383:
          ++*(*(a4 + 24) + v74);
          v73 = *(a4 + 16);
        }

        if (v73 >= *(a4 + 20))
        {
          *(a4 + 12) = 1;
        }

        else
        {
          v310 = *(a4 + 24);
          *(a4 + 16) = v73 + 1;
          *(v310 + v73) = v69 >> (v64 + 24);
        }

        v45 = v72;
      }

      v80 = v45;
      v69 = (v69 << -v64) & 0xFFFFFF;
      v81 = v71 - 8;
    }

    v311 = v67 << v70;
    v312 = v69 << v71;
    *(a4 + 4) = v311;
    *(a4 + 8) = v81;
    *a4 = v312;
    v313 = vp9_segment_tree[v65];
    v314 = ((v311 - 1) * *(v62 + (v313 >> 1))) >> 8;
    v315 = v311 - (v314 + 1);
    if (((v42 >> 1) & 1) == 0)
    {
      v315 = v314 + 1;
    }

    v316 = (((v42 << 30) >> 31) & (v314 + 1)) + v312;
    v317 = vpx_norm[v315];
    v318 = v81 + v317;
    if (v81 + v317 < 0)
    {
      v323 = v81 + v317;
      LOBYTE(v318) = vpx_norm[v315];
    }

    else
    {
      v319 = result;
      if (!*(a4 + 12))
      {
        v320 = *(a4 + 16);
        if (((v316 << ~v81) & 0x80000000) != 0)
        {
          v321 = v320 - 1;
          if (v320 >= 1)
          {
            while (1)
            {
              --v320;
              v322 = *(a4 + 24);
              if (*(v322 + v320) != 255)
              {
                break;
              }

              *(v322 + v320) = 0;
              if (v320 <= 0)
              {
                v321 = -1;
                goto LABEL_400;
              }
            }

            v321 = v320;
          }

LABEL_400:
          ++*(*(a4 + 24) + v321);
          v320 = *(a4 + 16);
        }

        if (v320 >= *(a4 + 20))
        {
          *(a4 + 12) = 1;
        }

        else
        {
          v324 = *(a4 + 24);
          *(a4 + 16) = v320 + 1;
          *(v324 + v320) = v316 >> (v81 + 24);
          v12 = v620;
        }

        v40 = v610;
      }

      v316 = (v316 << -v81) & 0xFFFFFF;
      v323 = v318 - 8;
      result = v319;
    }

    v325 = v315 << v317;
    v326 = v316 << v318;
    *(a4 + 4) = v325;
    *(a4 + 8) = v323;
    *a4 = v326;
    v327 = ((v325 - 1) * *(v62 + (vp9_segment_tree[((v42 >> 1) & 1) + v313] >> 1))) >> 8;
    v328 = v327 + 1;
    if (v42)
    {
      v329 = v325 - (v327 + 1);
    }

    else
    {
      v329 = v327 + 1;
    }

    v330 = (((v42 << 31) >> 31) & v328) + v326;
    v331 = vpx_norm[v329];
    v332 = v323 + v331;
    v45 = v80;
    if (v323 + v331 >= 0)
    {
      v333 = -v323;
      if (!*(a4 + 12))
      {
        v334 = *(a4 + 16);
        if (((v330 << ~v323) & 0x80000000) == 0)
        {
          goto LABEL_453;
        }

        v335 = v334 - 1;
        if (v334 < 1)
        {
          goto LABEL_452;
        }

        while (1)
        {
          --v334;
          v336 = *(a4 + 24);
          if (*(v336 + v334) != 255)
          {
            goto LABEL_451;
          }

          *(v336 + v334) = 0;
          if (v334 <= 0)
          {
LABEL_449:
            v335 = -1;
            goto LABEL_452;
          }
        }
      }

LABEL_456:
      v330 = (v330 << v333) & 0xFFFFFF;
      v357 = v332 - 8;
      goto LABEL_457;
    }

LABEL_450:
    v357 = v332;
    LOBYTE(v332) = v331;
LABEL_457:
    *(a4 + 4) = v329 << v331;
    *(a4 + 8) = v357;
    *a4 = v330 << v332;
    goto LABEL_458;
  }

  v46 = v40[5];
  if (v20)
  {
    v47 = v20[5];
    v48 = v623;
    if (!v623)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v47 = 0;
  v48 = v623;
  if (v623)
  {
LABEL_27:
    v48 = v48[5];
  }

LABEL_28:
  v49 = v48[v47 + 176484 + v12];
  v51 = *(a4 + 4);
  v50 = *(a4 + 8);
  v52 = ((v51 - 1) * v49) >> 8;
  v53 = v51 - (v52 + 1);
  if (v40[5])
  {
    v54 = v52 + 1;
  }

  else
  {
    v53 = v52 + 1;
    v54 = 0;
  }

  v55 = v54 + *a4;
  v56 = vpx_norm[v53];
  v57 = v50 + v56;
  if (v50 + v56 >= 0)
  {
    if (!*(a4 + 12))
    {
      if (((v55 << ~v50) & 0x80000000) != 0)
      {
        v58 = *(a4 + 16);
        v59 = v58 - 1;
        if (v58 >= 1)
        {
          while (1)
          {
            --v58;
            v60 = *(a4 + 24);
            if (*(v60 + v58) != 255)
            {
              break;
            }

            *(v60 + v58) = 0;
            if (v58 <= 0)
            {
              v59 = -1;
              goto LABEL_364;
            }
          }

          v59 = v58;
        }

LABEL_364:
        ++*(*(a4 + 24) + v59);
      }

      v295 = *(a4 + 16);
      if (v295 >= *(a4 + 20))
      {
        *(a4 + 12) = 1;
      }

      else
      {
        v296 = *(a4 + 24);
        *(a4 + 16) = v295 + 1;
        *(v296 + v295) = v55 >> (v50 + 24);
      }
    }

    v297 = (v55 << -v50) & 0xFFFFFF;
    v76 = v57 - 8;
    v77 = v53 << v56;
    *(a4 + 4) = v53 << v56;
    *(a4 + 8) = v57 - 8;
    v78 = v297 << v57;
    *a4 = v297 << v57;
    if (!v46)
    {
      goto LABEL_369;
    }

LABEL_458:
    v79 = *(v14 + 3500);
    if (!*(v14 + 3500))
    {
      goto LABEL_460;
    }

    goto LABEL_459;
  }

  v76 = v50 + v56;
  v77 = v53 << v56;
  *(a4 + 4) = v53 << v56;
  *(a4 + 8) = v76;
  v78 = v55 << v56;
  *a4 = v78;
  if (v46)
  {
    goto LABEL_458;
  }

LABEL_369:
  v79 = *(v14 + 3500);
  if (!*(v14 + 3500))
  {
    goto LABEL_460;
  }

  if (*(v14 + 3501))
  {
    v298 = v14 + 3505;
    v299 = (v42 >> 2) & 1;
    v300 = ((v77 - 1) * *(v14 + 3505)) >> 8;
    v301 = v77 - (v300 + 1);
    if (v299)
    {
      v302 = v300 + 1;
    }

    else
    {
      v301 = v300 + 1;
      v302 = 0;
    }

    v303 = v302 + v78;
    v304 = vpx_norm[v301];
    v305 = v76 + v304;
    v612 = v45;
    if (v76 + v304 < 0)
    {
      v309 = v76 + v304;
      LOBYTE(v305) = vpx_norm[v301];
    }

    else
    {
      if (!*(a4 + 12))
      {
        v306 = *(a4 + 16);
        if (((v303 << ~v76) & 0x80000000) != 0)
        {
          v307 = v306 - 1;
          if (v306 >= 1)
          {
            while (1)
            {
              --v306;
              v308 = *(a4 + 24);
              if (*(v308 + v306) != 255)
              {
                break;
              }

              *(v308 + v306) = 0;
              if (v306 <= 0)
              {
                v307 = -1;
                goto LABEL_417;
              }
            }

            v307 = v306;
          }

LABEL_417:
          ++*(*(a4 + 24) + v307);
          v306 = *(a4 + 16);
        }

        if (v306 >= *(a4 + 20))
        {
          *(a4 + 12) = 1;
        }

        else
        {
          v337 = *(a4 + 24);
          *(a4 + 16) = v306 + 1;
          *(v337 + v306) = v303 >> (v76 + 24);
        }
      }

      v303 = (v303 << -v76) & 0xFFFFFF;
      v309 = v305 - 8;
    }

    v338 = v301 << v304;
    v339 = v303 << v305;
    *(a4 + 4) = v338;
    *(a4 + 8) = v309;
    *a4 = v303 << v305;
    v340 = vp9_segment_tree[v299];
    v341 = ((v338 - 1) * *(v298 + (v340 >> 1))) >> 8;
    v342 = v341 + 1;
    if ((v42 >> 1))
    {
      v343 = v338 - (v341 + 1);
    }

    else
    {
      v343 = v341 + 1;
    }

    v344 = (((v42 << 30) >> 31) & v342) + v339;
    v345 = vpx_norm[v343];
    v346 = v309 + v345;
    if (v309 + v345 < 0)
    {
      v323 = v309 + v345;
      LOBYTE(v346) = vpx_norm[v343];
    }

    else
    {
      v347 = result;
      if (!*(a4 + 12))
      {
        v348 = *(a4 + 16);
        if (((v344 << ~v309) & 0x80000000) != 0)
        {
          v349 = v348 - 1;
          if (v348 >= 1)
          {
            while (1)
            {
              --v348;
              v350 = *(a4 + 24);
              if (*(v350 + v348) != 255)
              {
                break;
              }

              *(v350 + v348) = 0;
              if (v348 <= 0)
              {
                v349 = -1;
                goto LABEL_434;
              }
            }

            v349 = v348;
          }

LABEL_434:
          ++*(*(a4 + 24) + v349);
          v348 = *(a4 + 16);
        }

        if (v348 >= *(a4 + 20))
        {
          *(a4 + 12) = 1;
        }

        else
        {
          v351 = *(a4 + 24);
          *(a4 + 16) = v348 + 1;
          *(v351 + v348) = v344 >> (v309 + 24);
          v12 = v620;
        }

        v40 = v610;
      }

      v344 = (v344 << -v309) & 0xFFFFFF;
      v323 = v346 - 8;
      result = v347;
    }

    v352 = v343 << v345;
    v353 = v344 << v346;
    *(a4 + 4) = v352;
    *(a4 + 8) = v323;
    *a4 = v353;
    v354 = ((v352 - 1) * *(v298 + (vp9_segment_tree[((v42 >> 1) & 1) + v340] >> 1))) >> 8;
    v355 = v354 + 1;
    if (v42)
    {
      v329 = v352 - (v354 + 1);
    }

    else
    {
      v329 = v354 + 1;
    }

    v330 = (((v42 << 31) >> 31) & v355) + v353;
    v331 = vpx_norm[v329];
    v332 = v323 + v331;
    v45 = v612;
    if (v323 + v331 >= 0)
    {
      v333 = -v323;
      if (!*(a4 + 12))
      {
        v334 = *(a4 + 16);
        if (((v330 << ~v323) & 0x80000000) == 0)
        {
          goto LABEL_453;
        }

        v335 = v334 - 1;
        if (v334 < 1)
        {
LABEL_452:
          ++*(*(a4 + 24) + v335);
          v334 = *(a4 + 16);
LABEL_453:
          if (v334 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v358 = *(a4 + 24);
            *(a4 + 16) = v334 + 1;
            *(v358 + v334) = v330 >> (v323 + 24);
          }

          goto LABEL_456;
        }

        while (1)
        {
          --v334;
          v356 = *(a4 + 24);
          if (*(v356 + v334) != 255)
          {
            break;
          }

          *(v356 + v334) = 0;
          if (v334 <= 0)
          {
            goto LABEL_449;
          }
        }

LABEL_451:
        v335 = v334;
        goto LABEL_452;
      }

      goto LABEL_456;
    }

    goto LABEL_450;
  }

LABEL_459:
  v359 = *(v12 + 4 * v42 + 176552);
  if ((v359 & 8) != 0)
  {
    v377 = 1;
    if ((v359 & 4) == 0)
    {
      goto LABEL_486;
    }

    goto LABEL_494;
  }

LABEL_460:
  v361 = *(a2 + 456);
  v360 = *(a2 + 464);
  if (v360)
  {
    v362 = *(v360 + 3);
    v363 = v40[3];
    v364 = *v621;
    if (!v361)
    {
      goto LABEL_463;
    }

    goto LABEL_462;
  }

  v362 = 0;
  v363 = v40[3];
  v364 = *v621;
  if (v361)
  {
LABEL_462:
    v361 = *(v361 + 3);
  }

LABEL_463:
  v365 = *(v364 + v361 + v362 + 1967);
  v366 = *(a4 + 4);
  v367 = *(a4 + 8);
  v368 = ((v366 - 1) * v365) >> 8;
  v369 = v366 - (v368 + 1);
  if (v363)
  {
    v370 = v368 + 1;
  }

  else
  {
    v369 = v368 + 1;
    v370 = 0;
  }

  v371 = v370 + *a4;
  v372 = vpx_norm[v369];
  v373 = v367 + v372;
  if (v367 + v372 < 0)
  {
    v378 = v367 + v372;
    LOBYTE(v373) = vpx_norm[v369];
  }

  else
  {
    if (!*(a4 + 12))
    {
      if (((v371 << ~v367) & 0x80000000) != 0)
      {
        v374 = *(a4 + 16);
        v375 = v374 - 1;
        if (v374 >= 1)
        {
          while (1)
          {
            --v374;
            v376 = *(a4 + 24);
            if (*(v376 + v374) != 255)
            {
              break;
            }

            *(v376 + v374) = 0;
            if (v374 <= 0)
            {
              v375 = -1;
              goto LABEL_479;
            }
          }

          v375 = v374;
        }

LABEL_479:
        ++*(*(a4 + 24) + v375);
      }

      v379 = *(a4 + 16);
      if (v379 >= *(a4 + 20))
      {
        *(a4 + 12) = 1;
      }

      else
      {
        v380 = *(a4 + 24);
        *(a4 + 16) = v379 + 1;
        *(v380 + v379) = v371 >> (v367 + 24);
      }
    }

    v371 = (v371 << -v367) & 0xFFFFFF;
    v378 = v373 - 8;
    v79 = *(v14 + 3500);
  }

  *(a4 + 4) = v369 << v372;
  *(a4 + 8) = v378;
  *a4 = v371 << v373;
  v377 = v363 != 0;
  if (!v79 || (*(v12 + 4 * v42 + 176552) & 4) == 0)
  {
LABEL_486:
    v381 = *(a2 + 456);
    v382 = *(a2 + 464);
    if (v382 && v381)
    {
      v383 = *(v381 + 8) < 1;
      v384 = *(v382 + 8) < 1;
      v385 = v384 || v383;
      v122 = !v383 || !v384;
      v386 = 3;
      if (v122)
      {
        v386 = v385;
      }
    }

    else if (v382 | v381)
    {
      if (v382)
      {
        v381 = *(a2 + 464);
      }

      v386 = 2 * (*(v381 + 8) < 1);
    }

    else
    {
      v386 = 0;
    }

    v396 = *(*v621 + v386 + 1931);
    v397 = *(a4 + 4);
    v398 = *(a4 + 8);
    v399 = ((v397 - 1) * v396) >> 8;
    v400 = v397 - (v399 + 1);
    if (v45 > 0)
    {
      v401 = v399 + 1;
    }

    else
    {
      v400 = v399 + 1;
      v401 = 0;
    }

    v402 = v401 + *a4;
    v403 = vpx_norm[v400];
    v404 = v398 + v403;
    if (v398 + v403 < 0)
    {
      v408 = v398 + v403;
      LOBYTE(v404) = vpx_norm[v400];
    }

    else
    {
      if (!*(a4 + 12))
      {
        if (((v402 << ~v398) & 0x80000000) != 0)
        {
          v405 = *(a4 + 16);
          v406 = v405 - 1;
          if (v405 >= 1)
          {
            while (1)
            {
              --v405;
              v407 = *(a4 + 24);
              if (*(v407 + v405) != 255)
              {
                break;
              }

              *(v407 + v405) = 0;
              if (v405 <= 0)
              {
                v406 = -1;
                goto LABEL_518;
              }
            }

            v406 = v405;
          }

LABEL_518:
          ++*(*(a4 + 24) + v406);
        }

        v409 = *(a4 + 16);
        if (v409 >= *(a4 + 20))
        {
          *(a4 + 12) = 1;
        }

        else
        {
          v410 = *(a4 + 24);
          *(a4 + 16) = v409 + 1;
          *(v410 + v409) = v402 >> (v398 + 24);
        }
      }

      v402 = (v402 << -v398) & 0xFFFFFF;
      v408 = v404 - 8;
    }

    *(a4 + 4) = v400 << v403;
    *(a4 + 8) = v408;
    *a4 = v402 << v404;
    v617 = v39;
    v615 = v44;
    if (v43 < 3)
    {
      goto LABEL_524;
    }

    goto LABEL_495;
  }

LABEL_494:
  v617 = v39;
  v615 = v44;
  if (v43 < 3)
  {
LABEL_524:
    if (v45 >= 1)
    {
      v607 = v42;
      v394 = *v621;
      goto LABEL_526;
    }

    v418 = 0;
    v419 = num_4x4_blocks_wide_lookup[v43];
    v420 = num_4x4_blocks_high_lookup[v43];
    v421 = v40 + 20;
    v422 = *(a4 + 4);
    v423 = *(a4 + 8);
    v424 = *a4;
    v395 = (v14 + 3628);
    while (1)
    {
      v425 = 0;
      v426 = *v621;
      v427 = (&intra_mode_encodings + 8 * v421[24 * v418]);
      v428 = *v427;
      v429 = v427[1];
      do
      {
        --v429;
        v431 = ((v422 - 1) * *(v426 + (v425 >> 1))) >> 8;
        v432 = v422 - (v431 + 1);
        if (((v428 >> v429) & 1) == 0)
        {
          v432 = v431 + 1;
        }

        v430 = (((v428 >> v429 << 31) >> 31) & (v431 + 1)) + v424;
        v433 = vpx_norm[v432];
        v434 = v423 + v433;
        if (v423 + v433 >= 0)
        {
          if (!*(a4 + 12))
          {
            v435 = *(a4 + 16);
            if (((v430 << ~v423) & 0x80000000) != 0)
            {
              v436 = v435 - 1;
              if (v435 < 1)
              {
                goto LABEL_554;
              }

              while (1)
              {
                --v435;
                v437 = *(a4 + 24);
                if (*(v437 + v435) != 255)
                {
                  break;
                }

                *(v437 + v435) = 0;
                if (v435 <= 0)
                {
                  v436 = -1;
                  goto LABEL_554;
                }
              }

              v436 = v435;
LABEL_554:
              ++*(*(a4 + 24) + v436);
              v435 = *(a4 + 16);
              if (v435 >= *(a4 + 20))
              {
                goto LABEL_538;
              }

LABEL_555:
              v438 = *(a4 + 24);
              *(a4 + 16) = v435 + 1;
              *(v438 + v435) = v430 >> (v423 + 24);
            }

            else
            {
              if (v435 < *(a4 + 20))
              {
                goto LABEL_555;
              }

LABEL_538:
              *(a4 + 12) = 1;
            }
          }

          v430 = (v430 << -v423) & 0xFFFFFF;
          v423 = v434 - 8;
          goto LABEL_540;
        }

        v423 += v433;
        LOBYTE(v434) = vpx_norm[v432];
LABEL_540:
        v422 = v432 << v433;
        v424 = v430 << v434;
        *(a4 + 4) = v422;
        *(a4 + 8) = v423;
        *a4 = v424;
        v425 = vp9_intra_mode_tree[((v428 >> v429) & 1) + v425];
      }

      while (v429);
      if (v419 <= 1)
      {
        v439 = 0;
        v440 = *v621;
        v441 = (&intra_mode_encodings + 8 * v421[12 * ((2 * v418) | v419)]);
        v442 = *v441;
        v443 = v441[1];
        while (1)
        {
          --v443;
          v446 = ((v422 - 1) * *(v440 + (v439 >> 1))) >> 8;
          v447 = v422 - (v446 + 1);
          if (((v442 >> v443) & 1) == 0)
          {
            v447 = v446 + 1;
          }

          v445 = (((v442 >> v443 << 31) >> 31) & (v446 + 1)) + v424;
          v448 = vpx_norm[v447];
          v449 = v423 + v448;
          if (v423 + v448 < 0)
          {
            v423 += v448;
            LOBYTE(v449) = vpx_norm[v447];
            goto LABEL_560;
          }

          if (!*(a4 + 12))
          {
            v450 = *(a4 + 16);
            if (((v445 << ~v423) & 0x80000000) != 0)
            {
              v451 = v450 - 1;
              if (v450 < 1)
              {
                goto LABEL_574;
              }

              while (1)
              {
                --v450;
                v452 = *(a4 + 24);
                if (*(v452 + v450) != 255)
                {
                  break;
                }

                *(v452 + v450) = 0;
                if (v450 <= 0)
                {
                  v451 = -1;
                  goto LABEL_574;
                }
              }

              v451 = v450;
LABEL_574:
              ++*(*(a4 + 24) + v451);
              v450 = *(a4 + 16);
              if (v450 >= *(a4 + 20))
              {
LABEL_575:
                *(a4 + 12) = 1;
                goto LABEL_559;
              }
            }

            else if (v450 >= *(a4 + 20))
            {
              goto LABEL_575;
            }

            v444 = *(a4 + 24);
            *(a4 + 16) = v450 + 1;
            *(v444 + v450) = v445 >> (v423 + 24);
          }

LABEL_559:
          v445 = (v445 << -v423) & 0xFFFFFF;
          v423 = v449 - 8;
LABEL_560:
          v422 = v447 << v448;
          v424 = v445 << v449;
          *(a4 + 4) = v422;
          *(a4 + 8) = v423;
          *a4 = v424;
          v439 = vp9_intra_mode_tree[((v442 >> v443) & 1) + v439];
          if (!v443)
          {
            if (v419)
            {
              break;
            }

            v453 = 0;
            v454 = *v621;
            v455 = (&intra_mode_encodings + 8 * v421[24 * v418]);
            v456 = *v455;
            v457 = v455[1];
LABEL_580:
            --v457;
            v460 = ((v422 - 1) * *(v454 + (v453 >> 1))) >> 8;
            v461 = v422 - (v460 + 1);
            if (((v456 >> v457) & 1) == 0)
            {
              v461 = v460 + 1;
            }

            v459 = (((v456 >> v457 << 31) >> 31) & (v460 + 1)) + v424;
            v462 = vpx_norm[v461];
            v463 = v423 + v462;
            if (v423 + v462 < 0)
            {
              v423 += v462;
              LOBYTE(v463) = vpx_norm[v461];
            }

            else
            {
              if (!*(a4 + 12))
              {
                v464 = *(a4 + 16);
                if (((v459 << ~v423) & 0x80000000) != 0)
                {
                  v465 = v464 - 1;
                  if (v464 < 1)
                  {
                    goto LABEL_593;
                  }

                  while (1)
                  {
                    --v464;
                    v466 = *(a4 + 24);
                    if (*(v466 + v464) != 255)
                    {
                      break;
                    }

                    *(v466 + v464) = 0;
                    if (v464 <= 0)
                    {
                      v465 = -1;
                      goto LABEL_593;
                    }
                  }

                  v465 = v464;
LABEL_593:
                  ++*(*(a4 + 24) + v465);
                  v464 = *(a4 + 16);
                  if (v464 < *(a4 + 20))
                  {
                    goto LABEL_577;
                  }

LABEL_594:
                  *(a4 + 12) = 1;
                }

                else
                {
                  if (v464 >= *(a4 + 20))
                  {
                    goto LABEL_594;
                  }

LABEL_577:
                  v458 = *(a4 + 24);
                  *(a4 + 16) = v464 + 1;
                  *(v458 + v464) = v459 >> (v423 + 24);
                }
              }

              v459 = (v459 << -v423) & 0xFFFFFF;
              v423 = v463 - 8;
            }

            v422 = v461 << v462;
            v424 = v459 << v463;
            *(a4 + 4) = v422;
            *(a4 + 8) = v423;
            *a4 = v424;
            v453 = vp9_intra_mode_tree[((v456 >> v457) & 1) + v453];
            if (!v457)
            {
              break;
            }

            goto LABEL_580;
          }
        }
      }

      v418 += v420;
      if (v418 >= 2)
      {
        goto LABEL_500;
      }
    }
  }

LABEL_495:
  v607 = v42;
  if (*(v14 + 52) == 4 && (v45 <= 0 || !v377))
  {
    v624 = v41;
    v387 = result;
    v388 = a2;
    v389 = a8;
    v390 = a7;
    v391 = v43;
    v392 = v13;
    v393 = v45;
    write_selected_tx_size(v12 + 171696, a2, a4);
    v45 = v393;
    result = v387;
    v41 = v624;
    v13 = v392;
    v43 = v391;
    a7 = v390;
    a8 = v389;
    a2 = v388;
  }

  v394 = *v621;
  if (v45 <= 0)
  {
    write_intra_mode(a4, v41, v394 + 9 * size_group_lookup[v43]);
    v395 = (v14 + 3628);
LABEL_500:
    v169 = (*v395 + 36);
    v168 = v610;
LABEL_182:
    result = write_intra_mode(a4, v168[6], v169 + 9 * v41);
    goto LABEL_183;
  }

LABEL_526:
  v625 = v41;
  v613 = v13 + 36 * (a8 + result * a7);
  v411 = 3 * *(v613 + *v603 + 32);
  v412 = **(a2 + 448);
  v413 = *(v412 + 9);
  if (*(v14 + 3500) && (*(v12 + 4 * *(v412 + 4) + 176552) & 4) != 0)
  {
    goto LABEL_677;
  }

  if (*(v14 + 3620) == 2)
  {
    v414 = *(a2 + 456);
    v415 = *(a2 + 464);
    if (v415 && v414)
    {
      v416 = *(v414 + 9);
      if (*(v415 + 9) <= 0)
      {
        v467 = *(v415 + 8);
        v468 = *(v14 + 3616);
        if (v416 <= 0)
        {
          v417 = (v467 == v468) ^ (*(v414 + 8) == v468);
          goto LABEL_609;
        }

        if (v467 == v468)
        {
          goto LABEL_605;
        }

        v469 = v467;
      }

      else
      {
        if (v416 > 0)
        {
          v417 = 4;
LABEL_609:
          v470 = *(v394 + 1935 + v417);
          v471 = *(a4 + 4);
          v472 = *(a4 + 8);
          v473 = ((v471 - 1) * v470) >> 8;
          v474 = v471 - (v473 + 1);
          if (v413 >= 1)
          {
            v475 = v473 + 1;
          }

          else
          {
            v474 = v473 + 1;
            v475 = 0;
          }

          v476 = v475 + *a4;
          v477 = vpx_norm[v474];
          v478 = v472 + v477;
          if (v472 + v477 < 0)
          {
            v482 = v472 + v477;
            LOBYTE(v478) = vpx_norm[v474];
          }

          else
          {
            if (!*(a4 + 12))
            {
              if (((v476 << ~v472) & 0x80000000) != 0)
              {
                v479 = *(a4 + 16);
                v480 = v479 - 1;
                if (v479 >= 1)
                {
                  while (1)
                  {
                    --v479;
                    v481 = *(a4 + 24);
                    if (*(v481 + v479) != 255)
                    {
                      break;
                    }

                    *(v481 + v479) = 0;
                    if (v479 <= 0)
                    {
                      v480 = -1;
                      goto LABEL_621;
                    }
                  }

                  v480 = v479;
                }

LABEL_621:
                ++*(*(a4 + 24) + v480);
              }

              v483 = *(a4 + 16);
              if (v483 >= *(a4 + 20))
              {
                *(a4 + 12) = 1;
              }

              else
              {
                v484 = *(a4 + 24);
                *(a4 + 16) = v483 + 1;
                *(v484 + v483) = v476 >> (v472 + 24);
              }
            }

            v476 = (v476 << -v472) & 0xFFFFFF;
            v482 = v478 - 8;
          }

          *(a4 + 4) = v474 << v477;
          *(a4 + 8) = v482;
          *a4 = v476 << v478;
          goto LABEL_627;
        }

        v469 = *(v414 + 8);
        if (v469 == *(v14 + 3616))
        {
          goto LABEL_605;
        }

        v469 = v469;
      }

      v417 = (v469 > 0) ^ 3;
      goto LABEL_609;
    }

    if (!(v415 | v414))
    {
      v417 = 1;
      goto LABEL_609;
    }

    if (v415)
    {
      v414 = *(a2 + 464);
    }

    if (*(v414 + 9) <= 0)
    {
      v417 = *(v414 + 8) == *(v14 + 3616);
      goto LABEL_609;
    }

LABEL_605:
    v417 = 3;
    goto LABEL_609;
  }

LABEL_627:
  v485 = v43;
  if (v413 >= 1)
  {
    if (*(v12 + 4 * *(v14 + 3616) + 176404))
    {
      v486 = v412;
    }

    else
    {
      v486 = v412 + 1;
    }

    v487 = *(v486 + 8);
    v488 = *(v14 + 3618);
    v489 = a2;
    result = vp9_get_pred_context_comp_ref_p(v12 + 171696, a2);
    v490 = *(a4 + 4);
    v491 = *(a4 + 8);
    v492 = ((v490 - 1) * *(*v621 + result + 1950)) >> 8;
    v493 = v490 - (v492 + 1);
    if (v487 == v488)
    {
      v494 = v492 + 1;
    }

    else
    {
      v493 = v492 + 1;
      v494 = 0;
    }

    v495 = v494 + *a4;
    v496 = vpx_norm[v493];
    v497 = v491 + v496;
    if (v491 + v496 >= 0)
    {
      v498 = -v491;
      a2 = v489;
      v43 = v485;
      if (!*(a4 + 12))
      {
        if (((v495 << ~v491) & 0x80000000) == 0)
        {
          goto LABEL_672;
        }

        v499 = *(a4 + 16);
        v500 = v499 - 1;
        if (v499 < 1)
        {
          goto LABEL_671;
        }

        while (1)
        {
          --v499;
          v501 = *(a4 + 24);
          if (*(v501 + v499) != 255)
          {
            goto LABEL_670;
          }

          *(v501 + v499) = 0;
          if (v499 <= 0)
          {
            goto LABEL_668;
          }
        }
      }

      goto LABEL_675;
    }

    goto LABEL_669;
  }

  v502 = *(v412 + 8);
  v503 = *v621;
  v489 = a2;
  result = vp9_get_pred_context_single_ref_p1(a2);
  v504 = *(a4 + 4);
  v505 = *(a4 + 8);
  v506 = ((v504 - 1) * *(v503 + 2 * result + 1940)) >> 8;
  v507 = v504 - (v506 + 1);
  if (v502 == 1)
  {
    v507 = v506 + 1;
    v508 = 0;
  }

  else
  {
    v508 = v506 + 1;
  }

  v509 = v508 + *a4;
  v510 = vpx_norm[v507];
  v511 = v505 + v510;
  if (v505 + v510 < 0)
  {
    v515 = v505 + v510;
    LOBYTE(v511) = vpx_norm[v507];
    a2 = v489;
    v43 = v485;
  }

  else
  {
    a2 = v489;
    v43 = v485;
    if (!*(a4 + 12))
    {
      if (((v509 << ~v505) & 0x80000000) != 0)
      {
        v512 = *(a4 + 16);
        v513 = v512 - 1;
        if (v512 >= 1)
        {
          while (1)
          {
            --v512;
            v514 = *(a4 + 24);
            if (*(v514 + v512) != 255)
            {
              break;
            }

            *(v514 + v512) = 0;
            if (v512 <= 0)
            {
              v513 = -1;
              goto LABEL_653;
            }
          }

          v513 = v512;
        }

LABEL_653:
        ++*(*(a4 + 24) + v513);
      }

      v516 = *(a4 + 16);
      if (v516 >= *(a4 + 20))
      {
        *(a4 + 12) = 1;
      }

      else
      {
        v517 = *(a4 + 24);
        *(a4 + 16) = v516 + 1;
        *(v517 + v516) = v509 >> (v505 + 24);
      }
    }

    v509 = (v509 << -v505) & 0xFFFFFF;
    v515 = v511 - 8;
  }

  *(a4 + 4) = v507 << v510;
  *(a4 + 8) = v515;
  *a4 = v509 << v511;
  if (v502 != 1)
  {
    v518 = *(v412 + 8);
    v519 = *v621;
    result = vp9_get_pred_context_single_ref_p2(a2);
    v520 = *(a4 + 4);
    v491 = *(a4 + 8);
    v521 = ((v520 - 1) * *(v519 + 2 * result + 1941)) >> 8;
    v493 = v520 - (v521 + 1);
    if (v518 == 2)
    {
      v493 = v521 + 1;
      v522 = 0;
    }

    else
    {
      v522 = v521 + 1;
    }

    v495 = v522 + *a4;
    v496 = vpx_norm[v493];
    v497 = v491 + v496;
    if (v491 + v496 >= 0)
    {
      v498 = -v491;
      a2 = v489;
      v43 = v485;
      if (!*(a4 + 12))
      {
        if (((v495 << ~v491) & 0x80000000) == 0)
        {
          goto LABEL_672;
        }

        v499 = *(a4 + 16);
        v500 = v499 - 1;
        if (v499 < 1)
        {
LABEL_671:
          ++*(*(a4 + 24) + v500);
LABEL_672:
          v525 = *(a4 + 16);
          if (v525 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v526 = *(a4 + 24);
            *(a4 + 16) = v525 + 1;
            *(v526 + v525) = v495 >> (v491 + 24);
          }

          goto LABEL_675;
        }

        while (1)
        {
          --v499;
          v523 = *(a4 + 24);
          if (*(v523 + v499) != 255)
          {
            break;
          }

          *(v523 + v499) = 0;
          if (v499 <= 0)
          {
LABEL_668:
            v500 = -1;
            goto LABEL_671;
          }
        }

LABEL_670:
        v500 = v499;
        goto LABEL_671;
      }

LABEL_675:
      v495 = (v495 << v498) & 0xFFFFFF;
      v524 = v497 - 8;
      goto LABEL_676;
    }

LABEL_669:
    v524 = v497;
    LOBYTE(v497) = v496;
    a2 = v489;
    v43 = v485;
LABEL_676:
    *(a4 + 4) = v493 << v496;
    *(a4 + 8) = v524;
    *a4 = v495 << v497;
  }

LABEL_677:
  v527 = v394 + v411;
  if (!*(v14 + 3500))
  {
    v528 = 1;
    v529 = v618;
    v530 = v527 + 1910;
    if (v43 < 3)
    {
      goto LABEL_701;
    }

    goto LABEL_681;
  }

  v528 = (*(v12 + 4 * v607 + 176552) & 8) == 0;
  v529 = v618;
  v530 = v527 + 1910;
  if (v43 >= 3)
  {
LABEL_681:
    if (!v528)
    {
      goto LABEL_701;
    }

    v531 = 0;
    v532 = &inter_mode_encodings + 8 * v625;
    v533 = *(v532 - 20);
    v534 = *(v532 - 19);
    v536 = *(a4 + 4);
    v535 = *(a4 + 8);
    v537 = *a4;
    do
    {
      --v534;
      v539 = ((v536 - 1) * *(v530 + (v531 >> 1))) >> 8;
      v540 = v536 - (v539 + 1);
      if (((v533 >> v534) & 1) == 0)
      {
        v540 = v539 + 1;
      }

      v538 = (((v533 >> v534 << 31) >> 31) & (v539 + 1)) + v537;
      v541 = vpx_norm[v540];
      result = (v535 + v541);
      if (v535 + v541 < 0)
      {
        v535 += v541;
        result = vpx_norm[v540];
        goto LABEL_685;
      }

      if (!*(a4 + 12))
      {
        v542 = *(a4 + 16);
        if (((v538 << ~v535) & 0x80000000) != 0)
        {
          v543 = v542 - 1;
          if (v542 >= 1)
          {
            while (1)
            {
              --v542;
              v544 = *(a4 + 24);
              if (*(v544 + v542) != 255)
              {
                break;
              }

              *(v544 + v542) = 0;
              if (v542 <= 0)
              {
                v543 = -1;
                goto LABEL_699;
              }
            }

            v543 = v542;
          }

LABEL_699:
          ++*(*(a4 + 24) + v543);
          v542 = *(a4 + 16);
          if (v542 < *(a4 + 20))
          {
LABEL_700:
            v545 = *(a4 + 24);
            *(a4 + 16) = v542 + 1;
            *(v545 + v542) = v538 >> (v535 + 24);
            goto LABEL_684;
          }
        }

        else if (v542 < *(a4 + 20))
        {
          goto LABEL_700;
        }

        *(a4 + 12) = 1;
      }

LABEL_684:
      v538 = (v538 << -v535) & 0xFFFFFF;
      v535 = result - 8;
LABEL_685:
      v536 = v540 << v541;
      v537 = v538 << result;
      *(a4 + 4) = v536;
      *(a4 + 8) = v535;
      *a4 = v537;
      v531 = vp9_inter_mode_tree[((v533 >> v534) & 1) + v531];
    }

    while (v534);
  }

LABEL_701:
  v546 = v610;
  if (*(v14 + 280) != 4)
  {
    goto LABEL_734;
  }

  v547 = *(a2 + 456);
  if (!v547)
  {
    v548 = 3;
    v549 = (v14 + 3628);
    v550 = a10;
    v551 = *(a2 + 464);
    if (v551)
    {
      goto LABEL_704;
    }

LABEL_706:
    v552 = 3;
    goto LABEL_707;
  }

  v548 = *(v547 + 7);
  v549 = (v14 + 3628);
  v550 = a10;
  v551 = *(a2 + 464);
  if (!v551)
  {
    goto LABEL_706;
  }

LABEL_704:
  v552 = *(v551 + 7);
LABEL_707:
  v553 = 0;
  if (v552 == 3)
  {
    v554 = v548;
  }

  else
  {
    v554 = 3;
  }

  if (v548 == 3)
  {
    v554 = v552;
  }

  if (v548 != v552)
  {
    v548 = v554;
  }

  v555 = *v549 + 2 * v548 + 1902;
  v556 = (&switchable_interp_encodings + 8 * v610[7]);
  v557 = *v556;
  v558 = v556[1];
  v560 = *(a4 + 4);
  v559 = *(a4 + 8);
  LODWORD(result) = *a4;
  do
  {
    --v558;
    v562 = ((v560 - 1) * *(v555 + (v553 >> 1))) >> 8;
    v563 = v560 - (v562 + 1);
    if (((v557 >> v558) & 1) == 0)
    {
      v563 = v562 + 1;
    }

    v561 = (((v557 >> v558 << 31) >> 31) & (v562 + 1)) + result;
    v564 = vpx_norm[v563];
    v565 = v559 + v564;
    if (v559 + v564 >= 0)
    {
      if (!*(a4 + 12))
      {
        v566 = *(a4 + 16);
        if (((v561 << ~v559) & 0x80000000) != 0)
        {
          v567 = v566 - 1;
          if (v566 >= 1)
          {
            while (1)
            {
              --v566;
              v568 = *(a4 + 24);
              if (*(v568 + v566) != 255)
              {
                break;
              }

              *(v568 + v566) = 0;
              if (v566 <= 0)
              {
                v567 = -1;
                goto LABEL_731;
              }
            }

            v567 = v566;
          }

LABEL_731:
          ++*(*(a4 + 24) + v567);
          v566 = *(a4 + 16);
          if (v566 < *(a4 + 20))
          {
            goto LABEL_732;
          }
        }

        else if (v566 < *(a4 + 20))
        {
LABEL_732:
          v569 = *(a4 + 24);
          *(a4 + 16) = v566 + 1;
          *(v569 + v566) = v561 >> (v559 + 24);
          goto LABEL_716;
        }

        *(a4 + 12) = 1;
      }

LABEL_716:
      v561 = (v561 << -v559) & 0xFFFFFF;
      v559 = v565 - 8;
      goto LABEL_717;
    }

    v559 += v564;
    LOBYTE(v565) = vpx_norm[v563];
LABEL_717:
    v560 = v563 << v564;
    result = v561 << v565;
    *(a4 + 4) = v560;
    *(a4 + 8) = v559;
    *a4 = result;
    v553 = vp9_switchable_interp_tree[((v557 >> v558) & 1) + v553];
  }

  while (v558);
  v546 = v610;
  ++*(v550 + 4 * v610[7]);
LABEL_734:
  if (v43 > 2)
  {
    if (v625 == 13)
    {
      v594 = (v546 + 12);
      if (v529 <= 0)
      {
        v595 = 1;
      }

      else
      {
        v595 = 2;
      }

      do
      {
        v596 = *v603++;
        result = vp9_encode_mv(v620, a4, v594, (v613 + 8 * v596), v617 + 1970, v615, a9);
        v594 += 2;
        --v595;
      }

      while (v595);
    }

    goto LABEL_183;
  }

  v570 = 0;
  v605 = v546 + 20;
  v606 = num_4x4_blocks_wide_lookup[v43];
  if (v529 <= 0)
  {
    v571 = 1;
  }

  else
  {
    v571 = 2;
  }

  v602 = v571;
  v572 = (v546 + 24);
  v599 = num_4x4_blocks_high_lookup[v43];
  v604 = 12 * num_4x4_blocks_wide_lookup[v43];
  v608 = v530;
  while (2)
  {
    v573 = 0;
    v601 = v570;
    v619 = 2 * v570;
    v600 = v572;
    v626 = v572;
    while (2)
    {
      v574 = 0;
      v622 = v573;
      v575 = v605[12 * v573 + 12 * v619];
      v576 = &inter_mode_encodings + 8 * v575;
      v577 = *(v576 - 20);
      v578 = *(v576 - 19);
      v580 = *(a4 + 4);
      v579 = *(a4 + 8);
      v581 = *a4;
      while (2)
      {
        --v578;
        v583 = ((v580 - 1) * *(v530 + (v574 >> 1))) >> 8;
        result = v583 + 1;
        v584 = v580 - result;
        if (((v577 >> v578) & 1) == 0)
        {
          v584 = v583 + 1;
        }

        v582 = (((v577 >> v578 << 31) >> 31) & result) + v581;
        v585 = vpx_norm[v584];
        v586 = v579 + v585;
        if (v579 + v585 < 0)
        {
          v579 += v585;
          LOBYTE(v586) = vpx_norm[v584];
        }

        else
        {
          result = *(a4 + 12);
          if (!result)
          {
            result = *(a4 + 16);
            if (((v582 << ~v579) & 0x80000000) != 0)
            {
              v587 = result - 1;
              if (result >= 1)
              {
                while (1)
                {
                  LODWORD(result) = result - 1;
                  v588 = *(a4 + 24);
                  if (*(v588 + result) != 255)
                  {
                    break;
                  }

                  *(v588 + result) = 0;
                  if (result <= 0)
                  {
                    v587 = -1;
                    goto LABEL_759;
                  }
                }

                v587 = result;
              }

LABEL_759:
              ++*(*(a4 + 24) + v587);
              result = *(a4 + 16);
              if (result >= *(a4 + 20))
              {
                goto LABEL_743;
              }

LABEL_760:
              v589 = *(a4 + 24);
              *(a4 + 16) = result + 1;
              *(v589 + result) = v582 >> (v579 + 24);
            }

            else
            {
              if (result < *(a4 + 20))
              {
                goto LABEL_760;
              }

LABEL_743:
              *(a4 + 12) = 1;
            }
          }

          v582 = (v582 << -v579) & 0xFFFFFF;
          v579 = v586 - 8;
        }

        v580 = v584 << v585;
        v581 = v582 << v586;
        *(a4 + 4) = v580;
        *(a4 + 8) = v579;
        *a4 = v581;
        v574 = vp9_inter_mode_tree[((v577 >> v578) & 1) + v574];
        if (v578)
        {
          continue;
        }

        break;
      }

      if (v575 == 13)
      {
        v590 = v626;
        v592 = v602;
        v591 = v603;
        do
        {
          v593 = *v591++;
          result = vp9_encode_mv(v620, a4, v590, (v613 + 8 * v593), v617 + 1970, v615, a9);
          v590 += 2;
          --v592;
        }

        while (v592);
      }

      v573 = v622 + v606;
      v626 = (v626 + v604);
      v530 = v608;
      if ((v622 + v606) < 2)
      {
        continue;
      }

      break;
    }

    v570 = v601 + v599;
    v572 = &v600[12 * v599];
    if ((v601 + v599) < 2)
    {
      continue;
    }

    break;
  }

LABEL_183:
  v170 = *(v620 + 189856);
  v171 = &vp9_extra_bits;
  if (v170 == 10)
  {
    v171 = &vp9_extra_bits_high10;
  }

  if (v170 == 12)
  {
    v172 = &vp9_extra_bits_high12;
  }

  else
  {
    v172 = v171;
  }

  v173 = *v598;
  if (*v598 >= v597)
  {
LABEL_359:
    v294 = &v173[2 * (*(v173 + 4) == 127)];
    goto LABEL_362;
  }

  v174 = 1;
LABEL_190:
  while (2)
  {
    while (2)
    {
      v175 = *(v173 + 4);
      if (v175 == 11)
      {
        v185 = *(a4 + 8);
        v186 = *a4;
        v187 = (((*(a4 + 4) - 1) * **v173) >> 8) + 1;
        result = vpx_norm[v187];
        v188 = v185 + result;
        if (v185 + result < 0)
        {
          v191 = v185 + result;
          LOBYTE(v188) = vpx_norm[v187];
          goto LABEL_216;
        }

        if (*(a4 + 12))
        {
LABEL_215:
          v186 = (v186 << -v185) & 0xFFFFFF;
          v191 = v188 - 8;
LABEL_216:
          *(a4 + 4) = v187 << result;
          *(a4 + 8) = v191;
          *a4 = v186 << v188;
          v173 += 2;
          if (v173 >= v597)
          {
            goto LABEL_359;
          }

          continue;
        }

        v189 = *(a4 + 16);
        if (((v186 << ~v185) & 0x80000000) != 0)
        {
          v193 = v189 - 1;
          if (v189 >= 1)
          {
            while (1)
            {
              --v189;
              v194 = *(a4 + 24);
              if (*(v194 + v189) != 255)
              {
                break;
              }

              *(v194 + v189) = 0;
              if (v189 <= 0)
              {
                v193 = -1;
                goto LABEL_213;
              }
            }

            v193 = v189;
          }

LABEL_213:
          ++*(*(a4 + 24) + v193);
          v189 = *(a4 + 16);
          if (v189 < *(a4 + 20))
          {
            goto LABEL_201;
          }
        }

        else if (v189 < *(a4 + 20))
        {
LABEL_201:
          v190 = *(a4 + 24);
          *(a4 + 16) = v189 + 1;
          *(v190 + v189) = v186 >> (v185 + 24);
          goto LABEL_215;
        }

        *(a4 + 12) = 1;
        goto LABEL_215;
      }

      break;
    }

    if (v175 == 127)
    {
      goto LABEL_359;
    }

    v176 = *(a4 + 4);
    v177 = *(a4 + 8);
    v178 = (((v176 - 1) * **v173) >> 8) + 1;
    v179 = v176 - v178;
    v180 = v178 + *a4;
    v181 = vpx_norm[v179];
    v182 = v177 + v181;
    if (v177 + v181 < 0)
    {
      v192 = v177 + v181;
      LOBYTE(v182) = vpx_norm[v179];
    }

    else
    {
      if (!*(a4 + 12))
      {
        v183 = *(a4 + 16);
        if (((v180 << ~v177) & 0x80000000) != 0)
        {
          v195 = v183 - 1;
          if (v183 >= 1)
          {
            while (1)
            {
              --v183;
              v196 = *(a4 + 24);
              if (*(v196 + v183) != 255)
              {
                break;
              }

              *(v196 + v183) = 0;
              if (v183 <= 0)
              {
                v195 = -1;
                goto LABEL_219;
              }
            }

            v195 = v183;
          }

LABEL_219:
          ++*(*(a4 + 24) + v195);
          v183 = *(a4 + 16);
          if (v183 >= *(a4 + 20))
          {
            goto LABEL_220;
          }

LABEL_196:
          v184 = *(a4 + 24);
          *(a4 + 16) = v183 + 1;
          *(v184 + v183) = v180 >> (v177 + 24);
        }

        else
        {
          if (v183 < *(a4 + 20))
          {
            goto LABEL_196;
          }

LABEL_220:
          *(a4 + 12) = 1;
        }
      }

      v180 = (v180 << -v177) & 0xFFFFFF;
      v192 = v182 - 8;
    }

    v197 = v179 << v181;
    *(a4 + 4) = v179 << v181;
    *(a4 + 8) = v192;
    v198 = v180 << v182;
    *a4 = v198;
LABEL_223:
    v199 = *(v173 + 4);
    v200 = *v173;
    v201 = (((v197 - 1) * (*v173)[1]) >> 8) + 1;
    if (*(v173 + 4))
    {
      v209 = v197 - v201;
      v210 = v201 + v198;
      v211 = vpx_norm[v209];
      v212 = v192 + v211;
      if (v192 + v211 < 0)
      {
        v216 = v192 + v211;
        v217 = v209 << v211;
        *(a4 + 4) = v209 << v211;
        *(a4 + 8) = v192 + v211;
        v218 = v210 << v211;
        *a4 = v210 << v211;
        if (v199 == 1)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if (!*(a4 + 12))
        {
          v213 = *(a4 + 16);
          if (((v210 << ~v192) & 0x80000000) != 0)
          {
            v214 = v213 - 1;
            if (v213 >= 1)
            {
              while (1)
              {
                --v213;
                v215 = *(a4 + 24);
                if (*(v215 + v213) != 255)
                {
                  break;
                }

                *(v215 + v213) = 0;
                if (v213 <= 0)
                {
                  v214 = -1;
                  goto LABEL_258;
                }
              }

              v214 = v213;
            }

LABEL_258:
            ++*(*(a4 + 24) + v214);
            v213 = *(a4 + 16);
          }

          if (v213 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v232 = *(a4 + 24);
            *(a4 + 16) = v213 + 1;
            *(v232 + v213) = v210 >> (v192 + 24);
          }
        }

        v216 = v212 - 8;
        v217 = v209 << v211;
        *(a4 + 4) = v209 << v211;
        *(a4 + 8) = v212 - 8;
        v218 = ((v210 << -v192) & 0xFFFFFF) << v212;
        *a4 = v218;
        if (v199 == 1)
        {
LABEL_263:
          v233 = (((v217 - 1) * v200[2]) >> 8) + 1;
          v234 = vpx_norm[v233];
          v235 = v216 + v234;
          if (v216 + v234 < 0)
          {
            v239 = v216 + v234;
            LOBYTE(v235) = vpx_norm[v233];
          }

          else
          {
            if (!*(a4 + 12))
            {
              v236 = *(a4 + 16);
              if (((v218 << ~v216) & 0x80000000) != 0)
              {
                v237 = v236 - 1;
                if (v236 >= 1)
                {
                  while (1)
                  {
                    --v236;
                    v238 = *(a4 + 24);
                    if (*(v238 + v236) != 255)
                    {
                      break;
                    }

                    *(v238 + v236) = 0;
                    if (v236 <= 0)
                    {
                      v237 = -1;
                      goto LABEL_329;
                    }
                  }

                  v237 = v236;
                }

LABEL_329:
                ++*(*(a4 + 24) + v237);
                v236 = *(a4 + 16);
              }

              if (v236 >= *(a4 + 20))
              {
                *(a4 + 12) = 1;
              }

              else
              {
                v280 = *(a4 + 24);
                *(a4 + 16) = v236 + 1;
                *(v280 + v236) = v218 >> (v216 + 24);
              }
            }

            v218 = (v218 << -v216) & 0xFFFFFF;
            v239 = v235 - 8;
          }

          v281 = v233 << v234;
          v282 = v218 << v235;
          *(a4 + 4) = v281;
          *(a4 + 8) = v239;
          *a4 = v218 << v235;
          v283 = *(v173 + 3);
          v284 = ((v281 << 7) - 128) >> 8;
          v285 = v281 - (v284 + 1);
          if ((v283 & 1) == 0)
          {
            v285 = v284 + 1;
          }

          result = ((v283 << 31 >> 31) & (v284 + 1)) + v282;
          v286 = vpx_norm[v285];
          v287 = v239 + v286;
          if (v239 + v286 < 0)
          {
            v291 = v239 + v286;
            LOBYTE(v287) = vpx_norm[v285];
          }

          else
          {
            if (!*(a4 + 12))
            {
              v288 = *(a4 + 16);
              if (((result << ~v239) & 0x80000000) != 0)
              {
                v289 = v288 - 1;
                if (v288 >= 1)
                {
                  while (1)
                  {
                    --v288;
                    v290 = *(a4 + 24);
                    if (*(v290 + v288) != 255)
                    {
                      break;
                    }

                    *(v290 + v288) = 0;
                    if (v288 <= 0)
                    {
                      v289 = -1;
                      goto LABEL_353;
                    }
                  }

                  v289 = v288;
                }

LABEL_353:
                ++*(*(a4 + 24) + v289);
                v288 = *(a4 + 16);
              }

              if (v288 >= *(a4 + 20))
              {
                *(a4 + 12) = 1;
              }

              else
              {
                v293 = *(a4 + 24);
                *(a4 + 16) = v288 + 1;
                *(v293 + v288) = result >> (v239 + 24);
              }
            }

            result = (result << -v239) & 0xFFFFFF;
            v291 = v287 - 8;
          }

          *(a4 + 4) = v285 << v286;
          *(a4 + 8) = v291;
          *a4 = result << v287;
          v173 += 2;
          if (v173 >= v597)
          {
            goto LABEL_359;
          }

          continue;
        }
      }

      v219 = (&vp9_coef_encodings + 8 * v199);
      v220 = *v219;
      v221 = v219[1];
      v222 = *(v173 + 3);
      v223 = (((v217 - 1) * v200[2]) >> 8) + 1;
      v224 = v217 - v223;
      v225 = v223 + v218;
      v226 = vpx_norm[v224];
      v227 = v216 + v226;
      if (v216 + v226 < 0)
      {
        v231 = v216 + v226;
        LOBYTE(v227) = vpx_norm[v224];
      }

      else
      {
        if (!*(a4 + 12))
        {
          v228 = *(a4 + 16);
          if (((v225 << ~v216) & 0x80000000) != 0)
          {
            v229 = v228 - 1;
            if (v228 >= 1)
            {
              while (1)
              {
                --v228;
                v230 = *(a4 + 24);
                if (*(v230 + v228) != 255)
                {
                  break;
                }

                *(v230 + v228) = 0;
                if (v228 <= 0)
                {
                  v229 = -1;
                  goto LABEL_272;
                }
              }

              v229 = v228;
            }

LABEL_272:
            ++*(*(a4 + 24) + v229);
            v228 = *(a4 + 16);
          }

          if (v228 >= *(a4 + 20))
          {
            *(a4 + 12) = 1;
          }

          else
          {
            v240 = *(a4 + 24);
            *(a4 + 16) = v228 + 1;
            *(v240 + v228) = v225 >> (v216 + 24);
          }
        }

        v225 = (v225 << -v216) & 0xFFFFFF;
        v231 = v227 - 8;
      }

      v241 = 0;
      v242 = v224 << v226;
      v243 = v225 << v227;
      *(a4 + 4) = v242;
      *(a4 + 8) = v231;
      *a4 = v225 << v227;
      v244 = &vp9_pareto8_full + 8 * v200[2] - 8;
      v245 = v221 - 3;
      while (1)
      {
        --v245;
        v247 = ((v242 - 1) * v244[v241 >> 1]) >> 8;
        v248 = v242 - (v247 + 1);
        if (((v220 >> v245) & 1) == 0)
        {
          v248 = v247 + 1;
        }

        v246 = (((v220 >> v245 << 31) >> 31) & (v247 + 1)) + v243;
        v249 = vpx_norm[v248];
        v250 = v231 + v249;
        if (v231 + v249 < 0)
        {
          v231 += v249;
          LOBYTE(v250) = vpx_norm[v248];
          goto LABEL_280;
        }

        if (!*(a4 + 12))
        {
          v251 = *(a4 + 16);
          if (((v246 << ~v231) & 0x80000000) != 0)
          {
            v252 = v251 - 1;
            if (v251 >= 1)
            {
              while (1)
              {
                --v251;
                v253 = *(a4 + 24);
                if (*(v253 + v251) != 255)
                {
                  break;
                }

                *(v253 + v251) = 0;
                if (v251 <= 0)
                {
                  v252 = -1;
                  goto LABEL_294;
                }
              }

              v252 = v251;
            }

LABEL_294:
            ++*(*(a4 + 24) + v252);
            v251 = *(a4 + 16);
            if (v251 < *(a4 + 20))
            {
LABEL_295:
              v254 = *(a4 + 24);
              *(a4 + 16) = v251 + 1;
              *(v254 + v251) = v246 >> (v231 + 24);
              goto LABEL_279;
            }
          }

          else if (v251 < *(a4 + 20))
          {
            goto LABEL_295;
          }

          *(a4 + 12) = 1;
        }

LABEL_279:
        v246 = (v246 << -v231) & 0xFFFFFF;
        v231 = v250 - 8;
LABEL_280:
        v242 = v248 << v249;
        v243 = v246 << v250;
        *(a4 + 4) = v242;
        *(a4 + 8) = v231;
        *a4 = v243;
        v241 = vp9_coef_con_tree[((v220 >> v245) & 1) + v241];
        if (!v245)
        {
          if (v199 < 5)
          {
LABEL_317:
            v271 = v222 << 31 >> 31;
            v272 = ((v242 << 7) - 128) >> 8;
            if (v222)
            {
              v273 = v242 - (v272 + 1);
            }

            else
            {
              v273 = v272 + 1;
            }

            result = (v271 & (v272 + 1)) + v243;
            v274 = vpx_norm[v273];
            v275 = v231 + v274;
            if (v231 + v274 < 0)
            {
              v279 = v231 + v274;
              LOBYTE(v275) = vpx_norm[v273];
            }

            else
            {
              if (!*(a4 + 12))
              {
                v276 = *(a4 + 16);
                if (((result << ~v231) & 0x80000000) != 0)
                {
                  v277 = v276 - 1;
                  if (v276 >= 1)
                  {
                    while (1)
                    {
                      --v276;
                      v278 = *(a4 + 24);
                      if (*(v278 + v276) != 255)
                      {
                        break;
                      }

                      *(v278 + v276) = 0;
                      if (v276 <= 0)
                      {
                        v277 = -1;
                        goto LABEL_345;
                      }
                    }

                    v277 = v276;
                  }

LABEL_345:
                  ++*(*(a4 + 24) + v277);
                  v276 = *(a4 + 16);
                }

                if (v276 >= *(a4 + 20))
                {
                  *(a4 + 12) = 1;
                }

                else
                {
                  v292 = *(a4 + 24);
                  *(a4 + 16) = v276 + 1;
                  *(v292 + v276) = result >> (v231 + 24);
                }
              }

              result = (result << -v231) & 0xFFFFFF;
              v279 = v275 - 8;
            }

            *(a4 + 4) = v273 << v274;
            *(a4 + 8) = v279;
            *a4 = result << v275;
            v173 += 2;
            if (v173 >= v597)
            {
              goto LABEL_359;
            }

            goto LABEL_190;
          }

          v255 = &v172[24 * v199];
          v256 = *v255;
          v257 = *(v255 + 2);
          while (2)
          {
            while (1)
            {
              --v257;
              v259 = *v256++;
              v260 = ((v242 - 1) * v259) >> 8;
              v261 = v242 - (v260 + 1);
              if (((1 << v257) & (v222 >> 1)) != 0)
              {
                v262 = v260 + 1;
              }

              else
              {
                v261 = v260 + 1;
                v262 = 0;
              }

              v263 = v262 + v243;
              v264 = vpx_norm[v261];
              v265 = v231 + v264;
              if (v231 + v264 >= 0)
              {
                break;
              }

              v231 += v264;
              v267 = vpx_norm[v261];
              v242 = v261 << v264;
              *(a4 + 4) = v242;
              *(a4 + 8) = v231;
              v243 = v263 << v267;
              *a4 = v243;
              if (!v257)
              {
                goto LABEL_317;
              }
            }

            if (!*(a4 + 12))
            {
              v266 = *(a4 + 16);
              if (((v263 << ~v231) & 0x80000000) != 0)
              {
                v268 = v266 - 1;
                if (v266 >= 1)
                {
                  while (1)
                  {
                    --v266;
                    v269 = *(a4 + 24);
                    if (*(v269 + v266) != 255)
                    {
                      break;
                    }

                    *(v269 + v266) = 0;
                    if (v266 <= 0)
                    {
                      v268 = -1;
                      goto LABEL_315;
                    }
                  }

                  v268 = v266;
                }

LABEL_315:
                ++*(*(a4 + 24) + v268);
                v266 = *(a4 + 16);
                if (v266 >= *(a4 + 20))
                {
                  goto LABEL_298;
                }

LABEL_316:
                v270 = *(a4 + 24);
                *(a4 + 16) = v266 + 1;
                *(v270 + v266) = v263 >> (v231 + 24);
              }

              else
              {
                if (v266 < *(a4 + 20))
                {
                  goto LABEL_316;
                }

LABEL_298:
                *(a4 + 12) = 1;
              }
            }

            v258 = (v263 << -v231) & 0xFFFFFF;
            v231 = v265 - 8;
            v242 = v261 << v264;
            *(a4 + 4) = v242;
            *(a4 + 8) = v265 - 8;
            v243 = v258 << v265;
            *a4 = v243;
            if (!v257)
            {
              goto LABEL_317;
            }

            continue;
          }
        }
      }
    }

    break;
  }

  v202 = vpx_norm[v201];
  v203 = v192 + v202;
  if (v192 + v202 < 0)
  {
    v192 += v202;
    LOBYTE(v203) = vpx_norm[v201];
  }

  else
  {
    if (!*(a4 + 12))
    {
      v204 = *(a4 + 16);
      if (((v198 << ~v192) & 0x80000000) != 0)
      {
        v206 = v204 - 1;
        if (v204 >= 1)
        {
          while (1)
          {
            --v204;
            v207 = *(a4 + 24);
            if (*(v207 + v204) != 255)
            {
              break;
            }

            *(v207 + v204) = 0;
            if (v204 <= 0)
            {
              v206 = -1;
              goto LABEL_235;
            }
          }

          v206 = v204;
        }

LABEL_235:
        ++*(*(a4 + 24) + v206);
        v204 = *(a4 + 16);
        if (v204 >= *(a4 + 20))
        {
          goto LABEL_236;
        }

LABEL_228:
        v205 = *(a4 + 24);
        *(a4 + 16) = v204 + 1;
        *(v205 + v204) = v198 >> (v192 + 24);
      }

      else
      {
        if (v204 < *(a4 + 20))
        {
          goto LABEL_228;
        }

LABEL_236:
        *(a4 + 12) = 1;
      }
    }

    v198 = (v198 << -v192) & 0xFFFFFF;
    v192 = v203 - 8;
  }

  v197 = v201 << v202;
  v198 <<= v203;
  *(a4 + 4) = v201 << v202;
  *(a4 + 8) = v192;
  *a4 = v198;
  result = (v173 + 2);
  v208 = *(v173 + 12);
  if (v173 + 2 != v597)
  {
    v173 += 2;
    if (v208 == 127)
    {
      goto LABEL_361;
    }

    goto LABEL_223;
  }

  v174 = v208 == 127;
LABEL_361:
  v294 = (result + 16 * v174);
LABEL_362:
  *v598 = v294;
  return result;
}

uint64_t write_selected_tx_size(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 456);
  v4 = **(a2 + 448);
  v5 = *v4;
  v6 = max_txsize_lookup[v5];
  v7 = *(a2 + 464);
  v8 = v6;
  if (v7)
  {
    v8 = max_txsize_lookup[v5];
    if (!*(v7 + 3))
    {
      v8 = *(v7 + 2);
    }
  }

  v9 = v4[2];
  v10 = v8;
  if (v3)
  {
    v10 = max_txsize_lookup[v5];
    if (!*(v3 + 3))
    {
      v10 = *(v3 + 2);
    }
  }

  if (v7)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v10;
  v13 = *(result + 4904);
  v14 = v13 + ((v12 > v6) | (2 * (v12 > v6))) + 1955;
  v15 = v12 > v6;
  v16 = v13 + 2 * (v12 > v6) + 1961;
  if (v15)
  {
    ++v13;
  }

  v17 = v13 + 1965;
  if (v6 != 1)
  {
    v17 = 0;
  }

  if (v6 != 2)
  {
    v16 = v17;
  }

  if (v6 == 3)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  v20 = *(a3 + 4);
  v19 = *(a3 + 8);
  v21 = ((v20 - 1) * *v18) >> 8;
  v22 = v20 - (v21 + 1);
  if (v9)
  {
    v23 = v21 + 1;
  }

  else
  {
    v22 = v21 + 1;
    v23 = 0;
  }

  v24 = v23 + *a3;
  v25 = vpx_norm[v22];
  v26 = v19 + v25;
  if (v19 + v25 < 0)
  {
    v29 = v19 + v25;
    v30 = v22 << v25;
    *(a3 + 4) = v30;
    *(a3 + 8) = v29;
    v31 = v24 << v25;
    *a3 = v31;
    if (!v9)
    {
      return result;
    }

    goto LABEL_37;
  }

  v27 = -v19;
  result = *(a3 + 12);
  if (!result)
  {
    if (((v24 << ~v19) & 0x80000000) != 0)
    {
      v32 = *(a3 + 16);
      v33 = v32 - 1;
      if (v32 >= 1)
      {
        while (1)
        {
          --v32;
          v34 = *(a3 + 24);
          if (*(v34 + v32) != 255)
          {
            break;
          }

          *(v34 + v32) = 0;
          if (v32 <= 0)
          {
            v33 = -1;
            goto LABEL_34;
          }
        }

        v33 = v32;
      }

LABEL_34:
      ++*(*(a3 + 24) + v33);
      result = *(a3 + 16);
      if (result < *(a3 + 20))
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = *(a3 + 16);
      if (result < *(a3 + 20))
      {
LABEL_26:
        v28 = *(a3 + 24);
        *(a3 + 16) = result + 1;
        *(v28 + result) = v24 >> (v19 + 24);
        goto LABEL_36;
      }
    }

    *(a3 + 12) = 1;
  }

LABEL_36:
  v29 = v26 - 8;
  v30 = v22 << v25;
  *(a3 + 4) = v30;
  *(a3 + 8) = v26 - 8;
  v31 = ((v24 << v27) & 0xFFFFFF) << v26;
  *a3 = v31;
  if (!v9)
  {
    return result;
  }

LABEL_37:
  if ((v5 - 6) > 6)
  {
    return result;
  }

  v35 = ((v30 - 1) * v18[1]) >> 8;
  v36 = v30 - (v35 + 1);
  if (v9 == 1)
  {
    v36 = v35 + 1;
    v37 = 0;
  }

  else
  {
    v37 = v35 + 1;
  }

  v38 = v37 + v31;
  v39 = vpx_norm[v36];
  v40 = v29 + v39;
  if (v29 + v39 < 0)
  {
    v43 = v29 + v39;
    v44 = vpx_norm[v36];
    v45 = v36 << v39;
    *(a3 + 4) = v45;
    *(a3 + 8) = v43;
    v46 = v38 << v44;
    *a3 = v38 << v44;
    if (v9 == 1)
    {
      return result;
    }

    goto LABEL_56;
  }

  v41 = -v29;
  result = *(a3 + 12);
  if (!result)
  {
    if (((v38 << ~v29) & 0x80000000) != 0)
    {
      v47 = *(a3 + 16);
      v48 = v47 - 1;
      if (v47 >= 1)
      {
        while (1)
        {
          --v47;
          v49 = *(a3 + 24);
          if (*(v49 + v47) != 255)
          {
            break;
          }

          *(v49 + v47) = 0;
          if (v47 <= 0)
          {
            v48 = -1;
            goto LABEL_53;
          }
        }

        v48 = v47;
      }

LABEL_53:
      ++*(*(a3 + 24) + v48);
      result = *(a3 + 16);
      if (result < *(a3 + 20))
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = *(a3 + 16);
      if (result < *(a3 + 20))
      {
LABEL_45:
        v42 = *(a3 + 24);
        *(a3 + 16) = result + 1;
        *(v42 + result) = v38 >> (v29 + 24);
        goto LABEL_55;
      }
    }

    *(a3 + 12) = 1;
  }

LABEL_55:
  v43 = v40 - 8;
  v45 = v36 << v39;
  *(a3 + 4) = v45;
  *(a3 + 8) = v40 - 8;
  v46 = ((v38 << v41) & 0xFFFFFF) << v40;
  *a3 = v46;
  if (v9 == 1)
  {
    return result;
  }

LABEL_56:
  if ((v5 - 9) <= 3)
  {
    v50 = ((v45 - 1) * v18[2]) >> 8;
    v51 = v45 - (v50 + 1);
    if (v9 == 2)
    {
      v51 = v50 + 1;
      v52 = 0;
    }

    else
    {
      v52 = v50 + 1;
    }

    v53 = v52 + v46;
    v54 = vpx_norm[v51];
    v55 = v43 + v54;
    if (v43 + v54 < 0)
    {
      *(a3 + 4) = v51 << v54;
      *(a3 + 8) = v43 + v54;
      *a3 = v53 << v54;
    }

    else
    {
      if (!*(a3 + 12))
      {
        if (((v53 << ~v43) & 0x80000000) != 0)
        {
          v56 = *(a3 + 16);
          v57 = v56 - 1;
          if (v56 >= 1)
          {
            while (1)
            {
              --v56;
              v58 = *(a3 + 24);
              if (*(v58 + v56) != 255)
              {
                break;
              }

              *(v58 + v56) = 0;
              if (v56 <= 0)
              {
                v57 = -1;
                goto LABEL_69;
              }
            }

            v57 = v56;
          }

LABEL_69:
          ++*(*(a3 + 24) + v57);
        }

        v59 = *(a3 + 16);
        if (v59 >= *(a3 + 20))
        {
          *(a3 + 12) = 1;
        }

        else
        {
          v60 = *(a3 + 24);
          *(a3 + 16) = v59 + 1;
          *(v60 + v59) = v53 >> (v43 + 24);
        }
      }

      *(a3 + 4) = v51 << v54;
      *(a3 + 8) = v55 - 8;
      *a3 = ((v53 << -v43) & 0xFFFFFF) << v55;
    }
  }

  return result;
}

uint64_t write_intra_mode(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v4 = (&intra_mode_encodings + 8 * a2);
  v5 = *v4;
  v6 = v4[1];
  v8 = *(result + 4);
  v7 = *(result + 8);
  v9 = *result;
  do
  {
    --v6;
    v11 = ((v8 - 1) * *(a3 + (v3 >> 1))) >> 8;
    v12 = v8 - (v11 + 1);
    if (((v5 >> v6) & 1) == 0)
    {
      v12 = v11 + 1;
    }

    v10 = (((v5 >> v6 << 31) >> 31) & (v11 + 1)) + v9;
    v13 = vpx_norm[v12];
    v14 = v7 + v13;
    if (v7 + v13 >= 0)
    {
      if (!*(result + 12))
      {
        v15 = *(result + 16);
        if (((v10 << ~v7) & 0x80000000) != 0)
        {
          v16 = v15 - 1;
          if (v15 >= 1)
          {
            while (1)
            {
              --v15;
              v17 = *(result + 24);
              if (*(v17 + v15) != 255)
              {
                break;
              }

              *(v17 + v15) = 0;
              if (v15 <= 0)
              {
                v16 = -1;
                goto LABEL_18;
              }
            }

            v16 = v15;
          }

LABEL_18:
          ++*(*(result + 24) + v16);
          v15 = *(result + 16);
          if (v15 < *(result + 20))
          {
            goto LABEL_19;
          }
        }

        else if (v15 < *(result + 20))
        {
LABEL_19:
          v18 = *(result + 24);
          *(result + 16) = v15 + 1;
          *(v18 + v15) = v10 >> (v7 + 24);
          goto LABEL_3;
        }

        *(result + 12) = 1;
      }

LABEL_3:
      v10 = (v10 << -v7) & 0xFFFFFF;
      v7 = v14 - 8;
      goto LABEL_4;
    }

    v7 += v13;
    LOBYTE(v14) = vpx_norm[v12];
LABEL_4:
    v8 = v12 << v13;
    v9 = v10 << v14;
    *(result + 4) = v8;
    *(result + 8) = v7;
    *result = v9;
    v3 = vp9_intra_mode_tree[((v5 >> v6) & 1) + v3];
  }

  while (v6);
  return result;
}

uint64_t vp9_foreach_transformed_block(uint64_t result, unsigned int a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v6 = a2;
  v7 = **(result + 448);
  v8 = *(result + 8);
  v9 = *(result + 12);
  v10 = ss_size_lookup[4 * a2 + 2 * v8 + v9];
  v11 = v7[2];
  v12 = *(result + 492);
  v13 = (v12 >> (v8 + 5)) & (v12 >> 31);
  v14 = v13 + num_4x4_blocks_wide_lookup[v10];
  v15 = *(result + 500);
  v16 = ((v15 >> (v9 + 5)) & (v15 >> 31)) + num_4x4_blocks_high_lookup[v10];
  if (v16 >= 1 && v14 >= 1)
  {
    v48 = a2;
    v50 = result;
    v18 = 0;
    v19 = 0;
    v52 = -v13 >> v11 << (2 * v11);
    v55 = v16;
    v20 = 1 << v11;
    do
    {
      v21 = 0;
      do
      {
        a3(0, v18, v19, v21, v10, v11, a4);
        v18 = (v18 + (1 << (2 * v11)));
        v21 = (v21 + v20);
      }

      while (v21 < v14);
      v18 = (v52 + v18);
      v19 = (v19 + v20);
    }

    while (v19 < v55);
    v6 = v48;
    result = v50;
    v7 = **(v50 + 448);
    LODWORD(v11) = v7[2];
    v12 = *(v50 + 492);
    v15 = *(v50 + 500);
  }

  v22 = *v7;
  v24 = *(result + 144);
  v23 = *(result + 148);
  v25 = 2 * v24;
  v26 = &ss_size_lookup[4 * v6];
  v27 = v26[2 * v24 + v23];
  v28 = v11;
  v56 = ((v15 >> (v23 + 5)) & (v15 >> 31)) + num_4x4_blocks_high_lookup[v27];
  if (v56 >= 1)
  {
    v29 = (v12 >> (v24 + 5)) & (v12 >> 31);
    v30 = v29 + num_4x4_blocks_wide_lookup[v27];
    if (v30 >= 1)
    {
      v49 = &ss_size_lookup[4 * v6];
      v51 = result;
      v31 = 0;
      v32 = 0;
      v33 = uv_txsize_lookup[16 * v22 + 4 * v11 + v25 + v23];
      v53 = -v29 >> v33 << (2 * v33);
      v34 = 1 << v33;
      do
      {
        v35 = 0;
        do
        {
          a3(1, v31, v32, v35, v27, v33, a4);
          v31 = (v31 + (1 << (2 * v33)));
          v35 = (v35 + v34);
        }

        while (v35 < v30);
        v31 = (v53 + v31);
        v32 = (v32 + v34);
      }

      while (v32 < v56);
      v26 = v49;
      result = v51;
      v36 = **(v51 + 448);
      v22 = *v36;
      v28 = v36[2];
      v12 = *(v51 + 492);
      v15 = *(v51 + 500);
    }
  }

  v37 = *(result + 280);
  v38 = *(result + 284);
  v39 = v26[2 * v37 + v38];
  v40 = (v12 >> (v37 + 5)) & (v12 >> 31);
  v41 = v40 + num_4x4_blocks_wide_lookup[v39];
  v57 = ((v15 >> (v38 + 5)) & (v15 >> 31)) + num_4x4_blocks_high_lookup[v39];
  if (v57 >= 1 && v41 >= 1)
  {
    v43 = 0;
    v44 = 0;
    v45 = uv_txsize_lookup[16 * v22 + 4 * v28 + 2 * v37 + v38];
    v54 = -v40 >> v45 << (2 * v45);
    v46 = 1 << v45;
    do
    {
      v47 = 0;
      do
      {
        result = (a3)(2, v43, v44, v47, v39, v45, a4);
        v43 = (v43 + (1 << (2 * v45)));
        v47 = (v47 + v46);
      }

      while (v47 < v41);
      v43 = (v54 + v43);
      v44 = (v44 + v46);
    }

    while (v44 < v57);
  }

  return result;
}

void vp9_set_contexts(uint64_t a1, uint64_t a2, int a3, char a4, int __c, int a6, int a7)
{
  v9 = (*(a2 + 64) + a6);
  v10 = (*(a2 + 72) + a7);
  v11 = 1 << a4;
  if (!__c)
  {
    v16 = v11;
    bzero(v9, v11);
LABEL_20:

    memset(v10, __c, v16);
    return;
  }

  v15 = *(a1 + 492);
  if (v15 < 0)
  {
    v17 = (v15 >> (*(a2 + 8) + 5)) + num_4x4_blocks_wide_lookup[a3];
    v18 = v11 + a6;
    if (v11 + a6 <= v17)
    {
      v19 = 1 << a4;
    }

    else
    {
      v19 = v17 - a6;
    }

    if (v19 >= 1)
    {
      if (v18 >= v17)
      {
        v20 = (v15 >> (*(a2 + 8) + 5)) + num_4x4_blocks_wide_lookup[a3];
      }

      else
      {
        v20 = v11 + a6;
      }

      v30 = (*(a2 + 72) + a7);
      v21 = (*(a2 + 64) + a6);
      memset(v9, __c, (v20 + ~a6) + 1);
      v9 = v21;
      v10 = v30;
    }

    if (v19 < v11)
    {
      v22 = &v9[v19];
      if (v18 >= v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = v18;
      }

      bzero(v22, (v18 + ~v23) + 1);
    }
  }

  else
  {
    memset(v9, __c, v11);
  }

  v24 = *(a1 + 500);
  if ((v24 & 0x80000000) == 0)
  {
    v16 = v11;
    goto LABEL_20;
  }

  v25 = (v24 >> (*(a2 + 12) + 5)) + num_4x4_blocks_high_lookup[a3];
  v26 = v11 + a7;
  if (v11 + a7 <= v25)
  {
    v27 = v11;
  }

  else
  {
    v27 = v25 - a7;
  }

  if (v27 >= 1)
  {
    if (v26 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v11 + a7;
    }

    memset(v10, __c, (v28 + ~a7) + 1);
  }

  if (v27 < v11)
  {
    if (v26 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v11 + a7;
    }

    bzero(&v10[v27], (v26 + ~v29) + 1);
  }
}

int64x2_t vp9_setup_pc_tree(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 110592);
  v4 = *(a2 + 114256);
  if (v4)
  {
    free(*(v4 - 8));
  }

  v5 = malloc_type_malloc(0xD417uLL, 0xD93B561uLL);
  if (v5)
  {
    v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v6 - 8) = v5;
    if (v6)
    {
      bzero(((v5 + 23) & 0xFFFFFFFFFFFFFFF0), 0xD400uLL);
      v3[458] = v6;
      v7 = v3[459];
      if (!v7)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v3[458] = 0;
  vpx_internal_error(a1, 2, "Failed to allocate td->leaf_tree");
  v7 = v3[459];
  if (v7)
  {
LABEL_8:
    free(*(v7 - 8));
  }

LABEL_9:
  v8 = malloc_type_malloc(0x5927FuLL, 0xD93B561uLL);
  if (v8 && (v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0, *(v9 - 8) = v8, v9))
  {
    bzero(((v8 + 23) & 0xFFFFFFFFFFFFFFF0), 0x59268uLL);
    v3[459] = v9;
  }

  else
  {
    v3[459] = 0;
    vpx_internal_error(a1, 2, "Failed to allocate td->pc_tree");
    v9 = v3[459];
  }

  v10 = 0;
  v11 = v3[458];
  v12 = 64;
  do
  {
    alloc_mode_context(a1, 1, v3[458] + v10);
    v10 += 848;
    --v12;
  }

  while (v12);
  v13 = 0;
  v14 = 64;
  do
  {
    v15 = v3[459] + v13;
    *(v15 + 8) = 3;
    alloc_mode_context(a1, 4, v15 + 16);
    alloc_mode_context(a1, 2, v15 + 864);
    alloc_mode_context(a1, 2, v15 + 2560);
    bzero((v15 + 1712), 0x350uLL);
    bzero((v15 + 3408), 0x350uLL);
    *(v15 + 4256) = v11;
    *(v15 + 4264) = v11;
    *(v15 + 4272) = v11;
    *(v15 + 4280) = v11;
    v11 += 848;
    v13 += 4296;
    --v14;
  }

  while (v14);
  v16 = 16;
  v17 = 274952;
  do
  {
    v18 = v3[459] + v17;
    alloc_mode_context(a1, 16, v18 + 8);
    alloc_mode_context(a1, 8, v18 + 856);
    alloc_mode_context(a1, 8, v18 + 2552);
    alloc_mode_context(a1, 8, v18 + 1704);
    alloc_mode_context(a1, 8, v18 + 3400);
    *v18 = 6;
    *(v18 + 4248) = v9;
    *(v18 + 4256) = v9 + 4296;
    v19 = v9 + 12888;
    *(v18 + 4264) = v9 + 8592;
    v9 += 17184;
    v17 += 4296;
    *(v18 + 4272) = v19;
    --v16;
  }

  while (v16);
  v20 = v3[459];
  alloc_mode_context(a1, 64, v20 + 343696);
  alloc_mode_context(a1, 32, v20 + 344544);
  alloc_mode_context(a1, 32, v20 + 346240);
  alloc_mode_context(a1, 32, v20 + 345392);
  alloc_mode_context(a1, 32, v20 + 347088);
  *(v20 + 343688) = 9;
  *(v20 + 347936) = v9;
  *(v20 + 347944) = v9 + 4296;
  v27 = vdupq_n_s64(v9 - 17184);
  *(v20 + 347952) = v9 + 8592;
  *(v20 + 347960) = v9 + 12888;
  v21 = v3[459];
  alloc_mode_context(a1, 64, v21 + 347992);
  alloc_mode_context(a1, 32, v21 + 348840);
  alloc_mode_context(a1, 32, v21 + 350536);
  alloc_mode_context(a1, 32, v21 + 349688);
  alloc_mode_context(a1, 32, v21 + 351384);
  *(v21 + 347984) = 9;
  *(v21 + 352232) = vaddq_s64(v27, xmmword_273BCECC0);
  *(v21 + 352248) = vaddq_s64(v27, xmmword_273BCECD0);
  v22 = v3[459];
  alloc_mode_context(a1, 64, v22[22018].i64);
  alloc_mode_context(a1, 32, v22[22071].i64);
  alloc_mode_context(a1, 32, v22[22177].i64);
  alloc_mode_context(a1, 32, v22[22124].i64);
  alloc_mode_context(a1, 32, v22[22230].i64);
  v22[22017].i8[8] = 9;
  v22[22283] = vaddq_s64(v27, xmmword_273BCECE0);
  v22[22284] = vaddq_s64(v27, xmmword_273BCECF0);
  v23 = v3[459];
  alloc_mode_context(a1, 64, v23 + 356584);
  alloc_mode_context(a1, 32, v23 + 357432);
  alloc_mode_context(a1, 32, v23 + 359128);
  alloc_mode_context(a1, 32, v23 + 358280);
  alloc_mode_context(a1, 32, v23 + 359976);
  *(v23 + 356576) = 9;
  *(v23 + 360824) = vaddq_s64(v27, xmmword_273BCED00);
  *(v23 + 360840) = vaddq_s64(v27, xmmword_273BCED10);
  v24 = v3[459];
  alloc_mode_context(a1, 256, v24[22555].i64);
  alloc_mode_context(a1, 128, v24[22608].i64);
  alloc_mode_context(a1, 128, v24[22714].i64);
  alloc_mode_context(a1, 128, v24[22661].i64);
  alloc_mode_context(a1, 128, v24[22767].i64);
  v24[22554].i8[8] = 12;
  result = vaddq_s64(v27, xmmword_273BCED20);
  v24[22820] = result;
  v24[22821] = vaddq_s64(v27, xmmword_273BCED30);
  v26 = v3[459];
  v3[460] = v26 + 360864;
  *(v26 + 361600) = 2;
  return result;
}

uint64_t alloc_mode_context(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 <= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a2;
  }

  *(a3 + 692) = v5;
  v6 = malloc_type_malloc(v5 + 23, 0xD93B561uLL);
  if (v6 && (v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF0, *(v7 - 8) = v6, v7))
  {
    bzero(((v6 + 23) & 0xFFFFFFFFFFFFFFF0), v5);
    *(a3 + 104) = v7;
  }

  else
  {
    *(a3 + 104) = 0;
    vpx_internal_error(a1, 2, "Failed to allocate ctx->zcoeff_blk");
  }

  v8 = 0;
  v9 = 0;
  v55 = a3 + 184;
  v56 = a3 + 112;
  v10 = 2 * v5;
  v53 = a3 + 328;
  v54 = a3 + 256;
  v11 = (4 * (16 * v5)) | 0x27;
  do
  {
    v16 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (v16)
    {
      v17 = (v16 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v17 - 8) = v16;
      *(a3 + v8 + 112) = v17;
      v18 = (a3 + v8 + 112);
      if (v17)
      {
        v19 = malloc_type_malloc(v11, 0xD93B561uLL);
        if (!v19)
        {
          goto LABEL_23;
        }

        goto LABEL_15;
      }

      v18 = (v56 + 24 * v9);
    }

    else
    {
      *(a3 + v8 + 112) = 0;
      v18 = (a3 + v8 + 112);
    }

    vpx_internal_error(a1, 2, "Failed to allocate ctx->coeff[i][k]", v53);
    v19 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (!v19)
    {
LABEL_23:
      *(a3 + v8 + 184) = 0;
      v21 = (a3 + v8 + 184);
      goto LABEL_25;
    }

LABEL_15:
    v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v20 - 8) = v19;
    *(a3 + v8 + 184) = v20;
    v21 = (a3 + v8 + 184);
    if (v20)
    {
      v22 = malloc_type_malloc(v11, 0xD93B561uLL);
      if (!v22)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    v21 = (v55 + 24 * v9);
LABEL_25:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->qcoeff[i][k]", v53);
    v22 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (!v22)
    {
LABEL_26:
      v24 = (a3 + v8 + 256);
      *v24 = 0;
      goto LABEL_28;
    }

LABEL_17:
    v23 = (v22 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v23 - 8) = v22;
    *(a3 + v8 + 256) = v23;
    if (v23)
    {
      v24 = (a3 + v8 + 256);
      v25 = malloc_type_malloc(v10 + 39, 0xD93B561uLL);
      if (!v25)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    v24 = (v54 + 24 * v9);
LABEL_28:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->dqcoeff[i][k]", v53);
    v25 = malloc_type_malloc(v10 + 39, 0xD93B561uLL);
    if (!v25)
    {
LABEL_19:
      v26 = (a3 + v8 + 328);
      *v26 = 0;
      goto LABEL_31;
    }

LABEL_29:
    v27 = (v25 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v27 - 8) = v25;
    *(a3 + v8 + 328) = v27;
    if (v27)
    {
      goto LABEL_32;
    }

    v26 = (v53 + 24 * v9);
LABEL_31:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->eobs[i][k]", v53);
    v27 = *v26;
LABEL_32:
    v28 = *v18;
    v29 = (a3 + v8);
    v29[50] = v28;
    v29[59] = *v21;
    v29[68] = *v24;
    v29[77] = v27;
    v30 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (v30)
    {
      v31 = (v30 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v31 - 8) = v30;
      v29[15] = v31;
      v32 = v29 + 15;
      if (v31)
      {
        v33 = malloc_type_malloc(v11, 0xD93B561uLL);
        if (!v33)
        {
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      v32 = (v56 + 24 * v9 + 8);
    }

    else
    {
      v29[15] = 0;
      v32 = v29 + 15;
    }

    vpx_internal_error(a1, 2, "Failed to allocate ctx->coeff[i][k]", v53);
    v33 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (!v33)
    {
LABEL_43:
      *(a3 + v8 + 192) = 0;
      v35 = (a3 + v8 + 192);
      goto LABEL_45;
    }

LABEL_35:
    v34 = (v33 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v34 - 8) = v33;
    *(a3 + v8 + 192) = v34;
    v35 = (a3 + v8 + 192);
    if (v34)
    {
      v36 = malloc_type_malloc(v11, 0xD93B561uLL);
      if (!v36)
      {
        goto LABEL_46;
      }

      goto LABEL_37;
    }

    v35 = (v55 + 24 * v9 + 8);
LABEL_45:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->qcoeff[i][k]", v53);
    v36 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (!v36)
    {
LABEL_46:
      v38 = (a3 + v8 + 264);
      *v38 = 0;
      goto LABEL_48;
    }

LABEL_37:
    v37 = (v36 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v37 - 8) = v36;
    *(a3 + v8 + 264) = v37;
    if (v37)
    {
      v38 = (a3 + v8 + 264);
      v39 = malloc_type_malloc(v10 + 39, 0xD93B561uLL);
      if (!v39)
      {
        goto LABEL_39;
      }

      goto LABEL_49;
    }

    v38 = (v54 + 24 * v9 + 8);
LABEL_48:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->dqcoeff[i][k]", v53);
    v39 = malloc_type_malloc(v10 + 39, 0xD93B561uLL);
    if (!v39)
    {
LABEL_39:
      v40 = (a3 + v8 + 336);
      *v40 = 0;
      goto LABEL_51;
    }

LABEL_49:
    v41 = (v39 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v41 - 8) = v39;
    *(a3 + v8 + 336) = v41;
    if (v41)
    {
      goto LABEL_52;
    }

    v40 = (v53 + 24 * v9 + 8);
LABEL_51:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->eobs[i][k]", v53);
    v41 = *v40;
LABEL_52:
    v42 = *v32;
    v43 = (a3 + v8);
    v43[51] = v42;
    v43[60] = *v35;
    v43[69] = *v38;
    v43[78] = v41;
    v44 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (v44)
    {
      v45 = (v44 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v45 - 8) = v44;
      v43[16] = v45;
      v46 = v43 + 16;
      if (v45)
      {
        v47 = malloc_type_malloc(v11, 0xD93B561uLL);
        if (!v47)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }

      v46 = (v56 + 24 * v9 + 16);
    }

    else
    {
      v43[16] = 0;
      v46 = v43 + 16;
    }

    vpx_internal_error(a1, 2, "Failed to allocate ctx->coeff[i][k]", v53);
    v47 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (!v47)
    {
LABEL_63:
      *(a3 + v8 + 200) = 0;
      v49 = (a3 + v8 + 200);
      goto LABEL_65;
    }

LABEL_55:
    v48 = (v47 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v48 - 8) = v47;
    *(a3 + v8 + 200) = v48;
    v49 = (a3 + v8 + 200);
    if (v48)
    {
      v50 = malloc_type_malloc(v11, 0xD93B561uLL);
      if (!v50)
      {
        goto LABEL_66;
      }

      goto LABEL_57;
    }

    v49 = (v55 + 24 * v9 + 16);
LABEL_65:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->qcoeff[i][k]", v53);
    v50 = malloc_type_malloc(v11, 0xD93B561uLL);
    if (!v50)
    {
LABEL_66:
      v52 = (a3 + v8 + 272);
      *v52 = 0;
      goto LABEL_68;
    }

LABEL_57:
    v51 = (v50 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v51 - 8) = v50;
    *(a3 + v8 + 272) = v51;
    if (v51)
    {
      v52 = (a3 + v8 + 272);
      result = malloc_type_malloc(v10 + 39, 0xD93B561uLL);
      if (!result)
      {
        goto LABEL_9;
      }

      goto LABEL_69;
    }

    v52 = (v54 + 24 * v9 + 16);
LABEL_68:
    vpx_internal_error(a1, 2, "Failed to allocate ctx->dqcoeff[i][k]", v53);
    result = malloc_type_malloc(v10 + 39, 0xD93B561uLL);
    if (!result)
    {
LABEL_9:
      v12 = (a3 + v8 + 344);
      *v12 = 0;
LABEL_10:
      result = vpx_internal_error(a1, 2, "Failed to allocate ctx->eobs[i][k]", v53);
      v14 = *v12;
      goto LABEL_11;
    }

LABEL_69:
    v14 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v14 - 8) = result;
    *(a3 + v8 + 344) = v14;
    if (!v14)
    {
      v12 = (v53 + 24 * v9 + 16);
      goto LABEL_10;
    }

LABEL_11:
    v15 = (a3 + v8);
    v15[52] = *v46;
    v15[61] = *v49;
    v15[70] = *v52;
    v15[79] = v14;
    ++v9;
    v8 += 24;
  }

  while (v8 != 72);
  return result;
}

void vp9_free_pc_tree(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 + 110592;
    if (*(a1 + 114256))
    {
      v2 = 0;
      v3 = 64;
      do
      {
        free_mode_context((*(v1 + 3664) + v2));
        v2 += 848;
        --v3;
      }

      while (v3);
      v4 = *(v1 + 3664);
      if (v4)
      {
        free(*(v4 - 8));
      }

      *(v1 + 3664) = 0;
    }

    if (*(v1 + 3672))
    {
      v5 = 85;
      v6 = 3408;
      do
      {
        v7 = (*(v1 + 3672) + v6);
        free_mode_context(v7 - 424);
        free_mode_context(v7 - 318);
        free_mode_context(v7 - 212);
        free_mode_context(v7 - 106);
        free_mode_context(v7);
        v6 += 4296;
        --v5;
      }

      while (v5);
      v8 = *(v1 + 3672);
      if (v8)
      {
        free(*(v8 - 8));
      }

      *(v1 + 3672) = 0;
    }
  }
}

void free_mode_context(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    free(*(v2 - 8));
  }

  a1[13] = 0;
  v3 = a1[14];
  if (v3)
  {
    free(*(v3 - 8));
  }

  a1[14] = 0;
  v4 = a1[23];
  if (v4)
  {
    free(*(v4 - 8));
  }

  a1[23] = 0;
  v5 = a1[32];
  if (v5)
  {
    free(*(v5 - 8));
  }

  a1[32] = 0;
  v6 = a1[41];
  if (v6)
  {
    free(*(v6 - 8));
  }

  a1[41] = 0;
  v7 = a1[15];
  if (v7)
  {
    free(*(v7 - 8));
  }

  a1[15] = 0;
  v8 = a1[24];
  if (v8)
  {
    free(*(v8 - 8));
  }

  a1[24] = 0;
  v9 = a1[33];
  if (v9)
  {
    free(*(v9 - 8));
  }

  a1[33] = 0;
  v10 = a1[42];
  if (v10)
  {
    free(*(v10 - 8));
  }

  a1[42] = 0;
  v11 = a1[16];
  if (v11)
  {
    free(*(v11 - 8));
  }

  a1[16] = 0;
  v12 = a1[25];
  if (v12)
  {
    free(*(v12 - 8));
  }

  a1[25] = 0;
  v13 = a1[34];
  if (v13)
  {
    free(*(v13 - 8));
  }

  a1[34] = 0;
  v14 = a1[43];
  if (v14)
  {
    free(*(v14 - 8));
  }

  a1[43] = 0;
  v15 = a1[17];
  if (v15)
  {
    free(*(v15 - 8));
  }

  a1[17] = 0;
  v16 = a1[26];
  if (v16)
  {
    free(*(v16 - 8));
  }

  a1[26] = 0;
  v17 = a1[35];
  if (v17)
  {
    free(*(v17 - 8));
  }

  a1[35] = 0;
  v18 = a1[44];
  if (v18)
  {
    free(*(v18 - 8));
  }

  a1[44] = 0;
  v19 = a1[18];
  if (v19)
  {
    free(*(v19 - 8));
  }

  a1[18] = 0;
  v20 = a1[27];
  if (v20)
  {
    free(*(v20 - 8));
  }

  a1[27] = 0;
  v21 = a1[36];
  if (v21)
  {
    free(*(v21 - 8));
  }

  a1[36] = 0;
  v22 = a1[45];
  if (v22)
  {
    free(*(v22 - 8));
  }

  a1[45] = 0;
  v23 = a1[19];
  if (v23)
  {
    free(*(v23 - 8));
  }

  a1[19] = 0;
  v24 = a1[28];
  if (v24)
  {
    free(*(v24 - 8));
  }

  a1[28] = 0;
  v25 = a1[37];
  if (v25)
  {
    free(*(v25 - 8));
  }

  a1[37] = 0;
  v26 = a1[46];
  if (v26)
  {
    free(*(v26 - 8));
  }

  a1[46] = 0;
  v27 = a1[20];
  if (v27)
  {
    free(*(v27 - 8));
  }

  a1[20] = 0;
  v28 = a1[29];
  if (v28)
  {
    free(*(v28 - 8));
  }

  a1[29] = 0;
  v29 = a1[38];
  if (v29)
  {
    free(*(v29 - 8));
  }

  a1[38] = 0;
  v30 = a1[47];
  if (v30)
  {
    free(*(v30 - 8));
  }

  a1[47] = 0;
  v31 = a1[21];
  if (v31)
  {
    free(*(v31 - 8));
  }

  a1[21] = 0;
  v32 = a1[30];
  if (v32)
  {
    free(*(v32 - 8));
  }

  a1[30] = 0;
  v33 = a1[39];
  if (v33)
  {
    free(*(v33 - 8));
  }

  a1[39] = 0;
  v34 = a1[48];
  if (v34)
  {
    free(*(v34 - 8));
  }

  a1[48] = 0;
  v35 = a1[22];
  if (v35)
  {
    free(*(v35 - 8));
  }

  a1[22] = 0;
  v36 = a1[31];
  if (v36)
  {
    free(*(v36 - 8));
  }

  a1[31] = 0;
  v37 = a1[40];
  if (v37)
  {
    free(*(v37 - 8));
  }

  a1[40] = 0;
  v38 = a1[49];
  if (v38)
  {
    free(*(v38 - 8));
  }

  a1[49] = 0;
}

uint64_t cost_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v8 = result;
  do
  {
    while (1)
    {
      v9 = *(a3 + (a4 >> 1));
      v10 = (a2 + a4);
      v11 = *v10;
      if (v11 <= 0)
      {
        break;
      }

      result = cost_0(v8, a2, a3);
      a5 += vp9_prob_cost[256 - v9];
      a4 = v10[1];
      if (a4 <= 0)
      {
        goto LABEL_5;
      }
    }

    *(v8 + 4 * -v11) = a5 + vp9_prob_cost[v9];
    a5 += vp9_prob_cost[256 - v9];
    a4 = v10[1];
  }

  while (a4 > 0);
LABEL_5:
  *(v8 + 4 * -a4) = a5;
  return result;
}

uint64_t encoder_init(void *a1)
{
  if (a1[6])
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x8F17uLL, 0xD93B561uLL);
  if (!v3)
  {
    return 2;
  }

  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v4 - 8) = v3;
  if (!v4)
  {
    return 2;
  }

  bzero(((v3 + 23) & 0xFFFFFFFFFFFFFFF0), 0x8F00uLL);
  a1[6] = v4;
  *(v4 + 8) = a1[4];
  *(v4 + 208) = 1;
  v5 = malloc_type_malloc(0xABFuLL, 0xD93B561uLL);
  if (!v5 || (v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0, *(v6 - 8) = v5, !v6))
  {
    *(v4 + 36576) = 0;
    return 2;
  }

  bzero(((v5 + 23) & 0xFFFFFFFFFFFFFFF0), 0xAA8uLL);
  *(v4 + 36576) = v6;
  v7 = a1[5];
  if (v7)
  {
    memcpy((v4 + 216), v7, 0x1F8uLL);
    a1[5] = v4 + 216;
  }

  *(v4 + 848) = 0;
  *(v4 + 784) = xmmword_273BCF190;
  *(v4 + 800) = unk_273BCF1A0;
  *(v4 + 816) = xmmword_273BCF1B0;
  *(v4 + 832) = unk_273BCF1C0;
  *(v4 + 720) = default_extra_cfg;
  *(v4 + 736) = unk_273BCF160;
  *(v4 + 752) = xmmword_273BCF170;
  *(v4 + 768) = unk_273BCF180;
  vp9_initialize_enc();
  result = validate_config_0(v4, (v4 + 216), (v4 + 720));
  if (!result)
  {
    *(v4 + 864) = 0;
    *(v4 + 36600) = -1;
    set_encoder_config(v4 + 872, v4 + 216, v4 + 720);
    *(v4 + 1272) = (*(a1 + 8) >> 18) & 1;
    compressor = vp9_create_compressor((v4 + 872), *(v4 + 36576));
    *(v4 + 1312) = compressor;
    v9 = 2 * (compressor == 0);
    set_twopass_params_from_config((v4 + 216), compressor);
    return v9;
  }

  return result;
}

uint64_t encoder_destroy(uint64_t a1)
{
  v2 = a1 + 0x8000;
  free(*(a1 + 1320));
  free(*(v2 + 3816));
  vp9_remove_compressor(*(a1 + 1312), v3);
  v4 = *(v2 + 3808);
  if (v4)
  {
    free(*(v4 - 8));
  }

  free(*(a1 - 8));
  return 0;
}

uint64_t encoder_encode(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v127 = *MEMORY[0x277D85DE8];
  v112 = 0;
  v111 = a5;
  v110 = a3;
  v5 = *(a1 + 1312);
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  if (!v5)
  {
    return 8;
  }

  v9 = a1 + 0x8000;
  v10 = (v5 + 754512);
  *(v5 + 754532) = *(a1 + 880);
  if (a2)
  {
    v11 = *a2;
    v12 = "Invalid image format. Only YV12, I420, I422, I444, I440, NV12 images are supported.";
    if (*a2 > 768)
    {
      if ((v11 - 2309) >= 3)
      {
        if (v11 != 769 && v11 != 2306)
        {
          goto LABEL_19;
        }
      }

      else if ((*(a1 + 224) | 2) != 3)
      {
        v12 = "Invalid image format. 16-bit I422, I444, I440 images are not supported in profile.";
        goto LABEL_19;
      }
    }

    else if ((v11 - 261) >= 3)
    {
      if (v11 != 258 && v11 != 265)
      {
        goto LABEL_19;
      }
    }

    else if (*(a1 + 224) != 1)
    {
      v12 = "Invalid image format. I422, I444, I440 images are not supported in profile.";
LABEL_19:
      *a1 = v12;
      v112 = 8;
      goto LABEL_60;
    }

    if (a2[6] != *(a1 + 228) || a2[7] != *(a1 + 232))
    {
      v12 = "Image size must match encoder init configuration size";
      goto LABEL_19;
    }

    v112 = 0;
    v13 = 12;
    if (v11 > 768)
    {
      if (v11 <= 2308)
      {
        if (v11 == 769)
        {
          goto LABEL_39;
        }

        if (v11 == 2306)
        {
          goto LABEL_36;
        }
      }

      else
      {
        switch(v11)
        {
          case 2309:
            goto LABEL_30;
          case 2310:
            v13 = 48;
            goto LABEL_39;
          case 2311:
LABEL_30:
            v13 = 32;
            goto LABEL_39;
        }
      }
    }

    else
    {
      if (v11 > 261)
      {
        if (v11 != 262)
        {
          if (v11 != 263)
          {
            if (v11 != 265)
            {
              goto LABEL_38;
            }

LABEL_39:
            if (*(v5 + 942144))
            {
              v14 = 3;
            }

            else
            {
              v14 = 1;
            }

            LODWORD(v15) = (*(a1 + 232) * *(a1 + 228) * v13) >> 3 << v14;
            if (v15 <= 0x2000)
            {
              v15 = 0x2000;
            }

            else
            {
              v15 = v15;
            }

            v16 = *(a1 + 1320);
            if (!v16 || *(a1 + 1328) < v15)
            {
              *(a1 + 1328) = v15;
              free(v16);
              v17 = malloc_type_malloc(*(a1 + 1328), 0x100004077774924uLL);
              *(a1 + 1320) = v17;
              if (!v17)
              {
                return 2;
              }

              v11 = *a2;
            }

            v18 = 1;
            if ((~v11 & 0x301) != 0 && (v11 & 0x102) != 0x102 && (v11 & 0x109) != 0x109)
            {
              if ((~v11 & 0x105) != 0)
              {
                if ((~v11 & 0x106) != 0)
                {
                  v18 = -1;
                }

                else
                {
                  v18 = 3;
                }
              }

              else
              {
                v18 = 2;
              }
            }

            if (v18 > *(v9 + 3832))
            {
              *(v9 + 3832) = v18;
            }

            goto LABEL_60;
          }

LABEL_33:
          v13 = 16;
          goto LABEL_39;
        }

LABEL_36:
        v13 = 24;
        goto LABEL_39;
      }

      if (v11 == 258)
      {
        goto LABEL_39;
      }

      if (v11 == 261)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    v13 = 0;
    goto LABEL_39;
  }

LABEL_60:
  *(a1 + 964) = 0;
  if (*(a1 + 960) != 2)
  {
    *(a1 + 960) = 2;
    vp9_change_config(*(a1 + 1312), (a1 + 872));
  }

  v112 = 0;
  *(a1 + 1592) = 0x10000000000;
  if (((v111 & 0x400000) == 0 || (v111 & 0x80000) == 0) && ((v111 & 0x800000) == 0 || (v111 & 0x1000000) == 0))
  {
    v20 = (v5 + 171696);
    if (setjmp((v5 + 171788)))
    {
      *(v5 + 171784) = 0;
      v21 = *v20;
      if (*v20)
      {
        v22 = 0;
        if (*(v5 + 171700))
        {
          v22 = v5 + 171704;
        }

        *a1 = v22;
      }

      return v21;
    }

    *(v5 + 171784) = 1;
    if (!v112)
    {
      vp9_apply_encoding_flags(v5, v111);
    }

    if (*(a1 + 376) == 1)
    {
      v23 = *(a1 + 380);
      if (v23 == *(a1 + 384))
      {
        v24 = *(v9 + 3784) + 1;
        *(v9 + 3784) = v24;
        if (v24 > v23)
        {
          v111 |= 1uLL;
          *(v9 + 3784) = 1;
        }
      }
    }

    if (v112)
    {
      goto LABEL_83;
    }

    v109 = 0;
    v108 = 0;
    if (*(a1 + 10))
    {
      *v10 = 1;
    }

    if (a2)
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      if (*(a1 + 864))
      {
        v25 = *(a1 + 856);
      }

      else
      {
        v25 = v110;
        *(a1 + 856) = v110;
        *(a1 + 864) = 1;
      }

      if (v110 < v25)
      {
        vpx_internal_error(v5 + 171696, 8, "pts is smaller than initial pts");
        v25 = *(a1 + 856);
      }

      v110 -= v25;
      v26 = *(a1 + 912);
      if (v110 > 0x7FFFFFFFFFFFFFFFLL / v26)
      {
        vpx_internal_error(v5 + 171696, 8, "conversion of relative pts to ticks would overflow");
        v26 = *(a1 + 912);
      }

      v27 = *(a1 + 920);
      v28 = v110 * v26;
      *(v5 + 927072) = v26 / v27;
      v29 = v28 / v27;
      *(v5 + 927080) = v28 / v27;
      if (a4 < 0)
      {
        vpx_internal_error(v5 + 171696, 8, "duration is too big");
      }

      if (v110 > (a4 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        vpx_internal_error(v5 + 171696, 8, "relative pts + duration is too big");
      }

      v30 = v110 + a4;
      v31 = *(a1 + 912);
      if (v30 > 0x7FFFFFFFFFFFFFFFLL / v31)
      {
        vpx_internal_error(v5 + 171696, 8, "conversion of relative pts + duration to ticks would overflow");
        v31 = *(a1 + 912);
      }

      v32 = v31 * v30 / *(a1 + 920);
      v112 = image2yuvconfig(a2, &v98);
      if (vp9_receive_raw_frame(v5, *(a1 + 1568) | v111, &v98, v29, v32))
      {
        v33 = *v20;
        if (*v20)
        {
          v34 = 0;
          if (*(v5 + 171700))
          {
            v34 = v5 + 171704;
          }

          *a1 = v34;
        }

        v112 = v33;
      }

      *(a1 + 1568) = 0;
    }

    v35 = *(a1 + 1320);
    v36 = v35;
    v37 = *(a1 + 1328);
    v38 = *(a1 + 1336);
    if (v38)
    {
      memmove(*(a1 + 1320), v38, *(a1 + 1344));
      *(a1 + 1336) = v35;
      v39 = *(a1 + 1344);
      v36 = v35 + v39;
      v37 -= v39;
      if (v37 < *(a1 + 1328) >> 1)
      {
        vpx_internal_error(v5 + 171696, 1, "Compressed data buffer too small");
      }
    }

    if (*(v5 + 190076) == 1 && !*(v5 + 754540) || (v40 = a2 == 0, v97 = 0, v94 = 0, v95 = 0, v96 = -1, v37 < *(a1 + 1328) >> 1))
    {
LABEL_83:
      *(v5 + 171784) = 0;
      return v112;
    }

    v41 = (a1 + 1336);
    v93 = v5 + 758936;
    v92 = v5 + 926652;
    v90 = a1 + 1600;
    v91 = a1 + 1360;
    v42 = v37;
    while (1)
    {
      if (vp9_get_compressed_data(v5, &v109, &v108, v36, v42, &v95, &v94, v40) == -1)
      {
        goto LABEL_83;
      }

      v47 = *(v5 + 754540);
      if (v108)
      {
        if (v47 || (v101 = 0u, v102 = 0u, v99 = 0u, v100 = 0u, v98 = 0u, !*v10) || *(v5 + 190076) == 1 || !*(v5 + 172976))
        {
          v48 = v108;
          v49 = 0;
          goto LABEL_131;
        }

        vpx_calc_highbd_psnr(*(v5 + 190792), *(v5 + 172024), &v98, *(v5 + 74736), *(v5 + 190000), 0.0, v43, v44, v45, v46);
        v115 = v100;
        v116 = v101;
        v117 = v102;
        v113 = v98;
        v114 = v99;
        v50 = *(a1 + 1592);
        if (v50 < *(a1 + 1596))
        {
          v51 = v113;
          v52 = v90 + 136 * v50;
          *(v52 + 24) = v114;
          v53 = v116;
          *(v52 + 40) = v115;
          *(v52 + 56) = v53;
          *(v52 + 72) = v117;
          *(a1 + 1592) = v50 + 1;
          *v52 = 3;
          *(v52 + 8) = v51;
          *(v52 + 88) = 0u;
          *(v52 + 104) = 0u;
          *(v52 + 120) = 0u;
        }

        v48 = v108;
        if (v108)
        {
          v49 = 0;
          goto LABEL_131;
        }

        v47 = *(v5 + 754540);
      }

      if (!v47 || !*(v5 + 926596))
      {
        goto LABEL_115;
      }

      v49 = 1;
      v48 = 0;
LABEL_131:
      v54 = *(v5 + 172976);
      if (v54 && ((v55 = *(v5 + 754540), v56 = *(v5 + 754544), !v55) || v56 >= *(v5 + 754552) - 1))
      {
        LODWORD(v118) = 0;
        v67 = *(a1 + 912);
        v68 = *(a1 + 920);
        v69 = v67 / 2 - (v67 > 1);
        *(&v119 + 1) = *(a1 + 856) + (v69 + v95 * v68) / v67;
        *&v120 = (v69 + (v94 - v95) * v68) / v67;
        if ((v109 & 1) != 0 || (v70 = v55, v71 = v109 << 16, v70) && *(v93 + 13936 * (*(v5 + 754548) + *(v5 + 754556) * v56) + 13820))
        {
          v71 = (v109 << 16) | 1;
        }

        if (*(v5 + 754516))
        {
          v72 = v71 | 2;
        }

        else
        {
          v72 = v71;
        }

        DWORD2(v120) = v72;
        *(&v121 + v56) = *(v5 + 171988);
        *(&v122 + v56 + 1) = *(v5 + 171992);
        *(&v123 + v56 + 8) = 1 - *(v92 + 4 * v56);
        v73 = *v41;
        if (*v41)
        {
          if ((v49 & 1) == 0)
          {
            v74 = *(a1 + 1352);
            *(a1 + 1352) = v74 + 1;
            *(v91 + 8 * v74) = v48;
          }

          *(a1 + 1424) |= v48;
          v75 = *(a1 + 1344) + v48;
          *(a1 + 1344) = v75;
          if (*(v9 + 3792))
          {
            v76 = v73;
            v77 = v75;
            v78 = v76;
          }

          else
          {
            v80 = write_superframe_index(a1);
            v48 = v108 + v80;
            v108 = v48;
            v78 = *(a1 + 1336);
            v77 = *(a1 + 1344);
          }

          *(&v118 + 1) = v78;
          *&v119 = v77;
          *(a1 + 1424) = 0;
          *v41 = 0;
          *(a1 + 1344) = 0;
          v79 = v48;
          *(a1 + 1352) = 0;
        }

        else
        {
          *(&v118 + 1) = v36;
          *&v119 = v48;
          v79 = v48;
        }

        HIDWORD(v120) = -1;
        v81 = *(v9 + 3792);
        if (v81)
        {
          v81(&v118, *(v9 + 3800));
          v79 = v108;
        }

        else
        {
          v82 = *(a1 + 1592);
          if (v82 < *(a1 + 1596))
          {
            *(a1 + 1592) = v82 + 1;
            v83 = v90 + 136 * v82;
            v84 = v125;
            *(v83 + 96) = v124;
            *(v83 + 112) = v84;
            *(v83 + 128) = v126;
            v85 = v121;
            *(v83 + 32) = v120;
            *(v83 + 48) = v85;
            v86 = v123;
            *(v83 + 64) = v122;
            *(v83 + 80) = v86;
            v87 = v119;
            *v83 = v118;
            *(v83 + 16) = v87;
          }
        }

        v88 = v79;
        v89 = v36 + v79;
        v42 -= v88;
        if (!*(v5 + 754540) || *(v5 + 190076))
        {
          v36 = v89;
        }

        else
        {
          v36 = v89;
          if (*(v5 + 754544) == *(v5 + 754552) - 1)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        v57 = *v41;
        if (!*v41)
        {
          *v41 = v36;
          v57 = v36;
        }

        *(a1 + 1344) += v48;
        if ((v49 & 1) == 0)
        {
          v58 = *(a1 + 1352);
          *(a1 + 1352) = v58 + 1;
          *(v91 + 8 * v58) = v48;
        }

        *(a1 + 1424) |= v48;
        v36 += v48;
        v42 -= v48;
        v59 = *(v5 + 754544);
        *(&v121 + v59) = *(v5 + 171988);
        *(&v122 + v59 + 1) = *(v5 + 171992);
        *(&v123 + v59 + 8) = 1 - *(v92 + 4 * v59);
        v60 = *(v9 + 3792);
        if (v60)
        {
          LODWORD(v118) = 0;
          v61 = *(a1 + 912);
          v62 = *(a1 + 920);
          v63 = v61 / 2 - (v61 > 1);
          *(&v119 + 1) = *(a1 + 856) + (v63 + v95 * v62) / v61;
          *&v120 = (v63 + (v94 - v95) * v62) / v61;
          if ((v109 & 1) != 0 || (v64 = v109 << 16, *(v5 + 754540)) && *(v93 + 13936 * (*(v5 + 754548) + *(v5 + 754556) * v59) + 13820))
          {
            v64 = (v109 << 16) | 1;
          }

          v65 = v54 == 0;
          v66 = v64 | 4;
          if (!v65)
          {
            v66 = v64;
          }

          if (*(v5 + 754516))
          {
            v66 |= 2u;
          }

          DWORD2(v120) = v66;
          *(&v118 + 1) = v57;
          *&v119 = v48;
          *(a1 + 1424) = 0;
          *v41 = 0;
          *(a1 + 1344) = 0;
          *(a1 + 1352) = 0;
          v60(&v118, *(v9 + 3800));
        }
      }

LABEL_115:
      if (v42 < *(a1 + 1328) >> 1)
      {
        goto LABEL_83;
      }
    }
  }

  *a1 = "Conflicting flags.";
  return 8;
}

uint64_t encoder_get_cxdata(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = a1 + 1600;
    *a2 = a1 + 1600;
  }

  if (0xF0F0F0F0F0F0F0F1 * ((result - a1 - 1600) >> 3) >= *(a1 + 1592))
  {
    return 0;
  }

  *a2 = result + 136;
  return result;
}

uint64_t encoder_set_config(uint64_t a1, _DWORD *a2)
{
  v25 = 0;
  v2 = a2[3];
  if (v2 == *(a1 + 228) && a2[4] == *(a1 + 232))
  {
    v3 = a2[11];
  }

  else
  {
    v3 = a2[11];
    if (v3 > 1 || a2[10])
    {
      v4 = "Cannot change width or height after initialization";
LABEL_31:
      *a1 = v4;
      return 8;
    }

    v5 = *(*(a1 + 1312) + 754532);
    if (v5 && (v6 = *(*(a1 + 1312) + 754536)) != 0 && ((v7 = a2[4], v5 <= 2 * v2) ? (v8 = 2 * v7 < v6) : (v8 = 1), !v8 ? (v9 = 16 * v5 < v2) : (v9 = 1), !v9 ? (v10 = 16 * v6 < v7) : (v10 = 1), v10 && *(*(a1 + 1312) + 754552) == 1) || ((v11 = *(*(a1 + 1312) + 754520)) != 0 ? (v12 = v2 <= v11) : (v12 = 1), !v12 || (v13 = *(*(a1 + 1312) + 754524)) != 0 && a2[4] > v13))
    {
      v25 = 1;
    }
  }

  if (v3 > *(a1 + 260))
  {
    v4 = "Cannot increase lag_in_frames";
    goto LABEL_31;
  }

  v14 = validate_config_0(a1, a2, (a1 + 720));
  if (v14)
  {
    return v14;
  }

  v18 = setjmp((*(a1 + 1312) + 171788));
  v19 = *(a1 + 1312);
  v20 = v19 + 41984;
  if (v18)
  {
    v21 = v19[42924];
    if (v21)
    {
      v22 = v19[42925];
      v23 = v19 + 42926;
      if (!v22)
      {
        v23 = 0;
      }

      *a1 = v23;
    }

    v20[962] = 0;
    return v21;
  }

  else
  {
    v19[42946] = 1;
    memcpy((a1 + 216), a2, 0x1F8uLL);
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    v24 = *(a1 + 1312);
    v26 = v25 | (*(v24 + 189852) != *(a1 + 872));
    vp9_change_config(v24, (a1 + 872));
    if (v26)
    {
      *(a1 + 1568) |= 1uLL;
    }

    *(*(a1 + 1312) + 171784) = 0;
    return 0;
  }
}

void *encoder_get_global_headers(uint64_t a1)
{
  v1 = *(a1 + 1312);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 0x8000;
  v3 = &qword_273BCFD50;
  v4 = 14;
  do
  {
    if (*(v3 - 3) * 1.015 >= *(v1 + 936168) && *(v1 + 936176) <= *(v3 - 4) && *(v1 + 936180) <= *(v3 - 3) && *(v1 + 936184) <= *(v3 - 1) && *(v1 + 936192) <= *v3 && *(v1 + 936200) >= *(v3 + 1) && *(v1 + 936208) <= *(v3 + 16) && *(v1 + 936212) >= *(v3 + 5) && *(v1 + 936216) <= *(v3 + 24))
    {
      break;
    }

    v3 += 8;
    --v4;
  }

  while (v4);
  v5 = (a1 + 36584);
  v6 = *(a1 + 36584);
  if (v6)
  {
    free(v6);
  }

  v7 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  *v5 = v7;
  if (!v7)
  {
    return 0;
  }

  if (*(v2 + 3832) == -1)
  {
    v8 = 9;
  }

  else
  {
    v8 = 12;
  }

  *(v2 + 3824) = v8;
  __memcpy_chk();
  return v5;
}

uint64_t encoder_get_preview(uint64_t a1)
{
  memset(v5, 0, 12);
  if (*(a1 + 1576))
  {
    LODWORD(v5[0]) = *(a1 + 1576);
    *(v5 + 4) = *(a1 + 1580);
  }

  memset(v6, 0, sizeof(v6));
  v2 = *(a1 + 1312);
  if (!*(v2 + 172976) || vp9_post_proc_frame(v2 + 171696, v6, v5, **(v2 + 190456)))
  {
    return 0;
  }

  v4 = a1 + 1432;
  yuvconfig2image(v4, v6, 0);
  return v4;
}

uint64_t set_encoder_config(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  v4 = *(a2 + 8);
  *(result + 368) = v3;
  v5 = *(a2 + 12);
  v6 = *(a2 + 16);
  *(result + 8) = v5;
  *(result + 12) = v6;
  v7 = *(a2 + 20);
  v8 = *(a2 + 24);
  *result = v4;
  *(result + 4) = v7;
  *(result + 16) = v8;
  v9 = *(a2 + 32) / *(a2 + 28);
  if (v9 > 180.0)
  {
    v9 = 30.0;
  }

  *(result + 24) = v9;
  v10 = *(a2 + 28);
  *(result + 32) = v10;
  v11 = HIDWORD(v10);
  v12 = 10000000 * v10;
  if (v11)
  {
    LODWORD(v14) = v11;
    v15 = v12;
    do
    {
      v13 = v14;
      v14 = v15 % v14;
      v15 = v13;
    }

    while (v14);
  }

  else
  {
    LODWORD(v13) = v12;
  }

  *(result + 40) = v12 / v13;
  *(result + 48) = (v11 / v13);
  *(result + 88) = 0;
  v16 = *(a2 + 40);
  if (!v16 || v16 == 2)
  {
    *(result + 92) = v16;
  }

  else if (v16 == 1)
  {
    v17 = 0;
    *(result + 92) = 1;
    goto LABEL_13;
  }

  v17 = *(a2 + 44);
LABEL_13:
  v18 = v5 * v6;
  v19 = *(a2 + 72);
  v20 = (v9 * (3 * v18 * v7) / 1000.0);
  *(result + 104) = v17;
  *(result + 108) = v19;
  if (*(a2 + 112) < v20)
  {
    v20 = *(a2 + 112);
  }

  if (v20 >= 0xF4240)
  {
    v20 = 1000000;
  }

  *(a2 + 112) = v20;
  v21 = 1000 * v20;
  *(result + 56) = v21;
  *(result + 76) = *(a3 + 60);
  v22 = *(a3 + 72);
  *(result + 84) = *(a3 + 68);
  if (v22)
  {
    v23 = 0;
    *(result + 156) = 0;
  }

  else
  {
    v24 = *(a2 + 120);
    *(result + 156) = quantizer_to_qindex[*(a2 + 116)];
    v23 = quantizer_to_qindex[v24];
  }

  *(result + 152) = v23;
  *(result + 160) = quantizer_to_qindex[*(a3 + 56)];
  *(result + 148) = -1;
  *(result + 112) = *(a2 + 124);
  v25 = *(a2 + 56);
  v26 = *(a2 + 60);
  *(result + 180) = v26;
  if (v26)
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v29 = *(a2 + 48);
  if (*(a2 + 52) != 1)
  {
    v28 = 0;
  }

  *(result + 172) = v28;
  *(result + 176) = v25;
  *(result + 136) = *(a2 + 132);
  v30 = *(a2 + 136);
  *&v31 = v30;
  *(&v31 + 1) = HIDWORD(v30);
  *(result + 120) = v31;
  *(result + 144) = v29;
  *(result + 188) = *(a2 + 144);
  if (*(a2 + 160) == 1)
  {
    v32 = *(a2 + 168);
    v33 = *(a2 + 164) != v32;
  }

  else
  {
    v33 = 0;
    v32 = *(a2 + 168);
  }

  *(result + 96) = v33;
  *(result + 100) = v32;
  v34 = *a3;
  v35 = *(a3 + 4);
  if (*a3 < 0)
  {
    v34 = -v34;
  }

  *(result + 72) = v34;
  *(result + 324) = *(a3 + 16);
  *(result + 320) = v35;
  if (v7 == 8)
  {
    v36 = *(a3 + 8);
  }

  else
  {
    v36 = 0;
  }

  v37 = *(a3 + 12);
  *(result + 64) = v36;
  *(result + 68) = v37;
  *(result + 376) = *(a2 + 80);
  *(result + 404) = *(a3 + 104);
  *(result + 336) = *(a3 + 36);
  *(result + 392) = *(a3 + 52);
  *(result + 396) = *(a3 + 100);
  v38 = *(a3 + 20);
  *(result + 352) = v38;
  *(result + 360) = *(a3 + 28);
  if (v3 < 2 || v38 <= 0)
  {
    v39 = *(a3 + 24);
  }

  else
  {
    v39 = 0;
  }

  *(result + 356) = v39;
  *(result + 328) = *(a2 + 36);
  *(result + 332) = *(a3 + 80);
  *(result + 164) = *(a3 + 84);
  *(result + 184) = *(a3 + 92);
  v40 = *(a2 + 172);
  v41 = *(a2 + 216);
  *(result + 204) = v40;
  *(result + 208) = v41;
  *(result + 420) = *(a2 + 376);
  *(result + 372) = *(a3 + 76);
  *(result + 424) = *(a3 + 120);
  *(result + 432) = *(a3 + 128);
  if (v40 >= 1)
  {
    if (v41 >= 1)
    {
      for (i = 0; i < v40; ++i)
      {
        if (v41 >= 1)
        {
          v43 = 0;
          do
          {
            v44 = v43 + i * v41;
            v45 = *(a2 + 328 + 4 * v44);
            if (v45 <= 0x20C49B)
            {
              v46 = 1000 * v45;
            }

            else
            {
              v46 = 0x7FFFFFFF;
            }

            *(result + 212 + 4 * v44) = v46;
            v41 = *(result + 208);
            ++v43;
          }

          while (v43 < v41);
          v40 = *(result + 204);
        }
      }
    }

    if (v40 == 1)
    {
      if (*(result + 92))
      {
        *(result + 260) = v21;
      }

      v47 = 1;
      if (v41 <= 1)
      {
        goto LABEL_55;
      }

LABEL_58:
      v49 = *(a2 + 240);
      if (v49 <= 1)
      {
        v49 = 1;
      }

      *(result + 300) = v49;
      v50 = *(a2 + 244);
      if (v50 <= 1)
      {
        v50 = 1;
      }

      *(result + 304) = v50;
      v51 = *(a2 + 248);
      if (v51 <= 1)
      {
        v51 = 1;
      }

      *(result + 308) = v51;
      v52 = *(a2 + 252);
      if (v52 <= 1)
      {
        v52 = 1;
      }

      *(result + 312) = v52;
      v41 = *(a2 + 256);
      if (v41 <= 1)
      {
        v41 = 1;
      }

      v48 = 316;
      goto LABEL_69;
    }
  }

  v47 = 0;
  if (v41 > 1)
  {
    goto LABEL_58;
  }

LABEL_55:
  if (v41 != 1)
  {
    goto LABEL_70;
  }

  v48 = 300;
LABEL_69:
  *(result + v48) = v41;
LABEL_70:
  v53 = *(result + 372);
  if (v53 == 10)
  {
    v54 = 0;
  }

  else
  {
    if (v53 > 0x3E || ((1 << v53) & 0x701C0300C0300800) == 0)
    {
      return result;
    }

    v55 = v53 & 0xFFFFFFFE;
    v56 = 2;
    if (v53 != 20)
    {
      v56 = 3;
    }

    v57 = 4;
    if (v53 != 30)
    {
      v57 = 5;
    }

    v58 = 6;
    if (v53 != 40)
    {
      v58 = 7;
    }

    v59 = 8;
    if (v53 != 50)
    {
      v59 = 9;
    }

    v60 = 10;
    if (v53 != 52)
    {
      v60 = 11;
    }

    if (v55 != 50)
    {
      v59 = v60;
    }

    if (v55 != 40)
    {
      v58 = v59;
    }

    if (v55 != 30)
    {
      v57 = v58;
    }

    if (v55 == 20)
    {
      v54 = v56;
    }

    else
    {
      v54 = v57;
    }

    if (v53 == 11)
    {
      v54 = 1;
    }

    if (v53 > 0x3C || ((1 << v53) & 0x101C0300C0300800) == 0)
    {
      v54 = 13;
      if (v53 != 62)
      {
        v54 = -1;
      }

      if (v53 == 61)
      {
        v54 = 12;
      }
    }
  }

  v61 = (&vp9_level_defs + 64 * v54);
  v62 = v61[3] * 800.0;
  if (v62 < v21)
  {
    v21 = v62;
    *(result + 56) = v62;
  }

  if (v47 && *(result + 92))
  {
    *(result + 260) = v21;
  }

  v63 = (-(v21 - v62 * 1.1) * 100.0 / v21);
  if (*(result + 116) > v63)
  {
    *(result + 116) = v63;
  }

  *(result + 152) = 255;
  v64 = *(v61 + 13);
  if (*(result + 344) <= v64)
  {
    v65 = v64 + 1;
    *(result + 344) = v65;
    v66 = *(result + 348);
    if (v66)
    {
      if (v66 > v65)
      {
        v65 = *(result + 348);
      }

      *(result + 348) = v65;
    }
  }

  v67 = *(result + 352);
  if (v67 >= 1)
  {
    v68 = *(v61 + 48);
    if (1 << v67 > v68)
    {
      do
      {
        v69 = v67--;
      }

      while (v69 >= 2 && 1 << v67 > v68);
      *(result + 352) = v67;
    }
  }

  return result;
}

uint64_t validate_config_0(const char **a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a2[3];
  if ((v3 - 1) >> 16)
  {
    v7 = "g_w out of range [1..65536]";
    goto LABEL_15;
  }

  v4 = a2[4];
  if ((v4 - 1) >> 16)
  {
    v7 = "g_h out of range [1..65536]";
    goto LABEL_15;
  }

  if ((a2[8] - 1) >= 0x3B9ACA00)
  {
    v7 = "g_timebase.den out of range [1..1000000000]";
    goto LABEL_15;
  }

  if ((a2[7] - 1) >= 0x3B9ACA00)
  {
    v7 = "g_timebase.num out of range [1..1000000000]";
    goto LABEL_15;
  }

  v5 = a2[2];
  if (v5 > 3)
  {
    v7 = "g_profile out of range [..3]";
    goto LABEL_15;
  }

  v6 = a2[30];
  if (v6 > 0x3F)
  {
    v7 = "rc_max_quantizer out of range [..63]";
    goto LABEL_15;
  }

  if (a2[29] > v6)
  {
    v7 = "rc_min_quantizer out of range [..cfg->rc_max_quantizer]";
LABEL_15:
    *a1 = v7;
    return 8;
  }

  if (a3[18] > 1u)
  {
    v7 = "lossless expected BOOLean";
    goto LABEL_15;
  }

  if (a3[20] > 1u)
  {
    v7 = "frame_parallel_decoding_mode expected BOOLean";
    goto LABEL_15;
  }

  if (a3[21] > 6u)
  {
    v7 = "aq_mode out of range [0..AQ_MODE_COUNT - 2]";
    goto LABEL_15;
  }

  if (a3[22] > 1u)
  {
    v7 = "alt_ref_aq out of range [0..1]";
    goto LABEL_15;
  }

  if (a3[23] > 1u)
  {
    v7 = "frame_periodic_boost out of range [0..1]";
    goto LABEL_15;
  }

  if (a2[1] > 0x40u)
  {
    v7 = "g_threads out of range [..MAX_NUM_THREADS]";
    goto LABEL_15;
  }

  v9 = a2[11];
  if (v9 > 0x19)
  {
    v7 = "g_lag_in_frames out of range [..MAX_LAG_BUFFERS]";
    goto LABEL_15;
  }

  if (a2[18] > 3u)
  {
    v7 = "rc_end_usage out of range [VPX_VBR..VPX_Q]";
    goto LABEL_15;
  }

  if (a2[31] > 0x64u)
  {
    v7 = "rc_undershoot_pct out of range [..100]";
    goto LABEL_15;
  }

  if (a2[32] > 0x64u)
  {
    v7 = "rc_overshoot_pct out of range [..100]";
    goto LABEL_15;
  }

  if (a2[36] > 0x64u)
  {
    v7 = "rc_2pass_vbr_bias_pct out of range [..100]";
    goto LABEL_15;
  }

  if (a2[39] > 0x2710u)
  {
    v7 = "rc_2pass_vbr_corpus_complexity out of range [0..10000]";
    goto LABEL_15;
  }

  v10 = a2[40];
  if (v10 > 1)
  {
    v7 = "kf_mode out of range [VPX_KF_DISABLED..VPX_KF_AUTO]";
    goto LABEL_15;
  }

  v11 = a2[13];
  if (v11 > 1)
  {
    v7 = "rc_resize_allowed expected BOOLean";
    goto LABEL_15;
  }

  if (a2[12] > 0x64u)
  {
    v7 = "rc_dropframe_thresh out of range [..100]";
    goto LABEL_15;
  }

  if (a2[16] > 0x64u)
  {
    v7 = "rc_resize_up_thresh out of range [..100]";
    goto LABEL_15;
  }

  if (a2[17] > 0x64u)
  {
    v7 = "rc_resize_down_thresh out of range [..100]";
    goto LABEL_15;
  }

  if (a2[10])
  {
    v7 = "g_pass out of range [VPX_RC_ONE_PASS..VPX_RC_ONE_PASS]";
    goto LABEL_15;
  }

  v12 = a3[11];
  if (v12 > 0x18)
  {
    v7 = "min_gf_interval out of range [0..(MAX_LAG_BUFFERS - 1)]";
    goto LABEL_15;
  }

  v13 = a3[12];
  if (v13 > 0x18)
  {
    v7 = "max_gf_interval out of range [0..(MAX_LAG_BUFFERS - 1)]";
    goto LABEL_15;
  }

  if ((v13 | 2) != 2 && v13 < 3)
  {
    v7 = "max_gf_interval out of range [2..(MAX_LAG_BUFFERS - 1)]";
    goto LABEL_15;
  }

  if (v13 < v12 && v13)
  {
    v7 = "max_gf_interval out of range [extra_cfg->min_gf_interval..(MAX_LAG_BUFFERS - 1)]";
    goto LABEL_15;
  }

  if (v9 && v13 && v9 < v13 + 2)
  {
    v7 = "Set lag in frames to 0 (low delay) or >= (max-gf-interval + 2)";
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    if (a2[14] > v3)
    {
      v7 = "rc_scaled_width out of range [0..cfg->g_w]";
      goto LABEL_15;
    }

    if (a2[15] > v4)
    {
      v7 = "rc_scaled_height out of range [0..cfg->g_h]";
      goto LABEL_15;
    }
  }

  v14 = a2[43];
  if (v14 - 1 > 4)
  {
    v7 = "ss_number_layers out of range [1..VPX_SS_MAX_LAYERS]";
    goto LABEL_15;
  }

  v15 = a2[54];
  if (v15 - 1 > 4)
  {
    v7 = "ts_number_layers out of range [1..VPX_TS_MAX_LAYERS]";
    goto LABEL_15;
  }

  v16 = a3[19];
  if ((v16 > 0x3E || ((1 << v16) & 0x701C0300C0300C03) == 0) && v16 != 255)
  {
    *a1 = "target_level is invalid";
  }

  if ((v16 > 0x3E || ((1 << v16) & 0x701C0300C0300C03) == 0) && v16 != 255)
  {
    return 8;
  }

  if (v15 * v14 > 0xC)
  {
    v7 = "ss_number_layers * ts_number_layers is out of range";
    goto LABEL_15;
  }

  if (v15 >= 2)
  {
    if (v14 >= 2)
    {
      v17 = 1;
      v18 = v15;
      v7 = "ts_target_bitrate entries are not increasing";
LABEL_85:
      v19 = v15 - 1;
      v20 = v18;
      while (a2[v20 + 1 + 82] >= a2[v20 + 82])
      {
        ++v20;
        if (!--v19)
        {
          ++v17;
          v18 += v15;
          if (v17 != v14)
          {
            goto LABEL_85;
          }

          goto LABEL_89;
        }
      }

      goto LABEL_15;
    }

LABEL_89:
    v21 = a2 + 60;
    if (a2[v15 + 59] != 1)
    {
      v7 = "ts_rate_decimator[cfg->ts_number_layers - 1] out of range [1..1]";
      goto LABEL_15;
    }

    v22 = v15 - 3;
    v7 = "ts_rate_decimator factors are not powers of 2";
    while (1)
    {
      v23 = v22 + 1;
      if (v22 == -1)
      {
        break;
      }

      v24 = v21[v22--];
      if (v24 != 2 * v21[v23])
      {
        goto LABEL_15;
      }
    }
  }

  if (v10)
  {
    v25 = a2[41];
    if (v25 && v25 != a2[42])
    {
      v7 = "kf_min_dist not supported in auto mode, use 0 or kf_max_dist instead.";
      goto LABEL_15;
    }
  }

  if (a3[30] > 1u)
  {
    v7 = "row_mt out of range [0..1]";
    goto LABEL_15;
  }

  if (a3[31] > 2u)
  {
    v7 = "motion_vector_unit_test out of range [0..2]";
    goto LABEL_15;
  }

  if (a3[1] > 6u)
  {
    v7 = "enable_auto_alt_ref out of range [0..MAX_ARF_LAYERS]";
    goto LABEL_15;
  }

  if ((*a3 + 9) > 0x12)
  {
    v7 = "cpu_used out of range [-9..9]";
    goto LABEL_15;
  }

  if (a3[2] > 6u)
  {
    v7 = "noise_sensitivity out of range [..6]";
    goto LABEL_15;
  }

  if (a3[5] > 6u)
  {
    v7 = "tile_columns out of range [0..6]";
    goto LABEL_15;
  }

  if (a3[6] > 2u)
  {
    v7 = "tile_rows out of range [0..2]";
    goto LABEL_15;
  }

  if (a3[3] > 7u)
  {
    v7 = "sharpness out of range [..7]";
    goto LABEL_15;
  }

  if (a3[9] > 0xFu)
  {
    v7 = "arnr_max_frames out of range [0..15]";
    goto LABEL_15;
  }

  if (a3[10] > 6u)
  {
    v7 = "arnr_strength out of range [..6]";
    goto LABEL_15;
  }

  if (a3[14] > 0x3Fu)
  {
    v7 = "cq_level out of range [0..63]";
    goto LABEL_15;
  }

  v27 = a2[5];
  if (v27 - 8 > 4)
  {
    v7 = "g_bit_depth out of range [VPX_BITS_8..VPX_BITS_12]";
    goto LABEL_15;
  }

  v28 = a2[6];
  if (v28 - 8 > 4)
  {
    v7 = "g_input_bit_depth out of range [8..12]";
    goto LABEL_15;
  }

  if (a3[25] > 2u)
  {
    v7 = "content out of range [VP9E_CONTENT_DEFAULT..VP9E_CONTENT_INVALID - 1]";
    goto LABEL_15;
  }

  if (v5 > 1)
  {
    if (v27 == 8)
    {
      v7 = "Codec bit-depth 8 not supported in profile > 1";
      goto LABEL_15;
    }
  }

  else
  {
    v29 = v27 > 8;
    if (v27 <= 8)
    {
      v7 = "Source high bit-depth not supported in profile < 2";
    }

    else
    {
      v7 = "Codec high bit-depth not supported in profile < 2";
    }

    if (v29 || v28 > 8)
    {
      goto LABEL_15;
    }
  }

  if (a3[26] > 7u)
  {
    v7 = "color_space out of range [VPX_CS_UNKNOWN..VPX_CS_SRGB]";
    goto LABEL_15;
  }

  if (a3[27] > 1u)
  {
    v7 = "color_range out of range [VPX_CR_STUDIO_RANGE..VPX_CR_FULL_RANGE]";
    goto LABEL_15;
  }

  if (a2[95] > 1u)
  {
    v7 = "use_vizier_rc_params out of range [0..1]";
    goto LABEL_15;
  }

  if ((a2[97] - 1) > 0x3E7)
  {
    v7 = "active_wq_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[99] - 1) > 0x3E7)
  {
    v7 = "err_per_mb_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[101] - 1) > 0x3E7)
  {
    v7 = "sr_default_decay_limit.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[103] - 1) > 0x3E7)
  {
    v7 = "sr_diff_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[105] - 1) > 0x3E7)
  {
    v7 = "kf_err_per_mb_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[107] - 1) > 0x3E7)
  {
    v7 = "kf_frame_min_boost_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[111] - 1) > 0x3E7)
  {
    v7 = "kf_frame_max_boost_subs_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[113] - 1) > 0x3E7)
  {
    v7 = "kf_max_total_boost_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[115] - 1) > 0x3E7)
  {
    v7 = "gf_max_total_boost_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[117] - 1) > 0x3E7)
  {
    v7 = "gf_frame_max_boost_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[119] - 1) > 0x3E7)
  {
    v7 = "zm_factor.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[121] - 1) > 0x3E7)
  {
    v7 = "rd_mult_inter_qp_fac.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[123] - 1) > 0x3E7)
  {
    v7 = "rd_mult_arf_qp_fac.den out of range [1..1000]";
    goto LABEL_15;
  }

  if ((a2[125] - 1) >= 0x3E8)
  {
    v7 = "rd_mult_key_qp_fac.den out of range [1..1000]";
    goto LABEL_15;
  }

  return 0;
}

_DWORD *set_twopass_params_from_config(_DWORD *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[95];
    if (v2)
    {
      *(a2 + 754236) = v2;
      v3 = result[96] / result[97];
      *(a2 + 754240) = v3;
      v4 = 0.25;
      if (v3 < 0.25 || (v4 = 16.0, v3 > 16.0))
      {
        *(a2 + 754240) = v4;
      }

      v5 = result[98] / result[99];
      *(a2 + 754248) = v5;
      v6 = 0.25;
      if (v5 < 0.25 || (v6 = 4.0, v5 > 4.0))
      {
        *(a2 + 754248) = v6;
      }

      v7 = result[100] / result[101];
      *(a2 + 754256) = v7;
      v8 = 0.25;
      if (v7 < 0.25 || (v8 = 1.33, v7 > 1.33))
      {
        *(a2 + 754256) = v8;
      }

      v9 = result[102] / result[103];
      *(a2 + 754264) = v9;
      v10 = 0.25;
      if (v9 < 0.25 || (v10 = 4.0, v9 > 4.0))
      {
        *(a2 + 754264) = v10;
      }

      v11 = result[104] / result[105];
      *(a2 + 754272) = v11;
      v12 = 0.25;
      if (v11 < 0.25 || (v12 = 4.0, v11 > 4.0))
      {
        *(a2 + 754272) = v12;
      }

      v13 = result[106] / result[107];
      *(a2 + 754280) = v13;
      v14 = 0.25;
      if (v13 < 0.25 || (v14 = 4.0, v13 > 4.0))
      {
        *(a2 + 754280) = v14;
      }

      v15 = result[108] / result[109];
      *(a2 + 754288) = v15;
      v16 = 0.25;
      if (v15 < 0.25 || (v16 = 4.0, v15 > 4.0))
      {
        *(a2 + 754288) = v16;
      }

      v17 = result[110] / result[111];
      *(a2 + 754296) = v17;
      v18 = 0.25;
      if (v17 < 0.25 || (v18 = 4.0, v17 > 4.0))
      {
        *(a2 + 754296) = v18;
      }

      v19 = result[112] / result[113];
      *(a2 + 754304) = v19;
      v20 = 0.25;
      if (v19 < 0.25 || (v20 = 4.0, v19 > 4.0))
      {
        *(a2 + 754304) = v20;
      }

      v21 = result[114] / result[115];
      *(a2 + 754312) = v21;
      v22 = 0.25;
      if (v21 < 0.25 || (v22 = 4.0, v21 > 4.0))
      {
        *(a2 + 754312) = v22;
      }

      v23 = (a2 + 198896);
      v24 = result[116] / result[117];
      *(a2 + 754320) = v24;
      v25 = 0.25;
      if (v24 < 0.25 || (v25 = 4.0, v24 > 4.0))
      {
        *(a2 + 754320) = v25;
      }

      v26 = result[118] / result[119];
      *(a2 + 754328) = v26;
      v27 = 0.25;
      if (v26 < 0.25 || (v27 = 2.0, v26 > 2.0))
      {
        *(a2 + 754328) = v27;
      }

      v28 = result[120] / result[121];
      *v23 = v28;
      v29 = 0.25;
      if (v28 < 0.25 || (v29 = 4.0, v28 > 4.0))
      {
        *v23 = v29;
      }

      v30 = result[122] / result[123];
      *(a2 + 198904) = v30;
      v31 = 0.25;
      if (v30 < 0.25 || (v31 = 4.0, v30 > 4.0))
      {
        *(a2 + 198904) = v31;
      }

      v32 = result[124] / result[125];
      *(a2 + 198912) = v32;
      v33 = 0.25;
      if (v32 < 0.25 || (v33 = 4.0, v32 > 4.0))
      {
        *(a2 + 198912) = v33;
      }
    }
  }

  return result;
}

uint64_t ctrl_copy_reference(uint64_t a1, _DWORD **a2)
{
  v12 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v4 = 194512;
  memset(v11, 0, sizeof(v11));
  image2yuvconfig(v2 + 2, v11);
  v5 = *(a1 + 1312);
  if (*v2 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (*v2 == 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (v7 == 1)
  {
LABEL_11:
    v8 = *(v5 + v4);
    if (v8 == -1)
    {
      return 0;
    }

LABEL_15:
    v10 = *(v5 + 4 * v8 + 172048);
    if (v10 != -1)
    {
      vpx_yv12_copy_frame_c((*(v5 + 189944) + 224 * v10 + 88), v11);
    }

    return 0;
  }

  if (v7 != 4)
  {
    v4 = 194516;
    goto LABEL_11;
  }

  v8 = *(v5 + 194520);
  if (v8 != -1)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t ctrl_set_reference(uint64_t a1, _DWORD **a2)
{
  v12 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v4 = 194512;
  memset(v11, 0, sizeof(v11));
  image2yuvconfig(v2 + 2, v11);
  v5 = *(a1 + 1312);
  if (*v2 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (*v2 == 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (v7 == 1)
  {
LABEL_11:
    v8 = *(v5 + v4);
    if (v8 == -1)
    {
      return 0;
    }

LABEL_15:
    v10 = *(v5 + 4 * v8 + 172048);
    if (v10 != -1)
    {
      vpx_yv12_copy_frame_c(v11, *(v5 + 189944) + 224 * v10 + 88);
    }

    return 0;
  }

  if (v7 != 4)
  {
    v4 = 194516;
    goto LABEL_11;
  }

  v8 = *(v5 + 194520);
  if (v8 != -1)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t ctrl_set_previewpp(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  v5 = *v2;
  *(a1 + 1584) = *(v2 + 2);
  *(a1 + 1576) = v5;
  return result;
}

uint64_t ctrl_set_roi_map(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *a2;
  return vp9_set_roi_map(*(a1 + 1312), *(v2 + 8), *(v2 + 16), *(v2 + 20), (v2 + 24), (v2 + 56), (v2 + 88), (v2 + 120));
}

uint64_t ctrl_set_active_map(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 1312);
  v4 = v3 + 173004;
  if (*(v3 + 173004) != *(v2 + 2))
  {
    return 8;
  }

  v5 = *(v2 + 3);
  if (*(v3 + 173012) != v5)
  {
    return 8;
  }

  v6 = v3 + 740280;
  v7 = *v2;
  v8 = *(v6 + 8);
  v9 = *(v4 + 4);
  v10 = *(v4 + 12);
  *(v6 + 4) = 1;
  if (v7)
  {
    if (v9 >= 1 && v10 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = 0;
        do
        {
          if (*(v7 + ((v12 >> 1) * v5 + (v13 >> 1))))
          {
            v14 = 0;
          }

          else
          {
            v14 = 7;
          }

          *(v8 + v13++) = v14;
        }

        while (v10 != v13);
        ++v12;
        v8 += v10;
      }

      while (v12 != v9);
    }

    result = 0;
    *v6 = 1;
  }

  else
  {
    result = 0;
    *v6 = 0;
  }

  return result;
}

uint64_t ctrl_set_scale_mode(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *v2;
  v4 = v2[1];
  if ((v4 | v3) > 3)
  {
    return 8;
  }

  v5 = *(a1 + 1312);
  if (v3 > 2)
  {
    v7 = 2;
    v6 = 1;
    if (v4 > 2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = dword_273BCF1D4[v4];
    v8 = dword_273BCF1E0[v4];
    goto LABEL_9;
  }

  v6 = dword_273BCF1D4[v3];
  v7 = dword_273BCF1E0[v3];
  if (v4 <= 2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = 2;
  v9 = 1;
LABEL_9:
  v11 = (v8 + v5[47499] * v9 - 1) / v8;
  v5[42997] = (v7 + v5[47498] * v6 - 1) / v7;
  v5[42998] = v11;
  update_frame_size(v5);
  return 0;
}

uint64_t ctrl_set_cpuused(uint64_t a1, int *a2)
{
  v3 = *(a1 + 832);
  v23 = *(a1 + 816);
  v24 = v3;
  v25 = *(a1 + 848);
  v4 = *(a1 + 768);
  v19 = *(a1 + 752);
  v20 = v4;
  v5 = *(a1 + 800);
  v21 = *(a1 + 784);
  v22 = v5;
  v6 = *(a1 + 736);
  v17 = *(a1 + 720);
  v18 = v6;
  v26 = a2 + 2;
  v7 = *a2;
  if (*a2 >= 9)
  {
    v8 = 9;
  }

  else
  {
    v8 = *a2;
  }

  if (v8 <= -9)
  {
    v8 = -9;
  }

  v9 = v7 + 4;
  if (v7 > 0)
  {
    v10 = 5;
  }

  else
  {
    v10 = -5;
  }

  if (v9 >= 9)
  {
    v10 = v8;
  }

  LODWORD(v17) = v10;
  result = validate_config_0(a1, (a1 + 216), &v17);
  if (!result)
  {
    v12 = v24;
    *(a1 + 816) = v23;
    *(a1 + 832) = v12;
    *(a1 + 848) = v25;
    v13 = v20;
    *(a1 + 752) = v19;
    *(a1 + 768) = v13;
    v14 = v22;
    *(a1 + 784) = v21;
    *(a1 + 800) = v14;
    v15 = v18;
    *(a1 + 720) = v17;
    *(a1 + 736) = v15;
    v16 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v16;
  }

  return result;
}

uint64_t ctrl_set_enable_auto_alt_ref(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD1(v13) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_sharpness(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v13) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_static_thresh(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  LODWORD(v14) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_tile_columns(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD1(v14) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_tile_rows(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v14) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_tpl_model(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v14) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_keyframe_filtering(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  LODWORD(v15) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_arnr_max_frames(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD1(v15) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_arnr_strength(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v15) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_tuning(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD1(v16) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_cq_level(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v16) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_rc_max_intra_bitrate_pct(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v16) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_rc_max_inter_bitrate_pct(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  LODWORD(v17) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_rc_gf_cbr_boost_pct_0(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD1(v17) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_lossless(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v17) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_frame_parallel_decoding_mode(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  LODWORD(v18) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_aq_mode(uint64_t a1, int *a2)
{
  v3 = *(a1 + 832);
  v20 = *(a1 + 816);
  v21 = v3;
  v22 = *(a1 + 848);
  v4 = *(a1 + 768);
  v16 = *(a1 + 752);
  v17 = v4;
  v5 = *(a1 + 800);
  v18 = *(a1 + 784);
  v19 = v5;
  v6 = *(a1 + 736);
  v14 = *(a1 + 720);
  v15 = v6;
  v23 = a2 + 2;
  v7 = *a2;
  if (*(*(a1 + 1312) + 942520))
  {
    v7 = 0;
  }

  DWORD1(v19) = v7;
  result = validate_config_0(a1, (a1 + 216), &v14);
  if (!result)
  {
    v9 = v21;
    *(a1 + 816) = v20;
    *(a1 + 832) = v9;
    *(a1 + 848) = v22;
    v10 = v17;
    *(a1 + 752) = v16;
    *(a1 + 768) = v10;
    v11 = v19;
    *(a1 + 784) = v18;
    *(a1 + 800) = v11;
    v12 = v15;
    *(a1 + 720) = v14;
    *(a1 + 736) = v12;
    v13 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v13;
  }

  return result;
}

uint64_t ctrl_set_alt_ref_aq(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v18) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_frame_periodic_boost(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v18) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_svc(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 1312);
  v3[188635] = *a2;
  if (v2 == 1 && (*(a1 + 256) - 1) <= 1 && *(a1 + 388) >= 2u && *(a1 + 432) > 1u)
  {
    return 8;
  }

  v5 = v3 + 235512;
  v6 = v3 + 47514;
  *v5 = 0;
  v7 = v6[4];
  if (v7 <= 1)
  {
    if (*v6 <= 4)
    {
      v8 = v6[5];
      v9 = 1;
      if (v8 == 1 && !v2 && v6[88])
      {
        v9 = 0;
        *v5 = 1;
      }

      if (v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v8 | 2) == 2;
      }

      if (v10 && !v2 && v6[88])
      {
        goto LABEL_24;
      }

      if ((v9 & 1) == 0)
      {
        result = 0;
        v5[1] = 1;
        return result;
      }
    }

LABEL_21:
    result = 0;
    v5[1] = 0;
    return result;
  }

  if (v7 != 2 || *v6 < 5 || !v6[88])
  {
    goto LABEL_21;
  }

LABEL_24:
  *v5 = 1;
  v5[1] = 1;
  return 0;
}

uint64_t ctrl_set_svc_parameters(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1312);
  v3 = *(v2 + 754552);
  if (v3 < 1)
  {
    return 0;
  }

  v4 = *(v2 + 754556);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = (v2 + 772856);
  v7 = (v2 + 759676);
  v8 = *a2;
  v9 = *a2 + 96;
  v10 = *a2 + 144;
  v11 = *a2 + 192;
  v12 = *a2 + 244;
  v13 = 13936 * v4;
  while (2)
  {
    v14 = v6;
    v15 = v8;
    v16 = v7;
    v17 = v4;
    do
    {
      *v16 = *v15;
      v16[1] = v15[12];
      v18 = *(v9 + 4 * v5);
      if (v18 < 1 || v18 > *(v10 + 4 * v5))
      {
        return 8;
      }

      ++v15;
      v16[2] = v18;
      v16[3] = *(v10 + 4 * v5);
      *v14 = *(v11 + 4 * v5);
      v16[3296] = *(v12 + 4 * v5);
      v16 += 3484;
      v14 += 13936;
      --v17;
    }

    while (v17);
    result = 0;
    ++v5;
    v7 = (v7 + v13);
    v8 += v4;
    v6 += v13;
    if (v5 != v3)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t ctrl_set_svc_layer_id(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = *(a1 + 1312);
  v4 = v3 + 231756;
  v6 = **a2;
  v5 = (*a2)[1];
  v3[188640] = v6;
  v3[231757] = v6;
  v3[188637] = v5;
  v7 = v3[188638];
  if (v7 < 1)
  {
    goto LABEL_7;
  }

  if (v7 >= 8 && ((v3 + 231750) - v2) >= 0x20)
  {
    v8 = v7 & 0x7FFFFFF8;
    v14 = (v2 + 6);
    v15 = v8;
    do
    {
      v16 = *v14;
      *(v4 - 1) = *(v14 - 1);
      *v4 = v16;
      v14 += 2;
      v4 += 2;
      v15 -= 8;
    }

    while (v15);
    if (v8 == v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 - v8;
  v10 = &v3[v8 + 231752];
  v11 = &v2[v8 + 2];
  do
  {
    v12 = *v11++;
    *v10++ = v12;
    --v9;
  }

  while (v9);
LABEL_7:
  if (v5 < 0)
  {
    return 8;
  }

  else
  {
    return 8 * (v5 >= *(a1 + 432));
  }
}

uint64_t ctrl_set_tune_content(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD1(v19) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_color_space(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v19) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}