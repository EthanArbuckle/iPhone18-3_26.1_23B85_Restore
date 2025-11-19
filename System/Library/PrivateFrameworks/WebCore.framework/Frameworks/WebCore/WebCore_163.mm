_DWORD *av1_read_timing_info_header(_DWORD *result, jmp_buf a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  for (i = 33; i > 1; --i)
  {
    while (1)
    {
      v9 = *(a3 + 16);
      v10 = (*a3 + (v9 >> 3));
      if (v10 >= *(a3 + 8))
      {
        break;
      }

      v8 = (*v10 >> (~v9 & 7)) & 1;
      *(a3 + 16) = v9 + 1;
      v6 |= v8 << (i-- - 2);
      if (i <= 1)
      {
        goto LABEL_7;
      }
    }

    v11 = *(a3 + 32);
    if (v11)
    {
      result = v11(*(a3 + 24));
    }
  }

LABEL_7:
  v12 = 0;
  *v5 = v6;
  for (j = 33; j > 1; --j)
  {
    while (1)
    {
      v15 = *(a3 + 16);
      v16 = (*a3 + (v15 >> 3));
      if (v16 >= *(a3 + 8))
      {
        break;
      }

      v14 = (*v16 >> (~v15 & 7)) & 1;
      *(a3 + 16) = v15 + 1;
      v12 |= v14 << (j-- - 2);
      if (j <= 1)
      {
        goto LABEL_13;
      }
    }

    v17 = *(a3 + 32);
    if (v17)
    {
      result = v17(*(a3 + 24));
    }
  }

LABEL_13:
  v5[1] = v12;
  if (!*v5 || !v12)
  {
    result = aom_internal_error(a2, 5, "num_units_in_display_tick and time_scale must be greater than 0.");
    v18 = *(a3 + 16);
    v19 = (*a3 + (v18 >> 3));
    if (v19 < *(a3 + 8))
    {
      goto LABEL_16;
    }

LABEL_24:
    v26 = *(a3 + 32);
    if (v26)
    {
      result = v26(*(a3 + 24));
      LODWORD(v26) = 0;
    }

    v27 = 2;
    goto LABEL_37;
  }

  v18 = *(a3 + 16);
  v19 = (*a3 + (v18 >> 3));
  if (v19 >= *(a3 + 8))
  {
    goto LABEL_24;
  }

LABEL_16:
  v20 = *v19 >> (~v18 & 7);
  *(a3 + 16) = v18 + 1;
  v5[2] = v20 & 1;
  if ((v20 & 1) == 0)
  {
    return result;
  }

  v21 = 0;
  while (1)
  {
    v23 = *(a3 + 16);
    v24 = (*a3 + (v23 >> 3));
    if (v24 >= *(a3 + 8))
    {
      v25 = *(a3 + 32);
      if (v25)
      {
        result = v25(*(a3 + 24));
      }

      goto LABEL_19;
    }

    v22 = *v24;
    *(a3 + 16) = v23 + 1;
    if ((v22 >> (~v23 & 7)))
    {
      break;
    }

LABEL_19:
    if (++v21 == 32)
    {
      goto LABEL_35;
    }
  }

  v28 = ~(-1 << v21);
  v29 = 0;
  if (v21)
  {
    v30 = v21 + 1;
    do
    {
      while (1)
      {
        v32 = *(a3 + 16);
        v33 = (*a3 + (v32 >> 3));
        if (v33 >= *(a3 + 8))
        {
          break;
        }

        v31 = (*v33 >> (~v32 & 7)) & 1;
        *(a3 + 16) = v32 + 1;
        v29 |= v31 << (v30-- - 2);
        if (v30 <= 1)
        {
          goto LABEL_34;
        }
      }

      v34 = *(a3 + 32);
      if (v34)
      {
        result = v34(*(a3 + 24));
      }

      --v30;
    }

    while (v30 > 1);
  }

LABEL_34:
  v35 = v29 + v28;
  if (v29 + v28 == -1)
  {
LABEL_35:
    result = aom_internal_error(a2, 5, "num_ticks_per_picture_minus_1 cannot be (1 << 32) - 1.");
    v35 = -1;
  }

  LODWORD(v26) = v35 + 1;
  v27 = 3;
LABEL_37:
  v5[v27] = v26;
  return result;
}

uint64_t av1_read_decoder_model_info(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  v5 = *a2;
  v6 = a2[1];
  v7 = (*a2 + (v4 >> 3));
  if (v7 >= v6)
  {
    v12 = a2[4];
    if (v12)
    {
      result = v12(a2[3]);
      v9 = 0;
      LODWORD(v4) = *(a2 + 4);
      v5 = *a2;
      v6 = a2[1];
      v10 = (*a2 + (v4 >> 3));
      if (v10 < v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + (v4 >> 3));
      if (v10 < v6)
      {
        goto LABEL_3;
      }
    }

LABEL_6:
    v10 = a2[4];
    if (v10)
    {
      result = v10(a2[3]);
      LODWORD(v10) = 0;
      LODWORD(v4) = *(a2 + 4);
      v5 = *a2;
      v6 = a2[1];
    }

    goto LABEL_8;
  }

  v8 = *v7 >> (~v4 & 7);
  LODWORD(v4) = v4 + 1;
  *(a2 + 4) = v4;
  v9 = 16 * (v8 & 1);
  v10 = (v5 + (v4 >> 3));
  if (v10 >= v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = *v10 >> (~v4 & 7);
  LODWORD(v4) = v4 + 1;
  *(a2 + 4) = v4;
  LODWORD(v10) = 8 * (v11 & 1);
LABEL_8:
  v13 = v10 | v9;
  v14 = (v5 + (v4 >> 3));
  if (v14 >= v6)
  {
    v14 = a2[4];
    if (v14)
    {
      result = v14(a2[3]);
      LODWORD(v14) = 0;
      LODWORD(v4) = *(a2 + 4);
      v5 = *a2;
      v6 = a2[1];
    }
  }

  else
  {
    v15 = *v14 >> (~v4 & 7);
    LODWORD(v4) = v4 + 1;
    *(a2 + 4) = v4;
    LODWORD(v14) = 4 * (v15 & 1);
  }

  v16 = v14 | v13;
  v17 = (v5 + (v4 >> 3));
  if (v17 >= v6)
  {
    v17 = a2[4];
    if (v17)
    {
      result = v17(a2[3]);
      LODWORD(v17) = 0;
      LODWORD(v4) = *(a2 + 4);
      v5 = *a2;
      v6 = a2[1];
    }
  }

  else
  {
    v18 = *v17 >> (~v4 & 7);
    LODWORD(v4) = v4 + 1;
    *(a2 + 4) = v4;
    LODWORD(v17) = 2 * (v18 & 1);
  }

  v19 = v17 | v16;
  v20 = (v5 + (v4 >> 3));
  if (v20 >= v6)
  {
    v22 = a2[4];
    if (v22)
    {
      result = v22(a2[3]);
    }

    v21 = 0;
  }

  else
  {
    v21 = (*v20 >> (~v4 & 7)) & 1;
    *(a2 + 4) = v4 + 1;
  }

  v23 = 0;
  v3[1] = (v21 | v19) + 1;
  for (i = 33; i > 1; --i)
  {
    while (1)
    {
      v26 = *(a2 + 4);
      v27 = (*a2 + (v26 >> 3));
      if (v27 >= a2[1])
      {
        break;
      }

      v25 = (*v27 >> (~v26 & 7)) & 1;
      *(a2 + 4) = v26 + 1;
      v23 |= v25 << (i-- - 2);
      if (i <= 1)
      {
        goto LABEL_27;
      }
    }

    v28 = a2[4];
    if (v28)
    {
      result = v28(a2[3]);
    }
  }

LABEL_27:
  *v3 = v23;
  v29 = *(a2 + 4);
  v30 = *a2;
  v31 = a2[1];
  v32 = (*a2 + (v29 >> 3));
  if (v32 >= v31)
  {
    v37 = a2[4];
    if (v37)
    {
      result = v37(a2[3]);
      v34 = 0;
      LODWORD(v29) = *(a2 + 4);
      v30 = *a2;
      v31 = a2[1];
      v35 = (*a2 + (v29 >> 3));
      if (v35 < v31)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v34 = 0;
      v35 = (v30 + (v29 >> 3));
      if (v35 < v31)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v33 = *v32 >> (~v29 & 7);
    LODWORD(v29) = v29 + 1;
    *(a2 + 4) = v29;
    v34 = 16 * (v33 & 1);
    v35 = (v30 + (v29 >> 3));
    if (v35 < v31)
    {
LABEL_29:
      v36 = *v35 >> (~v29 & 7);
      LODWORD(v29) = v29 + 1;
      *(a2 + 4) = v29;
      LODWORD(v35) = 8 * (v36 & 1);
      goto LABEL_34;
    }
  }

  v35 = a2[4];
  if (v35)
  {
    result = v35(a2[3]);
    LODWORD(v35) = 0;
    LODWORD(v29) = *(a2 + 4);
    v30 = *a2;
    v31 = a2[1];
  }

LABEL_34:
  v38 = v35 | v34;
  v39 = (v30 + (v29 >> 3));
  if (v39 >= v31)
  {
    v39 = a2[4];
    if (v39)
    {
      result = v39(a2[3]);
      LODWORD(v39) = 0;
      LODWORD(v29) = *(a2 + 4);
      v30 = *a2;
      v31 = a2[1];
    }
  }

  else
  {
    v40 = *v39 >> (~v29 & 7);
    LODWORD(v29) = v29 + 1;
    *(a2 + 4) = v29;
    LODWORD(v39) = 4 * (v40 & 1);
  }

  v41 = v39 | v38;
  v42 = (v30 + (v29 >> 3));
  if (v42 >= v31)
  {
    v42 = a2[4];
    if (v42)
    {
      result = v42(a2[3]);
      LODWORD(v42) = 0;
      LODWORD(v29) = *(a2 + 4);
      v30 = *a2;
      v31 = a2[1];
    }
  }

  else
  {
    v43 = *v42 >> (~v29 & 7);
    LODWORD(v29) = v29 + 1;
    *(a2 + 4) = v29;
    LODWORD(v42) = 2 * (v43 & 1);
  }

  v44 = v42 | v41;
  v45 = (v30 + (v29 >> 3));
  if (v45 >= v31)
  {
    v45 = a2[4];
    if (v45)
    {
      result = v45(a2[3]);
      LODWORD(v45) = 0;
      LODWORD(v29) = *(a2 + 4);
      v30 = *a2;
      v31 = a2[1];
    }
  }

  else
  {
    LODWORD(v45) = (*v45 >> (~v29 & 7)) & 1;
    LODWORD(v29) = v29 + 1;
    *(a2 + 4) = v29;
  }

  v3[2] = (v45 | v44) + 1;
  v46 = (v30 + (v29 >> 3));
  if (v46 < v31)
  {
    v47 = *v46 >> (~v29 & 7);
    LODWORD(v29) = v29 + 1;
    *(a2 + 4) = v29;
    v48 = 16 * (v47 & 1);
    v49 = (v30 + (v29 >> 3));
    if (v49 < v31)
    {
      goto LABEL_48;
    }

LABEL_54:
    v61 = a2[4];
    if (v61)
    {
      result = v61(a2[3]);
      v51 = 0;
      LODWORD(v29) = *(a2 + 4);
      v30 = *a2;
      v31 = a2[1];
      v52 = (*a2 + (v29 >> 3));
      if (v52 >= v31)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v51 = 0;
      v52 = (v30 + (v29 >> 3));
      if (v52 >= v31)
      {
        goto LABEL_56;
      }
    }

LABEL_49:
    v53 = *v52 >> (~v29 & 7);
    LODWORD(v29) = v29 + 1;
    *(a2 + 4) = v29;
    v54 = 4 * (v53 & 1);
    v55 = (v30 + (v29 >> 3));
    if (v55 < v31)
    {
      goto LABEL_50;
    }

LABEL_58:
    v63 = a2[4];
    if (v63)
    {
      result = v63(a2[3]);
      v57 = 0;
      LODWORD(v29) = *(a2 + 4);
      v58 = (*a2 + (v29 >> 3));
      if (v58 < a2[1])
      {
        goto LABEL_51;
      }
    }

    else
    {
      v57 = 0;
      v58 = (v30 + (v29 >> 3));
      if (v58 < v31)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_60;
  }

  v60 = a2[4];
  if (v60)
  {
    result = v60(a2[3]);
    v48 = 0;
    LODWORD(v29) = *(a2 + 4);
    v30 = *a2;
    v31 = a2[1];
    v49 = (*a2 + (v29 >> 3));
    if (v49 >= v31)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v48 = 0;
    v49 = (v30 + (v29 >> 3));
    if (v49 >= v31)
    {
      goto LABEL_54;
    }
  }

LABEL_48:
  v50 = *v49 >> (~v29 & 7);
  LODWORD(v29) = v29 + 1;
  *(a2 + 4) = v29;
  v51 = 8 * (v50 & 1);
  v52 = (v30 + (v29 >> 3));
  if (v52 < v31)
  {
    goto LABEL_49;
  }

LABEL_56:
  v62 = a2[4];
  if (v62)
  {
    result = v62(a2[3]);
    v54 = 0;
    LODWORD(v29) = *(a2 + 4);
    v30 = *a2;
    v31 = a2[1];
    v55 = (*a2 + (v29 >> 3));
    if (v55 >= v31)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v54 = 0;
    v55 = (v30 + (v29 >> 3));
    if (v55 >= v31)
    {
      goto LABEL_58;
    }
  }

LABEL_50:
  v56 = *v55 >> (~v29 & 7);
  LODWORD(v29) = v29 + 1;
  *(a2 + 4) = v29;
  v57 = 2 * (v56 & 1);
  v58 = (v30 + (v29 >> 3));
  if (v58 < v31)
  {
LABEL_51:
    v59 = (*v58 >> (~v29 & 7)) & 1;
    *(a2 + 4) = v29 + 1;
    goto LABEL_63;
  }

LABEL_60:
  v64 = a2[4];
  if (v64)
  {
    result = v64(a2[3]);
  }

  v59 = 0;
LABEL_63:
  v3[3] = (v59 | v57 | v54 | v51 | v48) + 1;
  return result;
}

uint64_t av1_read_sequence_header(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v156 = result;
  v5 = *(a2 + 4);
  v6 = *a2;
  v7 = a2[1];
  v8 = (*a2 + (v5 >> 3));
  if (v8 >= v7)
  {
    v25 = a2[4];
    if (v25)
    {
      result = v25(a2[3]);
      v10 = 0;
      LODWORD(v5) = *(a2 + 4);
      v6 = *a2;
      v7 = a2[1];
      v11 = (*a2 + (v5 >> 3));
      if (v11 >= v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
      v11 = (v6 + (v5 >> 3));
      if (v11 >= v7)
      {
        goto LABEL_10;
      }
    }

LABEL_3:
    v12 = *v11 >> (~v5 & 7);
    LODWORD(v5) = v5 + 1;
    *(a2 + 4) = v5;
    v13 = 4 * (v12 & 1);
    v14 = (v6 + (v5 >> 3));
    if (v14 < v7)
    {
      goto LABEL_4;
    }

LABEL_12:
    v27 = a2[4];
    if (v27)
    {
      result = v27(a2[3]);
      v16 = 0;
      LODWORD(v5) = *(a2 + 4);
      v6 = *a2;
      v7 = a2[1];
      v17 = (*a2 + (v5 >> 3));
      if (v17 >= v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
      v17 = (v6 + (v5 >> 3));
      if (v17 >= v7)
      {
        goto LABEL_14;
      }
    }

LABEL_5:
    v18 = (*v17 >> (~v5 & 7)) & 1;
    LODWORD(v5) = v5 + 1;
    *(a2 + 4) = v5;
    v19 = (v6 + (v5 >> 3));
    if (v19 < v7)
    {
      goto LABEL_6;
    }

LABEL_16:
    v29 = a2[4];
    if (v29)
    {
      result = v29(a2[3]);
      v21 = 0;
      LODWORD(v5) = *(a2 + 4);
      v6 = *a2;
      v7 = a2[1];
      v159 = v13;
      v22 = v13 | v10;
      v23 = (*a2 + (v5 >> 3));
      if (v23 < v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v21 = 0;
      v159 = v13;
      v22 = v13 | v10;
      v23 = (v6 + (v5 >> 3));
      if (v23 < v7)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    v23 = a2[4];
    if (v23)
    {
      result = v23(a2[3]);
      LODWORD(v23) = 0;
      LODWORD(v5) = *(a2 + 4);
      v6 = *a2;
      v7 = a2[1];
    }

    goto LABEL_20;
  }

  v9 = *v8 >> (~v5 & 7);
  LODWORD(v5) = v5 + 1;
  *(a2 + 4) = v5;
  v10 = 8 * (v9 & 1);
  v11 = (v6 + (v5 >> 3));
  if (v11 < v7)
  {
    goto LABEL_3;
  }

LABEL_10:
  v26 = a2[4];
  if (v26)
  {
    result = v26(a2[3]);
    v13 = 0;
    LODWORD(v5) = *(a2 + 4);
    v6 = *a2;
    v7 = a2[1];
    v14 = (*a2 + (v5 >> 3));
    if (v14 >= v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
    v14 = (v6 + (v5 >> 3));
    if (v14 >= v7)
    {
      goto LABEL_12;
    }
  }

LABEL_4:
  v15 = *v14 >> (~v5 & 7);
  LODWORD(v5) = v5 + 1;
  *(a2 + 4) = v5;
  v16 = 2 * (v15 & 1);
  v17 = (v6 + (v5 >> 3));
  if (v17 < v7)
  {
    goto LABEL_5;
  }

LABEL_14:
  v28 = a2[4];
  if (v28)
  {
    result = v28(a2[3]);
    v18 = 0;
    LODWORD(v5) = *(a2 + 4);
    v6 = *a2;
    v7 = a2[1];
    v19 = (*a2 + (v5 >> 3));
    if (v19 >= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
    v19 = (v6 + (v5 >> 3));
    if (v19 >= v7)
    {
      goto LABEL_16;
    }
  }

LABEL_6:
  v20 = *v19 >> (~v5 & 7);
  LODWORD(v5) = v5 + 1;
  *(a2 + 4) = v5;
  v21 = 8 * (v20 & 1);
  v159 = v13;
  v22 = v13 | v10;
  v23 = (v6 + (v5 >> 3));
  if (v23 >= v7)
  {
    goto LABEL_18;
  }

LABEL_7:
  v24 = *v23 >> (~v5 & 7);
  LODWORD(v5) = v5 + 1;
  *(a2 + 4) = v5;
  LODWORD(v23) = 4 * (v24 & 1);
LABEL_20:
  v30 = v16 | v22;
  v157 = v23;
  v31 = v23 | v21;
  v32 = (v6 + (v5 >> 3));
  if (v32 >= v7)
  {
    v35 = a2[4];
    if (v35)
    {
      result = v35(a2[3]);
      v34 = 0;
      LODWORD(v5) = *(a2 + 4);
      v6 = *a2;
      v7 = a2[1];
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v33 = *v32 >> (~v5 & 7);
    LODWORD(v5) = v5 + 1;
    *(a2 + 4) = v5;
    v34 = 2 * (v33 & 1);
  }

  v36 = v18 | v30;
  v37 = v34 | v31;
  v38 = (v6 + (v5 >> 3));
  v158 = a3;
  if (v38 >= v7)
  {
    v40 = a2[4];
    if (v40)
    {
      result = v40(a2[3]);
    }

    v39 = 0;
  }

  else
  {
    v39 = (*v38 >> (~v5 & 7)) & 1;
    *(a2 + 4) = v5 + 1;
  }

  v41 = 0;
  v42 = v36 + 1;
  v43 = (v39 | v37) + 1;
  v44 = v159 + v10 + v16 + v18;
  do
  {
    while (1)
    {
      v47 = *(a2 + 4);
      v48 = (*a2 + (v47 >> 3));
      if (v48 >= a2[1])
      {
        break;
      }

      v45 = (*v48 >> (~v47 & 7)) & 1;
      *(a2 + 4) = v47 + 1;
      v41 |= v45 << v44;
      v46 = v44-- + 1;
      if (v46 <= 1)
      {
        goto LABEL_46;
      }
    }

    v49 = a2[4];
    if (v49)
    {
      result = v49(a2[3]);
    }

    v50 = v44-- + 1;
  }

  while (v50 > 1);
LABEL_46:
  v51 = 0;
  v52 = v41 + 1;
  v53 = v157 + v21 + v34 + v39;
  do
  {
    while (1)
    {
      v56 = *(a2 + 4);
      v57 = (*a2 + (v56 >> 3));
      if (v57 >= a2[1])
      {
        break;
      }

      v54 = (*v57 >> (~v56 & 7)) & 1;
      *(a2 + 4) = v56 + 1;
      v51 |= v54 << v53;
      v55 = v53-- + 1;
      if (v55 <= 1)
      {
        goto LABEL_52;
      }
    }

    v58 = a2[4];
    if (v58)
    {
      result = v58(a2[3]);
    }

    v59 = v53-- + 1;
  }

  while (v59 > 1);
LABEL_52:
  *v158 = v42;
  *(v158 + 4) = v43;
  *(v158 + 8) = v52;
  *(v158 + 12) = v51 + 1;
  if (*(v158 + 58))
  {
    goto LABEL_53;
  }

  v80 = *(a2 + 4);
  v81 = *a2;
  v82 = a2[1];
  v83 = (*a2 + (v80 >> 3));
  if (v83 >= v82)
  {
    v95 = a2[4];
    if (v95)
    {
      result = v95(a2[3]);
    }

LABEL_53:
    *(v158 + 16) = 0;
    goto LABEL_54;
  }

  v84 = *v83 >> (~v80 & 7);
  v85 = v80 + 1;
  *(a2 + 4) = v80 + 1;
  *(v158 + 16) = v84 & 1;
  if (v84)
  {
    v86 = (v81 + (v85 >> 3));
    if (v86 >= v82)
    {
      v137 = a2[4];
      if (v137)
      {
        result = v137(a2[3]);
        v88 = 0;
        v85 = *(a2 + 4);
        v81 = *a2;
        v82 = a2[1];
        v89 = (*a2 + (v85 >> 3));
        if (v89 < v82)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v88 = 0;
        v89 = (v81 + (v85 >> 3));
        if (v89 < v82)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v87 = *v86 >> (~v85 & 7);
      v85 = v80 + 2;
      *(a2 + 4) = v80 + 2;
      v88 = 8 * (v87 & 1);
      v89 = (v81 + ((v80 + 2) >> 3));
      if (v89 < v82)
      {
LABEL_79:
        v90 = *v89 >> (~v85++ & 7);
        *(a2 + 4) = v85;
        LODWORD(v89) = 4 * (v90 & 1);
        goto LABEL_152;
      }
    }

    v89 = a2[4];
    if (v89)
    {
      result = v89(a2[3]);
      LODWORD(v89) = 0;
      v85 = *(a2 + 4);
      v81 = *a2;
      v82 = a2[1];
    }

LABEL_152:
    v138 = v89 | v88;
    v139 = (v81 + (v85 >> 3));
    if (v139 >= v82)
    {
      v139 = a2[4];
      if (v139)
      {
        result = v139(a2[3]);
        LODWORD(v139) = 0;
        v85 = *(a2 + 4);
        v81 = *a2;
        v82 = a2[1];
      }
    }

    else
    {
      v140 = *v139 >> (~v85++ & 7);
      *(a2 + 4) = v85;
      LODWORD(v139) = 2 * (v140 & 1);
    }

    v142 = v139 | v138;
    v143 = (v81 + (v85 >> 3));
    if (v143 >= v82)
    {
      v143 = a2[4];
      if (v143)
      {
        result = v143(a2[3]);
        LODWORD(v143) = 0;
        v85 = *(a2 + 4);
        v81 = *a2;
        v82 = a2[1];
      }
    }

    else
    {
      LODWORD(v143) = (*v143 >> (~v85++ & 7)) & 1;
      *(a2 + 4) = v85;
    }

    *(v158 + 24) = (v143 | v142) + 2;
    v144 = (v81 + (v85 >> 3));
    if (v144 >= v82)
    {
      v149 = a2[4];
      if (v149)
      {
        result = v149(a2[3]);
        v146 = 0;
        v85 = *(a2 + 4);
        v81 = *a2;
        v82 = a2[1];
        v147 = (*a2 + (v85 >> 3));
        if (v147 < v82)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v146 = 0;
        v147 = (v81 + (v85 >> 3));
        if (v147 < v82)
        {
          goto LABEL_165;
        }
      }
    }

    else
    {
      v145 = *v144 >> (~v85++ & 7);
      *(a2 + 4) = v85;
      v146 = 4 * (v145 & 1);
      v147 = (v81 + (v85 >> 3));
      if (v147 < v82)
      {
LABEL_165:
        v148 = *v147 >> (~v85++ & 7);
        *(a2 + 4) = v85;
        LODWORD(v147) = 2 * (v148 & 1);
LABEL_170:
        v150 = v147 | v146;
        v151 = (v81 + (v85 >> 3));
        if (v151 >= v82)
        {
          v153 = a2[4];
          if (v153)
          {
            result = v153(a2[3]);
          }

          v152 = 0;
        }

        else
        {
          v152 = (*v151 >> (~v85 & 7)) & 1;
          *(a2 + 4) = v85 + 1;
        }

        v154 = *(v158 + 24) + (v152 | v150);
        *(v158 + 20) = v154 + 1;
        if (v154 >= 16)
        {
          result = aom_internal_error(*(v156 + 48), 7, "Invalid frame_id_length");
        }

        goto LABEL_54;
      }
    }

    v147 = a2[4];
    if (v147)
    {
      result = v147(a2[3]);
      LODWORD(v147) = 0;
      v85 = *(a2 + 4);
      v81 = *a2;
      v82 = a2[1];
    }

    goto LABEL_170;
  }

LABEL_54:
  v60 = *(a2 + 4);
  v61 = *a2;
  v62 = a2[1];
  v63 = (*a2 + (v60 >> 3));
  if (v63 >= v62)
  {
    v67 = a2[4];
    if (v67)
    {
      result = v67(a2[3]);
      LODWORD(v60) = *(a2 + 4);
      v61 = *a2;
      v62 = a2[1];
    }
  }

  else
  {
    v64 = ~v60 & 7;
    v65 = *v63;
    LODWORD(v60) = v60 + 1;
    *(a2 + 4) = v60;
    if ((v65 >> v64))
    {
      v66 = 0xFu;
      goto LABEL_60;
    }
  }

  v66 = 0xCu;
LABEL_60:
  *(v158 + 28) = v66;
  *(v158 + 32) = mi_size_wide_7[v66];
  *(v158 + 36) = mi_size_wide_log2_1[v66];
  v68 = (v61 + (v60 >> 3));
  if (v68 >= v62)
  {
    v68 = a2[4];
    if (v68)
    {
      result = v68(a2[3]);
      LOBYTE(v68) = 0;
      LODWORD(v60) = *(a2 + 4);
      v61 = *a2;
      v62 = a2[1];
    }
  }

  else
  {
    LODWORD(v68) = *v68 >> (~v60 & 7);
    LODWORD(v60) = v60 + 1;
    *(a2 + 4) = v60;
    LOBYTE(v68) = v68 & 1;
  }

  *(v158 + 60) = v68;
  v69 = (v61 + (v60 >> 3));
  if (v69 >= v62)
  {
    v60 = a2[4];
    if (v60)
    {
      result = (v60)(a2[3]);
      LOBYTE(v60) = 0;
    }
  }

  else
  {
    v70 = *v69 >> (~v60 & 7);
    *(a2 + 4) = v60 + 1;
    LOBYTE(v60) = v70 & 1;
  }

  *(v158 + 61) = v60;
  if (!*(v158 + 58))
  {
    v91 = *(a2 + 4);
    v92 = *a2;
    v93 = a2[1];
    v94 = (*a2 + (v91 >> 3));
    if (v94 >= v93)
    {
      v94 = a2[4];
      if (v94)
      {
        result = v94(a2[3]);
        LOBYTE(v94) = 0;
        LODWORD(v91) = *(a2 + 4);
        v92 = *a2;
        v93 = a2[1];
      }
    }

    else
    {
      LODWORD(v94) = *v94 >> (~v91 & 7);
      LODWORD(v91) = v91 + 1;
      *(a2 + 4) = v91;
      LOBYTE(v94) = v94 & 1;
    }

    *(v158 + 62) = v94;
    v96 = (v92 + (v91 >> 3));
    if (v96 >= v93)
    {
      v96 = a2[4];
      if (v96)
      {
        result = v96(a2[3]);
        LOBYTE(v96) = 0;
        LODWORD(v91) = *(a2 + 4);
        v92 = *a2;
        v93 = a2[1];
      }
    }

    else
    {
      LODWORD(v96) = *v96 >> (~v91 & 7);
      LODWORD(v91) = v91 + 1;
      *(a2 + 4) = v91;
      LOBYTE(v96) = v96 & 1;
    }

    *(v158 + 63) = v96;
    v97 = (v92 + (v91 >> 3));
    if (v97 >= v93)
    {
      v97 = a2[4];
      if (v97)
      {
        result = v97(a2[3]);
        LOBYTE(v97) = 0;
        LODWORD(v91) = *(a2 + 4);
        v92 = *a2;
        v93 = a2[1];
      }
    }

    else
    {
      LODWORD(v97) = *v97 >> (~v91 & 7);
      LODWORD(v91) = v91 + 1;
      *(a2 + 4) = v91;
      LOBYTE(v97) = v97 & 1;
    }

    *(v158 + 65) = v97;
    v98 = (v92 + (v91 >> 3));
    if (v98 >= v93)
    {
      v98 = a2[4];
      if (v98)
      {
        result = v98(a2[3]);
        LOBYTE(v98) = 0;
        LODWORD(v91) = *(a2 + 4);
        v92 = *a2;
        v93 = a2[1];
      }
    }

    else
    {
      LODWORD(v98) = *v98 >> (~v91 & 7);
      LODWORD(v91) = v91 + 1;
      *(a2 + 4) = v91;
      LOBYTE(v98) = v98 & 1;
    }

    *(v158 + 64) = v98;
    v99 = (v92 + (v91 >> 3));
    if (v99 >= v93)
    {
      v104 = a2[4];
      if (v104)
      {
        result = v104(a2[3]);
      }

      *(v158 + 40) = 0;
    }

    else
    {
      v100 = *v99 >> (~v91 & 7);
      v101 = v91 + 1;
      *(a2 + 4) = v91 + 1;
      *(v158 + 40) = v100 & 1;
      if (v100)
      {
        v102 = (v92 + (v101 >> 3));
        if (v102 >= v93)
        {
          v141 = a2[4];
          if (v141)
          {
            result = v141(a2[3]);
            LODWORD(v105) = *(v158 + 40);
            *(v158 + 48) = 0;
            if (!v105)
            {
              goto LABEL_106;
            }
          }

          else
          {
            *(v158 + 48) = 0;
          }
        }

        else
        {
          v103 = (*v102 >> (~v101 & 7)) & 1;
          *(a2 + 4) = v91 + 2;
          *(v158 + 48) = v103;
        }

        v155 = *(a2 + 4);
        v105 = (*a2 + (v155 >> 3));
        if (v105 >= a2[1])
        {
          v105 = a2[4];
          if (v105)
          {
            result = v105(a2[3]);
            LODWORD(v105) = 0;
          }
        }

        else
        {
          LODWORD(v105) = (*v105 >> (~v155 & 7)) & 1;
          *(a2 + 4) = v155 + 1;
        }

LABEL_106:
        *(v158 + 52) = v105;
        v106 = *(a2 + 4);
        v107 = *a2;
        v108 = a2[1];
        v109 = (*a2 + (v106 >> 3));
        if (v109 >= v108)
        {
          v112 = a2[4];
          if (v112)
          {
            result = v112(a2[3]);
            LODWORD(v106) = *(a2 + 4);
            v107 = *a2;
            v108 = a2[1];
          }
        }

        else
        {
          v110 = ~v106 & 7;
          v111 = *v109;
          LODWORD(v106) = v106 + 1;
          *(a2 + 4) = v106;
          if ((v111 >> v110))
          {
            *(v158 + 56) = 2;
            goto LABEL_113;
          }
        }

        v113 = (v107 + (v106 >> 3));
        if (v113 >= v108)
        {
          v118 = a2[4];
          if (v118)
          {
            result = v118(a2[3]);
          }

          *(v158 + 56) = 0;
          LOBYTE(v106) = 2;
          goto LABEL_125;
        }

        v114 = *v113 >> (~v106 & 7);
        LODWORD(v106) = v106 + 1;
        *(a2 + 4) = v106;
        *(v158 + 56) = v114 & 1;
        if ((v114 & 1) == 0)
        {
LABEL_115:
          LOBYTE(v106) = 2;
          goto LABEL_125;
        }

LABEL_113:
        v115 = (v107 + (v106 >> 3));
        if (v115 >= v108)
        {
          v119 = a2[4];
          if (v119)
          {
            result = v119(a2[3]);
            LODWORD(v106) = *(a2 + 4);
            v107 = *a2;
            v108 = a2[1];
          }
        }

        else
        {
          v116 = ~v106 & 7;
          v117 = *v115;
          LODWORD(v106) = v106 + 1;
          *(a2 + 4) = v106;
          if ((v117 >> v116))
          {
            goto LABEL_115;
          }
        }

        v120 = (v107 + (v106 >> 3));
        if (v120 >= v108)
        {
          v106 = a2[4];
          if (v106)
          {
            result = (v106)(a2[3]);
            LOBYTE(v106) = 0;
          }
        }

        else
        {
          v121 = *v120 >> (~v106 & 7);
          *(a2 + 4) = v106 + 1;
          LOBYTE(v106) = v121 & 1;
        }

LABEL_125:
        *(v158 + 59) = v106;
        if (!*(v158 + 40))
        {
          *(v158 + 44) = -1;
          v71 = *(a2 + 4);
          v72 = *a2;
          v73 = a2[1];
          v74 = (*a2 + (v71 >> 3));
          if (v74 >= v73)
          {
            goto LABEL_141;
          }

          goto LABEL_70;
        }

        v122 = *(a2 + 4);
        v123 = *a2;
        v124 = a2[1];
        v125 = (*a2 + (v122 >> 3));
        if (v125 >= v124)
        {
          v130 = a2[4];
          if (v130)
          {
            result = v130(a2[3]);
            v127 = 0;
            LODWORD(v122) = *(a2 + 4);
            v123 = *a2;
            v124 = a2[1];
            v128 = (*a2 + (v122 >> 3));
            if (v128 < v124)
            {
              goto LABEL_128;
            }
          }

          else
          {
            v127 = 0;
            v128 = (v123 + (v122 >> 3));
            if (v128 < v124)
            {
              goto LABEL_128;
            }
          }
        }

        else
        {
          v126 = *v125 >> (~v122 & 7);
          LODWORD(v122) = v122 + 1;
          *(a2 + 4) = v122;
          v127 = 4 * (v126 & 1);
          v128 = (v123 + (v122 >> 3));
          if (v128 < v124)
          {
LABEL_128:
            v129 = *v128 >> (~v122 & 7);
            LODWORD(v122) = v122 + 1;
            *(a2 + 4) = v122;
            LODWORD(v128) = 2 * (v129 & 1);
            goto LABEL_135;
          }
        }

        v128 = a2[4];
        if (v128)
        {
          result = v128(a2[3]);
          LODWORD(v128) = 0;
          LODWORD(v122) = *(a2 + 4);
          v123 = *a2;
          v124 = a2[1];
        }

LABEL_135:
        v131 = v128 | v127;
        v132 = (v123 + (v122 >> 3));
        if (v132 >= v124)
        {
          v134 = a2[4];
          if (v134)
          {
            result = v134(a2[3]);
          }

          v133 = 0;
        }

        else
        {
          v133 = (*v132 >> (~v122 & 7)) & 1;
          *(a2 + 4) = v122 + 1;
        }

        *(v158 + 44) = v133 | v131;
        v71 = *(a2 + 4);
        v72 = *a2;
        v73 = a2[1];
        v74 = (*a2 + (v71 >> 3));
        if (v74 >= v73)
        {
          goto LABEL_141;
        }

LABEL_70:
        v75 = *v74 >> (~v71 & 7);
        LODWORD(v71) = v71 + 1;
        *(a2 + 4) = v71;
        *(v158 + 66) = v75 & 1;
        v76 = (v72 + (v71 >> 3));
        if (v76 >= v73)
        {
          goto LABEL_71;
        }

        goto LABEL_144;
      }
    }

    LODWORD(v105) = 0;
    *(v158 + 48) = 0;
    goto LABEL_106;
  }

  *(v158 + 48) = 0;
  *(v158 + 62) = 0;
  *(v158 + 56) = 2;
  *(v158 + 59) = 2;
  *(v158 + 40) = 0;
  *(v158 + 44) = -1;
  v71 = *(a2 + 4);
  v72 = *a2;
  v73 = a2[1];
  v74 = (*a2 + (v71 >> 3));
  if (v74 < v73)
  {
    goto LABEL_70;
  }

LABEL_141:
  v135 = a2[4];
  if (v135)
  {
    result = v135(a2[3]);
    LOBYTE(v135) = 0;
    LODWORD(v71) = *(a2 + 4);
    v72 = *a2;
    v73 = a2[1];
  }

  *(v158 + 66) = v135;
  v76 = (v72 + (v71 >> 3));
  if (v76 >= v73)
  {
LABEL_71:
    v77 = a2[4];
    if (v77)
    {
      result = v77(a2[3]);
      LOBYTE(v77) = 0;
      LODWORD(v71) = *(a2 + 4);
      v72 = *a2;
      v73 = a2[1];
    }

    *(v158 + 67) = v77;
    v78 = (v72 + (v71 >> 3));
    if (v78 < v73)
    {
      goto LABEL_74;
    }

    goto LABEL_145;
  }

LABEL_144:
  v136 = *v76 >> (~v71 & 7);
  LODWORD(v71) = v71 + 1;
  *(a2 + 4) = v71;
  *(v158 + 67) = v136 & 1;
  v78 = (v72 + (v71 >> 3));
  if (v78 < v73)
  {
LABEL_74:
    v79 = *v78 >> (~v71 & 7);
    *(a2 + 4) = v71 + 1;
    LOBYTE(v71) = v79 & 1;
    goto LABEL_147;
  }

LABEL_145:
  v71 = a2[4];
  if (v71)
  {
    result = (v71)(a2[3]);
    LOBYTE(v71) = 0;
  }

LABEL_147:
  *(v158 + 68) = v71;
  return result;
}

uint64_t av1_init_read_bit_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = a1 + 15200;
  *(a2 + 32) = error_handler_0;
  *a2 = a3;
  *(a2 + 8) = a4;
  return a2;
}

uint64_t av1_decode_frame_headers_and_setup(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a1 + 363892;
  v7 = a1 + 39880;
  v8 = (a1 + 15200);
  v9 = *(*(a1 + 39880) + 77);
  *(a1 + 39624) = default_warp_params_0;
  *(a1 + 39640) = xmmword_273BDF210;
  *(a1 + 39656) = 0;
  v10 = *(a1 + 15432);
  *(v10 + 312) = default_warp_params_0;
  *(v10 + 328) = xmmword_273BDF210;
  *(v10 + 344) = 0;
  *(a1 + 39692) = 0;
  *(a1 + 39660) = default_warp_params_0;
  *(a1 + 39676) = xmmword_273BDF210;
  v11 = *(a1 + 15432);
  *(v11 + 380) = 0;
  *(v11 + 348) = default_warp_params_0;
  *(v11 + 364) = xmmword_273BDF210;
  *(a1 + 39728) = 0;
  *(a1 + 39712) = xmmword_273BDF210;
  *(a1 + 39696) = default_warp_params_0;
  v12 = *(a1 + 15432);
  *(v12 + 416) = 0;
  *(v12 + 384) = default_warp_params_0;
  *(v12 + 400) = xmmword_273BDF210;
  *(a1 + 39764) = 0;
  *(a1 + 39732) = default_warp_params_0;
  *(a1 + 39748) = xmmword_273BDF210;
  v13 = *(a1 + 15432);
  *(v13 + 452) = 0;
  *(v13 + 420) = default_warp_params_0;
  *(v13 + 436) = xmmword_273BDF210;
  *(a1 + 39800) = 0;
  *(a1 + 39768) = default_warp_params_0;
  *(a1 + 39784) = xmmword_273BDF210;
  v14 = *(a1 + 15432);
  *(v14 + 488) = 0;
  *(v14 + 456) = default_warp_params_0;
  *(v14 + 472) = xmmword_273BDF210;
  *(a1 + 39836) = 0;
  *(a1 + 39804) = default_warp_params_0;
  *(a1 + 39820) = xmmword_273BDF210;
  v15 = *(a1 + 15432);
  *(v15 + 524) = 0;
  *(v15 + 492) = default_warp_params_0;
  *(v15 + 508) = xmmword_273BDF210;
  *(a1 + 39872) = 0;
  *(a1 + 39856) = xmmword_273BDF210;
  *(a1 + 39840) = default_warp_params_0;
  v16 = *(a1 + 15432);
  *(v16 + 560) = 0;
  *(v16 + 528) = default_warp_params_0;
  *(v16 + 544) = xmmword_273BDF210;
  *(a1 + 10744) = a1 + 39588;
  read_uncompressed_header(a1, a2, xmmword_273BDF210);
  if (!a3)
  {
    goto LABEL_52;
  }

  v17 = *(a2 + 16);
  v18 = *(a2 + 16) & 7;
  v19 = v18 ^ 7;
  v20 = (*a2 + (v17 >> 3));
  if (v20 >= *(a2 + 8))
  {
    v23 = *(a2 + 32);
    if (v23)
    {
      v23(*(a2 + 24));
    }

    v22 = 0;
    if (v18 == 7)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v21 = (*v20 >> (~v17 & 7)) & 1;
    *(a2 + 16) = v17 + 1;
    v22 = v21 << v19;
    if (v18 == 7)
    {
      goto LABEL_50;
    }
  }

  v24 = 6 - v18;
  v25 = *(a2 + 16);
  v26 = (*a2 + (v25 >> 3));
  if (v26 >= *(a2 + 8))
  {
    v28 = *(a2 + 32);
    if (v28)
    {
      v28(*(a2 + 24));
    }

    if (v19 < 2)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v27 = (*v26 >> (~v25 & 7)) & 1;
    *(a2 + 16) = v25 + 1;
    v22 |= v27 << v24;
    if (v19 < 2)
    {
      goto LABEL_50;
    }
  }

  v29 = 5 - v18;
  v30 = *(a2 + 16);
  v31 = (*a2 + (v30 >> 3));
  if (v31 >= *(a2 + 8))
  {
    v33 = *(a2 + 32);
    if (v33)
    {
      v33(*(a2 + 24));
    }

    if (v24 < 2)
    {
      goto LABEL_50;
    }

    goto LABEL_20;
  }

  v32 = (*v31 >> (~v30 & 7)) & 1;
  *(a2 + 16) = v30 + 1;
  v22 |= v32 << v29;
  if (v24 >= 2)
  {
LABEL_20:
    v34 = 4 - v18;
    v35 = *(a2 + 16);
    v36 = (*a2 + (v35 >> 3));
    if (v36 >= *(a2 + 8))
    {
      v38 = *(a2 + 32);
      if (v38)
      {
        v38(*(a2 + 24));
      }

      v37 = 0;
    }

    else
    {
      v37 = (*v36 >> (~v35 & 7)) & 1;
      *(a2 + 16) = v35 + 1;
    }

    v22 |= v37 << v34;
    if (v29 >= 2)
    {
      v39 = 3 - v18;
      v40 = *(a2 + 16);
      v41 = (*a2 + (v40 >> 3));
      if (v41 >= *(a2 + 8))
      {
        v43 = *(a2 + 32);
        if (v43)
        {
          v43(*(a2 + 24));
        }

        v42 = 0;
      }

      else
      {
        v42 = (*v41 >> (~v40 & 7)) & 1;
        *(a2 + 16) = v40 + 1;
      }

      v22 |= v42 << v39;
      if (v34 >= 2)
      {
        v44 = 2 - v18;
        v45 = *(a2 + 16);
        v46 = (*a2 + (v45 >> 3));
        if (v46 >= *(a2 + 8))
        {
          v48 = *(a2 + 32);
          if (v48)
          {
            v48(*(a2 + 24));
          }

          v47 = 0;
        }

        else
        {
          v47 = (*v46 >> (~v45 & 7)) & 1;
          *(a2 + 16) = v45 + 1;
        }

        v22 |= v47 << v44;
        if (v39 >= 2)
        {
          v49 = *(a2 + 16);
          v50 = (*a2 + (v49 >> 3));
          if (v50 >= *(a2 + 8))
          {
            v52 = *(a2 + 32);
            if (v52)
            {
              v52(*(a2 + 24));
            }

            v51 = 0;
          }

          else
          {
            v51 = (*v50 >> (~v49 & 7)) & 1;
            *(a2 + 16) = v49 + 1;
          }

          v22 |= v51 << (1 - v18);
          if (v44 >= 2)
          {
            v53 = *(a2 + 16);
            v54 = (*a2 + (v53 >> 3));
            if (v54 >= *(a2 + 8))
            {
              v56 = *(a2 + 32);
              if (v56)
              {
                v56(*(a2 + 24));
              }

              v55 = 0;
            }

            else
            {
              v55 = (*v54 >> (~v53 & 7)) & 1;
              *(a2 + 16) = v53 + 1;
            }

            v22 |= v55 << -v18;
          }
        }
      }
    }
  }

LABEL_50:
  if (v22 != 1 << (v18 ^ 7))
  {
    *(a1 + 390868) = 7;
  }

LABEL_52:
  if (!*(v7 + 608) && ((*(v6 + 12) & 0x80000000) == 0 || (*(v6 + 16) & 0x80000000) == 0))
  {
    *(v6 + 12) = -1;
  }

  v57 = *(a2 + 16);
  v58 = *(a1 + 15432);
  *(a1 + 7960) = v58 + 1248;
  if ((*v8 & 0xFD) == 0 && v8[495] == 1 && v8[496])
  {
    v59 = *(v58 + 1264);
    v60 = -1;
    if (v59 > 2 * v59 || (v61 = *(v58 + 1272), 2 * v61 < v61) || 16 * v59 < v59)
    {
      v62 = -1;
    }

    else
    {
      v62 = -1;
      if (16 * v61 >= v61)
      {
        v60 = (v59 / 2 + (v59 << 14)) / v59;
        *(a1 + 15480) = (v60 + 8) >> 4;
        v62 = (v61 / 2 + (v61 << 14)) / v61;
        *(a1 + 15484) = (v62 + 8) >> 4;
      }
    }

    *(a1 + 15472) = v60;
    *(a1 + 15476) = v62;
  }

  if (!*(a1 + 15688))
  {
    (*(a1 + 15800))(a1 + 15720);
    av1_calculate_ref_frame_side(v8);
    if (v8[498] == 1)
    {
      av1_setup_motion_field(v8);
    }

    v63 = (a1 + 2628);
    v64 = *(*v7 + 96);
    *(a1 + 16) = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    if (v9)
    {
      *v63 = 0x100000001;
      *(a1 + 5236) = 0x100000001;
    }

    else
    {
      v65 = 1;
      do
      {
        v66 = v65;
        *(v63 - 4) = 1;
        *v63 = v64;
        --v65;
        v63 += 326;
      }

      while (v66);
    }

    v67 = *(a1 + 15708);
    v68 = *(v7 + 8);
    if (v67 == 7)
    {
      memcpy(v68, *(v7 + 16), 0x52FCuLL);
      if (!*(*(v7 + 8) + 21240))
      {
        goto LABEL_80;
      }
    }

    else
    {
      memcpy(v68, (*(a1 + 8 * *(a1 + 4 * (v67 & 7) + 15440) + 15616) + 1480), 0x52FCuLL);
      if (!*(*(v7 + 8) + 21240))
      {
LABEL_80:
        aom_internal_error(a1 + 390868, 7, "Uninitialized entropy context.");
      }
    }

    *(a1 + 15056) = 0;
    return (v57 + 7) >> 3;
  }

  if (*v6)
  {
    memcpy(*(v7 + 8), *(v7 + 16), 0x52FCuLL);
    if (!*(*(v7 + 8) + 21240))
    {
      aom_internal_error(a1 + 390868, 7, "Uninitialized entropy context.");
    }
  }

  return (v57 + 7) >> 3;
}

uint64_t read_uncompressed_header(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = (a1 + 388848);
  v6 = a1 + 38320;
  v7 = (a1 + 34176);
  v2568 = (a1 + 15200);
  v8 = *(a1 + 39880);
  v9 = *(a1 + 40496);
  v2556 = (a1 + 363872);
  v2557 = *&v9[1].__opaque[16];
  *(a1 + 388908) = 0;
  *(a1 + 388912) = 0;
  if (*(a1 + 363912))
  {
    v2570 = v8;
    v2581 = a1 + 38320;
    v2580 = (a1 + 34176);
    v2582 = a1;
    if (*(v8 + 58))
    {
      goto LABEL_3;
    }

LABEL_18:
    v21 = *(a2 + 16);
    v22 = *a2;
    v23 = *(a2 + 8);
    v24 = (*a2 + (v21 >> 3));
    if (v24 >= v23)
    {
      v31 = *(a2 + 32);
      if (v31)
      {
        v31(*(a2 + 24));
        LODWORD(v21) = *(a2 + 16);
        v22 = *a2;
        v23 = *(a2 + 8);
      }

      *(v4 + 15688) = 0;
      v2556[5] = 0;
    }

    else
    {
      v25 = *v24 >> (~v21 & 7);
      LODWORD(v21) = v21 + 1;
      *(a2 + 16) = v21;
      *(v4 + 15688) = v25 & 1;
      v2556[5] = 0;
      if (v25)
      {
        if (v2556[11])
        {
          aom_internal_error(v4 + 390868, 7, "New sequence header starts with a show_existing_frame.");
          LODWORD(v21) = *(a2 + 16);
          v22 = *a2;
          v23 = *(a2 + 8);
        }

        v26 = (v22 + (v21 >> 3));
        if (v26 >= v23)
        {
          v231 = *(a2 + 32);
          if (v231)
          {
            v231(*(a2 + 24));
            v28 = 0;
            LODWORD(v21) = *(a2 + 16);
            v22 = *a2;
            v23 = *(a2 + 8);
            v29 = (*a2 + (v21 >> 3));
            if (v29 < v23)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v28 = 0;
            v29 = (v22 + (v21 >> 3));
            if (v29 < v23)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v27 = *v26 >> (~v21 & 7);
          LODWORD(v21) = v21 + 1;
          *(a2 + 16) = v21;
          v28 = 4 * (v27 & 1);
          v29 = (v22 + (v21 >> 3));
          if (v29 < v23)
          {
LABEL_24:
            v30 = *v29 >> (~v21 & 7);
            LODWORD(v21) = v21 + 1;
            *(a2 + 16) = v21;
            LODWORD(v29) = 2 * (v30 & 1);
            goto LABEL_343;
          }
        }

        v29 = *(a2 + 32);
        if (v29)
        {
          v29(*(a2 + 24));
          LODWORD(v29) = 0;
          LODWORD(v21) = *(a2 + 16);
          v22 = *a2;
          v23 = *(a2 + 8);
        }

LABEL_343:
        LODWORD(v232) = v29 | v28;
        v233 = (v22 + (v21 >> 3));
        if (v233 >= v23)
        {
          v244 = *(a2 + 32);
          if (v244)
          {
            v244(*(a2 + 24));
            v232 = v232;
            v235 = *(v4 + 8 * v232 + 15616);
            if (v235)
            {
              goto LABEL_346;
            }
          }

          else
          {
            v232 = v232;
            v235 = *(v4 + 8 * v232 + 15616);
            if (v235)
            {
              goto LABEL_346;
            }
          }
        }

        else
        {
          v234 = (*v233 >> (~v21 & 7)) & 1;
          *(a2 + 16) = v21 + 1;
          v232 = v234 | v232;
          v235 = *(v4 + 8 * v232 + 15616);
          if (v235)
          {
LABEL_346:
            v236 = v2570;
            if (*(v2570 + 268) && !*(v2570 + 260))
            {
              v237 = *(*(v6 + 1560) + 284);
              if (v237 < 1)
              {
                v238 = 0;
              }

              else
              {
                v238 = 0;
                v239 = v237 + 1;
                do
                {
                  while (1)
                  {
                    v241 = *(a2 + 16);
                    v242 = (*a2 + (v241 >> 3));
                    if (v242 >= *(a2 + 8))
                    {
                      break;
                    }

                    v240 = (*v242 >> (~v241 & 7)) & 1;
                    *(a2 + 16) = v241 + 1;
                    v238 |= v240 << (v239-- - 2);
                    if (v239 <= 1)
                    {
                      goto LABEL_553;
                    }
                  }

                  v243 = *(a2 + 32);
                  if (v243)
                  {
                    v243(*(a2 + 24));
                  }

                  --v239;
                }

                while (v239 > 1);
              }

LABEL_553:
              v6 = v2581;
              *(v2582 + 15416) = v238;
              v4 = v2582;
              v236 = v2570;
            }

            if (*(v236 + 16))
            {
              v349 = *(v236 + 20);
              if (v349 < 1)
              {
                v350 = 0;
              }

              else
              {
                v350 = 0;
                v351 = v349 + 1;
                do
                {
                  while (1)
                  {
                    v353 = *(a2 + 16);
                    v354 = (*a2 + (v353 >> 3));
                    if (v354 >= *(a2 + 8))
                    {
                      break;
                    }

                    v352 = (*v354 >> (~v353 & 7)) & 1;
                    *(a2 + 16) = v353 + 1;
                    v350 |= v352 << (v351-- - 2);
                    if (v351 <= 1)
                    {
                      goto LABEL_564;
                    }
                  }

                  v355 = *(a2 + 32);
                  if (v355)
                  {
                    v355(*(a2 + 24));
                  }

                  --v351;
                }

                while (v351 > 1);
              }

LABEL_564:
              v6 = v2581;
              v356 = v2582 + 4 * v232;
              v581 = v350 == *(v356 + 40564);
              v4 = v2582;
              if (!v581 || !*(v356 + 388864))
              {
                aom_internal_error(v2582 + 390868, 7, "Reference buffer frame ID mismatch");
              }
            }

            pthread_mutex_lock(v9);
            v357 = *(v4 + 15432);
            if (v357)
            {
              --*v357;
            }

            *(v4 + 15432) = v235;
            ++*v235;
            v2556[5] = *(v235 + 1448) == 0;
            pthread_mutex_unlock(v9);
            *(v2580 + 506) = 0;
            *(v4 + 15680) = 1;
            *(v4 + 15204) = *(v235 + 4);
            if (!*(v235 + 564))
            {
              aom_internal_error(v4 + 390868, 5, "Buffer does not contain a showable frame");
            }

            if (!v2556[5])
            {
              result = memcpy((v4 + 38920), (v235 + 572), 0x288uLL);
              *(v4 + 15236) = 0;
              return result;
            }

            *(v235 + 564) = 0;
            memcpy((v4 + 38920), (v235 + 572), 0x288uLL);
            result = v2568;
            *v2568 = 0;
            *(v4 + 15236) = 255;
            *(v4 + 15440) = -1;
            *(v4 + 15448) = -1;
            *(v4 + 15456) = -1;
            *(v4 + 15464) = -1;
            if (v2556[4])
            {
              result = reset_ref_frame_map(v2568);
              v2556[4] = 0;
              v359 = *(v4 + 15236);
              v360 = (v6 + 2244);
              v361 = *(v6 + 2244 + 4 * v232);
              *(v6 + 2240) = v361;
              if ((v359 & 1) == 0)
              {
                if ((v359 & 2) == 0)
                {
                  goto LABEL_576;
                }

                goto LABEL_587;
              }
            }

            else
            {
              v360 = (v6 + 2244);
              v361 = *(v6 + 2244 + 4 * v232);
              *(v6 + 2240) = v361;
              LOBYTE(v359) = -1;
            }

            *v360 = v361;
            v5[4] = 1;
            if ((v359 & 2) == 0)
            {
LABEL_576:
              v362 = v2568;
              if ((v359 & 4) == 0)
              {
                goto LABEL_577;
              }

              goto LABEL_588;
            }

LABEL_587:
            *(v6 + 2248) = v361;
            v5[5] = 1;
            v362 = v2568;
            if ((v359 & 4) == 0)
            {
LABEL_577:
              if ((v359 & 8) == 0)
              {
                goto LABEL_578;
              }

              goto LABEL_589;
            }

LABEL_588:
            *(v6 + 2252) = v361;
            v5[6] = 1;
            if ((v359 & 8) == 0)
            {
LABEL_578:
              if ((v359 & 0x10) == 0)
              {
                goto LABEL_579;
              }

              goto LABEL_590;
            }

LABEL_589:
            *(v6 + 2256) = v361;
            v5[7] = 1;
            if ((v359 & 0x10) == 0)
            {
LABEL_579:
              if ((v359 & 0x20) == 0)
              {
                goto LABEL_580;
              }

              goto LABEL_591;
            }

LABEL_590:
            *(v6 + 2260) = v361;
            v5[8] = 1;
            if ((v359 & 0x20) == 0)
            {
LABEL_580:
              if ((v359 & 0x40) == 0)
              {
                goto LABEL_581;
              }

              goto LABEL_592;
            }

LABEL_591:
            *(v6 + 2264) = v361;
            v5[9] = 1;
            if ((v359 & 0x40) == 0)
            {
LABEL_581:
              if ((v359 & 0x80) == 0)
              {
LABEL_583:
                v362[516] = 0;
                return result;
              }

LABEL_582:
              *(v6 + 2272) = v361;
              v5[11] = 1;
              goto LABEL_583;
            }

LABEL_592:
            *(v6 + 2268) = v361;
            v5[10] = 1;
            if ((v359 & 0x80) == 0)
            {
              goto LABEL_583;
            }

            goto LABEL_582;
          }
        }

        aom_internal_error(v4 + 390868, 5, "Buffer does not contain a decoded frame");
        goto LABEL_346;
      }
    }

    v32 = (v22 + (v21 >> 3));
    if (v32 < v23)
    {
      v33 = *v32 >> (~v21 & 7);
      LODWORD(v21) = v21 + 1;
      *(a2 + 16) = v21;
      v34 = 2 * (v33 & 1);
      v35 = (v22 + (v21 >> 3));
      if (v35 < v23)
      {
        goto LABEL_34;
      }

LABEL_40:
      v47 = *(a2 + 32);
      if (v47)
      {
        v47(*(a2 + 24));
      }

      v37 = v34;
      v38 = v2568;
      *v2568 = v34;
      if (!v2556[11])
      {
LABEL_35:
        v39 = *(a2 + 16);
        v40 = (*a2 + (v39 >> 3));
        if (v40 < *(a2 + 8))
        {
          goto LABEL_36;
        }

LABEL_45:
        v48 = *(a2 + 32);
        if (v48)
        {
          v48(*(a2 + 24));
        }

        v42 = (v4 + 15680);
        *(v4 + 15680) = 0;
        v43 = *v2568;
        goto LABEL_48;
      }

LABEL_43:
      if (v37)
      {
        aom_internal_error(v4 + 390868, 7, "Sequence header has changed without a keyframe.");
        v39 = *(a2 + 16);
        v40 = (*a2 + (v39 >> 3));
        if (v40 >= *(a2 + 8))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2556[11] = 0;
        *v2556 = 1;
        v60 = *(v6 + 2176);
        v61 = *(v60 + 88);
        pthread_mutex_lock(v60);
        reset_ref_frame_map(v38);
        v62 = *(v6 + 2176);
        if (*(v62 + 96))
        {
          v63 = 0;
          do
          {
            if (*v61 < 1 || v61 == *(v4 + 15432))
            {
              *(v61 + 4) = 0;
              *(v61 + 16) = 0;
              *(v61 + 24) = 0;
              *(v61 + 8) = 0;
              *(v61 + 32) = 0;
              v62 = *(v6 + 2176);
            }

            ++v63;
            v61 += 22728;
          }

          while (v63 < *(v62 + 96));
        }

        v64 = *(v62 + 104);
        if (v64 >= 1)
        {
          v65 = 0;
          for (i = 0; i < v64; ++i)
          {
            v67 = *(v62 + 112);
            v68 = *(v67 + v65);
            if (v68)
            {
              v69 = v67 + v65;
              if (!*(v69 + 16))
              {
                bzero(v68, *(v69 + 8));
                v64 = *(v62 + 104);
              }
            }

            v65 += 24;
          }

          v62 = *(v6 + 2176);
        }

        pthread_mutex_unlock(v62);
        v38 = v2568;
        v39 = *(a2 + 16);
        v40 = (*a2 + (v39 >> 3));
        if (v40 >= *(a2 + 8))
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      v41 = *v40 >> (~v39 & 7);
      *(a2 + 16) = v39 + 1;
      v42 = (v4 + 15680);
      *(v4 + 15680) = v41 & 1;
      v43 = *v38;
      if (v41)
      {
        v44 = 0;
        v45 = 1;
        goto LABEL_49;
      }

LABEL_48:
      v44 = 1;
      v5[13] = 1;
      v45 = 0;
      if (!v43)
      {
        v5[12] = 1;
        v44 = 1;
        if (!*(v2570 + 57))
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

LABEL_49:
      if (v43 == 3)
      {
        v5[15] = 1;
        v5[16] = v45 ^ 1;
        v43 = 3;
      }

      if (v43)
      {
        v44 = 1;
      }

      if (!*(v2570 + 57))
      {
LABEL_58:
        LODWORD(v49) = v43 != 0;
        *(v4 + 15684) = v49;
        if (v45)
        {
          if (*(v2570 + 268) && !*(v2570 + 260))
          {
            v50 = *(*(v6 + 1560) + 284);
            if (v50 < 1)
            {
              *(v4 + 15416) = 0;
              *(*(v4 + 15432) + 564) = v49;
              v58 = *v2568;
              if (v58 == 3)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v51 = 0;
              v52 = v50 + 1;
              do
              {
                while (1)
                {
                  v54 = *(a2 + 16);
                  v55 = (*a2 + (v54 >> 3));
                  if (v55 >= *(a2 + 8))
                  {
                    break;
                  }

                  v53 = (*v55 >> (~v54 & 7)) & 1;
                  *(a2 + 16) = v54 + 1;
                  v51 |= v53 << (v52-- - 2);
                  if (v52 <= 1)
                  {
                    goto LABEL_68;
                  }
                }

                v56 = *(a2 + 32);
                if (v56)
                {
                  v56(*(a2 + 24));
                }

                --v52;
              }

              while (v52 > 1);
LABEL_68:
              v4 = v2582;
              v57 = *(v2582 + 15684);
              *(v2582 + 15416) = v51;
              *(*(v2582 + 15432) + 564) = v57;
              v58 = *v2568;
              if (v58 == 3)
              {
                goto LABEL_93;
              }
            }

LABEL_91:
            if (v58 || !*v42)
            {
              v70 = *(a2 + 16);
              v71 = (*a2 + (v70 >> 3));
              if (v71 >= *(a2 + 8))
              {
                v70 = *(a2 + 32);
                v10 = v2568;
                if (v70)
                {
                  (v70)(*(a2 + 24));
                  LOBYTE(v70) = 0;
                }
              }

              else
              {
                v72 = *v71;
                *(a2 + 16) = v70 + 1;
                LODWORD(v70) = (v72 >> (~v70 & 7)) & 1;
                v10 = v2568;
              }

LABEL_98:
              v10[502] = v70;
              if (*v10)
              {
                goto LABEL_101;
              }

              goto LABEL_99;
            }

LABEL_93:
            LOBYTE(v70) = 1;
            v10 = v2568;
            goto LABEL_98;
          }
        }

        else
        {
          v59 = *(a2 + 16);
          v49 = (*a2 + (v59 >> 3));
          if (v49 >= *(a2 + 8))
          {
            v49 = *(a2 + 32);
            if (v49)
            {
              v49(*(a2 + 24));
              LODWORD(v49) = 0;
            }
          }

          else
          {
            LODWORD(v49) = (*v49 >> (~v59 & 7)) & 1;
            *(a2 + 16) = v59 + 1;
          }

          *(v4 + 15684) = v49;
        }

        *(*(v4 + 15432) + 564) = v49;
        v58 = *v2568;
        if (v58 == 3)
        {
          goto LABEL_93;
        }

        goto LABEL_91;
      }

LABEL_56:
      if (v44)
      {
        aom_internal_error(v4 + 390868, 7, "Still pictures must be coded as shown keyframes");
        v43 = *v2568;
        v45 = *(v4 + 15680);
      }

      goto LABEL_58;
    }

    v46 = *(a2 + 32);
    if (v46)
    {
      v46(*(a2 + 24));
      v34 = 0;
      LODWORD(v21) = *(a2 + 16);
      v35 = (*a2 + (v21 >> 3));
      if (v35 >= *(a2 + 8))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v34 = 0;
      v35 = (v22 + (v21 >> 3));
      if (v35 >= v23)
      {
        goto LABEL_40;
      }
    }

LABEL_34:
    v36 = (*v35 >> (~v21 & 7)) & 1;
    *(a2 + 16) = v21 + 1;
    v37 = v36 | v34;
    v38 = v2568;
    *v2568 = v36 | v34;
    if (!v2556[11])
    {
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  aom_internal_error(a1 + 390868, 7, "No sequence header");
  v2570 = v8;
  v2581 = v6;
  v2580 = v7;
  v2582 = v4;
  if (!*(v8 + 58))
  {
    goto LABEL_18;
  }

LABEL_3:
  *(v4 + 15688) = 0;
  *(v4 + 15680) = 1;
  v10 = v2568;
  *v2568 = 0;
  if (v2556[11])
  {
    v2556[11] = 0;
    *v2556 = 1;
    v11 = *(v6 + 2176);
    v12 = *(v11 + 88);
    pthread_mutex_lock(v11);
    reset_ref_frame_map(v2568);
    v13 = *(v6 + 2176);
    if (*(v13 + 96))
    {
      v14 = 0;
      do
      {
        if (*v12 < 1 || v12 == *(v4 + 15432))
        {
          *(v12 + 4) = 0;
          *(v12 + 16) = 0;
          *(v12 + 24) = 0;
          *(v12 + 8) = 0;
          *(v12 + 32) = 0;
          v13 = *(v6 + 2176);
        }

        ++v14;
        v12 += 22728;
      }

      while (v14 < *(v13 + 96));
    }

    v15 = *(v13 + 104);
    if (v15 >= 1)
    {
      v16 = 0;
      for (j = 0; j < v15; ++j)
      {
        v18 = *(v13 + 112);
        v19 = *(v18 + v16);
        if (v19)
        {
          v20 = v18 + v16;
          if (!*(v20 + 16))
          {
            bzero(v19, *(v20 + 8));
            v15 = *(v13 + 104);
          }
        }

        v16 += 24;
      }

      v13 = *(v6 + 2176);
      v4 = v2582;
    }

    pthread_mutex_unlock(v13);
    v10 = v2568;
  }

  v10[502] = 1;
  if (!*v10)
  {
LABEL_99:
    if (*(v4 + 15680))
    {
      a3.n128_u64[0] = 0;
      *(v4 + 388864) = 0u;
      *(v4 + 388880) = 0u;
    }
  }

LABEL_101:
  v74 = (a2 + 16);
  v73 = *(a2 + 16);
  v75 = (*a2 + (v73 >> 3));
  v2583 = (a2 + 16);
  if (v75 >= *(a2 + 8))
  {
    v73 = *(a2 + 32);
    if (v73)
    {
      (v73)(*(a2 + 24));
      v74 = (a2 + 16);
      LOBYTE(v73) = 0;
    }
  }

  else
  {
    v76 = *v75 >> (~v73 & 7);
    *v74 = v73 + 1;
    LOBYTE(v73) = v76 & 1;
  }

  v10[492] = v73;
  v77 = *(v2570 + 56);
  v2547 = v5;
  if (v77 == 2)
  {
    v78 = *(a2 + 16);
    v79 = (*a2 + (v78 >> 3));
    if (v79 >= *(a2 + 8))
    {
      v84 = *(a2 + 32);
      if (v84)
      {
        v84(*(a2 + 24));
        v74 = (a2 + 16);
      }

      v10[495] = 0;
      goto LABEL_116;
    }

    v80 = *v79 >> (~v78 & 7);
    *v74 = v78 + 1;
    v10[495] = v80 & 1;
    if ((v80 & 1) == 0)
    {
LABEL_116:
      v10[494] = 0;
      goto LABEL_121;
    }
  }

  else
  {
    v10[495] = v77 != 0;
    if (!v77)
    {
      goto LABEL_116;
    }
  }

  LODWORD(v81) = *(v2570 + 59);
  if (v81 == 2)
  {
    v81 = *(a2 + 16);
    v82 = (*a2 + (v81 >> 3));
    if (v82 >= *(a2 + 8))
    {
      v81 = *(a2 + 32);
      if (v81)
      {
        (v81)(*(a2 + 24));
        v74 = (a2 + 16);
        LOBYTE(v81) = 0;
      }
    }

    else
    {
      v83 = *v82 >> (~v81 & 7);
      *v74 = v81 + 1;
      LOBYTE(v81) = v83 & 1;
    }
  }

  else
  {
    LOBYTE(v81) = v81 != 0;
  }

  v10[494] = v81;
LABEL_121:
  v85 = 0;
  v10[496] = 0;
  *(v4 + 15708) = 7;
  v86 = v2570;
  if (*(v2570 + 58))
  {
    goto LABEL_228;
  }

  v87 = v2547;
  if (*(v2570 + 16))
  {
    v88 = *(v2570 + 20);
    v89 = *(v2570 + 24);
    if (*v2556 || !*v10 && *(v2582 + 15680))
    {
      if (v88 < 1)
      {
        v90 = 0;
      }

      else
      {
        v90 = 0;
        v91 = v88 + 1;
        do
        {
          while (1)
          {
            v93 = *(a2 + 16);
            v94 = (*a2 + (v93 >> 3));
            if (v94 >= *(a2 + 8))
            {
              break;
            }

            v92 = (*v94 >> (~v93 & 7)) & 1;
            *v74 = v93 + 1;
            v90 |= v92 << (v91-- - 2);
            if (v91 <= 1)
            {
              goto LABEL_170;
            }
          }

          v95 = *(a2 + 32);
          if (v95)
          {
            v95(*(a2 + 24));
            v74 = (a2 + 16);
          }

          --v91;
        }

        while (v91 > 1);
      }

LABEL_170:
      v104 = v2581;
      *(v2581 + 2240) = v90;
      v106 = 1 << v89;
      v107 = v90 - (1 << v89);
      v108 = *(v2581 + 2244);
      if (v107 >= 1)
      {
LABEL_146:
        v86 = v2570;
        if (v108 > v90 || v108 < v107)
        {
          v87[4] = 0;
        }

        v109 = v104[562];
        if (v109 > v90 || v109 < v107)
        {
          v87[5] = 0;
        }

        v110 = v104[563];
        if (v110 > v90 || v110 < v107)
        {
          v87[6] = 0;
        }

        v111 = v104[564];
        if (v111 > v90 || v111 < v107)
        {
          v87[7] = 0;
        }

        v112 = v104[565];
        if (v112 > v90 || v112 < v107)
        {
          v87[8] = 0;
        }

        v113 = v104[566];
        if (v113 > v90 || v113 < v107)
        {
          v87[9] = 0;
        }

        v114 = v104[567];
        if (v114 > v90 || v114 < v107)
        {
          v87[10] = 0;
        }

        v115 = v104[568];
        v10 = v2568;
        if (v115 > v90)
        {
LABEL_194:
          v87[11] = 0;
          goto LABEL_195;
        }

LABEL_193:
        if (v115 >= v107)
        {
          goto LABEL_195;
        }

        goto LABEL_194;
      }
    }

    else
    {
      v96 = *(v6 + 2240);
      v90 = 0;
      if (v88 >= 1)
      {
        v97 = v88 + 1;
        do
        {
          while (1)
          {
            v99 = *(a2 + 16);
            v100 = (*a2 + (v99 >> 3));
            if (v100 >= *(a2 + 8))
            {
              break;
            }

            v98 = (*v100 >> (~v99 & 7)) & 1;
            *v74 = v99 + 1;
            v90 |= v98 << (v97-- - 2);
            if (v97 <= 1)
            {
              goto LABEL_140;
            }
          }

          v101 = *(a2 + 32);
          if (v101)
          {
            v101(*(a2 + 24));
            v74 = (a2 + 16);
          }

          --v97;
        }

        while (v97 > 1);
      }

LABEL_140:
      *(v2581 + 2240) = v90;
      v103 = v90 - v96;
      v581 = v90 == v96;
      v102 = v90 <= v96;
      v104 = v2581;
      v87 = v2547;
      if (v581)
      {
        goto LABEL_144;
      }

      v105 = 1 << v88;
      if (!v102)
      {
        v105 = 0;
      }

      if (v103 + v105 >= 1 << (v88 - 1))
      {
LABEL_144:
        aom_internal_error(v2582 + 390868, 7, "Invalid value of current_frame_id");
        v74 = (a2 + 16);
        v90 = *(v2581 + 2240);
      }

      v106 = 1 << v89;
      v107 = v90 - (1 << v89);
      v108 = *(v2581 + 2244);
      if (v107 >= 1)
      {
        goto LABEL_146;
      }
    }

    v107 = v90 + (1 << v88) - v106;
    v86 = v2570;
    if (v108 > v90 && v108 < v107)
    {
      v87[4] = 0;
    }

    v116 = v104[562];
    if (v116 > v90 && v116 < v107)
    {
      v87[5] = 0;
    }

    v117 = v104[563];
    if (v117 > v90 && v117 < v107)
    {
      v87[6] = 0;
    }

    v118 = v104[564];
    if (v118 > v90 && v118 < v107)
    {
      v87[7] = 0;
    }

    v119 = v104[565];
    if (v119 > v90 && v119 < v107)
    {
      v87[8] = 0;
    }

    v120 = v104[566];
    if (v120 > v90 && v120 < v107)
    {
      v87[9] = 0;
    }

    v121 = v104[567];
    if (v121 > v90 && v121 < v107)
    {
      v87[10] = 0;
    }

    v115 = v104[568];
    v10 = v2568;
    if (v115 > v90)
    {
      goto LABEL_193;
    }
  }

LABEL_195:
  if (*v10 != 3)
  {
    v139 = *(a2 + 16);
    v140 = (*a2 + (v139 >> 3));
    if (v140 >= *(a2 + 8))
    {
      v141 = *(a2 + 32);
      if (v141)
      {
        v141(*(a2 + 24));
        v74 = (a2 + 16);
      }

      v85 = 0;
      v122 = *(v86 + 44);
      if ((v122 & 0x80000000) == 0)
      {
        goto LABEL_197;
      }
    }

    else
    {
      v85 = (*v140 >> (~v139 & 7)) & 1;
      *v74 = v139 + 1;
      v122 = *(v86 + 44);
      if ((v122 & 0x80000000) == 0)
      {
        goto LABEL_197;
      }
    }

LABEL_216:
    v123 = 0;
    v130 = v2582;
    *(v2582 + 15204) = 0;
    v86 = v2570;
    if (!*(v2570 + 40))
    {
      goto LABEL_205;
    }

    goto LABEL_204;
  }

  v85 = 1;
  v122 = *(v86 + 44);
  if (v122 < 0)
  {
    goto LABEL_216;
  }

LABEL_197:
  v123 = 0;
  do
  {
    while (1)
    {
      v126 = *(a2 + 16);
      v127 = (*a2 + (v126 >> 3));
      if (v127 >= *(a2 + 8))
      {
        break;
      }

      v124 = (*v127 >> (~v126 & 7)) & 1;
      *v74 = v126 + 1;
      v123 |= v124 << v122;
      v125 = v122-- + 1;
      if (v125 <= 1)
      {
        goto LABEL_203;
      }
    }

    v128 = *(a2 + 32);
    if (v128)
    {
      v128(*(a2 + 24));
      v74 = (a2 + 16);
    }

    v129 = v122-- + 1;
  }

  while (v129 > 1);
LABEL_203:
  v130 = v2582;
  *(v2582 + 15204) = v123;
  v86 = v2570;
  if (*(v2570 + 40))
  {
LABEL_204:
    *(v130 + 15216) = v123;
  }

LABEL_205:
  if ((v2568[502] & 1) != 0 || (*v2568 & 0xFD) == 0)
  {
    goto LABEL_228;
  }

  v131 = *(a2 + 16);
  v132 = *a2;
  v133 = *(a2 + 8);
  v134 = (*a2 + (v131 >> 3));
  if (v134 >= v133)
  {
    v142 = *(a2 + 32);
    if (v142)
    {
      v142(*(a2 + 24));
      v74 = (a2 + 16);
      v136 = 0;
      LODWORD(v131) = *(a2 + 16);
      v132 = *a2;
      v133 = *(a2 + 8);
      v137 = (*a2 + (v131 >> 3));
      if (v137 < v133)
      {
        goto LABEL_209;
      }
    }

    else
    {
      v136 = 0;
      v137 = (v132 + (v131 >> 3));
      if (v137 < v133)
      {
        goto LABEL_209;
      }
    }

LABEL_220:
    v137 = *(a2 + 32);
    if (v137)
    {
      v137(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v137) = 0;
      LODWORD(v131) = *(a2 + 16);
      v132 = *a2;
      v133 = *(a2 + 8);
    }

    goto LABEL_222;
  }

  v135 = *v134 >> (~v131 & 7);
  LODWORD(v131) = v131 + 1;
  *v74 = v131;
  v136 = 4 * (v135 & 1);
  v137 = (v132 + (v131 >> 3));
  if (v137 >= v133)
  {
    goto LABEL_220;
  }

LABEL_209:
  v138 = *v137 >> (~v131 & 7);
  LODWORD(v131) = v131 + 1;
  *v74 = v131;
  LODWORD(v137) = 2 * (v138 & 1);
LABEL_222:
  v143 = v137 | v136;
  v144 = (v132 + (v131 >> 3));
  if (v144 >= v133)
  {
    v146 = *(a2 + 32);
    if (v146)
    {
      v146(*(a2 + 24));
      v74 = (a2 + 16);
    }

    v145 = 0;
  }

  else
  {
    v145 = (*v144 >> (~v131 & 7)) & 1;
    *v74 = v131 + 1;
  }

  *(v130 + 15708) = v145 | v143;
LABEL_228:
  v2546 = v85;
  if (*(v86 + 268))
  {
    v147 = *(a2 + 16);
    v148 = (*a2 + (v147 >> 3));
    if (v148 >= *(a2 + 8))
    {
      v159 = *(a2 + 32);
      if (v159)
      {
        v159(*(a2 + 24));
        v74 = (a2 + 16);
      }

      *(v2547 + 2016) = 0;
    }

    else
    {
      v149 = *v148 >> (~v147 & 7);
      *v74 = v147 + 1;
      *(v2547 + 2016) = v149 & 1;
      if ((v149 & 1) != 0 && (*(v2570 + 112) & 0x80000000) == 0)
      {
        v150 = 0;
        do
        {
          if (*(v2570 + 360 + 48 * v150) && ((v152 = *(v2570 + 116 + 4 * v150)) == 0 || ((v152 >> *(v2581 + 2332)) & 1) != 0 && ((v152 >> (*(v2581 + 2336) + 8)) & 1) != 0) && (v153 = *(v2570 + 280), v153 >= 1))
          {
            v151 = 0;
            v154 = v153 + 1;
            do
            {
              while (1)
              {
                v156 = *(a2 + 16);
                v157 = (*a2 + (v156 >> 3));
                if (v157 >= *(a2 + 8))
                {
                  break;
                }

                v155 = (*v157 >> (~v156 & 7)) & 1;
                *v74 = v156 + 1;
                v151 |= v155 << (v154-- - 2);
                if (v154 <= 1)
                {
                  goto LABEL_234;
                }
              }

              v158 = *(a2 + 32);
              if (v158)
              {
                v158(*(a2 + 24));
                v74 = (a2 + 16);
              }

              --v154;
            }

            while (v154 > 1);
          }

          else
          {
            v151 = 0;
          }

LABEL_234:
          *(v2582 + 15284 + 4 * v150) = v151;
          v102 = v150++ < *(v2570 + 112);
        }

        while (v102);
      }
    }
  }

  v160 = v2568;
  v161 = *v2568;
  if (v161 != 2)
  {
    v162 = v2582;
    if (!*v2568)
    {
      if (*(v2582 + 15680))
      {
        v163 = 255;
        v164 = v2581;
        v165 = v2547;
        goto LABEL_330;
      }

      v195 = *(a2 + 16);
      v196 = *a2;
      v197 = *(a2 + 8);
      v198 = (*a2 + (v195 >> 3));
      v164 = v2581;
      v165 = v2547;
      if (v198 >= v197)
      {
        v211 = *(a2 + 32);
        if (v211)
        {
          v211(*(a2 + 24));
          v74 = (a2 + 16);
          v200 = 0;
          LODWORD(v195) = *(a2 + 16);
          v196 = *a2;
          v197 = *(a2 + 8);
          v201 = (*a2 + (v195 >> 3));
          if (v201 < v197)
          {
            goto LABEL_296;
          }
        }

        else
        {
          v200 = 0;
          v201 = (v196 + (v195 >> 3));
          if (v201 < v197)
          {
            goto LABEL_296;
          }
        }
      }

      else
      {
        v199 = *v198 >> (~v195 & 7);
        LODWORD(v195) = v195 + 1;
        *v74 = v195;
        v200 = (v199 & 1) << 7;
        v201 = (v196 + (v195 >> 3));
        if (v201 < v197)
        {
LABEL_296:
          v202 = *v201 >> (~v195 & 7);
          LODWORD(v195) = v195 + 1;
          *v74 = v195;
          LODWORD(v201) = (v202 & 1) << 6;
LABEL_304:
          v212 = v201 | v200;
          v213 = (v196 + (v195 >> 3));
          if (v213 >= v197)
          {
            v213 = *(a2 + 32);
            if (v213)
            {
              v213(*(a2 + 24));
              v74 = (a2 + 16);
              LODWORD(v213) = 0;
              LODWORD(v195) = *(a2 + 16);
              v196 = *a2;
              v197 = *(a2 + 8);
            }
          }

          else
          {
            v214 = *v213 >> (~v195 & 7);
            LODWORD(v195) = v195 + 1;
            *v74 = v195;
            LODWORD(v213) = 32 * (v214 & 1);
          }

          v215 = v213 | v212;
          v216 = (v196 + (v195 >> 3));
          if (v216 >= v197)
          {
            v216 = *(a2 + 32);
            if (v216)
            {
              v216(*(a2 + 24));
              v74 = (a2 + 16);
              LODWORD(v216) = 0;
              LODWORD(v195) = *(a2 + 16);
              v196 = *a2;
              v197 = *(a2 + 8);
            }
          }

          else
          {
            v217 = *v216 >> (~v195 & 7);
            LODWORD(v195) = v195 + 1;
            *v74 = v195;
            LODWORD(v216) = 16 * (v217 & 1);
          }

          v218 = v216 | v215;
          v219 = (v196 + (v195 >> 3));
          if (v219 >= v197)
          {
            v219 = *(a2 + 32);
            if (v219)
            {
              v219(*(a2 + 24));
              v74 = (a2 + 16);
              LODWORD(v219) = 0;
              LODWORD(v195) = *(a2 + 16);
              v196 = *a2;
              v197 = *(a2 + 8);
            }
          }

          else
          {
            v220 = *v219 >> (~v195 & 7);
            LODWORD(v195) = v195 + 1;
            *v74 = v195;
            LODWORD(v219) = 8 * (v220 & 1);
          }

          v221 = v219 | v218;
          v222 = (v196 + (v195 >> 3));
          if (v222 >= v197)
          {
            v222 = *(a2 + 32);
            if (v222)
            {
              v222(*(a2 + 24));
              v74 = (a2 + 16);
              LODWORD(v222) = 0;
              LODWORD(v195) = *(a2 + 16);
              v196 = *a2;
              v197 = *(a2 + 8);
            }
          }

          else
          {
            v223 = *v222 >> (~v195 & 7);
            LODWORD(v195) = v195 + 1;
            *v74 = v195;
            LODWORD(v222) = 4 * (v223 & 1);
          }

          v224 = v222 | v221;
          v225 = (v196 + (v195 >> 3));
          if (v225 >= v197)
          {
            v225 = *(a2 + 32);
            if (v225)
            {
              v225(*(a2 + 24));
              v74 = (a2 + 16);
              LODWORD(v225) = 0;
              LODWORD(v195) = *(a2 + 16);
              v196 = *a2;
              v197 = *(a2 + 8);
            }
          }

          else
          {
            v226 = *v225 >> (~v195 & 7);
            LODWORD(v195) = v195 + 1;
            *v74 = v195;
            LODWORD(v225) = 2 * (v226 & 1);
          }

          v227 = v225 | v224;
          v228 = (v196 + (v195 >> 3));
          if (v228 >= v197)
          {
            v230 = *(a2 + 32);
            if (v230)
            {
              v230(*(a2 + 24));
              v74 = (a2 + 16);
            }

            v229 = 0;
          }

          else
          {
            v229 = (*v228 >> (~v195 & 7)) & 1;
            *v74 = v195 + 1;
          }

          v163 = v229 | v227;
          v160 = v2568;
LABEL_330:
          *(v2582 + 15236) = v163;
          *(v2582 + 15440) = -1;
          *(v2582 + 15448) = -1;
          *(v2582 + 15456) = -1;
          *(v2582 + 15464) = -1;
          if (!v2556[4])
          {
            goto LABEL_332;
          }

          goto LABEL_331;
        }
      }

      v201 = *(a2 + 32);
      if (v201)
      {
        v201(*(a2 + 24));
        v74 = (a2 + 16);
        LODWORD(v201) = 0;
        LODWORD(v195) = *(a2 + 16);
        v196 = *a2;
        v197 = *(a2 + 8);
      }

      goto LABEL_304;
    }

    v164 = v2581;
    v165 = v2547;
    if (v2556[4] == 1)
    {
      goto LABEL_332;
    }

    if (v161 == 3)
    {
      *(v2582 + 15236) = 255;
      v174 = *v2568;
      if ((v174 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_392;
      }

      goto LABEL_333;
    }

    v203 = *(a2 + 16);
    v204 = *a2;
    v205 = *(a2 + 8);
    v206 = (*a2 + (v203 >> 3));
    if (v206 >= v205)
    {
      v245 = *(a2 + 32);
      if (v245)
      {
        v245(*(a2 + 24));
        v74 = (a2 + 16);
        v208 = 0;
        LODWORD(v203) = *(a2 + 16);
        v204 = *a2;
        v205 = *(a2 + 8);
        v209 = (*a2 + (v203 >> 3));
        if (v209 < v205)
        {
          goto LABEL_299;
        }
      }

      else
      {
        v208 = 0;
        v209 = (v204 + (v203 >> 3));
        if (v209 < v205)
        {
          goto LABEL_299;
        }
      }
    }

    else
    {
      v207 = *v206 >> (~v203 & 7);
      LODWORD(v203) = v203 + 1;
      *v74 = v203;
      v208 = (v207 & 1) << 7;
      v209 = (v204 + (v203 >> 3));
      if (v209 < v205)
      {
LABEL_299:
        v210 = *v209 >> (~v203 & 7);
        LODWORD(v203) = v203 + 1;
        *v74 = v203;
        LODWORD(v209) = (v210 & 1) << 6;
        goto LABEL_366;
      }
    }

    v209 = *(a2 + 32);
    if (v209)
    {
      v209(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v209) = 0;
      LODWORD(v203) = *(a2 + 16);
      v204 = *a2;
      v205 = *(a2 + 8);
    }

LABEL_366:
    v246 = v209 | v208;
    v247 = (v204 + (v203 >> 3));
    if (v247 >= v205)
    {
      v247 = *(a2 + 32);
      if (v247)
      {
        v247(*(a2 + 24));
        v74 = (a2 + 16);
        LODWORD(v247) = 0;
        LODWORD(v203) = *(a2 + 16);
        v204 = *a2;
        v205 = *(a2 + 8);
      }
    }

    else
    {
      v248 = *v247 >> (~v203 & 7);
      LODWORD(v203) = v203 + 1;
      *v74 = v203;
      LODWORD(v247) = 32 * (v248 & 1);
    }

    v249 = v247 | v246;
    v250 = (v204 + (v203 >> 3));
    if (v250 >= v205)
    {
      v250 = *(a2 + 32);
      if (v250)
      {
        v250(*(a2 + 24));
        v74 = (a2 + 16);
        LODWORD(v250) = 0;
        LODWORD(v203) = *(a2 + 16);
        v204 = *a2;
        v205 = *(a2 + 8);
      }
    }

    else
    {
      v251 = *v250 >> (~v203 & 7);
      LODWORD(v203) = v203 + 1;
      *v74 = v203;
      LODWORD(v250) = 16 * (v251 & 1);
    }

    v252 = v250 | v249;
    v253 = (v204 + (v203 >> 3));
    if (v253 >= v205)
    {
      v253 = *(a2 + 32);
      if (v253)
      {
        v253(*(a2 + 24));
        v74 = (a2 + 16);
        LODWORD(v253) = 0;
        LODWORD(v203) = *(a2 + 16);
        v204 = *a2;
        v205 = *(a2 + 8);
      }
    }

    else
    {
      v254 = *v253 >> (~v203 & 7);
      LODWORD(v203) = v203 + 1;
      *v74 = v203;
      LODWORD(v253) = 8 * (v254 & 1);
    }

    v255 = v253 | v252;
    v256 = (v204 + (v203 >> 3));
    if (v256 >= v205)
    {
      v256 = *(a2 + 32);
      if (v256)
      {
        v256(*(a2 + 24));
        v74 = (a2 + 16);
        LODWORD(v256) = 0;
        LODWORD(v203) = *(a2 + 16);
        v204 = *a2;
        v205 = *(a2 + 8);
      }
    }

    else
    {
      v257 = *v256 >> (~v203 & 7);
      LODWORD(v203) = v203 + 1;
      *v74 = v203;
      LODWORD(v256) = 4 * (v257 & 1);
    }

    v258 = v256 | v255;
    v259 = (v204 + (v203 >> 3));
    if (v259 >= v205)
    {
      v259 = *(a2 + 32);
      if (v259)
      {
        v259(*(a2 + 24));
        v74 = (a2 + 16);
        LODWORD(v259) = 0;
        LODWORD(v203) = *(a2 + 16);
        v204 = *a2;
        v205 = *(a2 + 8);
      }
    }

    else
    {
      v260 = *v259 >> (~v203 & 7);
      LODWORD(v203) = v203 + 1;
      *v74 = v203;
      LODWORD(v259) = 2 * (v260 & 1);
    }

    v261 = v259 | v258;
    v262 = (v204 + (v203 >> 3));
    if (v262 >= v205)
    {
      v264 = *(a2 + 32);
      if (v264)
      {
        v264(*(a2 + 24));
        v74 = (a2 + 16);
      }

      v263 = 0;
    }

    else
    {
      v263 = (*v262 >> (~v203 & 7)) & 1;
      *v74 = v203 + 1;
    }

    v265 = v263 | v261;
    v160 = v2568;
    *(v2582 + 15236) = v265;
    v174 = *v2568;
    if ((v174 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_392;
    }

    goto LABEL_333;
  }

  v166 = *(a2 + 16);
  v167 = *a2;
  v168 = *(a2 + 8);
  v169 = (*a2 + (v166 >> 3));
  v162 = v2582;
  if (v169 >= v168)
  {
    v175 = *(a2 + 32);
    if (v175)
    {
      v175(*(a2 + 24));
      v74 = (a2 + 16);
      v171 = 0;
      LODWORD(v166) = *(a2 + 16);
      v167 = *a2;
      v168 = *(a2 + 8);
      v164 = v2581;
      v165 = v2547;
      v172 = (*a2 + (v166 >> 3));
      if (v172 < v168)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v171 = 0;
      v164 = v2581;
      v165 = v2547;
      v172 = (v167 + (v166 >> 3));
      if (v172 < v168)
      {
        goto LABEL_257;
      }
    }
  }

  else
  {
    v170 = *v169 >> (~v166 & 7);
    LODWORD(v166) = v166 + 1;
    *v74 = v166;
    v171 = (v170 & 1) << 7;
    v164 = v2581;
    v165 = v2547;
    v172 = (v167 + (v166 >> 3));
    if (v172 < v168)
    {
LABEL_257:
      v173 = *v172 >> (~v166 & 7);
      LODWORD(v166) = v166 + 1;
      *v74 = v166;
      LODWORD(v172) = (v173 & 1) << 6;
      goto LABEL_266;
    }
  }

  v172 = *(a2 + 32);
  if (v172)
  {
    v172(*(a2 + 24));
    v74 = (a2 + 16);
    LODWORD(v172) = 0;
    LODWORD(v166) = *(a2 + 16);
    v167 = *a2;
    v168 = *(a2 + 8);
  }

LABEL_266:
  v176 = v172 | v171;
  v177 = (v167 + (v166 >> 3));
  if (v177 >= v168)
  {
    v177 = *(a2 + 32);
    if (v177)
    {
      v177(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v177) = 0;
      LODWORD(v166) = *(a2 + 16);
      v167 = *a2;
      v168 = *(a2 + 8);
    }
  }

  else
  {
    v178 = *v177 >> (~v166 & 7);
    LODWORD(v166) = v166 + 1;
    *v74 = v166;
    LODWORD(v177) = 32 * (v178 & 1);
  }

  v179 = v177 | v176;
  v180 = (v167 + (v166 >> 3));
  if (v180 >= v168)
  {
    v180 = *(a2 + 32);
    if (v180)
    {
      v180(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v180) = 0;
      LODWORD(v166) = *(a2 + 16);
      v167 = *a2;
      v168 = *(a2 + 8);
    }
  }

  else
  {
    v181 = *v180 >> (~v166 & 7);
    LODWORD(v166) = v166 + 1;
    *v74 = v166;
    LODWORD(v180) = 16 * (v181 & 1);
  }

  v182 = v180 | v179;
  v183 = (v167 + (v166 >> 3));
  if (v183 >= v168)
  {
    v183 = *(a2 + 32);
    if (v183)
    {
      v183(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v183) = 0;
      LODWORD(v166) = *(a2 + 16);
      v167 = *a2;
      v168 = *(a2 + 8);
    }
  }

  else
  {
    v184 = *v183 >> (~v166 & 7);
    LODWORD(v166) = v166 + 1;
    *v74 = v166;
    LODWORD(v183) = 8 * (v184 & 1);
  }

  v185 = v183 | v182;
  v186 = (v167 + (v166 >> 3));
  if (v186 >= v168)
  {
    v186 = *(a2 + 32);
    if (v186)
    {
      v186(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v186) = 0;
      LODWORD(v166) = *(a2 + 16);
      v167 = *a2;
      v168 = *(a2 + 8);
    }
  }

  else
  {
    v187 = *v186 >> (~v166 & 7);
    LODWORD(v166) = v166 + 1;
    *v74 = v166;
    LODWORD(v186) = 4 * (v187 & 1);
  }

  v188 = v186 | v185;
  v189 = (v167 + (v166 >> 3));
  if (v189 >= v168)
  {
    v189 = *(a2 + 32);
    if (v189)
    {
      v189(*(a2 + 24));
      v74 = (a2 + 16);
      LODWORD(v189) = 0;
      LODWORD(v166) = *(a2 + 16);
      v167 = *a2;
      v168 = *(a2 + 8);
    }
  }

  else
  {
    v190 = *v189 >> (~v166 & 7);
    LODWORD(v166) = v166 + 1;
    *v74 = v166;
    LODWORD(v189) = 2 * (v190 & 1);
  }

  v191 = v189 | v188;
  v192 = (v167 + (v166 >> 3));
  if (v192 < v168)
  {
    v193 = (*v192 >> (~v166 & 7)) & 1;
    *v74 = v166 + 1;
    *(v2582 + 15236) = v193 | v191;
    if ((v193 | v191) != 0xFF)
    {
      goto LABEL_289;
    }

    goto LABEL_288;
  }

  v194 = *(a2 + 32);
  if (v194)
  {
    v194(*(a2 + 24));
    v74 = (a2 + 16);
    *(v2582 + 15236) = v191;
    if (v191 == 255)
    {
      goto LABEL_288;
    }
  }

  else
  {
    *(v2582 + 15236) = v191;
    if (v191 == 255)
    {
LABEL_288:
      aom_internal_error(v2582 + 390868, 5, "Intra only frames cannot have refresh flags 0xFF");
      v74 = (a2 + 16);
    }
  }

LABEL_289:
  v160 = v2568;
  if (v2556[4])
  {
LABEL_331:
    reset_ref_frame_map(v160);
    v74 = (a2 + 16);
    v2556[4] = 0;
  }

LABEL_332:
  v174 = *v160;
  if ((v174 & 0xFFFFFFFD) != 0)
  {
    goto LABEL_392;
  }

LABEL_333:
  if (*(v162 + 15236) != 255)
  {
LABEL_392:
    if (v160[502] != 1 || !*(v2570 + 40))
    {
      goto LABEL_509;
    }

    v266 = 0;
    v267 = v162 + 15616;
    v2548 = v162 + 388864;
    v2551 = v162 + 15616;
    v2561 = v9;
    while (1)
    {
      v268 = *(v2570 + 44);
      if (v268 < 0)
      {
        v269 = 0;
        v276 = *(v267 + 8 * v266);
        if (!v276)
        {
          goto LABEL_413;
        }
      }

      else
      {
        v269 = 0;
        do
        {
          while (1)
          {
            v272 = *(a2 + 16);
            v273 = (*a2 + (v272 >> 3));
            if (v273 >= *(a2 + 8))
            {
              break;
            }

            v270 = (*v273 >> (~v272 & 7)) & 1;
            *v74 = v272 + 1;
            v269 |= v270 << v268;
            v271 = v268-- + 1;
            if (v271 <= 1)
            {
              goto LABEL_404;
            }
          }

          v274 = *(a2 + 32);
          if (v274)
          {
            v274(*(a2 + 24));
            v74 = (a2 + 16);
          }

          v275 = v268-- + 1;
        }

        while (v275 > 1);
LABEL_404:
        v276 = *(v267 + 8 * v266);
        if (!v276)
        {
          goto LABEL_413;
        }
      }

      if (v269 == *(v276 + 4))
      {
        goto LABEL_396;
      }

      pthread_mutex_lock(v9);
      v581 = (*v276)-- == 1;
      if (v581 && *(v276 + 1224))
      {
        (*&v9[1].__opaque[8])(v9[1].__sig, v276 + 1224);
        *(v276 + 1232) = 0;
        *(v276 + 1240) = 0;
        *(v276 + 1224) = 0;
      }

      pthread_mutex_unlock(v9);
      *(v267 + 8 * v266) = 0;
LABEL_413:
      v277 = *(v2581 + 2176);
      v278 = *(v277 + 88);
      pthread_mutex_lock(v277);
      v279 = *(v2581 + 2176);
      v280 = v279[1].__opaque[24];
      if (v279[1].__opaque[24])
      {
        v281 = 0;
        v282 = v278;
        while (*v282)
        {
          v282 += 5682;
          if (v280 == ++v281)
          {
            goto LABEL_420;
          }
        }
      }

      else
      {
        LODWORD(v281) = 0;
      }

      if (v281 == v280)
      {
LABEL_420:
        pthread_mutex_unlock(v279);
        v283 = v2582;
LABEL_421:
        aom_internal_error(v283 + 390868, 2, "Unable to find free frame buffer");
        LODWORD(v281) = -1;
        goto LABEL_425;
      }

      v284 = &v278[5682 * v281];
      if (v284[328])
      {
        *(v284 + 161) = *(v284 + 165);
        *(v284 + 81) = *(v284 + 83);
        v284[328] = 0;
        v279 = *(v2581 + 2176);
      }

      *v284 = 1;
      pthread_mutex_unlock(v279);
      v283 = v2582;
      if (v281 == -1)
      {
        goto LABEL_421;
      }

LABEL_425:
      v9 = v2561;
      v285 = v2557 + 22728 * v281;
      pthread_mutex_lock(v2561);
      v286 = (v285 + 1224);
      LOBYTE(v2545) = 0;
      if (aom_realloc_frame_buffer(v285 + 1248, *(v2570 + 8), *(v2570 + 12), *(v2570 + 96), *(v2570 + 100), *(v2570 + 76), 288, *(v283 + 15712), (v285 + 1224), *v9[1].__opaque, v9[1].__sig, v2545, 0))
      {
        if (v2557)
        {
          v581 = (*v285)-- == 1;
          if (v581)
          {
            if (*v286)
            {
              (*&v2561[1].__opaque[8])(v2561[1].__sig, v285 + 1224);
              *(v285 + 1232) = 0;
              *(v285 + 1240) = 0;
              *v286 = 0;
            }
          }
        }

        v9 = v2561;
        pthread_mutex_unlock(v2561);
        aom_internal_error(v283 + 390868, 2, "Failed to allocate frame buffer");
      }

      pthread_mutex_unlock(v9);
      if (!*(v2570 + 76))
      {
        v267 = v2551;
        if (*(v285 + 1272) >= 1)
        {
          v293 = 0;
          do
          {
            memset((*(v285 + 1288) + *(v285 + 1280) * v293++), 128, *(v285 + 1264));
          }

          while (v293 < *(v285 + 1272));
        }

        if (*(v285 + 1276) >= 1)
        {
          v294 = 0;
          do
          {
            memset((*(v285 + 1296) + *(v285 + 1284) * v294++), 128, *(v285 + 1268));
            v295 = *(v285 + 1276);
          }

          while (v294 < v295);
          if (v295 >= 1)
          {
            v296 = 0;
            do
            {
              memset((*(v285 + 1304) + *(v285 + 1284) * v296++), 128, *(v285 + 1268));
            }

            while (v296 < *(v285 + 1276));
          }
        }

        goto LABEL_395;
      }

      v287 = 1 << (*(v2570 + 72) - 1);
      v288 = *(v285 + 1272);
      v267 = v2551;
      if (v288 >= 1)
      {
        v289 = (2 * *(v285 + 1288));
        v290 = *(v285 + 1264);
        if (v290)
        {
          if (v290 < 4)
          {
            v291 = 0;
            v292 = (2 * *(v285 + 1288));
            goto LABEL_458;
          }

          if (v290 >= 0x10)
          {
            v291 = v290 & 0xFFFFFFFFFFFFFFF0;
            a3 = vdupq_n_s16(v287);
            v297 = v289 + 1;
            v298 = v290 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v297[-1] = a3;
              *v297 = a3;
              v297 += 2;
              v298 -= 16;
            }

            while (v298);
            if (v291 != v290)
            {
              if ((v290 & 0xC) == 0)
              {
                v292 = v289 + v291;
                goto LABEL_458;
              }

              goto LABEL_453;
            }
          }

          else
          {
            v291 = 0;
LABEL_453:
            v299 = v291;
            v291 = v290 & 0xFFFFFFFFFFFFFFFCLL;
            v292 = v289 + (v290 & 0xFFFFFFFFFFFFFFFCLL);
            a3.n128_u64[0] = vdup_n_s16(v287);
            v300 = (v289->n128_u64 + 2 * v299);
            v301 = v299 - (v290 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v300++ = a3.n128_u64[0];
              v301 += 4;
            }

            while (v301);
            if (v291 != v290)
            {
LABEL_458:
              v302 = v290 - v291;
              do
              {
                *v292++ = v287;
                --v302;
              }

              while (v302);
            }
          }

          v288 = *(v285 + 1272);
        }

        if (v288 > 1)
        {
          v303 = 1;
          do
          {
            memcpy(v289 + 2 * *(v285 + 1280) * v303++, v289, 2 * *(v285 + 1264));
          }

          while (v303 < *(v285 + 1272));
        }
      }

      v304 = *(v285 + 1276);
      v9 = v2561;
      if (v304 >= 1)
      {
        v305 = (2 * *(v285 + 1296));
        v306 = *(v285 + 1268);
        if (v306)
        {
          if (v306 < 4)
          {
            v307 = 0;
            v308 = (2 * *(v285 + 1296));
            goto LABEL_479;
          }

          if (v306 >= 0x10)
          {
            v307 = v306 & 0xFFFFFFFFFFFFFFF0;
            a3 = vdupq_n_s16(v287);
            v309 = v305 + 1;
            v310 = v306 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v309[-1] = a3;
              *v309 = a3;
              v309 += 2;
              v310 -= 16;
            }

            while (v310);
            if (v307 != v306)
            {
              if ((v306 & 0xC) == 0)
              {
                v308 = v305 + v307;
                goto LABEL_479;
              }

              goto LABEL_474;
            }
          }

          else
          {
            v307 = 0;
LABEL_474:
            v311 = v307;
            v307 = v306 & 0xFFFFFFFFFFFFFFFCLL;
            v308 = v305 + (v306 & 0xFFFFFFFFFFFFFFFCLL);
            a3.n128_u64[0] = vdup_n_s16(v287);
            v312 = (v305->n128_u64 + 2 * v311);
            v313 = v311 - (v306 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v312++ = a3.n128_u64[0];
              v313 += 4;
            }

            while (v313);
            if (v307 != v306)
            {
LABEL_479:
              v314 = v306 - v307;
              do
              {
                *v308++ = v287;
                --v314;
              }

              while (v314);
            }
          }

          v304 = *(v285 + 1276);
        }

        if (v304 > 1)
        {
          for (k = 1; k < v304; ++k)
          {
            memcpy(v305 + 2 * *(v285 + 1284) * k, v305, 2 * *(v285 + 1268));
            v304 = *(v285 + 1276);
          }

          v9 = v2561;
        }

        if (v304 < 1)
        {
          goto LABEL_395;
        }

        v316 = (2 * *(v285 + 1304));
        v317 = *(v285 + 1268);
        if (v317)
        {
          if (v317 < 4)
          {
            v318 = 0;
            v319 = (2 * *(v285 + 1304));
            goto LABEL_501;
          }

          if (v317 >= 0x10)
          {
            v318 = v317 & 0xFFFFFFFFFFFFFFF0;
            a3 = vdupq_n_s16(v287);
            v320 = v316 + 1;
            v321 = v317 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v320[-1] = a3;
              *v320 = a3;
              v320 += 2;
              v321 -= 16;
            }

            while (v321);
            if (v318 != v317)
            {
              if ((v317 & 0xC) == 0)
              {
                v319 = v316 + v318;
                goto LABEL_501;
              }

              goto LABEL_496;
            }
          }

          else
          {
            v318 = 0;
LABEL_496:
            v322 = v318;
            v318 = v317 & 0xFFFFFFFFFFFFFFFCLL;
            v319 = v316 + (v317 & 0xFFFFFFFFFFFFFFFCLL);
            a3.n128_u64[0] = vdup_n_s16(v287);
            v323 = (v316->n128_u64 + 2 * v322);
            v324 = v322 - (v317 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v323++ = a3.n128_u64[0];
              v324 += 4;
            }

            while (v324);
            if (v318 != v317)
            {
LABEL_501:
              v325 = v317 - v318;
              do
              {
                *v319++ = v287;
                --v325;
              }

              while (v325);
            }
          }

          v304 = *(v285 + 1276);
        }

        if (v304 >= 2)
        {
          v326 = 1;
          do
          {
            memcpy(v316 + 2 * *(v285 + 1284) * v326++, v316, 2 * *(v285 + 1268));
          }

          while (v326 < *(v285 + 1276));
        }
      }

LABEL_395:
      *(v2548 + 4 * v266) = 1;
      *(v267 + 8 * v266) = v285;
      *(v285 + 4) = v269;
      v74 = (a2 + 16);
LABEL_396:
      if (++v266 == 8)
      {
        v160 = v2568;
        v174 = *v2568;
        v164 = v2581;
        v162 = v2582;
        v165 = v2547;
        break;
      }
    }
  }

LABEL_509:
  if (!v174)
  {
    v330 = setup_frame_size_0(v160, v2546, a2);
    if (v160[495] == 1 && *(v162 + 15256) == *(v162 + 15272))
    {
      v331 = *(a2 + 16);
      v332 = (*a2 + (v331 >> 3));
      if (v332 >= *(a2 + 8))
      {
        v331 = *(a2 + 32);
        if (v331)
        {
          (v331)(*(a2 + 24), v330);
          LOBYTE(v331) = 0;
        }
      }

      else
      {
        v333 = *v332 >> (~v331 & 7);
        *v2583 = v331 + 1;
        LOBYTE(v331) = v333 & 1;
      }

      v160[496] = v331;
    }

    v160[498] = 0;
    *(v162 + 15424) = 0;
    goto LABEL_983;
  }

  v160[498] = 0;
  if (v174 == 2)
  {
    *(*(v162 + 15432) + 568) = *(v2570 + 109);
    a3.n128_f64[0] = setup_frame_size_0(v160, v2546, a2);
    if (v160[495] == 1 && *(v162 + 15256) == *(v162 + 15272))
    {
      v327 = *(a2 + 16);
      v328 = (*a2 + (v327 >> 3));
      if (v328 >= *(a2 + 8))
      {
        v347 = *(a2 + 32);
        if (v347)
        {
          v347(*(a2 + 24), a3.n128_f64[0]);
          LOBYTE(v347) = 0;
        }

        v160[496] = v347;
      }

      else
      {
        v329 = *v328 >> (~v327 & 7);
        *v2583 = v327 + 1;
        v160[496] = v329 & 1;
      }
    }

    goto LABEL_893;
  }

  if (v2556[4] == 1)
  {
    goto LABEL_893;
  }

  if (!*(v2570 + 40))
  {
    goto LABEL_527;
  }

  v334 = *(a2 + 16);
  v335 = *a2;
  v336 = *(a2 + 8);
  v337 = (*a2 + (v334 >> 3));
  if (v337 < v336)
  {
    v338 = v74;
    v339 = *v337;
    v340 = v334 + 1;
    *v338 = v334 + 1;
    if ((v339 >> (~v334 & 7)))
    {
      v341 = (v335 + (v340 >> 3));
      if (v341 >= v336)
      {
        v348 = *(a2 + 32);
        if (v348)
        {
          v348(*(a2 + 24));
          v344 = 0;
          v340 = *(a2 + 16);
          v335 = *a2;
          v336 = *(a2 + 8);
        }

        else
        {
          v344 = 0;
        }

        v343 = (a2 + 16);
      }

      else
      {
        v342 = *v341 >> (~v340 & 7);
        v340 = v334 + 2;
        v343 = (a2 + 16);
        *v2583 = v334 + 2;
        v344 = 4 * (v342 & 1);
      }

      v363 = (v335 + (v340 >> 3));
      if (v363 >= v336)
      {
        v363 = *(a2 + 32);
        if (v363)
        {
          v363(*(a2 + 24));
          v343 = (a2 + 16);
          LODWORD(v363) = 0;
          v340 = *(a2 + 16);
          v335 = *a2;
          v336 = *(a2 + 8);
        }
      }

      else
      {
        v364 = *v363 >> (~v340++ & 7);
        *v343 = v340;
        LODWORD(v363) = 2 * (v364 & 1);
      }

      v365 = v363 | v344;
      v366 = (v335 + (v340 >> 3));
      if (v366 >= v336)
      {
        v366 = *(a2 + 32);
        if (v366)
        {
          v366(*(a2 + 24));
          v343 = (a2 + 16);
          LODWORD(v366) = 0;
          v340 = *(a2 + 16);
          v335 = *a2;
          v336 = *(a2 + 8);
        }
      }

      else
      {
        LODWORD(v366) = (*v366 >> (~v340++ & 7)) & 1;
        *v343 = v340;
      }

      v367 = v366 | v365;
      v368 = *(v2582 + 15616 + 8 * (v366 | v365));
      v369 = (v335 + (v340 >> 3));
      if (v369 >= v336)
      {
        v372 = *(a2 + 32);
        if (v372)
        {
          v372(*(a2 + 24));
          v343 = (a2 + 16);
          v371 = 0;
          v340 = *(a2 + 16);
          v335 = *a2;
          v336 = *(a2 + 8);
        }

        else
        {
          v371 = 0;
        }
      }

      else
      {
        v370 = *v369 >> (~v340++ & 7);
        *v343 = v340;
        v371 = 4 * (v370 & 1);
      }

      v373 = (v335 + (v340 >> 3));
      if (v373 >= v336)
      {
        v373 = *(a2 + 32);
        if (v373)
        {
          v373(*(a2 + 24));
          v343 = (a2 + 16);
          LODWORD(v373) = 0;
          v340 = *(a2 + 16);
          v335 = *a2;
          v336 = *(a2 + 8);
        }
      }

      else
      {
        v374 = *v373 >> (~v340++ & 7);
        *v343 = v340;
        LODWORD(v373) = 2 * (v374 & 1);
      }

      v375 = v373 | v371;
      v376 = (v335 + (v340 >> 3));
      if (v376 >= v336)
      {
        v378 = *(a2 + 32);
        if (v378)
        {
          v378(*(a2 + 24));
        }

        v377 = 0;
      }

      else
      {
        v377 = (*v376 >> (~v340 & 7)) & 1;
        *v343 = v340 + 1;
      }

      v379 = v377 | v375;
      v380 = *(v2582 + 15616 + 8 * (v377 | v375));
      if (!v368)
      {
        aom_internal_error(v2582 + 390868, 7, "Inter frame requests nonexistent reference");
      }

      if (!v380)
      {
        aom_internal_error(v2582 + 390868, 7, "Inter frame requests nonexistent reference");
      }

      v381 = v367;
      v162 = v2582;
      av1_set_frame_refs(v2568, (v2582 + 15440), v381, v379);
      v346 = 0;
    }

    else
    {
      v346 = 1;
    }

    v74 = (a2 + 16);
    goto LABEL_624;
  }

  v345 = *(a2 + 32);
  if (v345)
  {
    v345(*(a2 + 24));
    v74 = (a2 + 16);
    v346 = 1;
  }

  else
  {
LABEL_527:
    v346 = 1;
  }

LABEL_624:
  v382 = 0;
  v383 = (v162 + 15440);
  v2562 = (v162 + 15616);
  v384 = v162 + 388864;
  v385 = v162 + 40612;
  v2558 = v162 + 40564;
  v2552 = v162 + 40612;
  do
  {
    if (v346)
    {
      v386 = *(a2 + 16);
      v387 = *a2;
      v388 = *(a2 + 8);
      v389 = (*a2 + (v386 >> 3));
      if (v389 < v388)
      {
        v390 = *v389 >> (~v386 & 7);
        LODWORD(v386) = v386 + 1;
        *v74 = v386;
        v391 = 4 * (v390 & 1);
        v392 = (v387 + (v386 >> 3));
        if (v392 < v388)
        {
          goto LABEL_629;
        }

LABEL_647:
        v411 = *(a2 + 32);
        if (v411)
        {
          v411(*(a2 + 24));
          v74 = (a2 + 16);
          v394 = 0;
          LODWORD(v386) = *(a2 + 16);
          v395 = (*a2 + (v386 >> 3));
          if (v395 >= *(a2 + 8))
          {
            goto LABEL_649;
          }
        }

        else
        {
          v394 = 0;
          v395 = (v387 + (v386 >> 3));
          if (v395 >= v388)
          {
            goto LABEL_649;
          }
        }

LABEL_630:
        v396 = (*v395 >> (~v386 & 7)) & 1;
        *v74 = v386 + 1;
        v397 = v396 | v394 | v391;
        v162 = v2582;
        if (*(&v2562->__sig + v397))
        {
          goto LABEL_632;
        }

        goto LABEL_631;
      }

      v410 = *(a2 + 32);
      if (v410)
      {
        v410(*(a2 + 24));
        v74 = (a2 + 16);
        v391 = 0;
        LODWORD(v386) = *(a2 + 16);
        v387 = *a2;
        v388 = *(a2 + 8);
        v392 = (*a2 + (v386 >> 3));
        if (v392 >= v388)
        {
          goto LABEL_647;
        }
      }

      else
      {
        v391 = 0;
        v392 = (v387 + (v386 >> 3));
        if (v392 >= v388)
        {
          goto LABEL_647;
        }
      }

LABEL_629:
      v393 = *v392 >> (~v386 & 7);
      LODWORD(v386) = v386 + 1;
      *v74 = v386;
      v394 = 2 * (v393 & 1);
      v395 = (v387 + (v386 >> 3));
      if (v395 < v388)
      {
        goto LABEL_630;
      }

LABEL_649:
      v412 = *(a2 + 32);
      if (v412)
      {
        v412(*(a2 + 24));
        v74 = (a2 + 16);
      }

      v397 = v394 | v391;
      v162 = v2582;
      if (*(&v2562->__sig + v397))
      {
LABEL_632:
        v383[v382] = v397;
        if (*(v384 + 4 * v397))
        {
          goto LABEL_634;
        }

LABEL_633:
        aom_internal_error(v162 + 390868, 7, "Reference frame not valid for referencing");
        v74 = (a2 + 16);
        goto LABEL_634;
      }

LABEL_631:
      aom_internal_error(v162 + 390868, 7, "Inter frame requests nonexistent reference");
      v74 = (a2 + 16);
      goto LABEL_632;
    }

    v397 = v383[v382];
    if (!*(v384 + 4 * v397))
    {
      goto LABEL_633;
    }

LABEL_634:
    ++v382;
    *(v385 + 4 * v382) = 0;
    if (*(v2570 + 16))
    {
      v399 = *(v2570 + 20);
      v398 = *(v2570 + 24);
      if (v398 < 1)
      {
        v409 = -1;
      }

      else
      {
        v400 = v384;
        v401 = v346;
        v402 = v383;
        v403 = 0;
        v404 = v398 + 1;
        do
        {
          while (1)
          {
            v406 = *(a2 + 16);
            v407 = (*a2 + (v406 >> 3));
            if (v407 >= *(a2 + 8))
            {
              break;
            }

            v405 = (*v407 >> (~v406 & 7)) & 1;
            *v74 = v406 + 1;
            v403 |= v405 << (v404-- - 2);
            if (v404 <= 1)
            {
              goto LABEL_642;
            }
          }

          v408 = *(a2 + 32);
          if (v408)
          {
            v408(*(a2 + 24));
            v74 = (a2 + 16);
          }

          --v404;
        }

        while (v404 > 1);
LABEL_642:
        v409 = ~v403;
        v383 = v402;
        v346 = v401;
        v384 = v400;
        v385 = v2552;
      }

      v413 = ((1 << v399) + v409 + *(v2581 + 2240)) % (1 << v399);
      v162 = v2582;
      if (v413 != *(v2558 + 4 * v397))
      {
        aom_internal_error(v2582 + 390868, 7, "Reference buffer frame ID mismatch");
        v74 = (a2 + 16);
      }
    }
  }

  while (v382 != 7);
  v160 = v2568;
  if ((v2568[502] & 1) != 0 || !v2546)
  {
    a3.n128_f64[0] = setup_frame_size_0(v2568, v2546, a2);
    v164 = v2581;
    v165 = v2547;
    v419 = *(a2 + 16);
    v420 = *a2;
    v421 = *(a2 + 8);
    v422 = (a2 + 16);
    if ((v2568[494] & 1) == 0)
    {
      goto LABEL_872;
    }

    goto LABEL_668;
  }

  v414 = *(a2 + 16);
  v415 = (*a2 + (v414 >> 3));
  v165 = v2547;
  if (v415 >= *(a2 + 8))
  {
    v424 = *(a2 + 32);
    if (v424)
    {
      v424(*(a2 + 24));
LABEL_671:
      v74 = (a2 + 16);
    }

LABEL_672:
    v425 = *(a2 + 16);
    v426 = (*a2 + (v425 >> 3));
    if (v426 >= *(a2 + 8))
    {
      v429 = *(a2 + 32);
      if (!v429)
      {
        goto LABEL_680;
      }

      v429(*(a2 + 24));
    }

    else
    {
      v427 = *v426;
      *v74 = v425 + 1;
      if (((v427 >> (~v425 & 7)) & 1) == 0)
      {
        goto LABEL_680;
      }

      v428 = *(v162 + 15444);
      if (v428 != -1)
      {
        v418 = *(&v2562->__sig + v428);
        if (v418)
        {
          goto LABEL_706;
        }
      }

      aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
    }

    v74 = (a2 + 16);
LABEL_680:
    v430 = *(a2 + 16);
    v431 = (*a2 + (v430 >> 3));
    if (v431 >= *(a2 + 8))
    {
      v434 = *(a2 + 32);
      if (v434)
      {
        v434(*(a2 + 24));
LABEL_687:
        v74 = (a2 + 16);
      }
    }

    else
    {
      v432 = *v431;
      *v74 = v430 + 1;
      if ((v432 >> (~v430 & 7)))
      {
        v433 = *(v162 + 15448);
        if (v433 != -1)
        {
          v418 = *(&v2562->__sig + v433);
          if (v418)
          {
            goto LABEL_706;
          }
        }

        aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
        goto LABEL_687;
      }
    }

    v435 = *(a2 + 16);
    v436 = (*a2 + (v435 >> 3));
    if (v436 >= *(a2 + 8))
    {
      v439 = *(a2 + 32);
      if (v439)
      {
        v439(*(a2 + 24));
      }
    }

    else
    {
      v437 = *v436;
      *v74 = v435 + 1;
      if ((v437 >> (~v435 & 7)))
      {
        v438 = *(v162 + 15452);
        if (v438 != -1)
        {
          v418 = *(&v2562->__sig + v438);
          if (v418)
          {
            goto LABEL_706;
          }
        }

        aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
      }
    }

    if (aom_rb_read_bit(a2))
    {
      v440 = *(v162 + 15456);
      if (v440 != -1)
      {
        v418 = *(&v2562->__sig + v440);
        if (v418)
        {
          goto LABEL_706;
        }
      }

      aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
    }

    if (aom_rb_read_bit(a2))
    {
      v441 = *(v162 + 15460);
      if (v441 != -1)
      {
        v418 = *(&v2562->__sig + v441);
        if (v418)
        {
          goto LABEL_706;
        }
      }

      aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
    }

    if (aom_rb_read_bit(a2))
    {
      v442 = *(v162 + 15464);
      if (v442 != -1)
      {
        v418 = *(&v2562->__sig + v442);
        if (v418)
        {
          goto LABEL_706;
        }
      }

      aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
    }

    v457 = *(v2581 + 1560);
    v458 = v457[1];
    v459 = v162;
    v444 = aom_rb_read_literal(a2, *v457) + 1;
    v445 = aom_rb_read_literal(a2, v458) + 1;
    *(v459 + 15272) = v444;
    *(v459 + 15276) = v445;
    if (*(*(v2581 + 1560) + 66))
    {
      if (aom_rb_read_bit(a2))
      {
        v460 = aom_rb_read_literal(a2, 3) + 9;
        v461 = v460;
        v462 = v2568;
        v2568[80] = v460;
        if (v460 != 8)
        {
          if (v444 >= 16)
          {
            v463 = 16;
          }

          else
          {
            v463 = v444;
          }

          v464 = (8 * v444 + (v461 >> 1)) / v461;
          if (v464 <= v463)
          {
            v444 = v463;
          }

          else
          {
            v444 = v464;
          }
        }
      }

      else
      {
        v462 = v2568;
        v2568[80] = 8;
      }
    }

    else
    {
      v462 = v2568;
    }

    resize_context_buffers_0(v462, v444, v445);
    *(v2582 + 15264) = *(v2582 + 15272);
    if (aom_rb_read_bit(a2))
    {
      *(v2582 + 15264) = aom_rb_read_literal(a2, 16) + 1;
      *(v2582 + 15268) = aom_rb_read_literal(a2, 16) + 1;
    }

    goto LABEL_747;
  }

  v416 = *v415;
  *v74 = v414 + 1;
  if (((v416 >> (~v414 & 7)) & 1) == 0)
  {
    goto LABEL_672;
  }

  v417 = *v383;
  if (v417 == -1 || (v418 = *(&v2562->__sig + v417)) == 0)
  {
    aom_internal_error(*(v162 + 15248), 7, "Invalid condition: invalid reference buffer");
    goto LABEL_671;
  }

LABEL_706:
  v443 = v162;
  v444 = *(v418 + 1264);
  v445 = *(v418 + 1272);
  *(v443 + 15264) = *(v418 + 1412);
  *(v443 + 15272) = v444;
  *(v443 + 15276) = v445;
  if (*(*(v2581 + 1560) + 66))
  {
    v446 = *(a2 + 16);
    v447 = *a2;
    v448 = *(a2 + 8);
    v449 = (*a2 + (v446 >> 3));
    if (v449 >= v448)
    {
      v456 = *(a2 + 32);
      if (v456)
      {
        v456(*(a2 + 24));
      }
    }

    else
    {
      v450 = *v449;
      v451 = v446 + 1;
      *v2583 = v446 + 1;
      if ((v450 >> (~v446 & 7)))
      {
        v452 = (v447 + (v451 >> 3));
        if (v452 >= v448)
        {
          v465 = *(a2 + 32);
          if (v465)
          {
            v465(*(a2 + 24));
            v455 = 0;
            v451 = *(a2 + 16);
            v447 = *a2;
            v448 = *(a2 + 8);
          }

          else
          {
            v455 = 0;
          }

          v454 = (a2 + 16);
        }

        else
        {
          v453 = *v452 >> (~v451 & 7);
          v451 = v446 + 2;
          v454 = (a2 + 16);
          *v2583 = v446 + 2;
          v455 = 4 * (v453 & 1);
        }

        v466 = (v447 + (v451 >> 3));
        if (v466 >= v448)
        {
          v466 = *(a2 + 32);
          if (v466)
          {
            v466(*(a2 + 24));
            v454 = (a2 + 16);
            LODWORD(v466) = 0;
            v451 = *(a2 + 16);
            v447 = *a2;
            v448 = *(a2 + 8);
          }
        }

        else
        {
          v467 = *v466 >> (~v451++ & 7);
          *v454 = v451;
          LODWORD(v466) = 2 * (v467 & 1);
        }

        v468 = v466 | v455;
        v469 = (v447 + (v451 >> 3));
        if (v469 >= v448)
        {
          v469 = *(a2 + 32);
          if (v469)
          {
            v469(*(a2 + 24));
            LODWORD(v469) = 0;
          }
        }

        else
        {
          LODWORD(v469) = (*v469 >> (~v451 & 7)) & 1;
          *v454 = v451 + 1;
        }

        v470 = (v469 | v468) + 9;
        v160 = v2568;
        v2568[80] = v470;
        if (v444 >= 16)
        {
          v471 = 16;
        }

        else
        {
          v471 = v444;
        }

        v472 = (8 * v444 + (v470 >> 1)) / v470;
        if (v472 <= v471)
        {
          v444 = v471;
        }

        else
        {
          v444 = v472;
        }

        goto LABEL_746;
      }
    }

    v2568[80] = 8;
  }

LABEL_746:
  resize_context_buffers_0(v160, v444, v445);
  v457 = *(v2581 + 1560);
LABEL_747:
  if (v444 < 1 || v445 <= 0)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Invalid frame size");
  }

  v474 = 2 * v444;
  v475 = 2 * v445;
  v476 = *(&v2562->__sig + *(v2582 + 15440));
  v477 = *(v476 + 1264);
  v478 = *(v476 + 1272);
  v479 = *(&v2562->__sig + *(v2582 + 15444));
  v480 = *(v479 + 1264);
  v481 = *(v479 + 1272);
  v482 = 2 * v444 < v480 || v475 < v481;
  v483 = 16 * v480;
  v484 = !v482 && v444 <= v483;
  v485 = 16 * v481;
  v487 = v484 && v445 <= v485;
  v488 = *(&v2562->__sig + *(v2582 + 15448));
  v489 = *(v488 + 1264);
  v490 = *(v488 + 1272);
  v491 = v474 < v489 || v475 < v490;
  v492 = 16 * v489;
  v493 = !v491 && v444 <= v492;
  v494 = 16 * v490;
  v496 = v493 && v445 <= v494;
  v497 = *(&v2562->__sig + *(v2582 + 15452));
  v498 = *(v497 + 1264);
  v499 = *(v497 + 1272);
  v500 = v474 < v498 || v475 < v499;
  v501 = 16 * v498;
  v502 = !v500 && v444 <= v501;
  v503 = 16 * v499;
  v505 = v502 && v445 <= v503;
  v506 = *(&v2562->__sig + *(v2582 + 15456));
  v507 = *(v506 + 1264);
  v508 = *(v506 + 1272);
  v509 = v474 < v507 || v475 < v508;
  v510 = 16 * v507;
  v511 = !v509 && v444 <= v510;
  v512 = 16 * v508;
  v514 = v511 && v445 <= v512;
  v515 = *(&v2562->__sig + *(v2582 + 15460));
  v516 = *(v515 + 1264);
  v517 = *(v515 + 1272);
  v518 = v474 < v516 || v475 < v517;
  v519 = 16 * v516;
  v520 = !v518 && v444 <= v519;
  v521 = 16 * v517;
  v523 = v520 && v445 <= v521;
  v524 = *(&v2562->__sig + *(v2582 + 15464));
  v525 = *(v524 + 1264);
  v526 = *(v524 + 1272);
  v527 = v474 < v525 || v475 < v526;
  v528 = 16 * v525;
  v529 = !v527 && v444 <= v528;
  v530 = 16 * v526;
  v532 = v529 && v445 <= v530;
  v533 = 16 * v478 < v445 || 16 * v477 < v444;
  v162 = v2582;
  v535 = v533 || v475 < v478 || v474 < v477;
  if (v535 && (v487 & 1) == 0 && (v496 & 1) == 0 && (v505 & 1) == 0 && (v514 & 1) == 0 && (v523 & 1) == 0 && (v532 & 1) == 0)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has invalid size");
  }

  v536 = *(&v2562->__sig + *v383);
  v537 = v536[346];
  v164 = v2581;
  if (v537 != v457[18] || (v538 = v536[344], v538 != v457[24]) || (v539 = v536[345], v539 != v457[25]))
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
    v537 = v457[18];
    v538 = v457[24];
    v539 = v457[25];
  }

  v540 = *(&v2562->__sig + *(v2582 + 15444));
  if (v540[346] != v537 || v540[344] != v538 || v540[345] != v539)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
    v537 = v457[18];
    v538 = v457[24];
    v539 = v457[25];
  }

  v541 = *(&v2562->__sig + *(v2582 + 15448));
  if (v541[346] != v537 || v541[344] != v538 || v541[345] != v539)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
    v537 = v457[18];
    v538 = v457[24];
    v539 = v457[25];
  }

  v542 = *(&v2562->__sig + *(v2582 + 15452));
  if (v542[346] != v537 || v542[344] != v538 || v542[345] != v539)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
    v537 = v457[18];
    v538 = v457[24];
    v539 = v457[25];
  }

  v543 = *(&v2562->__sig + *(v2582 + 15456));
  if (v543[346] != v537 || v543[344] != v538 || v543[345] != v539)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
    v537 = v457[18];
    v538 = v457[24];
    v539 = v457[25];
  }

  v544 = *(&v2562->__sig + *(v2582 + 15460));
  if (v544[346] != v537 || v544[344] != v538 || v544[345] != v539)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
    v537 = v457[18];
    v538 = v457[24];
    v539 = v457[25];
  }

  v545 = *(&v2562->__sig + *(v2582 + 15464));
  if (v545[346] != v537 || v545[344] != v538 || v545[345] != v539)
  {
    aom_internal_error(*(v2582 + 15248), 7, "Referenced frame has incompatible color format");
  }

  v160 = v2568;
  a3.n128_f64[0] = setup_buffer_pool(v2568);
  v419 = *(a2 + 16);
  v420 = *a2;
  v421 = *(a2 + 8);
  v422 = (a2 + 16);
  if (v2568[494])
  {
LABEL_668:
    LOBYTE(v423) = 0;
    goto LABEL_876;
  }

LABEL_872:
  v423 = (v420 + (v419 >> 3));
  if (v423 >= v421)
  {
    v423 = *(a2 + 32);
    if (v423)
    {
      v423(*(a2 + 24), a3);
      v422 = (a2 + 16);
      LOBYTE(v423) = 0;
      LODWORD(v419) = *(a2 + 16);
      v420 = *a2;
      v421 = *(a2 + 8);
    }
  }

  else
  {
    LODWORD(v423) = *v423 >> (~v419 & 7);
    LODWORD(v419) = v419 + 1;
    *v422 = v419;
    LOBYTE(v423) = v423 & 1;
  }

LABEL_876:
  v160[493] = v423;
  v546 = (v420 + (v419 >> 3));
  if (v546 >= v421)
  {
    v550 = *(a2 + 32);
    if (v550)
    {
      v550(*(a2 + 24), a3);
      v422 = (a2 + 16);
      LODWORD(v419) = *(a2 + 16);
      v420 = *a2;
      v421 = *(a2 + 8);
    }

LABEL_883:
    v551 = (v420 + (v419 >> 3));
    if (v551 >= v421)
    {
      v555 = *(a2 + 32);
      if (v555)
      {
        v555(*(a2 + 24), a3);
        v422 = (a2 + 16);
        v553 = 0;
        LODWORD(v419) = *(a2 + 16);
        v420 = *a2;
        v421 = *(a2 + 8);
        v554 = (*a2 + (v419 >> 3));
        if (v554 < v421)
        {
          goto LABEL_885;
        }
      }

      else
      {
        v553 = 0;
        v554 = (v420 + (v419 >> 3));
        if (v554 < v421)
        {
          goto LABEL_885;
        }
      }
    }

    else
    {
      v552 = *v551 >> (~v419 & 7);
      LODWORD(v419) = v419 + 1;
      *v422 = v419;
      v553 = 2 * (v552 & 1);
      v554 = (v420 + (v419 >> 3));
      if (v554 < v421)
      {
LABEL_885:
        LODWORD(v554) = (*v554 >> (~v419 & 7)) & 1;
        LODWORD(v419) = v419 + 1;
        *v422 = v419;
        goto LABEL_890;
      }
    }

    v554 = *(a2 + 32);
    if (v554)
    {
      v554(*(a2 + 24));
      v422 = (a2 + 16);
      LOBYTE(v554) = 0;
      LODWORD(v419) = *(a2 + 16);
      v420 = *a2;
      v421 = *(a2 + 8);
    }

LABEL_890:
    v556 = v554 | v553;
    v160 = v2568;
    v2568[505] = v556;
    v549 = (v420 + (v419 >> 3));
    if (v549 >= v421)
    {
      goto LABEL_879;
    }

    goto LABEL_891;
  }

  v547 = ~v419 & 7;
  v548 = *v546;
  LODWORD(v419) = v419 + 1;
  *v422 = v419;
  if (((v548 >> v547) & 1) == 0)
  {
    goto LABEL_883;
  }

  v160[505] = 4;
  v549 = (v420 + (v419 >> 3));
  if (v549 < v421)
  {
LABEL_891:
    v557 = *v549 >> (~v419 & 7);
    *v422 = v419 + 1;
    LOBYTE(v419) = v557 & 1;
    goto LABEL_892;
  }

LABEL_879:
  v419 = *(a2 + 32);
  if (v419)
  {
    (v419)(*(a2 + 24), a3);
    LOBYTE(v419) = 0;
  }

LABEL_892:
  v160[503] = v419;
LABEL_893:
  v558 = *(v162 + 15708);
  if (v558 == 7 || (v558 & 0xF8) != 0)
  {
    *(v162 + 15424) = 0;
    if (v558 != 7)
    {
      goto LABEL_901;
    }
  }

  else
  {
    v559 = *(v162 + 4 * (v558 & 7) + 15440);
    if (v559 == -1)
    {
      *(v162 + 15424) = 0;
      goto LABEL_901;
    }

    v560 = *(v162 + 8 * v559 + 15616);
    *(v162 + 15424) = v560;
    if (!v560)
    {
LABEL_901:
      aom_internal_error(v162 + 390868, 7, "Reference frame containing this frame's initial frame context is unavailable.", a3.n128_f64[0]);
    }
  }

  v561 = *v160;
  if (v561 != 2 && v2556[4] != 1)
  {
    if ((v2568[502] & 1) != 0 || (v562 = *(v164 + 1560), !*(v562 + 52)))
    {
      bit = 0;
    }

    else
    {
      bit = 0;
      if ((v561 & 0xFFFFFFFD) != 0 && *(v562 + 40))
      {
        bit = aom_rb_read_bit(a2);
      }
    }

    v2568[498] = bit;
    v564 = v162 + 15616;
    v565 = v162;
    v566 = v162 + 15488;
    v567 = v565[3860];
    v568 = *(v564 + 8 * v567);
    v569 = v566 + 16 * v567;
    v570 = *(v568 + 1264);
    v571 = *(v568 + 1272);
    v572 = v565[3814];
    v573 = v565[3815];
    v574 = 2 * v572;
    v575 = 2 * v573;
    if (2 * v572 < v570 || v575 < v571 || 16 * v570 < v572 || 16 * v571 < v573)
    {
      *v569 = -1;
    }

    else
    {
      v579 = (v572 / 2 + (v570 << 14)) / v572;
      v580 = (v573 / 2 + (v571 << 14)) / v573;
      *(v569 + 8) = (v579 + 8) >> 4;
      *(v569 + 12) = (v580 + 8) >> 4;
      *v569 = v579;
      *(v569 + 4) = v580;
      v581 = v579 == -1 || v580 == -1;
      if (!v581)
      {
        v586 = *(v2582 + 15444);
        v583 = *(v564 + 8 * v586);
        v584 = v566 + 16 * v586;
        v585 = *(v583 + 1264);
        if (v574 >= v585)
        {
          goto LABEL_930;
        }

        goto LABEL_936;
      }
    }

    aom_internal_error(v2582 + 390868, 5, "Reference frame has invalid dimensions");
    v572 = *(v2582 + 15256);
    v573 = *(v2582 + 15260);
    v574 = 2 * v572;
    v575 = 2 * v573;
    v582 = *(v2582 + 15444);
    v583 = *(v564 + 8 * v582);
    v584 = v566 + 16 * v582;
    v585 = *(v583 + 1264);
    if (2 * v572 < v585)
    {
      goto LABEL_936;
    }

LABEL_930:
    v587 = *(v583 + 1272);
    if (v575 < v587 || 16 * v585 < v572 || 16 * v587 < v573)
    {
LABEL_936:
      *v584 = -1;
      goto LABEL_937;
    }

    v588 = (v572 / 2 + (v585 << 14)) / v572;
    v589 = (v573 / 2 + (v587 << 14)) / v573;
    *(v584 + 8) = (v588 + 8) >> 4;
    *(v584 + 12) = (v589 + 8) >> 4;
    *v584 = v588;
    *(v584 + 4) = v589;
    if (v588 == -1 || v589 == -1)
    {
LABEL_937:
      aom_internal_error(v2582 + 390868, 5, "Reference frame has invalid dimensions");
      v572 = *(v2582 + 15256);
      v573 = *(v2582 + 15260);
      v574 = 2 * v572;
      v575 = 2 * v573;
    }

    v590 = *(v2582 + 15448);
    v591 = *(v564 + 8 * v590);
    v592 = v566 + 16 * v590;
    v593 = *(v591 + 1264);
    if (v574 < v593 || (v594 = *(v591 + 1272), v575 < v594) || 16 * v593 < v572 || 16 * v594 < v573)
    {
      *v592 = -1;
      goto LABEL_946;
    }

    v595 = (v572 / 2 + (v593 << 14)) / v572;
    v596 = (v573 / 2 + (v594 << 14)) / v573;
    *(v592 + 8) = (v595 + 8) >> 4;
    *(v592 + 12) = (v596 + 8) >> 4;
    *v592 = v595;
    *(v592 + 4) = v596;
    if (v595 == -1 || v596 == -1)
    {
LABEL_946:
      aom_internal_error(v2582 + 390868, 5, "Reference frame has invalid dimensions");
      v572 = *(v2582 + 15256);
      v573 = *(v2582 + 15260);
      v574 = 2 * v572;
      v575 = 2 * v573;
    }

    v597 = *(v2582 + 15452);
    v598 = *(v564 + 8 * v597);
    v599 = v566 + 16 * v597;
    v600 = *(v598 + 1264);
    if (v574 < v600 || (v601 = *(v598 + 1272), v575 < v601) || 16 * v600 < v572 || 16 * v601 < v573)
    {
      *v599 = -1;
      goto LABEL_955;
    }

    v602 = (v572 / 2 + (v600 << 14)) / v572;
    v603 = (v573 / 2 + (v601 << 14)) / v573;
    *(v599 + 8) = (v602 + 8) >> 4;
    *(v599 + 12) = (v603 + 8) >> 4;
    *v599 = v602;
    *(v599 + 4) = v603;
    if (v602 == -1 || v603 == -1)
    {
LABEL_955:
      aom_internal_error(v2582 + 390868, 5, "Reference frame has invalid dimensions");
      v572 = *(v2582 + 15256);
      v573 = *(v2582 + 15260);
      v574 = 2 * v572;
      v575 = 2 * v573;
    }

    v604 = *(v2582 + 15456);
    v605 = *(v564 + 8 * v604);
    v606 = v566 + 16 * v604;
    v607 = *(v605 + 1264);
    if (v574 < v607 || (v608 = *(v605 + 1272), v575 < v608) || 16 * v607 < v572 || 16 * v608 < v573)
    {
      *v606 = -1;
      goto LABEL_964;
    }

    v609 = (v572 / 2 + (v607 << 14)) / v572;
    v610 = (v573 / 2 + (v608 << 14)) / v573;
    *(v606 + 8) = (v609 + 8) >> 4;
    *(v606 + 12) = (v610 + 8) >> 4;
    *v606 = v609;
    *(v606 + 4) = v610;
    if (v609 == -1 || v610 == -1)
    {
LABEL_964:
      aom_internal_error(v2582 + 390868, 5, "Reference frame has invalid dimensions");
      v572 = *(v2582 + 15256);
      v573 = *(v2582 + 15260);
      v574 = 2 * v572;
      v575 = 2 * v573;
    }

    v611 = *(v2582 + 15460);
    v612 = *(v564 + 8 * v611);
    v613 = v566 + 16 * v611;
    v614 = *(v612 + 1264);
    if (v574 < v614 || (v615 = *(v612 + 1272), v575 < v615) || 16 * v614 < v572 || 16 * v615 < v573)
    {
      *v613 = -1;
      goto LABEL_973;
    }

    v616 = (v572 / 2 + (v614 << 14)) / v572;
    v617 = (v573 / 2 + (v615 << 14)) / v573;
    *(v613 + 8) = (v616 + 8) >> 4;
    *(v613 + 12) = (v617 + 8) >> 4;
    *v613 = v616;
    *(v613 + 4) = v617;
    if (v616 == -1 || v617 == -1)
    {
LABEL_973:
      aom_internal_error(v2582 + 390868, 5, "Reference frame has invalid dimensions");
      v572 = *(v2582 + 15256);
      v573 = *(v2582 + 15260);
      v574 = 2 * v572;
      v575 = 2 * v573;
    }

    v618 = *(v2582 + 15464);
    v619 = *(v564 + 8 * v618);
    v620 = v566 + 16 * v618;
    v621 = *(v619 + 1264);
    if (v574 < v621 || (v622 = *(v619 + 1272), v575 < v622) || 16 * v621 < v572 || 16 * v622 < v573)
    {
      *v620 = -1;
      v162 = v2582;
      goto LABEL_982;
    }

    v623 = (v572 / 2 + (v621 << 14)) / v572;
    v624 = (v573 / 2 + (v622 << 14)) / v573;
    *(v620 + 8) = (v623 + 8) >> 4;
    *(v620 + 12) = (v624 + 8) >> 4;
    *v620 = v623;
    *(v620 + 4) = v624;
    v162 = v2582;
    if (v623 == -1 || v624 == -1)
    {
LABEL_982:
      aom_internal_error(v162 + 390868, 5, "Reference frame has invalid dimensions");
    }
  }

LABEL_983:
  av1_setup_frame_buf_refs(v2568);
  av1_setup_frame_sign_bias(v2568);
  v625 = *(v162 + 15432);
  *(v625 + 1448) = *v2568;
  v626 = *(v162 + 15236);
  if (v626)
  {
    *(v164 + 2244) = *(v164 + 2240);
    v165[4] = 1;
    v627 = v2580;
    if ((v626 & 2) != 0)
    {
      goto LABEL_994;
    }

LABEL_985:
    v628 = (a2 + 16);
    if ((v626 & 4) == 0)
    {
      goto LABEL_986;
    }

LABEL_995:
    *(v164 + 2252) = *(v164 + 2240);
    v165[6] = 1;
    if ((v626 & 8) != 0)
    {
      goto LABEL_996;
    }

LABEL_987:
    if ((v626 & 0x10) == 0)
    {
      goto LABEL_988;
    }

LABEL_997:
    *(v164 + 2260) = *(v164 + 2240);
    v165[8] = 1;
    if ((v626 & 0x20) != 0)
    {
      goto LABEL_998;
    }

LABEL_989:
    if ((v626 & 0x40) == 0)
    {
      goto LABEL_990;
    }

LABEL_999:
    *(v164 + 2268) = *(v164 + 2240);
    v165[10] = 1;
    if ((v626 & 0x80) != 0)
    {
      goto LABEL_1000;
    }

LABEL_991:
    if (*(v2570 + 58))
    {
      goto LABEL_1002;
    }

LABEL_1001:
    if (v2568[492])
    {
      goto LABEL_1002;
    }

    v706 = *(a2 + 16);
    v707 = (*a2 + (v706 >> 3));
    if (v707 >= *(a2 + 8))
    {
      v872 = *(a2 + 32);
      if (v872)
      {
        v872(*(a2 + 24));
        v625 = *(v162 + 15432);
      }

      v629 = 1;
    }

    else
    {
      v708 = *v707 >> (~v706 & 7);
      *v628 = v706 + 1;
      v629 = (v708 & 1) == 0;
    }
  }

  else
  {
    v627 = v2580;
    if ((v626 & 2) == 0)
    {
      goto LABEL_985;
    }

LABEL_994:
    *(v164 + 2248) = *(v164 + 2240);
    v165[5] = 1;
    v628 = (a2 + 16);
    if ((v626 & 4) != 0)
    {
      goto LABEL_995;
    }

LABEL_986:
    if ((v626 & 8) == 0)
    {
      goto LABEL_987;
    }

LABEL_996:
    *(v164 + 2256) = *(v164 + 2240);
    v165[7] = 1;
    if ((v626 & 0x10) != 0)
    {
      goto LABEL_997;
    }

LABEL_988:
    if ((v626 & 0x20) == 0)
    {
      goto LABEL_989;
    }

LABEL_998:
    *(v164 + 2264) = *(v164 + 2240);
    v165[9] = 1;
    if ((v626 & 0x40) != 0)
    {
      goto LABEL_999;
    }

LABEL_990:
    if ((v626 & 0x80) == 0)
    {
      goto LABEL_991;
    }

LABEL_1000:
    *(v164 + 2272) = *(v164 + 2240);
    v165[11] = 1;
    if (!*(v2570 + 58))
    {
      goto LABEL_1001;
    }

LABEL_1002:
    v629 = 0;
  }

  v2568[516] = v629;
  *(v625 + 1384) = *(v2570 + 72);
  *(v625 + 1388) = *(v2570 + 80);
  v630 = *(v2570 + 92);
  *(v625 + 1396) = *(v2570 + 88);
  *(v625 + 1400) = *(v2570 + 77);
  *(v625 + 1404) = *(v2570 + 104);
  *(v625 + 1408) = v630;
  *(v625 + 1412) = *(v162 + 15264);
  if (v2556[4])
  {
    aom_internal_error(v162 + 390868, 7, "Keyframe / intra-only frame required to reset decoder state");
  }

  if (v2568[496] == 1)
  {
    *(v627 + 506) = 0;
    *(v164 + 584) = 0;
    *(v164 + 452) = 1;
    *(v164 + 520) = 0;
    *(v627 + 1020) = 0;
    *v164 = 0;
    *(v164 + 64) = 0;
  }

  v631 = *(v164 + 1560);
  v632 = *(v631 + 36);
  v633 = -1;
  v634 = ~(-1 << v632);
  v635 = *(v162 + 15732) + v634;
  v636 = (*(v162 + 15736) + v634) >> v632;
  v637 = v632 + 2;
  v638 = 0x1000u >> (v632 + 2);
  *(v164 + 1592) = v638;
  do
  {
    ++v633;
  }

  while ((v638 << v633) < v636);
  v639 = v635 >> v632;
  *(v164 + 1624) = v633;
  if (v636 >= 64)
  {
    v640 = 64;
  }

  else
  {
    v640 = v636;
  }

  v641 = -1;
  do
  {
    ++v641;
  }

  while (1 << v641 < v640);
  v642 = (v164 + 1584);
  *(v164 + 1632) = v641;
  if (v639 >= 64)
  {
    v643 = 64;
  }

  else
  {
    v643 = v639;
  }

  v644 = -1;
  do
  {
    ++v644;
  }

  while (1 << v644 < v643);
  v645 = 0x900000u >> (2 * v637);
  *(v164 + 1636) = v644;
  v646 = -1;
  do
  {
    ++v646;
  }

  while ((v645 << v646) < v636 * v639);
  if (v646 <= v633)
  {
    v647 = v633;
  }

  else
  {
    v647 = v646;
  }

  *(v164 + 1640) = v647;
  v648 = *(a2 + 16);
  v649 = *a2;
  v650 = *(a2 + 8);
  v651 = (*a2 + (v648 >> 3));
  v2549 = v631;
  v2553 = (v164 + 1584);
  if (v651 >= v650)
  {
    v658 = *(a2 + 32);
    if (v658)
    {
      v658(*(a2 + 24));
    }

    v2559 = (v164 + 1604);
    *(v164 + 1604) = 0;
    goto LABEL_1035;
  }

  v652 = *v651 >> (~v648 & 7);
  v653 = v648 + 1;
  *v2583 = v653;
  v2559 = (v164 + 1604);
  *(v164 + 1604) = v652 & 1;
  if ((v652 & 1) == 0)
  {
LABEL_1035:
    v659 = (a2 + 16);
    if (v636 < 1)
    {
      v677 = 0;
      v661 = 0;
    }

    else
    {
      v660 = 0;
      v661 = 0;
      v2563 = (v162 + 39964);
      do
      {
        v662 = 0;
        v663 = *(v2581 + 1592);
        if (v636 >= v663)
        {
          v664 = *(v2581 + 1592);
        }

        else
        {
          v664 = v636;
        }

        v665 = __clz(v664) ^ 0x1F;
        if (v663)
        {
          v666 = v665 + 1;
        }

        else
        {
          v666 = 0;
        }

        if (v666 >= 2)
        {
          v662 = 0;
          for (m = v666; m > 1; --m)
          {
            while (1)
            {
              v669 = *(a2 + 16);
              v670 = (*a2 + (v669 >> 3));
              if (v670 >= *(a2 + 8))
              {
                break;
              }

              v668 = (*v670 >> (~v669 & 7)) & 1;
              *v659 = v669 + 1;
              v662 |= v668 << (m-- - 2);
              if (m <= 1)
              {
                goto LABEL_1050;
              }
            }

            v671 = *(a2 + 32);
            if (v671)
            {
              v671(*(a2 + 24));
              v659 = (a2 + 16);
            }
          }
        }

LABEL_1050:
        v672 = (1 << v666) - v664;
        if (v662 >= v672)
        {
          v673 = *(a2 + 16);
          v674 = (*a2 + (v673 >> 3));
          if (v674 >= *(a2 + 8))
          {
            v676 = *(a2 + 32);
            if (v676)
            {
              v676(*(a2 + 24));
              v659 = (a2 + 16);
            }

            v675 = 0;
          }

          else
          {
            v675 = (*v674 >> (~v673 & 7)) & 1;
            *v659 = v673 + 1;
          }

          v662 = 2 * v662 - v672 + v675;
        }

        *(&v2563->__sig + v660) = v661;
        v661 += v662 + 1;
        v636 -= v662 + 1;
        v677 = v660 + 1;
        if (v636 < 1)
        {
          break;
        }

        v678 = v660++ >= 0x3F;
      }

      while (!v678);
      v162 = v2582;
      v165 = v2547;
    }

    v631 = v2549;
    v642 = v2553;
    *v2553 = v677;
    *(v162 + 4 * v677 + 39964) = v636 + v661;
    v164 = v2581;
    goto LABEL_1063;
  }

  *(v164 + 1608) = v633;
  if (v633 >= v641)
  {
LABEL_1063:
    v654 = v2559;
    goto LABEL_1064;
  }

  v654 = (v164 + 1604);
  while (1)
  {
    v655 = (v649 + (v653 >> 3));
    if (v655 >= v650)
    {
      break;
    }

    v656 = ~v653 & 7;
    v657 = *v655;
    *v2583 = ++v653;
    if ((v657 >> v656))
    {
      *(v164 + 1608) = ++v633;
      if (v633 < v641)
      {
        continue;
      }
    }

    goto LABEL_1064;
  }

  v936 = *(a2 + 32);
  if (v936)
  {
    v936(*(a2 + 24));
  }

LABEL_1064:
  av1_calculate_tile_cols(v631, *(v162 + 15732), *(v162 + 15736), v642);
  if (*v654)
  {
    v679 = *(v164 + 1628);
    *(v164 + 1612) = v679;
    v680 = *(v164 + 1636);
    if (v679 < v680)
    {
      v681 = *a2;
      v682 = *(a2 + 8);
      v683 = *(a2 + 16);
      while (1)
      {
        v684 = (v681 + (v683 >> 3));
        if (v684 >= v682)
        {
          break;
        }

        v685 = ~v683 & 7;
        v686 = *v684;
        *v2583 = ++v683;
        if ((v686 >> v685))
        {
          *(v164 + 1612) = ++v679;
          if (v679 < v680)
          {
            continue;
          }
        }

        goto LABEL_1101;
      }

      v871 = *(a2 + 32);
      if (v871)
      {
        v871(*(a2 + 24));
      }
    }
  }

  else
  {
    if (v639 < 1)
    {
      v705 = 0;
      v688 = 0;
    }

    else
    {
      v687 = 0;
      v688 = 0;
      v689 = (a2 + 16);
      do
      {
        v690 = 0;
        v691 = *(v2581 + 1596);
        if (v639 >= v691)
        {
          v692 = *(v2581 + 1596);
        }

        else
        {
          v692 = v639;
        }

        v693 = __clz(v692) ^ 0x1F;
        if (v691)
        {
          v694 = v693 + 1;
        }

        else
        {
          v694 = 0;
        }

        if (v694 >= 2)
        {
          v690 = 0;
          for (n = v694; n > 1; --n)
          {
            while (1)
            {
              v697 = *(a2 + 16);
              v698 = (*a2 + (v697 >> 3));
              if (v698 >= *(a2 + 8))
              {
                break;
              }

              v696 = (*v698 >> (~v697 & 7)) & 1;
              *v689 = v697 + 1;
              v690 |= v696 << (n-- - 2);
              if (n <= 1)
              {
                goto LABEL_1086;
              }
            }

            v699 = *(a2 + 32);
            if (v699)
            {
              v699(*(a2 + 24));
              v689 = (a2 + 16);
            }
          }
        }

LABEL_1086:
        v700 = (1 << v694) - v692;
        if (v690 >= v700)
        {
          v701 = *(a2 + 16);
          v702 = (*a2 + (v701 >> 3));
          if (v702 >= *(a2 + 8))
          {
            v704 = *(a2 + 32);
            if (v704)
            {
              v704(*(a2 + 24));
              v689 = (a2 + 16);
            }

            v703 = 0;
          }

          else
          {
            v703 = (*v702 >> (~v701 & 7)) & 1;
            *v689 = v701 + 1;
          }

          v690 = 2 * v690 - v700 + v703;
        }

        *(v162 + 40224 + 4 * v687) = v688;
        v688 += v690 + 1;
        v639 -= v690 + 1;
        v705 = v687 + 1;
        if (v639 < 1)
        {
          break;
        }

        v678 = v687++ >= 0x3F;
      }

      while (!v678);
      v164 = v2581;
      v162 = v2582;
      v165 = v2547;
      v631 = v2549;
      v642 = v2553;
    }

    *(v164 + 1588) = v705;
    *(v162 + 4 * v705 + 40224) = v688 + v639;
  }

LABEL_1101:
  if (*(v164 + 1604))
  {
    v709 = *(v162 + 15732);
    v710 = (v709 + (1 << *(v631 + 36)) - 1) >> *(v631 + 36);
    v711 = *(v164 + 1612);
    v712 = (v710 + (1 << v711) - 1) >> v711;
    if (v710 < 1)
    {
      LODWORD(v715) = 0;
    }

    else
    {
      if (v712 <= v710)
      {
        v713 = (v709 + (1 << *(v631 + 36)) - 1) >> *(v631 + 36);
      }

      else
      {
        v713 = (v710 + (1 << v711) - 1) >> v711;
      }

      v714 = (v713 - 1) / v712;
      if (v714 < 7)
      {
        v715 = 0;
        v716 = 0;
        goto LABEL_1116;
      }

      v721 = v714 + 1;
      v715 = (v714 + 1) & 0x1FFFFFFF8;
      v716 = v712 * v715;
      v722 = vmulq_s32(vdupq_n_s32(v712), xmmword_273B90830);
      v723 = vdupq_n_s32(4 * v712);
      v724 = (v162 + 40240);
      v725 = v715;
      do
      {
        v726 = vaddq_s32(v722, v723);
        v724[-1] = v722;
        *v724 = v726;
        v722 = vaddq_s32(v726, v723);
        v724 += 2;
        v725 -= 8;
      }

      while (v725);
      if (v721 != v715)
      {
        do
        {
LABEL_1116:
          *(v162 + 40224 + 4 * v715) = v716;
          v716 += v712;
          ++v715;
        }

        while (v716 < v710);
      }
    }

    *(v162 + 4 * v715 + 40224) = v710;
    *(v164 + 1588) = v715;
    if ((v712 << *(v631 + 36)) < v709)
    {
      v709 = v712 << *(v631 + 36);
    }

    *(v164 + 1620) = v709;
    v718 = (a2 + 16);
    *v165 = 0;
    v719 = *(v164 + 1584);
    v720 = v719 * v715;
    if ((v719 * v715) >= 2)
    {
LABEL_1120:
      v727 = *(v164 + 1608);
      if (v727 + v711 < 1)
      {
        *v165 = 0;
        if (v720 <= 0)
        {
          goto LABEL_1128;
        }
      }

      else
      {
        v728 = 0;
        v729 = v711 + v727 + 1;
        do
        {
          while (1)
          {
            v731 = *(a2 + 16);
            v732 = (*a2 + (v731 >> 3));
            if (v732 >= *(a2 + 8))
            {
              break;
            }

            v730 = (*v732 >> (~v731 & 7)) & 1;
            *v718 = v731 + 1;
            v728 |= v730 << (v729-- - 2);
            if (v729 <= 1)
            {
              goto LABEL_1127;
            }
          }

          v733 = *(a2 + 32);
          if (v733)
          {
            v733(*(a2 + 24));
            v718 = (a2 + 16);
          }

          --v729;
        }

        while (v729 > 1);
LABEL_1127:
        v734 = *(v164 + 1584) * *(v164 + 1588);
        v162 = v2582;
        *v165 = v728;
        if (v728 >= v734)
        {
LABEL_1128:
          aom_internal_error(v162 + 390868, 7, "Invalid context_update_tile_id");
          v718 = (a2 + 16);
        }
      }

      v735 = *(a2 + 16);
      v736 = *a2;
      v737 = *(a2 + 8);
      v738 = (*a2 + (v735 >> 3));
      if (v738 >= v737)
      {
        v743 = *(a2 + 32);
        if (v743)
        {
          v743(*(a2 + 24));
          v718 = (a2 + 16);
          v740 = 0;
          LODWORD(v735) = *(a2 + 16);
          v741 = (*a2 + (v735 >> 3));
          if (v741 >= *(a2 + 8))
          {
            goto LABEL_1134;
          }
        }

        else
        {
          v740 = 0;
          v741 = (v736 + (v735 >> 3));
          if (v741 >= v737)
          {
            goto LABEL_1134;
          }
        }

LABEL_1131:
        v742 = (*v741 >> (~v735 & 7)) & 1;
        *v718 = v735 + 1;
      }

      else
      {
        v739 = *v738 >> (~v735 & 7);
        LODWORD(v735) = v735 + 1;
        *v718 = v735;
        v740 = 2 * (v739 & 1);
        v741 = (v736 + (v735 >> 3));
        if (v741 < v737)
        {
          goto LABEL_1131;
        }

LABEL_1134:
        v744 = *(a2 + 32);
        if (v744)
        {
          v744(*(a2 + 24));
          v718 = (a2 + 16);
        }

        v742 = 0;
      }

      v2556[6] = (v742 | v740) + 1;
      v719 = *v642;
    }
  }

  else
  {
    v717 = *(v164 + 1588);
    v711 = -1;
    v718 = (a2 + 16);
    do
    {
      ++v711;
    }

    while (1 << v711 < v717);
    *(v164 + 1612) = v711;
    *v165 = 0;
    v719 = *(v164 + 1584);
    v720 = v719 * v717;
    if ((v719 * v717) >= 2)
    {
      goto LABEL_1120;
    }
  }

  if (v719 != 1 && 64 << (*(v162 + 15256) != *(v162 + 15272)) > 4 * *(v164 + 1600))
  {
    aom_internal_error(v162 + 390868, 7, "Minimum tile width requirement not satisfied");
    v718 = (a2 + 16);
  }

  v745 = *(v164 + 1560);
  v746 = *(v745 + 77);
  v747 = *(v745 + 108);
  v748 = *(a2 + 16);
  v749 = *a2;
  v750 = *(a2 + 8);
  v751 = (*a2 + (v748 >> 3));
  if (v751 >= v750)
  {
    v756 = *(a2 + 32);
    if (v756)
    {
      v756(*(a2 + 24));
      v718 = (a2 + 16);
      v753 = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
      v754 = (*a2 + (v748 >> 3));
      if (v754 >= v750)
      {
        goto LABEL_1146;
      }
    }

    else
    {
      v753 = 0;
      v754 = (v749 + (v748 >> 3));
      if (v754 >= v750)
      {
        goto LABEL_1146;
      }
    }

LABEL_1143:
    v755 = *v754 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    LODWORD(v754) = (v755 & 1) << 6;
  }

  else
  {
    v752 = *v751 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    v753 = (v752 & 1) << 7;
    v754 = (v749 + (v748 >> 3));
    if (v754 < v750)
    {
      goto LABEL_1143;
    }

LABEL_1146:
    v754 = *(a2 + 32);
    if (v754)
    {
      v754(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v754) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  v757 = v754 | v753;
  v758 = (v749 + (v748 >> 3));
  if (v758 >= v750)
  {
    v758 = *(a2 + 32);
    if (v758)
    {
      v758(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v758) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v759 = *v758 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    LODWORD(v758) = 32 * (v759 & 1);
  }

  v760 = v758 | v757;
  v761 = (v749 + (v748 >> 3));
  if (v761 >= v750)
  {
    v761 = *(a2 + 32);
    if (v761)
    {
      v761(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v761) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v762 = *v761 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    LODWORD(v761) = 16 * (v762 & 1);
  }

  v763 = v761 | v760;
  v764 = (v749 + (v748 >> 3));
  if (v764 >= v750)
  {
    v764 = *(a2 + 32);
    if (v764)
    {
      v764(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v764) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v765 = *v764 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    LODWORD(v764) = 8 * (v765 & 1);
  }

  v766 = v764 | v763;
  v767 = (v749 + (v748 >> 3));
  if (v767 >= v750)
  {
    v767 = *(a2 + 32);
    if (v767)
    {
      v767(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v767) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v768 = *v767 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    LODWORD(v767) = 4 * (v768 & 1);
  }

  v769 = v767 | v766;
  v770 = (v749 + (v748 >> 3));
  if (v770 >= v750)
  {
    v770 = *(a2 + 32);
    if (v770)
    {
      v770(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v770) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v771 = *v770 >> (~v748 & 7);
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
    LODWORD(v770) = 2 * (v771 & 1);
  }

  v772 = v770 | v769;
  v773 = (v749 + (v748 >> 3));
  if (v773 >= v750)
  {
    v773 = *(a2 + 32);
    if (v773)
    {
      v773(*(a2 + 24));
      v718 = (a2 + 16);
      LODWORD(v773) = 0;
      LODWORD(v748) = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    LODWORD(v773) = (*v773 >> (~v748 & 7)) & 1;
    LODWORD(v748) = v748 + 1;
    *v718 = v748;
  }

  *(v2582 + 15816) = v773 | v772;
  v774 = (v749 + (v748 >> 3));
  if (v774 >= v750)
  {
    v791 = *(a2 + 32);
    v778 = v2580;
    if (v791)
    {
      v791(*(a2 + 24));
      v792 = v2582;
      *(v2582 + 15820) = 0;
      if (!v746)
      {
        goto LABEL_1183;
      }

      goto LABEL_1194;
    }

LABEL_1193:
    v792 = v2582;
    *(v2582 + 15820) = v791;
    if (!v746)
    {
      goto LABEL_1183;
    }

LABEL_1194:
    *(v792 + 15824) = 0u;
    v803 = *(a2 + 16);
    v804 = *a2;
    v805 = *(a2 + 8);
    v806 = (*a2 + (v803 >> 3));
    if (v806 >= v805)
    {
      goto LABEL_1435;
    }

    goto LABEL_1195;
  }

  v775 = v718;
  v776 = *v774;
  v777 = v748 + 1;
  *v775 = v748 + 1;
  v778 = v2580;
  if (((v776 >> (~v748 & 7)) & 1) == 0)
  {
    LODWORD(v791) = 0;
    goto LABEL_1193;
  }

  v779 = (v749 + (v777 >> 3));
  if (v779 >= v750)
  {
    v815 = *(a2 + 32);
    if (v815)
    {
      v815(*(a2 + 24));
      v782 = 0;
      v777 = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
      v781 = (a2 + 16);
      v783 = (*a2 + (v777 >> 3));
      if (v783 >= v750)
      {
        goto LABEL_1201;
      }
    }

    else
    {
      v782 = 0;
      v781 = (a2 + 16);
      v783 = (v749 + (v777 >> 3));
      if (v783 >= v750)
      {
        goto LABEL_1201;
      }
    }

LABEL_1176:
    v784 = *v783 >> (~v777++ & 7);
    *v781 = v777;
    v785 = (32 * (v784 & 1)) | v782;
    v786 = (v749 + (v777 >> 3));
    if (v786 >= v750)
    {
      goto LABEL_1177;
    }

LABEL_1204:
    v817 = *v786 >> (~v777++ & 7);
    *v781 = v777;
    v788 = (16 * (v817 & 1)) | v785;
    v789 = (v749 + (v777 >> 3));
    if (v789 >= v750)
    {
      goto LABEL_1205;
    }

LABEL_1180:
    v790 = *v789 >> (~v777++ & 7);
    *v781 = v777;
    LODWORD(v789) = 8 * (v790 & 1);
  }

  else
  {
    v780 = *v779 >> (~v777 & 7);
    v777 = v748 + 2;
    v781 = (a2 + 16);
    *v2583 = v748 + 2;
    v782 = (v780 & 1) << 6;
    v783 = (v749 + ((v748 + 2) >> 3));
    if (v783 < v750)
    {
      goto LABEL_1176;
    }

LABEL_1201:
    v816 = *(a2 + 32);
    if (v816)
    {
      v816(*(a2 + 24));
      v781 = (a2 + 16);
      LODWORD(v816) = 0;
      v777 = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }

    v785 = v816 | v782;
    v786 = (v749 + (v777 >> 3));
    if (v786 < v750)
    {
      goto LABEL_1204;
    }

LABEL_1177:
    v787 = *(a2 + 32);
    if (v787)
    {
      v787(*(a2 + 24));
      v781 = (a2 + 16);
      LODWORD(v787) = 0;
      v777 = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }

    v788 = v787 | v785;
    v789 = (v749 + (v777 >> 3));
    if (v789 < v750)
    {
      goto LABEL_1180;
    }

LABEL_1205:
    v789 = *(a2 + 32);
    if (v789)
    {
      v789(*(a2 + 24));
      v781 = (a2 + 16);
      LODWORD(v789) = 0;
      v777 = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  v818 = v789 | v788;
  v819 = (v749 + (v777 >> 3));
  if (v819 >= v750)
  {
    v819 = *(a2 + 32);
    if (v819)
    {
      v819(*(a2 + 24));
      v781 = (a2 + 16);
      LODWORD(v819) = 0;
      v777 = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v820 = *v819 >> (~v777++ & 7);
    *v781 = v777;
    LODWORD(v819) = 4 * (v820 & 1);
  }

  v821 = v819 | v818;
  v822 = (v749 + (v777 >> 3));
  if (v822 >= v750)
  {
    v822 = *(a2 + 32);
    if (v822)
    {
      v822(*(a2 + 24));
      v781 = (a2 + 16);
      LODWORD(v822) = 0;
      v777 = *(a2 + 16);
      v749 = *a2;
      v750 = *(a2 + 8);
    }
  }

  else
  {
    v823 = *v822 >> (~v777++ & 7);
    *v781 = v777;
    LODWORD(v822) = 2 * (v823 & 1);
  }

  v824 = v822 | v821;
  v825 = (v749 + (v777 >> 3));
  if (v825 >= v750)
  {
    v825 = *(a2 + 32);
    if (v825)
    {
      v825(*(a2 + 24));
      LODWORD(v825) = 0;
    }
  }

  else
  {
    LODWORD(v825) = (*v825 >> (~v777 & 7)) & 1;
    *v781 = v777 + 1;
  }

  v826 = ((v825 | v824) << 25) >> 25;
  v778 = v2580;
  v792 = v2582;
  *(v2582 + 15820) = v826;
  if (v746)
  {
    goto LABEL_1194;
  }

LABEL_1183:
  v793 = *(a2 + 16);
  v794 = *a2;
  v795 = *(a2 + 8);
  v796 = (a2 + 16);
  if (!v747)
  {
    goto LABEL_1256;
  }

  v797 = (v794 + (v793 >> 3));
  if (v797 >= v795)
  {
    v856 = *(a2 + 32);
    if (v856)
    {
      v856(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v793) = *(a2 + 16);
      v800 = 1;
      v794 = *a2;
      v795 = *(a2 + 8);
      v801 = (*a2 + (v793 >> 3));
      if (v801 >= v795)
      {
        goto LABEL_1186;
      }

      goto LABEL_1257;
    }

LABEL_1256:
    v800 = 1;
    v801 = (v794 + (v793 >> 3));
    if (v801 >= v795)
    {
      goto LABEL_1186;
    }

    goto LABEL_1257;
  }

  v798 = ~v793 & 7;
  v799 = *v797;
  LODWORD(v793) = v793 + 1;
  *v2583 = v793;
  v800 = ((v799 >> v798) & 1) == 0;
  v801 = (v794 + (v793 >> 3));
  if (v801 >= v795)
  {
LABEL_1186:
    v802 = *(a2 + 32);
    if (v802)
    {
      v802(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v802) = 0;
    }

    goto LABEL_1310;
  }

LABEL_1257:
  v857 = v796;
  v858 = *v801;
  v859 = v793 + 1;
  *v857 = v793 + 1;
  if (((v858 >> (~v793 & 7)) & 1) == 0)
  {
    LODWORD(v802) = 0;
    v796 = (a2 + 16);
    goto LABEL_1310;
  }

  v860 = (v794 + (v859 >> 3));
  if (v860 >= v795)
  {
    v881 = *(a2 + 32);
    if (v881)
    {
      v881(*(a2 + 24));
      v862 = 0;
      v859 = *(a2 + 16);
      v794 = *a2;
      v795 = *(a2 + 8);
      v796 = (a2 + 16);
      v863 = (*a2 + (v859 >> 3));
      if (v863 >= v795)
      {
        goto LABEL_1291;
      }
    }

    else
    {
      v862 = 0;
      v796 = (a2 + 16);
      v863 = (v794 + (v859 >> 3));
      if (v863 >= v795)
      {
        goto LABEL_1291;
      }
    }

LABEL_1260:
    v864 = *v863 >> (~v859++ & 7);
    *v796 = v859;
    v865 = (32 * (v864 & 1)) | v862;
    v866 = (v794 + (v859 >> 3));
    if (v866 >= v795)
    {
      goto LABEL_1261;
    }

LABEL_1294:
    v883 = *v866 >> (~v859++ & 7);
    *v796 = v859;
    v868 = (16 * (v883 & 1)) | v865;
    v869 = (v794 + (v859 >> 3));
    if (v869 >= v795)
    {
      goto LABEL_1295;
    }

LABEL_1264:
    v870 = *v869 >> (~v859++ & 7);
    *v796 = v859;
    LODWORD(v869) = 8 * (v870 & 1);
  }

  else
  {
    v861 = *v860 >> (~v859 & 7);
    v859 = v793 + 2;
    v796 = (a2 + 16);
    *v2583 = v793 + 2;
    v862 = (v861 & 1) << 6;
    v863 = (v794 + ((v793 + 2) >> 3));
    if (v863 < v795)
    {
      goto LABEL_1260;
    }

LABEL_1291:
    v882 = *(a2 + 32);
    if (v882)
    {
      v882(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v882) = 0;
      v859 = *(a2 + 16);
      v794 = *a2;
      v795 = *(a2 + 8);
    }

    v865 = v882 | v862;
    v866 = (v794 + (v859 >> 3));
    if (v866 < v795)
    {
      goto LABEL_1294;
    }

LABEL_1261:
    v867 = *(a2 + 32);
    if (v867)
    {
      v867(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v867) = 0;
      v859 = *(a2 + 16);
      v794 = *a2;
      v795 = *(a2 + 8);
    }

    v868 = v867 | v865;
    v869 = (v794 + (v859 >> 3));
    if (v869 < v795)
    {
      goto LABEL_1264;
    }

LABEL_1295:
    v869 = *(a2 + 32);
    if (v869)
    {
      v869(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v869) = 0;
      v859 = *(a2 + 16);
      v794 = *a2;
      v795 = *(a2 + 8);
    }
  }

  v884 = v869 | v868;
  v885 = (v794 + (v859 >> 3));
  if (v885 >= v795)
  {
    v885 = *(a2 + 32);
    if (v885)
    {
      v885(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v885) = 0;
      v859 = *(a2 + 16);
      v794 = *a2;
      v795 = *(a2 + 8);
    }
  }

  else
  {
    v886 = *v885 >> (~v859++ & 7);
    *v796 = v859;
    LODWORD(v885) = 4 * (v886 & 1);
  }

  v887 = v885 | v884;
  v888 = (v794 + (v859 >> 3));
  if (v888 >= v795)
  {
    v888 = *(a2 + 32);
    if (v888)
    {
      v888(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v888) = 0;
      v859 = *(a2 + 16);
      v794 = *a2;
      v795 = *(a2 + 8);
    }
  }

  else
  {
    v889 = *v888 >> (~v859++ & 7);
    *v796 = v859;
    LODWORD(v888) = 2 * (v889 & 1);
  }

  v890 = v888 | v887;
  v802 = (v794 + (v859 >> 3));
  if (v802 >= v795)
  {
    v802 = *(a2 + 32);
    if (v802)
    {
      v802(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v802) = 0;
    }
  }

  else
  {
    LODWORD(v802) = (*v802 >> (~v859 & 7)) & 1;
    *v796 = v859 + 1;
  }

  LODWORD(v802) = ((v802 | v890) << 25) >> 25;
  v778 = v2580;
LABEL_1310:
  *(v2582 + 15824) = v802;
  v891 = *(a2 + 16);
  v892 = *a2;
  v893 = *(a2 + 8);
  v894 = (*a2 + (v891 >> 3));
  if (v894 >= v893)
  {
    v909 = *(a2 + 32);
    if (v909)
    {
      v909(*(a2 + 24));
      v910 = v2582;
      v796 = (a2 + 16);
      LODWORD(v909) = 0;
      *(v2582 + 15832) = 0;
      if (!v800)
      {
        goto LABEL_1321;
      }

      goto LABEL_1331;
    }

    goto LABEL_1330;
  }

  v895 = v796;
  v896 = *v894;
  v897 = v891 + 1;
  *v895 = v891 + 1;
  if (((v896 >> (~v891 & 7)) & 1) == 0)
  {
    LODWORD(v909) = 0;
    v796 = (a2 + 16);
LABEL_1330:
    v910 = v2582;
    *(v2582 + 15832) = v909;
    if (!v800)
    {
      goto LABEL_1321;
    }

    goto LABEL_1331;
  }

  v898 = (v892 + (v897 >> 3));
  if (v898 >= v893)
  {
    v923 = *(a2 + 32);
    if (v923)
    {
      v923(*(a2 + 24));
      v900 = 0;
      v897 = *(a2 + 16);
      v892 = *a2;
      v893 = *(a2 + 8);
      v796 = (a2 + 16);
      v901 = (*a2 + (v897 >> 3));
      if (v901 >= v893)
      {
        goto LABEL_1335;
      }
    }

    else
    {
      v900 = 0;
      v796 = (a2 + 16);
      v901 = (v892 + (v897 >> 3));
      if (v901 >= v893)
      {
        goto LABEL_1335;
      }
    }

LABEL_1314:
    v902 = *v901 >> (~v897++ & 7);
    *v796 = v897;
    v903 = (32 * (v902 & 1)) | v900;
    v904 = (v892 + (v897 >> 3));
    if (v904 >= v893)
    {
      goto LABEL_1315;
    }

LABEL_1338:
    v925 = *v904 >> (~v897++ & 7);
    *v796 = v897;
    v906 = (16 * (v925 & 1)) | v903;
    v907 = (v892 + (v897 >> 3));
    if (v907 >= v893)
    {
      goto LABEL_1339;
    }

LABEL_1318:
    v908 = *v907 >> (~v897++ & 7);
    *v796 = v897;
    LODWORD(v907) = 8 * (v908 & 1);
  }

  else
  {
    v899 = *v898 >> (~v897 & 7);
    v897 = v891 + 2;
    v796 = (a2 + 16);
    *v2583 = v891 + 2;
    v900 = (v899 & 1) << 6;
    v901 = (v892 + ((v891 + 2) >> 3));
    if (v901 < v893)
    {
      goto LABEL_1314;
    }

LABEL_1335:
    v924 = *(a2 + 32);
    if (v924)
    {
      v924(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v924) = 0;
      v897 = *(a2 + 16);
      v892 = *a2;
      v893 = *(a2 + 8);
    }

    v903 = v924 | v900;
    v904 = (v892 + (v897 >> 3));
    if (v904 < v893)
    {
      goto LABEL_1338;
    }

LABEL_1315:
    v905 = *(a2 + 32);
    if (v905)
    {
      v905(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v905) = 0;
      v897 = *(a2 + 16);
      v892 = *a2;
      v893 = *(a2 + 8);
    }

    v906 = v905 | v903;
    v907 = (v892 + (v897 >> 3));
    if (v907 < v893)
    {
      goto LABEL_1318;
    }

LABEL_1339:
    v907 = *(a2 + 32);
    if (v907)
    {
      v907(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v907) = 0;
      v897 = *(a2 + 16);
      v892 = *a2;
      v893 = *(a2 + 8);
    }
  }

  v926 = v907 | v906;
  v927 = (v892 + (v897 >> 3));
  if (v927 >= v893)
  {
    v927 = *(a2 + 32);
    if (v927)
    {
      v927(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v927) = 0;
      v897 = *(a2 + 16);
      v892 = *a2;
      v893 = *(a2 + 8);
    }
  }

  else
  {
    v928 = *v927 >> (~v897++ & 7);
    *v796 = v897;
    LODWORD(v927) = 4 * (v928 & 1);
  }

  v929 = v927 | v926;
  v930 = (v892 + (v897 >> 3));
  if (v930 >= v893)
  {
    v930 = *(a2 + 32);
    if (v930)
    {
      v930(*(a2 + 24));
      v796 = (a2 + 16);
      LODWORD(v930) = 0;
      v897 = *(a2 + 16);
      v892 = *a2;
      v893 = *(a2 + 8);
    }
  }

  else
  {
    v931 = *v930 >> (~v897++ & 7);
    *v796 = v897;
    LODWORD(v930) = 2 * (v931 & 1);
  }

  v932 = v930 | v929;
  v933 = (v892 + (v897 >> 3));
  if (v933 >= v893)
  {
    v935 = *(a2 + 32);
    if (v935)
    {
      v935(*(a2 + 24));
      v796 = (a2 + 16);
    }

    LODWORD(v909) = (v932 << 25) >> 25;
    v778 = v2580;
    v910 = v2582;
    *(v2582 + 15832) = v909;
    if (v800)
    {
      goto LABEL_1331;
    }

LABEL_1321:
    v911 = *(a2 + 16);
    v912 = *a2;
    v913 = *(a2 + 8);
    v914 = (*a2 + (v911 >> 3));
    if (v914 >= v913)
    {
      v922 = *(a2 + 32);
      if (v922)
      {
        v922(*(a2 + 24));
        v796 = (a2 + 16);
        LODWORD(v922) = 0;
      }

LABEL_1398:
      *(v2582 + 15828) = v922;
      v955 = *(a2 + 16);
      v956 = *a2;
      v957 = *(a2 + 8);
      v958 = (*a2 + (v955 >> 3));
      if (v958 >= v957)
      {
        v967 = *(a2 + 32);
        if (!v967)
        {
          goto LABEL_1434;
        }

        v967(*(a2 + 24));
      }

      else
      {
        v959 = v796;
        v960 = *v958;
        v961 = v955 + 1;
        *v959 = v955 + 1;
        if ((v960 >> (~v955 & 7)))
        {
          v962 = (v956 + (v961 >> 3));
          if (v962 >= v957)
          {
            v968 = *(a2 + 32);
            if (v968)
            {
              v968(*(a2 + 24));
              v965 = 0;
              v961 = *(a2 + 16);
              v956 = *a2;
              v957 = *(a2 + 8);
            }

            else
            {
              v965 = 0;
            }

            v964 = (a2 + 16);
            v966 = (v956 + (v961 >> 3));
            if (v966 >= v957)
            {
LABEL_1402:
              v966 = *(a2 + 32);
              if (v966)
              {
                v966(*(a2 + 24));
                v964 = (a2 + 16);
                LODWORD(v966) = 0;
                v961 = *(a2 + 16);
                v956 = *a2;
                v957 = *(a2 + 8);
              }

              goto LABEL_1412;
            }
          }

          else
          {
            v963 = *v962 >> (~v961 & 7);
            v961 = v955 + 2;
            v964 = (a2 + 16);
            *v2583 = v955 + 2;
            v965 = (v963 & 1) << 6;
            v966 = (v956 + ((v955 + 2) >> 3));
            if (v966 >= v957)
            {
              goto LABEL_1402;
            }
          }

          v969 = *v966 >> (~v961++ & 7);
          *v964 = v961;
          LODWORD(v966) = 32 * (v969 & 1);
LABEL_1412:
          v970 = v966 | v965;
          v971 = (v956 + (v961 >> 3));
          if (v971 >= v957)
          {
            v971 = *(a2 + 32);
            if (v971)
            {
              v971(*(a2 + 24));
              v964 = (a2 + 16);
              LODWORD(v971) = 0;
              v961 = *(a2 + 16);
              v956 = *a2;
              v957 = *(a2 + 8);
            }
          }

          else
          {
            v972 = *v971 >> (~v961++ & 7);
            *v964 = v961;
            LODWORD(v971) = 16 * (v972 & 1);
          }

          v973 = v971 | v970;
          v974 = (v956 + (v961 >> 3));
          if (v974 >= v957)
          {
            v974 = *(a2 + 32);
            if (v974)
            {
              v974(*(a2 + 24));
              v964 = (a2 + 16);
              LODWORD(v974) = 0;
              v961 = *(a2 + 16);
              v956 = *a2;
              v957 = *(a2 + 8);
            }
          }

          else
          {
            v975 = *v974 >> (~v961++ & 7);
            *v964 = v961;
            LODWORD(v974) = 8 * (v975 & 1);
          }

          v976 = v974 | v973;
          v977 = (v956 + (v961 >> 3));
          if (v977 >= v957)
          {
            v977 = *(a2 + 32);
            if (v977)
            {
              v977(*(a2 + 24));
              v964 = (a2 + 16);
              LODWORD(v977) = 0;
              v961 = *(a2 + 16);
              v956 = *a2;
              v957 = *(a2 + 8);
            }
          }

          else
          {
            v978 = *v977 >> (~v961++ & 7);
            *v964 = v961;
            LODWORD(v977) = 4 * (v978 & 1);
          }

          v979 = v977 | v976;
          v980 = (v956 + (v961 >> 3));
          if (v980 >= v957)
          {
            v980 = *(a2 + 32);
            if (v980)
            {
              v980(*(a2 + 24));
              v964 = (a2 + 16);
              LODWORD(v980) = 0;
              v961 = *(a2 + 16);
              v956 = *a2;
              v957 = *(a2 + 8);
            }
          }

          else
          {
            v981 = *v980 >> (~v961++ & 7);
            *v964 = v961;
            LODWORD(v980) = 2 * (v981 & 1);
          }

          v982 = v980 | v979;
          v983 = (v956 + (v961 >> 3));
          if (v983 >= v957)
          {
            v985 = *(a2 + 32);
            if (v985)
            {
              v985(*(a2 + 24));
            }

            v984 = 0;
          }

          else
          {
            v984 = (*v983 >> (~v961 & 7)) & 1;
            *v964 = v961 + 1;
          }

          LODWORD(v967) = ((v984 | v982) << 25) >> 25;
          v778 = v2580;
LABEL_1434:
          *(v2582 + 15836) = v967;
          v803 = *(a2 + 16);
          v804 = *a2;
          v805 = *(a2 + 8);
          v806 = (*a2 + (v803 >> 3));
          if (v806 >= v805)
          {
            goto LABEL_1435;
          }

LABEL_1195:
          v807 = *v806 >> (~v803 & 7);
          v808 = v803 + 1;
          *v2583 = v803 + 1;
          *v778 = v807 & 1;
          v809 = (a2 + 16);
          if ((v807 & 1) == 0)
          {
            goto LABEL_1438;
          }

          v810 = (v804 + (v808 >> 3));
          if (v810 >= v805)
          {
            v827 = *(a2 + 32);
            if (v827)
            {
              v827(*(a2 + 24));
              v809 = (a2 + 16);
              v812 = 0;
              v808 = *(a2 + 16);
              v804 = *a2;
              v805 = *(a2 + 8);
              v813 = (*a2 + (v808 >> 3));
              if (v813 < v805)
              {
                goto LABEL_1198;
              }
            }

            else
            {
              v812 = 0;
              v813 = (v804 + (v808 >> 3));
              if (v813 < v805)
              {
                goto LABEL_1198;
              }
            }
          }

          else
          {
            v809 = (a2 + 16);
            v811 = *v810 >> (~v808 & 7);
            v808 = v803 + 2;
            *v2583 = v803 + 2;
            v812 = 8 * (v811 & 1);
            v813 = (v804 + ((v803 + 2) >> 3));
            if (v813 < v805)
            {
LABEL_1198:
              v814 = *v813 >> (~v808++ & 7);
              *v809 = v808;
              LODWORD(v813) = 4 * (v814 & 1);
              goto LABEL_1225;
            }
          }

          v813 = *(a2 + 32);
          if (v813)
          {
            v813(*(a2 + 24));
            v809 = (a2 + 16);
            LODWORD(v813) = 0;
            v808 = *(a2 + 16);
            v804 = *a2;
            v805 = *(a2 + 8);
          }

LABEL_1225:
          v828 = v813 | v812;
          v829 = (v804 + (v808 >> 3));
          if (v829 >= v805)
          {
            v829 = *(a2 + 32);
            if (v829)
            {
              v829(*(a2 + 24));
              v809 = (a2 + 16);
              LODWORD(v829) = 0;
              v808 = *(a2 + 16);
              v804 = *a2;
              v805 = *(a2 + 8);
            }
          }

          else
          {
            v830 = *v829 >> (~v808++ & 7);
            *v809 = v808;
            LODWORD(v829) = 2 * (v830 & 1);
          }

          v831 = v829 | v828;
          v832 = (v804 + (v808 >> 3));
          if (v832 >= v805)
          {
            v832 = *(a2 + 32);
            if (v832)
            {
              v832(*(a2 + 24));
              v809 = (a2 + 16);
              LODWORD(v832) = 0;
              v808 = *(a2 + 16);
              v804 = *a2;
              v805 = *(a2 + 8);
            }
          }

          else
          {
            LODWORD(v832) = (*v832 >> (~v808++ & 7)) & 1;
            *v809 = v808;
          }

          *(v2580 + 1) = v832 | v831;
          v833 = (v804 + (v808 >> 3));
          if (v833 >= v805)
          {
            v838 = *(a2 + 32);
            if (v838)
            {
              v838(*(a2 + 24));
              v809 = (a2 + 16);
              v835 = 0;
              v808 = *(a2 + 16);
              v804 = *a2;
              v805 = *(a2 + 8);
              v836 = (*a2 + (v808 >> 3));
              if (v836 < v805)
              {
                goto LABEL_1235;
              }
            }

            else
            {
              v835 = 0;
              v836 = (v804 + (v808 >> 3));
              if (v836 < v805)
              {
                goto LABEL_1235;
              }
            }
          }

          else
          {
            v834 = *v833 >> (~v808++ & 7);
            *v809 = v808;
            v835 = 8 * (v834 & 1);
            v836 = (v804 + (v808 >> 3));
            if (v836 < v805)
            {
LABEL_1235:
              v837 = *v836 >> (~v808++ & 7);
              *v809 = v808;
              LODWORD(v836) = 4 * (v837 & 1);
              goto LABEL_1240;
            }
          }

          v836 = *(a2 + 32);
          if (v836)
          {
            v836(*(a2 + 24));
            v809 = (a2 + 16);
            LODWORD(v836) = 0;
            v808 = *(a2 + 16);
            v804 = *a2;
            v805 = *(a2 + 8);
          }

LABEL_1240:
          v839 = v836 | v835;
          v840 = (v804 + (v808 >> 3));
          if (v840 >= v805)
          {
            v840 = *(a2 + 32);
            if (v840)
            {
              v840(*(a2 + 24));
              v809 = (a2 + 16);
              LODWORD(v840) = 0;
              v808 = *(a2 + 16);
              v804 = *a2;
              v805 = *(a2 + 8);
            }
          }

          else
          {
            v841 = *v840 >> (~v808++ & 7);
            *v809 = v808;
            LODWORD(v840) = 2 * (v841 & 1);
          }

          v842 = v840 | v839;
          v843 = (v804 + (v808 >> 3));
          if (v843 >= v805)
          {
            v846 = *(a2 + 32);
            if (v846)
            {
              v846(*(a2 + 24));
              v809 = (a2 + 16);
            }

            v845 = v842;
            v778 = v2580;
            *(v2580 + 2) = v845;
            if (!v747)
            {
              goto LABEL_1439;
            }
          }

          else
          {
            v844 = (*v843 >> (~v808 & 7)) & 1;
            *v809 = v808 + 1;
            v845 = v844 | v842;
            v778 = v2580;
            *(v2580 + 2) = v845;
            if (!v747)
            {
              goto LABEL_1439;
            }
          }

          v847 = *(a2 + 16);
          v848 = *a2;
          v849 = *(a2 + 8);
          v850 = (*a2 + (v847 >> 3));
          if (v850 >= v849)
          {
            v873 = *(a2 + 32);
            if (v873)
            {
              v873(*(a2 + 24));
              v809 = (a2 + 16);
              v852 = 0;
              LODWORD(v847) = *(a2 + 16);
              v848 = *a2;
              v849 = *(a2 + 8);
              v853 = (*a2 + (v847 >> 3));
              if (v853 < v849)
              {
                goto LABEL_1252;
              }
            }

            else
            {
              v852 = 0;
              v853 = (v848 + (v847 >> 3));
              if (v853 < v849)
              {
                goto LABEL_1252;
              }
            }
          }

          else
          {
            v851 = *v850 >> (~v847 & 7);
            LODWORD(v847) = v847 + 1;
            *v809 = v847;
            v852 = 8 * (v851 & 1);
            v853 = (v848 + (v847 >> 3));
            if (v853 < v849)
            {
LABEL_1252:
              v854 = *v853 >> (~v847 & 7);
              LODWORD(v847) = v847 + 1;
              *v809 = v847;
              LODWORD(v853) = 4 * (v854 & 1);
              v855 = v2582;
LABEL_1276:
              v874 = v853 | v852;
              v875 = (v848 + (v847 >> 3));
              if (v875 >= v849)
              {
                v875 = *(a2 + 32);
                if (v875)
                {
                  v875(*(a2 + 24));
                  v809 = (a2 + 16);
                  LODWORD(v875) = 0;
                  LODWORD(v847) = *(a2 + 16);
                  v848 = *a2;
                  v849 = *(a2 + 8);
                }
              }

              else
              {
                v876 = *v875 >> (~v847 & 7);
                LODWORD(v847) = v847 + 1;
                *v809 = v847;
                LODWORD(v875) = 2 * (v876 & 1);
              }

              v877 = v875 | v874;
              v878 = (v848 + (v847 >> 3));
              if (v878 >= v849)
              {
                v880 = *(a2 + 32);
                if (v880)
                {
                  v880(*(a2 + 24));
                }

                v879 = 0;
              }

              else
              {
                v879 = (*v878 >> (~v847 & 7)) & 1;
                *v809 = v847 + 1;
              }

              v845 = v879 | v877;
              v778 = v2580;
              goto LABEL_1440;
            }
          }

          v853 = *(a2 + 32);
          v855 = v2582;
          if (v853)
          {
            v853(*(a2 + 24));
            v809 = (a2 + 16);
            LODWORD(v853) = 0;
            LODWORD(v847) = *(a2 + 16);
            v848 = *a2;
            v849 = *(a2 + 8);
          }

          goto LABEL_1276;
        }
      }

      LODWORD(v967) = 0;
      goto LABEL_1434;
    }

    v915 = v796;
    v916 = *v914;
    v917 = v911 + 1;
    *v915 = v911 + 1;
    if (((v916 >> (~v911 & 7)) & 1) == 0)
    {
      LODWORD(v922) = 0;
      v796 = (a2 + 16);
      goto LABEL_1398;
    }

    v918 = (v912 + (v917 >> 3));
    if (v918 >= v913)
    {
      v937 = *(a2 + 32);
      if (v937)
      {
        v937(*(a2 + 24));
        v920 = 0;
        v917 = *(a2 + 16);
        v912 = *a2;
        v913 = *(a2 + 8);
      }

      else
      {
        v920 = 0;
      }

      v796 = (a2 + 16);
      v921 = (v912 + (v917 >> 3));
      if (v921 >= v913)
      {
LABEL_1325:
        v921 = *(a2 + 32);
        if (v921)
        {
          v921(*(a2 + 24));
          v796 = (a2 + 16);
          LODWORD(v921) = 0;
          v917 = *(a2 + 16);
          v912 = *a2;
          v913 = *(a2 + 8);
        }

        goto LABEL_1376;
      }
    }

    else
    {
      v919 = *v918 >> (~v917 & 7);
      v917 = v911 + 2;
      v796 = (a2 + 16);
      *v2583 = v911 + 2;
      v920 = (v919 & 1) << 6;
      v921 = (v912 + ((v911 + 2) >> 3));
      if (v921 >= v913)
      {
        goto LABEL_1325;
      }
    }

    v938 = *v921 >> (~v917++ & 7);
    *v796 = v917;
    LODWORD(v921) = 32 * (v938 & 1);
LABEL_1376:
    v939 = v921 | v920;
    v940 = (v912 + (v917 >> 3));
    if (v940 >= v913)
    {
      v940 = *(a2 + 32);
      if (v940)
      {
        v940(*(a2 + 24));
        v796 = (a2 + 16);
        LODWORD(v940) = 0;
        v917 = *(a2 + 16);
        v912 = *a2;
        v913 = *(a2 + 8);
      }
    }

    else
    {
      v941 = *v940 >> (~v917++ & 7);
      *v796 = v917;
      LODWORD(v940) = 16 * (v941 & 1);
    }

    v942 = v940 | v939;
    v943 = (v912 + (v917 >> 3));
    if (v943 >= v913)
    {
      v943 = *(a2 + 32);
      if (v943)
      {
        v943(*(a2 + 24));
        v796 = (a2 + 16);
        LODWORD(v943) = 0;
        v917 = *(a2 + 16);
        v912 = *a2;
        v913 = *(a2 + 8);
      }
    }

    else
    {
      v944 = *v943 >> (~v917++ & 7);
      *v796 = v917;
      LODWORD(v943) = 8 * (v944 & 1);
    }

    v945 = v943 | v942;
    v946 = (v912 + (v917 >> 3));
    if (v946 >= v913)
    {
      v946 = *(a2 + 32);
      if (v946)
      {
        v946(*(a2 + 24));
        v796 = (a2 + 16);
        LODWORD(v946) = 0;
        v917 = *(a2 + 16);
        v912 = *a2;
        v913 = *(a2 + 8);
      }
    }

    else
    {
      v947 = *v946 >> (~v917++ & 7);
      *v796 = v917;
      LODWORD(v946) = 4 * (v947 & 1);
    }

    v948 = v946 | v945;
    v949 = (v912 + (v917 >> 3));
    if (v949 >= v913)
    {
      v949 = *(a2 + 32);
      if (v949)
      {
        v949(*(a2 + 24));
        v796 = (a2 + 16);
        LODWORD(v949) = 0;
        v917 = *(a2 + 16);
        v912 = *a2;
        v913 = *(a2 + 8);
      }
    }

    else
    {
      v950 = *v949 >> (~v917++ & 7);
      *v796 = v917;
      LODWORD(v949) = 2 * (v950 & 1);
    }

    v951 = v949 | v948;
    v952 = (v912 + (v917 >> 3));
    if (v952 >= v913)
    {
      v954 = *(a2 + 32);
      if (v954)
      {
        v954(*(a2 + 24));
        v796 = (a2 + 16);
      }

      v953 = 0;
    }

    else
    {
      v953 = (*v952 >> (~v917 & 7)) & 1;
      *v796 = v917 + 1;
    }

    LODWORD(v922) = ((v953 | v951) << 25) >> 25;
    v778 = v2580;
    goto LABEL_1398;
  }

  v934 = (*v933 >> (~v897 & 7)) & 1;
  *v796 = v897 + 1;
  LODWORD(v909) = ((v934 | v932) << 25) >> 25;
  v778 = v2580;
  v910 = v2582;
  *(v2582 + 15832) = v909;
  if (!v800)
  {
    goto LABEL_1321;
  }

LABEL_1331:
  v910[3957] = v910[3956];
  v910[3959] = v909;
  v803 = *(a2 + 16);
  v804 = *a2;
  v805 = *(a2 + 8);
  v806 = (*a2 + (v803 >> 3));
  if (v806 < v805)
  {
    goto LABEL_1195;
  }

LABEL_1435:
  v986 = *(a2 + 32);
  if (v986)
  {
    v986(*(a2 + 24));
  }

  *v778 = 0;
LABEL_1438:
  v845 = 0;
  *(v778 + 1) = 0;
  *(v778 + 2) = 0;
LABEL_1439:
  v855 = v2582;
LABEL_1440:
  *(v778 + 3) = v845;
  *(v855 + 10656) = *(v2570 + 72);
  if (*(*(v164 + 1560) + 77))
  {
    v987 = 1;
  }

  else
  {
    v987 = 3;
  }

  if (*(v164 + 2224) < v987 || *(v164 + 2232) < *(v855 + 15736) || *(v164 + 2228) < *(v164 + 1588))
  {
    av1_free_above_context_buffers((v855 + 40504));
    v988 = *(*(v164 + 1560) + 77) ? 1 : 3;
    if (av1_alloc_above_context_buffers((v855 + 40504), *(v164 + 1588), *(v855 + 15736), v988))
    {
      aom_internal_error(v855 + 390868, 2, "Failed to allocate context buffers");
    }
  }

  if (*(v855 + 15708) == 7)
  {
    av1_setup_past_independence(v2568);
  }

  v989 = v2580;
  *(v2580 + 17) = 0;
  v2580[19] = 0;
  v990 = *(a2 + 16);
  v991 = *a2;
  v992 = *(a2 + 8);
  v993 = (*a2 + (v990 >> 3));
  if (v993 >= v992)
  {
    v1003 = *(a2 + 32);
    if (v1003)
    {
      v1003(*(a2 + 24));
    }

    goto LABEL_1465;
  }

  v994 = *v993 >> (~v990 & 7);
  v995 = v990 + 1;
  *v2583 = v990 + 1;
  v2580[16] = v994 & 1;
  if ((v994 & 1) == 0)
  {
LABEL_1465:
    v1004 = *(v855 + 15432);
    v1005 = *(v1004 + 80);
    if (v1005)
    {
      bzero(v1005, *(v1004 + 264) * *(v1004 + 260));
    }

    *(v2580 + 172) = 0u;
    *(v2580 + 9) = 0u;
    *(v2580 + 10) = 0u;
    *(v2580 + 7) = 0u;
    *(v2580 + 8) = 0u;
    *(v2580 + 5) = 0u;
    *(v2580 + 6) = 0u;
    *(v2580 + 3) = 0u;
    *(v2580 + 4) = 0u;
    *(v2580 + 1) = 0u;
    *(v2580 + 2) = 0u;
    goto LABEL_1468;
  }

  v996 = *(v855 + 15424);
  if (!v996)
  {
    goto LABEL_1762;
  }

  if (*(v855 + 15732) != *(v996 + 260))
  {
    v996 = 0;
LABEL_1762:
    *(v2580 + 24) = v996;
    if (*(v855 + 15708) == 7)
    {
      goto LABEL_1763;
    }

    goto LABEL_1459;
  }

  if (*(v855 + 15736) == *(v996 + 264))
  {
    *(v2580 + 24) = *(v996 + 80);
    if (*(v855 + 15708) != 7)
    {
      goto LABEL_1459;
    }

LABEL_1763:
    *(v2580 + 17) = 257;
    v2580[19] = 0;
    v1002 = (a2 + 16);
LABEL_1764:
    v1149 = 0;
    *(v855 + 34292) = 0u;
    *(v855 + 34308) = 0u;
    *(v855 + 34260) = 0u;
    *(v855 + 34276) = 0u;
    *(v855 + 34228) = 0u;
    *(v855 + 34244) = 0u;
    *(v855 + 34196) = 0u;
    *(v855 + 34212) = 0u;
    v2565 = (v855 + 34196);
    v1150 = (v855 + 34324);
    *v1150 = 0u;
    v1150[1] = 0u;
LABEL_1766:
    v1151 = 0;
    v1152 = v2565 + 16 * v1149;
    while (2)
    {
      while (1)
      {
        v1154 = *(a2 + 16);
        v1155 = (*a2 + (v1154 >> 3));
        if (v1155 >= *(a2 + 8))
        {
          break;
        }

        v1156 = *v1155;
        *v1002 = v1154 + 1;
        if (((v1156 >> (~v1154 & 7)) & 1) == 0)
        {
          goto LABEL_1769;
        }

        *(v1150 + v1149) |= 1 << v1151;
        v1157 = seg_feature_data_max[v1151];
        v1158 = __clz(v1157) ^ 0x1F;
        if ((v1151 & 0xFE) == 6)
        {
          v1159 = 0;
        }

        else
        {
          v1159 = v1158 + 1;
        }

        if ((v1151 - 5) >= 3)
        {
          v1161 = 0;
          v1162 = v1159;
          do
          {
            while (1)
            {
              v1165 = *(a2 + 16);
              v1166 = (*a2 + (v1165 >> 3));
              if (v1166 >= *(a2 + 8))
              {
                break;
              }

              v1163 = (*v1166 >> (~v1165 & 7)) & 1;
              *v1002 = v1165 + 1;
              v1161 |= v1163 << v1162;
              v1164 = v1162-- + 1;
              if (v1164 <= 1)
              {
                goto LABEL_1785;
              }
            }

            v1167 = *(a2 + 32);
            if (v1167)
            {
              v1167(*(a2 + 24));
              v1002 = (a2 + 16);
            }

            v1168 = v1162-- + 1;
          }

          while (v1168 > 1);
LABEL_1785:
          v1160 = v1161 << ~v1159 >> ~v1159;
        }

        else if ((v1151 & 0xFE) == 6)
        {
          v1160 = 0;
        }

        else
        {
          v1160 = 0;
          do
          {
            while (1)
            {
              v1173 = *(a2 + 16);
              v1174 = (*a2 + (v1173 >> 3));
              if (v1174 >= *(a2 + 8))
              {
                break;
              }

              v1171 = (*v1174 >> (~v1173 & 7)) & 1;
              *v1002 = v1173 + 1;
              v1160 |= v1171 << v1158;
              v1172 = v1158-- + 1;
              if (v1172 <= 1)
              {
                goto LABEL_1786;
              }
            }

            v1175 = *(a2 + 32);
            if (v1175)
            {
              v1175(*(a2 + 24));
              v1002 = (a2 + 16);
            }

            v1176 = v1158-- + 1;
          }

          while (v1176 > 1);
        }

LABEL_1786:
        v1169 = -v1157;
        if (v1160 >= v1157)
        {
          v1170 = v1157;
        }

        else
        {
          v1170 = v1160;
        }

        if (v1160 >= v1169)
        {
          LOWORD(v1169) = v1170;
        }

        *&v1152[2 * v1151++] = v1169;
        if (v1151 == 8)
        {
LABEL_1765:
          if (++v1149 == 8)
          {
            v989 = v2580;
            av1_calculate_segdata((v2580 + 16));
            v164 = v2581;
            v855 = v2582;
            goto LABEL_1468;
          }

          goto LABEL_1766;
        }
      }

      v1153 = *(a2 + 32);
      if (v1153)
      {
        v1153(*(a2 + 24));
        v1002 = (a2 + 16);
LABEL_1769:
        LOWORD(v1153) = 0;
      }

      *&v1152[2 * v1151++] = v1153;
      if (v1151 == 8)
      {
        goto LABEL_1765;
      }

      continue;
    }
  }

  *(v2580 + 24) = 0;
  if (*(v855 + 15708) == 7)
  {
    goto LABEL_1763;
  }

LABEL_1459:
  v997 = (v991 + (v995 >> 3));
  if (v997 >= v992)
  {
    v1180 = *(a2 + 32);
    if (v1180)
    {
      v1180(*(a2 + 24));
    }

    LOBYTE(v990) = 0;
    v2580[17] = 0;
  }

  else
  {
    v998 = *v997 >> (~v995 & 7);
    v999 = v990 + 2;
    *v2583 = v990 + 2;
    v2580[17] = v998 & 1;
    if ((v998 & 1) == 0)
    {
      goto LABEL_2106;
    }

    v1000 = (v991 + (v999 >> 3));
    if (v1000 < v992)
    {
      v1001 = *v1000 >> (~v999 & 7);
      v1002 = (a2 + 16);
      *v2583 = v990 + 3;
      LOBYTE(v990) = v1001 & 1;
      goto LABEL_2108;
    }

    v990 = *(a2 + 32);
    if (v990)
    {
      (v990)(*(a2 + 24));
LABEL_2106:
      LOBYTE(v990) = 0;
    }
  }

  v1002 = (a2 + 16);
LABEL_2108:
  v2580[19] = v990;
  v1399 = *(a2 + 16);
  v1400 = (*a2 + (v1399 >> 3));
  if (v1400 >= *(a2 + 8))
  {
    v1402 = *(a2 + 32);
    if (v1402)
    {
      v1402(*(a2 + 24));
    }

    v2580[18] = 0;
  }

  else
  {
    v1401 = *v1400 >> (~v1399 & 7);
    *v1002 = v1399 + 1;
    v2580[18] = v1401 & 1;
    if (v1401)
    {
      goto LABEL_1764;
    }
  }

  v1403 = *(v855 + 15424);
  if (v1403)
  {
    segfeatures_copy((v2580 + 16), v1403 + 88);
  }

LABEL_1468:
  segfeatures_copy(*(v855 + 15432) + 88, (v989 + 16));
  *(v164 + 1252) = xmmword_273B91FD0;
  v1006 = *(v855 + 15816);
  if (v1006 <= 0)
  {
    goto LABEL_1476;
  }

  v1007 = *(a2 + 16);
  v1008 = *a2;
  v1009 = *(a2 + 8);
  v1010 = (*a2 + (v1007 >> 3));
  if (v1010 >= v1009)
  {
    v1018 = *(a2 + 32);
    if (v1018)
    {
      v1018(*(a2 + 24));
    }

LABEL_1476:
    *(v164 + 1248) = 0;
    goto LABEL_1477;
  }

  v1011 = *v1010 >> (~v1007 & 7);
  v1012 = v1007 + 1;
  *v2583 = v1007 + 1;
  *(v164 + 1248) = v1011 & 1;
  if ((v1011 & 1) == 0)
  {
    goto LABEL_1477;
  }

  *(v855 + 10724) = v1006;
  v1013 = (v1008 + (v1012 >> 3));
  if (v1013 >= v1009)
  {
    v1177 = *(a2 + 32);
    if (v1177)
    {
      v1177(*(a2 + 24));
      v1016 = 0;
      v1012 = *(a2 + 16);
      v1015 = (a2 + 16);
      v1017 = (*a2 + (v1012 >> 3));
      if (v1017 >= *(a2 + 8))
      {
        goto LABEL_1803;
      }
    }

    else
    {
      v1016 = 0;
      v1015 = (a2 + 16);
      v1017 = (v1008 + (v1012 >> 3));
      if (v1017 >= v1009)
      {
        goto LABEL_1803;
      }
    }

LABEL_1473:
    LODWORD(v1017) = (*v1017 >> (~v1012 & 7)) & 1;
    *v1015 = v1012 + 1;
  }

  else
  {
    v1014 = *v1013 >> (~v1012 & 7);
    v1012 = v1007 + 2;
    v1015 = (a2 + 16);
    *v2583 = v1007 + 2;
    v1016 = 2 * (v1014 & 1);
    v1017 = (v1008 + ((v1007 + 2) >> 3));
    if (v1017 < v1009)
    {
      goto LABEL_1473;
    }

LABEL_1803:
    v1017 = *(a2 + 32);
    if (v1017)
    {
      v1017(*(a2 + 24));
      v1015 = (a2 + 16);
      LOBYTE(v1017) = 0;
    }
  }

  *(v164 + 1252) = 1 << (v1017 | v1016);
  if ((v2568[496] & 1) == 0)
  {
    v1178 = *(a2 + 16);
    v1179 = (*a2 + (v1178 >> 3));
    if (v1179 >= *(a2 + 8))
    {
      v1179 = *(a2 + 32);
      if (v1179)
      {
        v1179(*(a2 + 24));
        LODWORD(v1179) = 0;
      }
    }

    else
    {
      LODWORD(v1179) = (*v1179 >> (~v1178 & 7)) & 1;
      *v1015 = v1178 + 1;
    }

    *(v164 + 1256) = v1179;
    if (v1179)
    {
      goto LABEL_2074;
    }

    goto LABEL_1477;
  }

  if (!*(v164 + 1256))
  {
    goto LABEL_1477;
  }

LABEL_2074:
  v1385 = *(a2 + 16);
  v1386 = *a2;
  v1387 = *(a2 + 8);
  v1388 = (*a2 + (v1385 >> 3));
  if (v1388 >= v1387)
  {
    v1393 = *(a2 + 32);
    if (v1393)
    {
      v1393(*(a2 + 24));
      v1391 = 0;
      LODWORD(v1385) = *(a2 + 16);
      v1386 = *a2;
      v1387 = *(a2 + 8);
    }

    else
    {
      v1391 = 0;
    }

    v1390 = (a2 + 16);
    v1392 = (v1386 + (v1385 >> 3));
    if (v1392 >= v1387)
    {
      goto LABEL_2076;
    }

    goto LABEL_2090;
  }

  v1389 = *v1388 >> (~v1385 & 7);
  LODWORD(v1385) = v1385 + 1;
  v1390 = (a2 + 16);
  *v2583 = v1385;
  v1391 = 2 * (v1389 & 1);
  v1392 = (v1386 + (v1385 >> 3));
  if (v1392 < v1387)
  {
LABEL_2090:
    LODWORD(v1392) = (*v1392 >> (~v1385 & 7)) & 1;
    LODWORD(v1385) = v1385 + 1;
    *v1390 = v1385;
    goto LABEL_2091;
  }

LABEL_2076:
  v1392 = *(a2 + 32);
  if (v1392)
  {
    v1392(*(a2 + 24));
    v1390 = (a2 + 16);
    LOBYTE(v1392) = 0;
    LODWORD(v1385) = *(a2 + 16);
    v1386 = *a2;
    v1387 = *(a2 + 8);
  }

LABEL_2091:
  *(v164 + 1260) = 1 << (v1392 | v1391);
  v1394 = (v1386 + (v1385 >> 3));
  if (v1394 >= v1387)
  {
    v1396 = *(a2 + 32);
    if (v1396)
    {
      v1396(*(a2 + 24));
    }

    v1395 = 0;
  }

  else
  {
    v1395 = (*v1394 >> (~v1385 & 7)) & 1;
    *v1390 = v1385 + 1;
  }

  *(v164 + 1264) = v1395;
  v1397 = *(v164 + 1560);
  *(v855 + 10752) = 0;
  if (*(v1397 + 77))
  {
    v1398 = 2;
  }

  else
  {
    v1398 = 4;
  }

  bzero((v855 + 10753), v1398);
LABEL_1477:
  *(v855 + 10728) = v2568[494];
  v1019 = *(v855 + 15816);
  v1020 = v2580[16];
  v1021 = v1019;
  if (!v2580[16] || (v1021 = *(v855 + 15816), (v2580[148] & 1) == 0) || ((v1022 = v1019 + *(v2580 + 10), v1022 >= 0xFF) ? (v1021 = 255) : (v1021 = v1019 + *(v2580 + 10)), (v1022 & 0x80000000) == 0))
  {
    if (v1021)
    {
      v1023 = 0;
      *(v855 + 10692) = 0;
      *(v855 + 10660) = v1021;
      v1024 = v1019;
      if (!v1020)
      {
        goto LABEL_1496;
      }

LABEL_1491:
      v1024 = v1019;
      if ((v2580[152] & 1) == 0)
      {
        goto LABEL_1496;
      }

      v1025 = v1019 + *(v2580 + 18);
      v1024 = v1025 >= 0xFF ? 255 : v1019 + *(v2580 + 18);
      if ((v1025 & 0x80000000) == 0)
      {
        goto LABEL_1496;
      }

      goto LABEL_1499;
    }
  }

  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1023 = 0;
    *(v855 + 10692) = 0;
    *(v855 + 10660) = 0;
    v1024 = v1019;
    if (!v1020)
    {
      goto LABEL_1496;
    }

    goto LABEL_1491;
  }

  v1023 = *(v855 + 15836) == 0;
  *(v855 + 10692) = v1023;
  *(v855 + 10660) = 0;
  v1024 = v1019;
  if (v1020)
  {
    goto LABEL_1491;
  }

LABEL_1496:
  if (v1024)
  {
    v1026 = 0;
    *(v855 + 10696) = 0;
    *(v855 + 10664) = v1024;
    v1027 = v1019;
    if (!v1020)
    {
      goto LABEL_1509;
    }

LABEL_1504:
    v1027 = v1019;
    if ((v2580[156] & 1) == 0)
    {
      goto LABEL_1509;
    }

    v1028 = v1019 + *(v2580 + 26);
    v1027 = v1028 >= 0xFF ? 255 : v1019 + *(v2580 + 26);
    if ((v1028 & 0x80000000) == 0)
    {
      goto LABEL_1509;
    }

    goto LABEL_1512;
  }

LABEL_1499:
  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1026 = 0;
    *(v855 + 10696) = 0;
    *(v855 + 10664) = 0;
    v1027 = v1019;
    if (!v1020)
    {
      goto LABEL_1509;
    }

    goto LABEL_1504;
  }

  v1026 = *(v855 + 15836) == 0;
  *(v855 + 10696) = v1026;
  *(v855 + 10664) = 0;
  v1027 = v1019;
  if (v1020)
  {
    goto LABEL_1504;
  }

LABEL_1509:
  if (v1027)
  {
    v1029 = 0;
    *(v855 + 10700) = 0;
    *(v855 + 10668) = v1027;
    v1030 = v1019;
    if (!v1020)
    {
      goto LABEL_1522;
    }

LABEL_1517:
    v1030 = v1019;
    if ((v2580[160] & 1) == 0)
    {
      goto LABEL_1522;
    }

    v1031 = v1019 + *(v2580 + 34);
    v1030 = v1031 >= 0xFF ? 255 : v1019 + *(v2580 + 34);
    if ((v1031 & 0x80000000) == 0)
    {
      goto LABEL_1522;
    }

    goto LABEL_1525;
  }

LABEL_1512:
  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1029 = 0;
    *(v855 + 10700) = 0;
    *(v855 + 10668) = 0;
    v1030 = v1019;
    if (!v1020)
    {
      goto LABEL_1522;
    }

    goto LABEL_1517;
  }

  v1029 = *(v855 + 15836) == 0;
  *(v855 + 10700) = v1029;
  *(v855 + 10668) = 0;
  v1030 = v1019;
  if (v1020)
  {
    goto LABEL_1517;
  }

LABEL_1522:
  if (v1030)
  {
    v1032 = 0;
    *(v855 + 10704) = 0;
    *(v855 + 10672) = v1030;
    v1033 = v1019;
    if (!v1020)
    {
      goto LABEL_1535;
    }

LABEL_1530:
    v1033 = v1019;
    if ((v2580[164] & 1) == 0)
    {
      goto LABEL_1535;
    }

    v1034 = v1019 + *(v2580 + 42);
    v1033 = v1034 >= 0xFF ? 255 : v1019 + *(v2580 + 42);
    if ((v1034 & 0x80000000) == 0)
    {
      goto LABEL_1535;
    }

    goto LABEL_1538;
  }

LABEL_1525:
  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1032 = 0;
    *(v855 + 10704) = 0;
    *(v855 + 10672) = 0;
    v1033 = v1019;
    if (!v1020)
    {
      goto LABEL_1535;
    }

    goto LABEL_1530;
  }

  v1032 = *(v855 + 15836) == 0;
  *(v855 + 10704) = v1032;
  *(v855 + 10672) = 0;
  v1033 = v1019;
  if (v1020)
  {
    goto LABEL_1530;
  }

LABEL_1535:
  if (v1033)
  {
    v1035 = 0;
    *(v855 + 10708) = 0;
    *(v855 + 10676) = v1033;
    v1036 = v1019;
    if (!v1020)
    {
      goto LABEL_1548;
    }

LABEL_1543:
    v1036 = v1019;
    if ((v2580[168] & 1) == 0)
    {
      goto LABEL_1548;
    }

    v1037 = v1019 + *(v2580 + 50);
    v1036 = v1037 >= 0xFF ? 255 : v1019 + *(v2580 + 50);
    if ((v1037 & 0x80000000) == 0)
    {
      goto LABEL_1548;
    }

    goto LABEL_1551;
  }

LABEL_1538:
  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1035 = 0;
    *(v855 + 10708) = 0;
    *(v855 + 10676) = 0;
    v1036 = v1019;
    if (!v1020)
    {
      goto LABEL_1548;
    }

    goto LABEL_1543;
  }

  v1035 = *(v855 + 15836) == 0;
  *(v855 + 10708) = v1035;
  *(v855 + 10676) = 0;
  v1036 = v1019;
  if (v1020)
  {
    goto LABEL_1543;
  }

LABEL_1548:
  if (v1036)
  {
    v1038 = 0;
    *(v855 + 10712) = 0;
    *(v855 + 10680) = v1036;
    v1039 = v1019;
    if (!v1020)
    {
      goto LABEL_1561;
    }

LABEL_1556:
    v1039 = v1019;
    if ((v2580[172] & 1) == 0)
    {
      goto LABEL_1561;
    }

    v1040 = v1019 + *(v2580 + 58);
    v1039 = v1040 >= 0xFF ? 255 : v1019 + *(v2580 + 58);
    if ((v1040 & 0x80000000) == 0)
    {
      goto LABEL_1561;
    }

    goto LABEL_1564;
  }

LABEL_1551:
  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1038 = 0;
    *(v855 + 10712) = 0;
    *(v855 + 10680) = 0;
    v1039 = v1019;
    if (!v1020)
    {
      goto LABEL_1561;
    }

    goto LABEL_1556;
  }

  v1038 = *(v855 + 15836) == 0;
  *(v855 + 10712) = v1038;
  *(v855 + 10680) = 0;
  v1039 = v1019;
  if (v1020)
  {
    goto LABEL_1556;
  }

LABEL_1561:
  if (v1039)
  {
    v1041 = 0;
    *(v855 + 10716) = 0;
    *(v855 + 10684) = v1039;
    if (!v1020)
    {
      goto LABEL_1574;
    }

LABEL_1569:
    if ((v2580[176] & 1) == 0)
    {
      goto LABEL_1574;
    }

    v1042 = v1019 + *(v2580 + 66);
    if (v1042 >= 0xFF)
    {
      v1019 = 255;
    }

    else
    {
      v1019 += *(v2580 + 66);
    }

    if ((v1042 & 0x80000000) == 0)
    {
      goto LABEL_1574;
    }

    goto LABEL_1585;
  }

LABEL_1564:
  if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
  {
    v1041 = 0;
    *(v855 + 10716) = 0;
    *(v855 + 10684) = 0;
    if (!v1020)
    {
      goto LABEL_1574;
    }

    goto LABEL_1569;
  }

  v1041 = *(v855 + 15836) == 0;
  *(v855 + 10716) = v1041;
  *(v855 + 10684) = 0;
  if (v1020)
  {
    goto LABEL_1569;
  }

LABEL_1574:
  if (v1019)
  {
    v1043 = 0;
    v1044 = (v855 + 10660);
    *(v855 + 10720) = 0;
    *(v855 + 10688) = v1019;
    if (v1020)
    {
LABEL_1576:
      if (v1023 && v1026 && v1029 && v1032 && v1035 && v1038 && v1041)
      {
        v2564 = (v2568 + 499);
        v2568[499] = v1043;
        if (v1043)
        {
          goto LABEL_1584;
        }

LABEL_1591:
        v1046 = 0;
        v1045 = 0;
      }

      else
      {
        v1046 = 0;
        v1045 = 0;
        v2564 = (v2568 + 499);
        v2568[499] = 0;
      }

      goto LABEL_1593;
    }
  }

  else
  {
LABEL_1585:
    if (*(v855 + 15820) || *(v855 + 15824) || *(v855 + 15832) || *(v855 + 15828))
    {
      v1043 = 0;
      v1044 = (v855 + 10660);
      *(v855 + 10720) = 0;
      *(v855 + 10688) = 0;
      if (v1020)
      {
        goto LABEL_1576;
      }
    }

    else
    {
      v1043 = *(v855 + 15836) == 0;
      v1044 = (v855 + 10660);
      *(v855 + 10720) = v1043;
      *(v855 + 10688) = 0;
      if (v1020)
      {
        goto LABEL_1576;
      }
    }
  }

  v2564 = (v2568 + 499);
  v2568[499] = v1023;
  if (!v1023)
  {
    goto LABEL_1591;
  }

LABEL_1584:
  v1045 = *(v855 + 15256) == *(v855 + 15272);
  v1046 = 1;
LABEL_1593:
  v1047 = 0;
  v2568[500] = v1045;
  v1048 = v855 + 15936;
  v1049 = *(v164 + 1560);
  v1050 = *(v1049 + 72);
  v1051 = v855 + 30528;
  v1052 = *(v855 + 15820);
  v1053 = *(v855 + 15824);
  v1054 = *(v855 + 15832);
  v1055 = *(v855 + 15828);
  v1056 = *(v855 + 15836);
  v1057 = *v2580;
  v1058 = v1044;
  while (2)
  {
    v1060 = *v1058++;
    v1059 = v1060;
    v1061 = v1052 + v1060;
    if ((v1052 + v1060) >= 0xFF)
    {
      v1062 = 255;
    }

    else
    {
      v1062 = v1061;
    }

    if (v1061 >= 0)
    {
      v1063 = v1062;
    }

    else
    {
      v1063 = 0;
    }

    switch(v1050)
    {
      case 8:
        v1064 = dc_qlookup_QTX;
        goto LABEL_1606;
      case 12:
        v1064 = dc_qlookup_12_QTX;
LABEL_1606:
        v1065 = v1064[v1063];
        goto LABEL_1608;
      case 10:
        v1064 = dc_qlookup_10_QTX;
        goto LABEL_1606;
    }

    v1065 = -1;
LABEL_1608:
    *(v1044 + 2590) = v1065;
    if (v1059 >= 0xFF)
    {
      v1066 = 255;
    }

    else
    {
      v1066 = v1059;
    }

    if (v1059 < 0)
    {
      v1066 = 0;
    }

    switch(v1050)
    {
      case 8:
        v1067 = ac_qlookup_QTX;
        goto LABEL_1619;
      case 12:
        v1067 = ac_qlookup_12_QTX;
LABEL_1619:
        v1068 = v1067[v1066];
        goto LABEL_1621;
      case 10:
        v1067 = ac_qlookup_10_QTX;
        goto LABEL_1619;
    }

    v1068 = -1;
LABEL_1621:
    *(v1044 + 2591) = v1068;
    if ((v1053 + v1059) >= 0xFF)
    {
      v1069 = 255;
    }

    else
    {
      v1069 = v1053 + v1059;
    }

    if (v1053 + v1059 >= 0)
    {
      v1070 = v1069;
    }

    else
    {
      v1070 = 0;
    }

    switch(v1050)
    {
      case 8:
        v1071 = dc_qlookup_QTX;
        goto LABEL_1633;
      case 12:
        v1071 = dc_qlookup_12_QTX;
LABEL_1633:
        v1072 = v1071[v1070];
        goto LABEL_1635;
      case 10:
        v1071 = dc_qlookup_10_QTX;
        goto LABEL_1633;
    }

    v1072 = -1;
LABEL_1635:
    *(v1044 + 2606) = v1072;
    if ((v1054 + v1059) >= 0xFF)
    {
      v1073 = 255;
    }

    else
    {
      v1073 = v1054 + v1059;
    }

    if (v1054 + v1059 >= 0)
    {
      v1074 = v1073;
    }

    else
    {
      v1074 = 0;
    }

    switch(v1050)
    {
      case 8:
        v1075 = ac_qlookup_QTX;
        goto LABEL_1647;
      case 12:
        v1075 = ac_qlookup_12_QTX;
LABEL_1647:
        v1076 = v1075[v1074];
        goto LABEL_1649;
      case 10:
        v1075 = ac_qlookup_10_QTX;
        goto LABEL_1647;
    }

    v1076 = -1;
LABEL_1649:
    *(v1044 + 2607) = v1076;
    if ((v1055 + v1059) >= 0xFF)
    {
      v1077 = 255;
    }

    else
    {
      v1077 = v1055 + v1059;
    }

    if (v1055 + v1059 >= 0)
    {
      v1078 = v1077;
    }

    else
    {
      v1078 = 0;
    }

    switch(v1050)
    {
      case 8:
        v1079 = dc_qlookup_QTX;
        goto LABEL_1661;
      case 12:
        v1079 = dc_qlookup_12_QTX;
LABEL_1661:
        v1080 = v1079[v1078];
        goto LABEL_1663;
      case 10:
        v1079 = dc_qlookup_10_QTX;
        goto LABEL_1661;
    }

    v1080 = -1;
LABEL_1663:
    *(v1044 + 2622) = v1080;
    v1081 = v1056 + v1059;
    if ((v1056 + v1059) >= 0xFF)
    {
      v1082 = 255;
    }

    else
    {
      v1082 = v1056 + v1059;
    }

    if (v1081 >= 0)
    {
      v1083 = v1082;
    }

    else
    {
      v1083 = 0;
    }

    switch(v1050)
    {
      case 8:
        *(v1044 + 2623) = ac_qlookup_QTX[v1083];
        if (v1057)
        {
          break;
        }

        goto LABEL_1680;
      case 12:
        *(v1044 + 2623) = ac_qlookup_12_QTX[v1083];
        if (v1057)
        {
          break;
        }

LABEL_1680:
        v1084 = 0;
        v1085 = 15;
        goto LABEL_1681;
      case 10:
        *(v1044 + 2623) = ac_qlookup_10_QTX[v1083];
        if (!v1057)
        {
          goto LABEL_1680;
        }

        break;
      default:
        *(v1044 + 2623) = -1;
        if (!v1057)
        {
          goto LABEL_1680;
        }

        break;
    }

    if (v1044[8])
    {
      goto LABEL_1680;
    }

    v1085 = *(v2580 + 1);
    v1084 = 1;
LABEL_1681:
    v1086 = v1048 + 456 * v1085;
    *v1051 = *v1086;
    *(v1051 + 16) = *(v1086 + 16);
    *(v1051 + 32) = *(v1086 + 32);
    *(v1051 + 48) = *(v1086 + 48);
    *(v1051 + 64) = *(v1086 + 64);
    *(v1051 + 80) = *(v1086 + 80);
    *(v1051 + 96) = *(v1086 + 96);
    *(v1051 + 112) = *(v1086 + 112);
    *(v1051 + 128) = *(v1086 + 128);
    *(v1051 + 144) = *(v1086 + 144);
    if (v1084)
    {
      v1087 = *(v2580 + 2);
    }

    else
    {
      v1087 = 15;
    }

    v1088 = v1048 + 456 * v1087;
    v1089 = *(v1088 + 152);
    v1088 += 152;
    *(v1051 + 1216) = v1089;
    *(v1051 + 1232) = *(v1088 + 16);
    *(v1051 + 1248) = *(v1088 + 32);
    *(v1051 + 1264) = *(v1088 + 48);
    *(v1051 + 1280) = *(v1088 + 64);
    *(v1051 + 1296) = *(v1088 + 80);
    *(v1051 + 1312) = *(v1088 + 96);
    *(v1051 + 1328) = *(v1088 + 112);
    *(v1051 + 1344) = *(v1088 + 128);
    *(v1051 + 1360) = *(v1088 + 144);
    if (v1084)
    {
      v1090 = *(v2580 + 3);
    }

    else
    {
      v1090 = 15;
    }

    v1091 = v1048 + 456 * v1090;
    *(v1051 + 2432) = *(v1091 + 304);
    *(v1051 + 2448) = *(v1091 + 320);
    *(v1051 + 2464) = *(v1091 + 336);
    *(v1051 + 2480) = *(v1091 + 352);
    *(v1051 + 2496) = *(v1091 + 368);
    *(v1051 + 2512) = *(v1091 + 384);
    *(v1051 + 2528) = *(v1091 + 400);
    *(v1051 + 2544) = *(v1091 + 416);
    *(v1051 + 2560) = *(v1091 + 432);
    *(v1051 + 2576) = *(v1091 + 448);
    if (v1020)
    {
      v1051 += 152;
      v1044 = v1058;
      v678 = v1047++ >= 7;
      if (!v678)
      {
        continue;
      }
    }

    break;
  }

  if (v1046)
  {
    v1092 = v2580;
    *(v2580 + 506) = 0;
    v1093 = v2581;
    v1094 = v2568;
    goto LABEL_1697;
  }

  v1092 = v2580;
  v1093 = v2581;
  v1094 = v2568;
  if (!*(v2570 + 67))
  {
LABEL_1697:
    v1093[146] = 0;
    v1093[114] = 0;
    v1093[130] = 0;
    v1095 = v2582;
    if (!v1045)
    {
      goto LABEL_1698;
    }

    goto LABEL_1702;
  }

  v1095 = v2582;
  if (v1045)
  {
    goto LABEL_1702;
  }

LABEL_1698:
  if (!*(v2570 + 68))
  {
LABEL_1702:
    *(v1092 + 1020) = 0;
    *v1093 = 0;
    v1093[16] = 0;
    if (((v1094[496] | v1046) & 1) == 0)
    {
      goto LABEL_1703;
    }

LABEL_1700:
    *(*(v1095 + 15432) + 1468) = 0xFFFF00FF00000001;
    *(*(v1095 + 15432) + 1476) = 0;
    v1096 = (a2 + 16);
    if ((v2564->__sig & 1) == 0)
    {
      goto LABEL_1881;
    }

    goto LABEL_1883;
  }

  if ((v1094[496] | v1046))
  {
    goto LABEL_1700;
  }

LABEL_1703:
  v1097 = *(v1049 + 77);
  v1098 = *(v1095 + 15424);
  v1099 = v1092 + 4070;
  if (v1098)
  {
    *v1099 = *(v1098 + 1468);
    *(v1092 + 2039) = *(v1098 + 1476);
    v1100 = *(a2 + 16);
    v1101 = *a2;
    v1102 = *(a2 + 8);
    v1103 = (*a2 + (v1100 >> 3));
    v1096 = (a2 + 16);
    if (v1103 < v1102)
    {
      goto LABEL_1705;
    }

LABEL_1708:
    v1108 = *(a2 + 32);
    if (v1108)
    {
      v1108(*(a2 + 24));
      v1096 = (a2 + 16);
      v1105 = 0;
      LODWORD(v1100) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
      v1106 = (*a2 + (v1100 >> 3));
      if (v1106 >= v1102)
      {
        goto LABEL_1710;
      }
    }

    else
    {
      v1105 = 0;
      v1106 = (v1101 + (v1100 >> 3));
      if (v1106 >= v1102)
      {
        goto LABEL_1710;
      }
    }

LABEL_1706:
    v1107 = *v1106 >> (~v1100 & 7);
    LODWORD(v1100) = v1100 + 1;
    *v1096 = v1100;
    LODWORD(v1106) = 16 * (v1107 & 1);
  }

  else
  {
    *v1099 = 0xFFFF00FF00000001;
    *(v1092 + 2039) = 0;
    v1100 = *(a2 + 16);
    v1101 = *a2;
    v1102 = *(a2 + 8);
    v1103 = (*a2 + (v1100 >> 3));
    v1096 = (a2 + 16);
    if (v1103 >= v1102)
    {
      goto LABEL_1708;
    }

LABEL_1705:
    v1104 = *v1103 >> (~v1100 & 7);
    LODWORD(v1100) = v1100 + 1;
    *v1096 = v1100;
    v1105 = 32 * (v1104 & 1);
    v1106 = (v1101 + (v1100 >> 3));
    if (v1106 < v1102)
    {
      goto LABEL_1706;
    }

LABEL_1710:
    v1106 = *(a2 + 32);
    if (v1106)
    {
      v1106(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1106) = 0;
      LODWORD(v1100) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  v1109 = v1106 | v1105;
  v1110 = (v1101 + (v1100 >> 3));
  if (v1110 >= v1102)
  {
    v1110 = *(a2 + 32);
    if (v1110)
    {
      v1110(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1110) = 0;
      LODWORD(v1100) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  else
  {
    v1111 = *v1110 >> (~v1100 & 7);
    LODWORD(v1100) = v1100 + 1;
    *v1096 = v1100;
    LODWORD(v1110) = 8 * (v1111 & 1);
  }

  v1112 = v1110 | v1109;
  v1113 = (v1101 + (v1100 >> 3));
  if (v1113 >= v1102)
  {
    v1113 = *(a2 + 32);
    if (v1113)
    {
      v1113(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1113) = 0;
      LODWORD(v1100) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  else
  {
    v1114 = *v1113 >> (~v1100 & 7);
    LODWORD(v1100) = v1100 + 1;
    *v1096 = v1100;
    LODWORD(v1113) = 4 * (v1114 & 1);
  }

  v1115 = v1113 | v1112;
  v1116 = (v1101 + (v1100 >> 3));
  if (v1116 >= v1102)
  {
    v1116 = *(a2 + 32);
    if (v1116)
    {
      v1116(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1116) = 0;
      LODWORD(v1100) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  else
  {
    v1117 = *v1116 >> (~v1100 & 7);
    LODWORD(v1100) = v1100 + 1;
    *v1096 = v1100;
    LODWORD(v1116) = 2 * (v1117 & 1);
  }

  v1118 = v1116 | v1115;
  v1119 = (v1101 + (v1100 >> 3));
  if (v1119 >= v1102)
  {
    v1121 = *(a2 + 32);
    if (v1121)
    {
      v1121(*(a2 + 24));
      v1096 = (a2 + 16);
      v1120 = 0;
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }

    else
    {
      v1120 = 0;
    }
  }

  else
  {
    v1120 = (*v1119 >> (~v1100 & 7)) & 1;
    *v1096 = v1100 + 1;
  }

  *(v2580 + 1012) = v1120 | v1118;
  v1122 = *v1096;
  v1123 = (v1101 + (v1122 >> 3));
  if (v1123 >= v1102)
  {
    v1128 = *(a2 + 32);
    if (v1128)
    {
      v1128(*(a2 + 24));
      v1096 = (a2 + 16);
      v1125 = 0;
      LODWORD(v1122) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
      v1126 = (*a2 + (v1122 >> 3));
      if (v1126 >= v1102)
      {
        goto LABEL_1736;
      }
    }

    else
    {
      v1125 = 0;
      v1126 = (v1101 + (v1122 >> 3));
      if (v1126 >= v1102)
      {
        goto LABEL_1736;
      }
    }

LABEL_1733:
    v1127 = *v1126 >> (~v1122 & 7);
    LODWORD(v1122) = v1122 + 1;
    *v1096 = v1122;
    LODWORD(v1126) = 16 * (v1127 & 1);
  }

  else
  {
    v1124 = *v1123 >> (~v1122 & 7);
    LODWORD(v1122) = v1122 + 1;
    *v1096 = v1122;
    v1125 = 32 * (v1124 & 1);
    v1126 = (v1101 + (v1122 >> 3));
    if (v1126 < v1102)
    {
      goto LABEL_1733;
    }

LABEL_1736:
    v1126 = *(a2 + 32);
    if (v1126)
    {
      v1126(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1126) = 0;
      LODWORD(v1122) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  v1129 = v1126 | v1125;
  v1130 = (v1101 + (v1122 >> 3));
  if (v1130 >= v1102)
  {
    v1130 = *(a2 + 32);
    if (v1130)
    {
      v1130(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1130) = 0;
      LODWORD(v1122) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  else
  {
    v1131 = *v1130 >> (~v1122 & 7);
    LODWORD(v1122) = v1122 + 1;
    *v1096 = v1122;
    LODWORD(v1130) = 8 * (v1131 & 1);
  }

  v1132 = v1130 | v1129;
  v1133 = (v1101 + (v1122 >> 3));
  if (v1133 >= v1102)
  {
    v1133 = *(a2 + 32);
    if (v1133)
    {
      v1133(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1133) = 0;
      LODWORD(v1122) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  else
  {
    v1134 = *v1133 >> (~v1122 & 7);
    LODWORD(v1122) = v1122 + 1;
    *v1096 = v1122;
    LODWORD(v1133) = 4 * (v1134 & 1);
  }

  v1135 = v1133 | v1132;
  v1136 = (v1101 + (v1122 >> 3));
  if (v1136 >= v1102)
  {
    v1136 = *(a2 + 32);
    if (v1136)
    {
      v1136(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1136) = 0;
      LODWORD(v1122) = *(a2 + 16);
      v1101 = *a2;
      v1102 = *(a2 + 8);
    }
  }

  else
  {
    v1137 = *v1136 >> (~v1122 & 7);
    LODWORD(v1122) = v1122 + 1;
    *v1096 = v1122;
    LODWORD(v1136) = 2 * (v1137 & 1);
  }

  v1138 = v1136 | v1135;
  v1139 = (v1101 + (v1122 >> 3));
  if (v1139 >= v1102)
  {
    v1139 = *(a2 + 32);
    if (v1139)
    {
      v1139(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1139) = 0;
    }
  }

  else
  {
    LODWORD(v1139) = (*v1139 >> (~v1122 & 7)) & 1;
    *v1096 = v1122 + 1;
  }

  v1140 = v1139 | v1138;
  *(v2580 + 1013) = v1140;
  if (!v1097 && *(v2580 + 1012) | v1140)
  {
    v1141 = *(a2 + 16);
    v1142 = *a2;
    v1143 = *(a2 + 8);
    v1144 = (*a2 + (v1141 >> 3));
    if (v1144 >= v1143)
    {
      v1181 = *(a2 + 32);
      if (v1181)
      {
        v1181(*(a2 + 24));
        v1096 = (a2 + 16);
        v1146 = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
        v1147 = (*a2 + (v1141 >> 3));
        if (v1147 >= v1143)
        {
          goto LABEL_1815;
        }
      }

      else
      {
        v1146 = 0;
        v1147 = (v1142 + (v1141 >> 3));
        if (v1147 >= v1143)
        {
          goto LABEL_1815;
        }
      }

LABEL_1758:
      v1148 = *v1147 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1147) = 16 * (v1148 & 1);
    }

    else
    {
      v1145 = *v1144 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      v1146 = 32 * (v1145 & 1);
      v1147 = (v1142 + (v1141 >> 3));
      if (v1147 < v1143)
      {
        goto LABEL_1758;
      }

LABEL_1815:
      v1147 = *(a2 + 32);
      if (v1147)
      {
        v1147(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1147) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    v1182 = v1147 | v1146;
    v1183 = (v1142 + (v1141 >> 3));
    if (v1183 >= v1143)
    {
      v1183 = *(a2 + 32);
      if (v1183)
      {
        v1183(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1183) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      v1184 = *v1183 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1183) = 8 * (v1184 & 1);
    }

    v1185 = v1183 | v1182;
    v1186 = (v1142 + (v1141 >> 3));
    if (v1186 >= v1143)
    {
      v1186 = *(a2 + 32);
      if (v1186)
      {
        v1186(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1186) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      v1187 = *v1186 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1186) = 4 * (v1187 & 1);
    }

    v1188 = v1186 | v1185;
    v1189 = (v1142 + (v1141 >> 3));
    if (v1189 >= v1143)
    {
      v1189 = *(a2 + 32);
      if (v1189)
      {
        v1189(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1189) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      v1190 = *v1189 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1189) = 2 * (v1190 & 1);
    }

    v1191 = v1189 | v1188;
    v1192 = (v1142 + (v1141 >> 3));
    if (v1192 >= v1143)
    {
      v1192 = *(a2 + 32);
      if (v1192)
      {
        v1192(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1192) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      LODWORD(v1192) = (*v1192 >> (~v1141 & 7)) & 1;
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
    }

    *(v2580 + 1014) = v1192 | v1191;
    v1193 = (v1142 + (v1141 >> 3));
    if (v1193 >= v1143)
    {
      v1198 = *(a2 + 32);
      if (v1198)
      {
        v1198(*(a2 + 24));
        v1096 = (a2 + 16);
        v1195 = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
        v1196 = (*a2 + (v1141 >> 3));
        if (v1196 >= v1143)
        {
          goto LABEL_1838;
        }
      }

      else
      {
        v1195 = 0;
        v1196 = (v1142 + (v1141 >> 3));
        if (v1196 >= v1143)
        {
          goto LABEL_1838;
        }
      }

LABEL_1835:
      v1197 = *v1196 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1196) = 16 * (v1197 & 1);
    }

    else
    {
      v1194 = *v1193 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      v1195 = 32 * (v1194 & 1);
      v1196 = (v1142 + (v1141 >> 3));
      if (v1196 < v1143)
      {
        goto LABEL_1835;
      }

LABEL_1838:
      v1196 = *(a2 + 32);
      if (v1196)
      {
        v1196(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1196) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    v1199 = v1196 | v1195;
    v1200 = (v1142 + (v1141 >> 3));
    if (v1200 >= v1143)
    {
      v1200 = *(a2 + 32);
      if (v1200)
      {
        v1200(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1200) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      v1201 = *v1200 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1200) = 8 * (v1201 & 1);
    }

    v1202 = v1200 | v1199;
    v1203 = (v1142 + (v1141 >> 3));
    if (v1203 >= v1143)
    {
      v1203 = *(a2 + 32);
      if (v1203)
      {
        v1203(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1203) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      v1204 = *v1203 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1203) = 4 * (v1204 & 1);
    }

    v1205 = v1203 | v1202;
    v1206 = (v1142 + (v1141 >> 3));
    if (v1206 >= v1143)
    {
      v1206 = *(a2 + 32);
      if (v1206)
      {
        v1206(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1206) = 0;
        LODWORD(v1141) = *(a2 + 16);
        v1142 = *a2;
        v1143 = *(a2 + 8);
      }
    }

    else
    {
      v1207 = *v1206 >> (~v1141 & 7);
      LODWORD(v1141) = v1141 + 1;
      *v1096 = v1141;
      LODWORD(v1206) = 2 * (v1207 & 1);
    }

    v1208 = v1206 | v1205;
    v1209 = (v1142 + (v1141 >> 3));
    if (v1209 >= v1143)
    {
      v1211 = *(a2 + 32);
      if (v1211)
      {
        v1211(*(a2 + 24));
        v1096 = (a2 + 16);
      }

      v1210 = 0;
    }

    else
    {
      v1210 = (*v1209 >> (~v1141 & 7)) & 1;
      *v1096 = v1141 + 1;
    }

    *(v2580 + 1015) = v1210 | v1208;
  }

  v1212 = *(a2 + 16);
  v1213 = *a2;
  v1214 = *(a2 + 8);
  v1215 = (*a2 + (v1212 >> 3));
  if (v1215 >= v1214)
  {
    v1220 = *(a2 + 32);
    if (v1220)
    {
      v1220(*(a2 + 24));
      v1096 = (a2 + 16);
      v1217 = 0;
      LODWORD(v1212) = *(a2 + 16);
      v1213 = *a2;
      v1214 = *(a2 + 8);
      v1218 = (*a2 + (v1212 >> 3));
      if (v1218 >= v1214)
      {
        goto LABEL_1863;
      }
    }

    else
    {
      v1217 = 0;
      v1218 = (v1213 + (v1212 >> 3));
      if (v1218 >= v1214)
      {
        goto LABEL_1863;
      }
    }

LABEL_1860:
    v1219 = *v1218 >> (~v1212 & 7);
    LODWORD(v1212) = v1212 + 1;
    *v1096 = v1212;
    LODWORD(v1218) = 2 * (v1219 & 1);
  }

  else
  {
    v1216 = *v1215 >> (~v1212 & 7);
    LODWORD(v1212) = v1212 + 1;
    *v1096 = v1212;
    v1217 = 4 * (v1216 & 1);
    v1218 = (v1213 + (v1212 >> 3));
    if (v1218 < v1214)
    {
      goto LABEL_1860;
    }

LABEL_1863:
    v1218 = *(a2 + 32);
    if (v1218)
    {
      v1218(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1218) = 0;
      LODWORD(v1212) = *(a2 + 16);
      v1213 = *a2;
      v1214 = *(a2 + 8);
    }
  }

  v1221 = v1218 | v1217;
  v1222 = (v1213 + (v1212 >> 3));
  if (v1222 >= v1214)
  {
    v1222 = *(a2 + 32);
    if (v1222)
    {
      v1222(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1222) = 0;
      LODWORD(v1212) = *(a2 + 16);
      v1213 = *a2;
      v1214 = *(a2 + 8);
    }
  }

  else
  {
    LODWORD(v1222) = (*v1222 >> (~v1212 & 7)) & 1;
    LODWORD(v1212) = v1212 + 1;
    *v1096 = v1212;
  }

  v1223 = v1222 | v1221;
  v1224 = v2580;
  *(v2580 + 1016) = v1223;
  v2580[4069] = 0;
  v1225 = (v1213 + (v1212 >> 3));
  if (v1225 >= v1214)
  {
    v1239 = *(a2 + 32);
    if (v1239)
    {
      v1239(*(a2 + 24));
      v1096 = (a2 + 16);
    }

    v2580[4068] = 0;
  }

  else
  {
    v1226 = *v1225 >> (~v1212 & 7);
    v1227 = v1212 + 1;
    *v2583 = v1212 + 1;
    v2580[4068] = v1226 & 1;
    v1096 = (a2 + 16);
    if (v1226)
    {
      v1228 = (v1213 + (v1227 >> 3));
      if (v1228 >= v1214)
      {
        v1308 = *(a2 + 32);
        if (v1308)
        {
          v1308(*(a2 + 24));
          v1096 = (a2 + 16);
        }

        v2580[4069] = 0;
      }

      else
      {
        v1229 = *v1228 >> (~v1227 & 7);
        v1230 = v1212 + 2;
        *v2583 = v1212 + 2;
        v2580[4069] = v1229 & 1;
        v1096 = (a2 + 16);
        if (v1229)
        {
          v1231 = (v1213 + (v1230 >> 3));
          if (v1231 >= v1214)
          {
            v1404 = *(a2 + 32);
            if (v1404)
            {
              v1404(*(a2 + 24));
            }
          }

          else
          {
            v1232 = ~v1230 & 7;
            v1233 = *v1231;
            v1234 = v1212 + 3;
            *v2583 = v1212 + 3;
            if ((v1233 >> v1232))
            {
              v1235 = (v1213 + (v1234 >> 3));
              if (v1235 >= v1214)
              {
                v1956 = *(a2 + 32);
                if (v1956)
                {
                  v1956(*(a2 + 24));
                  v1238 = 0;
                  v1234 = *(a2 + 16);
                  v1213 = *a2;
                  v1214 = *(a2 + 8);
                }

                else
                {
                  v1238 = 0;
                }

                v1237 = (a2 + 16);
              }

              else
              {
                v1236 = *v1235 >> (~v1234 & 7);
                v1234 = v1212 + 4;
                v1237 = (a2 + 16);
                *v2583 = v1212 + 4;
                v1238 = (v1236 & 1) << 6;
              }

              v1979 = (v1213 + (v1234 >> 3));
              if (v1979 >= v1214)
              {
                v1979 = *(a2 + 32);
                if (v1979)
                {
                  v1979(*(a2 + 24));
                  v1237 = (a2 + 16);
                  LODWORD(v1979) = 0;
                  v1234 = *(a2 + 16);
                  v1213 = *a2;
                  v1214 = *(a2 + 8);
                }
              }

              else
              {
                v1980 = *v1979 >> (~v1234++ & 7);
                *v1237 = v1234;
                LODWORD(v1979) = 32 * (v1980 & 1);
              }

              v1981 = v1979 | v1238;
              v1982 = (v1213 + (v1234 >> 3));
              if (v1982 >= v1214)
              {
                v1982 = *(a2 + 32);
                if (v1982)
                {
                  v1982(*(a2 + 24));
                  v1237 = (a2 + 16);
                  LODWORD(v1982) = 0;
                  v1234 = *(a2 + 16);
                  v1213 = *a2;
                  v1214 = *(a2 + 8);
                }
              }

              else
              {
                v1983 = *v1982 >> (~v1234++ & 7);
                *v1237 = v1234;
                LODWORD(v1982) = 16 * (v1983 & 1);
              }

              v1984 = v1982 | v1981;
              v1985 = (v1213 + (v1234 >> 3));
              if (v1985 >= v1214)
              {
                v1985 = *(a2 + 32);
                if (v1985)
                {
                  v1985(*(a2 + 24));
                  v1237 = (a2 + 16);
                  LODWORD(v1985) = 0;
                  v1234 = *(a2 + 16);
                  v1213 = *a2;
                  v1214 = *(a2 + 8);
                }
              }

              else
              {
                v1986 = *v1985 >> (~v1234++ & 7);
                *v1237 = v1234;
                LODWORD(v1985) = 8 * (v1986 & 1);
              }

              v1987 = v1985 | v1984;
              v1988 = (v1213 + (v1234 >> 3));
              if (v1988 >= v1214)
              {
                v1988 = *(a2 + 32);
                if (v1988)
                {
                  v1988(*(a2 + 24));
                  v1237 = (a2 + 16);
                  LODWORD(v1988) = 0;
                  v1234 = *(a2 + 16);
                  v1213 = *a2;
                  v1214 = *(a2 + 8);
                }
              }

              else
              {
                v1989 = *v1988 >> (~v1234++ & 7);
                *v1237 = v1234;
                LODWORD(v1988) = 4 * (v1989 & 1);
              }

              v1990 = v1988 | v1987;
              v1991 = (v1213 + (v1234 >> 3));
              if (v1991 >= v1214)
              {
                v1991 = *(a2 + 32);
                if (v1991)
                {
                  v1991(*(a2 + 24));
                  v1237 = (a2 + 16);
                  LODWORD(v1991) = 0;
                  v1234 = *(a2 + 16);
                  v1213 = *a2;
                  v1214 = *(a2 + 8);
                }
              }

              else
              {
                v1992 = *v1991 >> (~v1234++ & 7);
                *v1237 = v1234;
                LODWORD(v1991) = 2 * (v1992 & 1);
              }

              v1993 = v1991 | v1990;
              v1994 = (v1213 + (v1234 >> 3));
              if (v1994 >= v1214)
              {
                v1994 = *(a2 + 32);
                if (v1994)
                {
                  v1994(*(a2 + 24));
                  LODWORD(v1994) = 0;
                }
              }

              else
              {
                LODWORD(v1994) = (*v1994 >> (~v1234 & 7)) & 1;
                *v1237 = v1234 + 1;
              }

              *v1099 = ((v1994 | v1993) << 25) >> 25;
              v1224 = v2580;
            }
          }

          v1995 = *(a2 + 16);
          v1996 = *a2;
          v1997 = *(a2 + 8);
          v1998 = (*a2 + (v1995 >> 3));
          if (v1998 >= v1997)
          {
            v2005 = *(a2 + 32);
            if (v2005)
            {
              v2005(*(a2 + 24));
            }
          }

          else
          {
            v1999 = *v1998;
            v2000 = v1995 + 1;
            *v2583 = v1995 + 1;
            if ((v1999 >> (~v1995 & 7)))
            {
              v2001 = (v1996 + (v2000 >> 3));
              if (v2001 >= v1997)
              {
                v2006 = *(a2 + 32);
                if (v2006)
                {
                  v2006(*(a2 + 24));
                  v2004 = 0;
                  v2000 = *(a2 + 16);
                  v1996 = *a2;
                  v1997 = *(a2 + 8);
                }

                else
                {
                  v2004 = 0;
                }

                v2003 = (a2 + 16);
              }

              else
              {
                v2002 = *v2001 >> (~v2000 & 7);
                v2000 = v1995 + 2;
                v2003 = (a2 + 16);
                *v2583 = v1995 + 2;
                v2004 = (v2002 & 1) << 6;
              }

              v2007 = (v1996 + (v2000 >> 3));
              if (v2007 >= v1997)
              {
                v2007 = *(a2 + 32);
                if (v2007)
                {
                  v2007(*(a2 + 24));
                  v2003 = (a2 + 16);
                  LODWORD(v2007) = 0;
                  v2000 = *(a2 + 16);
                  v1996 = *a2;
                  v1997 = *(a2 + 8);
                }
              }

              else
              {
                v2008 = *v2007 >> (~v2000++ & 7);
                *v2003 = v2000;
                LODWORD(v2007) = 32 * (v2008 & 1);
              }

              v2009 = v2007 | v2004;
              v2010 = (v1996 + (v2000 >> 3));
              if (v2010 >= v1997)
              {
                v2010 = *(a2 + 32);
                if (v2010)
                {
                  v2010(*(a2 + 24));
                  v2003 = (a2 + 16);
                  LODWORD(v2010) = 0;
                  v2000 = *(a2 + 16);
                  v1996 = *a2;
                  v1997 = *(a2 + 8);
                }
              }

              else
              {
                v2011 = *v2010 >> (~v2000++ & 7);
                *v2003 = v2000;
                LODWORD(v2010) = 16 * (v2011 & 1);
              }

              v2012 = v2010 | v2009;
              v2013 = (v1996 + (v2000 >> 3));
              if (v2013 >= v1997)
              {
                v2013 = *(a2 + 32);
                if (v2013)
                {
                  v2013(*(a2 + 24));
                  v2003 = (a2 + 16);
                  LODWORD(v2013) = 0;
                  v2000 = *(a2 + 16);
                  v1996 = *a2;
                  v1997 = *(a2 + 8);
                }
              }

              else
              {
                v2014 = *v2013 >> (~v2000++ & 7);
                *v2003 = v2000;
                LODWORD(v2013) = 8 * (v2014 & 1);
              }

              v2015 = v2013 | v2012;
              v2016 = (v1996 + (v2000 >> 3));
              if (v2016 >= v1997)
              {
                v2016 = *(a2 + 32);
                if (v2016)
                {
                  v2016(*(a2 + 24));
                  v2003 = (a2 + 16);
                  LODWORD(v2016) = 0;
                  v2000 = *(a2 + 16);
                  v1996 = *a2;
                  v1997 = *(a2 + 8);
                }
              }

              else
              {
                v2017 = *v2016 >> (~v2000++ & 7);
                *v2003 = v2000;
                LODWORD(v2016) = 4 * (v2017 & 1);
              }

              v2018 = v2016 | v2015;
              v2019 = (v1996 + (v2000 >> 3));
              if (v2019 >= v1997)
              {
                v2019 = *(a2 + 32);
                if (v2019)
                {
                  v2019(*(a2 + 24));
                  v2003 = (a2 + 16);
                  LODWORD(v2019) = 0;
                  v2000 = *(a2 + 16);
                  v1996 = *a2;
                  v1997 = *(a2 + 8);
                }
              }

              else
              {
                v2020 = *v2019 >> (~v2000++ & 7);
                *v2003 = v2000;
                LODWORD(v2019) = 2 * (v2020 & 1);
              }

              v2021 = v2019 | v2018;
              v2022 = (v1996 + (v2000 >> 3));
              if (v2022 >= v1997)
              {
                v2024 = *(a2 + 32);
                if (v2024)
                {
                  v2024(*(a2 + 24));
                }

                v2023 = 0;
              }

              else
              {
                v2023 = (*v2022 >> (~v2000 & 7)) & 1;
                *v2003 = v2000 + 1;
              }

              v2025 = ((v2023 | v2021) << 25) >> 25;
              v1224 = v2580;
              v2580[4071] = v2025;
            }
          }

          v2026 = *(a2 + 16);
          v2027 = *a2;
          v2028 = *(a2 + 8);
          v2029 = (*a2 + (v2026 >> 3));
          if (v2029 >= v2028)
          {
            v2036 = *(a2 + 32);
            if (v2036)
            {
              v2036(*(a2 + 24));
            }
          }

          else
          {
            v2030 = *v2029;
            v2031 = v2026 + 1;
            *v2583 = v2026 + 1;
            if ((v2030 >> (~v2026 & 7)))
            {
              v2032 = (v2027 + (v2031 >> 3));
              if (v2032 >= v2028)
              {
                v2037 = *(a2 + 32);
                if (v2037)
                {
                  v2037(*(a2 + 24));
                  v2035 = 0;
                  v2031 = *(a2 + 16);
                  v2027 = *a2;
                  v2028 = *(a2 + 8);
                }

                else
                {
                  v2035 = 0;
                }

                v2034 = (a2 + 16);
              }

              else
              {
                v2033 = *v2032 >> (~v2031 & 7);
                v2031 = v2026 + 2;
                v2034 = (a2 + 16);
                *v2583 = v2026 + 2;
                v2035 = (v2033 & 1) << 6;
              }

              v2038 = (v2027 + (v2031 >> 3));
              if (v2038 >= v2028)
              {
                v2038 = *(a2 + 32);
                if (v2038)
                {
                  v2038(*(a2 + 24));
                  v2034 = (a2 + 16);
                  LODWORD(v2038) = 0;
                  v2031 = *(a2 + 16);
                  v2027 = *a2;
                  v2028 = *(a2 + 8);
                }
              }

              else
              {
                v2039 = *v2038 >> (~v2031++ & 7);
                *v2034 = v2031;
                LODWORD(v2038) = 32 * (v2039 & 1);
              }

              v2040 = v2038 | v2035;
              v2041 = (v2027 + (v2031 >> 3));
              if (v2041 >= v2028)
              {
                v2041 = *(a2 + 32);
                if (v2041)
                {
                  v2041(*(a2 + 24));
                  v2034 = (a2 + 16);
                  LODWORD(v2041) = 0;
                  v2031 = *(a2 + 16);
                  v2027 = *a2;
                  v2028 = *(a2 + 8);
                }
              }

              else
              {
                v2042 = *v2041 >> (~v2031++ & 7);
                *v2034 = v2031;
                LODWORD(v2041) = 16 * (v2042 & 1);
              }

              v2043 = v2041 | v2040;
              v2044 = (v2027 + (v2031 >> 3));
              if (v2044 >= v2028)
              {
                v2044 = *(a2 + 32);
                if (v2044)
                {
                  v2044(*(a2 + 24));
                  v2034 = (a2 + 16);
                  LODWORD(v2044) = 0;
                  v2031 = *(a2 + 16);
                  v2027 = *a2;
                  v2028 = *(a2 + 8);
                }
              }

              else
              {
                v2045 = *v2044 >> (~v2031++ & 7);
                *v2034 = v2031;
                LODWORD(v2044) = 8 * (v2045 & 1);
              }

              v2046 = v2044 | v2043;
              v2047 = (v2027 + (v2031 >> 3));
              if (v2047 >= v2028)
              {
                v2047 = *(a2 + 32);
                if (v2047)
                {
                  v2047(*(a2 + 24));
                  v2034 = (a2 + 16);
                  LODWORD(v2047) = 0;
                  v2031 = *(a2 + 16);
                  v2027 = *a2;
                  v2028 = *(a2 + 8);
                }
              }

              else
              {
                v2048 = *v2047 >> (~v2031++ & 7);
                *v2034 = v2031;
                LODWORD(v2047) = 4 * (v2048 & 1);
              }

              v2049 = v2047 | v2046;
              v2050 = (v2027 + (v2031 >> 3));
              if (v2050 >= v2028)
              {
                v2050 = *(a2 + 32);
                if (v2050)
                {
                  v2050(*(a2 + 24));
                  v2034 = (a2 + 16);
                  LODWORD(v2050) = 0;
                  v2031 = *(a2 + 16);
                  v2027 = *a2;
                  v2028 = *(a2 + 8);
                }
              }

              else
              {
                v2051 = *v2050 >> (~v2031++ & 7);
                *v2034 = v2031;
                LODWORD(v2050) = 2 * (v2051 & 1);
              }

              v2052 = v2050 | v2049;
              v2053 = (v2027 + (v2031 >> 3));
              if (v2053 >= v2028)
              {
                v2055 = *(a2 + 32);
                if (v2055)
                {
                  v2055(*(a2 + 24));
                }

                v2054 = 0;
              }

              else
              {
                v2054 = (*v2053 >> (~v2031 & 7)) & 1;
                *v2034 = v2031 + 1;
              }

              v2056 = ((v2054 | v2052) << 25) >> 25;
              v1224 = v2580;
              v2580[4072] = v2056;
            }
          }

          v2057 = *(a2 + 16);
          v2058 = *a2;
          v2059 = *(a2 + 8);
          v2060 = (*a2 + (v2057 >> 3));
          if (v2060 >= v2059)
          {
            v2067 = *(a2 + 32);
            if (v2067)
            {
              v2067(*(a2 + 24));
            }
          }

          else
          {
            v2061 = *v2060;
            v2062 = v2057 + 1;
            *v2583 = v2057 + 1;
            if ((v2061 >> (~v2057 & 7)))
            {
              v2063 = (v2058 + (v2062 >> 3));
              if (v2063 >= v2059)
              {
                v2068 = *(a2 + 32);
                if (v2068)
                {
                  v2068(*(a2 + 24));
                  v2066 = 0;
                  v2062 = *(a2 + 16);
                  v2058 = *a2;
                  v2059 = *(a2 + 8);
                }

                else
                {
                  v2066 = 0;
                }

                v2065 = (a2 + 16);
              }

              else
              {
                v2064 = *v2063 >> (~v2062 & 7);
                v2062 = v2057 + 2;
                v2065 = (a2 + 16);
                *v2583 = v2057 + 2;
                v2066 = (v2064 & 1) << 6;
              }

              v2069 = (v2058 + (v2062 >> 3));
              if (v2069 >= v2059)
              {
                v2069 = *(a2 + 32);
                if (v2069)
                {
                  v2069(*(a2 + 24));
                  v2065 = (a2 + 16);
                  LODWORD(v2069) = 0;
                  v2062 = *(a2 + 16);
                  v2058 = *a2;
                  v2059 = *(a2 + 8);
                }
              }

              else
              {
                v2070 = *v2069 >> (~v2062++ & 7);
                *v2065 = v2062;
                LODWORD(v2069) = 32 * (v2070 & 1);
              }

              v2071 = v2069 | v2066;
              v2072 = (v2058 + (v2062 >> 3));
              if (v2072 >= v2059)
              {
                v2072 = *(a2 + 32);
                if (v2072)
                {
                  v2072(*(a2 + 24));
                  v2065 = (a2 + 16);
                  LODWORD(v2072) = 0;
                  v2062 = *(a2 + 16);
                  v2058 = *a2;
                  v2059 = *(a2 + 8);
                }
              }

              else
              {
                v2073 = *v2072 >> (~v2062++ & 7);
                *v2065 = v2062;
                LODWORD(v2072) = 16 * (v2073 & 1);
              }

              v2074 = v2072 | v2071;
              v2075 = (v2058 + (v2062 >> 3));
              if (v2075 >= v2059)
              {
                v2075 = *(a2 + 32);
                if (v2075)
                {
                  v2075(*(a2 + 24));
                  v2065 = (a2 + 16);
                  LODWORD(v2075) = 0;
                  v2062 = *(a2 + 16);
                  v2058 = *a2;
                  v2059 = *(a2 + 8);
                }
              }

              else
              {
                v2076 = *v2075 >> (~v2062++ & 7);
                *v2065 = v2062;
                LODWORD(v2075) = 8 * (v2076 & 1);
              }

              v2077 = v2075 | v2074;
              v2078 = (v2058 + (v2062 >> 3));
              if (v2078 >= v2059)
              {
                v2078 = *(a2 + 32);
                if (v2078)
                {
                  v2078(*(a2 + 24));
                  v2065 = (a2 + 16);
                  LODWORD(v2078) = 0;
                  v2062 = *(a2 + 16);
                  v2058 = *a2;
                  v2059 = *(a2 + 8);
                }
              }

              else
              {
                v2079 = *v2078 >> (~v2062++ & 7);
                *v2065 = v2062;
                LODWORD(v2078) = 4 * (v2079 & 1);
              }

              v2080 = v2078 | v2077;
              v2081 = (v2058 + (v2062 >> 3));
              if (v2081 >= v2059)
              {
                v2081 = *(a2 + 32);
                if (v2081)
                {
                  v2081(*(a2 + 24));
                  v2065 = (a2 + 16);
                  LODWORD(v2081) = 0;
                  v2062 = *(a2 + 16);
                  v2058 = *a2;
                  v2059 = *(a2 + 8);
                }
              }

              else
              {
                v2082 = *v2081 >> (~v2062++ & 7);
                *v2065 = v2062;
                LODWORD(v2081) = 2 * (v2082 & 1);
              }

              v2083 = v2081 | v2080;
              v2084 = (v2058 + (v2062 >> 3));
              if (v2084 >= v2059)
              {
                v2086 = *(a2 + 32);
                if (v2086)
                {
                  v2086(*(a2 + 24));
                }

                v2085 = 0;
              }

              else
              {
                v2085 = (*v2084 >> (~v2062 & 7)) & 1;
                *v2065 = v2062 + 1;
              }

              v2087 = ((v2085 | v2083) << 25) >> 25;
              v1224 = v2580;
              v2580[4073] = v2087;
            }
          }

          v2088 = *(a2 + 16);
          v2089 = *a2;
          v2090 = *(a2 + 8);
          v2091 = (*a2 + (v2088 >> 3));
          if (v2091 >= v2090)
          {
            v2098 = *(a2 + 32);
            if (v2098)
            {
              v2098(*(a2 + 24));
            }
          }

          else
          {
            v2092 = *v2091;
            v2093 = v2088 + 1;
            *v2583 = v2088 + 1;
            if ((v2092 >> (~v2088 & 7)))
            {
              v2094 = (v2089 + (v2093 >> 3));
              if (v2094 >= v2090)
              {
                v2099 = *(a2 + 32);
                if (v2099)
                {
                  v2099(*(a2 + 24));
                  v2097 = 0;
                  v2093 = *(a2 + 16);
                  v2089 = *a2;
                  v2090 = *(a2 + 8);
                }

                else
                {
                  v2097 = 0;
                }

                v2096 = (a2 + 16);
              }

              else
              {
                v2095 = *v2094 >> (~v2093 & 7);
                v2093 = v2088 + 2;
                v2096 = (a2 + 16);
                *v2583 = v2088 + 2;
                v2097 = (v2095 & 1) << 6;
              }

              v2100 = (v2089 + (v2093 >> 3));
              if (v2100 >= v2090)
              {
                v2100 = *(a2 + 32);
                if (v2100)
                {
                  v2100(*(a2 + 24));
                  v2096 = (a2 + 16);
                  LODWORD(v2100) = 0;
                  v2093 = *(a2 + 16);
                  v2089 = *a2;
                  v2090 = *(a2 + 8);
                }
              }

              else
              {
                v2101 = *v2100 >> (~v2093++ & 7);
                *v2096 = v2093;
                LODWORD(v2100) = 32 * (v2101 & 1);
              }

              v2102 = v2100 | v2097;
              v2103 = (v2089 + (v2093 >> 3));
              if (v2103 >= v2090)
              {
                v2103 = *(a2 + 32);
                if (v2103)
                {
                  v2103(*(a2 + 24));
                  v2096 = (a2 + 16);
                  LODWORD(v2103) = 0;
                  v2093 = *(a2 + 16);
                  v2089 = *a2;
                  v2090 = *(a2 + 8);
                }
              }

              else
              {
                v2104 = *v2103 >> (~v2093++ & 7);
                *v2096 = v2093;
                LODWORD(v2103) = 16 * (v2104 & 1);
              }

              v2105 = v2103 | v2102;
              v2106 = (v2089 + (v2093 >> 3));
              if (v2106 >= v2090)
              {
                v2106 = *(a2 + 32);
                if (v2106)
                {
                  v2106(*(a2 + 24));
                  v2096 = (a2 + 16);
                  LODWORD(v2106) = 0;
                  v2093 = *(a2 + 16);
                  v2089 = *a2;
                  v2090 = *(a2 + 8);
                }
              }

              else
              {
                v2107 = *v2106 >> (~v2093++ & 7);
                *v2096 = v2093;
                LODWORD(v2106) = 8 * (v2107 & 1);
              }

              v2108 = v2106 | v2105;
              v2109 = (v2089 + (v2093 >> 3));
              if (v2109 >= v2090)
              {
                v2109 = *(a2 + 32);
                if (v2109)
                {
                  v2109(*(a2 + 24));
                  v2096 = (a2 + 16);
                  LODWORD(v2109) = 0;
                  v2093 = *(a2 + 16);
                  v2089 = *a2;
                  v2090 = *(a2 + 8);
                }
              }

              else
              {
                v2110 = *v2109 >> (~v2093++ & 7);
                *v2096 = v2093;
                LODWORD(v2109) = 4 * (v2110 & 1);
              }

              v2111 = v2109 | v2108;
              v2112 = (v2089 + (v2093 >> 3));
              if (v2112 >= v2090)
              {
                v2112 = *(a2 + 32);
                if (v2112)
                {
                  v2112(*(a2 + 24));
                  v2096 = (a2 + 16);
                  LODWORD(v2112) = 0;
                  v2093 = *(a2 + 16);
                  v2089 = *a2;
                  v2090 = *(a2 + 8);
                }
              }

              else
              {
                v2113 = *v2112 >> (~v2093++ & 7);
                *v2096 = v2093;
                LODWORD(v2112) = 2 * (v2113 & 1);
              }

              v2114 = v2112 | v2111;
              v2115 = (v2089 + (v2093 >> 3));
              if (v2115 >= v2090)
              {
                v2117 = *(a2 + 32);
                if (v2117)
                {
                  v2117(*(a2 + 24));
                }

                v2116 = 0;
              }

              else
              {
                v2116 = (*v2115 >> (~v2093 & 7)) & 1;
                *v2096 = v2093 + 1;
              }

              v2118 = ((v2116 | v2114) << 25) >> 25;
              v1224 = v2580;
              v2580[4074] = v2118;
            }
          }

          v2119 = *(a2 + 16);
          v2120 = *a2;
          v2121 = *(a2 + 8);
          v2122 = (*a2 + (v2119 >> 3));
          if (v2122 >= v2121)
          {
            v2129 = *(a2 + 32);
            if (v2129)
            {
              v2129(*(a2 + 24));
            }
          }

          else
          {
            v2123 = *v2122;
            v2124 = v2119 + 1;
            *v2583 = v2119 + 1;
            if ((v2123 >> (~v2119 & 7)))
            {
              v2125 = (v2120 + (v2124 >> 3));
              if (v2125 >= v2121)
              {
                v2130 = *(a2 + 32);
                if (v2130)
                {
                  v2130(*(a2 + 24));
                  v2128 = 0;
                  v2124 = *(a2 + 16);
                  v2120 = *a2;
                  v2121 = *(a2 + 8);
                }

                else
                {
                  v2128 = 0;
                }

                v2127 = (a2 + 16);
              }

              else
              {
                v2126 = *v2125 >> (~v2124 & 7);
                v2124 = v2119 + 2;
                v2127 = (a2 + 16);
                *v2583 = v2119 + 2;
                v2128 = (v2126 & 1) << 6;
              }

              v2131 = (v2120 + (v2124 >> 3));
              if (v2131 >= v2121)
              {
                v2131 = *(a2 + 32);
                if (v2131)
                {
                  v2131(*(a2 + 24));
                  v2127 = (a2 + 16);
                  LODWORD(v2131) = 0;
                  v2124 = *(a2 + 16);
                  v2120 = *a2;
                  v2121 = *(a2 + 8);
                }
              }

              else
              {
                v2132 = *v2131 >> (~v2124++ & 7);
                *v2127 = v2124;
                LODWORD(v2131) = 32 * (v2132 & 1);
              }

              v2133 = v2131 | v2128;
              v2134 = (v2120 + (v2124 >> 3));
              if (v2134 >= v2121)
              {
                v2134 = *(a2 + 32);
                if (v2134)
                {
                  v2134(*(a2 + 24));
                  v2127 = (a2 + 16);
                  LODWORD(v2134) = 0;
                  v2124 = *(a2 + 16);
                  v2120 = *a2;
                  v2121 = *(a2 + 8);
                }
              }

              else
              {
                v2135 = *v2134 >> (~v2124++ & 7);
                *v2127 = v2124;
                LODWORD(v2134) = 16 * (v2135 & 1);
              }

              v2136 = v2134 | v2133;
              v2137 = (v2120 + (v2124 >> 3));
              if (v2137 >= v2121)
              {
                v2137 = *(a2 + 32);
                if (v2137)
                {
                  v2137(*(a2 + 24));
                  v2127 = (a2 + 16);
                  LODWORD(v2137) = 0;
                  v2124 = *(a2 + 16);
                  v2120 = *a2;
                  v2121 = *(a2 + 8);
                }
              }

              else
              {
                v2138 = *v2137 >> (~v2124++ & 7);
                *v2127 = v2124;
                LODWORD(v2137) = 8 * (v2138 & 1);
              }

              v2139 = v2137 | v2136;
              v2140 = (v2120 + (v2124 >> 3));
              if (v2140 >= v2121)
              {
                v2140 = *(a2 + 32);
                if (v2140)
                {
                  v2140(*(a2 + 24));
                  v2127 = (a2 + 16);
                  LODWORD(v2140) = 0;
                  v2124 = *(a2 + 16);
                  v2120 = *a2;
                  v2121 = *(a2 + 8);
                }
              }

              else
              {
                v2141 = *v2140 >> (~v2124++ & 7);
                *v2127 = v2124;
                LODWORD(v2140) = 4 * (v2141 & 1);
              }

              v2142 = v2140 | v2139;
              v2143 = (v2120 + (v2124 >> 3));
              if (v2143 >= v2121)
              {
                v2143 = *(a2 + 32);
                if (v2143)
                {
                  v2143(*(a2 + 24));
                  v2127 = (a2 + 16);
                  LODWORD(v2143) = 0;
                  v2124 = *(a2 + 16);
                  v2120 = *a2;
                  v2121 = *(a2 + 8);
                }
              }

              else
              {
                v2144 = *v2143 >> (~v2124++ & 7);
                *v2127 = v2124;
                LODWORD(v2143) = 2 * (v2144 & 1);
              }

              v2145 = v2143 | v2142;
              v2146 = (v2120 + (v2124 >> 3));
              if (v2146 >= v2121)
              {
                v2148 = *(a2 + 32);
                if (v2148)
                {
                  v2148(*(a2 + 24));
                }

                v2147 = 0;
              }

              else
              {
                v2147 = (*v2146 >> (~v2124 & 7)) & 1;
                *v2127 = v2124 + 1;
              }

              v2149 = ((v2147 | v2145) << 25) >> 25;
              v1224 = v2580;
              v2580[4075] = v2149;
            }
          }

          v2150 = *(a2 + 16);
          v2151 = *a2;
          v2152 = *(a2 + 8);
          v2153 = (*a2 + (v2150 >> 3));
          if (v2153 >= v2152)
          {
            v2160 = *(a2 + 32);
            if (v2160)
            {
              v2160(*(a2 + 24));
            }
          }

          else
          {
            v2154 = *v2153;
            v2155 = v2150 + 1;
            *v2583 = v2150 + 1;
            if ((v2154 >> (~v2150 & 7)))
            {
              v2156 = (v2151 + (v2155 >> 3));
              if (v2156 >= v2152)
              {
                v2161 = *(a2 + 32);
                if (v2161)
                {
                  v2161(*(a2 + 24));
                  v2159 = 0;
                  v2155 = *(a2 + 16);
                  v2151 = *a2;
                  v2152 = *(a2 + 8);
                }

                else
                {
                  v2159 = 0;
                }

                v2158 = (a2 + 16);
              }

              else
              {
                v2157 = *v2156 >> (~v2155 & 7);
                v2155 = v2150 + 2;
                v2158 = (a2 + 16);
                *v2583 = v2150 + 2;
                v2159 = (v2157 & 1) << 6;
              }

              v2162 = (v2151 + (v2155 >> 3));
              if (v2162 >= v2152)
              {
                v2162 = *(a2 + 32);
                if (v2162)
                {
                  v2162(*(a2 + 24));
                  v2158 = (a2 + 16);
                  LODWORD(v2162) = 0;
                  v2155 = *(a2 + 16);
                  v2151 = *a2;
                  v2152 = *(a2 + 8);
                }
              }

              else
              {
                v2163 = *v2162 >> (~v2155++ & 7);
                *v2158 = v2155;
                LODWORD(v2162) = 32 * (v2163 & 1);
              }

              v2164 = v2162 | v2159;
              v2165 = (v2151 + (v2155 >> 3));
              if (v2165 >= v2152)
              {
                v2165 = *(a2 + 32);
                if (v2165)
                {
                  v2165(*(a2 + 24));
                  v2158 = (a2 + 16);
                  LODWORD(v2165) = 0;
                  v2155 = *(a2 + 16);
                  v2151 = *a2;
                  v2152 = *(a2 + 8);
                }
              }

              else
              {
                v2166 = *v2165 >> (~v2155++ & 7);
                *v2158 = v2155;
                LODWORD(v2165) = 16 * (v2166 & 1);
              }

              v2167 = v2165 | v2164;
              v2168 = (v2151 + (v2155 >> 3));
              if (v2168 >= v2152)
              {
                v2168 = *(a2 + 32);
                if (v2168)
                {
                  v2168(*(a2 + 24));
                  v2158 = (a2 + 16);
                  LODWORD(v2168) = 0;
                  v2155 = *(a2 + 16);
                  v2151 = *a2;
                  v2152 = *(a2 + 8);
                }
              }

              else
              {
                v2169 = *v2168 >> (~v2155++ & 7);
                *v2158 = v2155;
                LODWORD(v2168) = 8 * (v2169 & 1);
              }

              v2170 = v2168 | v2167;
              v2171 = (v2151 + (v2155 >> 3));
              if (v2171 >= v2152)
              {
                v2171 = *(a2 + 32);
                if (v2171)
                {
                  v2171(*(a2 + 24));
                  v2158 = (a2 + 16);
                  LODWORD(v2171) = 0;
                  v2155 = *(a2 + 16);
                  v2151 = *a2;
                  v2152 = *(a2 + 8);
                }
              }

              else
              {
                v2172 = *v2171 >> (~v2155++ & 7);
                *v2158 = v2155;
                LODWORD(v2171) = 4 * (v2172 & 1);
              }

              v2173 = v2171 | v2170;
              v2174 = (v2151 + (v2155 >> 3));
              if (v2174 >= v2152)
              {
                v2174 = *(a2 + 32);
                if (v2174)
                {
                  v2174(*(a2 + 24));
                  v2158 = (a2 + 16);
                  LODWORD(v2174) = 0;
                  v2155 = *(a2 + 16);
                  v2151 = *a2;
                  v2152 = *(a2 + 8);
                }
              }

              else
              {
                v2175 = *v2174 >> (~v2155++ & 7);
                *v2158 = v2155;
                LODWORD(v2174) = 2 * (v2175 & 1);
              }

              v2176 = v2174 | v2173;
              v2177 = (v2151 + (v2155 >> 3));
              if (v2177 >= v2152)
              {
                v2179 = *(a2 + 32);
                if (v2179)
                {
                  v2179(*(a2 + 24));
                }

                v2178 = 0;
              }

              else
              {
                v2178 = (*v2177 >> (~v2155 & 7)) & 1;
                *v2158 = v2155 + 1;
              }

              v2180 = ((v2178 | v2176) << 25) >> 25;
              v1224 = v2580;
              v2580[4076] = v2180;
            }
          }

          v2181 = *(a2 + 16);
          v2182 = *a2;
          v2183 = *(a2 + 8);
          v2184 = (*a2 + (v2181 >> 3));
          if (v2184 >= v2183)
          {
            v2191 = *(a2 + 32);
            if (v2191)
            {
              v2191(*(a2 + 24));
            }
          }

          else
          {
            v2185 = *v2184;
            v2186 = v2181 + 1;
            *v2583 = v2181 + 1;
            if ((v2185 >> (~v2181 & 7)))
            {
              v2187 = (v2182 + (v2186 >> 3));
              if (v2187 >= v2183)
              {
                v2192 = *(a2 + 32);
                if (v2192)
                {
                  v2192(*(a2 + 24));
                  v2190 = 0;
                  v2186 = *(a2 + 16);
                  v2182 = *a2;
                  v2183 = *(a2 + 8);
                }

                else
                {
                  v2190 = 0;
                }

                v2189 = (a2 + 16);
              }

              else
              {
                v2188 = *v2187 >> (~v2186 & 7);
                v2186 = v2181 + 2;
                v2189 = (a2 + 16);
                *v2583 = v2181 + 2;
                v2190 = (v2188 & 1) << 6;
              }

              v2193 = (v2182 + (v2186 >> 3));
              if (v2193 >= v2183)
              {
                v2193 = *(a2 + 32);
                if (v2193)
                {
                  v2193(*(a2 + 24));
                  v2189 = (a2 + 16);
                  LODWORD(v2193) = 0;
                  v2186 = *(a2 + 16);
                  v2182 = *a2;
                  v2183 = *(a2 + 8);
                }
              }

              else
              {
                v2194 = *v2193 >> (~v2186++ & 7);
                *v2189 = v2186;
                LODWORD(v2193) = 32 * (v2194 & 1);
              }

              v2195 = v2193 | v2190;
              v2196 = (v2182 + (v2186 >> 3));
              if (v2196 >= v2183)
              {
                v2196 = *(a2 + 32);
                if (v2196)
                {
                  v2196(*(a2 + 24));
                  v2189 = (a2 + 16);
                  LODWORD(v2196) = 0;
                  v2186 = *(a2 + 16);
                  v2182 = *a2;
                  v2183 = *(a2 + 8);
                }
              }

              else
              {
                v2197 = *v2196 >> (~v2186++ & 7);
                *v2189 = v2186;
                LODWORD(v2196) = 16 * (v2197 & 1);
              }

              v2198 = v2196 | v2195;
              v2199 = (v2182 + (v2186 >> 3));
              if (v2199 >= v2183)
              {
                v2199 = *(a2 + 32);
                if (v2199)
                {
                  v2199(*(a2 + 24));
                  v2189 = (a2 + 16);
                  LODWORD(v2199) = 0;
                  v2186 = *(a2 + 16);
                  v2182 = *a2;
                  v2183 = *(a2 + 8);
                }
              }

              else
              {
                v2200 = *v2199 >> (~v2186++ & 7);
                *v2189 = v2186;
                LODWORD(v2199) = 8 * (v2200 & 1);
              }

              v2201 = v2199 | v2198;
              v2202 = (v2182 + (v2186 >> 3));
              if (v2202 >= v2183)
              {
                v2202 = *(a2 + 32);
                if (v2202)
                {
                  v2202(*(a2 + 24));
                  v2189 = (a2 + 16);
                  LODWORD(v2202) = 0;
                  v2186 = *(a2 + 16);
                  v2182 = *a2;
                  v2183 = *(a2 + 8);
                }
              }

              else
              {
                v2203 = *v2202 >> (~v2186++ & 7);
                *v2189 = v2186;
                LODWORD(v2202) = 4 * (v2203 & 1);
              }

              v2204 = v2202 | v2201;
              v2205 = (v2182 + (v2186 >> 3));
              if (v2205 >= v2183)
              {
                v2205 = *(a2 + 32);
                if (v2205)
                {
                  v2205(*(a2 + 24));
                  v2189 = (a2 + 16);
                  LODWORD(v2205) = 0;
                  v2186 = *(a2 + 16);
                  v2182 = *a2;
                  v2183 = *(a2 + 8);
                }
              }

              else
              {
                v2206 = *v2205 >> (~v2186++ & 7);
                *v2189 = v2186;
                LODWORD(v2205) = 2 * (v2206 & 1);
              }

              v2207 = v2205 | v2204;
              v2208 = (v2182 + (v2186 >> 3));
              if (v2208 >= v2183)
              {
                v2210 = *(a2 + 32);
                if (v2210)
                {
                  v2210(*(a2 + 24));
                }

                v2209 = 0;
              }

              else
              {
                v2209 = (*v2208 >> (~v2186 & 7)) & 1;
                *v2189 = v2186 + 1;
              }

              v2211 = ((v2209 | v2207) << 25) >> 25;
              v1224 = v2580;
              v2580[4077] = v2211;
            }
          }

          v2212 = *(a2 + 16);
          v2213 = *a2;
          v2214 = *(a2 + 8);
          v2215 = (*a2 + (v2212 >> 3));
          if (v2215 >= v2214)
          {
            v2222 = *(a2 + 32);
            if (v2222)
            {
              v2222(*(a2 + 24));
            }
          }

          else
          {
            v2216 = *v2215;
            v2217 = v2212 + 1;
            *v2583 = v2212 + 1;
            if ((v2216 >> (~v2212 & 7)))
            {
              v2218 = (v2213 + (v2217 >> 3));
              if (v2218 >= v2214)
              {
                v2223 = *(a2 + 32);
                if (v2223)
                {
                  v2223(*(a2 + 24));
                  v2221 = 0;
                  v2217 = *(a2 + 16);
                  v2213 = *a2;
                  v2214 = *(a2 + 8);
                }

                else
                {
                  v2221 = 0;
                }

                v2220 = (a2 + 16);
              }

              else
              {
                v2219 = *v2218 >> (~v2217 & 7);
                v2217 = v2212 + 2;
                v2220 = (a2 + 16);
                *v2583 = v2212 + 2;
                v2221 = (v2219 & 1) << 6;
              }

              v2224 = (v2213 + (v2217 >> 3));
              if (v2224 >= v2214)
              {
                v2224 = *(a2 + 32);
                if (v2224)
                {
                  v2224(*(a2 + 24));
                  v2220 = (a2 + 16);
                  LODWORD(v2224) = 0;
                  v2217 = *(a2 + 16);
                  v2213 = *a2;
                  v2214 = *(a2 + 8);
                }
              }

              else
              {
                v2225 = *v2224 >> (~v2217++ & 7);
                *v2220 = v2217;
                LODWORD(v2224) = 32 * (v2225 & 1);
              }

              v2226 = v2224 | v2221;
              v2227 = (v2213 + (v2217 >> 3));
              if (v2227 >= v2214)
              {
                v2227 = *(a2 + 32);
                if (v2227)
                {
                  v2227(*(a2 + 24));
                  v2220 = (a2 + 16);
                  LODWORD(v2227) = 0;
                  v2217 = *(a2 + 16);
                  v2213 = *a2;
                  v2214 = *(a2 + 8);
                }
              }

              else
              {
                v2228 = *v2227 >> (~v2217++ & 7);
                *v2220 = v2217;
                LODWORD(v2227) = 16 * (v2228 & 1);
              }

              v2229 = v2227 | v2226;
              v2230 = (v2213 + (v2217 >> 3));
              if (v2230 >= v2214)
              {
                v2230 = *(a2 + 32);
                if (v2230)
                {
                  v2230(*(a2 + 24));
                  v2220 = (a2 + 16);
                  LODWORD(v2230) = 0;
                  v2217 = *(a2 + 16);
                  v2213 = *a2;
                  v2214 = *(a2 + 8);
                }
              }

              else
              {
                v2231 = *v2230 >> (~v2217++ & 7);
                *v2220 = v2217;
                LODWORD(v2230) = 8 * (v2231 & 1);
              }

              v2232 = v2230 | v2229;
              v2233 = (v2213 + (v2217 >> 3));
              if (v2233 >= v2214)
              {
                v2233 = *(a2 + 32);
                if (v2233)
                {
                  v2233(*(a2 + 24));
                  v2220 = (a2 + 16);
                  LODWORD(v2233) = 0;
                  v2217 = *(a2 + 16);
                  v2213 = *a2;
                  v2214 = *(a2 + 8);
                }
              }

              else
              {
                v2234 = *v2233 >> (~v2217++ & 7);
                *v2220 = v2217;
                LODWORD(v2233) = 4 * (v2234 & 1);
              }

              v2235 = v2233 | v2232;
              v2236 = (v2213 + (v2217 >> 3));
              if (v2236 >= v2214)
              {
                v2236 = *(a2 + 32);
                if (v2236)
                {
                  v2236(*(a2 + 24));
                  v2220 = (a2 + 16);
                  LODWORD(v2236) = 0;
                  v2217 = *(a2 + 16);
                  v2213 = *a2;
                  v2214 = *(a2 + 8);
                }
              }

              else
              {
                v2237 = *v2236 >> (~v2217++ & 7);
                *v2220 = v2217;
                LODWORD(v2236) = 2 * (v2237 & 1);
              }

              v2238 = v2236 | v2235;
              v2239 = (v2213 + (v2217 >> 3));
              if (v2239 >= v2214)
              {
                v2241 = *(a2 + 32);
                if (v2241)
                {
                  v2241(*(a2 + 24));
                }

                v2240 = 0;
              }

              else
              {
                v2240 = (*v2239 >> (~v2217 & 7)) & 1;
                *v2220 = v2217 + 1;
              }

              v2242 = ((v2240 | v2238) << 25) >> 25;
              v1224 = v2580;
              v2580[4078] = v2242;
            }
          }

          v2243 = *(a2 + 16);
          v2244 = *a2;
          v2245 = *(a2 + 8);
          v2246 = (*a2 + (v2243 >> 3));
          if (v2246 >= v2245)
          {
            v2253 = *(a2 + 32);
            v1096 = (a2 + 16);
            if (v2253)
            {
              v2253(*(a2 + 24));
              v1096 = (a2 + 16);
            }
          }

          else
          {
            v2247 = *v2246;
            v2248 = v2243 + 1;
            *v2583 = v2243 + 1;
            v2249 = v2247 >> (~v2243 & 7);
            v1096 = (a2 + 16);
            if (v2249)
            {
              v2250 = (v2244 + (v2248 >> 3));
              if (v2250 >= v2245)
              {
                v2254 = *(a2 + 32);
                if (v2254)
                {
                  v2254(*(a2 + 24));
                  v1096 = (a2 + 16);
                  v2252 = 0;
                  v2248 = *(a2 + 16);
                  v2244 = *a2;
                  v2245 = *(a2 + 8);
                }

                else
                {
                  v2252 = 0;
                }
              }

              else
              {
                v1096 = (a2 + 16);
                v2251 = *v2250 >> (~v2248 & 7);
                v2248 = v2243 + 2;
                *v2583 = v2243 + 2;
                v2252 = (v2251 & 1) << 6;
              }

              v2255 = (v2244 + (v2248 >> 3));
              if (v2255 >= v2245)
              {
                v2255 = *(a2 + 32);
                if (v2255)
                {
                  v2255(*(a2 + 24));
                  v1096 = (a2 + 16);
                  LODWORD(v2255) = 0;
                  v2248 = *(a2 + 16);
                  v2244 = *a2;
                  v2245 = *(a2 + 8);
                }
              }

              else
              {
                v2256 = *v2255 >> (~v2248++ & 7);
                *v1096 = v2248;
                LODWORD(v2255) = 32 * (v2256 & 1);
              }

              v2257 = v2255 | v2252;
              v2258 = (v2244 + (v2248 >> 3));
              if (v2258 >= v2245)
              {
                v2258 = *(a2 + 32);
                if (v2258)
                {
                  v2258(*(a2 + 24));
                  v1096 = (a2 + 16);
                  LODWORD(v2258) = 0;
                  v2248 = *(a2 + 16);
                  v2244 = *a2;
                  v2245 = *(a2 + 8);
                }
              }

              else
              {
                v2259 = *v2258 >> (~v2248++ & 7);
                *v1096 = v2248;
                LODWORD(v2258) = 16 * (v2259 & 1);
              }

              v2260 = v2258 | v2257;
              v2261 = (v2244 + (v2248 >> 3));
              if (v2261 >= v2245)
              {
                v2261 = *(a2 + 32);
                if (v2261)
                {
                  v2261(*(a2 + 24));
                  v1096 = (a2 + 16);
                  LODWORD(v2261) = 0;
                  v2248 = *(a2 + 16);
                  v2244 = *a2;
                  v2245 = *(a2 + 8);
                }
              }

              else
              {
                v2262 = *v2261 >> (~v2248++ & 7);
                *v1096 = v2248;
                LODWORD(v2261) = 8 * (v2262 & 1);
              }

              v2263 = v2261 | v2260;
              v2264 = (v2244 + (v2248 >> 3));
              if (v2264 >= v2245)
              {
                v2264 = *(a2 + 32);
                if (v2264)
                {
                  v2264(*(a2 + 24));
                  v1096 = (a2 + 16);
                  LODWORD(v2264) = 0;
                  v2248 = *(a2 + 16);
                  v2244 = *a2;
                  v2245 = *(a2 + 8);
                }
              }

              else
              {
                v2265 = *v2264 >> (~v2248++ & 7);
                *v1096 = v2248;
                LODWORD(v2264) = 4 * (v2265 & 1);
              }

              v2266 = v2264 | v2263;
              v2267 = (v2244 + (v2248 >> 3));
              if (v2267 >= v2245)
              {
                v2267 = *(a2 + 32);
                if (v2267)
                {
                  v2267(*(a2 + 24));
                  v1096 = (a2 + 16);
                  LODWORD(v2267) = 0;
                  v2248 = *(a2 + 16);
                  v2244 = *a2;
                  v2245 = *(a2 + 8);
                }
              }

              else
              {
                v2268 = *v2267 >> (~v2248++ & 7);
                *v1096 = v2248;
                LODWORD(v2267) = 2 * (v2268 & 1);
              }

              v2269 = v2267 | v2266;
              v2270 = (v2244 + (v2248 >> 3));
              if (v2270 >= v2245)
              {
                v2272 = *(a2 + 32);
                if (v2272)
                {
                  v2272(*(a2 + 24));
                  v1096 = (a2 + 16);
                }

                v2271 = 0;
              }

              else
              {
                v2271 = (*v2270 >> (~v2248 & 7)) & 1;
                *v1096 = v2248 + 1;
              }

              v2273 = ((v2271 | v2269) << 25) >> 25;
              v1224 = v2580;
              v2580[4079] = v2273;
            }
          }
        }
      }
    }
  }

  *(*(v1095 + 15432) + 1468) = *v1099;
  *(*(v1095 + 15432) + 1476) = *(v1224 + 2039);
  if ((v2564->__sig & 1) == 0)
  {
LABEL_1881:
    if (!*(v2570 + 67) || (v2568[496] & 1) != 0)
    {
      goto LABEL_1883;
    }

    v1255 = *(*(v2581 + 1560) + 77);
    v1256 = *(a2 + 16);
    v1257 = *a2;
    v1258 = *(a2 + 8);
    v1259 = (*a2 + (v1256 >> 3));
    if (v1259 >= v1258)
    {
      v1271 = *(a2 + 32);
      if (v1271)
      {
        v1271(*(a2 + 24));
        v1096 = (a2 + 16);
        v1261 = 0;
        LODWORD(v1256) = *(a2 + 16);
        v1257 = *a2;
        v1258 = *(a2 + 8);
        v1262 = (*a2 + (v1256 >> 3));
        if (v1262 >= v1258)
        {
          goto LABEL_1922;
        }
      }

      else
      {
        v1261 = 0;
        v1262 = (v1257 + (v1256 >> 3));
        if (v1262 >= v1258)
        {
          goto LABEL_1922;
        }
      }

LABEL_1895:
      LODWORD(v1262) = (*v1262 >> (~v1256 & 7)) & 1;
      LODWORD(v1256) = v1256 + 1;
      *v1096 = v1256;
    }

    else
    {
      v1260 = *v1259 >> (~v1256 & 7);
      LODWORD(v1256) = v1256 + 1;
      *v1096 = v1256;
      v1261 = 2 * (v1260 & 1);
      v1262 = (v1257 + (v1256 >> 3));
      if (v1262 < v1258)
      {
        goto LABEL_1895;
      }

LABEL_1922:
      v1262 = *(a2 + 32);
      if (v1262)
      {
        v1262(*(a2 + 24));
        v1096 = (a2 + 16);
        LODWORD(v1262) = 0;
        LODWORD(v1256) = *(a2 + 16);
        v1257 = *a2;
        v1258 = *(a2 + 8);
      }
    }

    *(v2581 + 448) = (v1262 | v1261) + 3;
    v1272 = (v1257 + (v1256 >> 3));
    if (v1272 >= v1258)
    {
      v1277 = *(a2 + 32);
      if (v1277)
      {
        v1277(*(a2 + 24));
        v1096 = (a2 + 16);
        v1274 = 0;
        LODWORD(v1256) = *(a2 + 16);
        v1275 = (*a2 + (v1256 >> 3));
        if (v1275 >= *(a2 + 8))
        {
          goto LABEL_1929;
        }
      }

      else
      {
        v1274 = 0;
        v1275 = (v1257 + (v1256 >> 3));
        if (v1275 >= v1258)
        {
          goto LABEL_1929;
        }
      }

LABEL_1926:
      v1276 = (*v1275 >> (~v1256 & 7)) & 1;
      *v1096 = v1256 + 1;
    }

    else
    {
      v1273 = *v1272 >> (~v1256 & 7);
      LODWORD(v1256) = v1256 + 1;
      *v1096 = v1256;
      v1274 = 2 * (v1273 & 1);
      v1275 = (v1257 + (v1256 >> 3));
      if (v1275 < v1258)
      {
        goto LABEL_1926;
      }

LABEL_1929:
      v1278 = *(a2 + 32);
      if (v1278)
      {
        v1278(*(a2 + 24));
        v1096 = (a2 + 16);
      }

      v1276 = 0;
    }

    *(v2581 + 584) = v1276 | v1274;
    *(v2581 + 452) = 1 << (v1276 | v1274);
    v1279 = v2582 + 38776;
    v1280 = v2582 + 38840;
    if (v1255)
    {
      v1281 = 0;
      while (1)
      {
        v1283 = *(a2 + 16);
        v1284 = *a2;
        v1285 = *(a2 + 8);
        v1286 = (*a2 + (v1283 >> 3));
        if (v1286 >= v1285)
        {
          v1302 = *(a2 + 32);
          if (v1302)
          {
            v1302(*(a2 + 24));
            v1096 = (a2 + 16);
            v1288 = 0;
            LODWORD(v1283) = *(a2 + 16);
            v1284 = *a2;
            v1285 = *(a2 + 8);
            v1289 = (*a2 + (v1283 >> 3));
            if (v1289 < v1285)
            {
              goto LABEL_1938;
            }
          }

          else
          {
            v1288 = 0;
            v1289 = (v1284 + (v1283 >> 3));
            if (v1289 < v1285)
            {
LABEL_1938:
              v1290 = *v1289 >> (~v1283 & 7);
              LODWORD(v1283) = v1283 + 1;
              *v1096 = v1283;
              v1291 = 16 * (v1290 & 1);
              v1292 = (v1284 + (v1283 >> 3));
              if (v1292 < v1285)
              {
                goto LABEL_1939;
              }

              goto LABEL_1947;
            }
          }
        }

        else
        {
          v1287 = *v1286 >> (~v1283 & 7);
          LODWORD(v1283) = v1283 + 1;
          *v1096 = v1283;
          v1288 = 32 * (v1287 & 1);
          v1289 = (v1284 + (v1283 >> 3));
          if (v1289 < v1285)
          {
            goto LABEL_1938;
          }
        }

        v1303 = *(a2 + 32);
        if (v1303)
        {
          v1303(*(a2 + 24));
          v1096 = (a2 + 16);
          v1291 = 0;
          LODWORD(v1283) = *(a2 + 16);
          v1284 = *a2;
          v1285 = *(a2 + 8);
          v1292 = (*a2 + (v1283 >> 3));
          if (v1292 < v1285)
          {
            goto LABEL_1939;
          }
        }

        else
        {
          v1291 = 0;
          v1292 = (v1284 + (v1283 >> 3));
          if (v1292 < v1285)
          {
LABEL_1939:
            v1293 = *v1292 >> (~v1283 & 7);
            LODWORD(v1283) = v1283 + 1;
            *v1096 = v1283;
            v1294 = 8 * (v1293 & 1);
            v1295 = (v1284 + (v1283 >> 3));
            if (v1295 < v1285)
            {
              goto LABEL_1940;
            }

            goto LABEL_1949;
          }
        }

LABEL_1947:
        v1304 = *(a2 + 32);
        if (v1304)
        {
          v1304(*(a2 + 24));
          v1096 = (a2 + 16);
          v1294 = 0;
          LODWORD(v1283) = *(a2 + 16);
          v1284 = *a2;
          v1285 = *(a2 + 8);
          v1295 = (*a2 + (v1283 >> 3));
          if (v1295 < v1285)
          {
            goto LABEL_1940;
          }
        }

        else
        {
          v1294 = 0;
          v1295 = (v1284 + (v1283 >> 3));
          if (v1295 < v1285)
          {
LABEL_1940:
            v1296 = *v1295 >> (~v1283 & 7);
            LODWORD(v1283) = v1283 + 1;
            *v1096 = v1283;
            v1297 = 4 * (v1296 & 1);
            v1298 = (v1284 + (v1283 >> 3));
            if (v1298 < v1285)
            {
              goto LABEL_1941;
            }

            goto LABEL_1951;
          }
        }

LABEL_1949:
        v1305 = *(a2 + 32);
        if (v1305)
        {
          v1305(*(a2 + 24));
          v1096 = (a2 + 16);
          v1297 = 0;
          LODWORD(v1283) = *(a2 + 16);
          v1284 = *a2;
          v1285 = *(a2 + 8);
          v1298 = (*a2 + (v1283 >> 3));
          if (v1298 < v1285)
          {
            goto LABEL_1941;
          }
        }

        else
        {
          v1297 = 0;
          v1298 = (v1284 + (v1283 >> 3));
          if (v1298 < v1285)
          {
LABEL_1941:
            v1299 = *v1298 >> (~v1283 & 7);
            LODWORD(v1283) = v1283 + 1;
            *v1096 = v1283;
            v1300 = 2 * (v1299 & 1);
            v1301 = (v1284 + (v1283 >> 3));
            if (v1301 >= v1285)
            {
              goto LABEL_1963;
            }

            goto LABEL_1934;
          }
        }

LABEL_1951:
        v1306 = *(a2 + 32);
        if (v1306)
        {
          v1306(*(a2 + 24));
          v1096 = (a2 + 16);
          v1300 = 0;
          LODWORD(v1283) = *(a2 + 16);
          v1301 = (*a2 + (v1283 >> 3));
          if (v1301 >= *(a2 + 8))
          {
            goto LABEL_1963;
          }
        }

        else
        {
          v1300 = 0;
          v1301 = (v1284 + (v1283 >> 3));
          if (v1301 >= v1285)
          {
LABEL_1963:
            v1307 = *(a2 + 32);
            if (v1307)
            {
              v1307(*(a2 + 24));
              v1096 = (a2 + 16);
            }

            v1282 = 0;
            goto LABEL_1935;
          }
        }

LABEL_1934:
        v1282 = (*v1301 >> (~v1283 & 7)) & 1;
        *v1096 = v1283 + 1;
LABEL_1935:
        *(v1279 + 4 * v1281) = v1282 | v1300 | v1297 | v1294 | v1291 | v1288;
        *(v1280 + 4 * v1281++) = 0;
        v1095 = v2582;
        if (v1281 >= *(v2581 + 452))
        {
          goto LABEL_1883;
        }
      }
    }

    v1327 = 0;
    while (2)
    {
      v1329 = *(a2 + 16);
      v1330 = *a2;
      v1331 = *(a2 + 8);
      v1332 = (*a2 + (v1329 >> 3));
      if (v1332 >= v1331)
      {
        v1349 = *(a2 + 32);
        if (v1349)
        {
          v1349(*(a2 + 24));
          v1096 = (a2 + 16);
          v1334 = 0;
          LODWORD(v1329) = *(a2 + 16);
          v1330 = *a2;
          v1331 = *(a2 + 8);
          v1335 = (*a2 + (v1329 >> 3));
          if (v1335 >= v1331)
          {
            goto LABEL_2003;
          }
        }

        else
        {
          v1334 = 0;
          v1335 = (v1330 + (v1329 >> 3));
          if (v1335 >= v1331)
          {
            goto LABEL_2003;
          }
        }

LABEL_1996:
        v1336 = *v1335 >> (~v1329 & 7);
        LODWORD(v1329) = v1329 + 1;
        *v1096 = v1329;
        v1337 = 16 * (v1336 & 1);
        v1338 = (v1330 + (v1329 >> 3));
        if (v1338 < v1331)
        {
          goto LABEL_1997;
        }
      }

      else
      {
        v1333 = *v1332 >> (~v1329 & 7);
        LODWORD(v1329) = v1329 + 1;
        *v1096 = v1329;
        v1334 = 32 * (v1333 & 1);
        v1335 = (v1330 + (v1329 >> 3));
        if (v1335 < v1331)
        {
          goto LABEL_1996;
        }

LABEL_2003:
        v1350 = *(a2 + 32);
        if (v1350)
        {
          v1350(*(a2 + 24));
          v1096 = (a2 + 16);
          v1337 = 0;
          LODWORD(v1329) = *(a2 + 16);
          v1330 = *a2;
          v1331 = *(a2 + 8);
          v1338 = (*a2 + (v1329 >> 3));
          if (v1338 >= v1331)
          {
            break;
          }

LABEL_1997:
          v1339 = *v1338 >> (~v1329 & 7);
          LODWORD(v1329) = v1329 + 1;
          *v1096 = v1329;
          v1340 = 8 * (v1339 & 1);
          v1341 = (v1330 + (v1329 >> 3));
          if (v1341 < v1331)
          {
LABEL_1998:
            v1342 = *v1341 >> (~v1329 & 7);
            LODWORD(v1329) = v1329 + 1;
            *v1096 = v1329;
            v1343 = 4 * (v1342 & 1);
            v1344 = (v1330 + (v1329 >> 3));
            if (v1344 < v1331)
            {
              goto LABEL_1999;
            }

LABEL_2009:
            v1353 = *(a2 + 32);
            if (v1353)
            {
              v1353(*(a2 + 24));
              v1096 = (a2 + 16);
              v1346 = 0;
              LODWORD(v1329) = *(a2 + 16);
              v1330 = *a2;
              v1331 = *(a2 + 8);
              v1347 = (*a2 + (v1329 >> 3));
              if (v1347 >= v1331)
              {
                goto LABEL_2011;
              }
            }

            else
            {
              v1346 = 0;
              v1347 = (v1330 + (v1329 >> 3));
              if (v1347 >= v1331)
              {
                goto LABEL_2011;
              }
            }

LABEL_2000:
            v1348 = (*v1347 >> (~v1329 & 7)) & 1;
            *v1096 = v1329 + 1;
            goto LABEL_2024;
          }

LABEL_2007:
          v1352 = *(a2 + 32);
          if (v1352)
          {
            v1352(*(a2 + 24));
            v1096 = (a2 + 16);
            v1343 = 0;
            LODWORD(v1329) = *(a2 + 16);
            v1330 = *a2;
            v1331 = *(a2 + 8);
            v1344 = (*a2 + (v1329 >> 3));
            if (v1344 >= v1331)
            {
              goto LABEL_2009;
            }
          }

          else
          {
            v1343 = 0;
            v1344 = (v1330 + (v1329 >> 3));
            if (v1344 >= v1331)
            {
              goto LABEL_2009;
            }
          }

LABEL_1999:
          v1345 = *v1344 >> (~v1329 & 7);
          LODWORD(v1329) = v1329 + 1;
          *v1096 = v1329;
          v1346 = 2 * (v1345 & 1);
          v1347 = (v1330 + (v1329 >> 3));
          if (v1347 < v1331)
          {
            goto LABEL_2000;
          }

LABEL_2011:
          v1354 = *(a2 + 32);
          if (v1354)
          {
            v1354(*(a2 + 24));
            v1096 = (a2 + 16);
            v1348 = 0;
            v1330 = *a2;
            v1331 = *(a2 + 8);
          }

          else
          {
            v1348 = 0;
          }

LABEL_2024:
          *(v1279 + 4 * v1327) = v1348 | v1346 | v1343 | v1340 | v1337 | v1334;
          v1355 = *v1096;
          v1356 = (v1330 + (v1355 >> 3));
          if (v1356 >= v1331)
          {
            v1371 = *(a2 + 32);
            if (v1371)
            {
              v1371(*(a2 + 24));
              v1096 = (a2 + 16);
              v1358 = 0;
              LODWORD(v1355) = *(a2 + 16);
              v1330 = *a2;
              v1331 = *(a2 + 8);
              v1359 = (*a2 + (v1355 >> 3));
              if (v1359 >= v1331)
              {
                goto LABEL_2033;
              }
            }

            else
            {
              v1358 = 0;
              v1359 = (v1330 + (v1355 >> 3));
              if (v1359 >= v1331)
              {
                goto LABEL_2033;
              }
            }

LABEL_2026:
            v1360 = *v1359 >> (~v1355 & 7);
            LODWORD(v1355) = v1355 + 1;
            *v1096 = v1355;
            v1361 = 16 * (v1360 & 1);
            v1362 = (v1330 + (v1355 >> 3));
            if (v1362 < v1331)
            {
              goto LABEL_2027;
            }
          }

          else
          {
            v1357 = *v1356 >> (~v1355 & 7);
            LODWORD(v1355) = v1355 + 1;
            *v1096 = v1355;
            v1358 = 32 * (v1357 & 1);
            v1359 = (v1330 + (v1355 >> 3));
            if (v1359 < v1331)
            {
              goto LABEL_2026;
            }

LABEL_2033:
            v1372 = *(a2 + 32);
            if (v1372)
            {
              v1372(*(a2 + 24));
              v1096 = (a2 + 16);
              v1361 = 0;
              LODWORD(v1355) = *(a2 + 16);
              v1330 = *a2;
              v1331 = *(a2 + 8);
              v1362 = (*a2 + (v1355 >> 3));
              if (v1362 >= v1331)
              {
                goto LABEL_2035;
              }

LABEL_2027:
              v1363 = *v1362 >> (~v1355 & 7);
              LODWORD(v1355) = v1355 + 1;
              *v1096 = v1355;
              v1364 = 8 * (v1363 & 1);
              v1365 = (v1330 + (v1355 >> 3));
              if (v1365 < v1331)
              {
LABEL_2028:
                v1366 = *v1365 >> (~v1355 & 7);
                LODWORD(v1355) = v1355 + 1;
                *v1096 = v1355;
                v1367 = 4 * (v1366 & 1);
                v1368 = (v1330 + (v1355 >> 3));
                if (v1368 < v1331)
                {
                  goto LABEL_2029;
                }

LABEL_2039:
                v1375 = *(a2 + 32);
                if (v1375)
                {
                  v1375(*(a2 + 24));
                  v1096 = (a2 + 16);
                  v1370 = 0;
                  LODWORD(v1355) = *(a2 + 16);
                  v1328 = (*a2 + (v1355 >> 3));
                  if (v1328 >= *(a2 + 8))
                  {
                    goto LABEL_2051;
                  }

LABEL_1992:
                  LODWORD(v1328) = (*v1328 >> (~v1355 & 7)) & 1;
                  *v1096 = v1355 + 1;
LABEL_1993:
                  *(v1280 + 4 * v1327++) = v1328 | v1370 | v1367 | v1364 | v1361 | v1358;
                  v1095 = v2582;
                  if (v1327 >= *(v2581 + 452))
                  {
                    goto LABEL_1883;
                  }

                  continue;
                }

                v1370 = 0;
                v1328 = (v1330 + (v1355 >> 3));
                if (v1328 < v1331)
                {
                  goto LABEL_1992;
                }

LABEL_2051:
                v1328 = *(a2 + 32);
                if (v1328)
                {
                  v1328(*(a2 + 24));
                  v1096 = (a2 + 16);
                  LODWORD(v1328) = 0;
                }

                goto LABEL_1993;
              }

LABEL_2037:
              v1374 = *(a2 + 32);
              if (v1374)
              {
                v1374(*(a2 + 24));
                v1096 = (a2 + 16);
                v1367 = 0;
                LODWORD(v1355) = *(a2 + 16);
                v1330 = *a2;
                v1331 = *(a2 + 8);
                v1368 = (*a2 + (v1355 >> 3));
                if (v1368 >= v1331)
                {
                  goto LABEL_2039;
                }
              }

              else
              {
                v1367 = 0;
                v1368 = (v1330 + (v1355 >> 3));
                if (v1368 >= v1331)
                {
                  goto LABEL_2039;
                }
              }

LABEL_2029:
              v1369 = *v1368 >> (~v1355 & 7);
              LODWORD(v1355) = v1355 + 1;
              *v1096 = v1355;
              v1370 = 2 * (v1369 & 1);
              v1328 = (v1330 + (v1355 >> 3));
              if (v1328 < v1331)
              {
                goto LABEL_1992;
              }

              goto LABEL_2051;
            }

            v1361 = 0;
            v1362 = (v1330 + (v1355 >> 3));
            if (v1362 < v1331)
            {
              goto LABEL_2027;
            }
          }

LABEL_2035:
          v1373 = *(a2 + 32);
          if (v1373)
          {
            v1373(*(a2 + 24));
            v1096 = (a2 + 16);
            v1364 = 0;
            LODWORD(v1355) = *(a2 + 16);
            v1330 = *a2;
            v1331 = *(a2 + 8);
            v1365 = (*a2 + (v1355 >> 3));
            if (v1365 < v1331)
            {
              goto LABEL_2028;
            }
          }

          else
          {
            v1364 = 0;
            v1365 = (v1330 + (v1355 >> 3));
            if (v1365 < v1331)
            {
              goto LABEL_2028;
            }
          }

          goto LABEL_2037;
        }

        v1337 = 0;
        v1338 = (v1330 + (v1329 >> 3));
        if (v1338 < v1331)
        {
          goto LABEL_1997;
        }
      }

      break;
    }

    v1351 = *(a2 + 32);
    if (v1351)
    {
      v1351(*(a2 + 24));
      v1096 = (a2 + 16);
      v1340 = 0;
      LODWORD(v1329) = *(a2 + 16);
      v1330 = *a2;
      v1331 = *(a2 + 8);
      v1341 = (*a2 + (v1329 >> 3));
      if (v1341 < v1331)
      {
        goto LABEL_1998;
      }
    }

    else
    {
      v1340 = 0;
      v1341 = (v1330 + (v1329 >> 3));
      if (v1341 < v1331)
      {
        goto LABEL_1998;
      }
    }

    goto LABEL_2007;
  }

LABEL_1883:
  v1240 = v2581;
  if (v2568[500] & 1) != 0 || !*(v2570 + 68) || (v2568[496])
  {
    goto LABEL_2129;
  }

  v1241 = *(*(v2581 + 1560) + 77);
  if (*(*(v2581 + 1560) + 77))
  {
    v1242 = 1;
  }

  else
  {
    v1242 = 3;
  }

  v1243 = *(a2 + 16);
  v1244 = *a2;
  v1245 = *(a2 + 8);
  v1246 = (*a2 + (v1243 >> 3));
  if (v1246 < v1245)
  {
    v1247 = ~v1243 & 7;
    v1248 = *v1246;
    LODWORD(v1243) = v1243 + 1;
    *v1096 = v1243;
    v1249 = ((v1248 >> v1247) & 1) == 0;
    v1250 = (v1244 + (v1243 >> 3));
    if (v1250 < v1245)
    {
      goto LABEL_1891;
    }

LABEL_1900:
    v1264 = *(a2 + 32);
    if (v1264)
    {
      v1264(*(a2 + 24));
      v1096 = (a2 + 16);
    }

    v1253 = 1;
    goto LABEL_1903;
  }

  v1263 = *(a2 + 32);
  if (v1263)
  {
    v1263(*(a2 + 24));
    v1096 = (a2 + 16);
    LODWORD(v1243) = *(a2 + 16);
    v1249 = 1;
    v1250 = (*a2 + (v1243 >> 3));
    if (v1250 >= *(a2 + 8))
    {
      goto LABEL_1900;
    }
  }

  else
  {
    v1249 = 1;
    v1250 = (v1244 + (v1243 >> 3));
    if (v1250 >= v1245)
    {
      goto LABEL_1900;
    }
  }

LABEL_1891:
  v1251 = *v1250;
  *v1096 = v1243 + 1;
  v1252 = (1 << (~v1243 & 7)) & v1251;
  v1253 = v1252 == 0;
  if (v1252)
  {
    v1254 = 3;
  }

  else
  {
LABEL_1903:
    v1254 = 0;
  }

  v1265 = 1;
  if (v1253)
  {
    v1266 = 1;
  }

  else
  {
    v1266 = 2;
  }

  if (!v1249)
  {
    v1254 = v1266;
  }

  *(v2580 + 1020) = v1254;
  v1267 = v1249 && v1253;
  if (v1241)
  {
    v1095 = v2582;
    if (!v1267)
    {
      goto LABEL_2054;
    }

LABEL_1911:
    v1268 = vdupq_n_s64(v1242 - 1);
    v1269 = vmovn_s64(vcgeq_u64(v1268, xmmword_273B92130));
    if (vuzp1_s16(v1269, *v1268.i8).u8[0])
    {
      *(v2580 + 1021) = 256;
      v1240 = v2581;
      if ((vuzp1_s16(v1269, *&v1268).i8[2] & 1) == 0)
      {
        goto LABEL_1913;
      }

LABEL_1917:
      *(v1240 + 4) = 256;
      v1270 = vmovn_s64(vcgeq_u64(v1268, xmmword_273B92120));
      if ((vuzp1_s16(v1270, v1270).i32[1] & 1) == 0)
      {
        goto LABEL_1918;
      }

LABEL_1914:
      *(v1240 + 68) = 256;
      if ((vuzp1_s16(v1270, v1270).i8[6] & 1) == 0)
      {
        goto LABEL_2128;
      }
    }

    else
    {
      v1240 = v2581;
      if (vuzp1_s16(v1269, *&v1268).i8[2])
      {
        goto LABEL_1917;
      }

LABEL_1913:
      v1270 = vmovn_s64(vcgeq_u64(v1268, xmmword_273B92120));
      if (vuzp1_s16(v1270, v1270).i32[1])
      {
        goto LABEL_1914;
      }

LABEL_1918:
      if ((vuzp1_s16(v1270, v1270).i8[6] & 1) == 0)
      {
        goto LABEL_2128;
      }
    }

    *(v1240 + 132) = 256;
    goto LABEL_2128;
  }

  v1309 = v1242 - 1;
  v1310 = v2581;
  v1311 = 1;
  while (2)
  {
    v1317 = *(a2 + 16);
    v1318 = *a2;
    v1319 = *(a2 + 8);
    v1320 = (*a2 + (v1317 >> 3));
    if (v1320 >= v1319)
    {
      v1325 = *(a2 + 32);
      if (!v1325)
      {
        v1323 = 1;
        v1324 = (v1318 + (v1317 >> 3));
        if (v1324 >= v1319)
        {
          goto LABEL_1987;
        }

        goto LABEL_1970;
      }

      v1325(*(a2 + 24));
      v1096 = (a2 + 16);
      LODWORD(v1317) = *(a2 + 16);
      v1323 = 1;
      v1324 = (*a2 + (v1317 >> 3));
      if (v1324 < *(a2 + 8))
      {
        goto LABEL_1970;
      }

LABEL_1987:
      v1326 = *(a2 + 32);
      if (v1326)
      {
        v1326(*(a2 + 24));
        v1096 = (a2 + 16);
      }

      v1314 = 1;
    }

    else
    {
      v1321 = ~v1317 & 7;
      v1322 = *v1320;
      LODWORD(v1317) = v1317 + 1;
      *v1096 = v1317;
      v1323 = ((v1322 >> v1321) & 1) == 0;
      v1324 = (v1318 + (v1317 >> 3));
      if (v1324 >= v1319)
      {
        goto LABEL_1987;
      }

LABEL_1970:
      v1312 = *v1324;
      *v1096 = v1317 + 1;
      v1313 = (1 << (~v1317 & 7)) & v1312;
      v1314 = v1313 == 0;
      if (v1313)
      {
        v1315 = 3;
        goto LABEL_1972;
      }
    }

    v1315 = 0;
LABEL_1972:
    if (v1314)
    {
      v1316 = 1;
    }

    else
    {
      v1316 = 2;
    }

    if (!v1323)
    {
      v1315 = v1316;
    }

    *v1310 = v1315;
    v1310 += 16;
    if (!v1323 || !v1314)
    {
      v1311 = 0;
      v1267 = 0;
    }

    if (--v1309)
    {
      continue;
    }

    break;
  }

  v1265 = v1311 != 0;
  v1095 = v2582;
  if (v1267)
  {
    goto LABEL_1911;
  }

LABEL_2054:
  v1240 = v2581;
  v1376 = *(*(v2581 + 1560) + 28);
  if (v1376 == 15)
  {
    v1377 = 128;
  }

  else
  {
    v1377 = 64;
  }

  v1378 = vdupq_n_s64(v1242 - 1);
  v1379 = vmovn_s64(vcgeq_u64(v1378, xmmword_273B92130));
  if (vuzp1_s16(v1379, *v1378.i8).u8[0])
  {
    *(v2580 + 1021) = v1377;
    if ((vuzp1_s16(v1379, *&v1378).i8[2] & 1) == 0)
    {
      goto LABEL_2059;
    }

LABEL_2064:
    *(v2581 + 4) = v1377;
    v1380 = vmovn_s64(vcgeq_u64(v1378, xmmword_273B92120));
    if ((vuzp1_s16(v1380, v1380).i32[1] & 1) == 0)
    {
      goto LABEL_2065;
    }

LABEL_2060:
    *(v2581 + 68) = v1377;
    if ((vuzp1_s16(v1380, v1380).i8[6] & 1) == 0)
    {
      goto LABEL_2061;
    }

LABEL_2066:
    *(v2581 + 132) = v1377;
    if (v1376 != 15)
    {
      goto LABEL_2067;
    }

LABEL_2062:
    v1381 = *(v2580 + 1021);
  }

  else
  {
    if (vuzp1_s16(v1379, *&v1378).i8[2])
    {
      goto LABEL_2064;
    }

LABEL_2059:
    v1380 = vmovn_s64(vcgeq_u64(v1378, xmmword_273B92120));
    if (vuzp1_s16(v1380, v1380).i32[1])
    {
      goto LABEL_2060;
    }

LABEL_2065:
    if (vuzp1_s16(v1380, v1380).i8[6])
    {
      goto LABEL_2066;
    }

LABEL_2061:
    if (v1376 == 15)
    {
      goto LABEL_2062;
    }

LABEL_2067:
    v1382 = *(a2 + 16);
    v1383 = (*a2 + (v1382 >> 3));
    if (v1383 >= *(a2 + 8))
    {
      v1405 = *(a2 + 32);
      if (v1405)
      {
        v1405(*(a2 + 24));
        v1096 = (a2 + 16);
      }

      LOBYTE(v1384) = 0;
    }

    else
    {
      v1384 = (*v1383 >> (~v1382 & 7)) & 1;
      *v1096 = v1382 + 1;
    }

    v1381 = *(v2580 + 1021) << v1384;
    *(v2580 + 1021) = v1381;
  }

  if (v1381 >= 65)
  {
    v1406 = *(a2 + 16);
    v1407 = (*a2 + (v1406 >> 3));
    if (v1407 >= *(a2 + 8))
    {
      v1407 = *(a2 + 32);
      if (v1407)
      {
        v1407(*(a2 + 24));
        v1096 = (a2 + 16);
        LOBYTE(v1407) = 0;
        v1381 = *(v2580 + 1021);
      }
    }

    else
    {
      LODWORD(v1407) = (*v1407 >> (~v1406 & 7)) & 1;
      *v1096 = v1406 + 1;
    }

    *(v2580 + 1021) = v1381 << v1407;
  }

LABEL_2128:
  if (!v1241)
  {
    v1409 = *(v1240 + 1560);
    v1411 = *(v1409 + 96);
    v1410 = *(v1409 + 100);
    if (v1411 >= v1410)
    {
      v1412 = v1410;
    }

    else
    {
      v1412 = v1411;
    }

    v1413 = *(v2580 + 1021);
    if (v1412 != 0 && !v1265)
    {
      v1414 = *(a2 + 16);
      v1415 = (*a2 + (v1414 >> 3));
      if (v1415 >= *(a2 + 8))
      {
        v1417 = *(a2 + 32);
        if (v1417)
        {
          v1417(*(a2 + 24));
          v1096 = (a2 + 16);
        }

        LOBYTE(v1416) = 0;
      }

      else
      {
        v1416 = (*v1415 >> (~v1414 & 7)) & 1;
        *v1096 = v1414 + 1;
      }

      v1413 >>= v1416 * v1412;
    }

    *(v1240 + 4) = v1413;
    *(v1240 + 68) = v1413;
    v1095 = v2582;
    if ((v2564->__sig & 1) == 0)
    {
      goto LABEL_2143;
    }

LABEL_2130:
    v1408 = v2568;
    v2568[504] = 0;
    if ((*v2568 & 0xFD) != 0)
    {
      goto LABEL_2150;
    }

LABEL_2157:
    v1408[1] = 0;
    av1_setup_skip_mode_allowed(v1408);
    if (!*(v1095 + 15220))
    {
      goto LABEL_2153;
    }

    goto LABEL_2158;
  }

LABEL_2129:
  if (v2564->__sig)
  {
    goto LABEL_2130;
  }

LABEL_2143:
  v1418 = *(a2 + 16);
  v1419 = (*a2 + (v1418 >> 3));
  if (v1419 >= *(a2 + 8))
  {
    v1421 = *(a2 + 32);
    v1408 = v2568;
    if (v1421)
    {
      v1421(*(a2 + 24));
      v1096 = (a2 + 16);
    }

LABEL_2149:
    v1408[504] = 1;
    if ((*v1408 & 0xFD) == 0)
    {
      goto LABEL_2157;
    }

    goto LABEL_2150;
  }

  v1420 = *v1419;
  *v1096 = v1418 + 1;
  v1408 = v2568;
  if (((v1420 >> (~v1418 & 7)) & 1) == 0)
  {
    goto LABEL_2149;
  }

  v2568[504] = 2;
  if ((*v2568 & 0xFD) == 0)
  {
    goto LABEL_2157;
  }

LABEL_2150:
  v1422 = *(a2 + 16);
  v1423 = (*a2 + (v1422 >> 3));
  if (v1423 >= *(a2 + 8))
  {
    v1426 = *(a2 + 32);
    if (v1426)
    {
      v1426(*(a2 + 24));
    }

    goto LABEL_2157;
  }

  v1424 = *v1423;
  *v1096 = v1422 + 1;
  if (((v1424 >> (~v1422 & 7)) & 1) == 0)
  {
    goto LABEL_2157;
  }

  v1408[1] = 2;
  av1_setup_skip_mode_allowed(v1408);
  if (!*(v1095 + 15220))
  {
LABEL_2153:
    v1425 = (a2 + 16);
    *(v1095 + 15224) = 0;
    if (v1408[502])
    {
      goto LABEL_2170;
    }

LABEL_2164:
    if ((*v1408 & 0xFD) == 0)
    {
      goto LABEL_2170;
    }

    LOBYTE(v1431) = *(*(v1240 + 1560) + 65);
    if (v1431)
    {
      v1431 = *(a2 + 16);
      v1432 = (*a2 + (v1431 >> 3));
      if (v1432 >= *(a2 + 8))
      {
        v1431 = *(a2 + 32);
        if (v1431)
        {
          (v1431)(*(a2 + 24));
          v1425 = (a2 + 16);
          goto LABEL_2170;
        }
      }

      else
      {
        v1433 = *v1432 >> (~v1431 & 7);
        *v1425 = v1431 + 1;
        LOBYTE(v1431) = v1433 & 1;
      }
    }

    goto LABEL_2171;
  }

LABEL_2158:
  v1427 = *(a2 + 16);
  v1428 = (*a2 + (v1427 >> 3));
  v1425 = (a2 + 16);
  if (v1428 >= *(a2 + 8))
  {
    v1430 = *(a2 + 32);
    if (v1430)
    {
      v1430(*(a2 + 24));
      v1425 = (a2 + 16);
    }

    *(v1095 + 15224) = 0;
    if ((v1408[502] & 1) == 0)
    {
      goto LABEL_2164;
    }
  }

  else
  {
    v1429 = (*v1428 >> (~v1427 & 7)) & 1;
    *v2583 = v1427 + 1;
    *(v1095 + 15224) = v1429;
    if ((v1408[502] & 1) == 0)
    {
      goto LABEL_2164;
    }
  }

LABEL_2170:
  LOBYTE(v1431) = 0;
LABEL_2171:
  v1408[497] = v1431;
  v1434 = *(a2 + 16);
  v1435 = (*a2 + (v1434 >> 3));
  if (v1435 >= *(a2 + 8))
  {
    v1434 = *(a2 + 32);
    if (v1434)
    {
      (v1434)(*(a2 + 24));
      v1425 = (a2 + 16);
      LOBYTE(v1434) = 0;
    }
  }

  else
  {
    v1436 = *v1435 >> (~v1434 & 7);
    *v1425 = v1434 + 1;
    LOBYTE(v1434) = v1436 & 1;
  }

  v1408[501] = v1434;
  if (v1408[498] == 1)
  {
    if ((v1408[502] & 1) != 0 || (v1437 = *(v1240 + 1560), !*(v1437 + 52)) || !*(v1437 + 40) || (*v1408 & 0xFD) == 0)
    {
      aom_internal_error(v1095 + 390868, 7, "Frame wrongly requests reference frame MVs");
      v1425 = (a2 + 16);
    }
  }

  if ((*v1408 & 0xFD) != 0)
  {
    v1438 = 0;
    v1439 = v1095 + 39640;
    while (1)
    {
      v1440 = *(v1095 + 15424);
      if (v1440)
      {
        v1441 = (v1440 + v1438 + 312);
      }

      else
      {
        v1441 = &default_warp_params_0;
      }

      v1442 = (v1439 + v1438 - 16);
      v1443 = *(a2 + 16);
      v1444 = *a2;
      v1445 = *(a2 + 8);
      v1446 = (*a2 + (v1443 >> 3));
      if (v1446 >= v1445)
      {
        v1455 = *(a2 + 32);
        if (v1455)
        {
          v1455(*(a2 + 24));
        }

LABEL_2195:
        *(v1439 + v1438 + 16) = 0;
        *v1442 = default_warp_params_0;
        *(v1439 + v1438) = unk_273BDF210;
        *(v1439 + v1438 + 16) = 0;
        *(v1439 + v1438) = 0;
        v1456 = v1439 + v1438;
        *(v1439 + v1438 + 4) = 0x10000;
        if (av1_get_shear_params(v1439 + v1438 - 16))
        {
          goto LABEL_2184;
        }

        goto LABEL_2183;
      }

      v1447 = v2568[493];
      v1448 = *v1446;
      v1449 = v1443 + 1;
      *v2583 = v1443 + 1;
      if (((v1448 >> (~v1443 & 7)) & 1) == 0)
      {
        goto LABEL_2195;
      }

      v1450 = (v1444 + (v1449 >> 3));
      if (v1450 >= v1445)
      {
        v1457 = *(a2 + 32);
        if (v1457)
        {
          v1457(*(a2 + 24));
          v1449 = *(a2 + 16);
          v1444 = *a2;
          v1445 = *(a2 + 8);
        }
      }

      else
      {
        v1451 = ~v1449 & 7;
        v1452 = *v1450;
        v1449 = v1443 + 2;
        *v2583 = v1443 + 2;
        if ((v1452 >> v1451))
        {
          v1453 = 0;
          v1454 = 2;
          goto LABEL_2210;
        }
      }

      v1458 = (v1444 + (v1449 >> 3));
      if (v1458 >= v1445)
      {
        v1462 = *(a2 + 32);
        if (v1462)
        {
          v1462(*(a2 + 24));
        }

LABEL_2209:
        v1454 = 3;
        v1453 = 1;
LABEL_2210:
        *(v1439 + v1438 + 16) = 0;
        *v1442 = default_warp_params_0;
        *(v1439 + v1438) = unk_273BDF210;
        v1463 = v1439 + v1438;
        *(v1439 + v1438 + 16) = v1454;
        *(v1463 - 8) = 2 * aom_rb_read_signed_primitive_refsubexpfin(a2, 4097, 3, ((v1441[2] >> 1) ^ 0x8000)) + 0x10000;
        v1464 = 2 * aom_rb_read_signed_primitive_refsubexpfin(a2, 4097, 3, (v1441[3] >> 1));
        *(v1463 - 4) = v1464;
        if (v1453)
        {
          *(v1439 + v1438) = 2 * aom_rb_read_signed_primitive_refsubexpfin(a2, 4097, 3, (v1441[4] >> 1));
          v1465 = 2 * aom_rb_read_signed_primitive_refsubexpfin(a2, 4097, 3, ((v1441[5] >> 1) ^ 0x8000)) + 0x10000;
        }

        else
        {
          *(v1439 + v1438) = -v1464;
          v1465 = *(v1463 - 8);
        }

        *(v1439 + v1438 + 4) = v1465;
        v1461 = 4097;
        v1460 = 10;
        goto LABEL_2214;
      }

      v1459 = *v1458;
      *v2583 = v1449 + 1;
      if (((v1459 >> (~v1449 & 7)) & 1) == 0)
      {
        goto LABEL_2209;
      }

      *(v1439 + v1438 + 16) = 0;
      *v1442 = default_warp_params_0;
      *(v1439 + v1438) = unk_273BDF210;
      *(v1439 + v1438 + 16) = 1;
      *(v1439 + v1438) = 0x1000000000000;
      if (v1447)
      {
        v1460 = 13;
      }

      else
      {
        v1460 = 14;
      }

      if (v1447)
      {
        v1461 = 513;
      }

      else
      {
        v1461 = 257;
      }

LABEL_2214:
      *v1442 = aom_rb_read_signed_primitive_refsubexpfin(a2, v1461, 3, (*v1441 >> v1460)) << v1460;
      signed_primitive_refsubexpfin = aom_rb_read_signed_primitive_refsubexpfin(a2, v1461, 3, (v1441[1] >> v1460));
      v1456 = v1439 + v1438;
      *(v1439 + v1438 - 12) = signed_primitive_refsubexpfin << v1460;
      if (av1_get_shear_params(v1439 + v1438 - 16))
      {
        goto LABEL_2184;
      }

LABEL_2183:
      *(v1456 + 17) = 1;
LABEL_2184:
      v1438 += 36;
      v1095 = v2582;
      if (v1438 == 252)
      {
        memcpy((*(v2582 + 15432) + 276), (v2582 + 39588), 0x120uLL);
        v1240 = v2581;
        v1425 = (a2 + 16);
        break;
      }
    }
  }

  *(*(v1095 + 15432) + 568) = *(v2570 + 109);
  v1467 = *(v1240 + 1560);
  if (!v1467[1].__opaque[37] || !*(v1095 + 15680) && !*(v1095 + 15684))
  {
    bzero((v1095 + 38920), 0x288uLL);
    goto LABEL_2237;
  }

  v1468 = *(a2 + 16);
  v1469 = (*a2 + (v1468 >> 3));
  if (v1469 >= *(a2 + 8))
  {
    v1483 = *(a2 + 32);
    if (v1483)
    {
      v1483(*(a2 + 24));
    }

    goto LABEL_2235;
  }

  v1470 = *v1469 >> (~v1468 & 7);
  *v1425 = v1468 + 1;
  *(v1240 + 600) = v1470 & 1;
  if ((v1470 & 1) == 0)
  {
LABEL_2235:
    bzero((v1240 + 600), 0x288uLL);
LABEL_2236:
    v1095 = v2582;
    goto LABEL_2237;
  }

  v2566 = v1467;
  v1471 = 0;
  v1472 = 17;
  v1473 = (a2 + 16);
  do
  {
    while (1)
    {
      v1475 = *(a2 + 16);
      v1476 = (*a2 + (v1475 >> 3));
      if (v1476 >= *(a2 + 8))
      {
        break;
      }

      v1474 = (*v1476 >> (~v1475 & 7)) & 1;
      *v1473 = v1475 + 1;
      v1471 |= v1474 << (v1472-- - 2);
      if (v1472 <= 1)
      {
        goto LABEL_2228;
      }
    }

    v1477 = *(a2 + 32);
    if (v1477)
    {
      v1477(*(a2 + 24));
      v1473 = (a2 + 16);
    }

    --v1472;
  }

  while (v1472 > 1);
LABEL_2228:
  *(v1240 + 1244) = v1471;
  if (*v2568 != 1)
  {
    *(v1240 + 604) = 1;
    *(v1240 + 1232) = *v2566[1].__opaque;
    LODWORD(v1478) = *(a2 + 16);
    v1479 = *a2;
    v1480 = *(a2 + 8);
    goto LABEL_2248;
  }

  v1478 = *(a2 + 16);
  v1479 = *a2;
  v1480 = *(a2 + 8);
  v1481 = (*a2 + (v1478 >> 3));
  if (v1481 >= v1480)
  {
    v1514 = *(a2 + 32);
    if (v1514)
    {
      v1514(*(a2 + 24));
      v1473 = (a2 + 16);
      LODWORD(v1478) = *(a2 + 16);
      v1479 = *a2;
      v1480 = *(a2 + 8);
    }

    *(v1240 + 604) = 0;
    *(v1240 + 1232) = *v2566[1].__opaque;
LABEL_2277:
    v1515 = (v1479 + (v1478 >> 3));
    if (v1515 >= v1480)
    {
      v1521 = *(a2 + 32);
      if (v1521)
      {
        v1521(*(a2 + 24));
        v1473 = (a2 + 16);
        v1517 = 0;
        LODWORD(v1478) = *(a2 + 16);
        v1479 = *a2;
        v1480 = *(a2 + 8);
      }

      else
      {
        v1517 = 0;
      }
    }

    else
    {
      v1516 = *v1515 >> (~v1478 & 7);
      LODWORD(v1478) = v1478 + 1;
      *v1473 = v1478;
      v1517 = 4 * (v1516 & 1);
    }

    v1938 = (v1479 + (v1478 >> 3));
    if (v1938 >= v1480)
    {
      v1938 = *(a2 + 32);
      if (v1938)
      {
        v1938(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1938) = 0;
        LODWORD(v1478) = *(a2 + 16);
        v1479 = *a2;
        v1480 = *(a2 + 8);
      }
    }

    else
    {
      v1939 = *v1938 >> (~v1478 & 7);
      LODWORD(v1478) = v1478 + 1;
      *v1473 = v1478;
      LODWORD(v1938) = 2 * (v1939 & 1);
    }

    v1940 = v1938 | v1517;
    v1941 = (v1479 + (v1478 >> 3));
    if (v1941 >= v1480)
    {
      v1943 = *(a2 + 32);
      if (v1943)
      {
        v1943(*(a2 + 24));
      }

      v1942 = 0;
    }

    else
    {
      v1942 = (*v1941 >> (~v1478 & 7)) & 1;
      *v1473 = v1478 + 1;
    }

    v1944 = v1942 | v1940;
    v1945 = *(v2582 + 15440);
    if (v1944 != v1945)
    {
      v1946 = *(v2582 + 15444);
      if (v1944 != v1946)
      {
        v1947 = *(v2582 + 15448);
        if (v1944 != v1947)
        {
          v1948 = *(v2582 + 15452);
          if (v1944 != v1948)
          {
            v1949 = *(v2582 + 15456);
            if (v1944 != v1949 && v1944 != *(v2582 + 15460))
            {
              v1950 = *(v2582 + 15464);
              if (v1944 != v1950)
              {
                aom_internal_error(*(v2582 + 15248), 5, "Invalid film grain reference idx %d. ref_frame_idx = {%d, %d, %d, %d, %d, %d, %d}", v1944, v1945, v1946, v1947, v1948, v1949, *(v2582 + 15460), v1950);
              }
            }
          }
        }
      }
    }

    v1951 = *(v2582 + 8 * v1944 + 15616);
    if (!v1951)
    {
      aom_internal_error(*(v2582 + 15248), 5, "Invalid Film grain reference idx");
    }

    if (!*(v1951 + 568))
    {
      aom_internal_error(*(v2582 + 15248), 5, "Film grain reference parameters not available");
    }

    v1952 = *(v1240 + 1244);
    memcpy((v1240 + 600), (v1951 + 572), 0x288uLL);
    *(v1240 + 1244) = v1952;
    goto LABEL_2236;
  }

  v1482 = *v1481 >> (~v1478 & 7);
  LODWORD(v1478) = v1478 + 1;
  *v1473 = v1478;
  *(v1240 + 604) = v1482 & 1;
  *(v1240 + 1232) = *v2566[1].__opaque;
  if ((v1482 & 1) == 0)
  {
    goto LABEL_2277;
  }

LABEL_2248:
  v1490 = (v1479 + (v1478 >> 3));
  if (v1490 >= v1480)
  {
    v1498 = *(a2 + 32);
    v1493 = v2582;
    if (v1498)
    {
      v1498(*(a2 + 24));
      v1473 = (a2 + 16);
      v1492 = 0;
      LODWORD(v1478) = *(a2 + 16);
      v1479 = *a2;
      v1480 = *(a2 + 8);
      v1494 = (*a2 + (v1478 >> 3));
      if (v1494 >= v1480)
      {
        goto LABEL_2258;
      }
    }

    else
    {
      v1492 = 0;
      v1494 = (v1479 + (v1478 >> 3));
      if (v1494 >= v1480)
      {
        goto LABEL_2258;
      }
    }

LABEL_2250:
    v1495 = *v1494 >> (~v1478 & 7);
    LODWORD(v1478) = v1478 + 1;
    *v1473 = v1478;
    LODWORD(v1494) = 4 * (v1495 & 1);
  }

  else
  {
    v1491 = *v1490 >> (~v1478 & 7);
    LODWORD(v1478) = v1478 + 1;
    *v1473 = v1478;
    v1492 = 8 * (v1491 & 1);
    v1493 = v2582;
    v1494 = (v1479 + (v1478 >> 3));
    if (v1494 < v1480)
    {
      goto LABEL_2250;
    }

LABEL_2258:
    v1494 = *(a2 + 32);
    if (v1494)
    {
      v1494(*(a2 + 24));
      v1473 = (a2 + 16);
      LODWORD(v1494) = 0;
      LODWORD(v1478) = *(a2 + 16);
      v1479 = *a2;
      v1480 = *(a2 + 8);
    }
  }

  v1499 = v1494 | v1492;
  v1500 = (v1479 + (v1478 >> 3));
  if (v1500 >= v1480)
  {
    v1500 = *(a2 + 32);
    if (v1500)
    {
      v1500(*(a2 + 24));
      v1473 = (a2 + 16);
      LODWORD(v1500) = 0;
      LODWORD(v1478) = *(a2 + 16);
      v1479 = *a2;
      v1480 = *(a2 + 8);
    }
  }

  else
  {
    v1501 = *v1500 >> (~v1478 & 7);
    LODWORD(v1478) = v1478 + 1;
    *v1473 = v1478;
    LODWORD(v1500) = 2 * (v1501 & 1);
  }

  v1502 = v1500 | v1499;
  v1503 = (v1479 + (v1478 >> 3));
  if (v1503 >= v1480)
  {
    v1505 = *(a2 + 32);
    if (v1505)
    {
      v1505(*(a2 + 24));
      v1473 = (a2 + 16);
    }

    v1504 = 0;
  }

  else
  {
    v1504 = (*v1503 >> (~v1478 & 7)) & 1;
    *v1473 = v1478 + 1;
  }

  v1506 = v1504 | v1502;
  *(v1240 + 720) = v1504 | v1502;
  if ((v1504 | v1502) == 0xF)
  {
    aom_internal_error(*(v1493 + 15248), 5, "Number of points for film grain luma scaling function exceeds the maximum value.");
    v1473 = (a2 + 16);
    v1506 = *(v1240 + 720);
  }

  if (v1506 >= 1)
  {
    v1507 = *(a2 + 16);
    v1508 = *a2;
    v1509 = *(a2 + 8);
    v1510 = (*a2 + (v1507 >> 3));
    if (v1510 >= v1509)
    {
      v1520 = *(a2 + 32);
      v1513 = v2581;
      if (v1520)
      {
        v1520(*(a2 + 24));
        v1473 = (a2 + 16);
        v1512 = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }

      else
      {
        v1512 = 0;
      }
    }

    else
    {
      v1511 = *v1510 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      v1512 = (v1511 & 1) << 7;
      v1513 = v2581;
    }

    v1524 = (v1508 + (v1507 >> 3));
    if (v1524 >= v1509)
    {
      v1524 = *(a2 + 32);
      if (v1524)
      {
        v1524(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1524) = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1525 = *v1524 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      LODWORD(v1524) = (v1525 & 1) << 6;
    }

    v1526 = v1524 | v1512;
    v1527 = (v1508 + (v1507 >> 3));
    if (v1527 >= v1509)
    {
      v1527 = *(a2 + 32);
      if (v1527)
      {
        v1527(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1527) = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1528 = *v1527 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      LODWORD(v1527) = 32 * (v1528 & 1);
    }

    v1529 = v1527 | v1526;
    v1530 = (v1508 + (v1507 >> 3));
    if (v1530 >= v1509)
    {
      v1530 = *(a2 + 32);
      if (v1530)
      {
        v1530(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1530) = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1531 = *v1530 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      LODWORD(v1530) = 16 * (v1531 & 1);
    }

    v1532 = v1530 | v1529;
    v1533 = (v1508 + (v1507 >> 3));
    if (v1533 >= v1509)
    {
      v1533 = *(a2 + 32);
      if (v1533)
      {
        v1533(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1533) = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1534 = *v1533 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      LODWORD(v1533) = 8 * (v1534 & 1);
    }

    v1535 = v1533 | v1532;
    v1536 = (v1508 + (v1507 >> 3));
    if (v1536 >= v1509)
    {
      v1536 = *(a2 + 32);
      if (v1536)
      {
        v1536(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1536) = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1537 = *v1536 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      LODWORD(v1536) = 4 * (v1537 & 1);
    }

    v1538 = v1536 | v1535;
    v1539 = (v1508 + (v1507 >> 3));
    if (v1539 >= v1509)
    {
      v1539 = *(a2 + 32);
      if (v1539)
      {
        v1539(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1539) = 0;
        LODWORD(v1507) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1540 = *v1539 >> (~v1507 & 7);
      LODWORD(v1507) = v1507 + 1;
      *v1473 = v1507;
      LODWORD(v1539) = 2 * (v1540 & 1);
    }

    v1541 = v1539 | v1538;
    v1542 = (v1508 + (v1507 >> 3));
    if (v1542 >= v1509)
    {
      v1544 = *(a2 + 32);
      if (v1544)
      {
        v1544(*(a2 + 24));
        v1473 = (a2 + 16);
        v1543 = 0;
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }

      else
      {
        v1543 = 0;
      }
    }

    else
    {
      v1543 = (*v1542 >> (~v1507 & 7)) & 1;
      *v1473 = v1507 + 1;
    }

    v1513[152] = v1543 | v1541;
    v1545 = *v1473;
    v1546 = (v1508 + (v1545 >> 3));
    if (v1546 >= v1509)
    {
      v1549 = *(a2 + 32);
      if (v1549)
      {
        v1549(*(a2 + 24));
        v1473 = (a2 + 16);
        v1548 = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }

      else
      {
        v1548 = 0;
      }
    }

    else
    {
      v1547 = *v1546 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      v1548 = (v1547 & 1) << 7;
    }

    v1550 = (v1508 + (v1545 >> 3));
    if (v1550 >= v1509)
    {
      v1550 = *(a2 + 32);
      if (v1550)
      {
        v1550(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1550) = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1551 = *v1550 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      LODWORD(v1550) = (v1551 & 1) << 6;
    }

    v1552 = v1550 | v1548;
    v1553 = (v1508 + (v1545 >> 3));
    if (v1553 >= v1509)
    {
      v1553 = *(a2 + 32);
      if (v1553)
      {
        v1553(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1553) = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1554 = *v1553 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      LODWORD(v1553) = 32 * (v1554 & 1);
    }

    v1555 = v1553 | v1552;
    v1556 = (v1508 + (v1545 >> 3));
    if (v1556 >= v1509)
    {
      v1556 = *(a2 + 32);
      if (v1556)
      {
        v1556(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1556) = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1557 = *v1556 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      LODWORD(v1556) = 16 * (v1557 & 1);
    }

    v1558 = v1556 | v1555;
    v1559 = (v1508 + (v1545 >> 3));
    if (v1559 >= v1509)
    {
      v1559 = *(a2 + 32);
      if (v1559)
      {
        v1559(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1559) = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1560 = *v1559 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      LODWORD(v1559) = 8 * (v1560 & 1);
    }

    v1561 = v1559 | v1558;
    v1562 = (v1508 + (v1545 >> 3));
    if (v1562 >= v1509)
    {
      v1562 = *(a2 + 32);
      if (v1562)
      {
        v1562(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1562) = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1563 = *v1562 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      LODWORD(v1562) = 4 * (v1563 & 1);
    }

    v1564 = v1562 | v1561;
    v1565 = (v1508 + (v1545 >> 3));
    if (v1565 >= v1509)
    {
      v1565 = *(a2 + 32);
      if (v1565)
      {
        v1565(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1565) = 0;
        LODWORD(v1545) = *(a2 + 16);
        v1508 = *a2;
        v1509 = *(a2 + 8);
      }
    }

    else
    {
      v1566 = *v1565 >> (~v1545 & 7);
      LODWORD(v1545) = v1545 + 1;
      *v1473 = v1545;
      LODWORD(v1565) = 2 * (v1566 & 1);
    }

    v1567 = v1565 | v1564;
    v1568 = (v1508 + (v1545 >> 3));
    if (v1568 >= v1509)
    {
      v1568 = *(a2 + 32);
      if (v1568)
      {
        v1568(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1568) = 0;
      }
    }

    else
    {
      LODWORD(v1568) = (*v1568 >> (~v1545 & 7)) & 1;
      *v1473 = v1545 + 1;
    }

    v1513[153] = v1568 | v1567;
    if (v1513[180] >= 2)
    {
      v1569 = (v2581 + 620);
      for (ii = 1; ii < *(v2581 + 720); ++ii)
      {
        v1572 = *(a2 + 16);
        v1573 = *a2;
        v1574 = *(a2 + 8);
        v1575 = (*a2 + (v1572 >> 3));
        if (v1575 >= v1574)
        {
          v1597 = *(a2 + 32);
          if (v1597)
          {
            v1597(*(a2 + 24));
            v1473 = (a2 + 16);
            v2571 = 0;
            LODWORD(v1572) = *(a2 + 16);
            v1573 = *a2;
            v1574 = *(a2 + 8);
            v1577 = (*a2 + (v1572 >> 3));
            if (v1577 < v1574)
            {
              goto LABEL_2364;
            }
          }

          else
          {
            v2571 = 0;
            v1577 = (v1573 + (v1572 >> 3));
            if (v1577 < v1574)
            {
LABEL_2364:
              v1578 = *v1577 >> (~v1572 & 7);
              LODWORD(v1572) = v1572 + 1;
              *v1473 = v1572;
              v1579 = (v1578 & 1) << 6;
              v1580 = (v1573 + (v1572 >> 3));
              if (v1580 < v1574)
              {
                goto LABEL_2365;
              }

              goto LABEL_2375;
            }
          }
        }

        else
        {
          v1576 = *v1575 >> (~v1572 & 7);
          LODWORD(v1572) = v1572 + 1;
          *v1473 = v1572;
          v2571 = (v1576 & 1) << 7;
          v1577 = (v1573 + (v1572 >> 3));
          if (v1577 < v1574)
          {
            goto LABEL_2364;
          }
        }

        v1598 = *(a2 + 32);
        if (v1598)
        {
          v1598(*(a2 + 24));
          v1473 = (a2 + 16);
          v1579 = 0;
          LODWORD(v1572) = *(a2 + 16);
          v1573 = *a2;
          v1574 = *(a2 + 8);
          v1580 = (*a2 + (v1572 >> 3));
          if (v1580 < v1574)
          {
            goto LABEL_2365;
          }
        }

        else
        {
          v1579 = 0;
          v1580 = (v1573 + (v1572 >> 3));
          if (v1580 < v1574)
          {
LABEL_2365:
            v1581 = *v1580 >> (~v1572 & 7);
            LODWORD(v1572) = v1572 + 1;
            *v1473 = v1572;
            v1582 = 32 * (v1581 & 1);
            v1583 = (v1573 + (v1572 >> 3));
            if (v1583 < v1574)
            {
              goto LABEL_2366;
            }

            goto LABEL_2377;
          }
        }

LABEL_2375:
        v1599 = *(a2 + 32);
        if (v1599)
        {
          v1599(*(a2 + 24));
          v1473 = (a2 + 16);
          v1582 = 0;
          LODWORD(v1572) = *(a2 + 16);
          v1573 = *a2;
          v1574 = *(a2 + 8);
          v1583 = (*a2 + (v1572 >> 3));
          if (v1583 < v1574)
          {
            goto LABEL_2366;
          }
        }

        else
        {
          v1582 = 0;
          v1583 = (v1573 + (v1572 >> 3));
          if (v1583 < v1574)
          {
LABEL_2366:
            v1584 = *v1583 >> (~v1572 & 7);
            LODWORD(v1572) = v1572 + 1;
            *v1473 = v1572;
            v1585 = 16 * (v1584 & 1);
            v1586 = (v1573 + (v1572 >> 3));
            if (v1586 < v1574)
            {
              goto LABEL_2367;
            }

            goto LABEL_2379;
          }
        }

LABEL_2377:
        v1600 = *(a2 + 32);
        if (v1600)
        {
          v1600(*(a2 + 24));
          v1473 = (a2 + 16);
          v1585 = 0;
          LODWORD(v1572) = *(a2 + 16);
          v1573 = *a2;
          v1574 = *(a2 + 8);
          v1586 = (*a2 + (v1572 >> 3));
          if (v1586 < v1574)
          {
            goto LABEL_2367;
          }
        }

        else
        {
          v1585 = 0;
          v1586 = (v1573 + (v1572 >> 3));
          if (v1586 < v1574)
          {
LABEL_2367:
            v1587 = *v1586 >> (~v1572 & 7);
            LODWORD(v1572) = v1572 + 1;
            *v1473 = v1572;
            v1588 = 8 * (v1587 & 1);
            v1589 = (v1573 + (v1572 >> 3));
            if (v1589 < v1574)
            {
              goto LABEL_2368;
            }

            goto LABEL_2381;
          }
        }

LABEL_2379:
        v1601 = *(a2 + 32);
        if (v1601)
        {
          v1601(*(a2 + 24));
          v1473 = (a2 + 16);
          v1588 = 0;
          LODWORD(v1572) = *(a2 + 16);
          v1573 = *a2;
          v1574 = *(a2 + 8);
          v1589 = (*a2 + (v1572 >> 3));
          if (v1589 < v1574)
          {
            goto LABEL_2368;
          }
        }

        else
        {
          v1588 = 0;
          v1589 = (v1573 + (v1572 >> 3));
          if (v1589 < v1574)
          {
LABEL_2368:
            v1590 = *v1589 >> (~v1572 & 7);
            LODWORD(v1572) = v1572 + 1;
            *v1473 = v1572;
            v1591 = 4 * (v1590 & 1);
            v1592 = (v1573 + (v1572 >> 3));
            if (v1592 < v1574)
            {
              goto LABEL_2369;
            }

            goto LABEL_2383;
          }
        }

LABEL_2381:
        v1602 = *(a2 + 32);
        if (v1602)
        {
          v1602(*(a2 + 24));
          v1473 = (a2 + 16);
          v1591 = 0;
          LODWORD(v1572) = *(a2 + 16);
          v1573 = *a2;
          v1574 = *(a2 + 8);
          v1592 = (*a2 + (v1572 >> 3));
          if (v1592 < v1574)
          {
            goto LABEL_2369;
          }
        }

        else
        {
          v1591 = 0;
          v1592 = (v1573 + (v1572 >> 3));
          if (v1592 < v1574)
          {
LABEL_2369:
            v1593 = *v1592 >> (~v1572 & 7);
            LODWORD(v1572) = v1572 + 1;
            *v1473 = v1572;
            v1594 = 2 * (v1593 & 1);
            v1595 = (v1573 + (v1572 >> 3));
            if (v1595 < v1574)
            {
              goto LABEL_2370;
            }

            goto LABEL_2385;
          }
        }

LABEL_2383:
        v1603 = *(a2 + 32);
        if (v1603)
        {
          v1603(*(a2 + 24));
          v1473 = (a2 + 16);
          v1594 = 0;
          LODWORD(v1572) = *(a2 + 16);
          v1595 = (*a2 + (v1572 >> 3));
          if (v1595 < *(a2 + 8))
          {
            goto LABEL_2370;
          }
        }

        else
        {
          v1594 = 0;
          v1595 = (v1573 + (v1572 >> 3));
          if (v1595 < v1574)
          {
LABEL_2370:
            v1596 = (*v1595 >> (~v1572 & 7)) & 1;
            *v1473 = v1572 + 1;
            goto LABEL_2388;
          }
        }

LABEL_2385:
        v1604 = *(a2 + 32);
        if (v1604)
        {
          v1604(*(a2 + 24));
          v1473 = (a2 + 16);
        }

        v1596 = 0;
LABEL_2388:
        v1605 = v1596 | v1594 | v1591 | v1588 | v1585 | v1582 | v1579 | v2571;
        *(v1569 - 1) = v1605;
        if (*(v1569 - 3) >= v1605)
        {
          aom_internal_error(*(v2582 + 15248), 5, "First coordinate of the scaling function points shall be increasing.");
          v1473 = (a2 + 16);
        }

        v1606 = *(a2 + 16);
        v1607 = *a2;
        v1608 = *(a2 + 8);
        v1609 = (*a2 + (v1606 >> 3));
        if (v1609 >= v1608)
        {
          v1630 = *(a2 + 32);
          if (v1630)
          {
            v1630(*(a2 + 24));
            v1473 = (a2 + 16);
            v2572 = 0;
            LODWORD(v1606) = *(a2 + 16);
            v1607 = *a2;
            v1608 = *(a2 + 8);
            v1611 = (*a2 + (v1606 >> 3));
            if (v1611 < v1608)
            {
              goto LABEL_2392;
            }
          }

          else
          {
            v2572 = 0;
            v1611 = (v1607 + (v1606 >> 3));
            if (v1611 < v1608)
            {
LABEL_2392:
              v1612 = *v1611 >> (~v1606 & 7);
              LODWORD(v1606) = v1606 + 1;
              *v1473 = v1606;
              v1613 = (v1612 & 1) << 6;
              v1614 = (v1607 + (v1606 >> 3));
              if (v1614 < v1608)
              {
                goto LABEL_2393;
              }

              goto LABEL_2403;
            }
          }
        }

        else
        {
          v1610 = *v1609 >> (~v1606 & 7);
          LODWORD(v1606) = v1606 + 1;
          *v1473 = v1606;
          v2572 = (v1610 & 1) << 7;
          v1611 = (v1607 + (v1606 >> 3));
          if (v1611 < v1608)
          {
            goto LABEL_2392;
          }
        }

        v1631 = *(a2 + 32);
        if (v1631)
        {
          v1631(*(a2 + 24));
          v1473 = (a2 + 16);
          v1613 = 0;
          LODWORD(v1606) = *(a2 + 16);
          v1607 = *a2;
          v1608 = *(a2 + 8);
          v1614 = (*a2 + (v1606 >> 3));
          if (v1614 < v1608)
          {
            goto LABEL_2393;
          }
        }

        else
        {
          v1613 = 0;
          v1614 = (v1607 + (v1606 >> 3));
          if (v1614 < v1608)
          {
LABEL_2393:
            v1615 = *v1614 >> (~v1606 & 7);
            LODWORD(v1606) = v1606 + 1;
            *v1473 = v1606;
            v1616 = 32 * (v1615 & 1);
            v1617 = (v1607 + (v1606 >> 3));
            if (v1617 < v1608)
            {
              goto LABEL_2394;
            }

            goto LABEL_2405;
          }
        }

LABEL_2403:
        v1632 = *(a2 + 32);
        if (v1632)
        {
          v1632(*(a2 + 24));
          v1473 = (a2 + 16);
          v1616 = 0;
          LODWORD(v1606) = *(a2 + 16);
          v1607 = *a2;
          v1608 = *(a2 + 8);
          v1617 = (*a2 + (v1606 >> 3));
          if (v1617 < v1608)
          {
            goto LABEL_2394;
          }
        }

        else
        {
          v1616 = 0;
          v1617 = (v1607 + (v1606 >> 3));
          if (v1617 < v1608)
          {
LABEL_2394:
            v1618 = *v1617 >> (~v1606 & 7);
            LODWORD(v1606) = v1606 + 1;
            *v1473 = v1606;
            v1619 = 16 * (v1618 & 1);
            v1620 = (v1607 + (v1606 >> 3));
            if (v1620 < v1608)
            {
              goto LABEL_2395;
            }

            goto LABEL_2407;
          }
        }

LABEL_2405:
        v1633 = *(a2 + 32);
        if (v1633)
        {
          v1633(*(a2 + 24));
          v1473 = (a2 + 16);
          v1619 = 0;
          LODWORD(v1606) = *(a2 + 16);
          v1607 = *a2;
          v1608 = *(a2 + 8);
          v1620 = (*a2 + (v1606 >> 3));
          if (v1620 < v1608)
          {
            goto LABEL_2395;
          }
        }

        else
        {
          v1619 = 0;
          v1620 = (v1607 + (v1606 >> 3));
          if (v1620 < v1608)
          {
LABEL_2395:
            v1621 = *v1620 >> (~v1606 & 7);
            LODWORD(v1606) = v1606 + 1;
            *v1473 = v1606;
            v1622 = 8 * (v1621 & 1);
            v1623 = (v1607 + (v1606 >> 3));
            if (v1623 < v1608)
            {
              goto LABEL_2396;
            }

            goto LABEL_2409;
          }
        }

LABEL_2407:
        v1634 = *(a2 + 32);
        if (v1634)
        {
          v1634(*(a2 + 24));
          v1473 = (a2 + 16);
          v1622 = 0;
          LODWORD(v1606) = *(a2 + 16);
          v1607 = *a2;
          v1608 = *(a2 + 8);
          v1623 = (*a2 + (v1606 >> 3));
          if (v1623 < v1608)
          {
            goto LABEL_2396;
          }
        }

        else
        {
          v1622 = 0;
          v1623 = (v1607 + (v1606 >> 3));
          if (v1623 < v1608)
          {
LABEL_2396:
            v1624 = *v1623 >> (~v1606 & 7);
            LODWORD(v1606) = v1606 + 1;
            *v1473 = v1606;
            v1625 = 4 * (v1624 & 1);
            v1626 = (v1607 + (v1606 >> 3));
            if (v1626 < v1608)
            {
              goto LABEL_2397;
            }

            goto LABEL_2411;
          }
        }

LABEL_2409:
        v1635 = *(a2 + 32);
        if (v1635)
        {
          v1635(*(a2 + 24));
          v1473 = (a2 + 16);
          v1625 = 0;
          LODWORD(v1606) = *(a2 + 16);
          v1607 = *a2;
          v1608 = *(a2 + 8);
          v1626 = (*a2 + (v1606 >> 3));
          if (v1626 < v1608)
          {
            goto LABEL_2397;
          }
        }

        else
        {
          v1625 = 0;
          v1626 = (v1607 + (v1606 >> 3));
          if (v1626 < v1608)
          {
LABEL_2397:
            v1627 = *v1626 >> (~v1606 & 7);
            LODWORD(v1606) = v1606 + 1;
            *v1473 = v1606;
            v1628 = 2 * (v1627 & 1);
            v1629 = (v1607 + (v1606 >> 3));
            if (v1629 >= v1608)
            {
              goto LABEL_2441;
            }

            goto LABEL_2360;
          }
        }

LABEL_2411:
        v1636 = *(a2 + 32);
        if (v1636)
        {
          v1636(*(a2 + 24));
          v1473 = (a2 + 16);
          v1628 = 0;
          LODWORD(v1606) = *(a2 + 16);
          v1629 = (*a2 + (v1606 >> 3));
          if (v1629 >= *(a2 + 8))
          {
            goto LABEL_2441;
          }
        }

        else
        {
          v1628 = 0;
          v1629 = (v1607 + (v1606 >> 3));
          if (v1629 >= v1608)
          {
LABEL_2441:
            v1637 = *(a2 + 32);
            if (v1637)
            {
              v1637(*(a2 + 24));
              v1473 = (a2 + 16);
            }

            v1571 = 0;
            goto LABEL_2361;
          }
        }

LABEL_2360:
        v1571 = (*v1629 >> (~v1606 & 7)) & 1;
        *v1473 = v1606 + 1;
LABEL_2361:
        *v1569 = v1571 | v1628 | v1625 | v1622 | v1619 | v1616 | v1613 | v2572;
        v1569 += 2;
      }
    }
  }

  if (v2566[1].__opaque[5])
  {
    v1240 = v2581;
    v1095 = v2582;
    *(v2581 + 1236) = 0;
    goto LABEL_2446;
  }

  v1689 = *(a2 + 16);
  v1690 = (*a2 + (v1689 >> 3));
  v1240 = v2581;
  v1095 = v2582;
  if (v1690 < *(a2 + 8))
  {
    LODWORD(v1690) = (*v1690 >> (~v1689 & 7)) & 1;
    *v1473 = v1689 + 1;
    goto LABEL_2624;
  }

  v1690 = *(a2 + 32);
  if (v1690)
  {
    v1690(*(a2 + 24));
    v1473 = (a2 + 16);
    LODWORD(v1690) = 0;
    v1776 = v2566[1].__opaque[5] == 0;
  }

  else
  {
LABEL_2624:
    v1776 = 1;
  }

  *(v2581 + 1236) = v1690;
  if (!v1776 || v1690 || *&v2566[1].__opaque[24] == 1 && *&v2566[1].__opaque[28] == 1 && !*(v2581 + 720))
  {
LABEL_2446:
    *(v1240 + 804) = 0;
    *(v1240 + 888) = 0;
  }

  else
  {
    v1777 = *(a2 + 16);
    v1778 = *a2;
    v1779 = *(a2 + 8);
    v1780 = (*a2 + (v1777 >> 3));
    if (v1780 >= v1779)
    {
      v1955 = *(a2 + 32);
      if (v1955)
      {
        v1955(*(a2 + 24));
        v1473 = (a2 + 16);
        v1782 = 0;
        LODWORD(v1777) = *(a2 + 16);
        v1778 = *a2;
        v1779 = *(a2 + 8);
      }

      else
      {
        v1782 = 0;
      }
    }

    else
    {
      v1781 = *v1780 >> (~v1777 & 7);
      LODWORD(v1777) = v1777 + 1;
      *v1473 = v1777;
      v1782 = 8 * (v1781 & 1);
    }

    v1959 = (v1778 + (v1777 >> 3));
    if (v1959 >= v1779)
    {
      v1959 = *(a2 + 32);
      if (v1959)
      {
        v1959(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1959) = 0;
        LODWORD(v1777) = *(a2 + 16);
        v1778 = *a2;
        v1779 = *(a2 + 8);
      }
    }

    else
    {
      v1960 = *v1959 >> (~v1777 & 7);
      LODWORD(v1777) = v1777 + 1;
      *v1473 = v1777;
      LODWORD(v1959) = 4 * (v1960 & 1);
    }

    v1961 = v1959 | v1782;
    v1962 = (v1778 + (v1777 >> 3));
    if (v1962 >= v1779)
    {
      v1962 = *(a2 + 32);
      if (v1962)
      {
        v1962(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1962) = 0;
        LODWORD(v1777) = *(a2 + 16);
        v1778 = *a2;
        v1779 = *(a2 + 8);
      }
    }

    else
    {
      v1963 = *v1962 >> (~v1777 & 7);
      LODWORD(v1777) = v1777 + 1;
      *v1473 = v1777;
      LODWORD(v1962) = 2 * (v1963 & 1);
    }

    v1964 = v1962 | v1961;
    v1965 = (v1778 + (v1777 >> 3));
    if (v1965 >= v1779)
    {
      v1967 = *(a2 + 32);
      if (v1967)
      {
        v1967(*(a2 + 24));
        v1473 = (a2 + 16);
      }

      v1966 = 0;
    }

    else
    {
      v1966 = (*v1965 >> (~v1777 & 7)) & 1;
      *v1473 = v1777 + 1;
    }

    v1968 = v1966 | v1964;
    *(v2581 + 804) = v1966 | v1964;
    if ((v1966 | v1964) >= 0xB)
    {
      aom_internal_error(*(v2582 + 15248), 5, "Number of points for film grain cb scaling function exceeds the maximum value.");
      v1473 = (a2 + 16);
      v1968 = *(v2581 + 804);
    }

    if (v1968 >= 1)
    {
      v1969 = *(a2 + 16);
      v1970 = *a2;
      v1971 = *(a2 + 8);
      v1972 = (*a2 + (v1969 >> 3));
      if (v1972 >= v1971)
      {
        v1976 = *(a2 + 32);
        v1975 = v2581;
        if (v1976)
        {
          v1976(*(a2 + 24));
          v1473 = (a2 + 16);
          v1974 = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }

        else
        {
          v1974 = 0;
        }
      }

      else
      {
        v1973 = *v1972 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        v1974 = (v1973 & 1) << 7;
        v1975 = v2581;
      }

      v2274 = (v1970 + (v1969 >> 3));
      if (v2274 >= v1971)
      {
        v2274 = *(a2 + 32);
        if (v2274)
        {
          v2274(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2274) = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2275 = *v2274 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        LODWORD(v2274) = (v2275 & 1) << 6;
      }

      v2276 = v2274 | v1974;
      v2277 = (v1970 + (v1969 >> 3));
      if (v2277 >= v1971)
      {
        v2277 = *(a2 + 32);
        if (v2277)
        {
          v2277(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2277) = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2278 = *v2277 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        LODWORD(v2277) = 32 * (v2278 & 1);
      }

      v2279 = v2277 | v2276;
      v2280 = (v1970 + (v1969 >> 3));
      if (v2280 >= v1971)
      {
        v2280 = *(a2 + 32);
        if (v2280)
        {
          v2280(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2280) = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2281 = *v2280 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        LODWORD(v2280) = 16 * (v2281 & 1);
      }

      v2282 = v2280 | v2279;
      v2283 = (v1970 + (v1969 >> 3));
      if (v2283 >= v1971)
      {
        v2283 = *(a2 + 32);
        if (v2283)
        {
          v2283(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2283) = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2284 = *v2283 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        LODWORD(v2283) = 8 * (v2284 & 1);
      }

      v2285 = v2283 | v2282;
      v2286 = (v1970 + (v1969 >> 3));
      if (v2286 >= v1971)
      {
        v2286 = *(a2 + 32);
        if (v2286)
        {
          v2286(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2286) = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2287 = *v2286 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        LODWORD(v2286) = 4 * (v2287 & 1);
      }

      v2288 = v2286 | v2285;
      v2289 = (v1970 + (v1969 >> 3));
      if (v2289 >= v1971)
      {
        v2289 = *(a2 + 32);
        if (v2289)
        {
          v2289(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2289) = 0;
          LODWORD(v1969) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2290 = *v2289 >> (~v1969 & 7);
        LODWORD(v1969) = v1969 + 1;
        *v1473 = v1969;
        LODWORD(v2289) = 2 * (v2290 & 1);
      }

      v2291 = v2289 | v2288;
      v2292 = (v1970 + (v1969 >> 3));
      if (v2292 >= v1971)
      {
        v2294 = *(a2 + 32);
        if (v2294)
        {
          v2294(*(a2 + 24));
          v1473 = (a2 + 16);
          v2293 = 0;
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }

        else
        {
          v2293 = 0;
        }
      }

      else
      {
        v2293 = (*v2292 >> (~v1969 & 7)) & 1;
        *v1473 = v1969 + 1;
      }

      v1975[181] = v2293 | v2291;
      v2295 = *v1473;
      v2296 = (v1970 + (v2295 >> 3));
      if (v2296 >= v1971)
      {
        v2299 = *(a2 + 32);
        if (v2299)
        {
          v2299(*(a2 + 24));
          v1473 = (a2 + 16);
          v2298 = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }

        else
        {
          v2298 = 0;
        }
      }

      else
      {
        v2297 = *v2296 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        v2298 = (v2297 & 1) << 7;
      }

      v2300 = (v1970 + (v2295 >> 3));
      if (v2300 >= v1971)
      {
        v2300 = *(a2 + 32);
        if (v2300)
        {
          v2300(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2300) = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2301 = *v2300 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        LODWORD(v2300) = (v2301 & 1) << 6;
      }

      v2302 = v2300 | v2298;
      v2303 = (v1970 + (v2295 >> 3));
      if (v2303 >= v1971)
      {
        v2303 = *(a2 + 32);
        if (v2303)
        {
          v2303(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2303) = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2304 = *v2303 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        LODWORD(v2303) = 32 * (v2304 & 1);
      }

      v2305 = v2303 | v2302;
      v2306 = (v1970 + (v2295 >> 3));
      if (v2306 >= v1971)
      {
        v2306 = *(a2 + 32);
        if (v2306)
        {
          v2306(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2306) = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2307 = *v2306 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        LODWORD(v2306) = 16 * (v2307 & 1);
      }

      v2308 = v2306 | v2305;
      v2309 = (v1970 + (v2295 >> 3));
      if (v2309 >= v1971)
      {
        v2309 = *(a2 + 32);
        if (v2309)
        {
          v2309(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2309) = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2310 = *v2309 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        LODWORD(v2309) = 8 * (v2310 & 1);
      }

      v2311 = v2309 | v2308;
      v2312 = (v1970 + (v2295 >> 3));
      if (v2312 >= v1971)
      {
        v2312 = *(a2 + 32);
        if (v2312)
        {
          v2312(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2312) = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2313 = *v2312 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        LODWORD(v2312) = 4 * (v2313 & 1);
      }

      v2314 = v2312 | v2311;
      v2315 = (v1970 + (v2295 >> 3));
      if (v2315 >= v1971)
      {
        v2315 = *(a2 + 32);
        if (v2315)
        {
          v2315(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2315) = 0;
          LODWORD(v2295) = *(a2 + 16);
          v1970 = *a2;
          v1971 = *(a2 + 8);
        }
      }

      else
      {
        v2316 = *v2315 >> (~v2295 & 7);
        LODWORD(v2295) = v2295 + 1;
        *v1473 = v2295;
        LODWORD(v2315) = 2 * (v2316 & 1);
      }

      v2317 = v2315 | v2314;
      v2318 = (v1970 + (v2295 >> 3));
      if (v2318 >= v1971)
      {
        v2318 = *(a2 + 32);
        if (v2318)
        {
          v2318(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2318) = 0;
        }
      }

      else
      {
        LODWORD(v2318) = (*v2318 >> (~v2295 & 7)) & 1;
        *v1473 = v2295 + 1;
      }

      v1975[182] = v2318 | v2317;
      if (v1975[201] >= 2)
      {
        v2319 = (v2581 + 736);
        for (jj = 1; jj < *(v2581 + 804); ++jj)
        {
          v2322 = *(a2 + 16);
          v2323 = *a2;
          v2324 = *(a2 + 8);
          v2325 = (*a2 + (v2322 >> 3));
          if (v2325 >= v2324)
          {
            v2347 = *(a2 + 32);
            if (v2347)
            {
              v2347(*(a2 + 24));
              v1473 = (a2 + 16);
              v2576 = 0;
              LODWORD(v2322) = *(a2 + 16);
              v2323 = *a2;
              v2324 = *(a2 + 8);
              v2327 = (*a2 + (v2322 >> 3));
              if (v2327 < v2324)
              {
                goto LABEL_3356;
              }
            }

            else
            {
              v2576 = 0;
              v2327 = (v2323 + (v2322 >> 3));
              if (v2327 < v2324)
              {
LABEL_3356:
                v2328 = *v2327 >> (~v2322 & 7);
                LODWORD(v2322) = v2322 + 1;
                *v1473 = v2322;
                v2329 = (v2328 & 1) << 6;
                v2330 = (v2323 + (v2322 >> 3));
                if (v2330 < v2324)
                {
                  goto LABEL_3357;
                }

                goto LABEL_3367;
              }
            }
          }

          else
          {
            v2326 = *v2325 >> (~v2322 & 7);
            LODWORD(v2322) = v2322 + 1;
            *v1473 = v2322;
            v2576 = (v2326 & 1) << 7;
            v2327 = (v2323 + (v2322 >> 3));
            if (v2327 < v2324)
            {
              goto LABEL_3356;
            }
          }

          v2348 = *(a2 + 32);
          if (v2348)
          {
            v2348(*(a2 + 24));
            v1473 = (a2 + 16);
            v2329 = 0;
            LODWORD(v2322) = *(a2 + 16);
            v2323 = *a2;
            v2324 = *(a2 + 8);
            v2330 = (*a2 + (v2322 >> 3));
            if (v2330 < v2324)
            {
              goto LABEL_3357;
            }
          }

          else
          {
            v2329 = 0;
            v2330 = (v2323 + (v2322 >> 3));
            if (v2330 < v2324)
            {
LABEL_3357:
              v2331 = *v2330 >> (~v2322 & 7);
              LODWORD(v2322) = v2322 + 1;
              *v1473 = v2322;
              v2332 = 32 * (v2331 & 1);
              v2333 = (v2323 + (v2322 >> 3));
              if (v2333 < v2324)
              {
                goto LABEL_3358;
              }

              goto LABEL_3369;
            }
          }

LABEL_3367:
          v2349 = *(a2 + 32);
          if (v2349)
          {
            v2349(*(a2 + 24));
            v1473 = (a2 + 16);
            v2332 = 0;
            LODWORD(v2322) = *(a2 + 16);
            v2323 = *a2;
            v2324 = *(a2 + 8);
            v2333 = (*a2 + (v2322 >> 3));
            if (v2333 < v2324)
            {
              goto LABEL_3358;
            }
          }

          else
          {
            v2332 = 0;
            v2333 = (v2323 + (v2322 >> 3));
            if (v2333 < v2324)
            {
LABEL_3358:
              v2334 = *v2333 >> (~v2322 & 7);
              LODWORD(v2322) = v2322 + 1;
              *v1473 = v2322;
              v2335 = 16 * (v2334 & 1);
              v2336 = (v2323 + (v2322 >> 3));
              if (v2336 < v2324)
              {
                goto LABEL_3359;
              }

              goto LABEL_3371;
            }
          }

LABEL_3369:
          v2350 = *(a2 + 32);
          if (v2350)
          {
            v2350(*(a2 + 24));
            v1473 = (a2 + 16);
            v2335 = 0;
            LODWORD(v2322) = *(a2 + 16);
            v2323 = *a2;
            v2324 = *(a2 + 8);
            v2336 = (*a2 + (v2322 >> 3));
            if (v2336 < v2324)
            {
              goto LABEL_3359;
            }
          }

          else
          {
            v2335 = 0;
            v2336 = (v2323 + (v2322 >> 3));
            if (v2336 < v2324)
            {
LABEL_3359:
              v2337 = *v2336 >> (~v2322 & 7);
              LODWORD(v2322) = v2322 + 1;
              *v1473 = v2322;
              v2338 = 8 * (v2337 & 1);
              v2339 = (v2323 + (v2322 >> 3));
              if (v2339 < v2324)
              {
                goto LABEL_3360;
              }

              goto LABEL_3373;
            }
          }

LABEL_3371:
          v2351 = *(a2 + 32);
          if (v2351)
          {
            v2351(*(a2 + 24));
            v1473 = (a2 + 16);
            v2338 = 0;
            LODWORD(v2322) = *(a2 + 16);
            v2323 = *a2;
            v2324 = *(a2 + 8);
            v2339 = (*a2 + (v2322 >> 3));
            if (v2339 < v2324)
            {
              goto LABEL_3360;
            }
          }

          else
          {
            v2338 = 0;
            v2339 = (v2323 + (v2322 >> 3));
            if (v2339 < v2324)
            {
LABEL_3360:
              v2340 = *v2339 >> (~v2322 & 7);
              LODWORD(v2322) = v2322 + 1;
              *v1473 = v2322;
              v2341 = 4 * (v2340 & 1);
              v2342 = (v2323 + (v2322 >> 3));
              if (v2342 < v2324)
              {
                goto LABEL_3361;
              }

              goto LABEL_3375;
            }
          }

LABEL_3373:
          v2352 = *(a2 + 32);
          if (v2352)
          {
            v2352(*(a2 + 24));
            v1473 = (a2 + 16);
            v2341 = 0;
            LODWORD(v2322) = *(a2 + 16);
            v2323 = *a2;
            v2324 = *(a2 + 8);
            v2342 = (*a2 + (v2322 >> 3));
            if (v2342 < v2324)
            {
              goto LABEL_3361;
            }
          }

          else
          {
            v2341 = 0;
            v2342 = (v2323 + (v2322 >> 3));
            if (v2342 < v2324)
            {
LABEL_3361:
              v2343 = *v2342 >> (~v2322 & 7);
              LODWORD(v2322) = v2322 + 1;
              *v1473 = v2322;
              v2344 = 2 * (v2343 & 1);
              v2345 = (v2323 + (v2322 >> 3));
              if (v2345 < v2324)
              {
                goto LABEL_3362;
              }

              goto LABEL_3377;
            }
          }

LABEL_3375:
          v2353 = *(a2 + 32);
          if (v2353)
          {
            v2353(*(a2 + 24));
            v1473 = (a2 + 16);
            v2344 = 0;
            LODWORD(v2322) = *(a2 + 16);
            v2345 = (*a2 + (v2322 >> 3));
            if (v2345 < *(a2 + 8))
            {
              goto LABEL_3362;
            }
          }

          else
          {
            v2344 = 0;
            v2345 = (v2323 + (v2322 >> 3));
            if (v2345 < v2324)
            {
LABEL_3362:
              v2346 = (*v2345 >> (~v2322 & 7)) & 1;
              *v1473 = v2322 + 1;
              goto LABEL_3380;
            }
          }

LABEL_3377:
          v2354 = *(a2 + 32);
          if (v2354)
          {
            v2354(*(a2 + 24));
            v1473 = (a2 + 16);
          }

          v2346 = 0;
LABEL_3380:
          v2355 = v2346 | v2344 | v2341 | v2338 | v2335 | v2332 | v2329 | v2576;
          *(v2319 - 1) = v2355;
          if (*(v2319 - 3) >= v2355)
          {
            aom_internal_error(*(v2582 + 15248), 5, "First coordinate of the scaling function points shall be increasing.");
            v1473 = (a2 + 16);
          }

          v2356 = *(a2 + 16);
          v2357 = *a2;
          v2358 = *(a2 + 8);
          v2359 = (*a2 + (v2356 >> 3));
          if (v2359 >= v2358)
          {
            v2380 = *(a2 + 32);
            if (v2380)
            {
              v2380(*(a2 + 24));
              v1473 = (a2 + 16);
              v2577 = 0;
              LODWORD(v2356) = *(a2 + 16);
              v2357 = *a2;
              v2358 = *(a2 + 8);
              v2361 = (*a2 + (v2356 >> 3));
              if (v2361 < v2358)
              {
                goto LABEL_3384;
              }
            }

            else
            {
              v2577 = 0;
              v2361 = (v2357 + (v2356 >> 3));
              if (v2361 < v2358)
              {
LABEL_3384:
                v2362 = *v2361 >> (~v2356 & 7);
                LODWORD(v2356) = v2356 + 1;
                *v1473 = v2356;
                v2363 = (v2362 & 1) << 6;
                v2364 = (v2357 + (v2356 >> 3));
                if (v2364 < v2358)
                {
                  goto LABEL_3385;
                }

                goto LABEL_3395;
              }
            }
          }

          else
          {
            v2360 = *v2359 >> (~v2356 & 7);
            LODWORD(v2356) = v2356 + 1;
            *v1473 = v2356;
            v2577 = (v2360 & 1) << 7;
            v2361 = (v2357 + (v2356 >> 3));
            if (v2361 < v2358)
            {
              goto LABEL_3384;
            }
          }

          v2381 = *(a2 + 32);
          if (v2381)
          {
            v2381(*(a2 + 24));
            v1473 = (a2 + 16);
            v2363 = 0;
            LODWORD(v2356) = *(a2 + 16);
            v2357 = *a2;
            v2358 = *(a2 + 8);
            v2364 = (*a2 + (v2356 >> 3));
            if (v2364 < v2358)
            {
              goto LABEL_3385;
            }
          }

          else
          {
            v2363 = 0;
            v2364 = (v2357 + (v2356 >> 3));
            if (v2364 < v2358)
            {
LABEL_3385:
              v2365 = *v2364 >> (~v2356 & 7);
              LODWORD(v2356) = v2356 + 1;
              *v1473 = v2356;
              v2366 = 32 * (v2365 & 1);
              v2367 = (v2357 + (v2356 >> 3));
              if (v2367 < v2358)
              {
                goto LABEL_3386;
              }

              goto LABEL_3397;
            }
          }

LABEL_3395:
          v2382 = *(a2 + 32);
          if (v2382)
          {
            v2382(*(a2 + 24));
            v1473 = (a2 + 16);
            v2366 = 0;
            LODWORD(v2356) = *(a2 + 16);
            v2357 = *a2;
            v2358 = *(a2 + 8);
            v2367 = (*a2 + (v2356 >> 3));
            if (v2367 < v2358)
            {
              goto LABEL_3386;
            }
          }

          else
          {
            v2366 = 0;
            v2367 = (v2357 + (v2356 >> 3));
            if (v2367 < v2358)
            {
LABEL_3386:
              v2368 = *v2367 >> (~v2356 & 7);
              LODWORD(v2356) = v2356 + 1;
              *v1473 = v2356;
              v2369 = 16 * (v2368 & 1);
              v2370 = (v2357 + (v2356 >> 3));
              if (v2370 < v2358)
              {
                goto LABEL_3387;
              }

              goto LABEL_3399;
            }
          }

LABEL_3397:
          v2383 = *(a2 + 32);
          if (v2383)
          {
            v2383(*(a2 + 24));
            v1473 = (a2 + 16);
            v2369 = 0;
            LODWORD(v2356) = *(a2 + 16);
            v2357 = *a2;
            v2358 = *(a2 + 8);
            v2370 = (*a2 + (v2356 >> 3));
            if (v2370 < v2358)
            {
              goto LABEL_3387;
            }
          }

          else
          {
            v2369 = 0;
            v2370 = (v2357 + (v2356 >> 3));
            if (v2370 < v2358)
            {
LABEL_3387:
              v2371 = *v2370 >> (~v2356 & 7);
              LODWORD(v2356) = v2356 + 1;
              *v1473 = v2356;
              v2372 = 8 * (v2371 & 1);
              v2373 = (v2357 + (v2356 >> 3));
              if (v2373 < v2358)
              {
                goto LABEL_3388;
              }

              goto LABEL_3401;
            }
          }

LABEL_3399:
          v2384 = *(a2 + 32);
          if (v2384)
          {
            v2384(*(a2 + 24));
            v1473 = (a2 + 16);
            v2372 = 0;
            LODWORD(v2356) = *(a2 + 16);
            v2357 = *a2;
            v2358 = *(a2 + 8);
            v2373 = (*a2 + (v2356 >> 3));
            if (v2373 < v2358)
            {
              goto LABEL_3388;
            }
          }

          else
          {
            v2372 = 0;
            v2373 = (v2357 + (v2356 >> 3));
            if (v2373 < v2358)
            {
LABEL_3388:
              v2374 = *v2373 >> (~v2356 & 7);
              LODWORD(v2356) = v2356 + 1;
              *v1473 = v2356;
              v2375 = 4 * (v2374 & 1);
              v2376 = (v2357 + (v2356 >> 3));
              if (v2376 < v2358)
              {
                goto LABEL_3389;
              }

              goto LABEL_3403;
            }
          }

LABEL_3401:
          v2385 = *(a2 + 32);
          if (v2385)
          {
            v2385(*(a2 + 24));
            v1473 = (a2 + 16);
            v2375 = 0;
            LODWORD(v2356) = *(a2 + 16);
            v2357 = *a2;
            v2358 = *(a2 + 8);
            v2376 = (*a2 + (v2356 >> 3));
            if (v2376 < v2358)
            {
              goto LABEL_3389;
            }
          }

          else
          {
            v2375 = 0;
            v2376 = (v2357 + (v2356 >> 3));
            if (v2376 < v2358)
            {
LABEL_3389:
              v2377 = *v2376 >> (~v2356 & 7);
              LODWORD(v2356) = v2356 + 1;
              *v1473 = v2356;
              v2378 = 2 * (v2377 & 1);
              v2379 = (v2357 + (v2356 >> 3));
              if (v2379 >= v2358)
              {
                goto LABEL_3433;
              }

              goto LABEL_3352;
            }
          }

LABEL_3403:
          v2386 = *(a2 + 32);
          if (v2386)
          {
            v2386(*(a2 + 24));
            v1473 = (a2 + 16);
            v2378 = 0;
            LODWORD(v2356) = *(a2 + 16);
            v2379 = (*a2 + (v2356 >> 3));
            if (v2379 >= *(a2 + 8))
            {
              goto LABEL_3433;
            }
          }

          else
          {
            v2378 = 0;
            v2379 = (v2357 + (v2356 >> 3));
            if (v2379 >= v2358)
            {
LABEL_3433:
              v2387 = *(a2 + 32);
              if (v2387)
              {
                v2387(*(a2 + 24));
                v1473 = (a2 + 16);
              }

              v2321 = 0;
              goto LABEL_3353;
            }
          }

LABEL_3352:
          v2321 = (*v2379 >> (~v2356 & 7)) & 1;
          *v1473 = v2356 + 1;
LABEL_3353:
          *v2319 = v2321 | v2378 | v2375 | v2372 | v2369 | v2366 | v2363 | v2577;
          v2319 += 2;
        }
      }
    }

    v2388 = *(a2 + 16);
    v2389 = *a2;
    v2390 = *(a2 + 8);
    v2391 = (*a2 + (v2388 >> 3));
    if (v2391 >= v2390)
    {
      v2394 = *(a2 + 32);
      v1240 = v2581;
      if (v2394)
      {
        v2394(*(a2 + 24));
        v1473 = (a2 + 16);
        v2393 = 0;
        LODWORD(v2388) = *(a2 + 16);
        v2389 = *a2;
        v2390 = *(a2 + 8);
      }

      else
      {
        v2393 = 0;
      }
    }

    else
    {
      v2392 = *v2391 >> (~v2388 & 7);
      LODWORD(v2388) = v2388 + 1;
      *v1473 = v2388;
      v2393 = 8 * (v2392 & 1);
      v1240 = v2581;
    }

    v2395 = (v2389 + (v2388 >> 3));
    if (v2395 >= v2390)
    {
      v2395 = *(a2 + 32);
      v1095 = v2582;
      if (v2395)
      {
        v2395(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v2395) = 0;
        LODWORD(v2388) = *(a2 + 16);
        v2389 = *a2;
        v2390 = *(a2 + 8);
      }
    }

    else
    {
      v2396 = *v2395 >> (~v2388 & 7);
      LODWORD(v2388) = v2388 + 1;
      *v1473 = v2388;
      LODWORD(v2395) = 4 * (v2396 & 1);
      v1095 = v2582;
    }

    v2397 = v2395 | v2393;
    v2398 = (v2389 + (v2388 >> 3));
    if (v2398 >= v2390)
    {
      v2398 = *(a2 + 32);
      if (v2398)
      {
        v2398(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v2398) = 0;
        LODWORD(v2388) = *(a2 + 16);
        v2389 = *a2;
        v2390 = *(a2 + 8);
      }
    }

    else
    {
      v2399 = *v2398 >> (~v2388 & 7);
      LODWORD(v2388) = v2388 + 1;
      *v1473 = v2388;
      LODWORD(v2398) = 2 * (v2399 & 1);
    }

    v2400 = v2398 | v2397;
    v2401 = (v2389 + (v2388 >> 3));
    if (v2401 >= v2390)
    {
      v2403 = *(a2 + 32);
      if (v2403)
      {
        v2403(*(a2 + 24));
        v1473 = (a2 + 16);
      }

      v2402 = 0;
    }

    else
    {
      v2402 = (*v2401 >> (~v2388 & 7)) & 1;
      *v1473 = v2388 + 1;
    }

    LODWORD(v2404) = v2402 | v2400;
    *(v1240 + 888) = v2402 | v2400;
    if ((v2402 | v2400) > 0xA)
    {
      aom_internal_error(*(v1095 + 15248), 5, "Number of points for film grain cr scaling function exceeds the maximum value.");
      v1473 = (a2 + 16);
      LODWORD(v2404) = *(v1240 + 888);
    }

    if (v2404 >= 1)
    {
      v2405 = *(a2 + 16);
      v2406 = *a2;
      v2407 = *(a2 + 8);
      v2408 = (*a2 + (v2405 >> 3));
      if (v2408 >= v2407)
      {
        v2411 = *(a2 + 32);
        if (v2411)
        {
          v2411(*(a2 + 24));
          v1473 = (a2 + 16);
          v2410 = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }

        else
        {
          v2410 = 0;
        }
      }

      else
      {
        v2409 = *v2408 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        v2410 = (v2409 & 1) << 7;
      }

      v2412 = (v2406 + (v2405 >> 3));
      if (v2412 >= v2407)
      {
        v2412 = *(a2 + 32);
        if (v2412)
        {
          v2412(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2412) = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2413 = *v2412 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        LODWORD(v2412) = (v2413 & 1) << 6;
      }

      v2414 = v2412 | v2410;
      v2415 = (v2406 + (v2405 >> 3));
      if (v2415 >= v2407)
      {
        v2415 = *(a2 + 32);
        if (v2415)
        {
          v2415(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2415) = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2416 = *v2415 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        LODWORD(v2415) = 32 * (v2416 & 1);
      }

      v2417 = v2415 | v2414;
      v2418 = (v2406 + (v2405 >> 3));
      if (v2418 >= v2407)
      {
        v2418 = *(a2 + 32);
        if (v2418)
        {
          v2418(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2418) = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2419 = *v2418 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        LODWORD(v2418) = 16 * (v2419 & 1);
      }

      v2420 = v2418 | v2417;
      v2421 = (v2406 + (v2405 >> 3));
      if (v2421 >= v2407)
      {
        v2421 = *(a2 + 32);
        if (v2421)
        {
          v2421(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2421) = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2422 = *v2421 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        LODWORD(v2421) = 8 * (v2422 & 1);
      }

      v2423 = v2421 | v2420;
      v2424 = (v2406 + (v2405 >> 3));
      if (v2424 >= v2407)
      {
        v2424 = *(a2 + 32);
        if (v2424)
        {
          v2424(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2424) = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2425 = *v2424 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        LODWORD(v2424) = 4 * (v2425 & 1);
      }

      v2426 = v2424 | v2423;
      v2427 = (v2406 + (v2405 >> 3));
      if (v2427 >= v2407)
      {
        v2427 = *(a2 + 32);
        if (v2427)
        {
          v2427(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2427) = 0;
          LODWORD(v2405) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2428 = *v2427 >> (~v2405 & 7);
        LODWORD(v2405) = v2405 + 1;
        *v1473 = v2405;
        LODWORD(v2427) = 2 * (v2428 & 1);
      }

      v2429 = v2427 | v2426;
      v2430 = (v2406 + (v2405 >> 3));
      if (v2430 >= v2407)
      {
        v2432 = *(a2 + 32);
        if (v2432)
        {
          v2432(*(a2 + 24));
          v1473 = (a2 + 16);
          v2431 = 0;
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }

        else
        {
          v2431 = 0;
        }
      }

      else
      {
        v2431 = (*v2430 >> (~v2405 & 7)) & 1;
        *v1473 = v2405 + 1;
      }

      *(v1240 + 808) = v2431 | v2429;
      v2433 = *v1473;
      v2434 = (v2406 + (v2433 >> 3));
      if (v2434 >= v2407)
      {
        v2437 = *(a2 + 32);
        if (v2437)
        {
          v2437(*(a2 + 24));
          v1473 = (a2 + 16);
          v2436 = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }

        else
        {
          v2436 = 0;
        }
      }

      else
      {
        v2435 = *v2434 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        v2436 = (v2435 & 1) << 7;
      }

      v2438 = (v2406 + (v2433 >> 3));
      if (v2438 >= v2407)
      {
        v2438 = *(a2 + 32);
        if (v2438)
        {
          v2438(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2438) = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2439 = *v2438 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        LODWORD(v2438) = (v2439 & 1) << 6;
      }

      v2440 = v2438 | v2436;
      v2441 = (v2406 + (v2433 >> 3));
      if (v2441 >= v2407)
      {
        v2441 = *(a2 + 32);
        if (v2441)
        {
          v2441(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2441) = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2442 = *v2441 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        LODWORD(v2441) = 32 * (v2442 & 1);
      }

      v2443 = v2441 | v2440;
      v2444 = (v2406 + (v2433 >> 3));
      if (v2444 >= v2407)
      {
        v2444 = *(a2 + 32);
        if (v2444)
        {
          v2444(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2444) = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2445 = *v2444 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        LODWORD(v2444) = 16 * (v2445 & 1);
      }

      v2446 = v2444 | v2443;
      v2447 = (v2406 + (v2433 >> 3));
      if (v2447 >= v2407)
      {
        v2447 = *(a2 + 32);
        if (v2447)
        {
          v2447(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2447) = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2448 = *v2447 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        LODWORD(v2447) = 8 * (v2448 & 1);
      }

      v2449 = v2447 | v2446;
      v2450 = (v2406 + (v2433 >> 3));
      if (v2450 >= v2407)
      {
        v2450 = *(a2 + 32);
        if (v2450)
        {
          v2450(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2450) = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2451 = *v2450 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        LODWORD(v2450) = 4 * (v2451 & 1);
      }

      v2452 = v2450 | v2449;
      v2453 = (v2406 + (v2433 >> 3));
      if (v2453 >= v2407)
      {
        v2453 = *(a2 + 32);
        if (v2453)
        {
          v2453(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2453) = 0;
          LODWORD(v2433) = *(a2 + 16);
          v2406 = *a2;
          v2407 = *(a2 + 8);
        }
      }

      else
      {
        v2454 = *v2453 >> (~v2433 & 7);
        LODWORD(v2433) = v2433 + 1;
        *v1473 = v2433;
        LODWORD(v2453) = 2 * (v2454 & 1);
      }

      v2455 = v2453 | v2452;
      v2404 = v2406 + (v2433 >> 3);
      if (v2404 >= v2407)
      {
        v2404 = *(a2 + 32);
        if (v2404)
        {
          (v2404)(*(a2 + 24));
          v1473 = (a2 + 16);
          LODWORD(v2404) = 0;
        }
      }

      else
      {
        LODWORD(v2404) = (*v2404 >> (~v2433 & 7)) & 1;
        *v1473 = v2433 + 1;
      }

      *(v1240 + 812) = v2404 | v2455;
      LODWORD(v2404) = *(v1240 + 888);
      if (v2404 >= 2)
      {
        v2456 = (v1240 + 820);
        v2457 = 1;
        while (1)
        {
          v2459 = *(a2 + 16);
          v2460 = *a2;
          v2461 = *(a2 + 8);
          v2462 = (*a2 + (v2459 >> 3));
          if (v2462 >= v2461)
          {
            v2484 = *(a2 + 32);
            if (v2484)
            {
              v2484(*(a2 + 24));
              v1473 = (a2 + 16);
              v2578 = 0;
              LODWORD(v2459) = *(a2 + 16);
              v2460 = *a2;
              v2461 = *(a2 + 8);
              v2464 = (*a2 + (v2459 >> 3));
              if (v2464 < v2461)
              {
                goto LABEL_3530;
              }
            }

            else
            {
              v2578 = 0;
              v2464 = (v2460 + (v2459 >> 3));
              if (v2464 < v2461)
              {
LABEL_3530:
                v2465 = *v2464 >> (~v2459 & 7);
                LODWORD(v2459) = v2459 + 1;
                *v1473 = v2459;
                v2466 = (v2465 & 1) << 6;
                v2467 = (v2460 + (v2459 >> 3));
                if (v2467 < v2461)
                {
                  goto LABEL_3531;
                }

                goto LABEL_3541;
              }
            }
          }

          else
          {
            v2463 = *v2462 >> (~v2459 & 7);
            LODWORD(v2459) = v2459 + 1;
            *v1473 = v2459;
            v2578 = (v2463 & 1) << 7;
            v2464 = (v2460 + (v2459 >> 3));
            if (v2464 < v2461)
            {
              goto LABEL_3530;
            }
          }

          v2485 = *(a2 + 32);
          if (v2485)
          {
            v2485(*(a2 + 24));
            v1473 = (a2 + 16);
            v2466 = 0;
            LODWORD(v2459) = *(a2 + 16);
            v2460 = *a2;
            v2461 = *(a2 + 8);
            v2467 = (*a2 + (v2459 >> 3));
            if (v2467 < v2461)
            {
              goto LABEL_3531;
            }
          }

          else
          {
            v2466 = 0;
            v2467 = (v2460 + (v2459 >> 3));
            if (v2467 < v2461)
            {
LABEL_3531:
              v2468 = *v2467 >> (~v2459 & 7);
              LODWORD(v2459) = v2459 + 1;
              *v1473 = v2459;
              v2469 = 32 * (v2468 & 1);
              v2470 = (v2460 + (v2459 >> 3));
              if (v2470 < v2461)
              {
                goto LABEL_3532;
              }

              goto LABEL_3543;
            }
          }

LABEL_3541:
          v2486 = *(a2 + 32);
          if (v2486)
          {
            v2486(*(a2 + 24));
            v1473 = (a2 + 16);
            v2469 = 0;
            LODWORD(v2459) = *(a2 + 16);
            v2460 = *a2;
            v2461 = *(a2 + 8);
            v2470 = (*a2 + (v2459 >> 3));
            if (v2470 < v2461)
            {
              goto LABEL_3532;
            }
          }

          else
          {
            v2469 = 0;
            v2470 = (v2460 + (v2459 >> 3));
            if (v2470 < v2461)
            {
LABEL_3532:
              v2471 = *v2470 >> (~v2459 & 7);
              LODWORD(v2459) = v2459 + 1;
              *v1473 = v2459;
              v2472 = 16 * (v2471 & 1);
              v2473 = (v2460 + (v2459 >> 3));
              if (v2473 < v2461)
              {
                goto LABEL_3533;
              }

              goto LABEL_3545;
            }
          }

LABEL_3543:
          v2487 = *(a2 + 32);
          if (v2487)
          {
            v2487(*(a2 + 24));
            v1473 = (a2 + 16);
            v2472 = 0;
            LODWORD(v2459) = *(a2 + 16);
            v2460 = *a2;
            v2461 = *(a2 + 8);
            v2473 = (*a2 + (v2459 >> 3));
            if (v2473 < v2461)
            {
              goto LABEL_3533;
            }
          }

          else
          {
            v2472 = 0;
            v2473 = (v2460 + (v2459 >> 3));
            if (v2473 < v2461)
            {
LABEL_3533:
              v2474 = *v2473 >> (~v2459 & 7);
              LODWORD(v2459) = v2459 + 1;
              *v1473 = v2459;
              v2475 = 8 * (v2474 & 1);
              v2476 = (v2460 + (v2459 >> 3));
              if (v2476 < v2461)
              {
                goto LABEL_3534;
              }

              goto LABEL_3547;
            }
          }

LABEL_3545:
          v2488 = *(a2 + 32);
          if (v2488)
          {
            v2488(*(a2 + 24));
            v1473 = (a2 + 16);
            v2475 = 0;
            LODWORD(v2459) = *(a2 + 16);
            v2460 = *a2;
            v2461 = *(a2 + 8);
            v2476 = (*a2 + (v2459 >> 3));
            if (v2476 < v2461)
            {
              goto LABEL_3534;
            }
          }

          else
          {
            v2475 = 0;
            v2476 = (v2460 + (v2459 >> 3));
            if (v2476 < v2461)
            {
LABEL_3534:
              v2477 = *v2476 >> (~v2459 & 7);
              LODWORD(v2459) = v2459 + 1;
              *v1473 = v2459;
              v2478 = 4 * (v2477 & 1);
              v2479 = (v2460 + (v2459 >> 3));
              if (v2479 < v2461)
              {
                goto LABEL_3535;
              }

              goto LABEL_3549;
            }
          }

LABEL_3547:
          v2489 = *(a2 + 32);
          if (v2489)
          {
            v2489(*(a2 + 24));
            v1473 = (a2 + 16);
            v2478 = 0;
            LODWORD(v2459) = *(a2 + 16);
            v2460 = *a2;
            v2461 = *(a2 + 8);
            v2479 = (*a2 + (v2459 >> 3));
            if (v2479 < v2461)
            {
              goto LABEL_3535;
            }
          }

          else
          {
            v2478 = 0;
            v2479 = (v2460 + (v2459 >> 3));
            if (v2479 < v2461)
            {
LABEL_3535:
              v2480 = *v2479 >> (~v2459 & 7);
              LODWORD(v2459) = v2459 + 1;
              *v1473 = v2459;
              v2481 = 2 * (v2480 & 1);
              v2482 = (v2460 + (v2459 >> 3));
              if (v2482 < v2461)
              {
                goto LABEL_3536;
              }

              goto LABEL_3551;
            }
          }

LABEL_3549:
          v2490 = *(a2 + 32);
          if (v2490)
          {
            v2490(*(a2 + 24));
            v1473 = (a2 + 16);
            v2481 = 0;
            LODWORD(v2459) = *(a2 + 16);
            v2482 = (*a2 + (v2459 >> 3));
            if (v2482 < *(a2 + 8))
            {
              goto LABEL_3536;
            }
          }

          else
          {
            v2481 = 0;
            v2482 = (v2460 + (v2459 >> 3));
            if (v2482 < v2461)
            {
LABEL_3536:
              v2483 = (*v2482 >> (~v2459 & 7)) & 1;
              *v1473 = v2459 + 1;
              goto LABEL_3554;
            }
          }

LABEL_3551:
          v2491 = *(a2 + 32);
          if (v2491)
          {
            v2491(*(a2 + 24));
            v1473 = (a2 + 16);
          }

          v2483 = 0;
LABEL_3554:
          v2492 = v2483 | v2481 | v2478 | v2475 | v2472 | v2469 | v2466 | v2578;
          *(v2456 - 1) = v2492;
          if (*(v2456 - 3) >= v2492)
          {
            aom_internal_error(*(v2582 + 15248), 5, "First coordinate of the scaling function points shall be increasing.");
            v1473 = (a2 + 16);
          }

          v2493 = *(a2 + 16);
          v2494 = *a2;
          v2495 = *(a2 + 8);
          v2496 = (*a2 + (v2493 >> 3));
          if (v2496 >= v2495)
          {
            v2517 = *(a2 + 32);
            if (v2517)
            {
              v2517(*(a2 + 24));
              v1473 = (a2 + 16);
              v2579 = 0;
              LODWORD(v2493) = *(a2 + 16);
              v2494 = *a2;
              v2495 = *(a2 + 8);
              v2498 = (*a2 + (v2493 >> 3));
              if (v2498 < v2495)
              {
                goto LABEL_3558;
              }
            }

            else
            {
              v2579 = 0;
              v2498 = (v2494 + (v2493 >> 3));
              if (v2498 < v2495)
              {
LABEL_3558:
                v2499 = *v2498 >> (~v2493 & 7);
                LODWORD(v2493) = v2493 + 1;
                *v1473 = v2493;
                v2500 = (v2499 & 1) << 6;
                v2501 = (v2494 + (v2493 >> 3));
                if (v2501 < v2495)
                {
                  goto LABEL_3559;
                }

                goto LABEL_3569;
              }
            }
          }

          else
          {
            v2497 = *v2496 >> (~v2493 & 7);
            LODWORD(v2493) = v2493 + 1;
            *v1473 = v2493;
            v2579 = (v2497 & 1) << 7;
            v2498 = (v2494 + (v2493 >> 3));
            if (v2498 < v2495)
            {
              goto LABEL_3558;
            }
          }

          v2518 = *(a2 + 32);
          if (v2518)
          {
            v2518(*(a2 + 24));
            v1473 = (a2 + 16);
            v2500 = 0;
            LODWORD(v2493) = *(a2 + 16);
            v2494 = *a2;
            v2495 = *(a2 + 8);
            v2501 = (*a2 + (v2493 >> 3));
            if (v2501 < v2495)
            {
              goto LABEL_3559;
            }
          }

          else
          {
            v2500 = 0;
            v2501 = (v2494 + (v2493 >> 3));
            if (v2501 < v2495)
            {
LABEL_3559:
              v2502 = *v2501 >> (~v2493 & 7);
              LODWORD(v2493) = v2493 + 1;
              *v1473 = v2493;
              v2503 = 32 * (v2502 & 1);
              v2504 = (v2494 + (v2493 >> 3));
              if (v2504 < v2495)
              {
                goto LABEL_3560;
              }

              goto LABEL_3571;
            }
          }

LABEL_3569:
          v2519 = *(a2 + 32);
          if (v2519)
          {
            v2519(*(a2 + 24));
            v1473 = (a2 + 16);
            v2503 = 0;
            LODWORD(v2493) = *(a2 + 16);
            v2494 = *a2;
            v2495 = *(a2 + 8);
            v2504 = (*a2 + (v2493 >> 3));
            if (v2504 < v2495)
            {
              goto LABEL_3560;
            }
          }

          else
          {
            v2503 = 0;
            v2504 = (v2494 + (v2493 >> 3));
            if (v2504 < v2495)
            {
LABEL_3560:
              v2505 = *v2504 >> (~v2493 & 7);
              LODWORD(v2493) = v2493 + 1;
              *v1473 = v2493;
              v2506 = 16 * (v2505 & 1);
              v2507 = (v2494 + (v2493 >> 3));
              if (v2507 < v2495)
              {
                goto LABEL_3561;
              }

              goto LABEL_3573;
            }
          }

LABEL_3571:
          v2520 = *(a2 + 32);
          if (v2520)
          {
            v2520(*(a2 + 24));
            v1473 = (a2 + 16);
            v2506 = 0;
            LODWORD(v2493) = *(a2 + 16);
            v2494 = *a2;
            v2495 = *(a2 + 8);
            v2507 = (*a2 + (v2493 >> 3));
            if (v2507 < v2495)
            {
              goto LABEL_3561;
            }
          }

          else
          {
            v2506 = 0;
            v2507 = (v2494 + (v2493 >> 3));
            if (v2507 < v2495)
            {
LABEL_3561:
              v2508 = *v2507 >> (~v2493 & 7);
              LODWORD(v2493) = v2493 + 1;
              *v1473 = v2493;
              v2509 = 8 * (v2508 & 1);
              v2510 = (v2494 + (v2493 >> 3));
              if (v2510 < v2495)
              {
                goto LABEL_3562;
              }

              goto LABEL_3575;
            }
          }

LABEL_3573:
          v2521 = *(a2 + 32);
          if (v2521)
          {
            v2521(*(a2 + 24));
            v1473 = (a2 + 16);
            v2509 = 0;
            LODWORD(v2493) = *(a2 + 16);
            v2494 = *a2;
            v2495 = *(a2 + 8);
            v2510 = (*a2 + (v2493 >> 3));
            if (v2510 < v2495)
            {
              goto LABEL_3562;
            }
          }

          else
          {
            v2509 = 0;
            v2510 = (v2494 + (v2493 >> 3));
            if (v2510 < v2495)
            {
LABEL_3562:
              v2511 = *v2510 >> (~v2493 & 7);
              LODWORD(v2493) = v2493 + 1;
              *v1473 = v2493;
              v2512 = 4 * (v2511 & 1);
              v2513 = (v2494 + (v2493 >> 3));
              if (v2513 < v2495)
              {
                goto LABEL_3563;
              }

              goto LABEL_3577;
            }
          }

LABEL_3575:
          v2522 = *(a2 + 32);
          if (v2522)
          {
            v2522(*(a2 + 24));
            v1473 = (a2 + 16);
            v2512 = 0;
            LODWORD(v2493) = *(a2 + 16);
            v2494 = *a2;
            v2495 = *(a2 + 8);
            v2513 = (*a2 + (v2493 >> 3));
            if (v2513 < v2495)
            {
              goto LABEL_3563;
            }
          }

          else
          {
            v2512 = 0;
            v2513 = (v2494 + (v2493 >> 3));
            if (v2513 < v2495)
            {
LABEL_3563:
              v2514 = *v2513 >> (~v2493 & 7);
              LODWORD(v2493) = v2493 + 1;
              *v1473 = v2493;
              v2515 = 2 * (v2514 & 1);
              v2516 = (v2494 + (v2493 >> 3));
              if (v2516 >= v2495)
              {
                goto LABEL_3607;
              }

              goto LABEL_3526;
            }
          }

LABEL_3577:
          v2523 = *(a2 + 32);
          if (v2523)
          {
            v2523(*(a2 + 24));
            v1473 = (a2 + 16);
            v2515 = 0;
            LODWORD(v2493) = *(a2 + 16);
            v2516 = (*a2 + (v2493 >> 3));
            if (v2516 >= *(a2 + 8))
            {
              goto LABEL_3607;
            }
          }

          else
          {
            v2515 = 0;
            v2516 = (v2494 + (v2493 >> 3));
            if (v2516 >= v2495)
            {
LABEL_3607:
              v2524 = *(a2 + 32);
              if (v2524)
              {
                v2524(*(a2 + 24));
                v1473 = (a2 + 16);
              }

              v2458 = 0;
              goto LABEL_3527;
            }
          }

LABEL_3526:
          v2458 = (*v2516 >> (~v2493 & 7)) & 1;
          *v1473 = v2493 + 1;
LABEL_3527:
          *v2456 = v2458 | v2515 | v2512 | v2509 | v2506 | v2503 | v2500 | v2579;
          v2456 += 2;
          ++v2457;
          v2404 = *(v2581 + 888);
          if (v2457 >= v2404)
          {
            v1240 = v2581;
            v1095 = v2582;
            break;
          }
        }
      }
    }

    if (*&v2566[1].__opaque[24] == 1 && *&v2566[1].__opaque[28] == 1 && (v2404 == 0) != (*(v1240 + 804) == 0))
    {
      aom_internal_error(*(v1095 + 15248), 5, "In YCbCr 4:2:0, film grain shall be applied to both chroma components or neither.");
      v1473 = (a2 + 16);
    }
  }

  v1638 = *(a2 + 16);
  v1639 = *a2;
  v1640 = *(a2 + 8);
  v1641 = (*a2 + (v1638 >> 3));
  if (v1641 >= v1640)
  {
    v1645 = *(a2 + 32);
    if (v1645)
    {
      v1645(*(a2 + 24));
      v1473 = (a2 + 16);
      v1643 = 0;
      LODWORD(v1638) = *(a2 + 16);
      v1639 = *a2;
      v1640 = *(a2 + 8);
      v1644 = (*a2 + (v1638 >> 3));
      if (v1644 >= v1640)
      {
        goto LABEL_2452;
      }
    }

    else
    {
      v1643 = 0;
      v1644 = (v1639 + (v1638 >> 3));
      if (v1644 >= v1640)
      {
        goto LABEL_2452;
      }
    }

LABEL_2449:
    LODWORD(v1644) = (*v1644 >> (~v1638 & 7)) & 1;
    LODWORD(v1638) = v1638 + 1;
    *v1473 = v1638;
  }

  else
  {
    v1642 = *v1641 >> (~v1638 & 7);
    LODWORD(v1638) = v1638 + 1;
    *v1473 = v1638;
    v1643 = 2 * (v1642 & 1);
    v1644 = (v1639 + (v1638 >> 3));
    if (v1644 < v1640)
    {
      goto LABEL_2449;
    }

LABEL_2452:
    v1644 = *(a2 + 32);
    if (v1644)
    {
      v1644(*(a2 + 24));
      v1473 = (a2 + 16);
      LODWORD(v1644) = 0;
      LODWORD(v1638) = *(a2 + 16);
      v1639 = *a2;
      v1640 = *(a2 + 8);
    }
  }

  *(v1240 + 892) = v1644 | v1643 | 8;
  v1646 = (v1639 + (v1638 >> 3));
  if (v1646 >= v1640)
  {
    v1650 = *(a2 + 32);
    if (v1650)
    {
      v1650(*(a2 + 24));
      v1473 = (a2 + 16);
      v2569 = 0;
      LODWORD(v1638) = *(a2 + 16);
      v1648 = (*a2 + (v1638 >> 3));
      if (v1648 >= *(a2 + 8))
      {
        goto LABEL_2459;
      }
    }

    else
    {
      v2569 = 0;
      v1648 = (v1639 + (v1638 >> 3));
      if (v1648 >= v1640)
      {
        goto LABEL_2459;
      }
    }

LABEL_2456:
    v1649 = (*v1648 >> (~v1638 & 7)) & 1;
    *v1473 = v1638 + 1;
  }

  else
  {
    v1647 = *v1646 >> (~v1638 & 7);
    LODWORD(v1638) = v1638 + 1;
    *v1473 = v1638;
    v2569 = 2 * (v1647 & 1);
    v1648 = (v1639 + (v1638 >> 3));
    if (v1648 < v1640)
    {
      goto LABEL_2456;
    }

LABEL_2459:
    v1651 = *(a2 + 32);
    if (v1651)
    {
      v1651(*(a2 + 24));
      v1473 = (a2 + 16);
    }

    v1649 = 0;
  }

  v2560 = v1649;
  v1652 = v1649 | v2569;
  *(v1240 + 896) = v1649 | v2569;
  v2554 = v1652 + v1652 * v1652;
  v1653 = *(v1240 + 720);
  v2567 = v1653 > 0;
  if (v1653 && v1652)
  {
    v1654 = (v1240 + 900);
    v1655 = (2 * (v2560 + v2569 + (v2560 + v2569) * (v2560 + v2569)));
    do
    {
      v1657 = *(a2 + 16);
      v1658 = *a2;
      v1659 = *(a2 + 8);
      v1660 = (*a2 + (v1657 >> 3));
      if (v1660 >= v1659)
      {
        v1681 = *(a2 + 32);
        if (v1681)
        {
          v1681(*(a2 + 24));
          v1473 = (a2 + 16);
          v2573 = 0;
          LODWORD(v1657) = *(a2 + 16);
          v1658 = *a2;
          v1659 = *(a2 + 8);
          v1662 = (*a2 + (v1657 >> 3));
          if (v1662 < v1659)
          {
            goto LABEL_2469;
          }
        }

        else
        {
          v2573 = 0;
          v1662 = (v1658 + (v1657 >> 3));
          if (v1662 < v1659)
          {
LABEL_2469:
            v1663 = *v1662 >> (~v1657 & 7);
            LODWORD(v1657) = v1657 + 1;
            *v1473 = v1657;
            v1664 = (v1663 & 1) << 6;
            v1665 = (v1658 + (v1657 >> 3));
            if (v1665 < v1659)
            {
              goto LABEL_2470;
            }

            goto LABEL_2480;
          }
        }
      }

      else
      {
        v1661 = *v1660 >> (~v1657 & 7);
        LODWORD(v1657) = v1657 + 1;
        *v1473 = v1657;
        v2573 = (v1661 & 1) << 7;
        v1662 = (v1658 + (v1657 >> 3));
        if (v1662 < v1659)
        {
          goto LABEL_2469;
        }
      }

      v1682 = *(a2 + 32);
      if (v1682)
      {
        v1682(*(a2 + 24));
        v1473 = (a2 + 16);
        v1664 = 0;
        LODWORD(v1657) = *(a2 + 16);
        v1658 = *a2;
        v1659 = *(a2 + 8);
        v1665 = (*a2 + (v1657 >> 3));
        if (v1665 < v1659)
        {
          goto LABEL_2470;
        }
      }

      else
      {
        v1664 = 0;
        v1665 = (v1658 + (v1657 >> 3));
        if (v1665 < v1659)
        {
LABEL_2470:
          v1666 = *v1665 >> (~v1657 & 7);
          LODWORD(v1657) = v1657 + 1;
          *v1473 = v1657;
          v1667 = 32 * (v1666 & 1);
          v1668 = (v1658 + (v1657 >> 3));
          if (v1668 < v1659)
          {
            goto LABEL_2471;
          }

          goto LABEL_2482;
        }
      }

LABEL_2480:
      v1683 = *(a2 + 32);
      if (v1683)
      {
        v1683(*(a2 + 24));
        v1473 = (a2 + 16);
        v1667 = 0;
        LODWORD(v1657) = *(a2 + 16);
        v1658 = *a2;
        v1659 = *(a2 + 8);
        v1668 = (*a2 + (v1657 >> 3));
        if (v1668 < v1659)
        {
          goto LABEL_2471;
        }
      }

      else
      {
        v1667 = 0;
        v1668 = (v1658 + (v1657 >> 3));
        if (v1668 < v1659)
        {
LABEL_2471:
          v1669 = *v1668 >> (~v1657 & 7);
          LODWORD(v1657) = v1657 + 1;
          *v1473 = v1657;
          v1670 = 16 * (v1669 & 1);
          v1671 = (v1658 + (v1657 >> 3));
          if (v1671 < v1659)
          {
            goto LABEL_2472;
          }

          goto LABEL_2484;
        }
      }

LABEL_2482:
      v1684 = *(a2 + 32);
      if (v1684)
      {
        v1684(*(a2 + 24));
        v1473 = (a2 + 16);
        v1670 = 0;
        LODWORD(v1657) = *(a2 + 16);
        v1658 = *a2;
        v1659 = *(a2 + 8);
        v1671 = (*a2 + (v1657 >> 3));
        if (v1671 < v1659)
        {
          goto LABEL_2472;
        }
      }

      else
      {
        v1670 = 0;
        v1671 = (v1658 + (v1657 >> 3));
        if (v1671 < v1659)
        {
LABEL_2472:
          v1672 = *v1671 >> (~v1657 & 7);
          LODWORD(v1657) = v1657 + 1;
          *v1473 = v1657;
          v1673 = 8 * (v1672 & 1);
          v1674 = (v1658 + (v1657 >> 3));
          if (v1674 < v1659)
          {
            goto LABEL_2473;
          }

          goto LABEL_2486;
        }
      }

LABEL_2484:
      v1685 = *(a2 + 32);
      if (v1685)
      {
        v1685(*(a2 + 24));
        v1473 = (a2 + 16);
        v1673 = 0;
        LODWORD(v1657) = *(a2 + 16);
        v1658 = *a2;
        v1659 = *(a2 + 8);
        v1674 = (*a2 + (v1657 >> 3));
        if (v1674 < v1659)
        {
          goto LABEL_2473;
        }
      }

      else
      {
        v1673 = 0;
        v1674 = (v1658 + (v1657 >> 3));
        if (v1674 < v1659)
        {
LABEL_2473:
          v1675 = *v1674 >> (~v1657 & 7);
          LODWORD(v1657) = v1657 + 1;
          *v1473 = v1657;
          v1676 = 4 * (v1675 & 1);
          v1677 = (v1658 + (v1657 >> 3));
          if (v1677 < v1659)
          {
            goto LABEL_2474;
          }

          goto LABEL_2488;
        }
      }

LABEL_2486:
      v1686 = *(a2 + 32);
      if (v1686)
      {
        v1686(*(a2 + 24));
        v1473 = (a2 + 16);
        v1676 = 0;
        LODWORD(v1657) = *(a2 + 16);
        v1658 = *a2;
        v1659 = *(a2 + 8);
        v1677 = (*a2 + (v1657 >> 3));
        if (v1677 < v1659)
        {
          goto LABEL_2474;
        }
      }

      else
      {
        v1676 = 0;
        v1677 = (v1658 + (v1657 >> 3));
        if (v1677 < v1659)
        {
LABEL_2474:
          v1678 = *v1677 >> (~v1657 & 7);
          LODWORD(v1657) = v1657 + 1;
          *v1473 = v1657;
          v1679 = 2 * (v1678 & 1);
          v1680 = (v1658 + (v1657 >> 3));
          if (v1680 >= v1659)
          {
            goto LABEL_2504;
          }

          goto LABEL_2465;
        }
      }

LABEL_2488:
      v1687 = *(a2 + 32);
      if (v1687)
      {
        v1687(*(a2 + 24));
        v1473 = (a2 + 16);
        v1679 = 0;
        LODWORD(v1657) = *(a2 + 16);
        v1680 = (*a2 + (v1657 >> 3));
        if (v1680 >= *(a2 + 8))
        {
          goto LABEL_2504;
        }
      }

      else
      {
        v1679 = 0;
        v1680 = (v1658 + (v1657 >> 3));
        if (v1680 >= v1659)
        {
LABEL_2504:
          v1688 = *(a2 + 32);
          if (v1688)
          {
            v1688(*(a2 + 24));
            v1473 = (a2 + 16);
          }

          v1656 = 0;
          goto LABEL_2466;
        }
      }

LABEL_2465:
      v1656 = (*v1680 >> (~v1657 & 7)) & 1;
      *v1473 = v1657 + 1;
LABEL_2466:
      *v1654++ = (v1656 | v1679 | v1676 | v1673 | v1670 | v1667 | v1664 | v2573) - 128;
      --v1655;
      v1240 = v2581;
      v1095 = v2582;
    }

    while (v1655);
  }

  v2550 = v2567 | (2 * v2554);
  if (*(v1240 + 804))
  {
    if (!(v2567 | (2 * v2554)))
    {
      v2555 = (v1240 + 888);
      goto LABEL_2604;
    }

LABEL_2514:
    v1691 = (v1240 + 996);
    v1692 = v2567 | (2 * (v2560 + v2569 + (v2560 + v2569) * (v2560 + v2569)));
    while (2)
    {
      v1694 = *(a2 + 16);
      v1695 = *a2;
      v1696 = *(a2 + 8);
      v1697 = (*a2 + (v1694 >> 3));
      if (v1697 >= v1696)
      {
        v1718 = *(a2 + 32);
        if (v1718)
        {
          v1718(*(a2 + 24));
          v1473 = (a2 + 16);
          v2574 = 0;
          LODWORD(v1694) = *(a2 + 16);
          v1695 = *a2;
          v1696 = *(a2 + 8);
          v1699 = (*a2 + (v1694 >> 3));
          if (v1699 >= v1696)
          {
            goto LABEL_2528;
          }
        }

        else
        {
          v2574 = 0;
          v1699 = (v1695 + (v1694 >> 3));
          if (v1699 >= v1696)
          {
            goto LABEL_2528;
          }
        }

LABEL_2519:
        v1700 = *v1699 >> (~v1694 & 7);
        LODWORD(v1694) = v1694 + 1;
        *v1473 = v1694;
        v1701 = (v1700 & 1) << 6;
        v1702 = (v1695 + (v1694 >> 3));
        if (v1702 < v1696)
        {
          goto LABEL_2520;
        }
      }

      else
      {
        v1698 = *v1697 >> (~v1694 & 7);
        LODWORD(v1694) = v1694 + 1;
        *v1473 = v1694;
        v2574 = (v1698 & 1) << 7;
        v1699 = (v1695 + (v1694 >> 3));
        if (v1699 < v1696)
        {
          goto LABEL_2519;
        }

LABEL_2528:
        v1719 = *(a2 + 32);
        if (v1719)
        {
          v1719(*(a2 + 24));
          v1473 = (a2 + 16);
          v1701 = 0;
          LODWORD(v1694) = *(a2 + 16);
          v1695 = *a2;
          v1696 = *(a2 + 8);
          v1702 = (*a2 + (v1694 >> 3));
          if (v1702 >= v1696)
          {
            break;
          }

LABEL_2520:
          v1703 = *v1702 >> (~v1694 & 7);
          LODWORD(v1694) = v1694 + 1;
          *v1473 = v1694;
          v1704 = 32 * (v1703 & 1);
          v1705 = (v1695 + (v1694 >> 3));
          if (v1705 < v1696)
          {
LABEL_2521:
            v1706 = *v1705 >> (~v1694 & 7);
            LODWORD(v1694) = v1694 + 1;
            *v1473 = v1694;
            v1707 = 16 * (v1706 & 1);
            v1708 = (v1695 + (v1694 >> 3));
            if (v1708 < v1696)
            {
              goto LABEL_2522;
            }

LABEL_2534:
            v1722 = *(a2 + 32);
            if (v1722)
            {
              v1722(*(a2 + 24));
              v1473 = (a2 + 16);
              v1710 = 0;
              LODWORD(v1694) = *(a2 + 16);
              v1695 = *a2;
              v1696 = *(a2 + 8);
              v1711 = (*a2 + (v1694 >> 3));
              if (v1711 >= v1696)
              {
                goto LABEL_2536;
              }

LABEL_2523:
              v1712 = *v1711 >> (~v1694 & 7);
              LODWORD(v1694) = v1694 + 1;
              *v1473 = v1694;
              v1713 = 4 * (v1712 & 1);
              v1714 = (v1695 + (v1694 >> 3));
              if (v1714 < v1696)
              {
LABEL_2524:
                v1715 = *v1714 >> (~v1694 & 7);
                LODWORD(v1694) = v1694 + 1;
                *v1473 = v1694;
                v1716 = 2 * (v1715 & 1);
                v1717 = (v1695 + (v1694 >> 3));
                if (v1717 >= v1696)
                {
                  goto LABEL_2554;
                }

LABEL_2515:
                v1693 = (*v1717 >> (~v1694 & 7)) & 1;
                *v1473 = v1694 + 1;
                goto LABEL_2516;
              }

LABEL_2538:
              v1724 = *(a2 + 32);
              if (!v1724)
              {
                v1716 = 0;
                v1717 = (v1695 + (v1694 >> 3));
                if (v1717 >= v1696)
                {
                  goto LABEL_2554;
                }

                goto LABEL_2515;
              }

              v1724(*(a2 + 24));
              v1473 = (a2 + 16);
              v1716 = 0;
              LODWORD(v1694) = *(a2 + 16);
              v1717 = (*a2 + (v1694 >> 3));
              if (v1717 < *(a2 + 8))
              {
                goto LABEL_2515;
              }

LABEL_2554:
              v1725 = *(a2 + 32);
              if (v1725)
              {
                v1725(*(a2 + 24));
                v1473 = (a2 + 16);
              }

              v1693 = 0;
LABEL_2516:
              *v1691++ = (v1693 | v1716 | v1713 | v1710 | v1707 | v1704 | v1701 | v2574) - 128;
              --v1692;
              v1240 = v2581;
              v1095 = v2582;
              if (!v1692)
              {
                goto LABEL_2557;
              }

              continue;
            }

            v1710 = 0;
            v1711 = (v1695 + (v1694 >> 3));
            if (v1711 < v1696)
            {
              goto LABEL_2523;
            }

LABEL_2536:
            v1723 = *(a2 + 32);
            if (v1723)
            {
              v1723(*(a2 + 24));
              v1473 = (a2 + 16);
              v1713 = 0;
              LODWORD(v1694) = *(a2 + 16);
              v1695 = *a2;
              v1696 = *(a2 + 8);
              v1714 = (*a2 + (v1694 >> 3));
              if (v1714 < v1696)
              {
                goto LABEL_2524;
              }
            }

            else
            {
              v1713 = 0;
              v1714 = (v1695 + (v1694 >> 3));
              if (v1714 < v1696)
              {
                goto LABEL_2524;
              }
            }

            goto LABEL_2538;
          }

LABEL_2532:
          v1721 = *(a2 + 32);
          if (v1721)
          {
            v1721(*(a2 + 24));
            v1473 = (a2 + 16);
            v1707 = 0;
            LODWORD(v1694) = *(a2 + 16);
            v1695 = *a2;
            v1696 = *(a2 + 8);
            v1708 = (*a2 + (v1694 >> 3));
            if (v1708 >= v1696)
            {
              goto LABEL_2534;
            }
          }

          else
          {
            v1707 = 0;
            v1708 = (v1695 + (v1694 >> 3));
            if (v1708 >= v1696)
            {
              goto LABEL_2534;
            }
          }

LABEL_2522:
          v1709 = *v1708 >> (~v1694 & 7);
          LODWORD(v1694) = v1694 + 1;
          *v1473 = v1694;
          v1710 = 8 * (v1709 & 1);
          v1711 = (v1695 + (v1694 >> 3));
          if (v1711 < v1696)
          {
            goto LABEL_2523;
          }

          goto LABEL_2536;
        }

        v1701 = 0;
        v1702 = (v1695 + (v1694 >> 3));
        if (v1702 < v1696)
        {
          goto LABEL_2520;
        }
      }

      break;
    }

    v1720 = *(a2 + 32);
    if (v1720)
    {
      v1720(*(a2 + 24));
      v1473 = (a2 + 16);
      v1704 = 0;
      LODWORD(v1694) = *(a2 + 16);
      v1695 = *a2;
      v1696 = *(a2 + 8);
      v1705 = (*a2 + (v1694 >> 3));
      if (v1705 < v1696)
      {
        goto LABEL_2521;
      }
    }

    else
    {
      v1704 = 0;
      v1705 = (v1695 + (v1694 >> 3));
      if (v1705 < v1696)
      {
        goto LABEL_2521;
      }
    }

    goto LABEL_2532;
  }

  if (*(v1240 + 1236) && v2550)
  {
    goto LABEL_2514;
  }

LABEL_2557:
  v2555 = (v1240 + 888);
  if ((*(v1240 + 888) || *(v1240 + 1236)) && v2550)
  {
    v1726 = (v1240 + 1096);
    v1727 = v2567 | (2 * (v2560 + v2569 + (v2560 + v2569) * (v2560 + v2569)));
    while (1)
    {
      v1729 = *(a2 + 16);
      v1730 = *a2;
      v1731 = *(a2 + 8);
      v1732 = (*a2 + (v1729 >> 3));
      if (v1732 >= v1731)
      {
        v1753 = *(a2 + 32);
        if (v1753)
        {
          v1753(*(a2 + 24));
          v1473 = (a2 + 16);
          v2575 = 0;
          LODWORD(v1729) = *(a2 + 16);
          v1730 = *a2;
          v1731 = *(a2 + 8);
          v1734 = (*a2 + (v1729 >> 3));
          if (v1734 < v1731)
          {
            goto LABEL_2565;
          }
        }

        else
        {
          v2575 = 0;
          v1734 = (v1730 + (v1729 >> 3));
          if (v1734 < v1731)
          {
LABEL_2565:
            v1735 = *v1734 >> (~v1729 & 7);
            LODWORD(v1729) = v1729 + 1;
            *v1473 = v1729;
            v1736 = (v1735 & 1) << 6;
            v1737 = (v1730 + (v1729 >> 3));
            if (v1737 < v1731)
            {
              goto LABEL_2566;
            }

            goto LABEL_2576;
          }
        }
      }

      else
      {
        v1733 = *v1732 >> (~v1729 & 7);
        LODWORD(v1729) = v1729 + 1;
        *v1473 = v1729;
        v2575 = (v1733 & 1) << 7;
        v1734 = (v1730 + (v1729 >> 3));
        if (v1734 < v1731)
        {
          goto LABEL_2565;
        }
      }

      v1754 = *(a2 + 32);
      if (v1754)
      {
        v1754(*(a2 + 24));
        v1473 = (a2 + 16);
        v1736 = 0;
        LODWORD(v1729) = *(a2 + 16);
        v1730 = *a2;
        v1731 = *(a2 + 8);
        v1737 = (*a2 + (v1729 >> 3));
        if (v1737 < v1731)
        {
          goto LABEL_2566;
        }
      }

      else
      {
        v1736 = 0;
        v1737 = (v1730 + (v1729 >> 3));
        if (v1737 < v1731)
        {
LABEL_2566:
          v1738 = *v1737 >> (~v1729 & 7);
          LODWORD(v1729) = v1729 + 1;
          *v1473 = v1729;
          v1739 = 32 * (v1738 & 1);
          v1740 = (v1730 + (v1729 >> 3));
          if (v1740 < v1731)
          {
            goto LABEL_2567;
          }

          goto LABEL_2578;
        }
      }

LABEL_2576:
      v1755 = *(a2 + 32);
      if (v1755)
      {
        v1755(*(a2 + 24));
        v1473 = (a2 + 16);
        v1739 = 0;
        LODWORD(v1729) = *(a2 + 16);
        v1730 = *a2;
        v1731 = *(a2 + 8);
        v1740 = (*a2 + (v1729 >> 3));
        if (v1740 < v1731)
        {
          goto LABEL_2567;
        }
      }

      else
      {
        v1739 = 0;
        v1740 = (v1730 + (v1729 >> 3));
        if (v1740 < v1731)
        {
LABEL_2567:
          v1741 = *v1740 >> (~v1729 & 7);
          LODWORD(v1729) = v1729 + 1;
          *v1473 = v1729;
          v1742 = 16 * (v1741 & 1);
          v1743 = (v1730 + (v1729 >> 3));
          if (v1743 < v1731)
          {
            goto LABEL_2568;
          }

          goto LABEL_2580;
        }
      }

LABEL_2578:
      v1756 = *(a2 + 32);
      if (v1756)
      {
        v1756(*(a2 + 24));
        v1473 = (a2 + 16);
        v1742 = 0;
        LODWORD(v1729) = *(a2 + 16);
        v1730 = *a2;
        v1731 = *(a2 + 8);
        v1743 = (*a2 + (v1729 >> 3));
        if (v1743 < v1731)
        {
          goto LABEL_2568;
        }
      }

      else
      {
        v1742 = 0;
        v1743 = (v1730 + (v1729 >> 3));
        if (v1743 < v1731)
        {
LABEL_2568:
          v1744 = *v1743 >> (~v1729 & 7);
          LODWORD(v1729) = v1729 + 1;
          *v1473 = v1729;
          v1745 = 8 * (v1744 & 1);
          v1746 = (v1730 + (v1729 >> 3));
          if (v1746 < v1731)
          {
            goto LABEL_2569;
          }

          goto LABEL_2582;
        }
      }

LABEL_2580:
      v1757 = *(a2 + 32);
      if (v1757)
      {
        v1757(*(a2 + 24));
        v1473 = (a2 + 16);
        v1745 = 0;
        LODWORD(v1729) = *(a2 + 16);
        v1730 = *a2;
        v1731 = *(a2 + 8);
        v1746 = (*a2 + (v1729 >> 3));
        if (v1746 < v1731)
        {
          goto LABEL_2569;
        }
      }

      else
      {
        v1745 = 0;
        v1746 = (v1730 + (v1729 >> 3));
        if (v1746 < v1731)
        {
LABEL_2569:
          v1747 = *v1746 >> (~v1729 & 7);
          LODWORD(v1729) = v1729 + 1;
          *v1473 = v1729;
          v1748 = 4 * (v1747 & 1);
          v1749 = (v1730 + (v1729 >> 3));
          if (v1749 < v1731)
          {
            goto LABEL_2570;
          }

          goto LABEL_2584;
        }
      }

LABEL_2582:
      v1758 = *(a2 + 32);
      if (v1758)
      {
        v1758(*(a2 + 24));
        v1473 = (a2 + 16);
        v1748 = 0;
        LODWORD(v1729) = *(a2 + 16);
        v1730 = *a2;
        v1731 = *(a2 + 8);
        v1749 = (*a2 + (v1729 >> 3));
        if (v1749 < v1731)
        {
          goto LABEL_2570;
        }
      }

      else
      {
        v1748 = 0;
        v1749 = (v1730 + (v1729 >> 3));
        if (v1749 < v1731)
        {
LABEL_2570:
          v1750 = *v1749 >> (~v1729 & 7);
          LODWORD(v1729) = v1729 + 1;
          *v1473 = v1729;
          v1751 = 2 * (v1750 & 1);
          v1752 = (v1730 + (v1729 >> 3));
          if (v1752 >= v1731)
          {
            goto LABEL_2600;
          }

          goto LABEL_2561;
        }
      }

LABEL_2584:
      v1759 = *(a2 + 32);
      if (v1759)
      {
        v1759(*(a2 + 24));
        v1473 = (a2 + 16);
        v1751 = 0;
        LODWORD(v1729) = *(a2 + 16);
        v1752 = (*a2 + (v1729 >> 3));
        if (v1752 >= *(a2 + 8))
        {
          goto LABEL_2600;
        }
      }

      else
      {
        v1751 = 0;
        v1752 = (v1730 + (v1729 >> 3));
        if (v1752 >= v1731)
        {
LABEL_2600:
          v1760 = *(a2 + 32);
          if (v1760)
          {
            v1760(*(a2 + 24));
            v1473 = (a2 + 16);
          }

          v1728 = 0;
          goto LABEL_2562;
        }
      }

LABEL_2561:
      v1728 = (*v1752 >> (~v1729 & 7)) & 1;
      *v1473 = v1729 + 1;
LABEL_2562:
      *v1726++ = (v1728 | v1751 | v1748 | v1745 | v1742 | v1739 | v1736 | v2575) - 128;
      --v1727;
      v1240 = v2581;
      if (!v1727)
      {
        v1095 = v2582;
        break;
      }
    }
  }

LABEL_2604:
  v1761 = *(a2 + 16);
  v1762 = *a2;
  v1763 = *(a2 + 8);
  v1764 = (*a2 + (v1761 >> 3));
  if (v1764 >= v1763)
  {
    v1768 = *(a2 + 32);
    if (v1768)
    {
      v1768(*(a2 + 24));
      v1473 = (a2 + 16);
      v1766 = 0;
      LODWORD(v1761) = *(a2 + 16);
      v1762 = *a2;
      v1763 = *(a2 + 8);
      v1767 = (*a2 + (v1761 >> 3));
      if (v1767 >= v1763)
      {
        goto LABEL_2609;
      }
    }

    else
    {
      v1766 = 0;
      v1767 = (v1762 + (v1761 >> 3));
      if (v1767 >= v1763)
      {
        goto LABEL_2609;
      }
    }

LABEL_2606:
    LODWORD(v1767) = (*v1767 >> (~v1761 & 7)) & 1;
    LODWORD(v1761) = v1761 + 1;
    *v1473 = v1761;
  }

  else
  {
    v1765 = *v1764 >> (~v1761 & 7);
    LODWORD(v1761) = v1761 + 1;
    *v1473 = v1761;
    v1766 = 2 * (v1765 & 1);
    v1767 = (v1762 + (v1761 >> 3));
    if (v1767 < v1763)
    {
      goto LABEL_2606;
    }

LABEL_2609:
    v1767 = *(a2 + 32);
    if (v1767)
    {
      v1767(*(a2 + 24));
      v1473 = (a2 + 16);
      LODWORD(v1767) = 0;
      LODWORD(v1761) = *(a2 + 16);
      v1762 = *a2;
      v1763 = *(a2 + 8);
    }
  }

  *(v1240 + 1196) = (v1767 | v1766) + 6;
  v1769 = (v1762 + (v1761 >> 3));
  if (v1769 >= v1763)
  {
    v1774 = *(a2 + 32);
    if (v1774)
    {
      v1774(*(a2 + 24));
      v1473 = (a2 + 16);
      v1771 = 0;
      LODWORD(v1761) = *(a2 + 16);
      v1762 = *a2;
      v1763 = *(a2 + 8);
      v1772 = (*a2 + (v1761 >> 3));
      if (v1772 >= v1763)
      {
        goto LABEL_2616;
      }
    }

    else
    {
      v1771 = 0;
      v1772 = (v1762 + (v1761 >> 3));
      if (v1772 >= v1763)
      {
        goto LABEL_2616;
      }
    }

LABEL_2613:
    v1773 = (*v1772 >> (~v1761 & 7)) & 1;
    *v1473 = v1761 + 1;
  }

  else
  {
    v1770 = *v1769 >> (~v1761 & 7);
    LODWORD(v1761) = v1761 + 1;
    *v1473 = v1761;
    v1771 = 2 * (v1770 & 1);
    v1772 = (v1762 + (v1761 >> 3));
    if (v1772 < v1763)
    {
      goto LABEL_2613;
    }

LABEL_2616:
    v1775 = *(a2 + 32);
    if (v1775)
    {
      v1775(*(a2 + 24));
      v1473 = (a2 + 16);
      v1773 = 0;
      v1762 = *a2;
      v1763 = *(a2 + 8);
    }

    else
    {
      v1773 = 0;
    }
  }

  *(v1240 + 1240) = v1773 | v1771;
  if (*(v1240 + 804))
  {
    v1783 = *v1473;
    v1784 = (v1762 + (v1783 >> 3));
    if (v1784 >= v1763)
    {
      v1787 = *(a2 + 32);
      if (v1787)
      {
        v1787(*(a2 + 24));
        v1473 = (a2 + 16);
        v1786 = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1786 = 0;
      }
    }

    else
    {
      v1785 = *v1784 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      v1786 = (v1785 & 1) << 7;
    }

    v1788 = (v1762 + (v1783 >> 3));
    if (v1788 >= v1763)
    {
      v1788 = *(a2 + 32);
      if (v1788)
      {
        v1788(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1788) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1789 = *v1788 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1788) = (v1789 & 1) << 6;
    }

    v1790 = v1788 | v1786;
    v1791 = (v1762 + (v1783 >> 3));
    if (v1791 >= v1763)
    {
      v1791 = *(a2 + 32);
      if (v1791)
      {
        v1791(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1791) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1792 = *v1791 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1791) = 32 * (v1792 & 1);
    }

    v1793 = v1791 | v1790;
    v1794 = (v1762 + (v1783 >> 3));
    if (v1794 >= v1763)
    {
      v1794 = *(a2 + 32);
      if (v1794)
      {
        v1794(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1794) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1795 = *v1794 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1794) = 16 * (v1795 & 1);
    }

    v1796 = v1794 | v1793;
    v1797 = (v1762 + (v1783 >> 3));
    if (v1797 >= v1763)
    {
      v1797 = *(a2 + 32);
      if (v1797)
      {
        v1797(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1797) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1798 = *v1797 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1797) = 8 * (v1798 & 1);
    }

    v1799 = v1797 | v1796;
    v1800 = (v1762 + (v1783 >> 3));
    if (v1800 >= v1763)
    {
      v1800 = *(a2 + 32);
      if (v1800)
      {
        v1800(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1800) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1801 = *v1800 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1800) = 4 * (v1801 & 1);
    }

    v1802 = v1800 | v1799;
    v1803 = (v1762 + (v1783 >> 3));
    if (v1803 >= v1763)
    {
      v1803 = *(a2 + 32);
      if (v1803)
      {
        v1803(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1803) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1804 = *v1803 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1803) = 2 * (v1804 & 1);
    }

    v1805 = v1803 | v1802;
    v1806 = (v1762 + (v1783 >> 3));
    if (v1806 >= v1763)
    {
      v1806 = *(a2 + 32);
      if (v1806)
      {
        v1806(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1806) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      LODWORD(v1806) = (*v1806 >> (~v1783 & 7)) & 1;
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
    }

    *(v1240 + 1200) = v1806 | v1805;
    v1807 = (v1762 + (v1783 >> 3));
    if (v1807 >= v1763)
    {
      v1810 = *(a2 + 32);
      if (v1810)
      {
        v1810(*(a2 + 24));
        v1473 = (a2 + 16);
        v1809 = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1809 = 0;
      }
    }

    else
    {
      v1808 = *v1807 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      v1809 = (v1808 & 1) << 7;
    }

    v1811 = (v1762 + (v1783 >> 3));
    if (v1811 >= v1763)
    {
      v1811 = *(a2 + 32);
      if (v1811)
      {
        v1811(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1811) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1812 = *v1811 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1811) = (v1812 & 1) << 6;
    }

    v1813 = v1811 | v1809;
    v1814 = (v1762 + (v1783 >> 3));
    if (v1814 >= v1763)
    {
      v1814 = *(a2 + 32);
      if (v1814)
      {
        v1814(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1814) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1815 = *v1814 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1814) = 32 * (v1815 & 1);
    }

    v1816 = v1814 | v1813;
    v1817 = (v1762 + (v1783 >> 3));
    if (v1817 >= v1763)
    {
      v1817 = *(a2 + 32);
      if (v1817)
      {
        v1817(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1817) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1818 = *v1817 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1817) = 16 * (v1818 & 1);
    }

    v1819 = v1817 | v1816;
    v1820 = (v1762 + (v1783 >> 3));
    if (v1820 >= v1763)
    {
      v1820 = *(a2 + 32);
      if (v1820)
      {
        v1820(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1820) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1821 = *v1820 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1820) = 8 * (v1821 & 1);
    }

    v1822 = v1820 | v1819;
    v1823 = (v1762 + (v1783 >> 3));
    if (v1823 >= v1763)
    {
      v1823 = *(a2 + 32);
      if (v1823)
      {
        v1823(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1823) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1824 = *v1823 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1823) = 4 * (v1824 & 1);
    }

    v1825 = v1823 | v1822;
    v1826 = (v1762 + (v1783 >> 3));
    if (v1826 >= v1763)
    {
      v1826 = *(a2 + 32);
      if (v1826)
      {
        v1826(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1826) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1827 = *v1826 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1826) = 2 * (v1827 & 1);
    }

    v1828 = v1826 | v1825;
    v1829 = (v1762 + (v1783 >> 3));
    if (v1829 >= v1763)
    {
      v1829 = *(a2 + 32);
      if (v1829)
      {
        v1829(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1829) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      LODWORD(v1829) = (*v1829 >> (~v1783 & 7)) & 1;
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
    }

    *(v1240 + 1204) = v1829 | v1828;
    v1830 = (v1762 + (v1783 >> 3));
    if (v1830 >= v1763)
    {
      v1833 = *(a2 + 32);
      if (v1833)
      {
        v1833(*(a2 + 24));
        v1473 = (a2 + 16);
        v1832 = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1832 = 0;
      }
    }

    else
    {
      v1831 = *v1830 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      v1832 = (v1831 & 1) << 8;
    }

    v1834 = (v1762 + (v1783 >> 3));
    if (v1834 >= v1763)
    {
      v1834 = *(a2 + 32);
      if (v1834)
      {
        v1834(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1834) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1835 = *v1834 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1834) = (v1835 & 1) << 7;
    }

    v1836 = v1834 | v1832;
    v1837 = (v1762 + (v1783 >> 3));
    if (v1837 >= v1763)
    {
      v1837 = *(a2 + 32);
      if (v1837)
      {
        v1837(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1837) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1838 = *v1837 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1837) = (v1838 & 1) << 6;
    }

    v1839 = v1837 | v1836;
    v1840 = (v1762 + (v1783 >> 3));
    if (v1840 >= v1763)
    {
      v1840 = *(a2 + 32);
      if (v1840)
      {
        v1840(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1840) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1841 = *v1840 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1840) = 32 * (v1841 & 1);
    }

    v1842 = v1840 | v1839;
    v1843 = (v1762 + (v1783 >> 3));
    if (v1843 >= v1763)
    {
      v1843 = *(a2 + 32);
      if (v1843)
      {
        v1843(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1843) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1844 = *v1843 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1843) = 16 * (v1844 & 1);
    }

    v1845 = v1843 | v1842;
    v1846 = (v1762 + (v1783 >> 3));
    if (v1846 >= v1763)
    {
      v1846 = *(a2 + 32);
      if (v1846)
      {
        v1846(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1846) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1847 = *v1846 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1846) = 8 * (v1847 & 1);
    }

    v1848 = v1846 | v1845;
    v1849 = (v1762 + (v1783 >> 3));
    if (v1849 >= v1763)
    {
      v1849 = *(a2 + 32);
      if (v1849)
      {
        v1849(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1849) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1850 = *v1849 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1849) = 4 * (v1850 & 1);
    }

    v1851 = v1849 | v1848;
    v1852 = (v1762 + (v1783 >> 3));
    if (v1852 >= v1763)
    {
      v1852 = *(a2 + 32);
      if (v1852)
      {
        v1852(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1852) = 0;
        LODWORD(v1783) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1853 = *v1852 >> (~v1783 & 7);
      LODWORD(v1783) = v1783 + 1;
      *v1473 = v1783;
      LODWORD(v1852) = 2 * (v1853 & 1);
    }

    v1854 = v1852 | v1851;
    v1855 = (v1762 + (v1783 >> 3));
    if (v1855 >= v1763)
    {
      v1857 = *(a2 + 32);
      if (v1857)
      {
        v1857(*(a2 + 24));
        v1473 = (a2 + 16);
        v1856 = 0;
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1856 = 0;
      }
    }

    else
    {
      v1856 = (*v1855 >> (~v1783 & 7)) & 1;
      *v1473 = v1783 + 1;
    }

    *(v1240 + 1208) = v1856 | v1854;
  }

  if (*v2555)
  {
    v1858 = *v1473;
    v1859 = (v1762 + (v1858 >> 3));
    if (v1859 >= v1763)
    {
      v1862 = *(a2 + 32);
      if (v1862)
      {
        v1862(*(a2 + 24));
        v1473 = (a2 + 16);
        v1861 = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1861 = 0;
      }
    }

    else
    {
      v1860 = *v1859 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      v1861 = (v1860 & 1) << 7;
    }

    v1863 = (v1762 + (v1858 >> 3));
    if (v1863 >= v1763)
    {
      v1863 = *(a2 + 32);
      if (v1863)
      {
        v1863(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1863) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1864 = *v1863 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1863) = (v1864 & 1) << 6;
    }

    v1865 = v1863 | v1861;
    v1866 = (v1762 + (v1858 >> 3));
    if (v1866 >= v1763)
    {
      v1866 = *(a2 + 32);
      if (v1866)
      {
        v1866(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1866) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1867 = *v1866 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1866) = 32 * (v1867 & 1);
    }

    v1868 = v1866 | v1865;
    v1869 = (v1762 + (v1858 >> 3));
    if (v1869 >= v1763)
    {
      v1869 = *(a2 + 32);
      if (v1869)
      {
        v1869(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1869) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1870 = *v1869 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1869) = 16 * (v1870 & 1);
    }

    v1871 = v1869 | v1868;
    v1872 = (v1762 + (v1858 >> 3));
    if (v1872 >= v1763)
    {
      v1872 = *(a2 + 32);
      if (v1872)
      {
        v1872(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1872) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1873 = *v1872 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1872) = 8 * (v1873 & 1);
    }

    v1874 = v1872 | v1871;
    v1875 = (v1762 + (v1858 >> 3));
    if (v1875 >= v1763)
    {
      v1875 = *(a2 + 32);
      if (v1875)
      {
        v1875(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1875) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1876 = *v1875 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1875) = 4 * (v1876 & 1);
    }

    v1877 = v1875 | v1874;
    v1878 = (v1762 + (v1858 >> 3));
    if (v1878 >= v1763)
    {
      v1878 = *(a2 + 32);
      if (v1878)
      {
        v1878(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1878) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1879 = *v1878 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1878) = 2 * (v1879 & 1);
    }

    v1880 = v1878 | v1877;
    v1881 = (v1762 + (v1858 >> 3));
    if (v1881 >= v1763)
    {
      v1881 = *(a2 + 32);
      if (v1881)
      {
        v1881(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1881) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      LODWORD(v1881) = (*v1881 >> (~v1858 & 7)) & 1;
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
    }

    *(v1240 + 1212) = v1881 | v1880;
    v1882 = (v1762 + (v1858 >> 3));
    if (v1882 >= v1763)
    {
      v1885 = *(a2 + 32);
      if (v1885)
      {
        v1885(*(a2 + 24));
        v1473 = (a2 + 16);
        v1884 = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1884 = 0;
      }
    }

    else
    {
      v1883 = *v1882 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      v1884 = (v1883 & 1) << 7;
    }

    v1886 = (v1762 + (v1858 >> 3));
    if (v1886 >= v1763)
    {
      v1886 = *(a2 + 32);
      if (v1886)
      {
        v1886(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1886) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1887 = *v1886 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1886) = (v1887 & 1) << 6;
    }

    v1888 = v1886 | v1884;
    v1889 = (v1762 + (v1858 >> 3));
    if (v1889 >= v1763)
    {
      v1889 = *(a2 + 32);
      if (v1889)
      {
        v1889(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1889) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1890 = *v1889 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1889) = 32 * (v1890 & 1);
    }

    v1891 = v1889 | v1888;
    v1892 = (v1762 + (v1858 >> 3));
    if (v1892 >= v1763)
    {
      v1892 = *(a2 + 32);
      if (v1892)
      {
        v1892(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1892) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1893 = *v1892 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1892) = 16 * (v1893 & 1);
    }

    v1894 = v1892 | v1891;
    v1895 = (v1762 + (v1858 >> 3));
    if (v1895 >= v1763)
    {
      v1895 = *(a2 + 32);
      if (v1895)
      {
        v1895(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1895) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1896 = *v1895 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1895) = 8 * (v1896 & 1);
    }

    v1897 = v1895 | v1894;
    v1898 = (v1762 + (v1858 >> 3));
    if (v1898 >= v1763)
    {
      v1898 = *(a2 + 32);
      if (v1898)
      {
        v1898(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1898) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1899 = *v1898 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1898) = 4 * (v1899 & 1);
    }

    v1900 = v1898 | v1897;
    v1901 = (v1762 + (v1858 >> 3));
    if (v1901 >= v1763)
    {
      v1901 = *(a2 + 32);
      if (v1901)
      {
        v1901(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1901) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1902 = *v1901 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1901) = 2 * (v1902 & 1);
    }

    v1903 = v1901 | v1900;
    v1904 = (v1762 + (v1858 >> 3));
    if (v1904 >= v1763)
    {
      v1904 = *(a2 + 32);
      if (v1904)
      {
        v1904(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1904) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      LODWORD(v1904) = (*v1904 >> (~v1858 & 7)) & 1;
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
    }

    *(v1240 + 1216) = v1904 | v1903;
    v1905 = (v1762 + (v1858 >> 3));
    if (v1905 >= v1763)
    {
      v1908 = *(a2 + 32);
      if (v1908)
      {
        v1908(*(a2 + 24));
        v1473 = (a2 + 16);
        v1907 = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1907 = 0;
      }
    }

    else
    {
      v1906 = *v1905 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      v1907 = (v1906 & 1) << 8;
    }

    v1909 = (v1762 + (v1858 >> 3));
    if (v1909 >= v1763)
    {
      v1909 = *(a2 + 32);
      if (v1909)
      {
        v1909(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1909) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1910 = *v1909 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1909) = (v1910 & 1) << 7;
    }

    v1911 = v1909 | v1907;
    v1912 = (v1762 + (v1858 >> 3));
    if (v1912 >= v1763)
    {
      v1912 = *(a2 + 32);
      if (v1912)
      {
        v1912(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1912) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1913 = *v1912 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1912) = (v1913 & 1) << 6;
    }

    v1914 = v1912 | v1911;
    v1915 = (v1762 + (v1858 >> 3));
    if (v1915 >= v1763)
    {
      v1915 = *(a2 + 32);
      if (v1915)
      {
        v1915(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1915) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1916 = *v1915 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1915) = 32 * (v1916 & 1);
    }

    v1917 = v1915 | v1914;
    v1918 = (v1762 + (v1858 >> 3));
    if (v1918 >= v1763)
    {
      v1918 = *(a2 + 32);
      if (v1918)
      {
        v1918(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1918) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1919 = *v1918 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1918) = 16 * (v1919 & 1);
    }

    v1920 = v1918 | v1917;
    v1921 = (v1762 + (v1858 >> 3));
    if (v1921 >= v1763)
    {
      v1921 = *(a2 + 32);
      if (v1921)
      {
        v1921(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1921) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1922 = *v1921 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1921) = 8 * (v1922 & 1);
    }

    v1923 = v1921 | v1920;
    v1924 = (v1762 + (v1858 >> 3));
    if (v1924 >= v1763)
    {
      v1924 = *(a2 + 32);
      if (v1924)
      {
        v1924(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1924) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1925 = *v1924 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1924) = 4 * (v1925 & 1);
    }

    v1926 = v1924 | v1923;
    v1927 = (v1762 + (v1858 >> 3));
    if (v1927 >= v1763)
    {
      v1927 = *(a2 + 32);
      if (v1927)
      {
        v1927(*(a2 + 24));
        v1473 = (a2 + 16);
        LODWORD(v1927) = 0;
        LODWORD(v1858) = *(a2 + 16);
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }
    }

    else
    {
      v1928 = *v1927 >> (~v1858 & 7);
      LODWORD(v1858) = v1858 + 1;
      *v1473 = v1858;
      LODWORD(v1927) = 2 * (v1928 & 1);
    }

    v1929 = v1927 | v1926;
    v1930 = (v1762 + (v1858 >> 3));
    if (v1930 >= v1763)
    {
      v1932 = *(a2 + 32);
      if (v1932)
      {
        v1932(*(a2 + 24));
        v1473 = (a2 + 16);
        v1931 = 0;
        v1762 = *a2;
        v1763 = *(a2 + 8);
      }

      else
      {
        v1931 = 0;
      }
    }

    else
    {
      v1931 = (*v1930 >> (~v1858 & 7)) & 1;
      *v1473 = v1858 + 1;
    }

    *(v1240 + 1220) = v1931 | v1929;
  }

  v1933 = *v1473;
  v1934 = (v1762 + (v1933 >> 3));
  if (v1934 >= v1763)
  {
    v1934 = *(a2 + 32);
    if (v1934)
    {
      v1934(*(a2 + 24));
      v1473 = (a2 + 16);
      LODWORD(v1934) = 0;
      LODWORD(v1933) = *(a2 + 16);
      v1762 = *a2;
      v1763 = *(a2 + 8);
    }
  }

  else
  {
    LODWORD(v1934) = (*v1934 >> (~v1933 & 7)) & 1;
    LODWORD(v1933) = v1933 + 1;
    *v1473 = v1933;
  }

  *(v1240 + 1224) = v1934;
  v1935 = (v1762 + (v1933 >> 3));
  if (v1935 >= v1763)
  {
    v1937 = *(a2 + 32);
    if (v1937)
    {
      v1937(*(a2 + 24));
      LODWORD(v1937) = 0;
    }

    *(v1240 + 1228) = v1937;
  }

  else
  {
    v1936 = (*v1935 >> (~v1933 & 7)) & 1;
    *v1473 = v1933 + 1;
    *(v1240 + 1228) = v1936;
  }

LABEL_2237:
  *(v1240 + 1232) = *(*(v1240 + 1560) + 72);
  result = memcpy((*(v1095 + 15432) + 572), (v1095 + 38920), 0x288uLL);
  if (v2556[28] && *(v1240 + 2164))
  {
    v1484 = (a2 + 16);
    v1485 = *v2583;
    v1486 = *v2583 & 7;
    if (v1486)
    {
      v1487 = *(a2 + 16);
      if (*a2 + (v1487 >> 3) >= *(a2 + 8))
      {
        v1488 = *(a2 + 32);
        if (v1488)
        {
          result = v1488(*(a2 + 24));
          v1484 = (a2 + 16);
        }
      }

      else
      {
        *v2583 = v1487 + 1;
      }

      if (v1486 != 7)
      {
        v1489 = *(a2 + 16);
        if (*a2 + (v1489 >> 3) >= *(a2 + 8))
        {
          v1496 = *(a2 + 32);
          if (v1496)
          {
            result = v1496(*(a2 + 24));
            v1484 = (a2 + 16);
          }
        }

        else
        {
          *v1484 = v1489 + 1;
        }

        if ((v1486 ^ 6u) >= 2)
        {
          v1497 = *(a2 + 16);
          if (*a2 + (v1497 >> 3) >= *(a2 + 8))
          {
            v1518 = *(a2 + 32);
            if (v1518)
            {
              result = v1518(*(a2 + 24));
              v1484 = (a2 + 16);
            }
          }

          else
          {
            *v1484 = v1497 + 1;
          }

          if ((v1486 - 7) <= 0xFFFFFFFD)
          {
            v1519 = *(a2 + 16);
            if (*a2 + (v1519 >> 3) >= *(a2 + 8))
            {
              v1522 = *(a2 + 32);
              if (v1522)
              {
                result = v1522(*(a2 + 24));
                v1484 = (a2 + 16);
              }
            }

            else
            {
              *v1484 = v1519 + 1;
            }

            if ((v1485 & 6) != 4)
            {
              v1523 = *(a2 + 16);
              if (*a2 + (v1523 >> 3) >= *(a2 + 8))
              {
                v1953 = *(a2 + 32);
                if (v1953)
                {
                  result = v1953(*(a2 + 24));
                  v1484 = (a2 + 16);
                }
              }

              else
              {
                *v1484 = v1523 + 1;
              }

              if ((v1486 - 5) <= 0xFFFFFFFD)
              {
                v1954 = *(a2 + 16);
                if (*a2 + (v1954 >> 3) >= *(a2 + 8))
                {
                  v1957 = *(a2 + 32);
                  if (v1957)
                  {
                    result = v1957(*(a2 + 24));
                    v1484 = (a2 + 16);
                  }
                }

                else
                {
                  *v1484 = v1954 + 1;
                }

                if ((v1485 & 6) != 2)
                {
                  v1958 = *(a2 + 16);
                  if (*a2 + (v1958 >> 3) >= *(a2 + 8))
                  {
                    v1977 = *(a2 + 32);
                    if (v1977)
                    {
                      result = v1977(*(a2 + 24));
                      v1484 = (a2 + 16);
                    }
                  }

                  else
                  {
                    *v1484 = v1958 + 1;
                  }

                  if ((v1486 - 3) <= 0xFFFFFFFD)
                  {
                    v1978 = *(a2 + 16);
                    if (*a2 + (v1978 >> 3) >= *(a2 + 8))
                    {
                      v2525 = *(a2 + 32);
                      if (v2525)
                      {
                        result = v2525(*(a2 + 24));
                        v1484 = (a2 + 16);
                      }
                    }

                    else
                    {
                      *v1484 = v1978 + 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (*(v1240 + 1588) * *(v1240 + 1584) >= 2)
    {
      v2526 = *(a2 + 16);
      v2527 = *a2;
      v2528 = *(a2 + 8);
      v2529 = (*a2 + (v2526 >> 3));
      if (v2529 >= v2528)
      {
        v2533 = *(a2 + 32);
        if (v2533)
        {
          result = v2533(*(a2 + 24));
          v1484 = (a2 + 16);
          v2531 = 0;
          LODWORD(v2526) = *(a2 + 16);
          v2527 = *a2;
          v2528 = *(a2 + 8);
          v2532 = (*a2 + (v2526 >> 3));
          if (v2532 >= v2528)
          {
            goto LABEL_3623;
          }
        }

        else
        {
          v2531 = 0;
          v2532 = (v2527 + (v2526 >> 3));
          if (v2532 >= v2528)
          {
            goto LABEL_3623;
          }
        }

LABEL_3620:
        LODWORD(v2532) = (*v2532 >> (~v2526 & 7)) & 1;
        LODWORD(v2526) = v2526 + 1;
        *v1484 = v2526;
      }

      else
      {
        v2530 = *v2529 >> (~v2526 & 7);
        LODWORD(v2526) = v2526 + 1;
        *v1484 = v2526;
        v2531 = 2 * (v2530 & 1);
        v2532 = (v2527 + (v2526 >> 3));
        if (v2532 < v2528)
        {
          goto LABEL_3620;
        }

LABEL_3623:
        v2532 = *(a2 + 32);
        if (v2532)
        {
          result = v2532(*(a2 + 24));
          v1484 = (a2 + 16);
          LODWORD(v2532) = 0;
          LODWORD(v2526) = *(a2 + 16);
          v2527 = *a2;
          v2528 = *(a2 + 8);
        }
      }

      v2556[7] = (v2532 | v2531) + 1;
      v2534 = (v2527 + (v2526 >> 3));
      if (v2534 >= v2528)
      {
        v2539 = *(a2 + 32);
        if (v2539)
        {
          result = v2539(*(a2 + 24));
          v1484 = (a2 + 16);
          v2536 = 0;
          LODWORD(v2526) = *(a2 + 16);
          v2537 = (*a2 + (v2526 >> 3));
          if (v2537 >= *(a2 + 8))
          {
            goto LABEL_3630;
          }
        }

        else
        {
          v2536 = 0;
          v2537 = (v2527 + (v2526 >> 3));
          if (v2537 >= v2528)
          {
            goto LABEL_3630;
          }
        }

LABEL_3627:
        v2538 = (*v2537 >> (~v2526 & 7)) & 1;
        *v1484 = v2526 + 1;
      }

      else
      {
        v2535 = *v2534 >> (~v2526 & 7);
        LODWORD(v2526) = v2526 + 1;
        *v1484 = v2526;
        v2536 = 2 * (v2535 & 1);
        v2537 = (v2527 + (v2526 >> 3));
        if (v2537 < v2528)
        {
          goto LABEL_3627;
        }

LABEL_3630:
        v2540 = *(a2 + 32);
        if (v2540)
        {
          result = v2540(*(a2 + 24));
        }

        v2538 = 0;
      }

      v2556[6] = (v2538 | v2536) + 1;
    }

    *(v1240 + 2168) = 0;
    if (*(v1240 + 2164))
    {
      if (!*(v2580 + 1012))
      {
        v2541 = *(v2580 + 1013) == 0;
        if (!*(v1240 + 584))
        {
          goto LABEL_3639;
        }

        goto LABEL_3640;
      }

      v2541 = 0;
      if (*(v1240 + 584))
      {
        goto LABEL_3640;
      }

LABEL_3639:
      if (*(v1240 + 456))
      {
LABEL_3640:
        v2542 = 0;
        if (!*(v2580 + 1020))
        {
          goto LABEL_3641;
        }

LABEL_3648:
        v2543 = 0;
      }

      else
      {
        v2542 = *(v1240 + 520) == 0;
        if (*(v2580 + 1020))
        {
          goto LABEL_3648;
        }

LABEL_3641:
        if (*v1240)
        {
          goto LABEL_3648;
        }

        v2543 = *(v1240 + 64) == 0;
      }

      v2544 = v2541 && v2542 && v2543;
      *(v1240 + 2168) = v2544;
    }
  }

  return result;
}