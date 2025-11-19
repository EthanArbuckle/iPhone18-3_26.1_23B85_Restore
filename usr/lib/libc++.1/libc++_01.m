char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,char *,char *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (a2 - a1 >= 2)
    {
      v9 = (a2 - a1 - 2) >> 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,char *>(a1, a4, v8, &a1[v9--]);
      }

      while (v9 != -1);
    }

    v10 = v6;
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = *a1;
        if (v11 < v12)
        {
          *v10 = v12;
          *a1 = v11;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,char *>(a1, a4, v8, a1);
        }

        ++v10;
      }

      while (v10 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v13 = 0;
        LOBYTE(v14) = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v13];
          v17 = &v15[v13 + 1];
          v18 = (2 * v13) | 1;
          v13 = 2 * v13 + 2;
          if (v13 >= v8)
          {
            v19 = *v17;
            v13 = v18;
          }

          else
          {
            v21 = v16[2];
            v20 = v16 + 2;
            v19 = v21;
            v22 = *(v20 - 1);
            v23 = v22 < v21;
            if (v22 > v21)
            {
              v19 = *(v20 - 1);
            }

            if (v23)
            {
              v17 = v20;
            }

            else
            {
              v13 = v18;
            }
          }

          *v15 = v19;
          v15 = v17;
        }

        while (v13 <= ((v8 - 2) >> 1));
        if (v17 != --v6)
        {
          *v17 = *v6;
          *v6 = v14;
          v24 = v17 - a1 - 1;
          if (v17 - a1 + 1 < 2)
          {
            goto LABEL_27;
          }

          v25 = &a1[v24 >> 1];
          v26 = *v25;
          v14 = *v17;
          if (v26 >= v14)
          {
            goto LABEL_27;
          }

          v27 = v24 >> 1;
          do
          {
            *v17 = v26;
            v17 = v25;
            if (!v27)
            {
              break;
            }

            v28 = v27 - 1;
            v27 = (v27 - 1) >> 1;
            v25 = &a1[v28 >> 1];
            v26 = *v25;
          }

          while (v26 < v14);
        }

        *v17 = v14;
LABEL_27:
        v23 = v8-- <= 2;
      }

      while (!v23);
    }

    return v10;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,char *>(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3 >= 2)
  {
    v4 = &a4[-result];
    v5 = (a3 - 2) >> 1;
    if (v5 >= &a4[-result])
    {
      v6 = 2 * v4;
      v7 = (2 * v4) | 1;
      v8 = (result + v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        LOBYTE(v10) = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        v12 = v10 < v11;
        if (v10 <= v11)
        {
          LOBYTE(v10) = v8[1];
        }

        if (v12)
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v13 <= v10)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            LOBYTE(v10) = *v8;
            v7 = v14;
          }

          else
          {
            v10 = *v8;
            v15 = v8[1];
            v16 = v10 < v15;
            if (v10 <= v15)
            {
              LOBYTE(v10) = v8[1];
            }

            if (v16)
            {
              ++v8;
            }

            else
            {
              v7 = v14;
            }
          }
        }

        while (v13 <= v10);
        *a4 = v13;
      }
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t *,std::ranges::less &>(int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

signed int *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t *,std::ranges::less>(signed int *a1, signed int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      v18 = xmmword_1922FB300;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_s32(*(v7 + v12), v13);
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_1922FB310;
    v27 = xmmword_1922FB300;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_s32(v13, vextq_s8(v29, v29, 8uLL));
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 < v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] >= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,wchar_t *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 >= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 <= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 >= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 <= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
        }

        if (v29 > v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 >= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 > v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 >= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 > v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 <= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 <= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 <= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        if (v13 > v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 > v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 >= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 <= v19)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
        }

        if (v22 > v21)
        {
          v21 = v22;
        }

        if (v20 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 <= v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 >= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 > v32)
  {
    v32 = a1[1];
  }

  if (v32 >= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 <= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 < v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,wchar_t *,wchar_t *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,wchar_t *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,wchar_t *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,wchar_t *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

unsigned __int8 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned char *,std::ranges::less &>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = *++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unsigned __int8 *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned char *,std::ranges::less>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = a2 - 1 - v7;
  if (v10 < 127)
  {
    v11 = 0;
    v87 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s8(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(0x10uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = xmmword_1922FB310;
      v20 = xmmword_1922FB300;
      v21 = 0uLL;
      v22 = xmmword_1922FB2F0;
      v23 = 0uLL;
      v24 = xmmword_1922FB2E0;
      v25 = 0uLL;
      v27 = xmmword_1922FB2D0;
      v26 = xmmword_1922FB2C0;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = xmmword_1922FB2B0;
      v31 = xmmword_1922FB2A0;
      do
      {
        v32 = vcgeq_u8(*&v7[v12], v13);
        v33 = vmovl_high_u8(v32);
        v34 = vmovl_high_u16(v33);
        v35.i64[0] = v34.u32[2];
        v35.i64[1] = v34.u32[3];
        v36 = vandq_s8(v35, v14);
        v35.i64[0] = v34.u32[0];
        v35.i64[1] = v34.u32[1];
        v37 = vandq_s8(v35, v14);
        v38 = vmovl_u16(*v33.i8);
        v35.i64[0] = v38.u32[2];
        v35.i64[1] = v38.u32[3];
        v39 = vandq_s8(v35, v14);
        v40 = vmovl_u8(*v32.i8);
        v41 = vmovl_high_u16(v40);
        v35.i64[0] = v41.u32[2];
        v35.i64[1] = v41.u32[3];
        v42 = vandq_s8(v35, v14);
        v35.i64[0] = v38.u32[0];
        v35.i64[1] = v38.u32[1];
        v43 = vandq_s8(v35, v14);
        v35.i64[0] = v41.u32[0];
        v35.i64[1] = v41.u32[1];
        v44 = vandq_s8(v35, v14);
        v45 = vmovl_u16(*v40.i8);
        v35.i64[0] = v45.u32[2];
        v35.i64[1] = v45.u32[3];
        v46 = vandq_s8(v35, v14);
        v35.i64[0] = v45.u32[0];
        v35.i64[1] = v45.u32[1];
        v29 = vorrq_s8(vshlq_u64(v36, v31), v29);
        v28 = vorrq_s8(vshlq_u64(v37, v30), v28);
        v25 = vorrq_s8(vshlq_u64(v39, v26), v25);
        v21 = vorrq_s8(vshlq_u64(v42, v24), v21);
        v23 = vorrq_s8(vshlq_u64(v43, v27), v23);
        v18 = vorrq_s8(vshlq_u64(v44, v22), v18);
        v17 = vorrq_s8(vshlq_u64(v46, v20), v17);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v35, v14), v19), v16);
        v12 += 16;
        v22 = vaddq_s64(v22, v15);
        v20 = vaddq_s64(v20, v15);
        v19 = vaddq_s64(v19, v15);
        v24 = vaddq_s64(v24, v15);
        v27 = vaddq_s64(v27, v15);
        v26 = vaddq_s64(v26, v15);
        v30 = vaddq_s64(v30, v15);
        v31 = vaddq_s64(v31, v15);
      }

      while (v12 != 64);
      v47 = vorrq_s8(vorrq_s8(vorrq_s8(v16, v23), vorrq_s8(v18, v28)), vorrq_s8(vorrq_s8(v17, v25), vorrq_s8(v21, v29)));
      v12 = vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v48 = xmmword_1922FB2A0;
    v49 = xmmword_1922FB2B0;
    v50 = xmmword_1922FB2C0;
    v51 = 0uLL;
    v52 = -15;
    v53 = xmmword_1922FB2D0;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = xmmword_1922FB2E0;
    v57 = 0uLL;
    v58 = xmmword_1922FB2F0;
    v59 = 0uLL;
    v60 = 0uLL;
    v61 = xmmword_1922FB300;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = xmmword_1922FB310;
    do
    {
      v65 = vrev64q_s8(*&v9[v52]);
      v66 = vcgtq_u8(v13, vextq_s8(v65, v65, 8uLL));
      v67 = vmovl_high_u8(v66);
      v68 = vmovl_high_u16(v67);
      v69 = vdupq_n_s64(1uLL);
      v70.i64[0] = v68.u32[2];
      v70.i64[1] = v68.u32[3];
      v71 = vandq_s8(v70, v69);
      v70.i64[0] = v68.u32[0];
      v70.i64[1] = v68.u32[1];
      v72 = vandq_s8(v70, v69);
      v73 = vmovl_u16(*v67.i8);
      v70.i64[0] = v73.u32[2];
      v70.i64[1] = v73.u32[3];
      v74 = vandq_s8(v70, v69);
      v75 = vmovl_u8(*v66.i8);
      v76 = vmovl_high_u16(v75);
      v70.i64[0] = v76.u32[2];
      v70.i64[1] = v76.u32[3];
      v77 = vandq_s8(v70, v69);
      v70.i64[0] = v73.u32[0];
      v70.i64[1] = v73.u32[1];
      v78 = vandq_s8(v70, v69);
      v70.i64[0] = v76.u32[0];
      v70.i64[1] = v76.u32[1];
      v79 = vandq_s8(v70, v69);
      v80 = vmovl_u16(*v75.i8);
      v70.i64[0] = v80.u32[2];
      v70.i64[1] = v80.u32[3];
      v81 = vandq_s8(v70, v69);
      v70.i64[0] = v80.u32[0];
      v70.i64[1] = v80.u32[1];
      v63 = vorrq_s8(vshlq_u64(v71, v48), v63);
      v62 = vorrq_s8(vshlq_u64(v72, v49), v62);
      v60 = vorrq_s8(vshlq_u64(v74, v50), v60);
      v57 = vorrq_s8(vshlq_u64(v77, v56), v57);
      v59 = vorrq_s8(vshlq_u64(v78, v53), v59);
      v55 = vorrq_s8(vshlq_u64(v79, v58), v55);
      v54 = vorrq_s8(vshlq_u64(v81, v61), v54);
      v51 = vorrq_s8(vshlq_u64(vandq_s8(v70, v69), v64), v51);
      v82 = vdupq_n_s64(0x10uLL);
      v58 = vaddq_s64(v58, v82);
      v61 = vaddq_s64(v61, v82);
      v64 = vaddq_s64(v64, v82);
      v56 = vaddq_s64(v56, v82);
      v53 = vaddq_s64(v53, v82);
      v50 = vaddq_s64(v50, v82);
      v49 = vaddq_s64(v49, v82);
      v48 = vaddq_s64(v48, v82);
      v52 -= 16;
    }

    while (v52 != -79);
    v83 = vorrq_s8(vorrq_s8(vorrq_s8(v51, v59), vorrq_s8(v55, v62)), vorrq_s8(vorrq_s8(v54, v60), vorrq_s8(v57, v63)));
    v11 = vorr_s8(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v84 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v85 = &v9[-__clz(__rbit64(v11))];
        v86 = v7[v84];
        v7[v84] = *v85;
        *v85 = v86;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v87 = v11 == 0;
    if (v11)
    {
      v88 = 0;
    }

    else
    {
      v88 = -64;
    }

    v9 += v88;
    v10 = v9 - v7;
  }

  while (v9 - v7 > 126);
  if (!(v12 | v11))
  {
LABEL_36:
    v89 = (v10 + 1) / 2;
    v90 = v10 + 1 - v89;
LABEL_37:
    if (v89 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      for (i = 0; i != v89; ++i)
      {
        v12 |= (v7[i] >= v2) << i;
      }
    }

    v91 = v89;
    v89 = v90;
    if (v87)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v89 = v10 - 63;
  v90 = 64;
  v91 = 64;
  if (!v12)
  {
    goto LABEL_37;
  }

  if (v11)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (v89 >= 1)
  {
    v11 = 0;
    v93 = 0;
    v94 = v9;
    do
    {
      v95 = *v94--;
      v11 |= (v95 < v2) << v93++;
    }

    while (v89 != v93);
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v96 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v97 = &v9[-__clz(__rbit64(v11))];
      v98 = v7[v96];
      v7[v96] = *v97;
      *v97 = v98;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v91 = 0;
  }

  v99 = &v7[v91];
  if (v11)
  {
    v89 = 0;
  }

  v100 = &v9[-v89];
  if (v12)
  {
    do
    {
      v101 = __clz(v12) ^ 0x3F;
      v102 = &v99[v101];
      if (v100 != &v99[v101])
      {
        v103 = *v102;
        *v102 = *v100;
        *v100 = v103;
      }

      v12 &= ~(-1 << v101);
      --v100;
    }

    while (v12);
    v99 = v100 + 1;
  }

  else
  {
    for (; v11; ++v99)
    {
      v104 = __clz(v11) ^ 0x3F;
      v105 = &v100[-v104];
      if (v99 != &v100[-v104])
      {
        v106 = *v105;
        *v105 = *v99;
        *v99 = v106;
      }

      v11 &= ~(-1 << v104);
    }
  }

  v107 = v99 - 1;
  if (v107 != a1)
  {
    *a1 = *v107;
  }

  *v107 = v2;
  return v107;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned char *>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    switch(v2)
    {
      case 3:
        v27 = a1[1];
        v28 = *(a2 - 1);
        if (v27 >= v28)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = a1[1];
        }

        if (v27 <= v28)
        {
          LOBYTE(v27) = *(a2 - 1);
        }

        *(a2 - 1) = v27;
        a1[1] = v29;
        v30 = *(a2 - 1);
        v31 = *a1;
        if (v30 >= v31)
        {
          v32 = *a1;
        }

        else
        {
          v32 = *(a2 - 1);
        }

        if (v30 <= v31)
        {
          LOBYTE(v30) = *a1;
        }

        *(a2 - 1) = v30;
        v33 = a1[1];
        v34 = *a1;
        if (v32 >= v33)
        {
          v34 = a1[1];
        }

        *a1 = v34;
        if (v32 > v33)
        {
          LOBYTE(v33) = v32;
        }

        a1[1] = v33;
        return 1;
      case 4:
        v50 = *a1;
        v51 = a1[2];
        if (v50 >= v51)
        {
          v52 = a1[2];
        }

        else
        {
          v52 = *a1;
        }

        if (v50 <= v51)
        {
          LOBYTE(v50) = a1[2];
        }

        a1[2] = v50;
        *a1 = v52;
        v53 = a1[1];
        v54 = *(a2 - 1);
        if (v53 >= v54)
        {
          v55 = *(a2 - 1);
        }

        else
        {
          v55 = a1[1];
        }

        if (v53 <= v54)
        {
          LOBYTE(v53) = *(a2 - 1);
        }

        *(a2 - 1) = v53;
        v56 = *a1;
        if (v56 >= v55)
        {
          v57 = v55;
        }

        else
        {
          v57 = *a1;
        }

        if (v56 <= v55)
        {
          LOBYTE(v56) = v55;
        }

        a1[1] = v56;
        *a1 = v57;
        v58 = a1[2];
        v59 = *(a2 - 1);
        if (v58 >= v59)
        {
          v60 = *(a2 - 1);
        }

        else
        {
          v60 = a1[2];
        }

        if (v58 <= v59)
        {
          LOBYTE(v58) = *(a2 - 1);
        }

        *(a2 - 1) = v58;
        v61 = a1[1];
        if (v61 >= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = a1[1];
        }

        if (v61 <= v60)
        {
          LOBYTE(v61) = v60;
        }

        a1[2] = v61;
        a1[1] = v62;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (v5 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          LOBYTE(v5) = a1[1];
        }

        a1[1] = v5;
        *a1 = v7;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          LOBYTE(v8) = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          LOBYTE(v11) = a1[2];
        }

        *(a2 - 1) = v11;
        v14 = a1[3];
        v15 = a1[2];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        a1[2] = v15;
        if (v13 > v14)
        {
          LOBYTE(v14) = v13;
        }

        a1[3] = v14;
        v16 = a1[1];
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = a1[1];
        }

        if (v16 <= v17)
        {
          LOBYTE(v16) = *(a2 - 1);
        }

        *(a2 - 1) = v16;
        v19 = a1[3];
        v20 = *a1;
        if (v19 >= v20)
        {
          v21 = *a1;
        }

        else
        {
          v21 = a1[3];
        }

        if (v19 <= v20)
        {
          v19 = *a1;
        }

        v22 = a1[2];
        if (v21 >= v22)
        {
          LOBYTE(v20) = a1[2];
        }

        *a1 = v20;
        if (v21 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        if (v19 >= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = v19;
        }

        if (v19 <= v18)
        {
          LOBYTE(v19) = v18;
        }

        a1[3] = v19;
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v18;
        }

        a1[1] = v25;
        if (v24 <= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v24;
        }

        a1[2] = v26;
        return 1;
    }
  }

  else
  {
    if ((a2 - a1) < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < v4)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v36 = a1 + 2;
  v35 = a1[2];
  v37 = a1[1];
  if (v37 >= v35)
  {
    v38 = a1[2];
  }

  else
  {
    v38 = a1[1];
  }

  if (v37 > v35)
  {
    v35 = a1[1];
  }

  v39 = *a1;
  if (v35 >= v39)
  {
    v40 = *a1;
  }

  else
  {
    v40 = v35;
  }

  if (v35 <= v39)
  {
    LOBYTE(v35) = *a1;
  }

  *v36 = v35;
  if (v39 >= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v39;
  }

  *a1 = v41;
  if (v39 >= v38)
  {
    v42 = v40;
  }

  else
  {
    v42 = v38;
  }

  a1[1] = v42;
  v43 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *v43;
    v47 = *v36;
    if (v46 < v47)
    {
      v48 = v44;
      while (1)
      {
        a1[v48 + 3] = v47;
        if (v48 == -2)
        {
          break;
        }

        v47 = a1[v48-- + 1];
        if (v46 >= v47)
        {
          v49 = &a1[v48 + 3];
          goto LABEL_94;
        }
      }

      v49 = a1;
LABEL_94:
      *v49 = v46;
      if (++v45 == 8)
      {
        return v43 + 1 == a2;
      }
    }

    v36 = v43;
    ++v44;
    if (++v43 == a2)
    {
      return 1;
    }
  }
}

unsigned __int8 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned char *,unsigned char *>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (a2 - a1 >= 2)
    {
      v9 = (a2 - a1 - 2) >> 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned char *>(a1, a4, v8, &a1[v9--]);
      }

      while (v9 != -1);
    }

    v10 = v6;
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = *a1;
        if (v11 < v12)
        {
          *v10 = v12;
          *a1 = v11;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned char *>(a1, a4, v8, a1);
        }

        ++v10;
      }

      while (v10 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v13 = 0;
        LOBYTE(v14) = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v13];
          v17 = &v15[v13 + 1];
          v18 = (2 * v13) | 1;
          v13 = 2 * v13 + 2;
          if (v13 >= v8)
          {
            v19 = *v17;
            v13 = v18;
          }

          else
          {
            v21 = v16[2];
            v20 = v16 + 2;
            v19 = v21;
            v22 = *(v20 - 1);
            v23 = v22 >= v21;
            if (v22 > v21)
            {
              v19 = *(v20 - 1);
            }

            if (v23)
            {
              v13 = v18;
            }

            else
            {
              v17 = v20;
            }
          }

          *v15 = v19;
          v15 = v17;
        }

        while (v13 <= ((v8 - 2) >> 1));
        if (v17 != --v6)
        {
          *v17 = *v6;
          *v6 = v14;
          v24 = v17 - a1 - 1;
          if (v17 - a1 + 1 < 2)
          {
            continue;
          }

          v25 = &a1[v24 >> 1];
          v26 = *v25;
          v14 = *v17;
          if (v26 >= v14)
          {
            continue;
          }

          v27 = v24 >> 1;
          do
          {
            *v17 = v26;
            v17 = v25;
            if (!v27)
            {
              break;
            }

            v28 = v27 - 1;
            v27 = (v27 - 1) >> 1;
            v25 = &a1[v28 >> 1];
            v26 = *v25;
          }

          while (v26 < v14);
        }

        *v17 = v14;
      }

      while (v8-- > 2);
    }

    return v10;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3 >= 2)
  {
    v4 = &a4[-result];
    v5 = (a3 - 2) >> 1;
    if (v5 >= &a4[-result])
    {
      v6 = 2 * v4;
      v7 = (2 * v4) | 1;
      v8 = (result + v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = v8[1];
        }

        if (!v12)
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *a4;
      if (v10 >= v13)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v14;
          }

          else
          {
            v10 = *v8;
            v15 = v8[1];
            v16 = v10 >= v15;
            if (v10 <= v15)
            {
              v10 = v8[1];
            }

            if (v16)
            {
              v7 = v14;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v13);
        *a4 = v13;
      }
    }
  }

  return result;
}

__int16 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,short *,std::ranges::less &>(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

__int16 *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,short *,std::ranges::less>(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 253)
  {
    v11 = 0;
    v57 = v10 >> 1;
    v55 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s16(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(8uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      v18 = xmmword_1922FB300;
      v19 = xmmword_1922FB2F0;
      v20 = 0uLL;
      v21 = xmmword_1922FB2E0;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v24 = vcgeq_s16(*(v7 + v12), v13);
        v25 = vmovl_high_u16(v24);
        v26.i64[0] = v25.u32[2];
        v26.i64[1] = v25.u32[3];
        v27 = vandq_s8(v26, v14);
        v26.i64[0] = v25.u32[0];
        v26.i64[1] = v25.u32[1];
        v28 = vandq_s8(v26, v14);
        v29 = vmovl_u16(*v24.i8);
        v26.i64[0] = v29.u32[2];
        v26.i64[1] = v29.u32[3];
        v30 = vandq_s8(v26, v14);
        v26.i64[0] = v29.u32[0];
        v26.i64[1] = v29.u32[1];
        v23 = vorrq_s8(vshlq_u64(v27, v21), v23);
        v22 = vorrq_s8(vshlq_u64(v28, v19), v22);
        v20 = vorrq_s8(vshlq_u64(v30, v18), v20);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v26, v14), v17), v16);
        v19 = vaddq_s64(v19, v15);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v21 = vaddq_s64(v21, v15);
        v12 += 16;
      }

      while (v12 != 128);
      v31 = vorrq_s8(vorrq_s8(v16, v22), vorrq_s8(v20, v23));
      v12 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v32 = 0uLL;
    v33 = 0x7FFFFFFFFFFFFFF9;
    v34 = xmmword_1922FB310;
    v35 = xmmword_1922FB300;
    v36 = xmmword_1922FB2F0;
    v37 = 0uLL;
    v38 = xmmword_1922FB2E0;
    v39 = 0uLL;
    v40 = 0uLL;
    do
    {
      v41 = vrev64q_s16(*&v9[v33]);
      v42 = vcgtq_s16(v13, vextq_s8(v41, v41, 8uLL));
      v43 = vmovl_high_u16(v42);
      v44.i64[0] = v43.u32[2];
      v44.i64[1] = v43.u32[3];
      v45 = vdupq_n_s64(1uLL);
      v46 = vandq_s8(v44, v45);
      v44.i64[0] = v43.u32[0];
      v44.i64[1] = v43.u32[1];
      v47 = vandq_s8(v44, v45);
      v48 = vmovl_u16(*v42.i8);
      v44.i64[0] = v48.u32[2];
      v44.i64[1] = v48.u32[3];
      v49 = vandq_s8(v44, v45);
      v44.i64[0] = v48.u32[0];
      v44.i64[1] = v48.u32[1];
      v40 = vorrq_s8(vshlq_u64(v46, v38), v40);
      v39 = vorrq_s8(vshlq_u64(v47, v36), v39);
      v37 = vorrq_s8(vshlq_u64(v49, v35), v37);
      v32 = vorrq_s8(vshlq_u64(vandq_s8(v44, v45), v34), v32);
      v50 = vdupq_n_s64(8uLL);
      v36 = vaddq_s64(v36, v50);
      v35 = vaddq_s64(v35, v50);
      v34 = vaddq_s64(v34, v50);
      v38 = vaddq_s64(v38, v50);
      v33 -= 8;
    }

    while (v33 != -71);
    v51 = vorrq_s8(vorrq_s8(v32, v39), vorrq_s8(v37, v40));
    v11 = vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v52 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v53 = &v9[-__clz(__rbit64(v11))];
        v54 = v7[v52];
        v7[v52] = *v53;
        *v53 = v54;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v55 = v11 == 0;
    if (v11)
    {
      v56 = 0;
    }

    else
    {
      v56 = -128;
    }

    v9 = (v9 + v56);
  }

  while (v9 - v7 > 252);
  v57 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v61 = v57 + 1;
    v58 = (v57 + 1) / 2;
    v59 = v61 - v61 / 2;
    goto LABEL_37;
  }

  v58 = v57 - 63;
  v59 = 64;
  v60 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v58 >= 1)
    {
      v63 = 0;
      v11 = 0;
      v64 = v9;
      do
      {
        v65 = *v64--;
        v11 |= (v65 < v2) << v63++;
      }

      while (v58 != v63);
      goto LABEL_46;
    }

    if (v12)
    {
      v73 = 0;
    }

    else
    {
      v73 = v60;
    }

    v69 = &v7[v73];
LABEL_62:
    if (v12)
    {
      v9 -= v58;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v58 < 1)
  {
    v12 = 0;
  }

  else
  {
    v62 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v62] >= v2) << v62;
      ++v62;
    }

    while (v58 != v62);
  }

  v60 = v58;
  v58 = v59;
  if (v55)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v66 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v67 = &v9[-__clz(__rbit64(v11))];
      v68 = v7[v66];
      v7[v66] = *v67;
      *v67 = v68;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v60 = 0;
  }

  v69 = &v7[v60];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v74 = __clz(v12) ^ 0x3F;
      v75 = &v69[v74];
      if (v9 != v75)
      {
        v76 = *v75;
        *v75 = *v9;
        *v9 = v76;
      }

      v12 &= ~(-1 << v74);
      --v9;
    }

    while (v12);
    v69 = v9 + 1;
  }

  else
  {
    do
    {
      v70 = __clz(v11) ^ 0x3F;
      v71 = &v9[-v70];
      if (v69 != v71)
      {
        v72 = *v71;
        *v71 = *v69;
        *v69 = v72;
      }

      v11 &= ~(-1 << v70);
      ++v69;
    }

    while (v11);
  }

LABEL_68:
  v77 = v69 - 1;
  if (v69 - 1 != a1)
  {
    *a1 = *v77;
  }

  *v77 = v2;
  return v69 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,short *>(__int16 *a1, __int16 *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v27 = a1[1];
        v28 = *(a2 - 1);
        if (v27 >= v28)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = a1[1];
        }

        if (v27 <= v28)
        {
          LOWORD(v27) = *(a2 - 1);
        }

        *(a2 - 1) = v27;
        a1[1] = v29;
        v30 = *(a2 - 1);
        v31 = *a1;
        if (v30 >= v31)
        {
          v32 = *a1;
        }

        else
        {
          v32 = *(a2 - 1);
        }

        if (v30 <= v31)
        {
          LOWORD(v30) = *a1;
        }

        *(a2 - 1) = v30;
        v33 = a1[1];
        v34 = *a1;
        if (v32 >= v33)
        {
          v34 = a1[1];
        }

        *a1 = v34;
        if (v32 > v33)
        {
          LOWORD(v33) = v32;
        }

        a1[1] = v33;
        return 1;
      case 4:
        v51 = *a1;
        v52 = a1[2];
        if (v51 >= v52)
        {
          v53 = a1[2];
        }

        else
        {
          v53 = *a1;
        }

        if (v51 <= v52)
        {
          LOWORD(v51) = a1[2];
        }

        a1[2] = v51;
        *a1 = v53;
        v54 = a1[1];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[1];
        }

        if (v54 <= v55)
        {
          LOWORD(v54) = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = *a1;
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = *a1;
        }

        if (v57 <= v56)
        {
          LOWORD(v57) = v56;
        }

        a1[1] = v57;
        *a1 = v58;
        v59 = a1[2];
        v60 = *(a2 - 1);
        if (v59 >= v60)
        {
          v61 = *(a2 - 1);
        }

        else
        {
          v61 = a1[2];
        }

        if (v59 <= v60)
        {
          LOWORD(v59) = *(a2 - 1);
        }

        *(a2 - 1) = v59;
        v62 = a1[1];
        if (v62 >= v61)
        {
          v63 = v61;
        }

        else
        {
          v63 = a1[1];
        }

        if (v62 <= v61)
        {
          LOWORD(v62) = v61;
        }

        a1[2] = v62;
        a1[1] = v63;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (v5 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          LOWORD(v5) = a1[1];
        }

        a1[1] = v5;
        *a1 = v7;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          LOWORD(v8) = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          LOWORD(v11) = a1[2];
        }

        *(a2 - 1) = v11;
        v14 = a1[3];
        v15 = a1[2];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        a1[2] = v15;
        if (v13 > v14)
        {
          LOWORD(v14) = v13;
        }

        a1[3] = v14;
        v16 = a1[1];
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = a1[1];
        }

        if (v16 <= v17)
        {
          LOWORD(v16) = *(a2 - 1);
        }

        *(a2 - 1) = v16;
        v19 = a1[3];
        v20 = *a1;
        if (v19 >= v20)
        {
          v21 = *a1;
        }

        else
        {
          v21 = a1[3];
        }

        if (v19 <= v20)
        {
          v19 = *a1;
        }

        v22 = a1[2];
        if (v21 >= v22)
        {
          LOWORD(v20) = a1[2];
        }

        *a1 = v20;
        if (v21 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        if (v19 >= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = v19;
        }

        if (v19 <= v18)
        {
          LOWORD(v19) = v18;
        }

        a1[3] = v19;
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v18;
        }

        a1[1] = v25;
        if (v24 <= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v24;
        }

        a1[2] = v26;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < v4)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v36 = a1 + 2;
  v35 = a1[2];
  v37 = a1[1];
  if (v37 >= v35)
  {
    v38 = a1[2];
  }

  else
  {
    v38 = a1[1];
  }

  if (v37 > v35)
  {
    v35 = a1[1];
  }

  v39 = *a1;
  if (v35 >= v39)
  {
    v40 = *a1;
  }

  else
  {
    v40 = v35;
  }

  if (v35 <= v39)
  {
    LOWORD(v35) = *a1;
  }

  *v36 = v35;
  if (v39 >= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v39;
  }

  *a1 = v41;
  if (v39 >= v38)
  {
    v42 = v40;
  }

  else
  {
    v42 = v38;
  }

  a1[1] = v42;
  v43 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v44 = 0;
  for (i = 6; ; i += 2)
  {
    v46 = *v43;
    v47 = *v36;
    if (v46 < v47)
    {
      v48 = i;
      while (1)
      {
        *(a1 + v48) = v47;
        v49 = v48 - 2;
        if (v48 == 2)
        {
          break;
        }

        v47 = *(a1 + v48 - 4);
        v48 -= 2;
        if (v46 >= v47)
        {
          v50 = (a1 + v49);
          goto LABEL_94;
        }
      }

      v50 = a1;
LABEL_94:
      *v50 = v46;
      if (++v44 == 8)
      {
        break;
      }
    }

    v36 = v43++;
    if (v43 == a2)
    {
      return 1;
    }
  }

  return v43 + 1 == a2;
}

__int16 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,short *,short *>(__int16 *a1, __int16 *a2, __int16 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,short *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (v13 < v14)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,short *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = a1;
        do
        {
          v18 = &v17[v15];
          v19 = v18 + 1;
          v20 = (2 * v15) | 1;
          v15 = 2 * v15 + 2;
          if (v15 >= v8)
          {
            v21 = *v19;
            v15 = v20;
          }

          else
          {
            v23 = v18[2];
            v22 = v18 + 2;
            v21 = v23;
            v24 = *(v22 - 1);
            v25 = v24 < v23;
            if (v24 > v23)
            {
              v21 = *(v22 - 1);
            }

            if (v25)
            {
              v19 = v22;
            }

            else
            {
              v15 = v20;
            }
          }

          *v17 = v21;
          v17 = v19;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v19 == --v6)
        {
          *v19 = v16;
        }

        else
        {
          *v19 = *v6;
          *v6 = v16;
          v26 = (v19 - a1 + 2) >> 1;
          v25 = v26 < 2;
          v27 = v26 - 2;
          if (!v25)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v19;
            if (v30 < v31)
            {
              do
              {
                *v19 = v30;
                v19 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (v30 < v31);
              *v19 = v31;
            }
          }
        }

        v25 = v8-- <= 2;
      }

      while (!v25);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,short *>(uint64_t result, uint64_t a2, uint64_t a3, __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      if (v8 >= a3)
      {
        LOWORD(v9) = *v7;
      }

      else
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = v9 < v10;
        if (v9 <= v10)
        {
          LOWORD(v9) = v7[1];
        }

        if (v11)
        {
          ++v7;
          v6 = v8;
        }
      }

      v12 = *a4;
      if (v12 <= v9)
      {
        do
        {
          *a4 = v9;
          a4 = v7;
          if (v5 < v6)
          {
            break;
          }

          v13 = (2 * v6) | 1;
          v7 = (result + 2 * v13);
          v6 = 2 * v6 + 2;
          if (v6 >= a3)
          {
            LOWORD(v9) = *v7;
            v6 = v13;
          }

          else
          {
            v9 = *v7;
            v14 = v7[1];
            v15 = v9 < v14;
            if (v9 <= v14)
            {
              LOWORD(v9) = v7[1];
            }

            if (v15)
            {
              ++v7;
            }

            else
            {
              v6 = v13;
            }
          }
        }

        while (v12 <= v9);
        *a4 = v12;
      }
    }
  }

  return result;
}

unsigned __int16 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,std::ranges::less &>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unsigned __int16 *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,std::ranges::less>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 253)
  {
    v11 = 0;
    v57 = v10 >> 1;
    v55 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s16(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(8uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      v18 = xmmword_1922FB300;
      v19 = xmmword_1922FB2F0;
      v20 = 0uLL;
      v21 = xmmword_1922FB2E0;
      v22 = 0uLL;
      v23 = 0uLL;
      do
      {
        v24 = vcgeq_u16(*(v7 + v12), v13);
        v25 = vmovl_high_u16(v24);
        v26.i64[0] = v25.u32[2];
        v26.i64[1] = v25.u32[3];
        v27 = vandq_s8(v26, v14);
        v26.i64[0] = v25.u32[0];
        v26.i64[1] = v25.u32[1];
        v28 = vandq_s8(v26, v14);
        v29 = vmovl_u16(*v24.i8);
        v26.i64[0] = v29.u32[2];
        v26.i64[1] = v29.u32[3];
        v30 = vandq_s8(v26, v14);
        v26.i64[0] = v29.u32[0];
        v26.i64[1] = v29.u32[1];
        v23 = vorrq_s8(vshlq_u64(v27, v21), v23);
        v22 = vorrq_s8(vshlq_u64(v28, v19), v22);
        v20 = vorrq_s8(vshlq_u64(v30, v18), v20);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v26, v14), v17), v16);
        v19 = vaddq_s64(v19, v15);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v21 = vaddq_s64(v21, v15);
        v12 += 16;
      }

      while (v12 != 128);
      v31 = vorrq_s8(vorrq_s8(v16, v22), vorrq_s8(v20, v23));
      v12 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v32 = 0uLL;
    v33 = 0x7FFFFFFFFFFFFFF9;
    v34 = xmmword_1922FB310;
    v35 = xmmword_1922FB300;
    v36 = xmmword_1922FB2F0;
    v37 = 0uLL;
    v38 = xmmword_1922FB2E0;
    v39 = 0uLL;
    v40 = 0uLL;
    do
    {
      v41 = vrev64q_s16(*&v9[v33]);
      v42 = vcgtq_u16(v13, vextq_s8(v41, v41, 8uLL));
      v43 = vmovl_high_u16(v42);
      v44.i64[0] = v43.u32[2];
      v44.i64[1] = v43.u32[3];
      v45 = vdupq_n_s64(1uLL);
      v46 = vandq_s8(v44, v45);
      v44.i64[0] = v43.u32[0];
      v44.i64[1] = v43.u32[1];
      v47 = vandq_s8(v44, v45);
      v48 = vmovl_u16(*v42.i8);
      v44.i64[0] = v48.u32[2];
      v44.i64[1] = v48.u32[3];
      v49 = vandq_s8(v44, v45);
      v44.i64[0] = v48.u32[0];
      v44.i64[1] = v48.u32[1];
      v40 = vorrq_s8(vshlq_u64(v46, v38), v40);
      v39 = vorrq_s8(vshlq_u64(v47, v36), v39);
      v37 = vorrq_s8(vshlq_u64(v49, v35), v37);
      v32 = vorrq_s8(vshlq_u64(vandq_s8(v44, v45), v34), v32);
      v50 = vdupq_n_s64(8uLL);
      v36 = vaddq_s64(v36, v50);
      v35 = vaddq_s64(v35, v50);
      v34 = vaddq_s64(v34, v50);
      v38 = vaddq_s64(v38, v50);
      v33 -= 8;
    }

    while (v33 != -71);
    v51 = vorrq_s8(vorrq_s8(v32, v39), vorrq_s8(v37, v40));
    v11 = vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v52 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v53 = &v9[-__clz(__rbit64(v11))];
        v54 = v7[v52];
        v7[v52] = *v53;
        *v53 = v54;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v55 = v11 == 0;
    if (v11)
    {
      v56 = 0;
    }

    else
    {
      v56 = -128;
    }

    v9 = (v9 + v56);
  }

  while (v9 - v7 > 252);
  v57 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v61 = v57 + 1;
    v58 = (v57 + 1) / 2;
    v59 = v61 - v61 / 2;
    goto LABEL_37;
  }

  v58 = v57 - 63;
  v59 = 64;
  v60 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v58 >= 1)
    {
      v63 = 0;
      v11 = 0;
      v64 = v9;
      do
      {
        v65 = *v64--;
        v11 |= (v65 < v2) << v63++;
      }

      while (v58 != v63);
      goto LABEL_46;
    }

    if (v12)
    {
      v73 = 0;
    }

    else
    {
      v73 = v60;
    }

    v69 = &v7[v73];
LABEL_62:
    if (v12)
    {
      v9 -= v58;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v58 < 1)
  {
    v12 = 0;
  }

  else
  {
    v62 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v62] >= v2) << v62;
      ++v62;
    }

    while (v58 != v62);
  }

  v60 = v58;
  v58 = v59;
  if (v55)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v66 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v67 = &v9[-__clz(__rbit64(v11))];
      v68 = v7[v66];
      v7[v66] = *v67;
      *v67 = v68;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v60 = 0;
  }

  v69 = &v7[v60];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v74 = __clz(v12) ^ 0x3F;
      v75 = &v69[v74];
      if (v9 != v75)
      {
        v76 = *v75;
        *v75 = *v9;
        *v9 = v76;
      }

      v12 &= ~(-1 << v74);
      --v9;
    }

    while (v12);
    v69 = v9 + 1;
  }

  else
  {
    do
    {
      v70 = __clz(v11) ^ 0x3F;
      v71 = &v9[-v70];
      if (v69 != v71)
      {
        v72 = *v71;
        *v71 = *v69;
        *v69 = v72;
      }

      v11 &= ~(-1 << v70);
      ++v69;
    }

    while (v11);
  }

LABEL_68:
  v77 = v69 - 1;
  if (v69 - 1 != a1)
  {
    *a1 = *v77;
  }

  *v77 = v2;
  return v69 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned short *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v27 = a1[1];
        v28 = *(a2 - 1);
        if (v27 >= v28)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = a1[1];
        }

        if (v27 <= v28)
        {
          LOWORD(v27) = *(a2 - 1);
        }

        *(a2 - 1) = v27;
        a1[1] = v29;
        v30 = *(a2 - 1);
        v31 = *a1;
        if (v30 >= v31)
        {
          v32 = *a1;
        }

        else
        {
          v32 = *(a2 - 1);
        }

        if (v30 <= v31)
        {
          LOWORD(v30) = *a1;
        }

        *(a2 - 1) = v30;
        v33 = a1[1];
        v34 = *a1;
        if (v32 >= v33)
        {
          v34 = a1[1];
        }

        *a1 = v34;
        if (v32 > v33)
        {
          LOWORD(v33) = v32;
        }

        a1[1] = v33;
        return 1;
      case 4:
        v51 = *a1;
        v52 = a1[2];
        if (v51 >= v52)
        {
          v53 = a1[2];
        }

        else
        {
          v53 = *a1;
        }

        if (v51 <= v52)
        {
          LOWORD(v51) = a1[2];
        }

        a1[2] = v51;
        *a1 = v53;
        v54 = a1[1];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[1];
        }

        if (v54 <= v55)
        {
          LOWORD(v54) = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = *a1;
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = *a1;
        }

        if (v57 <= v56)
        {
          LOWORD(v57) = v56;
        }

        a1[1] = v57;
        *a1 = v58;
        v59 = a1[2];
        v60 = *(a2 - 1);
        if (v59 >= v60)
        {
          v61 = *(a2 - 1);
        }

        else
        {
          v61 = a1[2];
        }

        if (v59 <= v60)
        {
          LOWORD(v59) = *(a2 - 1);
        }

        *(a2 - 1) = v59;
        v62 = a1[1];
        if (v62 >= v61)
        {
          v63 = v61;
        }

        else
        {
          v63 = a1[1];
        }

        if (v62 <= v61)
        {
          LOWORD(v62) = v61;
        }

        a1[2] = v62;
        a1[1] = v63;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (v5 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          LOWORD(v5) = a1[1];
        }

        a1[1] = v5;
        *a1 = v7;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          LOWORD(v8) = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          LOWORD(v11) = a1[2];
        }

        *(a2 - 1) = v11;
        v14 = a1[3];
        v15 = a1[2];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        a1[2] = v15;
        if (v13 > v14)
        {
          LOWORD(v14) = v13;
        }

        a1[3] = v14;
        v16 = a1[1];
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = a1[1];
        }

        if (v16 <= v17)
        {
          LOWORD(v16) = *(a2 - 1);
        }

        *(a2 - 1) = v16;
        v19 = a1[3];
        v20 = *a1;
        if (v19 >= v20)
        {
          v21 = *a1;
        }

        else
        {
          v21 = a1[3];
        }

        if (v19 <= v20)
        {
          v19 = *a1;
        }

        v22 = a1[2];
        if (v21 >= v22)
        {
          LOWORD(v20) = a1[2];
        }

        *a1 = v20;
        if (v21 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        if (v19 >= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = v19;
        }

        if (v19 <= v18)
        {
          LOWORD(v19) = v18;
        }

        a1[3] = v19;
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v18;
        }

        a1[1] = v25;
        if (v24 <= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v24;
        }

        a1[2] = v26;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < v4)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v36 = a1 + 2;
  v35 = a1[2];
  v37 = a1[1];
  if (v37 >= v35)
  {
    v38 = a1[2];
  }

  else
  {
    v38 = a1[1];
  }

  if (v37 > v35)
  {
    v35 = a1[1];
  }

  v39 = *a1;
  if (v35 >= v39)
  {
    v40 = *a1;
  }

  else
  {
    v40 = v35;
  }

  if (v35 <= v39)
  {
    LOWORD(v35) = *a1;
  }

  *v36 = v35;
  if (v39 >= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v39;
  }

  *a1 = v41;
  if (v39 >= v38)
  {
    v42 = v40;
  }

  else
  {
    v42 = v38;
  }

  a1[1] = v42;
  v43 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v44 = 0;
  for (i = 6; ; i += 2)
  {
    v46 = *v43;
    v47 = *v36;
    if (v46 < v47)
    {
      v48 = i;
      while (1)
      {
        *(a1 + v48) = v47;
        v49 = v48 - 2;
        if (v48 == 2)
        {
          break;
        }

        v47 = *(a1 + v48 - 4);
        v48 -= 2;
        if (v46 >= v47)
        {
          v50 = (a1 + v49);
          goto LABEL_94;
        }
      }

      v50 = a1;
LABEL_94:
      *v50 = v46;
      if (++v44 == 8)
      {
        break;
      }
    }

    v36 = v43++;
    if (v43 == a2)
    {
      return 1;
    }
  }

  return v43 + 1 == a2;
}

unsigned __int16 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned short *,unsigned short *>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned short *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (v13 < v14)
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned short *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = a1;
        do
        {
          v18 = &v17[v15];
          v19 = v18 + 1;
          v20 = (2 * v15) | 1;
          v15 = 2 * v15 + 2;
          if (v15 >= v8)
          {
            v21 = *v19;
            v15 = v20;
          }

          else
          {
            v23 = v18[2];
            v22 = v18 + 2;
            v21 = v23;
            v24 = *(v22 - 1);
            v25 = v24 >= v23;
            if (v24 > v23)
            {
              v21 = *(v22 - 1);
            }

            if (v25)
            {
              v15 = v20;
            }

            else
            {
              v19 = v22;
            }
          }

          *v17 = v21;
          v17 = v19;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v19 == --v6)
        {
          *v19 = v16;
        }

        else
        {
          *v19 = *v6;
          *v6 = v16;
          v26 = (v19 - a1 + 2) >> 1;
          v27 = v26 < 2;
          v28 = v26 - 2;
          if (!v27)
          {
            v29 = v28 >> 1;
            v30 = &a1[v29];
            v31 = *v30;
            v32 = *v19;
            if (v31 < v32)
            {
              do
              {
                *v19 = v31;
                v19 = v30;
                if (!v29)
                {
                  break;
                }

                v29 = (v29 - 1) >> 1;
                v30 = &a1[v29];
                v31 = *v30;
              }

              while (v31 < v32);
              *v19 = v32;
            }
          }
        }

        v27 = v8-- <= 2;
      }

      while (!v27);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, _WORD *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      if (v8 >= a3)
      {
        v9 = *v7;
      }

      else
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = v9 >= v10;
        if (v9 <= v10)
        {
          v9 = v7[1];
        }

        if (!v11)
        {
          ++v7;
          v6 = v8;
        }
      }

      v12 = *a4;
      if (v9 >= v12)
      {
        do
        {
          *a4 = v9;
          a4 = v7;
          if (v5 < v6)
          {
            break;
          }

          v13 = (2 * v6) | 1;
          v7 = (result + 2 * v13);
          v6 = 2 * v6 + 2;
          if (v6 >= a3)
          {
            v9 = *v7;
            v6 = v13;
          }

          else
          {
            v9 = *v7;
            v14 = v7[1];
            v15 = v9 >= v14;
            if (v9 <= v14)
            {
              v9 = v7[1];
            }

            if (v15)
            {
              v6 = v13;
            }

            else
            {
              ++v7;
            }
          }
        }

        while (v9 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,std::ranges::less &>(unsigned int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unsigned int *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,std::ranges::less>(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s32(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      v18 = xmmword_1922FB300;
      v19 = 0uLL;
      do
      {
        v20 = vcgeq_u32(*(v7 + v12), v13);
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_1922FB310;
    v27 = xmmword_1922FB300;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_u32(v13, vextq_s8(v29, v29, 8uLL));
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 < v2) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] >= v2) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = v2;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned int *>(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 >= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 <= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 >= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 <= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
        }

        if (v29 > v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 >= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 > v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 >= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 > v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 <= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 <= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 <= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        if (v13 > v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 > v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 >= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 <= v19)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
        }

        if (v22 > v21)
        {
          v21 = v22;
        }

        if (v20 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 <= v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 >= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 > v32)
  {
    v32 = a1[1];
  }

  if (v32 >= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 <= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 < v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned int *,unsigned int *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned int *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned int *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 4) >> 2;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,long *,std::ranges::less &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

int64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,long *,std::ranges::less>(int64_t *a1, int64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_s64(*(v7 + v12), v13), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_1922FB310;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_s64(v13, vextq_s8(*&v9[v19], *&v9[v19], 8uLL)), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 < v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] >= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,long *>(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 >= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 <= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 >= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 <= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
        }

        if (v29 > v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 >= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 > v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 >= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 > v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 <= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 <= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 <= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 <= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        if (v13 > v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 > v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 >= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 <= *a1)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
        }

        if (v22 > v21)
        {
          v21 = v22;
        }

        if (v20 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 <= v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 >= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 > v32)
  {
    v32 = a1[1];
  }

  if (v32 >= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 <= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 < v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,long *,long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 < v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v18 = v21;
            }

            else
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v24 = v25 < 2;
          v26 = v25 - 2;
          if (!v24)
          {
            v27 = v26 >> 1;
            v28 = &a1[v27];
            v29 = *v28;
            v30 = *v18;
            if (*v28 < *v18)
            {
              do
              {
                *v18 = v29;
                v18 = v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[v27];
                v29 = *v28;
              }

              while (*v28 < v30);
              *v18 = v30;
            }
          }
        }

        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,long *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 8 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::ranges::less &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = (a1 + 1);
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::ranges::less>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(*(v7 + v12), v13), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_1922FB310;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(v13, vextq_s8(*&v9[v19], *&v9[v19], 8uLL)), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 < v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] >= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 >= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 <= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 >= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 <= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
        }

        if (v29 > v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 >= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 > v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 >= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 > v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 >= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (*a1 <= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 >= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 <= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 <= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (*a1 <= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        if (v13 > v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 > v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 >= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 <= *a1)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
        }

        if (v22 > v21)
        {
          v21 = v22;
        }

        if (v20 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 <= v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 >= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 > v32)
  {
    v32 = a1[1];
  }

  if (v32 >= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 <= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 < v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned long *,unsigned long *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 8 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

int64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,long long *,std::ranges::less>(int64_t *a1, int64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = (a2 - 1);
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_s64(*(v7 + v12), v13), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = -8;
    v20 = xmmword_1922FB310;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_s64(v13, vextq_s8(*&v9[v19], *&v9[v19], 8uLL)), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 16;
    }

    while (v19 != -520);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-8 * __clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 += v25;
  }

  while (v9 - v7 > 1008);
  v26 = (v9 - v7) >> 3;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
LABEL_37:
    if (v27 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      for (i = 0; i != v27; ++i)
      {
        v12 |= (v7[i] >= v2) << i;
      }
    }

    v29 = v27;
    v27 = v28;
    if (v24)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (!v12)
  {
    goto LABEL_37;
  }

  if (v11)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (v27 >= 1)
  {
    v11 = 0;
    v32 = 0;
    v33 = v9;
    do
    {
      v34 = *v33--;
      v11 |= (v34 < v2) << v32++;
    }

    while (v27 != v32);
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-8 * __clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (v11)
  {
    v27 = 0;
  }

  v39 = &v9[-8 * v27];
  if (v12)
  {
    do
    {
      v40 = __clz(v12) ^ 0x3F;
      v41 = &v38[v40];
      if (v39 != v41)
      {
        v42 = *v41;
        *v41 = *v39;
        *v39 = v42;
      }

      v12 &= ~(-1 << v40);
      v39 -= 8;
    }

    while (v12);
    v38 = (v39 + 8);
  }

  else
  {
    for (; v11; ++v38)
    {
      v43 = __clz(v11) ^ 0x3F;
      v44 = &v39[-8 * v43];
      if (v38 != v44)
      {
        v45 = *v44;
        *v44 = *v38;
        *v38 = v45;
      }

      v11 &= ~(-1 << v43);
    }
  }

  v46 = v38 - 1;
  if (v46 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v46;
}

unint64_t *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long long *,std::ranges::less>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = (a2 - 1);
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s64(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_u64(*(v7 + v12), v13), v14), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = -8;
    v20 = xmmword_1922FB310;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_u64(v13, vextq_s8(*&v9[v19], *&v9[v19], 8uLL)), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 16;
    }

    while (v19 != -520);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-8 * __clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 += v25;
  }

  while (v9 - v7 > 1008);
  v26 = (v9 - v7) >> 3;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
LABEL_37:
    if (v27 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      for (i = 0; i != v27; ++i)
      {
        v12 |= (v7[i] >= v2) << i;
      }
    }

    v29 = v27;
    v27 = v28;
    if (v24)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (!v12)
  {
    goto LABEL_37;
  }

  if (v11)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (v27 >= 1)
  {
    v11 = 0;
    v32 = 0;
    v33 = v9;
    do
    {
      v34 = *v33--;
      v11 |= (v34 < v2) << v32++;
    }

    while (v27 != v32);
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-8 * __clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (v11)
  {
    v27 = 0;
  }

  v39 = &v9[-8 * v27];
  if (v12)
  {
    do
    {
      v40 = __clz(v12) ^ 0x3F;
      v41 = &v38[v40];
      if (v39 != v41)
      {
        v42 = *v41;
        *v41 = *v39;
        *v39 = v42;
      }

      v12 &= ~(-1 << v40);
      v39 -= 8;
    }

    while (v12);
    v38 = (v39 + 8);
  }

  else
  {
    for (; v11; ++v38)
    {
      v43 = __clz(v11) ^ 0x3F;
      v44 = &v39[-8 * v43];
      if (v38 != v44)
      {
        v45 = *v44;
        *v44 = *v38;
        *v38 = v45;
      }

      v11 &= ~(-1 << v43);
    }
  }

  v46 = v38 - 1;
  if (v46 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v46;
}

float *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::ranges::less &>(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

float *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::ranges::less>(float *a1, float *a2, double a3)
{
  *&a3 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*&a3 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (*&a3 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (*&a3 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 505)
  {
    v11 = 0;
    v41 = v10 >> 2;
    v39 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s32(*&a3, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      v18 = xmmword_1922FB300;
      v19 = 0uLL;
      do
      {
        v20 = vmvnq_s8(vcgtq_f32(v13, *(v7 + v12)));
        v21.i64[0] = v20.u32[2];
        v21.i64[1] = v20.u32[3];
        v22 = vandq_s8(v21, v14);
        v21.i64[0] = v20.u32[0];
        v21.i64[1] = v20.u32[1];
        v19 = vorrq_s8(vshlq_u64(v22, v18), v19);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v21, v14), v17), v16);
        v18 = vaddq_s64(v18, v15);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 256);
      v23 = vorrq_s8(v16, v19);
      v12 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v24 = 0uLL;
    v25 = 0x3FFFFFFFFFFFFFFDLL;
    v26 = xmmword_1922FB310;
    v27 = xmmword_1922FB300;
    v28 = 0uLL;
    do
    {
      v29 = vrev64q_s32(*&v9[v25]);
      v30 = vcgtq_f32(v13, vextq_s8(v29, v29, 8uLL));
      v31.i64[0] = v30.u32[2];
      v31.i64[1] = v30.u32[3];
      v32 = vdupq_n_s64(1uLL);
      v33 = vandq_s8(v31, v32);
      v31.i64[0] = v30.u32[0];
      v31.i64[1] = v30.u32[1];
      v28 = vorrq_s8(vshlq_u64(v33, v27), v28);
      v24 = vorrq_s8(vshlq_u64(vandq_s8(v31, v32), v26), v24);
      v34 = vdupq_n_s64(4uLL);
      v27 = vaddq_s64(v27, v34);
      v26 = vaddq_s64(v26, v34);
      v25 -= 4;
    }

    while (v25 != -67);
    v35 = vorrq_s8(v24, v28);
    v11 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v36 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v37 = &v9[-__clz(__rbit64(v11))];
        v38 = v7[v36];
        v7[v36] = *v37;
        *v37 = v38;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v39 = v11 == 0;
    if (v11)
    {
      v40 = 0;
    }

    else
    {
      v40 = -256;
    }

    v9 = (v9 + v40);
  }

  while (v9 - v7 > 504);
  v41 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v45 = v41 + 1;
    v42 = (v41 + 1) / 2;
    v43 = v45 - v45 / 2;
    goto LABEL_37;
  }

  v42 = v41 - 63;
  v43 = 64;
  v44 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v42 >= 1)
    {
      v47 = 0;
      v11 = 0;
      v48 = v9;
      do
      {
        v49 = *v48--;
        v11 |= (v49 < *&a3) << v47++;
      }

      while (v42 != v47);
      goto LABEL_46;
    }

    if (v12)
    {
      v57 = 0;
    }

    else
    {
      v57 = v44;
    }

    v53 = &v7[v57];
LABEL_62:
    if (v12)
    {
      v9 -= v42;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v42 < 1)
  {
    v12 = 0;
  }

  else
  {
    v46 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v46] >= *&a3) << v46;
      ++v46;
    }

    while (v42 != v46);
  }

  v44 = v42;
  v42 = v43;
  if (v39)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v50 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v51 = &v9[-__clz(__rbit64(v11))];
      v52 = v7[v50];
      v7[v50] = *v51;
      *v51 = v52;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v44 = 0;
  }

  v53 = &v7[v44];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v58 = __clz(v12) ^ 0x3F;
      v59 = &v53[v58];
      if (v9 != v59)
      {
        v60 = *v59;
        *v59 = *v9;
        *v9 = v60;
      }

      v12 &= ~(-1 << v58);
      --v9;
    }

    while (v12);
    v53 = v9 + 1;
  }

  else
  {
    do
    {
      v54 = __clz(v11) ^ 0x3F;
      v55 = &v9[-v54];
      if (v53 != v55)
      {
        v56 = *v55;
        *v55 = *v53;
        *v53 = v56;
      }

      v11 &= ~(-1 << v54);
      ++v53;
    }

    while (v11);
  }

LABEL_68:
  v61 = v53 - 1;
  if (v53 - 1 != a1)
  {
    *a1 = *v61;
  }

  *v61 = *&a3;
  return v53 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,float *>(float *a1, float *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 < v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 < v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 < *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 < *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 < v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 >= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 < v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 >= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 < v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 < v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 < v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 < v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 < v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 < v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 < v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 < v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 < v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 < v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 < v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 < v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 < v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 >= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 < *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 < *a1)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 < v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 < v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 < v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 < v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 >= v33)
  {
    v33 = a1[1];
  }

  if (v33 < v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 < v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 < v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 < *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,float *,float *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,float *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,float *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) < v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 >= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 < v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,float *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 < v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

double *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,double *,std::ranges::less &>(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

double *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,double *,std::ranges::less>(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = (a2 - 1) - v7;
  if (v10 < 1009)
  {
    v11 = 0;
    v26 = v10 >> 3;
    v24 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_lane_s64(*&v2, 0);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = xmmword_1922FB310;
      do
      {
        v16 = vorrq_s8(vshlq_u64(vbicq_s8(v14, vcgtq_f64(v13, *(v7 + v12))), v17), v16);
        v17 = vaddq_s64(v17, v15);
        v12 += 16;
      }

      while (v12 != 512);
      v12 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v18 = 0uLL;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    v20 = xmmword_1922FB310;
    do
    {
      v18 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_f64(v13, vextq_s8(*&v9[v19], *&v9[v19], 8uLL)), vdupq_n_s64(1uLL)), v20), v18);
      v20 = vaddq_s64(v20, vdupq_n_s64(2uLL));
      v19 -= 2;
    }

    while (v19 != -65);
    v11 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v22 = &v9[-__clz(__rbit64(v11))];
        v23 = v7[v21];
        v7[v21] = *v22;
        *v22 = v23;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v24 = v11 == 0;
    if (v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = -512;
    }

    v9 = (v9 + v25);
  }

  while (v9 - v7 > 1008);
  v26 = v9 - v7;
  if (!(v12 | v11))
  {
LABEL_36:
    v30 = v26 + 1;
    v27 = (v26 + 1) / 2;
    v28 = v30 - v30 / 2;
    goto LABEL_37;
  }

  v27 = v26 - 63;
  v28 = 64;
  v29 = 64;
  if (v12)
  {
    if (v11)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v27 >= 1)
    {
      v32 = 0;
      v11 = 0;
      v33 = v9;
      do
      {
        v34 = *v33--;
        v11 |= (v34 < v2) << v32++;
      }

      while (v27 != v32);
      goto LABEL_46;
    }

    if (v12)
    {
      v42 = 0;
    }

    else
    {
      v42 = v29;
    }

    v38 = &v7[v42];
LABEL_62:
    if (v12)
    {
      v9 -= v27;
      goto LABEL_64;
    }

    goto LABEL_68;
  }

LABEL_37:
  if (v27 < 1)
  {
    v12 = 0;
  }

  else
  {
    v31 = 0;
    v12 = 0;
    do
    {
      v12 |= (v7[v31] >= v2) << v31;
      ++v31;
    }

    while (v27 != v31);
  }

  v29 = v27;
  v27 = v28;
  if (v24)
  {
    goto LABEL_43;
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v35 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v36 = &v9[-__clz(__rbit64(v11))];
      v37 = v7[v35];
      v7[v35] = *v36;
      *v36 = v37;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v29 = 0;
  }

  v38 = &v7[v29];
  if (!v11)
  {
    goto LABEL_62;
  }

  if (v12)
  {
    do
    {
LABEL_64:
      v43 = __clz(v12) ^ 0x3F;
      v44 = &v38[v43];
      if (v9 != v44)
      {
        v45 = *v44;
        *v44 = *v9;
        *v9 = v45;
      }

      v12 &= ~(-1 << v43);
      --v9;
    }

    while (v12);
    v38 = v9 + 1;
  }

  else
  {
    do
    {
      v39 = __clz(v11) ^ 0x3F;
      v40 = &v9[-v39];
      if (v38 != v40)
      {
        v41 = *v40;
        *v40 = *v38;
        *v38 = v41;
      }

      v11 &= ~(-1 << v39);
      ++v38;
    }

    while (v11);
  }

LABEL_68:
  v46 = v38 - 1;
  if (v38 - 1 != a1)
  {
    *a1 = *v46;
  }

  *v46 = v2;
  return v38 - 1;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,double *>(double *a1, double *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 < v26)
        {
          v27 = *(a1 + 1);
        }

        else
        {
          v27 = *(a2 - 1);
        }

        if (v25 < v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        *(a1 + 1) = v27;
        v28 = *(a2 - 1);
        if (v28 < *a1)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = *a1;
        }

        if (v28 < *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 >= v30)
        {
          v31 = a1[1];
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 < v47)
        {
          v49 = *a1;
        }

        else
        {
          v49 = a1[2];
        }

        if (*a1 >= v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 < v50)
        {
          v51 = v48;
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v48 >= v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 < v51)
        {
          v53 = *a1;
        }

        else
        {
          v53 = v51;
        }

        if (*a1 < v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 < v55)
        {
          v56 = a1[2];
        }

        else
        {
          v56 = *(a2 - 1);
        }

        if (v54 < v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 < v56)
        {
          v58 = a1[1];
        }

        else
        {
          v58 = v56;
        }

        if (v57 < v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 < v6)
        {
          v7 = *a1;
        }

        else
        {
          v7 = a1[1];
        }

        if (*a1 < v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 < v9)
        {
          v10 = *(a1 + 3);
        }

        else
        {
          v10 = *(a2 - 1);
        }

        if (v8 < v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        *(a1 + 3) = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 < v12)
        {
          v13 = *(a2 - 1);
        }

        else
        {
          v13 = a1[2];
        }

        if (v11 < v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = *(a1 + 2);
        v14 = a1[3];
        v16 = a1[1];
        if (v13 >= v14)
        {
          v15 = *(a1 + 3);
          v14 = v13;
        }

        *(a1 + 2) = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 < v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v16 >= v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 < *a1)
        {
          v22 = a1[3];
        }

        else
        {
          v22 = *a1;
        }

        if (v20 < *a1)
        {
          v20 = *a1;
        }

        if (v22 >= v21)
        {
          v19 = a1[2];
          v21 = v22;
        }

        if (v20 < v18)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }

        if (v20 < v18)
        {
          v20 = v18;
        }

        if (v23 >= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 < v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v32 = a1 + 2;
  v33 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 < v33)
  {
    v36 = a1[1];
  }

  else
  {
    v36 = a1[2];
  }

  if (v34 >= v33)
  {
    v33 = a1[1];
  }

  if (v33 < v35)
  {
    v37 = v33;
  }

  else
  {
    v37 = *a1;
  }

  if (v33 < v35)
  {
    v33 = *a1;
  }

  *v32 = v33;
  if (v37 < v36)
  {
    v38 = v35;
  }

  else
  {
    v38 = v36;
  }

  if (v37 < v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 24; ; i += 8)
  {
    v42 = *v39;
    v43 = *v32;
    if (*v39 < *v32)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v43 = *(a1 + v44 - 16);
        v44 -= 8;
        if (v42 >= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_85;
        }
      }

      v46 = a1;
LABEL_85:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v32 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}