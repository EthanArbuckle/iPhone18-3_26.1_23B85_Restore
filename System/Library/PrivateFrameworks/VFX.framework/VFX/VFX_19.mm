void sub_1AF21F484(uint64_t *a1, float a2)
{
  v4 = *(a1 + 2);
  v5 = malloc_type_malloc(16 * v4, 0x1020040D5A9D86FuLL);
  if (v4)
  {
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = malloc_type_malloc(24 * *(v7 + 40 * v6 + 8), 0x10200403ED2C137uLL);
      v9 = &v5[16 * v6];
      *(v9 + 1) = v8;
      v7 = *a1;
      LODWORD(v10) = *(*a1 + 40 * v6 + 8);
      *v9 = v10;
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v7 + 40 * v6;
        v14 = -1;
        do
        {
          v15 = (*v13 + 72 * (v10 + v14));
          v16 = *(v9 + 1) + v11;
          *(v16 + 16) = v15;
          *v16 = *v15;
          ++v12;
          v7 = *a1;
          v13 = *a1 + 40 * v6;
          v10 = *(v13 + 8);
          v11 += 24;
          --v14;
        }

        while (v12 < v10);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1AF21E578(v4, v5, v17, 0.0);
  sub_1AF21EFF8(v17, a2);
  sub_1AF21E614(v17);
}

float sub_1AF21F5E4(_OWORD *a1, double a2)
{
  byte_1EB6586D0 = 0;
  v2 = a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  sub_1AF21F484(v5, v2);
  return result;
}

void **sub_1AF21F61C(void **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  if (*result == *(result + 1))
  {
    v7 = 2 * v6;
    *(result + 1) = v7;
    result[1] = malloc_type_realloc(result[1], 8 * v7, 0x2004093837F09uLL);
    result = malloc_type_realloc(v5[2], 8 * *(v5 + 1), 0x2004093837F09uLL);
    v5[2] = result;
    v6 = *v5;
  }

  *(v5[1] + v6) = a2;
  *(v5[2] + v6) = a3;
  *v5 = v6 + 1;
  return result;
}

void *sub_1AF21F6B8(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    a1[1] = 2 * v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * (2 * v5), 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

uint64_t sub_1AF21F728(uint64_t a1)
{
  if (*(a1 + 32) >= *(a1 + 36))
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAE78(v2);
    }
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a1 + 32) = v4 + 1;
  result = v3 + 56 * v4;
  *(result + 51) = 0;
  return result;
}

uint64_t sub_1AF21F790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 - 1);
  if (v2 - 1 < 0)
  {
    return 2;
  }

  v4 = *(a2 + 16);
  v5 = v3 + 1;
  for (i = (v4 + 56 * v3); ; i -= 7)
  {
    if (v4)
    {
      v7 = v4 + 56 * v3;
      if (*i == a1 || i[1] == a1)
      {
        return v7;
      }

      if (i[2] == a1)
      {
        break;
      }
    }

    --v3;
    if (v5-- <= 1)
    {
      return 2;
    }
  }

  return i;
}

uint64_t sub_1AF21F7FC(float64x2_t *a1, double **a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 32);
  while (v4)
  {
    v5 = 0;
    v6 = 0;
    --v4;
    v7 = *a1;
    do
    {
      if (v5 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 + 1;
      }

      v9 = vsubq_f64(*a2[v5], v7);
      v10 = vmulq_f64(vsubq_f64(*a2[v8], v7), vextq_s8(v9, v9, 8uLL));
      if (vmovn_s64(vcgtq_f64(v10, vdupq_laneq_s64(v10, 1))).u8[0])
      {
        a2 = a2[v5 + 3];
        v6 = 1;
      }

      ++v5;
    }

    while (v5 != 3);
    if ((v6 & 1) == 0)
    {
      return a2;
    }
  }

  if (!v3)
  {
    return 2;
  }

  a2 = *(a3 + 16);
  v11 = a1->f64[0];
  v12 = a1->f64[1];
  v13 = -a1->f64[0];
  while (1)
  {
    v14 = a2[1];
    v15 = a2[2];
    v16 = **a2;
    v17 = (*a2)[1];
    v18 = v14[1];
    v19 = fabs(v16 * v18 + v11 * v17 + *v14 * v12 + v13 * v18 - *v14 * v17 - v16 * v12) * 0.5;
    v20 = v15[1];
    v21 = *v14 * v20;
    v22 = fabs(v21 + v11 * v18 + *v15 * v12 + v13 * v20 - *v15 * v18 - *v14 * v12) * 0.5;
    v23 = fabs(v17 * *v15 + v11 * v20 + v16 * v12 + v13 * v17 - v16 * v20 - *v15 * v12) * 0.5;
    *&v16 = fabs(v21 + v16 * v18 + *v15 * v17 - v16 * v20 - *v15 * v18 - *v14 * v17) * 0.5;
    if (vabds_f32((*&v16 - v23) - v22, v19) < 0.001)
    {
      break;
    }

    a2 += 7;
    if (!--v3)
    {
      return 2;
    }
  }

  return a2;
}

uint64_t sub_1AF21F960(uint64_t a1, double *a2, double *a3, double ***a4)
{
  v8 = *a1;
  if (*a1 == a3 || (v9 = *(a1 + 8), v9 == a3) || *(a1 + 16) == a3)
  {
    v12 = *(a1 + 24);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 32);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 40);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = v8 == a2 || v9 == a2;
    if (!v10 && (sub_1AF221BF8(*a2, a2[1], *a3, a3[1], *v8, v8[1], *v9, v9[1]) & 1) != 0)
    {
      v11 = 24;
LABEL_40:
      v12 = *(a1 + v11);
LABEL_41:
      *a4 = v12;
      return 1;
    }

    v13 = *(a1 + 8);
    if (v13 != a2)
    {
      v14 = *(a1 + 16);
      if (v14 != a2 && (sub_1AF221BF8(*a2, a2[1], *a3, a3[1], *v13, v13[1], *v14, v14[1]) & 1) != 0)
      {
        v11 = 32;
        goto LABEL_40;
      }
    }

    v15 = *(a1 + 16);
    if (v15 != a2 && *a1 != a2)
    {
      result = sub_1AF221BF8(*a2, a2[1], *a3, a3[1], *v15, v15[1], **a1, *(*a1 + 8));
      if (!result)
      {
        return result;
      }

      v11 = 40;
      goto LABEL_40;
    }
  }

  return 0;
}

BOOL sub_1AF21FB4C(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = a3[1];
  v7 = v4 * v4 + *a1 * *a1;
  v8 = v5 * v5 + *a2 * *a2;
  v9 = v6 * v6 + *a3 * *a3;
  v10 = v5 - v6;
  v11 = *a2 * (v6 - v4) + *a1 * (v5 - v6);
  v12 = v4 - v5;
  v13 = v11 + *a3 * v12 + v11 + *a3 * v12;
  v14 = (v8 * (v6 - v4) + v7 * v10 + v9 * v12) / v13;
  v15 = *a2 - *a3;
  v16 = *a1 - *a2;
  v17 = -(v8 * (*a3 - *a1) + v7 * v15 + v9 * v16) / v13;
  v18 = sqrt(((v4 - v6) * (v4 - v6) + (*a1 - *a3) * (*a1 - *a3)) * ((v12 * v12 + v16 * v16) * (v10 * v10 + v15 * v15)));
  v19 = fabs(v13);
  return (v17 - a4[1]) * (v17 - a4[1]) + (v14 - *a4) * (v14 - *a4) < v18 / v19 * (v18 / v19);
}

uint64_t sub_1AF21FC10(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = v4[1];
  v8 = *a2;
  v9 = a2[1];
  if ((*v4 - v5) * (v9 - v6) - (v7 - v6) * (*a2 - v5) == 0.0)
  {
    v10 = 0;
    *a3 = 0;
    do
    {
      if (*(*(a1 + 24) + 24 + 8 * v10) == a1)
      {
        break;
      }

      ++v10;
    }

    while (v10 != 3);
LABEL_15:
    *a4 = v10;
    return 1;
  }

  v11 = *(a1 + 16);
  v12 = v11[1];
  if ((*v11 - *v4) * (v9 - v7) - (v12 - v7) * (v8 - *v4) == 0.0)
  {
    v10 = 0;
    *a3 = 1;
    do
    {
      if (*(*(a1 + 32) + 24 + 8 * v10) == a1)
      {
        break;
      }

      ++v10;
    }

    while (v10 != 3);
    goto LABEL_15;
  }

  if ((v5 - *v11) * (v9 - v12) - (v6 - v12) * (v8 - *v11) == 0.0)
  {
    v10 = 0;
    *a3 = 2;
    do
    {
      if (*(*(a1 + 40) + 24 + 8 * v10) == a1)
      {
        break;
      }

      ++v10;
    }

    while (v10 != 3);
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1AF21FD28(int *a1, double *a2, double *a3, unsigned int *a4, int a5)
{
  v5 = a4;
  v9 = *(a1 + 1);
  v10 = *v9;
  v11 = *a1;
  v12 = (*a1 - 1);
  if (v12 <= 1)
  {
    v13 = 0;
    v17 = *(a1 + 2);
    v18 = *v17;
    v19 = *a4;
  }

  else
  {
    v121 = *a1;
    v123 = a5;
    v13 = 0;
    v14 = 1;
    v15 = *v9;
    do
    {
      v16 = v9[v14];
      if (sub_1AF21FB4C(a2, a3, v15, v16))
      {
        v15 = v16;
        v13 = v14;
      }

      ++v14;
    }

    while (v12 != v14);
    v17 = *(a1 + 2);
    v18 = *v17;
    v5 = a4;
    v19 = *a4;
    if (v13 >= 1)
    {
      v20 = 1;
      a5 = v123;
      while (1)
      {
        v21 = *(*(a4 + 1) + 8 * --v19);
        if (v123)
        {
          v22 = v9[v20];
          *v21 = v22;
          v23 = 1;
        }

        else
        {
          *v21 = v10;
          v22 = v10;
          v10 = *(*(a1 + 1) + v20 * 8);
          v23 = v18;
          v18 = 1;
        }

        *(v21 + 8) = v10;
        *(v21 + 16) = a2;
        v24 = *(*(a1 + 2) + v20 * 8);
        *(v21 + 24) = v24;
        *(v21 + 32) = v18;
        *(v21 + 40) = v23;
        if (v123)
        {
          if (v18)
          {
            v26 = *v18;
            v25 = *(v18 + 8);
            if (*v18 == a2 && v25 == v10)
            {
              v27 = 0;
            }

            else
            {
              v31 = *(v18 + 16);
              if (v25 == a2 && v31 == v10)
              {
                v27 = 1;
              }

              else if (v31 == a2 && v26 == v10)
              {
                v27 = 2;
              }

              else
              {
                v27 = -1;
              }
            }
          }

          else
          {
            v27 = -1;
          }

          if (!v24)
          {
            goto LABEL_180;
          }

          v34 = v24[1];
          if (*v24 == v10 && v34 == v22)
          {
            v40 = 0;
          }

          else
          {
            v36 = v24[2];
            v37 = v36 == v10 && *v24 == v22;
            v38 = v37 ? 2 : -1;
            v39 = v34 == v10 && v36 == v22;
            v40 = v39 ? 1 : v38;
          }

          if (v27 == -1 || v40 == -1)
          {
            goto LABEL_180;
          }

          v24[v40 + 3] = v21;
          *(*(v21 + 32) + 8 * v27 + 24) = v21;
          v41 = *(v21 + 24);
          *(v21 + 49) = *(*(v21 + 32) + v27 + 48);
          *(v21 + 48) = *(v41 + v40 + 48);
          *(v21 + 50) = 0;
        }

        else
        {
          if (v23)
          {
            v29 = *v23;
            v28 = *(v23 + 8);
            if (*v23 == v22 && v28 == a2)
            {
              v30 = 0;
            }

            else
            {
              v32 = *(v23 + 16);
              if (v28 == v22 && v32 == a2)
              {
                v30 = 1;
              }

              else if (v32 == v22 && v29 == a2)
              {
                v30 = 2;
              }

              else
              {
                v30 = -1;
              }
            }
          }

          else
          {
            v30 = -1;
          }

          if (!v24 || ((v43 = v24[1], *v24 == v10) ? (v44 = v43 == v22) : (v44 = 0), v44 ? (v48 = 0) : ((v45 = v24[2], v43 == v10) ? (v46 = v45 == v22) : (v46 = 0), v46 ? (v48 = 1) : (v45 == v10 ? (v47 = *v24 == v22) : (v47 = 0), !v47 ? (v48 = -1) : (v48 = 2))), v30 == -1 || v48 == -1))
          {
LABEL_180:
            *v5 = v19;
            return 2;
          }

          v24[v48 + 3] = v21;
          *(*(v21 + 40) + 8 * v30 + 24) = v21;
          *(v21 + 50) = *(*(v21 + 40) + v30 + 48);
          *(v21 + 48) = *(*(v21 + 24) + v48 + 48);
        }

        v9 = *(a1 + 1);
        v10 = v9[v20++];
        v18 = v21;
        if (v13 + 1 == v20)
        {
          *a4 = v19;
          v17 = *(a1 + 2);
          v10 = v15;
          v18 = v21;
          goto LABEL_85;
        }
      }
    }

    v10 = v15;
    a5 = v123;
LABEL_85:
    v11 = v121;
  }

  v49 = v17[v12];
  v50 = v11 - 3;
  if (v11 - 3 >= v13)
  {
    v52 = 0;
    v53 = 8 * v50;
    v54 = v50 + 1;
    v55 = v19 - 1;
    v56 = v53;
    v57 = &v9[v11 - 2];
    while (1)
    {
      v58 = *v57;
      --v19;
      v51 = *(*(v5 + 1) + 8 * (v55 + v52));
      *v51 = a3;
      if (a5)
      {
        v51[1] = v58;
        v59 = *(*(a1 + 1) + v53 + 8 * v52);
        v51[2] = v59;
        v51[3] = v49;
        v60 = *(*(a1 + 2) + v53 + 8 * v52 + 8);
        v51[4] = v60;
        v51[5] = 1;
        if (v49)
        {
          v61 = *v49;
          v62 = v49[1];
          if (*v49 == v58 && v62 == a3)
          {
            v63 = 0;
          }

          else
          {
            v69 = v49[2];
            if (v62 == v58 && v69 == a3)
            {
              v63 = 1;
            }

            else if (v69 == v58 && v61 == a3)
            {
              v63 = 2;
            }

            else
            {
              v63 = -1;
            }
          }
        }

        else
        {
          v63 = -1;
        }

        if (!v60)
        {
          goto LABEL_180;
        }

        v72 = *(v60 + 1);
        if (*v60 == v59 && v72 == v58)
        {
          v78 = 0;
        }

        else
        {
          v74 = *(v60 + 2);
          v75 = v74 == v59 && *v60 == v58;
          v76 = v75 ? 2 : -1;
          v77 = v72 == v59 && v74 == v58;
          v78 = v77 ? 1 : v76;
        }

        if (v63 == -1 || v78 == -1)
        {
          goto LABEL_180;
        }

        *&v60[v78 + 3] = v51;
        *&v51[3][v63 + 3] = v51;
        v79 = v51[4];
        *(v51 + 48) = *(v51[3] + v63 + 48);
        *(v51 + 49) = *(v79 + v78 + 48);
      }

      else
      {
        v64 = *(*(a1 + 1) + v53 + 8 * v52);
        v51[1] = v64;
        v51[2] = v58;
        v51[3] = 1;
        v65 = *(*(a1 + 2) + v53 + 8 * v52 + 8);
        v51[4] = v65;
        v51[5] = v49;
        if (v49)
        {
          v66 = *v49;
          v67 = v49[1];
          if (*v49 == a3 && v67 == v58)
          {
            v68 = 0;
          }

          else
          {
            v70 = v49[2];
            if (v67 == a3 && v70 == v58)
            {
              v68 = 1;
            }

            else if (v70 == a3 && v66 == v58)
            {
              v68 = 2;
            }

            else
            {
              v68 = -1;
            }
          }
        }

        else
        {
          v68 = -1;
        }

        if (!v65)
        {
          goto LABEL_180;
        }

        v81 = *(v65 + 1);
        if (*v65 == v58 && v81 == v64)
        {
          v86 = 0;
        }

        else
        {
          v83 = *(v65 + 2);
          if (v81 == v58 && v83 == v64)
          {
            v86 = 1;
          }

          else
          {
            v85 = v83 == v58 && *v65 == v64;
            v86 = v85 ? 2 : -1;
          }
        }

        if (v68 == -1 || v86 == -1)
        {
          goto LABEL_180;
        }

        *&v65[v86 + 3] = v51;
        *&v51[5][v68 + 3] = v51;
        v87 = v51[4];
        *(v51 + 50) = *(v51[5] + v68 + 48);
        *(v51 + 49) = *(v87 + v86 + 48);
        *(v51 + 48) = 0;
      }

      v57 = (*(a1 + 1) + v56);
      v56 -= 8;
      --v52;
      v49 = v51;
      if (v54 + v52 <= v13)
      {
        goto LABEL_160;
      }
    }
  }

  v51 = v49;
LABEL_160:
  v88 = *(v5 + 1);
  v89 = v19 - 1;
  *v5 = v89;
  v90 = *(v88 + 8 * v89);
  *v90 = a2;
  if (a5)
  {
    *(v90 + 8) = a3;
    *(v90 + 16) = v10;
    if (v18)
    {
      v91 = *(v18 + 8);
      if (*v18 == a2 && v91 == v10)
      {
        v97 = 0;
        if (!v51)
        {
          goto LABEL_242;
        }
      }

      else
      {
        v93 = *(v18 + 16);
        if (v93 == a2 && *v18 == v10)
        {
          v95 = 2;
        }

        else
        {
          v95 = -1;
        }

        if (v91 == a2 && v93 == v10)
        {
          v97 = 1;
        }

        else
        {
          v97 = v95;
        }

        if (!v51)
        {
          goto LABEL_242;
        }
      }
    }

    else
    {
      v97 = -1;
      if (!v51)
      {
        goto LABEL_242;
      }
    }

    v105 = v51[1];
    if (*v51 == v10 && v105 == a3)
    {
      v111 = 0;
    }

    else
    {
      v107 = v51[2];
      if (v107 == v10 && *v51 == a3)
      {
        v109 = 2;
      }

      else
      {
        v109 = -1;
      }

      if (v105 == v10 && v107 == a3)
      {
        v111 = 1;
      }

      else
      {
        v111 = v109;
      }
    }

    if (v97 != -1 && v111 != -1)
    {
      *(v18 + 8 * v97 + 24) = v90;
      v51[v111 + 3] = v90;
      *(v90 + 24) = 1;
      *(v90 + 32) = v51;
      *(v90 + 40) = v18;
      *(v90 + 48) = 1;
      *(v90 + 49) = *(v51 + v111 + 48);
      *(v90 + 50) = *(v18 + v97 + 48);
      return v90;
    }

LABEL_242:
    *(v90 + 24) = 1;
    *(v90 + 32) = 1;
    *(v90 + 40) = 1;
    return v90;
  }

  *(v90 + 8) = v10;
  *(v90 + 16) = a3;
  if (!v18)
  {
    v104 = -1;
    if (!v51)
    {
      goto LABEL_247;
    }

LABEL_222:
    v112 = v51[1];
    if (*v51 == a3 && v112 == v10)
    {
      v118 = 0;
    }

    else
    {
      v114 = v51[2];
      if (v114 == a3 && *v51 == v10)
      {
        v116 = 2;
      }

      else
      {
        v116 = -1;
      }

      if (v112 == a3 && v114 == v10)
      {
        v118 = 1;
      }

      else
      {
        v118 = v116;
      }
    }

    if (v104 <= 2 && v118 < 3)
    {
      *(v18 + 8 * v104 + 24) = v90;
      v51[v118 + 3] = v90;
      *(v90 + 24) = v18;
      *(v90 + 32) = v51;
      *(v90 + 40) = 1;
      *(v90 + 48) = *(v18 + v104 + 48);
      *(v90 + 49) = *(v51 + v118 + 48);
      *(v90 + 50) = 1;
      return v90;
    }

    goto LABEL_247;
  }

  v98 = *(v18 + 8);
  if (*v18 == v10 && v98 == a2)
  {
    v104 = 0;
    if (!v51)
    {
      goto LABEL_247;
    }

    goto LABEL_222;
  }

  v100 = *(v18 + 16);
  if (v100 == v10 && *v18 == a2)
  {
    v102 = 2;
  }

  else
  {
    v102 = -1;
  }

  if (v98 == v10 && v100 == a2)
  {
    v104 = 1;
  }

  else
  {
    v104 = v102;
  }

  if (v51)
  {
    goto LABEL_222;
  }

LABEL_247:
  v119 = sub_1AF0D5194();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDEAEFC(v119);
  }

  return v90;
}

void sub_1AF2204DC(uint64_t a1, double *a2, double *a3)
{
  v4 = a3;
  if (*a2 > *a3 || *a2 == *a3 && a2[1] < a3[1])
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
    v4 = a2;
  }

  v7 = sub_1AF21F790(v4, a1);
  if (v7 == 2)
  {
    v17 = 6;
    goto LABEL_42;
  }

  v8 = v7;
  v9 = *(a1 + 32);
  v80 = 0;
  if (sub_1AF21F960(v7, v4, v6, &v80))
  {
LABEL_17:
    if (v8 && (*v8 == v6 || *(v8 + 8) == v6 || *(v8 + 16) == v6))
    {
      v18 = 0;
      while (*(v8 + 8 * v18 + 24) != v80)
      {
        if (++v18 == 3)
        {
          v18 = 0xFFFFFFFFLL;
          break;
        }
      }

      v19 = 0;
      while (v80[v19 + 3] != v8)
      {
        if (++v19 == 3)
        {
          v19 = 0xFFFFFFFFLL;
          break;
        }
      }

      *(v80 + v19 + 48) = 1;
      *(v8 + v18 + 48) = 1;
      return;
    }

    v78 = 0x1000000000;
    ptr = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
    v75 = 0x400000000;
    v76 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v77 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v72 = 0x400000000;
    v73 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v11 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v74 = v11;
    do
    {
      v15 = *(v8 + v12);
      if (v15 != v4)
      {
        if ((*v6 - *v4) * (v15[1] - v4[1]) - (v6[1] - v4[1]) * (*v15 - *v4) <= 0.0)
        {
          v13 = *(v8 + v12);
        }

        else
        {
          v14 = *(v8 + v12);
        }
      }

      v12 += 8;
    }

    while (v12 != 24);
    if (*v8 == v13)
    {
      v20 = 32;
    }

    else if (*(v8 + 8) == v13)
    {
      v20 = 40;
    }

    else
    {
      if (*(v8 + 16) != v13)
      {
        v16 = 0;
        goto LABEL_47;
      }

      v20 = 24;
    }

    v16 = *(v8 + v20);
LABEL_47:
    sub_1AF21F61C(&v75, v14, v16);
    if (*v8 == v14)
    {
      v22 = 32;
    }

    else if (*(v8 + 8) == v14)
    {
      v22 = 40;
    }

    else
    {
      if (*(v8 + 16) != v14)
      {
        v21 = 0;
LABEL_55:
        sub_1AF21F61C(&v72, v13, v21);
        v23 = 0;
        v24 = v78;
        v65 = a1;
        if (v14 != v6 && v13 != v6)
        {
          v25 = v13;
          v66 = 0;
          v67 = 0;
          v26 = ptr;
          v27 = *(a1 + 32);
          v28 = v4;
          v69 = HIDWORD(v78);
          while (1)
          {
            v29 = v27 - 1;
            if (!v29)
            {
              v54 = 3;
LABEL_111:
              v55 = v65;
LABEL_130:
              *(v55 + 40) = v54;
              goto LABEL_131;
            }

            v30 = (v8 + 16);
            v31 = *(v8 + 8);
            if (*v8 == v28)
            {
              v33 = 32;
            }

            else
            {
              v32 = *v30;
              if (v31 == v28)
              {
                v31 = v32;
                v30 = v8;
                v33 = 40;
              }

              else
              {
                if (v32 != v28)
                {
                  goto LABEL_109;
                }

                v31 = *v8;
                v30 = (v8 + 8);
                v33 = 24;
              }
            }

            v34 = *(v8 + v33);
            if (!v34)
            {
LABEL_109:
              v54 = 4;
              goto LABEL_111;
            }

            v71 = *v30;
            v35 = 3;
            v36 = -1;
            while (v34[v35] != v8)
            {
              ++v36;
              if (++v35 == 6)
              {
                goto LABEL_73;
              }
            }

            v37 = v35 == 3;
            v38 = 2;
            if (!v37)
            {
              v38 = v36;
            }

            v3 = v34[v38];
LABEL_73:
            v39 = (*v6 - *v4) * (v3[1] - v4[1]) - (v6[1] - v4[1]) * (*v3 - *v4);
            v40 = *v34;
            v70 = v24;
            if (v39 <= 0.0)
            {
              if (v40 == v14)
              {
                v46 = v25;
                v45 = v14;
                v42 = v26;
                v49 = 4;
              }

              else if (v34[1] == v14)
              {
                v46 = v25;
                v45 = v14;
                v42 = v26;
                v49 = 5;
              }

              else
              {
                v45 = v14;
                v46 = v25;
                if (v34[2] != v14)
                {
                  v42 = v26;
                  v43 = v29;
                  v47 = 0;
LABEL_91:
                  sub_1AF21F61C(&v72, v3, v47);
                  v66 = v46;
                  goto LABEL_92;
                }

                v42 = v26;
                v49 = 3;
              }

              v43 = v29;
              v47 = v34[v49];
              goto LABEL_91;
            }

            v68 = v14;
            if (v40 == v25)
            {
              break;
            }

            if (v34[1] == v25)
            {
              v42 = v26;
              v48 = 5;
              goto LABEL_87;
            }

            if (v34[2] == v25)
            {
              v42 = v26;
              v48 = 3;
              goto LABEL_87;
            }

            v41 = v25;
            v42 = v26;
            v43 = v29;
            v44 = 0;
LABEL_88:
            sub_1AF21F61C(&v75, v3, v44);
            v45 = v3;
            v67 = v68;
            v3 = v41;
LABEL_92:
            v26 = v42;
            if (v69 == v70)
            {
              v69 *= 2;
              v26 = malloc_type_realloc(v42, 8 * v69, 0x2004093837F09uLL);
              ptr = v26;
            }

            v27 = v43;
            v50 = v70 + 1;
            *(v26 + v70) = v8;
            v28 = v71;
            if (v39 > 0.0 == (*v6 - *v4) * (v31[1] - v4[1]) - (v6[1] - v4[1]) * (*v31 - *v4) > 0.0)
            {
              v28 = v31;
            }

            if (v45 != v6)
            {
              v8 = v34;
              v25 = v3;
              v14 = v45;
              v24 = v70 + 1;
              if (v3 != v6)
              {
                continue;
              }
            }

            HIDWORD(v78) = v69;
            v51 = v66;
            v23 = v67;
            goto LABEL_100;
          }

          v42 = v26;
          v48 = 4;
LABEL_87:
          v41 = v25;
          v43 = v29;
          v44 = v34[v48];
          goto LABEL_88;
        }

        v50 = v78;
        v45 = v14;
        v51 = 0;
        v34 = v8;
LABEL_100:
        v52 = *v34;
        if (v45 != v6)
        {
          if (v52 == v51)
          {
            v56 = 4;
          }

          else if (v34[1] == v51)
          {
            v56 = 5;
          }

          else
          {
            if (v34[2] != v51)
            {
              v53 = 0;
LABEL_117:
              v58 = &v75;
LABEL_122:
              sub_1AF21F61C(v58, v6, v53);
              if (HIDWORD(v78) == v50)
              {
                HIDWORD(v78) = 2 * v50;
                v59 = malloc_type_realloc(ptr, 16 * v50, 0x2004093837F09uLL);
                ptr = v59;
              }

              else
              {
                v59 = ptr;
              }

              LODWORD(v78) = v50 + 1;
              *(v59 + v50) = v34;
              v60 = sub_1AF21FD28(&v75, v4, v6, &v78, 1);
              if (v60 == 2)
              {
                *(v65 + 40) = 1;
              }

              else
              {
                v61 = v60;
                v62 = sub_1AF21FD28(&v72, v4, v6, &v78, 0);
                v55 = v65;
                if (v62 == 2)
                {
                  v54 = 1;
                  goto LABEL_130;
                }

                *(v61 + 24) = v62;
                *(v62 + 40) = v61;
              }

LABEL_131:
              free(ptr);
              v63 = v77;
              free(v76);
              free(v63);
              v64 = v74;
              free(v73);
              free(v64);
              return;
            }

            v56 = 3;
          }

          v53 = v34[v56];
          goto LABEL_117;
        }

        if (v52 == v23)
        {
          v57 = 4;
        }

        else if (v34[1] == v23)
        {
          v57 = 5;
        }

        else
        {
          if (v34[2] != v23)
          {
            v53 = 0;
LABEL_121:
            v58 = &v72;
            goto LABEL_122;
          }

          v57 = 3;
        }

        v53 = v34[v57];
        goto LABEL_121;
      }

      v22 = 24;
    }

    v21 = *(v8 + v22);
    goto LABEL_55;
  }

  while (--v9)
  {
    if (*v8 == v4)
    {
      v10 = 24;
      goto LABEL_15;
    }

    if (*(v8 + 8) == v4)
    {
      v10 = 32;
      goto LABEL_15;
    }

    if (*(v8 + 16) == v4)
    {
      v10 = 40;
LABEL_15:
      v8 = *(v8 + v10);
    }

    if (sub_1AF21F960(v8, v4, v6, &v80))
    {
      goto LABEL_17;
    }
  }

  v17 = 2;
LABEL_42:
  *(a1 + 40) = v17;
}

void *sub_1AF220C70(void *result, double *a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  while (2)
  {
    if (v2 > *(v4 + 8))
    {
      v26 = 9;
LABEL_37:
      *(v4 + 10) = v26;
      return result;
    }

    v5 = v4[1];
    v6 = v2 - 1;
    *v4 = v6;
    v7 = *(v5 + 8 * v6);
    v8 = *(v7 + 32);
    if (!v8)
    {
      v26 = 10;
      goto LABEL_37;
    }

    v9 = 0;
    v10 = v8 + 24;
    v11 = 24;
    while (*(v8 + v11) != v7)
    {
      --v9;
      v11 += 8;
      if (v9 == -3)
      {
        goto LABEL_36;
      }
    }

    if (v9)
    {
      v12 = ~v9;
    }

    else
    {
      v12 = 2;
    }

    if (v12 == -1)
    {
      goto LABEL_36;
    }

    if ((*(v7 + 49) & 1) == 0)
    {
      v13 = v8 + v11;
      v14 = *(v13 - 24);
      v15 = *(v8 + 8 * v12);
      v16 = v9 == -2 ? 0 : 1 - v9;
      result = sub_1AF21FB4C(*(v13 - 24), *(v8 + 8 * v16), *(v8 + 8 * v12), a2);
      if (result)
      {
        v17 = *(v10 + 8 * v16);
        v18 = *(v10 + 8 * v12);
        v19 = *(v7 + 40);
        v20 = *(v8 + 48 + v12);
        v21 = *(v7 + 50);
        *(v7 + 49) = *(v8 + 48 + v16);
        *(v8 + 48) = 0;
        *(v8 + 49) = v20;
        *(v8 + 50) = v21;
        *(v7 + 16) = v15;
        *(v7 + 32) = v17;
        *(v7 + 40) = v8;
        *v8 = a2;
        *(v8 + 8) = v15;
        *(v8 + 16) = v14;
        *(v8 + 24) = v7;
        *(v8 + 32) = v18;
        *(v8 + 40) = v19;
        if (v17)
        {
          v22 = (v17 + 24);
          v23 = 3;
          while (*v22 != v8)
          {
            ++v22;
            if (!--v23)
            {
              goto LABEL_36;
            }
          }

          if (v22 == 3)
          {
            goto LABEL_36;
          }

          *v22 = v7;
          result = sub_1AF21F6B8(v4, v7);
        }

        if (v18)
        {
          result = sub_1AF21F6B8(v4, v8);
        }

        if (v19)
        {
          v24 = (v19 + 24);
          v25 = 3;
          while (*v24 != v7)
          {
            ++v24;
            if (!--v25)
            {
              goto LABEL_36;
            }
          }

          if (v24 != 3)
          {
            *v24 = v8;
            goto LABEL_34;
          }

LABEL_36:
          v26 = 5;
          goto LABEL_37;
        }
      }
    }

LABEL_34:
    v2 = *v4;
    if (*v4)
    {
      continue;
    }

    return result;
  }
}

void *sub_1AF220E5C(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v18 = *(a2 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *a2 = a3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v11 = sub_1AF21F728(a1);
  result = sub_1AF21F728(a1);
  v13 = result;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
  *(a2 + 40) = result;
  *v11 = a3;
  *(v11 + 8) = v9;
  *(v11 + 16) = v7;
  *(v11 + 24) = result;
  *(v11 + 32) = v18;
  *(v11 + 40) = a2;
  *result = a3;
  result[1] = v8;
  result[2] = v9;
  result[3] = a2;
  result[4] = v6;
  result[5] = v11;
  *(v11 + 48) = 0;
  *(v11 + 49) = *(a2 + 50);
  *(v11 + 50) = 0;
  *(result + 48) = 0;
  *(result + 49) = *(a2 + 49);
  *(result + 50) = 0;
  *(a2 + 49) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  if (v10)
  {
    result = sub_1AF21F6B8(a1, a2);
  }

  if (v6)
  {
    v14 = v6 + 24;
    v15 = 3;
    while (*v14 != a2)
    {
      v14 += 8;
      if (!--v15)
      {
        v14 = 3;
        break;
      }
    }

    *v14 = v13;
    result = sub_1AF21F6B8(a1, v13);
  }

  if (v18)
  {
    v16 = v18 + 24;
    v17 = 3;
    while (*v16 != a2)
    {
      v16 += 8;
      if (!--v17)
      {
        v16 = 3;
        break;
      }
    }

    *v16 = v11;

    return sub_1AF21F6B8(a1, v11);
  }

  return result;
}

void *sub_1AF220FD8(int *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v8 = *(a2 + 24 + 8 * a4);
  v9 = (a5 + 1) % 3;
  v33 = *(v8 + 24 + 8 * v9);
  v10 = (a5 + 2) % 3;
  v31 = *(v8 + 24 + 8 * v10);
  v11 = (a4 + 1) % 3;
  v12 = *(a2 + 24 + 8 * v11);
  v13 = (a4 + 2) % 3;
  v28 = *(a2 + 24 + 8 * v13);
  v32 = *(v8 + 48 + v9);
  v29 = *(v8 + 48 + v10);
  v25 = *(a2 + 48 + v11);
  v30 = *(a2 + 48 + v13);
  v14 = *(v8 + 48 + a5);
  v27 = *(a2 + 8 * a4);
  v15 = *(v8 + 8 * a5);
  v16 = *(a2 + 8 * v13);
  v17 = *(v8 + 8 * v10);
  v18 = sub_1AF21F728(a1);
  result = sub_1AF21F728(a1);
  v20 = result;
  *a2 = a3;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v8;
  *(a2 + 32) = v12;
  *(a2 + 40) = v18;
  *(a2 + 48) = v14;
  *(a2 + 49) = v25;
  *(a2 + 50) = 0;
  *v8 = a3;
  *(v8 + 8) = v17;
  *(v8 + 16) = v15;
  *(v8 + 24) = result;
  *(v8 + 32) = v31;
  *(v8 + 40) = a2;
  *(v8 + 48) = 0;
  *(v8 + 49) = v29;
  *(v8 + 50) = v14;
  *v18 = a3;
  *(v18 + 8) = v16;
  *(v18 + 16) = v27;
  *(v18 + 24) = a2;
  *(v18 + 32) = v28;
  *(v18 + 40) = result;
  *(v18 + 48) = 0;
  *(v18 + 49) = v30;
  *(v18 + 50) = v14;
  *result = a3;
  result[1] = v27;
  result[2] = v17;
  result[3] = v18;
  result[4] = v33;
  result[5] = v8;
  *(result + 48) = v14;
  *(result + 49) = v32;
  *(result + 50) = 0;
  if (v31)
  {
    result = sub_1AF21F6B8(a1, v8);
  }

  if (v12)
  {
    result = sub_1AF21F6B8(a1, a2);
  }

  if (v28)
  {
    v21 = v28 + 24;
    v22 = 3;
    while (*v21 != a2)
    {
      v21 += 8;
      if (!--v22)
      {
        v21 = 3;
        break;
      }
    }

    *v21 = v18;
    result = sub_1AF21F6B8(a1, v18);
  }

  if (v33)
  {
    v23 = v33 + 24;
    v24 = 3;
    while (*v23 != v8)
    {
      v23 += 8;
      if (!--v24)
      {
        v23 = 3;
        break;
      }
    }

    *v23 = v20;

    return sub_1AF21F6B8(a1, v20);
  }

  return result;
}

void *sub_1AF22123C(uint64_t a1, float64x2_t *a2)
{
  result = sub_1AF21F7FC(a2, (*(a1 + 16) + 56 * (*(a1 + 32) - 1)), a1);
  if (result == 2)
  {
    *(a1 + 40) = 8;
  }

  else
  {
    v5 = result;
    v6 = 0;
    if (sub_1AF21FC10(result, a2->f64, &v6 + 1, &v6))
    {
      sub_1AF220FD8(a1, v5, a2, HIDWORD(v6), v6);
    }

    else
    {
      sub_1AF220E5C(a1, v5, a2);
    }

    return sub_1AF220C70(a1, a2->f64);
  }

  return result;
}

__n128 sub_1AF2212F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AF21F728(a1);
  *(a1 + 24) = v10;
  v11 = *(*a2 + 16);
  v12 = *(*a2 + 20);
  v13 = *(*a2 + 24);
  v14 = *(*a2 + 28);
  v15 = v12 - v11;
  v16 = v14 - v13;
  if (vabdd_f64(v12, v11) < 0.00001 || vabdd_f64(v14, v13) < 0.00001)
  {
    *(a1 + 40) = 7;
  }

  v17 = v13 + v16 * -100.0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 47) = 0;
  *(v10 + 40) = 0;
  *a3 = v11 + v15 * -100.0;
  *(a3 + 8) = v17;
  *(a3 + 48) = *a3;
  *a4 = v11 + v15 * 100.0;
  *(a4 + 8) = v17;
  *(a4 + 48) = *a4;
  *a5 = v11 + v15 * 0.0;
  *(a5 + 8) = v13 + v16 * 100.0;
  result = *a5;
  *(a5 + 48) = *a5;
  *v10 = a3;
  *(v10 + 8) = a4;
  *(v10 + 16) = a5;
  return result;
}

uint64_t sub_1AF2213E8(uint64_t a1, int a2, BOOL *a3)
{
  *(a1 + 51) = 1;
  *(a1 + 52) = a2;
  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 51) & 1) == 0)
  {
    sub_1AF2213E8();
  }

  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 51) & 1) == 0)
  {
    sub_1AF2213E8();
  }

  result = *(a1 + 40);
  if (result)
  {
    if ((*(result + 51) & 1) == 0)
    {
      result = sub_1AF2213E8();
    }
  }

  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 40))
      {
        return result;
      }

      v9 = 50;
    }

    else
    {
      v9 = 49;
    }
  }

  else
  {
    v9 = 48;
  }

  *a3 = *(a1 + v9) != a2;
  return result;
}

void *sub_1AF2214CC(uint64_t a1)
{
  v10 = 0;
  sub_1AF2213E8(*(a1 + 16), 1, &v10);
  LODWORD(v2) = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = v10;
  do
  {
    if (*(*(a1 + 16) + 56 * v3 + 52) == v4)
    {
      LODWORD(v2) = v2 - 1;
      *(a1 + 32) = v2;
      if (v3 < v2)
      {
        v5 = v3;
        v6 = 56 * v3;
        do
        {
          v7 = *(a1 + 16) + v6;
          ++v5;
          v8 = *(v7 + 72);
          *v7 = *(v7 + 56);
          *(v7 + 16) = v8;
          *(v7 + 32) = *(v7 + 88);
          *(v7 + 48) = *(v7 + 104);
          v2 = *(a1 + 32);
          v6 += 56;
        }

        while (v5 < v2);
      }
    }

    else
    {
      ++v3;
    }
  }

  while (v3 < v2);
  if (v2)
  {
    result = malloc_type_realloc(*(a1 + 16), 56 * v2, 0x1020040F7381AC9uLL);
  }

  else
  {
LABEL_12:
    free(*(a1 + 16));
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void *sub_1AF2215CC(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = (*a1 + 8);
    do
    {
      v7 = *v6;
      v6 += 10;
      v5 += v7;
      --v4;
    }

    while (v4);
    v8 = 2 * v5 + 2;
  }

  else
  {
    v8 = 2;
  }

  v33 = 0;
  v30 = 0x1000000000;
  v31 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  v32 = malloc_type_malloc(56 * v8, 0x1020040F7381AC9uLL);
  v34 = 0;
  v35 = v8;
  v36 = 0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v9 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v9;
  sub_1AF2212F4(&v30, v23, v28, v26, v24);
  if (!v36)
  {
    v11 = *(a1 + 8);
    v12 = (v11 - 1);
    if (v11 - 1 < 0)
    {
LABEL_23:
      sub_1AF2214CC(&v30);
      free(v31);
      *a2 = v34;
      return v32;
    }

    v22 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
    while (1)
    {
      v13 = *a1 + 40 * v12;
      v14 = *(v13 + 8);
      if (v14 >= 3)
      {
        break;
      }

LABEL_21:
      if (v12-- <= 0)
      {
        goto LABEL_23;
      }
    }

    v15 = *v13;
    sub_1AF22123C(&v30, *v13);
    v16 = v22;
    if (!v36)
    {
      v17 = 72;
      v18 = 1;
      while (1)
      {
        v19 = 0;
        while (1)
        {
          v20 = vmovn_s64(vcgeq_f64(v16, vabdq_f64(*(v15 + 72 * v18), *(v15 + v19))));
          if (v20.i32[0] & v20.i32[1])
          {
            break;
          }

          v19 += 72;
          if (v17 == v19)
          {
            sub_1AF22123C(&v30, (v15 + 72 * v18));
            if (v36)
            {
              goto LABEL_7;
            }

            break;
          }
        }

        sub_1AF2204DC(&v30, &v15[-5].f64[9 * v18 + 1], &v15->f64[9 * v18]);
        v16 = v22;
        if (v36)
        {
          break;
        }

        ++v18;
        v17 += 72;
        if (v18 == v14)
        {
          sub_1AF2204DC(&v30, &v15->f64[9 * (v14 - 1)], v15->f64);
          if (v36)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

LABEL_7:
  free(v31);
  *a2 = 0;
  free(v32);
  return 0;
}

uint64_t sub_1AF221838(uint64_t result, unsigned int a2)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v15 = sub_1AF2219C8;
  v16 = &unk_1E7A7D288;
  v17 = &unk_1F24E8C80;
  v18 = &unk_1F24E8CA0;
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    v3 = result;
    v4 = a2 - 1;
    v5 = (a2 >> 1) + 1;
    do
    {
      result = v15(v14, v3, v5 - 2, v4);
      --v5;
    }

    while (v5 > 1);
    if (v4 >= 1)
    {
      v6 = v4 + 1;
      v7 = 40 * v4;
      do
      {
        v8 = v3 + v7;
        v9 = *v3;
        v10 = *(v3 + 16);
        v11 = *(v3 + 32);
        v12 = *(v3 + v7 + 32);
        v13 = *(v3 + v7 + 16);
        *v3 = *(v3 + v7);
        *(v3 + 16) = v13;
        *(v3 + 32) = v12;
        *(v8 + 32) = v11;
        *v8 = v9;
        *(v8 + 16) = v10;
        result = v15(v14, v3, 0, v2);
        --v6;
        v2 = (v2 - 1);
        v7 -= 40;
      }

      while (v6 > 1);
    }
  }

  return result;
}

__n128 sub_1AF22199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  v6 = *(a2 + 32);
  v7 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v7;
  *(a3 + 32) = v6;
  *(a2 + 32) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1AF2219C8(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 2 * a3;
  if (2 * a3 < a4)
  {
    v6 = a3;
    v7 = result;
    do
    {
      v8 = v4;
      v9 = v4 | 1;
      result = (*(*(v7 + 32) + 16))();
      if (result)
      {
        v10 = v9;
      }

      else
      {
        v10 = v6;
      }

      if (v9 < a4)
      {
        v11 = v8 + 2;
        result = (*(*(v7 + 32) + 16))();
        if (result)
        {
          v10 = v11;
        }
      }

      if (v10 == v6)
      {
        break;
      }

      result = (*(*(v7 + 40) + 16))();
      v4 = 2 * v10;
      v6 = v10;
    }

    while (2 * v10 < a4);
  }

  return result;
}

uint64_t sub_1AF221AB0(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v5 = *a1 + 8;
  v6 = 2;
  v7 = 3;
  v28 = v5;
  while (2)
  {
    v8 = v3;
    v9 = v6;
    v10 = (v5 + 72 * v6);
    v11 = (v4 + 72 * v3);
    v12 = *v11;
    v13 = v11[1];
    v14 = ++v3;
    if (v3 == v1)
    {
      v14 = 0;
    }

    v15 = (v4 + 72 * v14);
    v16 = *v15;
    v17 = v15[1];
    if (v8)
    {
      v18 = -1;
    }

    else
    {
      v18 = -2;
    }

    v19 = (v18 + v1);
    v20 = v7;
    v21 = v9;
    while (v21 <= v19)
    {
      v22 = *(v10 - 1);
      v23 = *v10;
      if (v16 != v22 || v17 != v23)
      {
        v25 = (v4 + 72 * (v20 % v1));
        v26 = v25[1];
        if (*v25 != v12 || v26 != v13)
        {
          v10 += 9;
          ++v20;
          ++v21;
          if (!sub_1AF221BF8(v12, v13, v16, v17, v22, v23, *v25, v26))
          {
            continue;
          }
        }
      }

      return 1;
    }

    result = 0;
    v6 = v9 + 1;
    ++v7;
    v5 = v28;
    if (v3 != v1)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t sub_1AF221BF8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((a3 - a1) * (a6 - a2) - (a4 - a2) * (a5 - a1) > 0.0 != (a3 - a1) * (a8 - a2) - (a4 - a2) * (a7 - a1) <= 0.0)
  {
    return 0;
  }

  else
  {
    return ((a7 - a5) * (a2 - a6) - (a8 - a6) * (a1 - a5) > 0.0) ^ ((a7 - a5) * (a4 - a6) - (a8 - a6) * (a3 - a5) > 0.0);
  }
}

uint64_t sub_1AF221C80(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = (*a1 + 8);
      v4 = -v2;
      v5 = 0.0;
      v6 = 1;
      do
      {
        if (v4 + v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v5 = v5 + *(v3 - 1) * *(*a1 + 72 * v7 + 8) - *(*a1 + 72 * v7) * *v3;
        v3 += 9;
        ++v6;
      }

      while (v4 + v6 != 1);
      if (v5 < 0.0)
      {
        v1 = 1;
      }

      else
      {
        v1 = 2;
      }
    }

    else
    {
      v1 = 2;
    }

    *(a1 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1AF221CFC(uint64_t result)
{
  LODWORD(v1) = *(result + 8);
  if (v1)
  {
    v2 = (*result + 68);
    v3 = *(result + 8);
    do
    {
      v4 = *(v2 - 52);
      v5 = v4;
      if (*v2 == 1)
      {
        v5 = *(v2 - 36);
      }

      *(v2 - 52) = vnegq_f64(v5);
      *(v2 - 36) = vnegq_f64(v4);
      v2 += 72;
      --v3;
    }

    while (v3);
    if (v1 != 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = -1;
      do
      {
        v9 = (*result + v6);
        v19 = v9[2];
        v20 = v9[3];
        v21 = *(v9 + 8);
        v17 = *v9;
        v18 = v9[1];
        v10 = *result + 72 * (v1 + v8);
        *v9 = *v10;
        v12 = *(v10 + 32);
        v11 = *(v10 + 48);
        v13 = *(v10 + 16);
        *(v9 + 8) = *(v10 + 64);
        v9[2] = v12;
        v9[3] = v11;
        v9[1] = v13;
        v14 = *result + 72 * (v8 + *(result + 8));
        *(v14 + 32) = v19;
        *(v14 + 48) = v20;
        *(v14 + 64) = v21;
        *v14 = v17;
        *(v14 + 16) = v18;
        ++v7;
        v1 = *(result + 8);
        v6 += 72;
        --v8;
      }

      while (v7 < v1 >> 1);
    }
  }

  v15 = *(result + 32);
  if (v15 == 1)
  {
    v16 = 2;
  }

  else
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = 1;
  }

  *(result + 32) = v16;
  return result;
}

BOOL sub_1AF221E14(float *a1, uint64_t *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = *(a1 + 2);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *a2;
      v7 = (a1[4] + -100.0);
      v8 = *a1;
      v9 = *a1 + 8;
      do
      {
        v10 = 0;
        v11 = (v6 + 72 * v5);
        v12 = *v11;
        v13 = v11[1];
        v14 = v7 - *v11;
        v15 = 1;
        v16 = v9;
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          if (v15 == v3)
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          v20 = (v8 + 72 * v19);
          v21 = v20[1];
          if ((*v20 - v17) * (v13 - v18) - (v21 - v18) * (v12 - v17) >= 0.0 == (*v20 - v17) * (v13 - v18) - (v21 - v18) * (v7 - v17) < 0.0)
          {
            v10 += ((v17 - v12) * -(v13 - v13) + v14 * (v18 - v13) >= 0.0) ^ ((*v20 - v12) * -(v13 - v13) + v14 * (v21 - v13) >= 0.0);
          }

          v16 += 9;
          ++v15;
        }

        while (v15 - v3 != 1);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 = ++v5 >= v2;
      }

      while (v5 != v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t sub_1AF221F40(uint64_t result, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  if (*a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = sub_1AF221AB0((v4 + 40 * v5));
      if (result)
      {
        LODWORD(v2) = v2 - 1;
        if (v5 < v2)
        {
          v6 = v5;
          v7 = v4 + 40 * v5;
          do
          {
            ++v6;
            v8 = *(v7 + 56);
            *v7 = *(v7 + 40);
            *(v7 + 16) = v8;
            *(v7 + 32) = *(v7 + 72);
            v7 += 40;
            v2 = (*a2 - 1);
          }

          while (v6 < v2);
        }

        *a2 = v2;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v2);
  }

  return result;
}

void sub_1AF221FE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(&v98[1] + 4) = *MEMORY[0x1E69E9840];
  v96 = 0;
  v4 = *(a2 + 4) * 0.01;
  v5 = sub_1AF222674(*(a2 + 24), &v96, v4, *(a2 + 20));
  sub_1AF221F40(v5, &v96);
  v6 = v96;
  if (v96)
  {
    v7 = 0;
    do
    {
      v8 = &v5[40 * v7];
      if (*(v8 + 2) > 1u)
      {
        ++v7;
      }

      else
      {
        free(*v8);
        v9 = v96;
        v10 = v96 - 1;
        if (v7 < v10)
        {
          v11 = &v5[40 * v7];
          v12 = v10 - v7;
          do
          {
            v13 = *(v11 + 56);
            *v11 = *(v11 + 40);
            *(v11 + 1) = v13;
            *(v11 + 4) = *(v11 + 9);
            v11 += 40;
            --v12;
          }

          while (v12);
        }

        if (v9 <= 1)
        {
          v14 = sub_1AF0D5194();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEAF40(buf, v98, v14);
          }
        }

        v5 = malloc_type_realloc(v5, 40 * --v96, 0x1020040DB6F1495uLL);
        v6 = v96;
      }
    }

    while (v7 < v6);
  }

  sub_1AF221838(v5, v6);
  if (!v96)
  {
    v15 = 0;
LABEL_36:
    *(a1 + 48) = 0;
    v35 = (a1 + 48);
LABEL_37:
    *(a1 + 40) = 0;
    v39 = (a1 + 40);
    goto LABEL_38;
  }

  v15 = malloc_type_calloc(v96, 0x10uLL, 0x1020040D5A9D86FuLL);
  v16 = v96;
  if (!v96)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = 1;
  do
  {
    v15[v18] = malloc_type_calloc(v16, 0x30uLL, 0x1020040E3B5EC00uLL);
    ++v17;
    v16 = v96;
    v18 += 2;
  }

  while (v17 < v96);
  if (!v96)
  {
    goto LABEL_36;
  }

  v19 = 0;
  v90 = v15;
  do
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v20 = &v5[40 * v19];
    v21 = *v20;
    v22 = *(v20 + 1);
    v95 = *(v20 + 4);
    v93 = v21;
    v94 = v22;
    v23 = v16 - 2;
    if ((v16 - 2) < 0)
    {
LABEL_26:
      v30 = v15[1];
      v31 = (*v15)++;
      v32 = v30 + 48 * v31;
      *(v32 + 8) = v93;
      *(v32 + 24) = v94;
      *(v32 + 40) = v95;
    }

    else
    {
      while (1)
      {
        v24 = &v15[2 * v23];
        v25 = *v24;
        if (v25)
        {
          break;
        }

LABEL_24:
        v29 = v23-- <= 0;
        v15 = v90;
        if (v29)
        {
          goto LABEL_26;
        }
      }

      v26 = 0;
      v27 = *(v24 + 1);
      while (1)
      {
        v28 = *(v27 + 24);
        v91[0] = *(v27 + 8);
        v91[1] = v28;
        v92 = *(v27 + 40);
        if (sub_1AF221E14(v91, &v93))
        {
          break;
        }

        ++v26;
        v27 += 48;
        if (v26 >= v25)
        {
          goto LABEL_24;
        }
      }

      v33 = &v90[2 * (v23 + 1)];
      v34 = *(v33 + 1) + 48 * *v33;
      *v34 = v27;
      v15 = v90;
      *(v34 + 8) = v93;
      *(v34 + 24) = v94;
      *(v34 + 40) = v95;
      ++*v33;
    }

    ++v19;
    v16 = v96;
  }

  while (v19 < v96);
  *(a1 + 48) = 0;
  v35 = (a1 + 48);
  if (!v16)
  {
    goto LABEL_37;
  }

  LODWORD(v36) = 0;
  for (i = 0; i < v16; i += 2)
  {
    v36 = (v36 + LODWORD(v15[2 * i]));
  }

  *v35 = v36;
  if (v36)
  {
    v38 = malloc_type_calloc(v36, 0x20uLL, 0x10300409C64945DuLL);
    v16 = v96;
    *(a1 + 40) = v38;
    v39 = (a1 + 40);
    if (!v16)
    {
      goto LABEL_38;
    }

    v40 = v38;
    v86 = v35;
    v87 = v5;
    v88 = v2;
  }

  else
  {
    v86 = (a1 + 48);
    v87 = v5;
    v88 = v2;
    v40 = 0;
    *(a1 + 40) = 0;
    v39 = (a1 + 40);
  }

  v63 = 0;
  do
  {
    v64 = &v90[2 * v63];
    v89 = v63;
    if (*v64)
    {
      v65 = 0;
      v66 = v63 | 1;
      v67 = &v90[2 * (v63 | 1)];
      do
      {
        if (v66 < v16 && (v68 = *v67, v68))
        {
          v69 = 0;
          v70 = *(v67 + 1);
          do
          {
            v71 = *v70;
            v70 += 6;
            if (v71 == *(v64 + 1) + 48 * v65)
            {
              ++v69;
            }

            --v68;
          }

          while (v68);
        }

        else
        {
          v69 = 0;
        }

        v72 = v69 + 1;
        v40[2] = v72;
        v73 = malloc_type_calloc(v72, 0x28uLL, 0x1020040DB6F1495uLL);
        *v40 = v73;
        v74 = *(v64 + 1) + 48 * v65;
        v75 = *(v74 + 24);
        v76 = *(v74 + 8);
        v73[4] = *(v74 + 40);
        *v73 = v76;
        *(v73 + 1) = v75;
        v16 = v96;
        if (v66 < v96 && *v67)
        {
          v77 = 0;
          v78 = 0;
          do
          {
            v79 = *(v67 + 1);
            if (*(v79 + v77) == *(v64 + 1) + 48 * v65)
            {
              v80 = *v40 + 40 * v69--;
              v81 = v79 + v77;
              v82 = *(v81 + 8);
              v83 = *(v81 + 24);
              *(v80 + 32) = *(v81 + 40);
              *v80 = v82;
              *(v80 + 16) = v83;
            }

            ++v78;
            v77 += 48;
          }

          while (v78 < *v67);
        }

        v40 += 8;
        ++v65;
      }

      while (v65 < *v64);
    }

    v63 = v89 + 2;
  }

  while (v89 + 2 < v16);
  if (v16)
  {
    v84 = 0;
    v85 = 1;
    v5 = v87;
    v2 = v88;
    v35 = v86;
    v15 = v90;
    do
    {
      free(v90[v85]);
      ++v84;
      v85 += 2;
    }

    while (v84 < v96);
  }

  else
  {
    v5 = v87;
    v2 = v88;
    v35 = v86;
    v15 = v90;
  }

LABEL_38:
  free(v15);
  free(v5);
  v41 = *v35;
  if (v41)
  {
    v42 = 0;
    v43 = *v39;
    do
    {
      v44 = v43 + 32 * v42;
      if (*(v44 + 8))
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = sub_1AF221C80(*v44 + v45);
          if (v46)
          {
            v48 = 2;
          }

          else
          {
            v48 = 1;
          }

          if (v48 != v47)
          {
            sub_1AF221CFC(*(*v39 + 32 * v42) + v45);
          }

          ++v46;
          v43 = *v39;
          v44 = *v39 + 32 * v42;
          v45 += 40;
        }

        while (v46 < *(v44 + 8));
        v41 = *v35;
      }

      ++v42;
    }

    while (v42 < v41);
    if (v41)
    {
      v49 = 0;
      v50 = *v39;
      do
      {
        v51 = *(v50 + 32 * v49 + 8);
        if (v51)
        {
          v52 = 0;
          v53 = *(v50 + 32 * v49);
          do
          {
            v54 = v53 + 40 * v52;
            v55 = *(v54 + 8);
            if (v55)
            {
              v56 = *v54 + 40;
              do
              {
                if (*(v56 + 28) == 1 && *(v56 - 24) == *(v56 - 8) && *(v56 - 16) == *v56)
                {
                  *(v56 + 28) = 0;
                  --*(v53 + 40 * v52 + 12);
                }

                v56 += 72;
                --v55;
              }

              while (v55);
            }

            ++v52;
          }

          while (v52 != v51);
        }

        ++v49;
      }

      while (v49 != v41);
      v58 = 0;
      v59 = 0;
      do
      {
        v60 = (*v39 + v58);
        v61 = *(v2 + 12);
        v62 = v60[1];
        v93 = *v60;
        v94 = v62;
        sub_1AF21F5E4(&v93, v61);
        ++v59;
        v58 += 32;
      }

      while (v59 < *v35);
    }
  }
}

void *sub_1AF222674(const CGPath *a1, _DWORD *a2, float a3, float a4)
{
  *a2 = 0;
  CGPathApply(a1, a2, sub_1AF223100);
  v8 = *a2;
  if (!v8)
  {
    return 0;
  }

  v9 = malloc_type_calloc(v8, 0x28uLL, 0x1020040DB6F1495uLL);
  v13 = 0;
  v14 = 0;
  *v11 = a3;
  *&v11[1] = a4;
  v12 = v9;
  CGPathApply(a1, v11, sub_1AF22311C);
  return v9;
}

void sub_1AF222720(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    while (1)
    {
      v16 = 0;
      v3 = *(a1 + 40) + 32 * v2;
      v4 = *(v3 + 16);
      v15[0] = *v3;
      v15[1] = v4;
      v5 = sub_1AF2215CC(v15, &v16);
      v6 = v5;
      if (v16)
      {
        break;
      }

      if (v5)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (++v2 >= *(a1 + 48))
      {
        return;
      }
    }

    v7 = 0;
    v8 = v5 + 2;
    do
    {
      v9 = *(v3 + 24) + 1;
      *(v3 + 24) = v9;
      v10 = malloc_type_realloc(*(v3 + 16), 4 * v9, 0x100004052888210uLL);
      *(v3 + 16) = v10;
      v11 = *(a1 + 24);
      v10[*(v3 + 24) - 1] = v11;
      v11 += 3;
      *(a1 + 24) = v11;
      v12 = malloc_type_realloc(*(a1 + 32), 8 * v11, 0x2004093837F09uLL);
      *(a1 + 32) = v12;
      v13 = *(a1 + 24);
      v12[v13 - 3] = *(v8 - 2);
      *(*(a1 + 32) + 8 * (v13 - 2)) = *(v8 - 1);
      v14 = *v8;
      v8 += 7;
      *(*(a1 + 32) + 8 * (v13 - 1)) = v14;
      ++v7;
    }

    while (v7 < v16);
LABEL_8:
    free(v6);
    goto LABEL_9;
  }
}

void sub_1AF222870(uint64_t a1, int a2, double a3, double a4, long double a5, long double a6)
{
  v10 = *(a1 + 8);
  v11 = *a1;
  if (!v10 || (v12 = v10 - 1, v13 = hypot(v11[9 * v12] - a3, v11[9 * v12 + 1] - a4), v14 = hypot(*v11 - a3, v11[1] - a4), v13 >= 0.01) && v14 >= 0.01)
  {
    v15 = malloc_type_realloc(v11, 72 * (v10 + 1), 0x1000040994742BFuLL);
    v16.f64[0] = a3;
    *a1 = v15;
    v17 = &v15[72 * *(a1 + 8)];
    v17[6] = a3;
    v17[7] = a4;
    *v17 = *(v17 + 3);
    *(v17 + 69) = a2;
    *(v17 + 68) = a2 != 3;
    *(v17 + 16) = 0;
    v18 = *(a1 + 8);
    if (v18)
    {
      v19.f64[0] = a3;
      v19.f64[1] = a4;
      *&v19.f64[0] = vcvt_f32_f64(v19);
      v20 = *(a1 + 16);
      v21 = vcvtq_f64_f32(*v20.f32);
      v22 = vcvt_hight_f64_f32(v20);
      v23 = vdupq_lane_s64(*&a3, 0);
      v24 = vdupq_lane_s64(*&a4, 0);
      *(a1 + 16) = vbslq_s8(vmovl_s16(vtrn2_s16(vrev32_s16(vmovn_s32(vuzp1q_s32(vcgtq_f64(v21, v23), vcgtq_f64(v22, v24)))), vmovn_s32(vuzp1q_s32(vcgtq_f64(v23, v21), vcgtq_f64(v24, v22))))), vzip1q_s32(v19, v19), v20);
      v25 = *a1;
      if (a2)
      {
        v26 = hypot(a5, a6);
        v17[2] = a5 / v26;
        v17[3] = a6 / v26;
        if (a2 == 3)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v29 = &v25[9 * (v18 - 1)];
        v30 = v29[1] - a4;
        v31 = a3 - *v29;
        v32 = hypot(v30, v31);
        v33 = v30 / v32;
        v34 = v31 / v32;
        v29[4] = v33;
        v29[5] = v34;
        v17[2] = v33;
        v17[3] = v34;
      }

      v35 = a4 - v25[1];
      v36 = *v25 - a3;
      v37 = hypot(v35, v36);
      v25[2] = v35 / v37;
      v25[3] = v36 / v37;
      *(v17 + 2) = *(v25 + 1);
      v18 = *(a1 + 8);
    }

    else
    {
      v16.f64[1] = a4;
      v44.val[0] = vcvt_f32_f64(v16);
      v44.val[1] = v44.val[0];
      v28 = (a1 + 16);
      vst2_f32(v28, v44);
    }

LABEL_14:
    if (a2 == 3)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    v39 = v38 + *(a1 + 12);
    *(a1 + 8) = v18 + 1;
    *(a1 + 12) = v39;
    return;
  }

  if (a2 == 1)
  {
    v40 = &v11[9 * v12];
    v41 = hypot(a5, a6);
    v40[4] = a5 / v41;
    v40[5] = a6 / v41;
  }

  else if (a2 == 2)
  {
    v27 = hypot(a5, a6);
    v11[2] = a5 / v27;
    v11[3] = a6 / v27;
  }
}

void sub_1AF222AF0(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v7 = *a1;
  v8 = (*a1 + 72 * (*(a1 + 8) - 1));
  v9 = *v8;
  v10 = v8[1];
  if (a2)
  {
    v12 = *v7;
    v11 = v7[1];
    v13 = 1;
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v14 = v7[1];
    v15 = a3 == *v7;
    v13 = v11 == v14 && v15;
  }

  v16 = v11 - v10;
  v17 = hypot(v12 - v9, v11 - v10);
  if (v17 <= a5)
  {
    if ((v13 & 1) == 0)
    {
      v25 = *MEMORY[0x1E695EFF8];
      v26 = *(MEMORY[0x1E695EFF8] + 8);

      sub_1AF222870(a1, 0, v12, v11, v25, v26);
    }
  }

  else
  {
    v18 = vcvtpd_u64_f64(v17 / a5);
    v19 = v18 - v13;
    if (v19)
    {
      v20 = (v12 - v9) / v18;
      v21 = *MEMORY[0x1E695EFF8];
      v22 = *(MEMORY[0x1E695EFF8] + 8);
      v23 = 1;
      v24 = v16 / v18;
      do
      {
        sub_1AF222870(a1, 0, v9 + v23 * v20, v10 + v23 * v24, v21, v22);
        ++v23;
      }

      while (v23 <= v19);
    }
  }
}

void sub_1AF222C48(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, float a8)
{
  v9 = (*a1 + 72 * (*(a1 + 8) - 1));
  v10 = *v9;
  v11 = v9[1];
  v12 = a2 - *v9;
  v13 = a4 - a2 - v12;
  v14 = a6 - a4 - (a4 - a2);
  v15 = v14 - v13;
  v16 = a5 - a3 - (a3 - v11);
  v17 = a7 - a5 - (a5 - a3);
  v18 = v17 - v16;
  v19 = v17 * v17 + v14 * v14;
  if (v16 * v16 + v13 * v13 > v19)
  {
    v19 = v16 * v16 + v13 * v13;
  }

  v20 = v19 * 9.0;
  v21 = (a8 * a8);
  v22 = v15 * 6.0;
  v23 = (v13 + v15) * 6.0;
  v24 = v15 + (v12 + v13) * 3.0;
  v25 = v18 * 6.0;
  v26 = (v16 + v18) * 6.0;
  v27 = v18 + (a3 - v11 + v16) * 3.0;
  v28 = (a6 + v10 - a2 - a4) * 3.0;
  v29 = v11 - a3;
  v30 = (a7 + v11 - a3 - a5) * 3.0;
  v31 = v20 * 0.0625;
  v46 = a6 - a4;
  if (v20 * 0.0625 <= v21)
  {
    v37 = v28;
    v38 = v27;
    v39 = 0;
    v52 = v25;
    v53 = v15 * 6.0;
    v50 = v25;
    v51 = v15 * 6.0;
  }

  else
  {
    v32 = 1;
    v33 = v25;
    v34 = v15 * 6.0;
    do
    {
      v22 = v22 * 0.125;
      v23 = v23 * 0.25 - v22;
      v24 = v24 * 0.5 - v23 * 0.5;
      v25 = v25 * 0.125;
      v26 = v26 * 0.25 - v25;
      v27 = v27 * 0.5 - v26 * 0.5;
      v34 = v34 * 0.25;
      v28 = v28 * 0.5 - v34 * 0.5;
      v33 = v33 * 0.25;
      v30 = v30 * 0.5 - v33 * 0.5;
      v35 = 2 * v32;
      v31 = v31 * 0.0625;
      if (v31 <= v21)
      {
        break;
      }

      v36 = v32 > 0x8000;
      v32 *= 2;
    }

    while (!v36);
    v50 = v33;
    v51 = v34;
    v37 = v28;
    v38 = v27;
    v52 = v25;
    v53 = v22;
    v39 = v35 - 1;
  }

  v54 = v12 * 3.0;
  v55 = v29 * 3.0;
  sub_1AF222870(a1, 1, v10, v11, v29 * 3.0, v12 * 3.0);
  v41 = v52;
  v40 = v53;
  v42 = v50;
  for (i = v51; v39; --v39)
  {
    v10 = v24 + v10;
    v44 = v55 - v30;
    v30 = v42 + v30;
    v24 = v23 + v24;
    v23 = v40 + v23;
    v11 = v38 + v11;
    v45 = v37 + v54;
    v37 = i + v37;
    v38 = v38 + v26;
    v26 = v41 + v26;
    v54 = v45;
    v55 = v44;
    sub_1AF222870(a1, 3, v10, v11, v44, v45);
    v42 = v50;
    i = v51;
    v41 = v52;
    v40 = v53;
  }

  sub_1AF222870(a1, 2, a6, a7, (a5 - a7) * 3.0, v46 * 3.0);
}

void sub_1AF222EE8(uint64_t a1, double a2, double a3, double a4, double a5, float a6)
{
  v7 = (*a1 + 72 * (*(a1 + 8) - 1));
  v9 = *v7;
  v8 = v7[1];
  v10 = v8 - a3;
  v11 = ((a5 + v8 - a3 - a3) * (a5 + v8 - a3 - a3) + (a4 + *v7 - a2 - a2) * (a4 + *v7 - a2 - a2)) * 27.0 * 0.015625;
  v12 = (a6 * a6);
  v13 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
  v14 = a4 - *v7;
  v15 = a5 + v8 + a3 * -2.0;
  v16 = v15 + v15;
  v17 = a5 - v8;
  if (v11 <= v12)
  {
    v23 = 0;
    v32 = v15 + v15;
    v33 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
    v20 = v33;
    v19 = v15 + v15;
  }

  else
  {
    v18 = 1;
    v19 = v15 + v15;
    v20 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
    do
    {
      v13 = v13 * 0.25;
      v14 = v14 * 0.5 - v13 * 0.5;
      v16 = v16 * 0.25;
      v17 = v17 * 0.5 - v16 * 0.5;
      v20 = v20 * 0.5;
      v19 = v19 * 0.5;
      v11 = v11 * 0.03125;
      v21 = 2 * v18;
      if (v11 <= v12)
      {
        break;
      }

      v22 = v18 > 0x8000;
      v18 *= 2;
    }

    while (!v22);
    v32 = v16;
    v33 = v13;
    v23 = v21 - 1;
  }

  v24 = v10 + v10;
  v25 = a2 - v9 + a2 - v9;
  sub_1AF222870(a1, 1, v9, v8, v10 + v10, v25);
  v27 = v32;
  for (i = v33; v23; --v23)
  {
    v9 = v14 + v9;
    v24 = v24 - v19;
    v8 = v17 + v8;
    v25 = v20 + v25;
    v38 = i + v14;
    v39 = v27 + v17;
    v28 = v20;
    v29 = v19;
    v30 = i;
    v31 = v27;
    sub_1AF222870(a1, 3, v9, v8, v24, v25);
    v27 = v31;
    i = v30;
    v19 = v29;
    v20 = v28;
    v14 = v38;
    v17 = v39;
  }

  sub_1AF222870(a1, 2, a4, a5, a3 - a5 + a3 - a5, a4 - a2 + a4 - a2);
}

_DWORD *sub_1AF223100(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    ++*result;
  }

  return result;
}

void sub_1AF22311C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_1AF222AF0(*(a1 + 16), 0, **(a2 + 8), *(*(a2 + 8) + 8), *(a1 + 4));
      }
    }

    else
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 24);
      *(a1 + 24) = v5 + 1;
      v6 = v4 + 40 * v5;
      *(a1 + 16) = v6;
      sub_1AF222870(v6, 0, **(a2 + 8), *(*(a2 + 8) + 8), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        sub_1AF222EE8(*(a1 + 16), **(a2 + 8), *(*(a2 + 8) + 8), *(*(a2 + 8) + 16), *(*(a2 + 8) + 24), *a1);
        break;
      case 3:
        v3 = *(a2 + 8);
        sub_1AF222C48(*(a1 + 16), *v3, v3[1], v3[2], v3[3], v3[4], v3[5], *a1);
        break;
      case 4:
        sub_1AF222AF0(*(a1 + 16), 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), *(a1 + 4));
        break;
    }
  }
}

void sub_1AF22320C(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    free(v1);
  }
}

void sub_1AF223220(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
    }

    sub_1AF21DB48(a1);
  }
}

CFStringRef sub_1AF22326C(uint64_t a1)
{
  v2 = CTFontCopyGraphicsFont(*(a1 + 56), 0);
  v3 = CGFontCopyFullName(v2);
  v4 = CGFontCopyGlyphNameForGlyph(v2, *(a1 + 64));
  v5 = CFGetAllocator(a1);
  v6 = sub_1AF3753A8(a1);
  v7 = CFStringCreateWithFormat(v5, 0, @"<%s %p | '%@' in '%@'>", v6, a1, v4, v3);
  CFRelease(v4);
  CFRelease(v3);
  CGFontRelease(v2);
  return v7;
}

uint64_t sub_1AF22331C()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6586E8 = result;
  return result;
}

uint64_t sub_1AF223344(const __CTFont *a1, CGGlyph a2, uint64_t a3)
{
  if (qword_1EB6586F0 != -1)
  {
    sub_1AFDEAF90();
  }

  v6 = sub_1AF0D160C(qword_1EB6586E8, 0x38uLL);
  PathForGlyph = CTFontCreatePathForGlyph(a1, a2, 0);
  *(a3 + 24) = PathForGlyph;
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v10[2] = *(a3 + 32);
  v11 = *(a3 + 48);
  sub_1AF21DADC(v6, v10);
  CGPathRelease(PathForGlyph);
  *(v6 + 56) = CFRetain(a1);
  *(v6 + 64) = a2;
  return v6;
}

uint64_t sub_1AF223408(uint64_t a1, float a2)
{
  v3 = (1.0 - a2) * 6.28318531;
  v4 = __sincosf_stret(v3);
  v5 = 0;
  v6.i32[3] = 0;
  v6.i64[0] = LODWORD(v4.__cosval);
  v7.i64[0] = LODWORD(v4.__sinval);
  v7.i64[1] = LODWORD(v4.__cosval);
  v18 = xmmword_1AFE20150;
  v19 = xmmword_1AFE20160;
  v20 = xmmword_1AFE42B90;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  do
  {
    v6.f32[2] = -v4.__sinval;
    *(&v13 + v5) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*(&v18 + v5))), xmmword_1AFE20160, *(&v18 + v5), 1), v7, *(&v18 + v5), 2);
    v5 += 16;
  }

  while (v5 != 48);
  v8 = 0;
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  do
  {
    *(&v18 + v8 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE42BA0, COERCE_FLOAT(v17[v8])), xmmword_1AFE42BB0, *&v17[v8], 1), xmmword_1AFE20180, v17[v8], 2);
    ++v8;
  }

  while (v8 != 3);
  v9 = v18;
  v10 = v19;
  v11 = v20;
  HIDWORD(v9) = 0;
  HIDWORD(v10) = 0;
  HIDWORD(v11) = 0;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = xmmword_1AFE201A0;
  return sub_1AF27C174(a1, &v13);
}

void sub_1AF223568(float *a1, int a2, float a3, float a4, float a5, double a6, double a7, float a8, float a9)
{
  v11 = a5 < 0.0;
  v12 = -1.0;
  if (!v11)
  {
    v12 = 1.0;
  }

  if (a2 == 3)
  {
    v19 = (1.0 - a8 + ((a4 * a8) / a3)) * 0.5;
    v20 = v19;
    v21 = __sincos_stret(a9 * 6.28318531);
    v22 = v20 * v21.__cosval + 0.5;
    *a1 = v22;
    v17 = v20 * v21.__sinval + 0.5;
    v18 = 1;
  }

  else
  {
    if (a2 == 1)
    {
      *a1 = 0.0;
      a1[1] = v12;
      v17 = 0.0;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v13 = (a4 * a8) + (1.0 - a8) * a3;
      v14 = (v12 * v13);
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v15.__sinval * v14;
      *a1 = v16;
      a1[1] = a5;
      v17 = v15.__cosval * v13;
    }

    v18 = 2;
  }

  a1[v18] = v17;
}

void sub_1AF223690(float *a1, int a2, float a3, float a4, float a5, double a6, double a7, float a8, float a9)
{
  v11 = 1.0 - a8;
  if (a2 == 3)
  {
    *a1 = a9;
    v22 = 1;
  }

  else
  {
    v12 = (a5 + -0.5) * a8 + (a4 + -0.5) * v11;
    if (a2 == 1)
    {
      v18 = __sincos_stret(v12 * 3.14159265);
      v19 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v20 = v19.__sinval * v18.__cosval;
      sinval = v18.__sinval;
      *a1 = v20;
      a1[1] = sinval;
      v11 = v19.__cosval * v18.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v13 = a3;
      v14 = __sincos_stret(v12 * 3.14159265);
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v15.__sinval * (v14.__cosval * v13);
      v17 = v14.__sinval * v13;
      *a1 = v16;
      a1[1] = v17;
      v11 = v15.__cosval * (v14.__cosval * v13);
    }

    v22 = 2;
  }

  v23 = v11;
  a1[v22] = v23;
}

void sub_1AF2237B8(float *a1, int a2, float a3, float a4, double a5, double a6, double a7, float a8, float a9)
{
  v12 = a4 <= 0.0;
  v13 = 3.1416;
  if (v12)
  {
    v13 = 0.0;
  }

  if (a2 == 3)
  {
    if (a4 <= 0.0)
    {
      *a1 = 1.0 - a9;
      a1[1] = a8;
    }

    else
    {
      *a1 = a9;
      a1[1] = 1.0 - a8;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v19 = __sincos_stret(v13 + a9 * 6.28318531);
      sinval = v19.__sinval;
      *a1 = sinval;
      a1[1] = 0.0;
      cosval = v19.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v14 = a3;
      v15 = __sincos_stret(v13 + a9 * 6.28318531);
      v16 = v15.__sinval * v14;
      v17 = (a8 + -0.5) * a4;
      *a1 = v16;
      a1[1] = v17;
      cosval = v15.__cosval * v14;
    }

    a1[2] = cosval;
  }
}

void sub_1AF2238B4(float *a1, int a2, float a3, float a4, float a5, double a6, double a7, float a8, float a9)
{
  if (a2 == 3)
  {
    *a1 = a9;
    a1[1] = 1.0 - a8;
  }

  else
  {
    if (a2 == 1)
    {
      v19 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      sinval = v19.__sinval;
      v21 = (a4 - a3) / a5;
      cosval = v19.__cosval;
      v23 = sqrtf(((v21 * v21) + (sinval * sinval)) + (cosval * cosval));
      *a1 = sinval / v23;
      a1[1] = v21 / v23;
      v18 = cosval / v23;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v13 = a8;
      v14 = (a3 * a8) + (1.0 - a8) * a4;
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v14 * v15.__sinval;
      v17 = (v13 + -0.5) * a5;
      *a1 = v16;
      a1[1] = v17;
      v18 = v14 * v15.__cosval;
    }

    a1[2] = v18;
  }
}

void sub_1AF2239C8(float *a1, int a2, float a3, float a4, double a5, double a6, double a7, float a8, float a9)
{
  if (a2 == 3)
  {
    *a1 = a9;
    v23 = 1.0 - a8;
    v24 = 1;
  }

  else
  {
    if (a2 == 1)
    {
      v19 = __sincos_stret((a8 + -0.5) * 6.28318531);
      v20 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v21 = v19.__cosval * v20.__sinval;
      sinval = v19.__sinval;
      *a1 = v21;
      a1[1] = sinval;
      v18 = v19.__cosval * v20.__cosval;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v11 = a3;
      v12 = a4;
      v13 = __sincos_stret((a8 + -0.5) * 6.28318531);
      v14 = v11 + v12 * v13.__cosval;
      v15 = __sincos_stret(a9 * 6.28318531 + 3.14159265);
      v16 = v15.__sinval * v14;
      v17 = v13.__sinval * v12;
      *a1 = v16;
      a1[1] = v17;
      v18 = v15.__cosval * v14;
    }

    v23 = v18;
    v24 = 2;
  }

  a1[v24] = v23;
}

void sub_1AF223AE0(float *a1, int a2, int a3, float a4, float a5, double a6, double a7, double a8, float a9, float a10)
{
  if (a2 == 3)
  {
    *a1 = a10;
    v23 = (a4 / a5);
    v24 = 1.0 - v23;
    v25 = 1.0 - a9;
    v26 = ((a4 / a5) * a9) + (1.0 - v23) * v25;
    v27 = 1;
    v28 = v25 * v23;
    v29 = v25 + a9 * v24;
    if (!a3)
    {
      v28 = v29;
    }

    if (a3 == 1)
    {
      v28 = v26;
    }

    else
    {
      v27 = 1;
    }

    goto LABEL_24;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    if (a3 == 2)
    {
      v38 = a4;
      v39 = __sincos_stret(a9 * 1.57079633);
      v40 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
      v41 = v39.__cosval * v38 * v40.__sinval;
      v42 = a5 * 0.5 + v38 * v39.__sinval - v38;
      *a1 = v41;
      a1[1] = v42;
      v28 = v39.__cosval * v38 * v40.__cosval;
    }

    else
    {
      if (a3 == 1)
      {
        v17 = a4;
        v36 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
        cosval = v36.__cosval;
        v20 = v36.__sinval * v17;
        v21 = (a9 + -0.5) * (a5 + (a4 * -2.0));
      }

      else
      {
        if (a3)
        {
          return;
        }

        v15 = a4;
        v16 = __sincos_stret((a9 + -1.0) * 1.57079633);
        v17 = v16.__cosval * v15;
        v19 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
        cosval = v19.__cosval;
        v20 = v19.__sinval * (v16.__cosval * v15);
        v21 = a5 * -0.5 + v15 * v16.__sinval + v15;
      }

      v37 = v21;
      *a1 = v20;
      a1[1] = v37;
      v28 = cosval * v17;
    }

    goto LABEL_23;
  }

  if (a3 == 2)
  {
    v22 = a9;
LABEL_19:
    v32 = __sincos_stret(v22 * 1.57079633);
    v33 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
    v34 = v32.__cosval * v33.__sinval;
    sinval = v32.__sinval;
    *a1 = v34;
    a1[1] = sinval;
    v28 = v32.__cosval * v33.__cosval;
    goto LABEL_23;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    v22 = a9 + -1.0;
    goto LABEL_19;
  }

  v30 = __sincos_stret(a10 * 6.28318531 + 3.14159265);
  v28 = v30.__cosval;
  v31 = v30.__sinval;
  *a1 = v31;
  a1[1] = 0.0;
LABEL_23:
  v27 = 2;
LABEL_24:
  v43 = v28;
  a1[v27] = v43;
}

void sub_1AF223D70(uint64_t a1, int a2, float a3, float32x4_t a4, float a5, float a6, float a7, float a8, float a9)
{
  _S22 = a3;
  v12 = vcvt_f32_s32((*&vceqz_s32(vand_s8(vdup_n_s32(a7), 0x200000001)) | 0x100000001));
  if ((a7 & 4) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = v13;
  if (a9 != 0.0)
  {
    if (a8 != 0.0)
    {
      v29 = _S22 / 1.41421356;
      v30 = _S22 / 1.73205081;
      v31 = v29 * v12.f32[0];
      v32 = v29 * v14;
      v33 = vmul_n_f32(v12, v30);
      v34 = vmuls_lane_f32(v29, v12, 1);
      v35 = 1.0 - a8;
      v36 = 1.0 - a9;
      v37.i32[0] = 0;
      v37.f32[1] = v34;
      v38 = vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v33, a8)), COERCE_UNSIGNED_INT64(v31), v35)), a9)), vcvtq_f64_f32(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(vmul_n_f32(v37, a8)), 0, v35))), v36);
      *v38.f32 = vcvt_f32_f64(v38);
      v39 = (v32 * a8) + v35 * (v14 * _S22);
      v40 = ((v30 * v14) * a8) + v35 * v32;
      v41 = (v40 * a9) + v36 * v39;
      v38.f32[2] = v41;
      v42 = vmulq_f32(v38, v38);
      *&v43 = v42.f32[2] + vaddv_f32(*v42.f32);
      *v42.f32 = vrsqrte_f32(v43);
      *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)));
      _Q0 = vmulq_n_f32(v38, vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).f32[0]);
      if (!a2)
      {
        a4.f32[1] = a5;
        *a4.f32 = vmla_n_f32(*a4.f32, *_Q0.f32, _S22);
        __asm { FMLA            S21, S22, V0.S[2] }

        a4.i32[2] = _S21;
        _Q0 = a4;
      }

      *a1 = _Q0.i64[0];
      v50 = _Q0.f32[2];
      goto LABEL_20;
    }

    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v20 = a4.f32[0];
      v21 = (_S22 * v12.f32[0]);
      v55 = a6;
      v56 = _S22;
      v22 = __sincos_stret(a9 * 0.785398163);
      cosval = v22.__cosval;
      v23 = v20 + v21 * v22.__sinval;
      *a1 = v23;
      *(a1 + 4) = a5;
      goto LABEL_12;
    }

    v51 = v12.f32[0];
    v52 = __sincos_stret(a9 * 0.785398163);
    v26 = v52.__cosval;
    v53 = v52.__sinval * v51;
    *a1 = v53;
    *(a1 + 4) = 0;
LABEL_18:
    v24 = v26 * v14;
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    *a1 = 0;
    v25 = v12.f32[1];
    v27 = __sincos_stret(a8 * 0.785398163);
    v26 = v27.__cosval;
    v28 = v27.__sinval * v25;
    *(a1 + 4) = v28;
    goto LABEL_18;
  }

  if (a2)
  {
    return;
  }

  *a1 = a4.i32[0];
  v15 = a5;
  v16 = vmuls_lane_f32(_S22, v12, 1);
  v55 = a6;
  v56 = _S22;
  v18 = __sincos_stret(a8 * 0.785398163);
  cosval = v18.__cosval;
  v19 = v15 + v16 * v18.__sinval;
  *(a1 + 4) = v19;
LABEL_12:
  v24 = v55 + (v14 * v56) * cosval;
LABEL_19:
  v50 = v24;
LABEL_20:
  *(a1 + 8) = v50;
}

void sub_1AF224030(float *a1, int a2, int a3, int a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, double a12)
{
  *&a12 = a8;
  v16 = a6;
  if (a9 >= 4.0)
  {
    v27 = xmmword_1AFE20150;
    if (a9 == 4.0)
    {
      v91 = xmmword_1AFE208F0;
      v31 = xmmword_1AFE208E0;
      v29 = xmmword_1AFE20930;
      v92 = xmmword_1AFE20150;
      v30 = xmmword_1AFE20920;
    }

    else
    {
      v91 = xmmword_1AFE20930;
      v31 = xmmword_1AFE20920;
      v29 = xmmword_1AFE208F0;
      v92 = xmmword_1AFE20150;
      v30 = xmmword_1AFE208E0;
    }
  }

  else
  {
    v20 = a9;
    v21 = a9 * 1.57079633;
    v82 = a5;
    v87 = a12;
    v78 = a7;
    v22 = __sincosf_stret(v21);
    v23.i32[3] = 0;
    v23.i64[0] = LODWORD(v22.__cosval);
    v23.f32[2] = -v22.__sinval;
    v24.i64[0] = LODWORD(v22.__sinval);
    v24.i64[1] = LODWORD(v22.__cosval);
    v91 = v24;
    v92 = v23;
    v25 = v20 * -1.57079633;
    v26 = __sincosf_stret(v25);
    a7 = v78;
    v16 = a6;
    v27.i32[3] = 0;
    v27.i64[0] = LODWORD(v26.__cosval);
    v27.f32[2] = -v26.__sinval;
    a5 = v82;
    a12 = v87;
    v28.i64[0] = LODWORD(v26.__sinval);
    v28.i64[1] = LODWORD(v26.__cosval);
    v29 = v28;
    v30 = xmmword_1AFE20160;
    v31 = xmmword_1AFE20160;
  }

  v33 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v29, a7), v30, v16), v27, a5);
  v32 = fabsf(v33.f32[0]);
  *v33.f32 = vabs_f32(*&vextq_s8(v33, v33, 4uLL));
  if (a2 == 3)
  {
    v40 = *&a12 / v32;
    if (a4)
    {
      if (a4 != 2)
      {
        if (a4 != 1)
        {
          goto LABEL_44;
        }

        v41 = v40 * a11;
LABEL_43:
        *a1 = v41;
LABEL_44:
        v52 = 1.0 - a10;
        v53 = *&a12 / v33.f32[0];
        if (a3)
        {
          if (a3 != 1)
          {
            v55 = v52 * v53;
            goto LABEL_50;
          }

          v54 = v52 + (1.0 - v53) * (1.0 - v52);
        }

        else
        {
          v54 = (1.0 - v53) * v52 + (1.0 - v52) * v53;
        }

        v55 = v54;
LABEL_50:
        a1[1] = v55;
        return;
      }

      v46 = a11;
      v47 = 1.0 - a11;
      v48 = 1.0 - v40;
    }

    else
    {
      v47 = 1.0 - a11;
      v48 = v40;
      v46 = (1.0 - v48) * a11;
    }

    v41 = v46 + v47 * v48;
    goto LABEL_43;
  }

  v34 = v32 * 0.5;
  v35 = vmul_f32(*v33.f32, 0x3F0000003F000000);
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v36 = v33.f32[0] + (*&a12 * -2.0);
    if (a4 != 2)
    {
      if (a4 != 1)
      {
        if (!a4)
        {
          v37 = (a11 + -0.5) * (v32 + (*&a12 * -2.0));
          *a1 = v37;
          if (a3 != 2)
          {
            if (a3 != 1)
            {
              if (!a3)
              {
                v38 = (a10 + -0.5) * v36;
                a1[1] = v38;
                a1[2] = v35.f32[1];
              }

              goto LABEL_76;
            }

            v71 = (*&a12 - v35.f32[0]);
            v72 = *&a12;
            v85 = v31;
            v89 = *&a12;
            v81 = v35.f32[1];
            v73 = __sincos_stret(a10 * 0.785398163 + -0.785398163);
            v31 = v85;
            v70 = v71 + v72 * v73.__sinval;
            v68 = (v81 - v89) + v72 * v73.__cosval;
            goto LABEL_71;
          }

          v76 = vsub_f32(v35, vdup_lane_s32(*&a12, 0));
          v90 = *&a12;
          v86 = v31;
          v77 = __sincos_stret(a10 * 0.785398163);
          v31 = v86;
          v39 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(v76), v77, v90));
LABEL_79:
          *(a1 + 1) = v39;
          goto LABEL_76;
        }

        goto LABEL_76;
      }

      v83 = v31;
      if (a3 != 2)
      {
        if (a3 != 1)
        {
          if (a3)
          {
            goto LABEL_76;
          }

          v49 = (*&a12 - v34);
          v50 = *&a12;
          v51 = a11 * 0.785398163 + -0.785398163;
          goto LABEL_55;
        }

        v33.f32[0] = *&a12 - v34;
        v59 = *&a12 - v35.f32[0];
        v60 = v35.f32[1] - *&a12;
        v61 = 1.0 - a10;
        v62 = 1.0 - a11;
        v63 = 4.0;
        v64 = a1;
        v65 = 0;
        goto LABEL_62;
      }

      v33.f32[0] = *&a12 - v34;
      v59 = v35.f32[0] - *&a12;
      v60 = v35.f32[1] - *&a12;
      v62 = 1.0 - a11;
      v63 = 6.0;
      v64 = a1;
      v65 = 0;
LABEL_67:
      v67 = *&a12;
      v61 = a10;
      goto LABEL_75;
    }

    v83 = v31;
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        if (a3)
        {
          goto LABEL_76;
        }

        v49 = (v34 - *&a12);
        v50 = *&a12;
        v51 = a11 * 0.785398163;
LABEL_55:
        v88 = *&a12;
        v80 = v35.f32[1];
        v56 = __sincos_stret(v51);
        v57 = v49 + v50 * v56.__sinval;
        v58 = (a10 + -0.5) * v36;
        *a1 = v57;
        a1[1] = v58;
        v31 = v83;
        cosval = (v80 - v88) + v50 * v56.__cosval;
        goto LABEL_56;
      }

      v33.f32[0] = v34 - *&a12;
      v59 = *&a12 - v35.f32[0];
      v60 = v35.f32[1] - *&a12;
      v61 = 1.0 - a10;
      v63 = 5.0;
      v64 = a1;
      v65 = 0;
      goto LABEL_69;
    }

    v33.f32[0] = v34 - *&a12;
    v59 = v35.f32[0] - *&a12;
    v60 = v35.f32[1] - *&a12;
    v63 = 7.0;
    v64 = a1;
    v65 = 0;
LABEL_73:
    v67 = *&a12;
    v61 = a10;
    goto LABEL_74;
  }

  if (a4 == 2)
  {
    v83 = v31;
    if (a3 == 2)
    {
      v33.f32[0] = v34 - *&a12;
      v59 = v35.f32[0] - *&a12;
      v60 = v35.f32[1] - *&a12;
      v63 = 7.0;
      v64 = a1;
      v65 = 1;
      goto LABEL_73;
    }

    if (a3 == 1)
    {
      v33.f32[0] = v34 - *&a12;
      v59 = *&a12 - v35.f32[0];
      v60 = v35.f32[1] - *&a12;
      v61 = 1.0 - a10;
      v63 = 5.0;
      v64 = a1;
      v65 = 1;
LABEL_69:
      v67 = *&a12;
LABEL_74:
      v62 = a11;
      goto LABEL_75;
    }

    if (a3)
    {
      goto LABEL_76;
    }

    v42 = a11 * 0.785398163;
LABEL_35:
    v43 = __sincos_stret(v42);
    v31 = v83;
    sinval = v43.__sinval;
    *a1 = sinval;
    a1[1] = 0.0;
    cosval = v43.__cosval;
LABEL_56:
    a1[2] = cosval;
    goto LABEL_76;
  }

  if (a4 == 1)
  {
    v83 = v31;
    if (a3 == 2)
    {
      v33.f32[0] = *&a12 - v34;
      v59 = v35.f32[0] - *&a12;
      v60 = v35.f32[1] - *&a12;
      v62 = 1.0 - a11;
      v63 = 6.0;
      v64 = a1;
      v65 = 1;
      goto LABEL_67;
    }

    if (a3 == 1)
    {
      v33.f32[0] = *&a12 - v34;
      v59 = *&a12 - v35.f32[0];
      v60 = v35.f32[1] - *&a12;
      v61 = 1.0 - a10;
      v62 = 1.0 - a11;
      v63 = 4.0;
      v64 = a1;
      v65 = 1;
LABEL_62:
      v67 = *&a12;
LABEL_75:
      sub_1AF223D70(v64, v65, v67, v33, v59, v60, v63, v61, v62);
      v31 = v83;
      goto LABEL_76;
    }

    if (a3)
    {
      goto LABEL_76;
    }

    v42 = a11 * 0.785398163 + -0.785398163;
    goto LABEL_35;
  }

  if (a4)
  {
    goto LABEL_76;
  }

  *a1 = 0.0;
  switch(a3)
  {
    case 2:
      v66 = a10 * 0.785398163;
      goto LABEL_65;
    case 1:
      v66 = a10 * 0.785398163 + -0.785398163;
LABEL_65:
      v84 = v31;
      v69 = __sincos_stret(v66);
      v68 = v69.__cosval;
      v31 = v84;
      v70 = v69.__sinval;
LABEL_71:
      v74 = v68;
      a1[1] = v70;
      a1[2] = v74;
      break;
    case 0:
      v39 = 0x3F80000000000000;
      goto LABEL_79;
  }

LABEL_76:
  v75 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v91, a1[2]), v31, a1[1]), v92, *a1);
  *a1 = v75.i64[0];
  a1[2] = v75.f32[2];
}

void sub_1AF2246DC(float *a1, int a2, float a3, float a4, float a5, float a6, double a7, float a8, float a9)
{
  v13 = a6;
  v14 = a6 * 1.57079633;
  v15 = __sincosf_stret(v14);
  v16 = v13 * -1.57079633;
  v17 = __sincosf_stret(v16);
  v18.i32[3] = 0;
  v18.i64[0] = LODWORD(v17.__cosval);
  v18.f32[2] = -v17.__sinval;
  v19.i64[0] = LODWORD(v17.__sinval);
  v19.i64[1] = LODWORD(v17.__cosval);
  v20 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, a5), xmmword_1AFE20160, a4), v18, a3);
  v21 = fabsf(v20.f32[1]);
  v22 = fabsf(v20.f32[2]);
  if (a2)
  {
    if (a2 == 1)
    {
      v20.f32[0] = v22 * 0.5;
      v23 = sqrtf((v20.f32[1] * v20.f32[1]) + (v20.f32[0] * v20.f32[0]));
      v24 = v20.f32[0] / v23;
      v25 = v21 / v23;
      v26 = 0.0;
    }

    else
    {
      if (a2 == 3)
      {
        *a1 = a9;
        a1[1] = 1.0 - a8;
        return;
      }

      v26 = *a1;
      v24 = a1[1];
      v25 = a1[2];
    }
  }

  else
  {
    v27 = 1.0 - a8;
    v26 = (a9 + -0.5) * (v27 * fabsf(v20.f32[0]));
    v24 = v21 * a8;
    v25 = v27 * (v22 * 0.5);
  }

  v28.i32[3] = 0;
  v28.i64[0] = LODWORD(v15.__cosval);
  v28.f32[2] = -v15.__sinval;
  v29.i64[0] = LODWORD(v15.__sinval);
  v29.i64[1] = LODWORD(v15.__cosval);
  v30 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v29, v25), xmmword_1AFE20160, v24), v28, v26);
  *a1 = v30.i64[0];
  a1[2] = v30.f32[2];
}

uint64_t sub_1AF224870(void (*a1)(UInt8 *, uint64_t, uint64_t, uint64_t, float, float, float, float, float, float, float), unsigned int a2, int *a3, int a4, int a5, int a6, int *a7, int a8, float a9, float a10, float a11, float a12, float a13, float a14)
{
  v132 = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a2))
  {
    v23 = sub_1AF0D5194();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  values[0] = sub_1AF22512C(a1, 0, a3, a4, a7, a8, a9, a10, a11, a12, a13, a14);
  values[1] = sub_1AF22512C(a1, 1, a3, a4, a7, a8, a9, a10, a11, a12, a13, a14);
  values[2] = sub_1AF22512C(a1, 3, a3, a4, a7, a8, a9, a10, a11, a12, a13, a14);
  if (!sub_1AF1A7028(a2))
  {
    v31 = sub_1AF0D5194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v40 = 0;
  v41 = (a4 - 1);
  if (a4 < 1)
  {
    v44 = a5;
  }

  else
  {
    v42 = a3;
    v43 = a4;
    v44 = a5;
    do
    {
      v45 = *v42++;
      v40 += v45 + 1;
      --v43;
    }

    while (v43);
  }

  v46 = Mutable;
  if (a8 < 1)
  {
    v52 = 0;
    goto LABEL_67;
  }

  v47 = 0;
  v48 = a8;
  v49 = a7;
  v104 = a8;
  do
  {
    v50 = *v49++;
    v47 += v50 + 1;
    --v48;
  }

  while (v48);
  v122 = (a4 - 1);
  v111 = v40;
  if (v47 * v40 < 0x10000)
  {
    v51 = 0;
    v52 = 0;
    v107 = 0;
    while (1)
    {
      v53 = a7[v51];
      if (v53 < 1)
      {
        goto LABEL_64;
      }

      v54 = 0;
      v105 = v51;
      do
      {
        v55 = v54 + 1;
        if (a4 < 1)
        {
          goto LABEL_63;
        }

        v56 = 0;
        v57 = 0;
        v58 = v51 == 0;
        v109 = v54 + 1;
        v114 = (v107 + v55) * v40;
        v116 = (v107 + v54) * v40;
        if (v54)
        {
          v58 = 0;
        }

        v118 = v58;
        do
        {
          v59 = a3[v56];
          v120 = v57;
          if (v59 >= 1)
          {
            v60 = 0;
            v61 = 0;
            v62 = v57 + v116;
            v63 = v57 + v114;
            do
            {
              *cf = v61 + v62;
              v64 = v61 + 1;
              *&cf[2] = v61 + 1 + v63;
              *&cf[4] = v61 + 1 + v62;
              *&cf[6] = v61 + v62;
              *&cf[8] = v61 + v63;
              *&cf[10] = *&cf[2];
              v65 = (v61 + 1);
              if (v56 || v61 || !a5)
              {
                if (v56 == v41 && a6 && v59 == v65)
                {
                  switch(a2)
                  {
                    case 3u:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + 1 + v63;
                      goto LABEL_50;
                    case 2u:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + v63;
                      *&bytes[4] = v61 + v63;
                      *&bytes[6] = v61 + 1 + v63;
LABEL_48:
                      v69 = bytes;
                      v70 = v46;
                      v71 = 8;
LABEL_51:
                      CFDataAppendBytes(v70, v69, v71);
                      Mutable = v46;
                      v52 += 2;
                      break;
                    case 0u:
                      v66 = &cf[6];
                      goto LABEL_39;
                  }
                }

                else
                {
                  switch(a2)
                  {
                    case 3u:
LABEL_45:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + 1 + v62;
LABEL_50:
                      v69 = bytes;
                      v70 = v46;
                      v71 = 4;
                      goto LABEL_51;
                    case 2u:
                      *bytes = v61 + v62;
                      *&bytes[2] = v61 + v63;
                      *&bytes[4] = v61 + v63;
                      *&bytes[6] = v61 + 1 + v63;
                      v72 = Mutable;
                      CFDataAppendBytes(Mutable, bytes, 8);
                      if (v118)
                      {
                        *bytes = *cf;
                        *&bytes[2] = *&cf[4];
                        CFDataAppendBytes(v72, bytes, 4);
                        v52 += 3;
                      }

                      else
                      {
                        v52 += 2;
                      }

                      v41 = (a4 - 1);
                      if (v56 != v122 || a3[v56] - 1 != v60)
                      {
                        Mutable = v46;
                        break;
                      }

                      *bytes = *&cf[2];
                      v66 = bytes;
                      v67 = v46;
                      v68 = 4;
                      goto LABEL_40;
                    case 0u:
                      v69 = cf;
                      v70 = v46;
                      v71 = 12;
                      goto LABEL_51;
                  }
                }
              }

              else
              {
                switch(a2)
                {
                  case 3u:
                    goto LABEL_45;
                  case 2u:
                    *bytes = v61 + v62;
                    *&bytes[2] = v61 + 1 + v63;
                    *&bytes[4] = v61 + v62;
                    *&bytes[6] = v61 + 1 + v62;
                    goto LABEL_48;
                  case 0u:
                    v66 = cf;
LABEL_39:
                    v67 = v46;
                    v68 = 6;
LABEL_40:
                    CFDataAppendBytes(v67, v66, v68);
                    Mutable = v46;
                    ++v52;
                    break;
                }
              }

              v59 = a3[v56];
              v60 = v65;
              v61 = v64;
            }

            while (v59 > v64);
          }

          v57 = v120 + v59 + 1;
          ++v56;
        }

        while (v56 != a4);
        LOWORD(v40) = v111;
        v51 = v105;
        v53 = a7[v105];
        v55 = v109;
LABEL_63:
        v54 = v55;
      }

      while (v53 > v55);
LABEL_64:
      v107 += v53 + 1;
      if (++v51 == v104)
      {
LABEL_67:
        v73 = 2;
        goto LABEL_122;
      }
    }
  }

  v74 = 0;
  v52 = 0;
  v106 = 0;
  do
  {
    v75 = a7[v74];
    if (v75 < 1)
    {
      goto LABEL_120;
    }

    v76 = 0;
    v115 = v40 * v106;
    v117 = v40 + v40 * v106;
    v108 = v74;
    do
    {
      if (a4 < 1)
      {
        goto LABEL_119;
      }

      v77 = 0;
      v78 = 0;
      v110 = v76;
      v119 = v76 | v74;
      do
      {
        v79 = a3[v77];
        v121 = v78;
        if (v79 >= 1)
        {
          v80 = 0;
          if (a6)
          {
            v81 = v77 == v41;
          }

          else
          {
            v81 = 0;
          }

          v82 = v81;
          v83 = v117 + v78;
          v84 = v115 + v78;
          do
          {
            *cf = v84 + v80;
            *&cf[4] = v83 + v80 + 1;
            v85 = v80 + 1;
            *&cf[8] = v84 + v80 + 1;
            v131[0] = v84 + v80;
            v131[1] = v83 + v80;
            v131[2] = *&cf[4];
            if (!v44 || v80 | v77)
            {
              if (v85 == v79)
              {
                v87 = v82;
              }

              else
              {
                v87 = 0;
              }

              if (v87 == 1)
              {
                switch(a2)
                {
                  case 3u:
                    *bytes = v84 + v80;
                    *&bytes[4] = v83 + v80 + 1;
                    goto LABEL_108;
                  case 2u:
                    *bytes = v84 + v80;
                    *&bytes[4] = v83 + v80;
                    v128 = v83 + v80;
                    v129 = v83 + v80 + 1;
LABEL_104:
                    v90 = bytes;
                    v91 = v46;
                    v92 = 16;
LABEL_109:
                    CFDataAppendBytes(v91, v90, v92);
                    Mutable = v46;
                    v52 += 2;
                    break;
                  case 0u:
                    v86 = v131;
                    goto LABEL_95;
                }
              }

              else
              {
                switch(a2)
                {
                  case 3u:
LABEL_101:
                    *bytes = v84 + v80;
                    *&bytes[4] = v84 + v80 + 1;
LABEL_108:
                    v90 = bytes;
                    v91 = v46;
                    v92 = 8;
                    goto LABEL_109;
                  case 2u:
                    *bytes = v84 + v80;
                    *&bytes[4] = v83 + v80;
                    v128 = v83 + v80;
                    v129 = v83 + v80 + 1;
                    v93 = Mutable;
                    CFDataAppendBytes(Mutable, bytes, 16);
                    if (v119)
                    {
                      v52 += 2;
                    }

                    else
                    {
                      *bytes = *cf;
                      *&bytes[4] = *&cf[8];
                      CFDataAppendBytes(v93, bytes, 8);
                      v52 += 3;
                    }

                    v44 = a5;
                    if (v77 != v122 || v80 != a3[v77] - 1)
                    {
                      Mutable = v46;
                      break;
                    }

                    *bytes = *&cf[4];
                    v86 = bytes;
                    v88 = v46;
                    v89 = 8;
                    goto LABEL_96;
                  case 0u:
                    v90 = cf;
                    v91 = v46;
                    v92 = 24;
                    goto LABEL_109;
                }
              }
            }

            else
            {
              switch(a2)
              {
                case 3u:
                  goto LABEL_101;
                case 2u:
                  *bytes = v84 + v80;
                  *&bytes[4] = v83 + v80 + 1;
                  v128 = v84 + v80;
                  v129 = v84 + v80 + 1;
                  goto LABEL_104;
                case 0u:
                  v86 = cf;
LABEL_95:
                  v88 = v46;
                  v89 = 12;
LABEL_96:
                  CFDataAppendBytes(v88, v86, v89);
                  Mutable = v46;
                  ++v52;
                  break;
              }
            }

            v79 = a3[v77];
            ++v80;
          }

          while (v85 < v79);
        }

        v78 = v121 + v79 + 1;
        ++v77;
        v41 = (a4 - 1);
      }

      while (v77 != a4);
      LODWORD(v40) = v111;
      v74 = v108;
      v76 = v110;
      v75 = a7[v108];
LABEL_119:
      ++v76;
      v117 += v40;
      v115 += v40;
    }

    while (v76 < v75);
LABEL_120:
    v106 += v75 + 1;
    ++v74;
  }

  while (v74 != v104);
  v73 = 4;
LABEL_122:
  v94 = sub_1AF1A6834();
  sub_1AF1A718C(v94, 0);
  Copy = CFDataCreateCopy(allocator, v46);
  sub_1AF1A6A70(v94, a2, v52, Copy, v73);
  CFRelease(Copy);
  CFRelease(v46);
  *cf = v94;
  bytes[2] = 0;
  *bytes = 0;
  v96 = MEMORY[0x1E695E9C0];
  v97 = CFArrayCreate(allocator, values, 3, MEMORY[0x1E695E9C0]);
  v98 = CFArrayCreate(allocator, cf, 1, v96);
  v99 = sub_1AF27B22C(v97, v98, bytes);
  CFRelease(v97);
  CFRelease(v98);
  if (*cf)
  {
    CFRelease(*cf);
    *cf = 0;
  }

  for (i = 0; i != 3; ++i)
  {
    v101 = values[i];
    if (v101)
    {
      CFRelease(v101);
      values[i] = 0;
    }
  }

  return v99;
}

uint64_t sub_1AF22512C(void (*a1)(UInt8 *, uint64_t, uint64_t, uint64_t, float, float, float, float, float, float, float), uint64_t a2, int *a3, int a4, int *a5, int a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v52 = *MEMORY[0x1E69E9840];
  v23 = a4;
  v24 = a4;
  if (a4 >= 1)
  {
    v25 = a4;
    v26 = a3;
    v24 = a4;
    do
    {
      v27 = *v26++;
      v24 += v27;
      --v25;
    }

    while (v25);
  }

  v48 = a6;
  v28 = a6;
  if (a6 >= 1)
  {
    v29 = a6;
    v30 = a5;
    v28 = a6;
    do
    {
      v31 = *v30++;
      v28 += v31;
      --v29;
    }

    while (v29);
  }

  if (a2 == 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = 3;
  }

  v46 = v28 * v24;
  v47 = v32;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 4 * v28 * v24 * v32);
  if (a6 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = a5[v34];
      if ((v35 & 0x80000000) == 0)
      {
        v36 = 0;
        do
        {
          if (a4 >= 1)
          {
            v37 = 0;
            v50 = v36;
            v38 = v36 * a12;
            do
            {
              v39 = a3[v37];
              if ((v39 & 0x80000000) == 0)
              {
                v40 = -1;
                do
                {
                  a1(bytes, a2, v37, v34, a7, a8, a9, a10, a11, (++v40 / v39) + 0.0, (v38 / a5[v34]) + 0.0);
                  CFDataAppendBytes(Mutable, bytes, (4 * v47));
                  v39 = a3[v37];
                }

                while (v40 < v39);
              }

              ++v37;
            }

            while (v37 != v23);
            v35 = a5[v34];
            v36 = v50;
          }
        }

        while (v36++ < v35);
      }

      ++v34;
    }

    while (v34 != v48);
  }

  Copy = CFDataCreateCopy(allocator, Mutable);
  v43 = sub_1AF1ADBE4(Copy, a2, v46, v47, 1);
  CFRelease(Mutable);
  CFRelease(Copy);
  return v43;
}

uint64_t sub_1AF2253A0(unsigned int a1, int a2, float a3, float a4, float a5, float a6)
{
  if (!sub_1AF1A7028(a1))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v21 = a2;
  v22 = 1;
  return sub_1AF224870(sub_1AF223568, a1, &v22, 1, 0, a4 == 0.0, &v21, 1, a3, a4, a5, 0.0, 0.0, a6);
}

uint64_t sub_1AF225470(unsigned int a1, uint64_t a2, int a3, float a4, float a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a1))
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  if (a4 > 0.0)
  {
    if (a3 == 1)
    {
      v18 = sub_1AF2279BC(a1, a2, a4);
    }

    else
    {
      v48 = a2;
      if (a5 != 1.0)
      {
        v56 = 0;
        v57 = 0;
        v22 = 0.0;
        if (a3 == 2)
        {
          v22 = 0.5;
          v23 = 0.25;
        }

        else
        {
          v23 = 0.5;
        }

        values = sub_1AF224870(sub_1AF223690, a1, &v48, 1, a3 != 2, 1, &v48, 1, a4, v22, 1.0, 0.0, 0.0, a5);
        v24 = sub_1AF2253A0(a1, a2, a4, 0.0, 0.0, v23);
        v25 = v24;
        v26 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v49 = xmmword_1AFE20150;
        v50 = xmmword_1AFE208E0;
        v51 = xmmword_1AFE208F0;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        do
        {
          *(&v52 + v26) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20900, COERCE_FLOAT(*(&v49 + v26))), xmmword_1AFE20160, *(&v49 + v26), 1), xmmword_1AFE20910, *(&v49 + v26), 2);
          v26 += 16;
        }

        while (v26 != 48);
        v27 = 0;
        v49 = v52;
        v50 = v53;
        v51 = v54;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        do
        {
          *(&v52 + v27) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v49 + v27))), xmmword_1AFE21340, *(&v49 + v27), 1), xmmword_1AFE20180, *(&v49 + v27), 2);
          v27 += 16;
        }

        while (v27 != 48);
        v28 = v52;
        v29 = v53;
        v30 = v54;
        HIDWORD(v28) = 0;
        HIDWORD(v29) = 0;
        HIDWORD(v30) = 0;
        v44 = v28;
        v45 = v29;
        v46 = v30;
        v47 = xmmword_1AFE201A0;
        v31 = sub_1AF27C174(v24, &v44);
        v56 = v31;
        if (v25)
        {
          CFRelease(v25);
        }

        v32 = (1.0 - a5) * 6.28318531;
        v33 = __sincosf_stret(v32);
        v34 = 0;
        v35.i32[3] = 0;
        v35.i64[0] = LODWORD(v33.__cosval);
        v36.i64[0] = LODWORD(v33.__sinval);
        v36.i64[1] = LODWORD(v33.__cosval);
        v49 = xmmword_1AFE20150;
        v50 = xmmword_1AFE20160;
        v51 = xmmword_1AFE42B90;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        do
        {
          v35.f32[2] = -v33.__sinval;
          *(&v52 + v34) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v49 + v34))), xmmword_1AFE20160, *(&v49 + v34), 1), v36, *(&v49 + v34), 2);
          v34 += 16;
        }

        while (v34 != 48);
        v37 = 0;
        v49 = v52;
        v50 = v53;
        v51 = v54;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        do
        {
          *(&v52 + v37) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE42BA0, COERCE_FLOAT(*(&v49 + v37))), xmmword_1AFE42BB0, *(&v49 + v37), 1), xmmword_1AFE20180, *(&v49 + v37), 2);
          v37 += 16;
        }

        while (v37 != 48);
        v38 = v52;
        v39 = v53;
        v40 = v54;
        HIDWORD(v38) = 0;
        HIDWORD(v39) = 0;
        HIDWORD(v40) = 0;
        v44 = v38;
        v45 = v39;
        v46 = v40;
        v47 = xmmword_1AFE201A0;
        v57 = sub_1AF27C174(v31, &v44);
        v41 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
        v19 = sub_1AF27B314(v41);
        CFRelease(v41);
        for (i = 0; i != 24; i += 8)
        {
          v43 = *(&values + i);
          if (v43)
          {
            CFRelease(v43);
            *(&values + i) = 0;
          }
        }

        goto LABEL_13;
      }

      v20 = 0.0;
      if (a3 == 2)
      {
        v20 = 0.5;
      }

      v18 = sub_1AF224870(sub_1AF223690, a1, &v48, 1, a3 != 2, 1, &v48, 1, a4, v20, 1.0, 0.0, 0.0, 1.0);
    }

    v19 = v18;
LABEL_13:
    sub_1AF1A56EC(v19, @"Sphere");
    return v19;
  }

  return 0;
}

uint64_t sub_1AF2258F0(unsigned int a1, int a2, uint64_t a3, float a4, float a5, float a6)
{
  if (!sub_1AF1A7028(a1))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a4 <= 0.0)
  {
    return 0;
  }

  v52 = a2;
  v53 = a3;
  v20 = malloc_type_calloc(5uLL, 8uLL, 0x2004093837F09uLL);
  if (a5 <= 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
    *v20 = sub_1AF224870(sub_1AF2237B8, a1, &v53, 1, 0, 0, &v52, 1, a4, a5, 0.0, 0.0, 0.0, a6);
  }

  v23 = v21 + 1;
  v20[v21] = sub_1AF2253A0(a1, a2, a4, 0.0, a5 * 0.5, a6);
  if (a5 > 0.0)
  {
    v24 = sub_1AF2253A0(a1, a2, a4, 0.0, a5 * -0.5, a6);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = a6 * 6.28318531;
    v26 = __sincosf_stret(v25);
    v27 = 0;
    v28.i32[3] = 0;
    v28.i64[0] = LODWORD(v26.__cosval);
    v29.i64[0] = LODWORD(v26.__sinval);
    v29.i64[1] = LODWORD(v26.__cosval);
    v54 = xmmword_1AFE20150;
    v55 = xmmword_1AFE20160;
    v56 = xmmword_1AFE42B90;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    do
    {
      v28.f32[2] = -v26.__sinval;
      *(&v57 + v27) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v54 + v27))), xmmword_1AFE20160, *(&v54 + v27), 1), v29, *(&v54 + v27), 2);
      v27 += 16;
    }

    while (v27 != 48);
    v30 = 0;
    v54 = v57;
    v55 = v58;
    v56 = v59;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    do
    {
      *(&v57 + v30) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v54 + v30))), xmmword_1AFE21340, *(&v54 + v30), 1), xmmword_1AFE20180, *(&v54 + v30), 2);
      v30 += 16;
    }

    while (v30 != 48);
    v31 = v57;
    v32 = v58;
    v33 = v59;
    HIDWORD(v31) = 0;
    HIDWORD(v32) = 0;
    HIDWORD(v33) = 0;
    v48 = v31;
    v49 = v32;
    v50 = v33;
    v51 = xmmword_1AFE201A0;
    v20[v23] = sub_1AF27C174(v24, &v48);
    if (v24)
    {
      CFRelease(v24);
    }

    v23 = v21 | 2;
    if (a6 < 1.0)
    {
      v34 = sub_1AF22917C(a1, 1, a3, 0, a4, a5, 0.0);
      v35 = v34;
      v36 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v54 = xmmword_1AFE20150;
      v55 = xmmword_1AFE20160;
      v56 = xmmword_1AFE42B90;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      do
      {
        *(&v57 + v36) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20620, COERCE_FLOAT(*(&v54 + v36))), xmmword_1AFE20160, *(&v54 + v36), 1), xmmword_1AFE20630, *(&v54 + v36), 2);
        v36 += 16;
      }

      while (v36 != 48);
      v37 = 0;
      v54 = v57;
      v55 = v58;
      v56 = v59;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      do
      {
        *(&v57 + v37) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v54 + v37))), xmmword_1AFE21340, *(&v54 + v37), 1), xmmword_1AFE20180, *(&v54 + v37), 2);
        v37 += 16;
      }

      while (v37 != 48);
      v38 = v57;
      v39 = v58;
      v40 = v59;
      HIDWORD(v38) = 0;
      HIDWORD(v39) = 0;
      HIDWORD(v40) = 0;
      *&v41 = 0;
      *(&v41 + 2) = a4 * -0.5;
      HIDWORD(v41) = 1.0;
      v48 = v38;
      v49 = v39;
      v50 = v40;
      v51 = v41;
      v42 = sub_1AF27C174(v34, &v48);
      v43 = &v20[v21 | 2];
      *v43 = v42;
      if (v35)
      {
        CFRelease(v35);
        v42 = *v43;
      }

      v23 = v21 | 4;
      v43[1] = sub_1AF223408(v42, a6);
    }
  }

  v44 = CFArrayCreate(*MEMORY[0x1E695E480], v20, v23, MEMORY[0x1E695E9C0]);
  v22 = sub_1AF27B314(v44);
  CFRelease(v44);
  v45 = 0;
  do
  {
    v46 = v20[v45];
    if (v46)
    {
      CFRelease(v46);
      v20[v45] = 0;
    }

    ++v45;
  }

  while (v23 != v45);
  free(v20);
  sub_1AF1A56EC(v22, @"Cylinder");
  return v22;
}

uint64_t sub_1AF225D84(unsigned int a1, int a2, int a3, float a4, float a5, float a6)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a1))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = 0;
  if (a4 >= 0.0 && a5 >= 0.0)
  {
    v20 = 0;
    v21 = a5 == 0.0 && a4 == 0.0;
    v22 = v21;
    if (!v22 && a6 > 0.0)
    {
      v33 = a2;
      v34 = a3;
      if (a4 <= 0.0)
      {
        v23 = 0;
      }

      else
      {
        v23 = sub_1AF2253A0(a1, a2, a4, 0.0, a6 * 0.5, 1.0);
      }

      if (a5 <= 0.0)
      {
        v24 = 0;
      }

      else
      {
        v24 = sub_1AF2253A0(a1, a2, a5, 0.0, a6 * -0.5, 1.0);
      }

      v36 = 0;
      v37[0] = 0;
      values = sub_1AF224870(sub_1AF2238B4, a1, &v34, 1, v24 == 0, v23 == 0, &v33, 1, a4, a5, a6, 0.0, 0.0, 1.0);
      if (v23 && v24)
      {
        v25 = v37;
        v36 = v23;
        v26 = 3;
      }

      else
      {
        v27 = v23 | v24;
        if (v23)
        {
          v24 = v23;
        }

        if (!v27)
        {
          v26 = 1;
LABEL_29:
          v28 = CFArrayCreate(*MEMORY[0x1E695E480], &values, v26, MEMORY[0x1E695E9C0]);
          v20 = sub_1AF27B314(v28);
          CFRelease(v28);
          v29 = 0;
          v30 = 8 * v26;
          do
          {
            v31 = *(&values + v29);
            if (v31)
            {
              CFRelease(v31);
              *(&values + v29) = 0;
            }

            v29 += 8;
          }

          while (v30 != v29);
          sub_1AF1A56EC(v20, @"Cone");
          return v20;
        }

        v25 = &v36;
        v26 = 2;
      }

      *v25 = v24;
      goto LABEL_29;
    }
  }

  return v20;
}

uint64_t sub_1AF225FD4(unsigned int a1, int a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  if (!sub_1AF1A7028(a1))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = 0;
  if (a4 > a5)
  {
    a4 = a5;
  }

  if (a5 > 0.0 && a4 >= 0.0)
  {
    v23 = malloc_type_calloc(6uLL, 8uLL, 0x2004093837F09uLL);
    if (a6 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      LODWORD(v50) = a2;
      LODWORD(v57) = a3;
      *v23 = sub_1AF224870(sub_1AF2237B8, a1, &v57, 1, 0, 0, &v50, 1, a5, a6, 0.0, 0.0, 0.0, a7);
      v23[1] = sub_1AF224870(sub_1AF2237B8, a1, &v57, 1, 0, 0, &v50, 1, -a4, -a6, 0.0, 0.0, 0.0, a7);
      v24 = 2;
    }

    v25 = v24 | 1;
    v23[v24] = sub_1AF2253A0(a1, a2, a5, a4, a6 * 0.5, a7);
    if (a6 > 0.0)
    {
      v26 = sub_1AF2253A0(a1, a2, a5, a4, a6 * -0.5, a7);
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v27 = a7 * 6.28318531;
      v28 = __sincosf_stret(v27);
      v29 = 0;
      v30.i32[3] = 0;
      v30.i64[0] = LODWORD(v28.__cosval);
      v31.i64[0] = LODWORD(v28.__sinval);
      v31.i64[1] = LODWORD(v28.__cosval);
      v54 = xmmword_1AFE20150;
      v55 = xmmword_1AFE20160;
      v56 = xmmword_1AFE42B90;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      do
      {
        v30.f32[2] = -v28.__sinval;
        *(&v57 + v29) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v54 + v29))), xmmword_1AFE20160, *(&v54 + v29), 1), v31, *(&v54 + v29), 2);
        v29 += 16;
      }

      while (v29 != 48);
      v32 = 0;
      v54 = v57;
      v55 = v58;
      v56 = v59;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      do
      {
        *(&v57 + v32) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v54 + v32))), xmmword_1AFE21340, *(&v54 + v32), 1), xmmword_1AFE20180, *(&v54 + v32), 2);
        v32 += 16;
      }

      while (v32 != 48);
      v33 = v57;
      v34 = v58;
      v35 = v59;
      HIDWORD(v33) = 0;
      HIDWORD(v34) = 0;
      HIDWORD(v35) = 0;
      v50 = v33;
      v51 = v34;
      v52 = v35;
      v53 = xmmword_1AFE201A0;
      v23[v25] = sub_1AF27C174(v26, &v50);
      if (v26)
      {
        CFRelease(v26);
      }

      v25 = v24 + 2;
      if (a7 < 1.0)
      {
        v36 = sub_1AF22917C(a1, 1, a3, 0, a5 - a4, a6, 0.0);
        v37 = v36;
        v38 = 0;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v54 = xmmword_1AFE20150;
        v55 = xmmword_1AFE20160;
        v56 = xmmword_1AFE42B90;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        do
        {
          *(&v57 + v38) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20620, COERCE_FLOAT(*(&v54 + v38))), xmmword_1AFE20160, *(&v54 + v38), 1), xmmword_1AFE20630, *(&v54 + v38), 2);
          v38 += 16;
        }

        while (v38 != 48);
        v39 = 0;
        v54 = v57;
        v55 = v58;
        v56 = v59;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        do
        {
          *(&v57 + v39) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v54 + v39))), xmmword_1AFE21340, *(&v54 + v39), 1), xmmword_1AFE20180, *(&v54 + v39), 2);
          v39 += 16;
        }

        while (v39 != 48);
        v40 = v57;
        v41 = v58;
        HIDWORD(v40) = 0;
        HIDWORD(v41) = 0;
        v42 = v59;
        HIDWORD(v42) = 0;
        *&v43 = 0;
        *(&v43 + 2) = (a4 + a5) * -0.5;
        HIDWORD(v43) = 1.0;
        v50 = v40;
        v51 = v41;
        v52 = v42;
        v53 = v43;
        v44 = sub_1AF27C174(v36, &v50);
        v45 = &v23[v24 + 2];
        *v45 = v44;
        v25 = v24 | 4;
        v45[1] = sub_1AF223408(v44, a7);
        CFRelease(v37);
      }
    }

    v46 = CFArrayCreate(*MEMORY[0x1E695E480], v23, v25, MEMORY[0x1E695E9C0]);
    v22 = sub_1AF27B314(v46);
    CFRelease(v46);
    v47 = 0;
    do
    {
      v48 = v23[v47];
      if (v48)
      {
        CFRelease(v48);
        v23[v47] = 0;
      }

      ++v47;
    }

    while (v25 != v47);
    free(v23);
    sub_1AF1A56EC(v22, @"Tube");
  }

  return v22;
}

uint64_t sub_1AF2264BC(unsigned int a1, int a2, int a3, int a4, float a5, float a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a1))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = 0;
  if (a5 > 0.0 && a6 > 0.0)
  {
    v21 = a6 * 0.5;
    v24[0] = a4;
    v24[1] = a3;
    if ((a6 * 0.5) > a5)
    {
      v21 = a5;
    }

    v24[2] = a4;
    v23 = a2;
    v20 = sub_1AF224870(sub_1AF223AE0, a1, v24, 3, 1, 1, &v23, 1, v21, a6, 0.0, 0.0, 0.0, 1.0);
    sub_1AF1A56EC(v20, @"Capsule");
  }

  return v20;
}

uint64_t sub_1AF2265EC(unsigned int a1, int a2, int a3, float a4, float a5, float a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a1))
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = 0;
  if (a4 > 0.0 && a5 > 0.0)
  {
    v37 = a2;
    v38 = a3;
    if (a6 == 1.0)
    {
      v20 = sub_1AF224870(sub_1AF2239C8, a1, &v38, 1, 0, 0, &v37, 1, a4, a5, 0.0, 0.0, 0.0, 1.0);
    }

    else
    {
      v46 = 0;
      v47 = 0;
      values = sub_1AF224870(sub_1AF2239C8, a1, &v38, 1, 0, 0, &v37, 1, a4, a5, 0.0, 0.0, 0.0, a6);
      v21 = sub_1AF2253A0(a1, a3, a5, 0.0, 0.0, 1.0);
      v22 = v21;
      v23 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v39 = xmmword_1AFE20150;
      v40 = xmmword_1AFE20160;
      v41 = xmmword_1AFE42B90;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      do
      {
        *(&v42 + v23) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE42BC0, COERCE_FLOAT(*(&v39 + v23))), xmmword_1AFE20160, *(&v39 + v23), 1), xmmword_1AFE42BD0, *(&v39 + v23), 2);
        v23 += 16;
      }

      while (v23 != 48);
      v24 = 0;
      v39 = v42;
      v40 = v43;
      v41 = v44;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      do
      {
        *(&v42 + v24) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE42BE0, COERCE_FLOAT(*(&v39 + v24))), xmmword_1AFE42BF0, *(&v39 + v24), 1), xmmword_1AFE20180, *(&v39 + v24), 2);
        v24 += 16;
      }

      while (v24 != 48);
      v25 = v42;
      v26 = v43;
      HIDWORD(v25) = 0;
      v27 = v44;
      HIDWORD(v26) = 0;
      HIDWORD(v27) = 0;
      *&v28 = 0;
      *(&v28 + 2) = -a4;
      HIDWORD(v28) = 1.0;
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
      v46 = sub_1AF27C174(v21, &v33);
      v47 = sub_1AF223408(v46, a6);
      CFRelease(v22);
      v29 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
      v20 = sub_1AF27B314(v29);
      CFRelease(v29);
      for (i = 0; i != 24; i += 8)
      {
        v31 = *(&values + i);
        if (v31)
        {
          CFRelease(v31);
          *(&values + i) = 0;
        }
      }
    }

    sub_1AF1A56EC(v20, @"Torus");
  }

  return v20;
}

uint64_t sub_1AF226914(unsigned int a1, int a2, int a3, int a4, unint64_t a5, unsigned int a6, float a7, float a8, float a9, float a10)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a1))
  {
    v19 = sub_1AF0D5194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v19, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = 0;
  if (a7 >= 0.0 && a8 >= 0.0 && a9 >= 0.0)
  {
    v28 = 0;
    v29 = a9;
    v30 = a7 * 0.5;
    if (v30 >= a8 * 0.5)
    {
      v30 = a8 * 0.5;
    }

    if (v30 >= v29 * 0.5)
    {
      v30 = v29 * 0.5;
    }

    v31 = 0.0;
    if (a10 >= 0.0)
    {
      v31 = a10;
    }

    v32 = 0.0;
    if (v30 >= 0.0)
    {
      v32 = v30;
    }

    v33 = v32;
    if (v30 <= a10)
    {
      v34 = v33;
    }

    else
    {
      v34 = v31;
    }

    v35 = (a5 + (a5 >> 63)) >> 1;
    if (a5 + 1 < 3)
    {
      LODWORD(v35) = 1;
    }

    v69[1] = v35;
    v69[2] = v35;
    v68[1] = v35;
    v68[2] = v35;
    *values = 0u;
    v65 = 0u;
    if (v34 == 0.0)
    {
      v36 = 1;
    }

    else
    {
      v36 = 3;
    }

    v69[0] = a3;
    do
    {
      if (v28)
      {
        v37 = a4;
      }

      else
      {
        v37 = a2;
      }

      v68[0] = v37;
      values[v28] = sub_1AF224870(sub_1AF224030, a1, v69, v36, 0, 0, v68, v36, a7, a8, a9, v34, v28, 1.0);
      ++v28;
    }

    while (v28 != 4);
    v69[0] = a4;
    v68[0] = a2;
    v66 = sub_1AF224870(sub_1AF224030, a1, v69, v36, 0, 0, v68, v36, a7, a8, a9, v34, 4.0, 1.0);
    v67 = sub_1AF224870(sub_1AF224030, a1, v69, v36, 0, 0, v68, v36, a7, a8, a9, v34, 5.0, 1.0);
    v38 = CFArrayCreate(*MEMORY[0x1E695E480], values, 6, MEMORY[0x1E695E9C0]);
    v27 = sub_1AF27B314(v38);
    CFRelease(v38);
    if (a6)
    {
      v60 = v27;
      theArray = sub_1AF1A516C(v27, 0);
      v39 = MEMORY[0x1E695E9C0];
      Mutable = CFArrayCreateMutable(0, 6, MEMORY[0x1E695E9C0]);
      v41 = CFArrayCreateMutable(0, 6, v39);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 4;
      v46 = 1;
      do
      {
        v47 = 1 << ((a6 >> (4 * v43)) & 0xF);
        if ((v47 & v44) != 0)
        {
          ++v42;
        }

        else
        {
          v61 = v44;
          CFArrayRemoveAllValues(Mutable);
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v43);
          CFArrayAppendValue(Mutable, ValueAtIndex);
          if (v43 <= 4)
          {
            v49 = v45;
            v50 = v46;
            do
            {
              if (((a6 >> (4 * v43)) & 0xF) == ((a6 >> v49) & 0xF))
              {
                v51 = CFArrayGetValueAtIndex(theArray, v50);
                CFArrayAppendValue(Mutable, v51);
              }

              ++v50;
              v49 += 4;
            }

            while (v50 != 6);
          }

          if (CFArrayGetCount(Mutable) < 2)
          {
            v53 = CFArrayGetValueAtIndex(Mutable, 0);
            v52 = CFRetain(v53);
          }

          else
          {
            v52 = sub_1AF1A6DB4(Mutable);
          }

          v54 = v52;
          if (v42 >= 1)
          {
            do
            {
              v55 = sub_1AF1A68D0();
              CFArrayAppendValue(v41, v55);
              --v42;
            }

            while (v42);
          }

          if (!v54)
          {
            CFRelease(v41);
            CFRelease(Mutable);
            v27 = v60;
            goto LABEL_49;
          }

          v44 = v61 | v47;
          CFArrayAppendValue(v41, v54);
          CFRelease(v54);
          v42 = 0;
        }

        ++v46;
        v45 += 4;
      }

      while (v43++ < 5);
      CFRelease(Mutable);
      v27 = v60;
      if (v41)
      {
        sub_1AF1A5208(v60, v41);
        CFRelease(v41);
      }
    }

LABEL_49:
    for (i = 0; i != 6; ++i)
    {
      v58 = values[i];
      if (v58)
      {
        CFRelease(v58);
        values[i] = 0;
      }
    }

    sub_1AF1A56EC(v27, @"ChamferBox");
  }

  return v27;
}

uint64_t sub_1AF226DC4(unsigned int a1, uint64_t a2, int a3, uint64_t a4, float a5, float a6, float a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!sub_1AF1A7028(a1))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAFA4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = 0;
  *values = 0u;
  v33 = 0u;
  do
  {
    LODWORD(v30[0]) = a3;
    if (v22)
    {
      v23 = a4;
    }

    else
    {
      v23 = a2;
    }

    v31 = v23;
    values[v22] = sub_1AF224870(sub_1AF2246DC, a1, v30, 1, 0, 1, &v31, 1, a5, a6, a7, v22, 0.0, 1.0);
    ++v22;
  }

  while (v22 != 4);
  v24 = sub_1AF22917C(a1, a2, a4, 0, a5, a7, 0.0);
  v30[0] = xmmword_1AFE20150;
  v30[1] = xmmword_1AFE20920;
  v30[2] = xmmword_1AFE20930;
  v30[3] = xmmword_1AFE201A0;
  v34 = sub_1AF27C174(v24, v30);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = CFArrayCreate(*MEMORY[0x1E695E480], values, 5, MEMORY[0x1E695E9C0]);
  v26 = sub_1AF27B314(v25);
  CFRelease(v25);
  for (i = 0; i != 5; ++i)
  {
    v28 = values[i];
    if (v28)
    {
      CFRelease(v28);
      values[i] = 0;
    }
  }

  sub_1AF1A56EC(v26, @"Pyramid");
  return v26;
}

uint64_t sub_1AF226FC0(int a1, float a2)
{
  values[3] = *MEMORY[0x1E69E9840];
  values[0] = sub_1AF227240(0, a2);
  values[1] = sub_1AF227240(1, a2);
  values[2] = sub_1AF227240(3, a2);
  v4 = sub_1AF1A6834();
  cf = v4;
  if (a1)
  {
    if (a1 == 2)
    {
      v28 = xmmword_1AFE42E48;
      v29 = unk_1AFE42E58;
      v30 = xmmword_1AFE42E68;
      v24 = xmmword_1AFE42E08;
      v25 = unk_1AFE42E18;
      v26 = xmmword_1AFE42E28;
      v27 = unk_1AFE42E38;
      v20 = xmmword_1AFE42DC8;
      v21 = unk_1AFE42DD8;
      v22 = xmmword_1AFE42DE8;
      v23 = *asc_1AFE42DF8;
      *bytes = xmmword_1AFE42D88;
      v17 = unk_1AFE42D98;
      v18 = xmmword_1AFE42DA8;
      v19 = unk_1AFE42DB8;
      v5 = *MEMORY[0x1E695E480];
      v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 240);
      v7 = v4;
      v8 = 60;
    }

    else
    {
      if (a1 != 3)
      {
        v5 = *MEMORY[0x1E695E480];
        goto LABEL_9;
      }

      *bytes = xmmword_1AFE42E78;
      *&v17 = 0x10000F000E000DLL;
      v5 = *MEMORY[0x1E695E480];
      v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
      v7 = v4;
      v8 = 12;
    }
  }

  else
  {
    v20 = xmmword_1AFE42D50;
    v21 = unk_1AFE42D60;
    v22 = xmmword_1AFE42D70;
    *&v23 = 0x14000F000E0013;
    *bytes = xmmword_1AFE42D10;
    v17 = unk_1AFE42D20;
    v18 = xmmword_1AFE42D30;
    v19 = unk_1AFE42D40;
    v5 = *MEMORY[0x1E695E480];
    v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 120);
    v7 = v4;
    v8 = 20;
  }

  sub_1AF1A72A0(v7, v8, v6, 2);
  CFRelease(v6);
LABEL_9:
  bytes[2] = 0;
  *bytes = 0;
  v9 = MEMORY[0x1E695E9C0];
  v10 = CFArrayCreate(v5, values, 3, MEMORY[0x1E695E9C0]);
  v11 = CFArrayCreate(v5, &cf, 1, v9);
  v12 = sub_1AF27B22C(v10, v11, bytes);
  for (i = 0; i != 3; ++i)
  {
    CFRelease(values[i]);
  }

  CFRelease(cf);
  CFRelease(v10);
  CFRelease(v11);
  return v12;
}

uint64_t sub_1AF227240(int a1, float a2)
{
  v58 = *MEMORY[0x1E69E9840];
  *&v2 = (a2 + a2) * 2.23606798;
  v3 = *&v2 / 5.0;
  v4 = *&v2 / 10.0;
  LODWORD(v2) = 0;
  *(&v2 + 1) = -v4;
  v5.i32[0] = 0;
  v6 = v2;
  v6.f32[2] = v3;
  v7 = vaddq_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v6, 2), xmmword_1AFE20160, v2, 1), xmmword_1AFE42C40);
  v8 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v7, 2), xmmword_1AFE20160, *v7.f32, 1), xmmword_1AFE42C50, v7.f32[0]);
  v9 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v8, 2), xmmword_1AFE20160, *v8.f32, 1), xmmword_1AFE42C50, v8.f32[0]);
  v10 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v9, 2), xmmword_1AFE20160, *v9.f32, 1), xmmword_1AFE42C50, v9.f32[0]);
  v5.f32[1] = v4;
  v11 = v5;
  v11.f32[2] = -v3;
  v12 = vaddq_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v11, 2), xmmword_1AFE20160, v5, 1), xmmword_1AFE42C40);
  v13 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v12, 2), xmmword_1AFE20160, *v12.f32, 1), xmmword_1AFE42C50, v12.f32[0]);
  v14 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v13, 2), xmmword_1AFE20160, *v13.f32, 1), xmmword_1AFE42C50, v13.f32[0]);
  v15 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE42C30, v14, 2), xmmword_1AFE20160, *v14.f32, 1), xmmword_1AFE42C50, v14.f32[0]);
  switch(a1)
  {
    case 0:
      LODWORD(v51) = 0;
      *(&v51 + 1) = -a2;
      *(&v51 + 1) = 0;
      *&v52 = -a2;
      *(&v52 + 4) = 0;
      *(&v52 + 3) = -a2;
      *v53 = 0;
      *&v53[8] = -a2;
      *&v53[12] = 0;
      *&v53[20] = -a2;
      *&v53[24] = 0;
      *&v53[32] = -v4;
      *&v53[36] = v3;
      v7.i32[3] = v8.i32[0];
      *&v53[40] = v7;
      *&v53[56] = vextq_s8(vextq_s8(v8, v8, 0xCuLL), v9, 8uLL);
      *&v53[72] = vextq_s8(vuzp1q_s32(v9, v9), v10, 0xCuLL);
      *&v53[88] = 0;
      *&v53[92] = -v4;
      *&v53[96] = v3;
      v14.i32[3] = v15.i32[0];
      *&v53[100] = v14;
      *&v53[116] = vextq_s8(v15, v15, 4uLL).u64[0];
      *&v53[124] = 0;
      v12.i32[3] = v13.i32[0];
      *&v53[128] = v4;
      *&v53[132] = -v3;
      *&v53[136] = v12;
      *&v53[152] = vextq_s8(v13, v13, 4uLL).u64[0];
      LODWORD(v54) = 0;
      *(&v54 + 1) = a2;
      *(&v54 + 1) = 0;
      *(&v55 + 4) = 0;
      *&v55 = a2;
      *(&v55 + 3) = a2;
      *v56 = 0;
      *&v56[12] = 0;
      *&v56[8] = a2;
      *&v56[20] = a2;
      v57 = 0;
      v16 = CFDataCreate(*MEMORY[0x1E695E480], &v51, 252);
      v17 = v16;
      v18 = 0;
      goto LABEL_7;
    case 1:
      v20 = vmulq_f32(v10, v10);
      v21 = vaddv_f32(*v20.f32);
      *v20.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21));
      *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21), vmul_f32(*v20.f32, *v20.f32)));
      v22 = vmulq_f32(v6, v6);
      *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
      v24 = vmulq_n_f32(v10, vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v20.f32[2] + v21), vmul_f32(*v20.f32, *v20.f32))).f32[0]);
      *v22.f32 = vrsqrte_f32(v23);
      *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
      v25 = vmulq_n_f32(v6, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
      v26 = vmulq_f32(v7, v7);
      *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
      *v26.f32 = vrsqrte_f32(v27);
      *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
      v26.i32[0] = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).u32[0];
      v28 = vmulq_f32(v8, v8);
      *&v29 = v28.f32[2] + vaddv_f32(*v28.f32);
      v30 = vmulq_n_f32(v7, v26.f32[0]);
      *v26.f32 = vrsqrte_f32(v29);
      *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v29, vmul_f32(*v26.f32, *v26.f32)));
      v31 = vmulq_n_f32(v8, vmul_f32(*v26.f32, vrsqrts_f32(v29, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
      v32 = vmulq_f32(v9, v9);
      v28.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
      *v32.f32 = vrsqrte_f32(v28.u32[0]);
      *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v32.f32, *v32.f32)));
      v32.i32[0] = vmul_f32(*v32.f32, vrsqrts_f32(v28.u32[0], vmul_f32(*v32.f32, *v32.f32))).u32[0];
      v33 = vmulq_f32(v12, v12);
      *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
      v35 = vmulq_n_f32(v9, v32.f32[0]);
      *v32.f32 = vrsqrte_f32(v34);
      *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v34, vmul_f32(*v32.f32, *v32.f32)));
      v36 = vmulq_n_f32(v12, vmul_f32(*v32.f32, vrsqrts_f32(v34, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
      v37 = vmulq_f32(v13, v13);
      v33.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
      *v37.f32 = vrsqrte_f32(v33.u32[0]);
      *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v33.u32[0], vmul_f32(*v37.f32, *v37.f32)));
      v37.i32[0] = vmul_f32(*v37.f32, vrsqrts_f32(v33.u32[0], vmul_f32(*v37.f32, *v37.f32))).u32[0];
      v38 = vmulq_f32(v14, v14);
      *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
      v40 = vmulq_n_f32(v13, v37.f32[0]);
      *v37.f32 = vrsqrte_f32(v39);
      *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v39, vmul_f32(*v37.f32, *v37.f32)));
      v41 = vmulq_n_f32(v14, vmul_f32(*v37.f32, vrsqrts_f32(v39, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
      v42 = vmulq_f32(v15, v15);
      v38.f32[0] = v42.f32[2] + vaddv_f32(*v42.f32);
      *v42.f32 = vrsqrte_f32(v38.u32[0]);
      *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v38.u32[0], vmul_f32(*v42.f32, *v42.f32)));
      v43 = vmulq_n_f32(v15, vmul_f32(*v42.f32, vrsqrts_f32(v38.u32[0], vmul_f32(*v42.f32, *v42.f32))).f32[0]);
      v44 = vmulq_f32(v11, v11);
      *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
      *v44.f32 = vrsqrte_f32(v45);
      *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
      v51 = xmmword_1AFE20B60;
      v52 = xmmword_1AFE42D00;
      *v53 = xmmword_1AFE206C0;
      *&v53[16] = 0xBF80000000000000;
      v24.i32[3] = v25.i32[0];
      v46 = vextq_s8(v25, v25, 0xCuLL);
      v25.i32[3] = v30.i32[0];
      *&v53[24] = 0;
      *&v53[28] = v25;
      *&v53[44] = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v31, 8uLL);
      *&v53[60] = vextq_s8(vuzp1q_s32(v31, v31), v35, 0xCuLL);
      v47 = vmulq_n_f32(v11, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
      *&v53[76] = v24;
      *&v53[92] = vextq_s8(v46, v41, 8uLL);
      *&v53[108] = vextq_s8(vuzp1q_s32(v41, v41), v43, 0xCuLL);
      v47.i32[3] = v36.i32[0];
      *&v53[124] = v47;
      *&v53[140] = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v40, 8uLL);
      *&v53[156] = v40.i32[2];
      v54 = xmmword_1AFE20160;
      v55 = xmmword_1AFE21170;
      *v56 = xmmword_1AFE20180;
      *&v56[16] = 0x3F80000000000000;
      v57 = 0;
      v16 = CFDataCreate(*MEMORY[0x1E695E480], &v51, 252);
      v17 = v16;
      v18 = 1;
LABEL_7:
      v19 = 3;
      goto LABEL_8;
    case 3:
      v51 = xmmword_1AFE42C60;
      v52 = xmmword_1AFE42C70;
      *v53 = xmmword_1AFE42C80;
      *&v53[16] = xmmword_1AFE42C90;
      *&v53[32] = xmmword_1AFE42CA0;
      *&v53[48] = xmmword_1AFE42CB0;
      *&v53[64] = xmmword_1AFE42CC0;
      *&v53[80] = xmmword_1AFE42CD0;
      *&v53[96] = xmmword_1AFE42CE0;
      *&v53[112] = xmmword_1AFE42CF0;
      *&v53[128] = 1061997773;
      v16 = CFDataCreate(*MEMORY[0x1E695E480], &v51, 168);
      v17 = v16;
      v18 = 3;
      v19 = 2;
LABEL_8:
      v48 = sub_1AF1ADBE4(v16, v18, 21, v19, 1);
      CFRelease(v17);
      v49 = sub_1AF1AF040(v48);
      if (v48)
      {
        CFRelease(v48);
      }

      return v49;
  }

  return sub_1AF1AF040(0);
}

uint64_t sub_1AF227880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF1AE6EC(a1);
  if (result >= 1)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      v21.i32[2] = 0;
      v21.i64[0] = 0;
      *v11.i64 = sub_1AF1AF084(a1, i, v7, v8);
      v12 = vmulq_f32(v11, v11);
      *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
      *v12.f32 = vrsqrte_f32(v13);
      *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
      v21 = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
      sub_1AF1B6E5C(a2, &v21, 1, v14);
      v18 = v21.f32[1];
      v15 = asinf(v21.f32[0]) / 3.14159265 + 0.5;
      v19 = v15;
      *&v16 = 1.0 - (asinf(v18) / 3.14159265 + 0.5);
      v20 = __PAIR64__(v16, LODWORD(v19));
      result = sub_1AF1B6FF0(a3, &v20, 1, v17);
    }
  }

  return result;
}

uint64_t sub_1AF2279BC(unsigned int a1, uint64_t a2, float a3)
{
  v5 = sub_1AF226FC0(0, a3);
  v6 = 6;
  if (a2 > 6)
  {
    v6 = a2;
  }

  v7 = (v6 - 5);
  if (a2 >= 5005)
  {
    v7 = 5000.0;
  }

  v8 = vcvtpd_s64_f64(log(v7) / 1.09861229);
  if (v8 < 1)
  {
    v15 = v5;
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = v8 + 1;
    v11 = MEMORY[0x1E695E9C0];
    do
    {
      v12 = sub_1AF1A4604(v5, 0, 0, 0);
      v13 = sub_1AF1A4604(v5, 1, 0, 0);
      v14 = sub_1AF1A3D1C(v5, 0, 0);
      values = sub_1AF27BA08(v5, 0, v14, v12, v13, 0, 1);
      v15 = sub_1AF1A2E00();
      sub_1AF1A3F84(v15, v12, 0, 0);
      sub_1AF1A3F84(v15, v13, 0, 0);
      v16 = CFArrayCreate(v9, &values, 1, v11);
      sub_1AF1A5208(v15, v16);
      CFRelease(v16);
      if (v5)
      {
        CFRelease(v5);
      }

      --v10;
      v5 = v15;
    }

    while (v10 > 1);
  }

  v17 = sub_1AF1B6A14(0, 1, 0, 3, 1);
  v18 = sub_1AF1B6A14(0, 3, 0, 2, 1);
  v19 = sub_1AF1A4604(v15, 0, 0, 0);
  sub_1AF227880(v19, v17, v18);
  v20 = sub_1AF1A4604(v15, 1, 0, 0);
  sub_1AF1A4880(v15, v20);
  sub_1AF1A3F84(v15, v17, 0, 0);
  sub_1AF1A3F84(v15, v18, 0, 0);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  sub_1AF1A5300(v15, a1);
  v21 = sub_1AF1A30F0(v15);
  if (v15)
  {
    CFRelease(v15);
  }

  return v21;
}

uint64_t sub_1AF227C28(int a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9)
{
  v147 = *MEMORY[0x1E69E9840];
  v14 = a7;
  v15 = fabsf(a5) * 0.5;
  v16 = fabsf(a6);
  if (v15 >= v16 * 0.5)
  {
    if (v16 * 0.5 <= v14)
    {
      v14 = v16 * 0.5;
    }
  }

  else if (v15 <= v14)
  {
    v14 = v15;
  }

  v17 = v14;
  if (a4 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = a4;
  }

  if (a2 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a2;
  }

  if (a3 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = a3;
  }

  v21 = sub_1AF228920(0, v19, v20, v18, a5, a6, v17, a8, a9);
  values = v21;
  v145 = sub_1AF228920(1, v19, v20, v18, a5, a6, v17, a8, a9);
  v146 = sub_1AF228920(3, v19, v20, v18, a5, a6, v17, a8, a9);
  v22 = sub_1AF1A6834();
  v143 = v22;
  sub_1AF1A699C(v22, a1);
  if (a1 == 3)
  {
    v59 = sub_1AF1AE6EC(v21);
    v28 = v59;
    v60 = 1;
    if (v59 >= 0x10000)
    {
      v60 = 2;
    }

    v44 = v59 << v60;
    v61 = malloc_type_malloc(v59 << v60, 0x37A86D1EuLL);
    v33 = v61;
    if (v28 >= 0x10000)
    {
      v62 = 4;
    }

    else
    {
      v62 = 2;
    }

    if (v28 < 0x10000)
    {
      if (v28 < 1)
      {
        v62 = 2;
      }

      else
      {
        v63 = 0;
        v64 = vdupq_n_s64(v28 - 1);
        v65 = xmmword_1AFE22900;
        v66 = xmmword_1AFE22910;
        v67 = xmmword_1AFE21100;
        v68 = xmmword_1AFE21110;
        v69 = v61 + 8;
        v70 = vdupq_n_s64(8uLL);
        do
        {
          v71 = vmovn_s64(vcgeq_u64(v64, v68));
          if (vuzp1_s8(vuzp1_s16(v71, *v64.i8), *v64.i8).u8[0])
          {
            *(v69 - 4) = v63;
          }

          if (vuzp1_s8(vuzp1_s16(v71, *&v64), *&v64).i8[1])
          {
            *(v69 - 3) = v63 | 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, *&v67))), *&v64).i8[2])
          {
            *(v69 - 2) = v63 | 2;
            *(v69 - 1) = v63 | 3;
          }

          v72 = vmovn_s64(vcgeq_u64(v64, v66));
          if (vuzp1_s8(*&v64, vuzp1_s16(v72, *&v64)).i32[1])
          {
            *v69 = v63 | 4;
          }

          if (vuzp1_s8(*&v64, vuzp1_s16(v72, *&v64)).i8[5])
          {
            v69[1] = v63 | 5;
          }

          if (vuzp1_s8(*&v64, vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, *&v65)))).i8[6])
          {
            v69[2] = v63 | 6;
            v69[3] = v63 | 7;
          }

          v63 += 8;
          v66 = vaddq_s64(v66, v70);
          v67 = vaddq_s64(v67, v70);
          v68 = vaddq_s64(v68, v70);
          v65 = vaddq_s64(v65, v70);
          v69 += 8;
        }

        while (((v28 + 7) & 0xFFFFFFFFFFFFFFF8) != v63);
      }
    }

    else
    {
      v85 = 0;
      v86 = vdupq_n_s64(v28 - 1);
      v87 = xmmword_1AFE21100;
      v88 = xmmword_1AFE21110;
      v89 = v61 + 8;
      v90 = vdupq_n_s64(4uLL);
      do
      {
        v91 = vmovn_s64(vcgeq_u64(v86, v88));
        if (vuzp1_s16(v91, *v86.i8).u8[0])
        {
          *(v89 - 2) = v85;
        }

        if (vuzp1_s16(v91, *&v86).i8[2])
        {
          *(v89 - 1) = v85 + 1;
        }

        if (vuzp1_s16(*&v86, vmovn_s64(vcgeq_u64(v86, *&v87))).i32[1])
        {
          *v89 = v85 + 2;
          v89[1] = v85 + 3;
        }

        v85 += 4;
        v87 = vaddq_s64(v87, v90);
        v88 = vaddq_s64(v88, v90);
        v89 += 4;
      }

      while (((v28 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v85);
    }
  }

  else
  {
    v23 = v19 + 1;
    v24 = (v20 + 1) * (v19 + 1);
    v25 = v18 + v19;
    v26 = v18 + v19 + v24;
    if (a1 == 2)
    {
      v113 = v18 + v19 + v24;
      v115 = (v20 + 1) * (v19 + 1);
      v117 = v18 + v20 + v26;
      if (v17 > 0.0)
      {
        v28 = 8 * v18 + 4 * (v20 + 1 + v23) + v20 + v19 + 2 * v20 * v19 - 8;
      }

      else
      {
        v28 = v20 + v19 + 2 * v20 * v19;
      }

      v42 = 2 * v28;
      v43 = 1;
      if (v28 >= 0x8000)
      {
        v43 = 2;
      }

      v44 = v42 << v43;
      v45 = malloc_type_malloc(v42 << v43, 0x100004077774924uLL);
      v33 = v45;
      if (v28 >= 0x8000)
      {
        v46 = 4;
      }

      else
      {
        v46 = 2;
      }

      v118 = v46;
      v47 = 0;
      if (v28 < 0x8000)
      {
        v139 = 0;
        v140 = &v139;
        v141 = 0x2000000000;
        v142 = v45;
        v48 = v19 + 2;
        v49 = 1;
        v50 = v45;
        do
        {
          ++v47;
          v51 = v49;
          v52 = v48;
          v53 = v19;
          do
          {
            *v50 = v51 - 1;
            *(v140[3] + 2) = v51;
            *(v140[3] + 4) = v51;
            *(v140[3] + 6) = v52;
            v50 = (v140[3] + 8);
            v140[3] = v50;
            ++v52;
            ++v51;
            --v53;
          }

          while (v53);
          v48 += v23;
          v49 += v23;
        }

        while (v47 != v20);
        v54 = 0;
        v55 = v20;
        do
        {
          *v50 = v54;
          v54 += v23;
          *(v140[3] + 2) = v54;
          v50 = (v140[3] + 4);
          v140[3] = v50;
          --v55;
        }

        while (v55);
        v56 = v20 * (v19 + 1);
        v57 = v19;
        do
        {
          *v50 = v56;
          *(v140[3] + 2) = v56 + 1;
          v50 = (v140[3] + 4);
          v140[3] = v50;
          ++v56;
          --v57;
        }

        while (v57);
        if (v17 > 0.0)
        {
          v124[0] = MEMORY[0x1E69E9820];
          v124[1] = 0x40000000;
          v125 = sub_1AF228F94;
          v126 = &unk_1E7A7D320;
          v127 = &v139;
          v128 = v18;
          sub_1AF228F94(v124, 0, v115, v19, 1);
          v125(v124, v19, v113, v20, v19 + 1);
          v58 = v20 * (v19 + 1);
          v125(v124, v58 + v19, v117, v19, -1);
          v125(v124, v58, v18 + v19 + v117, v20, ~v19);
          *(v140[3] - 2) = v115;
        }
      }

      else
      {
        v139 = 0;
        v140 = &v139;
        v141 = 0x2000000000;
        v142 = v45;
        v73 = v19 + 2;
        v74 = v19 + 1;
        v75 = 1;
        v76 = v45;
        do
        {
          ++v47;
          v77 = v75;
          v78 = v73;
          v79 = v19;
          do
          {
            *v76 = v77 - 1;
            *(v140[3] + 4) = v77;
            *(v140[3] + 8) = v77;
            *(v140[3] + 12) = v78;
            v76 = (v140[3] + 16);
            v140[3] = v76;
            ++v78;
            ++v77;
            --v79;
          }

          while (v79);
          v73 += v74;
          v75 += v74;
        }

        while (v47 != v20);
        v80 = 0;
        v81 = v20;
        do
        {
          *v76 = v80;
          v80 += v19 + 1;
          *(v140[3] + 4) = v80;
          v76 = (v140[3] + 8);
          v140[3] = v76;
          --v81;
        }

        while (v81);
        v82 = v20 + v20 * v19;
        v83 = v19;
        do
        {
          *v76 = v82++;
          *(v140[3] + 4) = v82;
          v76 = (v140[3] + 8);
          v140[3] = v76;
          --v83;
        }

        while (v83);
        if (v17 > 0.0)
        {
          v119[0] = MEMORY[0x1E69E9820];
          v119[1] = 0x40000000;
          v120 = sub_1AF22908C;
          v121 = &unk_1E7A7D348;
          v122 = &v139;
          v123 = v18;
          sub_1AF22908C(v119, 0, v115, v19, 1);
          v120(v119, v19, v113, v20, v19 + 1);
          v84 = v20 * (v19 + 1);
          v120(v119, v84 + v19, v117, v19, -1);
          v120(v119, v84, v18 + v19 + v117, v20, ~v19);
          *(v140[3] - 4) = v115;
        }
      }

      _Block_object_dispose(&v139, 8);
    }

    else
    {
      if (a1)
      {
        LODWORD(v28) = 0;
        v33 = 0;
        v44 = 0;
        v62 = 0;
        goto LABEL_102;
      }

      v112 = v18 + v19 + v24;
      v114 = (v20 + 1) * (v19 + 1);
      v116 = v18 + v20 + v26;
      v27 = 4 * (v25 + v20);
      if (v17 <= 0.0)
      {
        v27 = 0;
      }

      v110 = v20 * v19;
      v28 = v27 + 2 * v20 * v19;
      v29 = 3 * v28;
      if (v28 >= 21846)
      {
        v30 = 4;
      }

      else
      {
        v30 = 2;
      }

      v118 = v30;
      v31 = 1;
      if (v28 >= 21846)
      {
        v31 = 2;
      }

      v111 = v29 << v31;
      v32 = malloc_type_malloc(v29 << v31, 0x100004077774924uLL);
      v33 = v32;
      if (v28 > 21845)
      {
        v92 = 0;
        v139 = 0;
        v140 = &v139;
        v141 = 0x2000000000;
        v142 = v32;
        v93 = v19 + 1;
        v94 = 1;
        v95 = v19 + 1;
        v96 = v32;
        do
        {
          ++v92;
          v97 = v94;
          v98 = v19;
          v99 = v95;
          do
          {
            *v96 = v97 - 1;
            *(v140[3] + 4) = v97;
            *(v140[3] + 8) = v99 + 1;
            *(v140[3] + 12) = v97 - 1;
            v100 = v140;
            v101 = v140[3];
            v101[4] = v99 + 1;
            v101[5] = v99;
            v96 = (v101 + 6);
            v100[3] = v96;
            ++v97;
            ++v99;
            --v98;
          }

          while (v98);
          v95 += v93;
          v94 += v93;
        }

        while (v92 != v20);
        if (v17 > 0.0)
        {
          v129[0] = MEMORY[0x1E69E9820];
          v129[1] = 0x40000000;
          v130 = sub_1AF228E8C;
          v131 = &unk_1E7A7D2F8;
          v132 = &v139;
          v133 = v18;
          sub_1AF228E8C(v129, 0, v114, v19, 1);
          *&v33[24 * v110 + 4] = sub_1AF1AE6EC(v21) - 1;
          v130(v129, v19, v112, v20, v19 + 1);
          v102 = v20 * (v19 + 1);
          v130(v129, v102 + v19, v116, v19, -1);
          v130(v129, v102, v25 + v116, v20, ~v19);
        }
      }

      else
      {
        v34 = 0;
        v139 = 0;
        v140 = &v139;
        v141 = 0x2000000000;
        v142 = v32;
        v35 = 1;
        v36 = v19 + 1;
        v37 = v32;
        do
        {
          ++v34;
          v38 = v35;
          v39 = v19;
          v40 = v36;
          do
          {
            *v37 = v38 - 1;
            *(v140[3] + 2) = v38;
            *(v140[3] + 4) = v40 + 1;
            *(v140[3] + 6) = v38 - 1;
            *(v140[3] + 8) = v40 + 1;
            *(v140[3] + 10) = v40;
            v37 = (v140[3] + 12);
            v140[3] = v37;
            ++v38;
            ++v40;
            --v39;
          }

          while (v39);
          v36 += v23;
          v35 += v23;
        }

        while (v34 != v20);
        if (v17 > 0.0)
        {
          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 0x40000000;
          v135 = sub_1AF228D8C;
          v136 = &unk_1E7A7D2D0;
          v137 = &v139;
          v138 = v18;
          sub_1AF228D8C(v134, 0, v114, v19, 1);
          *&v33[12 * v110 + 2] = sub_1AF1AE6EC(v21) - 1;
          v135(v134, v19, v112, v20, v19 + 1);
          v41 = v20 * (v19 + 1);
          v135(v134, v41 + v19, v116, v19, -1);
          v135(v134, v41, v25 + v116, v20, ~v19);
        }
      }

      _Block_object_dispose(&v139, 8);
      v44 = v111;
    }

    v62 = v118;
  }

LABEL_102:
  v103 = *MEMORY[0x1E695E480];
  v104 = CFDataCreate(*MEMORY[0x1E695E480], v33, v44);
  sub_1AF1A72A0(v22, v28, v104, v62);
  CFRelease(v104);
  free(v33);
  BYTE2(v139) = 0;
  LOWORD(v139) = 0;
  v105 = MEMORY[0x1E695E9C0];
  v106 = CFArrayCreate(v103, &values, 3, MEMORY[0x1E695E9C0]);
  v107 = CFArrayCreate(v103, &v143, 1, v105);
  v108 = sub_1AF27B22C(v106, v107, &v139);
  CFRelease(v107);
  CFRelease(v106);
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  if (v145)
  {
    CFRelease(v145);
    v145 = 0;
  }

  if (v146)
  {
    CFRelease(v146);
    v146 = 0;
  }

  if (v143)
  {
    CFRelease(v143);
    v143 = 0;
  }

  sub_1AF1A56EC(v108, @"Plane");
  return v108;
}

uint64_t sub_1AF228920(int a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9)
{
  v69 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2000000000;
  v66 = 0;
  v16 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1 == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v19 = a5 + (a7 * -2.0);
  v35 = a6 + (a7 * -2.0);
  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = a2;
    while (a2 < 0)
    {
LABEL_16:
      if (v20++ >= a3)
      {
        goto LABEL_17;
      }
    }

    v22 = (v35 * v20) / a3;
    *&v23 = 1.0 - ((v22 + a7) / a6);
    *&v24 = a9 + v35 * -0.5 + v22;
    v36 = v24;
    v37 = v23;
    v25 = -1;
    while (1)
    {
      if (a1 == 3)
      {
        *bytes = (((v19 * (v25 + 1)) / v21) + a7) / a5;
        v27 = v37;
        goto LABEL_14;
      }

      if (a1 == 1)
      {
        break;
      }

      if (!a1)
      {
        v26 = a8 + v19 * -0.5 + ((v19 * (v25 + 1)) / v21);
        *bytes = v26;
        v27 = v36;
LABEL_14:
        v68 = v27;
      }

      ++*(v64 + 6);
      CFDataAppendBytes(Mutable, bytes, (4 * v18));
      if (++v25 >= a2)
      {
        goto LABEL_16;
      }
    }

    *bytes = 0.0;
    v27 = 0x3F80000000000000;
    goto LABEL_14;
  }

LABEL_17:
  if (a7 > 0.0)
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 0x40000000;
    v50 = sub_1AF229188;
    v51 = &unk_1E7A7D370;
    v62 = a1;
    v55 = a8;
    v56 = a7;
    v29 = 1.57079633 / a4;
    v57 = v29;
    v58 = a9;
    v59 = a5;
    v60 = a6;
    v52 = &v63;
    v53 = a4;
    v54 = Mutable;
    v61 = v18;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v39 = sub_1AF229334;
    v40 = &unk_1E7A7D398;
    v48 = a1;
    v43 = a8;
    v44 = a9;
    v45 = a5;
    v46 = a6;
    v41 = &v63;
    v42 = Mutable;
    v47 = v18;
    sub_1AF229188(v49, -3.14159265, v19 * -0.5, v35 * -0.5);
    (sub_1AF229334)(v38, v19 * -0.5, a6 * -0.5, v19, 0.0);
    v50(v49, -1.57079633, v19 * 0.5, v35 * -0.5);
    (v39)(v38, a5 * 0.5, v35 * -0.5, 0.0, v35);
    v50(v49, 0.0, v19 * 0.5, v35 * 0.5);
    v39(v38, v19 * 0.5, a6 * 0.5, -v19, 0.0, a2);
    v50(v49, 1.57079633, v19 * -0.5, v35 * 0.5);
    v39(v38, a5 * -0.5, v35 * 0.5, 0.0, -v35, a3);
  }

  Copy = CFDataCreateCopy(v16, Mutable);
  v31 = sub_1AF1ADBE4(Copy, a1, *(v64 + 6), v18, 1);
  CFRelease(Mutable);
  CFRelease(Copy);
  _Block_object_dispose(&v63, 8);
  return v31;
}

uint64_t sub_1AF228D8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v6 = a3;
    v7 = *(result + 40);
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v6 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v6;
      *(*(*(result + 32) + 8) + 24) += 6;
      ++v6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v8 = v5 + a3;
    do
    {
      *(*(*(*(result + 32) + 8) + 24) + 10) = a2;
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v8 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v8;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v8;
      a2 += a5;
      *(*(*(*(result + 32) + 8) + 24) + 8) = a2;
      *(*(*(result + 32) + 8) + 24) += 12;
      ++v8;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t sub_1AF228E8C(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v6 = a3;
    v7 = *(result + 40);
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v6 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v6;
      *(*(*(result + 32) + 8) + 24) += 12;
      ++v6;
      --v7;
    }

    while (v7);
  }

  if (a4 >= 1)
  {
    v8 = a5 + a2;
    v9 = v5 + a3;
    do
    {
      *(*(*(*(result + 32) + 8) + 24) + 20) = a2;
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v9 - 1;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v9;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v9;
      *(*(*(*(result + 32) + 8) + 24) + 16) = v8;
      *(*(*(result + 32) + 8) + 24) += 24;
      v8 += a5;
      ++v9;
      a2 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t sub_1AF228F94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 40);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = a3;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v7 + 1;
      *(*(*(result + 32) + 8) + 24) += 8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = v5 + a3;
    v9 = a4 + 1;
    v10 = v8 + 0xFFFF;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 2) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 6) = v8;
      *(*(*(result + 32) + 8) + 24) += 8;
      ++v10;
      a2 += a5;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1AF22908C(uint64_t result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 40);
  if (v5 >= 2)
  {
    v6 = v5 - 1;
    v7 = a3;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v7;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v7++;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v7;
      *(*(*(result + 32) + 8) + 24) += 16;
      --v6;
    }

    while (v6);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v8 = v5 + a3;
    v9 = a4 + 1;
    v10 = v8 - 1;
    do
    {
      **(*(*(result + 32) + 8) + 24) = a2;
      *(*(*(*(result + 32) + 8) + 24) + 8) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 4) = v10;
      *(*(*(*(result + 32) + 8) + 24) + 12) = v8;
      *(*(*(result + 32) + 8) + 24) += 16;
      ++v10;
      a2 += a5;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_1AF229188(uint64_t a1, double a2, float a3, float a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) >= 2)
  {
    v8 = a3;
    v9 = a4;
    v10 = 1;
    while (1)
    {
      v11 = *(a1 + 84);
      if (v11 == 3)
      {
        break;
      }

      if (v11 == 1)
      {
        *bytes = 0;
        v17 = 0x3F80000000000000;
        goto LABEL_10;
      }

      if (!*(a1 + 84))
      {
        v12 = (*(a1 + 56) + a3);
        v13 = *(a1 + 60);
        v14 = __sincos_stret((*(a1 + 64) * v10) + a2);
        v15 = v12 + v13 * v14.__cosval;
        *bytes = v15;
        v16 = (*(a1 + 68) + a4) + v13 * v14.__sinval;
        goto LABEL_9;
      }

LABEL_11:
      ++*(*(*(a1 + 32) + 8) + 24);
      CFDataAppendBytes(*(a1 + 48), bytes, 4 * *(a1 + 80));
      if (*(a1 + 40) <= ++v10)
      {
        return;
      }
    }

    v18 = *(a1 + 60);
    v19 = __sincos_stret((*(a1 + 64) * v10) + a2);
    v20 = *(a1 + 76);
    v21 = (v8 + v18 * v19.__cosval) / *(a1 + 72) + 0.5;
    *bytes = v21;
    v16 = 1.0 - (v9 + v18 * v19.__sinval) / v20 + -0.5;
LABEL_9:
    *&v22 = v16;
    v17 = v22;
LABEL_10:
    v24 = v17;
    goto LABEL_11;
  }
}

void sub_1AF229334(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a6 + 1.0;
  if ((a6 + 1.0) > 0.0)
  {
    v13 = 0.0;
    v14 = 1;
    while (1)
    {
      v15 = *(a1 + 68);
      if (v15 == 3)
      {
        break;
      }

      if (v15 == 1)
      {
        *bytes = 0.0;
        v19 = 0x3F80000000000000;
        goto LABEL_10;
      }

      if (!*(a1 + 68))
      {
        v16 = *(a1 + 52);
        *bytes = ((v13 * a4) / a6) + (*(a1 + 48) + a2);
        v17 = v16 + a3;
        v18 = (v13 * a5) / a6;
        goto LABEL_9;
      }

LABEL_11:
      v21 = *(a1 + 40);
      ++*(*(*(a1 + 32) + 8) + 24);
      CFDataAppendBytes(v21, bytes, 4 * *(a1 + 64));
      v13 = v14++;
      if (v6 <= v13)
      {
        return;
      }
    }

    v20 = *(a1 + 60);
    *bytes = ((((v13 * a4) / a6) + a2) / *(a1 + 56)) + 0.5;
    v18 = 1.0 - ((((v13 * a5) / a6) + a3) / v20);
    v17 = -0.5;
LABEL_9:
    HIDWORD(v19) = 0;
    *&v19 = v18 + v17;
LABEL_10:
    v23 = v19;
    goto LABEL_11;
  }
}

double sub_1AF2294A4(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  Mutable = v4;
  if (!v4)
  {
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.0, 1.0);
    CGPathAddArcToPoint(Mutable, 0, 1.0, 1.0, 1.0, 0.0, 1.0);
  }

  v17 = 0;
  v18 = 0uLL;
  v19 = 0;
  v6 = *(a1 + 4) * 0.01;
  v7 = sub_1AF222674(Mutable, &v17, v6, INFINITY);
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v9 = v7[2];
  if (v9 < 2)
  {
    v9 = 0;
    v11 = 0;
LABEL_9:
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEB01C(v12);
    }

    v10 = 0;
    goto LABEL_12;
  }

  v10 = *v7;
  v11 = v7[3];
  v18 = *(v7 + 1);
  v19 = *(v7 + 4);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (*(v10 + 68) == 1)
  {
    *(v10 + 68) = 0;
    *(v10 + 16) = *(v10 + 32);
    --v11;
  }

  v13 = v10 + 72 * (v9 - 1);
  v15 = *(v13 + 68);
  v14 = (v13 + 68);
  if (v15 == 1)
  {
    *v14 = 0;
    --v11;
  }

LABEL_16:
  if (!v4)
  {
    CGPathRelease(Mutable);
  }

  *(a2 + 32) = v10;
  *(a2 + 40) = v9;
  *(a2 + 44) = v11;
  result = *&v18;
  *(a2 + 48) = v18;
  *(a2 + 64) = v19;
  *(a2 + 72) = v8;
  *(a2 + 28) = v17;
  return result;
}

int32x2_t sub_1AF229668(unsigned int a1, unsigned int a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v8 = 12 * a1;
    *(a3 + 96) = malloc_type_malloc(v8, 0x10000403E1C8BA9uLL);
    *(a3 + 104) = malloc_type_malloc(v8, 0x10000403E1C8BA9uLL);
    v9 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  }

  else
  {
    v9 = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
  }

  *(a3 + 88) = v9;
  *(a3 + 80) = 0;
  if (a2)
  {
    v10 = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 112) = v10;
  *(a3 + 82) = 0;
  *(a3 + 120) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 24) = a4;
  *a3 = xmmword_1AFE42EA0;
  result = vdup_n_s32(0xC9742400);
  *(a3 + 16) = result;
  return result;
}

void sub_1AF229774(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v9 = a2;
  v10 = a1;
  v246 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 24);
  v239[0] = MEMORY[0x1E69E9820];
  v239[1] = 0x40000000;
  v240 = sub_1AF22A8B0;
  v241 = &unk_1E7A7D3B8;
  v242 = a3;
  v243 = a4;
  v12 = *(a2 + 8);
  if (*(a3 + 24) == 1)
  {
    v13 = v11;
    *(a3 + 120) = v11;
    v14 = 2 * v11;
    *(a3 + 128) = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
    if (*(v9 + 8) == 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
    }

    v16 = 0;
  }

  else
  {
    v16 = *(a3 + 120);
    v13 = v11;
    v17 = v16 + v11;
    *(a3 + 120) = v17;
    *(a3 + 128) = malloc_type_realloc(*(a3 + 128), 2 * v17, 0x1000040BDFB0063uLL);
    if (*(v9 + 8) == 0.0)
    {
      v15 = 0;
    }

    else
    {
      v15 = malloc_type_realloc(*(a3 + 136), 2 * *(a3 + 120), 0x1000040BDFB0063uLL);
    }
  }

  *(a3 + 136) = v15;
  v216 = v12 * 0.5;
  if (v13)
  {
    v19 = *(a3 + 96);
    v18 = *(a3 + 104);
    v20 = *(a3 + 128);
    v21 = v13;
    v22 = *(a3 + 80);
    v23 = *(v10 + 32);
    v24 = 48;
    if (*(v9 + 16) == 2)
    {
      v24 = 0;
    }

    v25 = 56;
    if (*(v9 + 16) == 2)
    {
      v25 = 8;
    }

    v26 = v16;
    do
    {
      v27 = v18 + 12 * v22;
      *v27 = 0;
      *(v27 + 8) = 1065353216;
      v28 = (v19 + 12 * v22);
      v29 = *v23++;
      v30 = a5 + *(v29 + v24);
      v31.f32[0] = a6 + *(v29 + v25);
      v28->f32[0] = v30;
      v28->i32[1] = v31.i32[0];
      v28[1].f32[0] = v12 * 0.5;
      if (*a3 <= v30)
      {
        v30 = *a3;
      }

      *a3 = v30;
      v31.f32[1] = v12 * 0.5;
      *(a3 + 4) = vbsl_s8(vcgt_f32(*(a3 + 4), v31), v31, *(a3 + 4));
      v32 = v28[1].f32[0];
      if (v32 <= *(a3 + 20))
      {
        v32 = *(a3 + 20);
      }

      *(a3 + 12) = vbsl_s8(vcgt_f32(*v28, *(a3 + 12)), *v28, *(a3 + 12));
      *(a3 + 20) = v32;
      *&v20[2 * v26] = v22;
      v22 = *(a3 + 80) + 1;
      *(a3 + 80) = v22;
      ++v26;
      --v21;
    }

    while (v21);
  }

  else
  {
    v20 = *(a3 + 128);
  }

  v240(v239, 0, *(a3 + 120) / 3uLL, v20, *(a3 + 120));
  if (*(v9 + 8) > 0.0)
  {
    if (v13)
    {
      v34 = *(a3 + 96);
      v33 = *(a3 + 104);
      v35 = *(a3 + 136);
      v36 = v13;
      v37 = *(a3 + 80);
      v38 = *(v10 + 32);
      v39 = 48;
      if (*(v9 + 16) == 1)
      {
        v39 = 0;
      }

      v40 = 56;
      if (*(v9 + 16) == 1)
      {
        v40 = 8;
      }

      v41 = v13 + v16 - 1;
      do
      {
        v42 = v33 + 12 * v37;
        *v42 = 0;
        *(v42 + 8) = -1082130432;
        v43 = (v34 + 12 * v37);
        v44 = *v38++;
        v45 = a5 + *(v44 + v39);
        v46.f32[0] = a6 + *(v44 + v40);
        v43->f32[0] = v45;
        v43->i32[1] = v46.i32[0];
        v43[1].f32[0] = -v216;
        if (*a3 <= v45)
        {
          v45 = *a3;
        }

        *a3 = v45;
        v46.f32[1] = -v216;
        *(a3 + 4) = vbsl_s8(vcgt_f32(*(a3 + 4), v46), v46, *(a3 + 4));
        v47 = v43[1].f32[0];
        if (v47 <= *(a3 + 20))
        {
          v47 = *(a3 + 20);
        }

        *(a3 + 12) = vbsl_s8(vcgt_f32(*v43, *(a3 + 12)), *v43, *(a3 + 12));
        *(a3 + 20) = v47;
        *&v35[2 * v41] = v37;
        v37 = *(a3 + 80) + 1;
        *(a3 + 80) = v37;
        --v41;
        --v36;
      }

      while (v36);
    }

    else
    {
      v35 = *(a3 + 136);
    }

    v240(v239, 0, *(a3 + 120) / 3uLL, v35, *(a3 + 120));
  }

  if (v216 > 0.0)
  {
    v48 = *(v10 + 48);
    if (v48)
    {
      v49 = 0;
      v50 = 0;
      do
      {
        v51 = *(v10 + 40) + 32 * v49;
        v52 = *(v51 + 8);
        if (v52)
        {
          v53 = (*v51 + 8);
          do
          {
            v54 = *v53;
            v53 += 10;
            v50 += v54;
            --v52;
          }

          while (v52);
        }

        ++v49;
      }

      while (v49 != v48);
      LODWORD(v48) = 6 * v50;
    }

    if (*(a3 + 24) == 1)
    {
      *(a3 + 144) = 0;
      v55 = malloc_type_malloc(2 * v48, 0x1000040BDFB0063uLL);
    }

    else
    {
      v55 = malloc_type_realloc(*(a3 + 152), 2 * (*(a3 + 144) + v48), 0x1000040BDFB0063uLL);
    }

    v56 = v55;
    *(a3 + 152) = v55;
    v57 = *(v10 + 48);
    if (v57)
    {
      for (i = 0; i < v57; ++i)
      {
        v59 = *(v10 + 40) + 32 * i;
        v60 = *(v59 + 8);
        if (v60)
        {
          v61 = 0;
          v62 = *v59;
          do
          {
            v63 = (v62 + 40 * v61);
            v64 = *(v63 + 2);
            v65 = *(a3 + 80);
            if (v64)
            {
              v66 = *v63;
              v67 = *(a3 + 96);
              v68 = v64 - 1;
              v69 = *(a3 + 80);
              do
              {
                v70 = v66 + 72 * v68;
                v71 = *(v70 + 16);
                v72 = a5 + *v70;
                v73 = a6 + *(v70 + 8);
                v74 = *(v9 + 16);
                if (v74 == 2)
                {
                  v75 = 0.0;
                }

                else
                {
                  v75 = *(v70 + 64);
                }

                v76 = v216 - v75;
                v77 = *(v70 + 64) - v216;
                if (v74 == 1)
                {
                  v77 = -v216;
                }

                if (*(v70 + 68))
                {
                  v78 = v69 + 1;
                  v79 = v69 + 2;
                  v80 = (v67 + 12 * v69);
                  *v80 = v72;
                  v80[1] = v73;
                  v80[2] = v76;
                  *(a3 + 80) = v79;
                  v81 = (v67 + 12 * v78);
                  *v81 = v72;
                  v81[1] = v73;
                  v81[2] = v77;
                  v82 = *(a3 + 104) + 12 * v79;
                  *(v82 - 12) = vcvt_f32_f64(*(v70 + 32));
                  *(v82 - 4) = 0;
                  *(v82 - 16) = 0;
                  *(v82 - 24) = *(v82 - 12);
                  v69 = *(a3 + 80);
                  v67 = *(a3 + 96);
                }

                v83 = *(a3 + 152);
                v84 = *(a3 + 144);
                *(v83 + 2 * v84) = v69;
                *(v83 + 2 * (v84 + 1)) = *(a3 + 80) + 1;
                *(v83 + 2 * (v84 + 2)) = *(a3 + 80) + 3;
                v85 = *(a3 + 80);
                *(v83 + 2 * (v84 + 3)) = v85;
                *(v83 + 2 * (v84 + 4)) = v85 + 3;
                v86 = *(a3 + 80) + 2;
                *(a3 + 144) = v84 + 6;
                *(v83 + 2 * (v84 + 5)) = v86;
                v87 = *(a3 + 80);
                LOWORD(v83) = v87 + 1;
                v88 = (v67 + 12 * v87);
                *v88 = v72;
                v88[1] = v73;
                v88[2] = v76;
                v87 += 2;
                *(a3 + 80) = v87;
                v89 = (v67 + 12 * v83);
                *v89 = v72;
                v89[1] = v73;
                v89[2] = v77;
                v90 = *(a3 + 104) + 12 * v87;
                *(v90 - 12) = vcvt_f32_f64(v71);
                *(v90 - 4) = 0;
                *(v90 - 16) = 0;
                *(v90 - 24) = *(v90 - 12);
                v67 = *(a3 + 96);
                v69 = *(a3 + 80);
                v91 = v67 + 12 * v69;
                v92 = *(v91 - 16);
                if (v92 >= *(a3 + 8))
                {
                  v92 = *(a3 + 8);
                }

                v93 = *(a3 + 20);
                v94 = vbsl_s8(vcgt_f32(*a3, *(v91 - 24)), *(v91 - 24), *a3);
                *a3 = v94;
                *(a3 + 8) = v92;
                if (*(v91 - 16) > v93)
                {
                  v93 = *(v91 - 16);
                }

                v95 = vbsl_s8(vcgt_f32(*(v91 - 24), *(a3 + 12)), *(v91 - 24), *(a3 + 12));
                *(a3 + 12) = v95;
                *(a3 + 20) = v93;
                v96 = vbsl_s8(vcgt_f32(v94, *(v91 - 12)), *(v91 - 12), v94);
                if (*(v91 - 4) < v92)
                {
                  v92 = *(v91 - 4);
                }

                *a3 = v96;
                *(a3 + 8) = v92;
                v97 = vbsl_s8(vcgt_f32(*(v91 - 12), v95), *(v91 - 12), v95);
                if (*(v91 - 4) > v93)
                {
                  v93 = *(v91 - 4);
                }

                *(a3 + 12) = v97;
                *(a3 + 20) = v93;
                --v68;
                --v64;
              }

              while (v64);
              v56 = *(a3 + 152);
            }

            v98 = *(a3 + 144);
            *&v56[2 * (v98 - 1)] = v65;
            v99 = v65 + 1;
            *&v56[2 * (v98 - 4)] = v99;
            *&v56[2 * (v98 - 2)] = v99;
            ++v61;
          }

          while (v61 != v60);
          v57 = *(v10 + 48);
        }
      }
    }

    v240(v239, 0, *(a3 + 144) / 3uLL, v56, *(a3 + 144));
  }

  if (*(v9 + 12) > 0.0)
  {
    v100 = *(v10 + 48);
    if (v100)
    {
      v101 = 0;
      v102 = 0;
      do
      {
        v103 = *(v10 + 40) + 32 * v101;
        v104 = *(v103 + 8);
        if (v104)
        {
          v105 = (*v103 + 8);
          do
          {
            v106 = *v105;
            v105 += 10;
            v102 += v106;
            --v104;
          }

          while (v104);
        }

        ++v101;
      }

      while (v101 != v100);
    }

    else
    {
      v102 = 0;
    }

    if (*(a3 + 24) == 1)
    {
      v107 = (6 * *(a3 + 40) - 6) * v102;
      *(a3 + 160) = v107;
      *(a3 + 168) = malloc_type_malloc(2 * v107, 0x1000040BDFB0063uLL);
      v108 = malloc_type_malloc(2 * *(a3 + 160), 0x1000040BDFB0063uLL);
      v109 = 0;
    }

    else
    {
      v109 = *(a3 + 160);
      v110 = v109 + (6 * *(a3 + 40) - 6) * v102;
      *(a3 + 160) = v110;
      *(a3 + 168) = malloc_type_realloc(*(a3 + 168), 2 * v110, 0x1000040BDFB0063uLL);
      v108 = malloc_type_realloc(*(a3 + 176), 2 * *(a3 + 160), 0x1000040BDFB0063uLL);
    }

    *(a3 + 176) = v108;
    v232[0] = MEMORY[0x1E69E9820];
    v232[1] = 0x40000000;
    v233 = sub_1AF22A964;
    v234 = &unk_1E7A7D3D8;
    v235 = a3;
    v236 = a5;
    v237 = a6;
    v238 = v12 * 0.5;
    v195 = v10;
    if (*(v9 + 16) == 2)
    {
      free(*(a3 + 168));
    }

    else
    {
      v194 = v9;
      v111 = *(v10 + 48);
      if (v111)
      {
        v112 = 0;
        v113 = 0;
        do
        {
          v114 = *(v195 + 40) + 32 * v112;
          v200 = *(v114 + 8);
          if (v200)
          {
            v115 = 0;
            v196 = *v114;
            v198 = v112;
            LODWORD(v116) = *(a3 + 40);
            do
            {
              if (v116)
              {
                v117 = 0;
                v202 = v115;
                v118 = (v196 + 40 * v115);
                v119 = *v118;
                v120 = *(v118 + 2);
                v121 = *(v118 + 3);
                v204 = v120 - 1;
                v214 = v120;
                do
                {
                  v217 = v117;
                  v122 = *(a3 + 32) + 72 * v117;
                  v123 = *v122;
                  v124 = *(v122 + 8);
                  v210 = *(v122 + 40);
                  v212 = *(v122 + 32);
                  v206 = *(a3 + 80);
                  v208 = *(v122 + 68);
                  if (v120)
                  {
                    v126 = *(v122 + 16);
                    v125 = *(v122 + 24);
                    v127 = v204;
                    do
                    {
                      v128 = (v119 + 72 * v127);
                      v231 = *v128;
                      v129 = *(v128 + 2);
                      v130 = *(v128 + 3);
                      v131 = *(v128 + 4);
                      v132 = *(v128 + 5);
                      v244 = v128[3];
                      v245 = *(v128 + 16);
                      v133 = *(v128 + 68);
                      v229 = *(v128 + 69);
                      v230 = *(v128 + 71);
                      if (v133)
                      {
                        v219 = v231;
                        v220 = v129;
                        v221 = v130;
                        v222 = v131;
                        v223 = v132;
                        v224 = v244;
                        v225 = v245;
                        v226 = v133;
                        v227 = v229;
                        v228 = v230;
                        (v233)(v232, &v219, v131, v132, 1.0, v123, v124, v126, v125);
                      }

                      if (v217)
                      {
                        v134 = *(a3 + 80);
                        v135 = *(a3 + 168);
                        *(v135 + 2 * (v109 + v113)) = v134;
                        *(v135 + 2 * (v109 + (v113 + 1))) = v134 - v121;
                        *(v135 + 2 * (v109 + (v113 + 2))) = *(a3 + 80) - v121 + 1;
                        v136 = *(a3 + 80);
                        *(v135 + 2 * (v109 + (v113 + 3))) = v136;
                        v137 = v136 - v121 + 1;
                        v138 = v113 + 5;
                        *(v135 + 2 * (v109 + (v113 + 4))) = v137;
                        v113 += 6;
                        *(v135 + 2 * (v109 + v138)) = *(a3 + 80) + 1;
                      }

                      v219 = v231;
                      v220 = v129;
                      v221 = v130;
                      v222 = v131;
                      v223 = v132;
                      v224 = v244;
                      v225 = v245;
                      v226 = v133;
                      v227 = v229;
                      v228 = v230;
                      (v233)(v232, &v219, v129, v130, 1.0, v123, v124, v126, v125);
                      v139 = *(a3 + 96) + 12 * *(a3 + 80);
                      v140 = *(v139 - 4);
                      if (v140 >= *(a3 + 8))
                      {
                        v140 = *(a3 + 8);
                      }

                      *a3 = vbsl_s8(vcgt_f32(*a3, *(v139 - 12)), *(v139 - 12), *a3);
                      *(a3 + 8) = v140;
                      v141 = *(v139 - 4);
                      if (v141 <= *(a3 + 20))
                      {
                        v141 = *(a3 + 20);
                      }

                      *(a3 + 12) = vbsl_s8(vcgt_f32(*(v139 - 12), *(a3 + 12)), *(v139 - 12), *(a3 + 12));
                      *(a3 + 20) = v141;
                      --v127;
                      --v120;
                    }

                    while (v120);
                  }

                  if (v217)
                  {
                    v142 = *(a3 + 168);
                    v143 = v109 + v113;
                    *(v142 + 2 * (v143 - 1)) = v206;
                    *(v142 + 2 * (v143 - 4)) = v206 - v121;
                    *(v142 + 2 * (v143 - 2)) = v206 - v121;
                  }

                  if (v214 && (v208 & 1) != 0)
                  {
                    v144 = v214;
                    v145 = v204;
                    do
                    {
                      v146 = (v119 + 72 * v145);
                      v231 = *v146;
                      v147 = *(v146 + 2);
                      v148 = *(v146 + 3);
                      v149 = *(v146 + 4);
                      v150 = *(v146 + 5);
                      v244 = v146[3];
                      v245 = *(v146 + 16);
                      v151 = *(v146 + 68);
                      v229 = *(v146 + 69);
                      v230 = *(v146 + 71);
                      v152 = v233;
                      if (v151)
                      {
                        v219 = v231;
                        v220 = v147;
                        v221 = v148;
                        v222 = v149;
                        v223 = v150;
                        v224 = v244;
                        v225 = v245;
                        v226 = v151;
                        v227 = v229;
                        v228 = v230;
                        (v233)(v232, &v219, v149, v150, 1.0, v123, v124, v212, v210);
                        v152 = v233;
                      }

                      v219 = v231;
                      v220 = v147;
                      v221 = v148;
                      v222 = v149;
                      v223 = v150;
                      v224 = v244;
                      v225 = v245;
                      v226 = v151;
                      v227 = v229;
                      v228 = v230;
                      (v152)(v232, &v219, v147, v148, 1.0, v123, v124, v212, v210);
                      --v145;
                      --v144;
                    }

                    while (v144);
                  }

                  v120 = v214;
                  v117 = v217 + 1;
                  v116 = *(a3 + 40);
                }

                while (v217 + 1 < v116);
                v112 = v198;
                v115 = v202;
              }

              ++v115;
            }

            while (v115 != v200);
            v111 = *(v195 + 48);
          }

          ++v112;
        }

        while (v112 < v111);
      }

      v240(v239, 0, *(a3 + 160) / 3uLL, *(a3 + 168), *(a3 + 160));
      v10 = v195;
      v9 = v194;
    }

    if (*(v9 + 16) == 1)
    {
      free(*(a3 + 176));
    }

    else
    {
      v153 = *(v10 + 48);
      if (v153)
      {
        v154 = 0;
        v155 = 0;
        do
        {
          v156 = *(v195 + 40) + 32 * v154;
          v201 = *(v156 + 8);
          if (v201)
          {
            v157 = 0;
            v197 = *v156;
            v199 = v154;
            LODWORD(v158) = *(a3 + 40);
            do
            {
              if (v158)
              {
                v159 = 0;
                v203 = v157;
                v160 = (v197 + 40 * v157);
                v161 = *v160;
                v163 = *(v160 + 2);
                v162 = *(v160 + 3);
                v205 = v163 - 1;
                v215 = v163;
                do
                {
                  v218 = v159;
                  v164 = *(a3 + 32) + 72 * v159;
                  v165 = *v164;
                  v166 = *(v164 + 8);
                  v211 = *(v164 + 40);
                  v213 = *(v164 + 32);
                  v207 = *(a3 + 80);
                  v209 = *(v164 + 68);
                  if (v163)
                  {
                    v168 = *(v164 + 16);
                    v167 = *(v164 + 24);
                    v169 = v205;
                    do
                    {
                      v170 = (v161 + 72 * v169);
                      v231 = *v170;
                      v171 = *(v170 + 2);
                      v172 = *(v170 + 3);
                      v173 = *(v170 + 4);
                      v174 = *(v170 + 5);
                      v244 = v170[3];
                      v245 = *(v170 + 16);
                      v175 = *(v170 + 68);
                      v229 = *(v170 + 69);
                      v230 = *(v170 + 71);
                      if (v175)
                      {
                        v219 = v231;
                        v220 = v171;
                        v221 = v172;
                        v222 = v173;
                        v223 = v174;
                        v224 = v244;
                        v225 = v245;
                        v226 = v175;
                        v227 = v229;
                        v228 = v230;
                        (v233)(v232, &v219, v173, v174, -1.0, v165, v166, v168, v167);
                      }

                      if (v218)
                      {
                        v176 = *(a3 + 80);
                        v177 = *(a3 + 176);
                        *(v177 + 2 * (v109 + v155)) = v176;
                        *(v177 + 2 * (v109 + (v155 + 1))) = v176 - v162 + 1;
                        *(v177 + 2 * (v109 + (v155 + 2))) = *(a3 + 80) - v162;
                        v178 = *(a3 + 80);
                        *(v177 + 2 * (v109 + (v155 + 3))) = v178;
                        v179 = v178 + 1;
                        v180 = v155 + 5;
                        *(v177 + 2 * (v109 + (v155 + 4))) = v179;
                        v155 += 6;
                        *(v177 + 2 * (v109 + v180)) = *(a3 + 80) - v162 + 1;
                      }

                      v219 = v231;
                      v220 = v171;
                      v221 = v172;
                      v222 = v173;
                      v223 = v174;
                      v224 = v244;
                      v225 = v245;
                      v226 = v175;
                      v227 = v229;
                      v228 = v230;
                      (v233)(v232, &v219, v171, v172, -1.0, v165, v166, v168, v167);
                      v181 = *(a3 + 96) + 12 * *(a3 + 80);
                      v182 = *(v181 - 4);
                      if (v182 >= *(a3 + 8))
                      {
                        v182 = *(a3 + 8);
                      }

                      *a3 = vbsl_s8(vcgt_f32(*a3, *(v181 - 12)), *(v181 - 12), *a3);
                      *(a3 + 8) = v182;
                      v183 = *(v181 - 4);
                      if (v183 <= *(a3 + 20))
                      {
                        v183 = *(a3 + 20);
                      }

                      *(a3 + 12) = vbsl_s8(vcgt_f32(*(v181 - 12), *(a3 + 12)), *(v181 - 12), *(a3 + 12));
                      *(a3 + 20) = v183;
                      --v169;
                      --v163;
                    }

                    while (v163);
                  }

                  if (v218)
                  {
                    v184 = *(a3 + 176);
                    v185 = v109 + v155;
                    *(v184 + 2 * (v185 - 2)) = v207;
                    *(v184 + 2 * (v185 - 1)) = v207 - v162;
                    *(v184 + 2 * (v185 - 5)) = v207 - v162;
                  }

                  if (v215 && (v209 & 1) != 0)
                  {
                    v186 = v215;
                    v187 = v205;
                    do
                    {
                      v188 = (v161 + 72 * v187);
                      v231 = *v188;
                      v189 = *(v188 + 2);
                      v190 = *(v188 + 3);
                      v191 = *(v188 + 4);
                      v192 = *(v188 + 5);
                      v244 = v188[3];
                      v245 = *(v188 + 16);
                      v193 = *(v188 + 68);
                      v229 = *(v188 + 69);
                      v230 = *(v188 + 71);
                      if (v193)
                      {
                        v219 = v231;
                        v220 = v189;
                        v221 = v190;
                        v222 = v191;
                        v223 = v192;
                        v224 = v244;
                        v225 = v245;
                        v226 = v193;
                        v227 = v229;
                        v228 = v230;
                        (v233)(v232, &v219, v191, v192, -1.0, v165, v166, v213, v211);
                      }

                      v219 = v231;
                      v220 = v189;
                      v221 = v190;
                      v222 = v191;
                      v223 = v192;
                      v224 = v244;
                      v225 = v245;
                      v226 = v193;
                      v227 = v229;
                      v228 = v230;
                      (v233)(v232, &v219, v189, v190, -1.0, v165, v166, v213, v211);
                      --v187;
                      --v186;
                    }

                    while (v186);
                  }

                  v163 = v215;
                  v159 = v218 + 1;
                  v158 = *(a3 + 40);
                }

                while (v218 + 1 < v158);
                v154 = v199;
                v157 = v203;
              }

              ++v157;
            }

            while (v157 != v201);
            v153 = *(v195 + 48);
          }

          ++v154;
        }

        while (v154 < v153);
      }

      v240(v239, 0, *(a3 + 160) / 3uLL, *(a3 + 176), *(a3 + 160));
    }
  }
}

void sub_1AF22A8B0(uint64_t a1, char a2, int a3, UInt8 *bytes, unsigned int a5)
{
  if (*(*(a1 + 32) + 24) || *(a1 + 40))
  {
    v9 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 2 * a5);
    v10 = sub_1AF1A6834();
    sub_1AF1A6A70(v10, a2, a3, v9, 2);
    if (v9)
    {
      CFRelease(v9);
    }

    free(bytes);
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    v13 = *(v11 + 82);
    *(v11 + 82) = v13 + 1;
    *(v12 + 8 * v13) = v10;
  }
}

float64_t sub_1AF22A964(uint64_t a1, uint64_t a2, float64x2_t a3, float64_t a4, float a5, double a6, double a7, double a8, double a9)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 80);
  v11 = (*(v9 + 96) + 12 * v10);
  v12 = *(v9 + 104) + 12 * v10;
  v13 = (*(a1 + 56) - *(a2 + 64)) + a6 * *(a2 + 64);
  *v11 = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(vaddq_f64(*(a1 + 40), *a2), a7), vaddq_f64(*(a2 + 48), *(a1 + 40)), 1.0 - a7));
  v11[1].f32[0] = v13 * a5;
  v14 = a8 * a5;
  a3.f64[1] = a4;
  *&a3.f64[0] = vcvt_f32_f64(vmulq_n_f64(a3, a9));
  *v12 = a3.f64[0];
  *(v12 + 8) = v14;
  *(v9 + 80) = v10 + 1;
  return a3.f64[0];
}

uint64_t sub_1AF22A9F8(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a1 + 28))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(a1 + 72) + v2);
      v5 = *v4;
      v6 = v4[1];
      v51 = *(v4 + 4);
      *values = v5;
      *cf = v6;
      sub_1AF22320C(values);
      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 28));
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 80);
  if (*(a1 + 80))
  {
    v9 = *a1;
    v10 = *(a1 + 4);
    v11 = *(a1 + 8);
    v12 = *(a1 + 12) - *a1;
    v13 = *(a1 + 16) - v10;
    v14 = *(a1 + 20) - v11;
    v15 = (*(a1 + 96) + 8);
    v16 = (*(a1 + 88) + 4);
    v17 = (*(a1 + 104) + 4);
    v18 = *(a1 + 80);
    do
    {
      v20 = *(v15 - 2);
      v19 = *(v15 - 1);
      v21 = *v15;
      v22 = *(v17 - 1);
      v23 = v17[1];
      v24 = fabsf(v22);
      v25 = fabsf(*v17);
      v26 = fabsf(v23);
      if (v24 <= v25)
      {
        v29 = (v20 - v9) / v12;
        if (v25 <= v26)
        {
          v30 = v23 <= 0.0;
          v31 = 1.0 - ((v19 - v10) / v13);
        }

        else
        {
          v30 = *v17 <= 0.0;
          v31 = (v21 - v11) / v14;
        }

        if (v30)
        {
          v33 = 1.0 - v29;
        }

        else
        {
          v33 = v29;
        }
      }

      else
      {
        if (v24 <= v26)
        {
          v27 = (v20 - v9) / v12;
          v28 = v23 <= 0.0;
        }

        else
        {
          v27 = (v21 - v11) / v14;
          v28 = v22 <= 0.0;
        }

        v32 = 1.0 - ((v19 - v10) / v13);
        if (v28)
        {
          v33 = 1.0 - v27;
        }

        else
        {
          v33 = v27;
        }

        v31 = v32;
      }

      *(v16 - 1) = v33;
      *v16 = v31;
      v15 += 3;
      v16 += 2;
      v17 += 3;
      --v18;
    }

    while (v18);
    v34 = 12 * v8;
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v34);
  CFDataAppendBytes(Mutable, *(a1 + 96), 12 * *(a1 + 80));
  values[0] = sub_1AF1ADBE4(Mutable, 0, *(a1 + 80), 3, 1);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v37 = CFDataCreateMutable(v35, 12 * *(a1 + 80));
  CFDataAppendBytes(v37, *(a1 + 104), 12 * *(a1 + 80));
  values[1] = sub_1AF1ADBE4(v37, 1, *(a1 + 80), 3, 1);
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = CFDataCreateMutable(v35, 8 * *(a1 + 80));
  CFDataAppendBytes(v38, *(a1 + 88), 8 * *(a1 + 80));
  cf[0] = sub_1AF1ADBE4(v38, 3, *(a1 + 80), 2, 1);
  if (v38)
  {
    CFRelease(v38);
  }

  free(*(a1 + 104));
  free(*(a1 + 96));
  free(*(a1 + 88));
  v48 = 0;
  v47 = 0;
  v39 = MEMORY[0x1E695E9C0];
  v40 = CFArrayCreate(v35, values, 3, MEMORY[0x1E695E9C0]);
  v41 = CFArrayCreate(v35, *(a1 + 112), *(a1 + 82), v39);
  v42 = *(a1 + 82);
  if (*(a1 + 82))
  {
    v43 = 0;
    do
    {
      v44 = *(*(a1 + 112) + 8 * v43);
      if (v44)
      {
        CFRelease(v44);
        *(*(a1 + 112) + 8 * v43) = 0;
        v42 = *(a1 + 82);
      }

      ++v43;
    }

    while (v43 < v42);
  }

  free(*(a1 + 112));
  v45 = sub_1AF27B22C(v40, v41, &v47);
  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (values[0])
  {
    CFRelease(values[0]);
    values[0] = 0;
  }

  if (values[1])
  {
    CFRelease(values[1]);
    values[1] = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v45;
}

uint64_t sub_1AF22AD8C(uint64_t a1, __int128 *a2)
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  v4 = a2[1];
  v19 = *a2;
  v20 = v4;
  v21 = a2[2];
  v22 = *(a2 + 6);
  sub_1AF2294A4(&v19, v23);
  if (*(a2 + 3) <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(a2 + 4);
    if (v5 == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = (v5 != 1) + 1;
    }
  }

  v7 = *(a2 + 2);
  v8 = *(a1 + 24) << (v7 > 0.0);
  if (v7 <= 0.0)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v6 + 3;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = 0;
    v12 = HIDWORD(v24) * v6 + 2 * (v7 > 0.0);
    do
    {
      v13 = *(a1 + 40) + 32 * v11;
      v14 = *(v13 + 8);
      if (v14)
      {
        v15 = (*v13 + 12);
        do
        {
          v16 = *v15;
          v15 += 10;
          v8 += v12 * v16;
          --v14;
        }

        while (v14);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  sub_1AF229668(v8, v9, v23, 0);
  v17 = a2[1];
  v19 = *a2;
  v20 = v17;
  v21 = a2[2];
  v22 = *(a2 + 6);
  sub_1AF229774(a1, &v19, v23, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
  result = sub_1AF22A9F8(v23);
  if (!result)
  {
    return sub_1AF1A2E00();
  }

  return result;
}

uint64_t sub_1AF22AEF0(uint64_t a1, __int128 *a2, uint64_t a3, float64_t a4, float64_t a5)
{
  if (a1)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    memset(v51, 0, sizeof(v51));
    v7 = a2[1];
    v47 = *a2;
    v48 = v7;
    v49 = a2[2];
    v50 = *(a2 + 6);
    sub_1AF2294A4(&v47, v51);
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    if (CFArrayGetCount(*(a1 + 24)) < 1)
    {
      v11 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v8 > 0.0;
      v14 = 2 * (v9 > 0.0);
      if (v8 > 0.0)
      {
        v15 = v14 + 3;
      }

      else
      {
        v15 = v14 + 1;
      }

      v16 = HIDWORD(v52) * v14 + 2 * v13;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v12);
        if (sub_1AF22B8AC(ValueAtIndex))
        {
          v18 = 0;
          do
          {
            v19 = sub_1AF22B8D0(ValueAtIndex, v18);
            v10 += *(v19 + 6) << v13;
            v20 = *(v19 + 12);
            if (v20)
            {
              for (i = 0; i != v20; ++i)
              {
                v22 = v19[5] + 32 * i;
                v23 = *(v22 + 8);
                if (v23)
                {
                  v24 = (*v22 + 12);
                  do
                  {
                    v25 = *v24;
                    v24 += 10;
                    v10 += v16 * v25;
                    --v23;
                  }

                  while (v23);
                }
              }
            }

            v11 += v15;
            v18 = (v18 + 1);
          }

          while (v18 < sub_1AF22B8AC(ValueAtIndex));
        }

        ++v12;
      }

      while (v12 < CFArrayGetCount(*(a1 + 24)));
    }

    sub_1AF229668(v10, v11, v51, *(a3 + 34));
    Count = CFArrayGetCount(*(a1 + 24));
    v29 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
    v62.location = 0;
    v62.length = 0;
    CTFrameGetLineOrigins(*(a1 + 16), v62, v29);
    v44 = CFArrayGetCount(*(a1 + 24));
    if (v44 >= 1)
    {
      v30 = 0;
      v31.f64[0] = a4;
      v31.f64[1] = a5;
      v46 = v31;
      do
      {
        v32 = CFArrayGetValueAtIndex(*(a1 + 24), v30);
        v33 = sub_1AF22B8AC(v32);
        v34 = malloc_type_malloc(16 * v33, 0x1000040451B5BE8uLL);
        sub_1AF22B7D0(v32, v34, v33, v35);
        if (v33)
        {
          for (j = 0; j != v33; ++j)
          {
            v37 = sub_1AF22B8D0(v32, j);
            v39 = v30 == v44 - 1 && v33 - 1 == j;
            v40 = vaddq_f64(vaddq_f64(v46, v29[v30]), v34[j]);
            v41 = a2[1];
            v47 = *a2;
            v48 = v41;
            v49 = a2[2];
            v50 = *(a2 + 6);
            sub_1AF229774(v37, &v47, v51, v39, v40.f64[0], v40.f64[1]);
          }
        }

        free(v34);
        ++v30;
      }

      while (v30 != v44);
    }

    free(v29);
    result = sub_1AF22A9F8(v51);
    if (!result)
    {
      return sub_1AF1A2E00();
    }
  }

  else
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEB0A0(v26);
    }

    return 0;
  }

  return result;
}

CFMutableDictionaryRef sub_1AF22B218(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 32) = result;
  return result;
}

const void *sub_1AF22B264(uint64_t a1, unsigned int a2, void *key, uint64_t a4)
{
  Value = CFDictionaryGetValue(*(a1 + 32), key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(*(a1 + 32), key, Value);
    CFRelease(Value);
  }

  v9 = CFDictionaryGetValue(Value, a2);
  if (!v9)
  {
    v10 = *(a4 + 16);
    v12[0] = *a4;
    v12[1] = v10;
    v12[2] = *(a4 + 32);
    v13 = *(a4 + 48);
    v9 = sub_1AF223344(key, a2, v12);
    CFDictionaryAddValue(Value, a2, v9);
    CFRelease(v9);
  }

  return v9;
}

void sub_1AF22B350(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];

    CFRelease(v4);
  }
}

uint64_t sub_1AF22B3AC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6586F8 = result;
  return result;
}

uint64_t sub_1AF22B3D4(const void *a1, uint64_t a2)
{
  if (qword_1EB658700 != -1)
  {
    sub_1AFDEB0E4();
  }

  v4 = sub_1AF0D160C(qword_1EB6586F8, 0x18uLL);
  *(v4 + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v5 = CFRetain(a1);
    *(v4 + 16) = v5;
    if (v5)
    {
      sub_1AF22B218(v4);
      Lines = CTFrameGetLines(a1);
      if (CFArrayGetCount(Lines) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, v7);
          v9 = *(a2 + 16);
          v12[0] = *a2;
          v12[1] = v9;
          v12[2] = *(a2 + 32);
          v13 = *(a2 + 48);
          v10 = sub_1AF22B970(ValueAtIndex, v12, v4);
          CFArrayAppendValue(*(v4 + 24), v10);
          CFRelease(v10);
          ++v7;
        }

        while (v7 < CFArrayGetCount(Lines));
      }
    }
  }

  else
  {
    *(v4 + 16) = 0;
  }

  return v4;
}

CFMutableDictionaryRef sub_1AF22B4F4(CFMutableDictionaryRef result)
{
  if (!*(result + 2))
  {
    v1 = result;
    v2 = *(result + 4);
    if (v2)
    {
      CFRelease(v2);
    }

    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v1 + 4) = result;
  }

  return result;
}

const void *sub_1AF22B558(uint64_t a1, unsigned int a2, void *key, __int128 *a4)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a4[1];
    v14 = *a4;
    v15 = v9;
    v16 = a4[2];
    v17 = *(a4 + 6);
    return sub_1AF22B264(v8, a2, key, &v14);
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 32), key);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(*(a1 + 32), key, Value);
      CFRelease(Value);
    }

    v10 = CFDictionaryGetValue(Value, a2);
    if (!v10)
    {
      v12 = a4[1];
      v14 = *a4;
      v15 = v12;
      v16 = a4[2];
      v17 = *(a4 + 6);
      v10 = sub_1AF223344(key, a2, &v14);
      CFDictionaryAddValue(Value, a2, v10);
      CFRelease(v10);
    }
  }

  return v10;
}

CFIndex sub_1AF22B684(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  result = *(a1 + 24);
  if (result)
  {
    GlyphRuns = CTLineGetGlyphRuns(result);
    result = CFArrayGetCount(GlyphRuns);
    if (result >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x1E6965658];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v7);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        Value = CFDictionaryGetValue(Attributes, v8);
        if (GlyphCount >= 1)
        {
          v13 = Value;
          for (i = 0; i != GlyphCount; ++i)
          {
            buffer = 0;
            v20.location = i;
            v20.length = 1;
            CTRunGetGlyphs(ValueAtIndex, v20, &buffer);
            v15 = *(a2 + 16);
            v17[0] = *a2;
            v17[1] = v15;
            v17[2] = *(a2 + 32);
            v18 = *(a2 + 48);
            v16 = sub_1AF22B558(a1, buffer, v13, v17);
            CFArrayAppendValue(*(a1 + 40), v16);
          }
        }

        ++v7;
        result = CFArrayGetCount(GlyphRuns);
      }

      while (v7 < result);
    }
  }

  return result;
}

double sub_1AF22B7D0(uint64_t a1, uint64_t a2, unsigned int a3, double result)
{
  if (a1)
  {
    GlyphRuns = CTLineGetGlyphRuns(*(a1 + 24));
    Count = CFArrayGetCount(GlyphRuns);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, i);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        v13 = GlyphCount;
        v14 = a3 - v9;
        if (a3 > v9)
        {
          if (v14 >= GlyphCount)
          {
            v15.length = GlyphCount;
          }

          else
          {
            v15.length = v14;
          }

          v15.location = 0;
          CTRunGetAdvances(ValueAtIndex, v15, (a2 + 16 * v9));
        }

        v9 += v13;
      }
    }

    if (a3)
    {
      v16 = a3;
      v17 = (a2 + 8);
      result = 0.0;
      do
      {
        v18 = *(v17 - 1);
        v19 = -*v17;
        *(v17 - 1) = result;
        *v17 = v19;
        result = result + v18;
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

CFIndex sub_1AF22B8AC(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 40));
  }

  return result;
}

CFArrayRef *sub_1AF22B8D0(CFArrayRef *result, CFIndex idx)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result[5], idx);
  }

  return result;
}

void sub_1AF22B8E8(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[5];
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

uint64_t sub_1AF22B948()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658708 = result;
  return result;
}

__CFDictionary *sub_1AF22B970(const void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB658710 != -1)
  {
    sub_1AFDEB0F8();
  }

  v6 = sub_1AF0D160C(qword_1EB658708, 0x20uLL);
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  *(v6 + 2) = a3;
  *(v6 + 3) = v7;
  sub_1AF22B4F4(v6);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  sub_1AF22B684(v6, v10);
  return v6;
}

void sub_1AF22BB20(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    objc_msgSend__computeViewData(a1, a2, a3, a4);
  }

  else
  {
    bzero(a5, 0x400uLL);
  }
}

double sub_1AF22BD6C@<D0>(char *__dst@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = a3;
  v7 = __dst;
  *&v22[5] = *MEMORY[0x1E69E9840];
  if (*(__dst + 2) == -1)
  {
    memcpy(__dst, a2, 0x1A0uLL);
    if (!v6)
    {
      result = 0.0;
      a5[11] = 0u;
      a5[12] = 0u;
      a5[9] = 0u;
      a5[10] = 0u;
      a5[7] = 0u;
      a5[8] = 0u;
      a5[5] = 0u;
      a5[6] = 0u;
      a5[3] = 0u;
      a5[4] = 0u;
      a5[1] = 0u;
      a5[2] = 0u;
      *a5 = 0u;
      return result;
    }

    v10 = v7 + 24;
    v11 = v6;
    do
    {
      v12 = objc_msgSend_constantOffsetAndSize__::(a4, a2, *(v10 - 4), *(v10 - 3), v10 - 1, v10);
      *(v10 - 11) = v12;
      if ((v12 & 1) == 0)
      {
        *(v10 - 1) = 0;
        *v10 = 0;
        if ((byte_1EB658720 & 1) == 0)
        {
          byte_1EB658720 = 1;
          v13 = sub_1AF0D5194();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEBFA4(&v17, v18, v13);
          }
        }
      }

      v10 += 4;
      --v11;
    }

    while (v11);
    result = 0.0;
    a5[11] = 0u;
    a5[12] = 0u;
    a5[9] = 0u;
    a5[10] = 0u;
    a5[7] = 0u;
    a5[8] = 0u;
    a5[5] = 0u;
    a5[6] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  else
  {
    result = 0.0;
    a5[11] = 0u;
    a5[12] = 0u;
    a5[9] = 0u;
    a5[10] = 0u;
    a5[7] = 0u;
    a5[8] = 0u;
    a5[5] = 0u;
    a5[6] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    if (!a3)
    {
      return result;
    }
  }

  v14 = a5 + 1;
  do
  {
    if ((v7[13] & 1) == 0)
    {
      v15 = sub_1AF0D5194();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEBFE4(buf, v22, v15);
      }
    }

    *(v14 - 1) = v7;
    if (v7[13])
    {
      *v14 = objc_msgSend_constantData_(a4, a2, *(v7 + 2), a4);
    }

    else
    {
      *v14 = 0;
      if ((byte_1EB658721 & 1) == 0)
      {
        byte_1EB658721 = 1;
        v16 = sub_1AF0D5194();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDEC034(&v19, v20, v16);
        }
      }
    }

    v7 += 32;
    v14 += 2;
    --v6;
  }

  while (v6);
  return result;
}

void *sub_1AF22BFA0(void *a1, void *a2)
{
  if (!*a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*a1 + 24) != 4)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC074();
    }
  }

  v6 = sub_1AF22C83C(a1);
  return memcpy(a2, v6, *(*a1 + 24));
}

void *sub_1AF22C044(void *a1, void *a2)
{
  if (!*a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*a1 + 24) != 1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC0F8();
    }
  }

  v6 = sub_1AF22C83C(a1);
  return memcpy(a2, v6, *(*a1 + 24));
}

void *sub_1AF22C0E8(void *a1, void *a2)
{
  if (!*a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*a1 + 24) != 16)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC17C();
    }
  }

  v6 = sub_1AF22C83C(a1);
  return memcpy(a2, v6, *(*a1 + 24));
}

void *sub_1AF22C18C(void *a1, void *a2)
{
  if (!*a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*a1 + 24) != 2)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC200();
    }
  }

  v6 = sub_1AF22C83C(a1);
  return memcpy(a2, v6, *(*a1 + 24));
}

void *sub_1AF22C3D0(void *a1, void *a2)
{
  if (!*a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*a1 + 24) != 128)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC308();
    }
  }

  v6 = sub_1AF22C83C(a1);
  return memcpy(a2, v6, *(*a1 + 24));
}

void *sub_1AF22C5C8(uint64_t a1, const void *a2, size_t a3, unsigned int a4)
{
  Alignment = CFXBufferAllocatorGetAlignment(a1);
  CFXBufferAllocatorSetAlignment(a1, a4);
  v9 = CFXBufferAllocatorPerFrameAllocateWithBytes(a1, a2, a3);
  CFXBufferAllocatorSetAlignment(a1, Alignment);
  return v9;
}

uint64_t sub_1AF22C73C(void *a1, void *a2)
{
  result = CFXBufferSliceGetMTLBuffer(*a2, a2[1]);
  if (result)
  {
    MTLBuffer = CFXBufferSliceGetMTLBuffer(*a2, a2[1]);

    return objc_msgSend_addObject_(a1, v5, MTLBuffer, v7);
  }

  return result;
}

uint64_t sub_1AF22C83C(void *a1)
{
  if (!*a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE1C();
    }

    if (!*a1)
    {
      v3 = sub_1AF0D5194();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEBE1C();
      }
    }
  }

  if (*(*a1 + 13) == 1 && (v4 = a1[1]) != 0)
  {
    return v4 + *(*a1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_1AF22C910(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

BOOL sub_1AF22C948(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1AF22D344(unint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = a1;
    v3 = a1 + a2;
    while (2)
    {
      switch(*v2)
      {
        case 0:
        case 7:
        case 0xD:
          goto LABEL_14;
        case 1:
        case 2:
        case 3:
        case 4:
          v2 += 2;
          goto LABEL_15;
        case 5:
          v2 += 10;
          goto LABEL_15;
        case 6:
          v2 += 3;
          goto LABEL_15;
        case 8:
        case 0xC:
          v2 += 4;
          goto LABEL_15;
        case 9:
          v2 += 11;
          goto LABEL_15;
        case 0xA:
        case 0x10:
          v2 += 24;
          goto LABEL_15;
        case 0xB:
          v2 += *(v2 + 4) + 8;
          goto LABEL_15;
        case 0xE:
          v2 += 20;
          goto LABEL_15;
        case 0xF:
        case 0x11:
          v2 += 40;
          goto LABEL_15;
        case 0x12:

LABEL_14:
          v2 += 16;
LABEL_15:
          if (v2 >= v3)
          {
            return;
          }

          continue;
        default:
          v4 = sub_1AF0D5194();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEC488();
          }

          return;
      }
    }
  }
}