uint64_t sub_2772AD458(int *a1, uint64_t *a2, unsigned int a3, int a4, int a5, int a6, unsigned int a7, int a8, int a9, uint64_t a10, int a11)
{
  v15 = a3 & 0xFFFFFFFB;
  if (a3 == 7)
  {
    v16 = -2;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3 == 7;
  }

  if (a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3 == 6;
  }

  if (a4)
  {
    v19 = a3 == 6;
  }

  else
  {
    v19 = 0;
  }

  v20 = a5 != 0;
  if (v15 == 1)
  {
    v21 = 12;
  }

  else
  {
    v21 = 2 * (a3 == 7);
  }

  if (v15 == 1)
  {
    v22 = 3;
  }

  else
  {
    v22 = a3 == 7;
  }

  if (v15 == 1)
  {
    v16 = -4;
    v23 = 1;
  }

  else
  {
    v23 = a3 == 7;
  }

  if (v23)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = a6;
  }

  else
  {
    v25 = 0;
  }

  if (!a3)
  {
    v26 = 0;
    if (!v24)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  if (v15 == 1)
  {
    v26 = a6 + 4 * a7 + 1;
    if (!v24)
    {
      goto LABEL_33;
    }

LABEL_44:
    v27 = a2[2];
    v21 = v16;
    goto LABEL_45;
  }

  if (v18)
  {
    v26 = 17;
  }

  else
  {
    v26 = 18;
  }

  if (a3 == 6)
  {
LABEL_43:
    if (!v24)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  v29 = v25 + 2 * v24;
  if (v17)
  {
    v26 = v29 + 19;
    goto LABEL_43;
  }

  v26 = v29 + 23;
  if (v24)
  {
    goto LABEL_44;
  }

LABEL_33:
  v27 = a2[1];
  LODWORD(v28) = a5 != 0;
  if (!v27)
  {
    goto LABEL_46;
  }

  if (!*(v27 + 1) && *(v27 + 2) == 25)
  {
    LODWORD(v28) = 1;
    goto LABEL_46;
  }

LABEL_45:
  v28 = (*(v27 + 32) >> (v21 + v26)) & 1;
LABEL_46:
  if (v25)
  {
    v30 = *(a2[2] + 32) >> (v26 - 1);
    goto LABEL_76;
  }

  v31 = *a2;
  if (!*a2)
  {
    goto LABEL_77;
  }

  if (*(a2[2] + 24) == 1)
  {
    if (!*(v31 + 24))
    {
      v33 = a3 == 7 && v24 > 0;
      v34 = v24 > 1 && v15 == 1;
      if (v34 || v33)
      {
        v31 = a2[3];
      }

      else if (!a3)
      {
        LOBYTE(v35) = 0;
        goto LABEL_72;
      }

      if (v15 == 1)
      {
        LOBYTE(v35) = (8 * (a7 & 1)) | 1;
        v22 = 3;
      }

      else
      {
        if (v18)
        {
          LOBYTE(v35) = 17;
        }

        else
        {
          if (v17)
          {
            v63 = 19;
          }

          else
          {
            v63 = 23;
          }

          if (v19)
          {
            LOBYTE(v35) = 18;
          }

          else
          {
            LOBYTE(v35) = v63;
          }
        }

        v22 = a3 == 7;
      }

      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (*(a2[2] + 24) || *(v31 + 24) != 1)
  {
LABEL_71:
    LOBYTE(v35) = v26;
    goto LABEL_72;
  }

  if (v15 == 1)
  {
    if (a11)
    {
      v22 = 11;
    }

    else
    {
      v22 = 3;
    }

    v35 = (4 * (a7 >> 1)) | 1;
    goto LABEL_72;
  }

  if (a3 == 7)
  {
    if (a11)
    {
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

LABEL_132:
    if (v18)
    {
      LOBYTE(v35) = 17;
    }

    else
    {
      if (v17)
      {
        v62 = 19;
      }

      else
      {
        v62 = 23;
      }

      if (v19)
      {
        LOBYTE(v35) = 18;
      }

      else
      {
        LOBYTE(v35) = v62;
      }
    }

    goto LABEL_72;
  }

  v22 = 0;
  if (a3)
  {
    goto LABEL_132;
  }

  LOBYTE(v35) = 0;
LABEL_72:
  if (!*(v31 + 1) && *(v31 + 2) == 25)
  {
    v20 = 1;
    goto LABEL_77;
  }

  v30 = *(v31 + 32) >> (v35 + v22);
LABEL_76:
  v20 = v30 & 1;
LABEL_77:
  v36 = a1 + 4;
  if (!sub_27737D7D4(a1, a1 + 2 * ((v20 | (2 * v28) | (4 * dword_2773BBD74[a3])) + 85) + 16))
  {
    return 0;
  }

  v37 = a10;
  *(a2[2] + 32) |= 1 << v26;
  v38 = dword_2773BBD94[a3];
  v39 = v38 - 1;
  if (a8)
  {
    v40 = a9 == 1;
  }

  else
  {
    v40 = 1;
  }

  v41 = &unk_2773BBDD4;
  if (v40)
  {
    v41 = &unk_2773BBDB4;
  }

  v42 = &unk_2773BBE14;
  if (v40)
  {
    v42 = &unk_2773BBDF4;
  }

  v64 = dword_2773BBD94[a3];
  v65 = v38 - 1;
  if (a3 == 7 || a3 == 1)
  {
    v37 = a10 - 2;
    v43 = 1;
    v39 = dword_2773BBD94[a3];
  }

  else
  {
    v43 = 0;
  }

  v45 = &off_27A7160C8;
  if (!a8)
  {
    v45 = &off_27A716088;
  }

  v67 = a3;
  v66 = a1 + 4;
  v44 = 0;
  if (v43 < v39)
  {
    v46 = v36 + 2 * v41[a3];
    v47 = v45[a3];
    v48 = v36 + 2 * v42[a3];
    v49 = *(&off_27A716108 + a3);
    do
    {
      if (sub_27737D7D4(a1, &v46[2 * v47[v43]]))
      {
        *(v37 + 2 * v43) = 1;
        v44 = (v44 + 1);
        if (sub_27737D7D4(a1, &v48[2 * *(v49 + 4 * v43)]))
        {
          if (v43 <= v39)
          {
            v50 = v39;
          }

          else
          {
            v50 = v43;
          }

          v43 = v50 + 1;
        }
      }

      ++v43;
    }

    while (v43 < v39);
  }

  if (v43 <= v39)
  {
    *(v37 + 2 * v43) = 1;
    v44 = (v44 + 1);
  }

  v51 = 0;
  v52 = v66 + 2 * dword_2773BC3A8[a3];
  v53 = v66 + 2 * dword_2773BC3C8[v67];
  v54 = v64 + 1;
  v55 = (a10 + 2 * v65);
  v56 = 1;
  do
  {
    if (*v55)
    {
      if (v56 >= 4)
      {
        v57 = 4;
      }

      else
      {
        v57 = v56;
      }

      v58 = sub_27737D7D4(a1, &v52[2 * v57]);
      v59 = (*v55 + v58);
      *v55 += v58;
      if (v59 == 2)
      {
        if (v51 >= 4)
        {
          v60 = 4;
        }

        else
        {
          v60 = v51;
        }

        v56 = 0;
        *v55 += sub_2772AD9FC(a1, &v53[2 * v60]);
        ++v51;
      }

      else if (v56)
      {
        ++v56;
      }

      else
      {
        v56 = 0;
      }

      if (sub_27737D89C(a1))
      {
        *v55 = -*v55;
      }
    }

    --v54;
    --v55;
  }

  while (v54 > 1);
  return v44;
}

uint64_t sub_2772AD958(int *a1, int a2)
{
  v3 = 0;
  do
  {
    v4 = a2;
    v5 = sub_27737D89C(a1);
    v6 = 1 << v4;
    if (v5)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = v4;
    }

    if (!v5)
    {
      v6 = 0;
    }

    v3 += v6;
  }

  while (v5 && a2 < 15);
  v7 = 0;
  if (a2)
  {
    if (v5)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8 - 1;
    do
    {
      v10 = sub_27737D89C(a1);
      v11 = 1 << v9;
      if (!v10)
      {
        v11 = 0;
      }

      v7 |= v11;
      --v9;
    }

    while (v9 != -1);
  }

  return (v7 + v3);
}

uint64_t sub_2772AD9FC(int *a1, unsigned __int8 *a2)
{
  result = sub_27737D7D4(a1, a2);
  if (result)
  {
    v5 = 0;
    do
    {
      v6 = sub_27737D7D4(a1, a2);
      v7 = v5 - 1;
      if (!v6)
      {
        break;
      }
    }

    while (v5-- != -11);
    if (v6)
    {
      return sub_2772AD958(a1, 0) - v7 + 1;
    }

    else
    {
      return -v7;
    }
  }

  return result;
}

double sub_2772ADA74(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 0;
  v4 = *(a1 + 4);
  v5 = -1;
  do
  {
    if (v4 == byte_2773B9FA8[v3])
    {
      v5 = v3;
    }

    ++v3;
  }

  while (v3 != 20);
  if (v5 == -1)
  {
    v5 = 0;
  }

  else if (v4 == 11 && *(a1 + 11))
  {
    v5 = 1;
  }

  LODWORD(a3) = dword_2773B9F58[v5];
  v6 = fmin(*&a3 * 384.0 / ((((*(a1 + 1328) << 8) + 256 + ((*(a1 + 1328) << 8) + 256) * *(a1 + 1332)) * (2 - *(a1 + 1336))) * 1.5), 16.0);
  *(a2 + 20) = 5;
  *(a2 + 28) = 0x200000002;
  *(a2 + 36) = 2;
  *(a2 + 70) = 1;
  HIDWORD(v7) = 1;
  *(a2 + 72) = xmmword_2773BC3F0;
  if (*a1 == 100 && *(a1 + 11) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *(a2 + 88) = v8;
  *(a2 + 92) = v6;
  LODWORD(v7) = dword_2773B9EB8[v5];
  *&v9 = v7 * 1000.0 * 0.015625 + -1.0 + 0.5;
  *(a2 + 108) = *&v9;
  LODWORD(v9) = dword_2773B9F08[v5];
  *(a2 + 236) = (v9 * 200.0 * 0.0625 + -1.0 + 0.5);
  *&result = 0x1700000017;
  *(a2 + 492) = xmmword_2773B7400;
  return result;
}

uint64_t sub_2772ADC00(uint64_t a1, uint64_t a2, int a3, BOOL *a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  if (a3)
  {
    v7 = 0;
    v8 = *(a1 + 24);
    LODWORD(v9) = 8;
    v10 = 8;
    do
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v11 = __clz(v5 | 1);
      if (v5)
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 + 1;
      }

      v13 = v5 << (v12 + 1) >> -v12;
      if (!v12)
      {
        v13 = 0;
      }

      v14 = ((v13 + (1 << v12)) >> 1) - ((v13 + (1 << v12)) >> 1) * 2 * ((v13 + (1 << v12)) & 1);
      if (v14 != v14)
      {
        return 4294958327;
      }

      v15 = v6 + 2 * v12 + 1;
      v16 = (v4 + (v15 >> 3));
      if (v16 <= v8)
      {
        v4 += v15 >> 3;
      }

      else
      {
        v4 = v8;
      }

      v6 = v15 & 7;
      v5 = bswap32(*v16) << v6;
      v9 = (v14 + v10);
      *a4 = (v9 | v7) == 0;
      v17 = v9;
      if (!v9)
      {
LABEL_14:
        LODWORD(v9) = 0;
        v17 = v10;
      }

      *(a2 + v7++) = v17;
      v10 = v17;
    }

    while (a3 != v7);
  }

  v18 = 0;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 36) = v6;
  return v18;
}

uint64_t sub_2772ADCF0(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = __clz(v5 | 1);
  if (!v5)
  {
    ++v7;
  }

  v8 = (v5 << (v7 + 1)) >> -v7;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v8 + ~(-1 << v7);
  a2[218] = v9;
  v10 = v6 + 2 * v7 + 1;
  v11 = v10 & 7;
  v12 = (v4 + (v10 >> 3));
  v13 = bswap32(*v12) << (v10 & 7);
  if (v12 <= v3)
  {
    v14 = v12;
  }

  else
  {
    v14 = v3;
  }

  v15 = __clz(v13 | 1);
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = v13 << (v16 + 1) >> -v16;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = v17 + ~(-1 << v16);
  a2[219] = v18;
  v19 = v11 + 2 * v16 + 1;
  v20 = v19 & 7;
  v21 = (v14 + (v19 >> 3));
  v22 = bswap32(*v21) << (v19 & 7);
  if (v21 > v3)
  {
    v21 = v3;
  }

  v23 = a2[16];
  if ((v23 - 32) < 0xFFFFFFDF)
  {
    goto LABEL_16;
  }

  v25 = 0;
  v26 = a2 + 252;
  v27 = 1 << v18;
  v28 = 1 << v9;
  if ((v23 + 1) > 1)
  {
    v29 = (v23 + 1);
  }

  else
  {
    v29 = 1;
  }

  v30 = a2 + 253;
  do
  {
    v31 = (v20 + 1);
    v32 = (v20 + 1) & 7;
    v33 = (v21 + (v31 >> 3));
    v34 = bswap32(*v33) << (v31 & 7);
    if (v33 > v3)
    {
      v33 = v3;
    }

    if ((v22 & 0x80000000) != 0)
    {
      v36 = __clz(v34 | 1);
      if (!v34)
      {
        ++v36;
      }

      v37 = v34 << (v36 + 1) >> -v36;
      if (!v36)
      {
        v37 = 0;
      }

      v38 = 1 << v36;
      v39 = v32 + 2 * v36 + 1;
      v40 = v39 & 7;
      v41 = (v33 + (v39 >> 3));
      v42 = bswap32(*v41) << v40;
      if (v41 <= v3)
      {
        v43 = v41;
      }

      else
      {
        v43 = v3;
      }

      v26[3 * v25] = ((v37 + v38) >> 1) - ((v37 + v38) >> 1) * 2 * ((v37 + v38) & 1);
      v44 = __clz(v42 | 1);
      if (!v42)
      {
        ++v44;
      }

      v45 = v42 << (v44 + 1) >> -v44;
      if (v44)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      v47 = 1 << v44;
      v48 = v40 + 2 * v44 + 1;
      v32 = v48 & 7;
      v49 = (v43 + (v48 >> 3));
      v34 = bswap32(*v49) << v32;
      if (v49 <= v3)
      {
        v33 = v49;
      }

      else
      {
        v33 = v3;
      }

      v35 = ((v46 + v47) >> 1) - ((v46 + v47) >> 1) * 2 * ((v46 + v47) & 1);
    }

    else
    {
      v35 = 0;
      v26[3 * v25] = v28;
    }

    a2[3 * v25 + 444] = v35;
    v50 = (v32 + 1);
    v20 = (v32 + 1) & 7;
    v21 = (v33 + (v50 >> 3));
    v22 = bswap32(*v21) << (v50 & 7);
    if (v21 > v3)
    {
      v21 = v3;
    }

    v51 = 2;
    v52 = v30;
    do
    {
      if ((v34 & 0x80000000) != 0)
      {
        v54 = __clz(v22 | 1);
        if (!v22)
        {
          ++v54;
        }

        v55 = v22 << (v54 + 1) >> -v54;
        if (!v54)
        {
          v55 = 0;
        }

        v56 = 1 << v54;
        v57 = v20 + 2 * v54 + 1;
        v58 = v57 & 7;
        v59 = (v21 + (v57 >> 3));
        v60 = bswap32(*v59) << v58;
        if (v59 <= v3)
        {
          v61 = v59;
        }

        else
        {
          v61 = v3;
        }

        *v52 = ((v55 + v56) >> 1) - ((v55 + v56) >> 1) * 2 * ((v55 + v56) & 1);
        v62 = __clz(v60 | 1);
        if (!v60)
        {
          ++v62;
        }

        if (v62)
        {
          v63 = v60 << (v62 + 1) >> -v62;
        }

        else
        {
          v63 = 0;
        }

        v64 = 1 << v62;
        v65 = v58 + 2 * v62 + 1;
        v20 = (v58 + 2 * v62 + 1) & 7;
        v21 = (v61 + (v65 >> 3));
        v22 = bswap32(*v21) << (v65 & 7);
        if (v21 > v3)
        {
          v21 = v3;
        }

        v53 = ((v63 + v64) >> 1) - ((v63 + v64) >> 1) * 2 * ((v63 + v64) & 1);
      }

      else
      {
        v53 = 0;
        *v52 = v27;
      }

      v52[192] = v53;
      ++v52;
      --v51;
    }

    while (v51);
    ++v25;
    v30 += 3;
  }

  while (v25 != v29);
  v66 = a2[5];
  if (v66 != 6 && v66 != 1 || *(a3 + 68) != 1)
  {
LABEL_113:
    v24 = 0;
    goto LABEL_114;
  }

  v67 = a2[17];
  if ((v67 - 32) >= 0xFFFFFFDF)
  {
    v68 = 0;
    v69 = a2 + 348;
    v70 = a2 + 540;
    if ((v67 + 1) > 1)
    {
      v71 = (v67 + 1);
    }

    else
    {
      v71 = 1;
    }

    v72 = a2 + 349;
    do
    {
      v73 = (v20 + 1);
      v74 = (v20 + 1) & 7;
      v75 = (v21 + (v73 >> 3));
      v76 = bswap32(*v75) << (v73 & 7);
      if (v75 > v3)
      {
        v75 = v3;
      }

      if ((v22 & 0x80000000) != 0)
      {
        v78 = __clz(v76 | 1);
        if (!v76)
        {
          ++v78;
        }

        v79 = v76 << (v78 + 1) >> -v78;
        if (!v78)
        {
          v79 = 0;
        }

        v80 = 1 << v78;
        v81 = v74 + 2 * v78 + 1;
        v82 = v81 & 7;
        v83 = (v75 + (v81 >> 3));
        v84 = bswap32(*v83) << v82;
        if (v83 <= v3)
        {
          v85 = v83;
        }

        else
        {
          v85 = v3;
        }

        v69[3 * v68] = ((v79 + v80) >> 1) - ((v79 + v80) >> 1) * 2 * ((v79 + v80) & 1);
        v86 = __clz(v84 | 1);
        if (!v84)
        {
          ++v86;
        }

        v87 = v84 << (v86 + 1) >> -v86;
        if (v86)
        {
          v88 = v87;
        }

        else
        {
          v88 = 0;
        }

        v89 = 1 << v86;
        v90 = v82 + 2 * v86 + 1;
        v74 = v90 & 7;
        v91 = (v85 + (v90 >> 3));
        v76 = bswap32(*v91) << v74;
        if (v91 <= v3)
        {
          v75 = v91;
        }

        else
        {
          v75 = v3;
        }

        v77 = ((v88 + v89) >> 1) - ((v88 + v89) >> 1) * 2 * ((v88 + v89) & 1);
      }

      else
      {
        v77 = 0;
        v69[3 * v68] = v28;
      }

      v70[3 * v68] = v77;
      v92 = (v74 + 1);
      v20 = (v74 + 1) & 7;
      v21 = (v75 + (v92 >> 3));
      v22 = bswap32(*v21) << (v92 & 7);
      if (v21 > v3)
      {
        v21 = v3;
      }

      v93 = 2;
      v94 = v72;
      do
      {
        if ((v76 & 0x80000000) != 0)
        {
          v96 = __clz(v22 | 1);
          if (!v22)
          {
            ++v96;
          }

          v97 = v22 << (v96 + 1) >> -v96;
          if (!v96)
          {
            v97 = 0;
          }

          v98 = 1 << v96;
          v99 = v20 + 2 * v96 + 1;
          v100 = v99 & 7;
          v101 = (v21 + (v99 >> 3));
          v102 = bswap32(*v101) << v100;
          if (v101 <= v3)
          {
            v103 = v101;
          }

          else
          {
            v103 = v3;
          }

          *v94 = ((v97 + v98) >> 1) - ((v97 + v98) >> 1) * 2 * ((v97 + v98) & 1);
          v104 = __clz(v102 | 1);
          if (!v102)
          {
            ++v104;
          }

          if (v104)
          {
            v105 = v102 << (v104 + 1) >> -v104;
          }

          else
          {
            v105 = 0;
          }

          v106 = 1 << v104;
          v107 = v100 + 2 * v104 + 1;
          v20 = (v100 + 2 * v104 + 1) & 7;
          v21 = (v103 + (v107 >> 3));
          v22 = bswap32(*v21) << (v107 & 7);
          if (v21 > v3)
          {
            v21 = v3;
          }

          v95 = ((v105 + v106) >> 1) - ((v105 + v106) >> 1) * 2 * ((v105 + v106) & 1);
        }

        else
        {
          v95 = 0;
          *v94 = v27;
        }

        v94[192] = v95;
        ++v94;
        --v93;
      }

      while (v93);
      ++v68;
      v72 += 3;
    }

    while (v68 != v71);
    goto LABEL_113;
  }

LABEL_16:
  v24 = 4294958327;
LABEL_114:
  *(a1 + 16) = v21;
  *(a1 + 32) = v22;
  *(a1 + 36) = v20;
  return v24;
}

int8x16_t *sub_2772AE340(int8x16_t *result, int a2, int16x8_t *a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i < a4; i += 2)
    {
      v5 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a3[2], vzip1q_s8(*(result + a2), 0))), vaddq_s16(a3[3], vzip2q_s8(*(result + a2), 0)));
      *result = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*a3, vzip1q_s8(*result, 0))), vaddq_s16(a3[1], vzip2q_s8(*result, 0)));
      *(result + a2) = v5;
      a3 += 4;
      result = (result + 2 * a2);
    }
  }

  return result;
}

int8x16_t *sub_2772AE3B4(int8x16_t *result, int a2, uint64_t a3, int16x8_t *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = (a3 + 16 * v5);
      v7 = vqmovun_high_s16(vqmovun_s16(vaddq_s16(a4[2], vzip1q_s8(v6[1], 0))), vaddq_s16(a4[3], vzip2q_s8(v6[1], 0)));
      *result = vqmovun_high_s16(vqmovun_s16(vaddq_s16(*a4, vzip1q_s8(*v6, 0))), vaddq_s16(a4[1], vzip2q_s8(*v6, 0)));
      *(result + a2) = v7;
      result = (result + 2 * a2);
      v5 += 2;
      a4 += 4;
    }

    while (v5 < a5);
  }

  return result;
}

int8x16_t *sub_2772AE428(int8x16_t *result, unsigned int a2, int8x16_t *a3, unsigned int a4, int16x8_t *a5, int a6)
{
  if (a6 >= 1)
  {
    for (i = 0; i < a6; i += 2)
    {
      v7 = *(result + a2);
      v8 = *(a3 + a4);
      v9 = vsubq_s16(vzip2q_s8(*result, 0), vzip2q_s8(*a3, 0));
      *a5 = vsubq_s16(vzip1q_s8(*result, 0), vzip1q_s8(*a3, 0));
      a5[1] = v9;
      a5[2] = vsubq_s16(vzip1q_s8(v7, 0), vzip1q_s8(v8, 0));
      a5[3] = vsubq_s16(vzip2q_s8(v7, 0), vzip2q_s8(v8, 0));
      result = (result + 2 * a2);
      a3 = (a3 + 2 * a4);
      a5 += 4;
    }
  }

  return result;
}

uint8x8_t *sub_2772AE4A4(uint8x8_t *result, unsigned int a2, uint8x8_t *a3, unsigned int a4, uint64_t a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (a5 + 16 * v6);
      v8 = vsubl_u8(*(result + a2), *(a3 + a4));
      *v7 = vsubl_u8(*result, *a3);
      v7[1] = v8;
      result = (result + 2 * a2);
      a3 = (a3 + 2 * a4);
      v6 += 2;
    }

    while (v6 < a6);
  }

  return result;
}

uint64_t sub_2772AE4F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 8; ++i)
  {
    for (j = 0; j != 8; ++j)
    {
      v6 = *(a4 + 2 * j) + *(a3 + j);
      if (v6 >= 255)
      {
        v6 = 255;
      }

      *(result + j) = v6 & ~(v6 >> 31);
    }

    result += a2;
    a4 += 16;
    a3 += 8;
  }

  return result;
}

uint64_t sub_2772AE544(uint64_t a1)
{
  sub_2773B1990(0);
  v2 = *a1;
  while (1)
  {
    v3 = *(a1 + 32);
    if (v3 >= 1)
    {
      sub_2773B1EA4(v3);
    }

    sub_2773B1DE0(*(a1 + 8));
    sub_2773B1C78(*v2);
    v4 = *(v2 + 16);
    sub_2773B1C84(*v2);
    if (v4 == -1)
    {
      break;
    }

    os_retain(*(v2 + 40));
    voucher_adopt();
    sub_2773B1908(v2);
    sub_2773B1DEC(*(a1 + 24));
    v5 = voucher_adopt();
    os_release(v5);
  }

  return 0;
}

uint64_t sub_2772AE5E0(_opaque_pthread_t *a1, thread_policy_flavor_t a2, integer_t *a3)
{
  __qos_class = QOS_CLASS_UNSPECIFIED;
  result = pthread_get_qos_class_np(a1, &__qos_class, 0);
  if (!result && __qos_class != QOS_CLASS_UTILITY)
  {
    v7 = pthread_mach_thread_np(a1);
    return thread_policy_set(v7, a2, a3, 1u);
  }

  return result;
}

uint64_t sub_2772AE650(integer_t a1)
{
  result = dword_280A71160;
  if (!dword_280A71160)
  {
    result = sub_2773B1DFC(8u);
    dword_280A71160 = result;
  }

  if (result >= 3)
  {
    v4 = a1;
    v3 = pthread_self();
    return sub_2772AE5E0(v3, 4u, &v4);
  }

  return result;
}

uint64_t sub_2772AE6AC(uint64_t a1, uint64_t a2, void *a3)
{
  VTVideoDecoderGetClassID();
  v4 = CMDerivedObjectCreate();
  FigSignalErrorAtGM();
  *a3 = 0;
  return v4;
}

void VCPAVCRegisterDecoder()
{
  if (qword_280B9ABB8 != -1)
  {
    sub_2773B1EE8();
  }
}

void sub_2772AE7AC()
{
  keys[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  keys[0] = *MEMORY[0x277CE2B70];
  values = *MEMORY[0x277CBED10];
  v1 = CFDictionaryCreate(v0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  VTRegisterVideoDecoderWithInfo();
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2772AE878()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[3];
  if (v1)
  {
    sub_277391538(v1);
    DerivedStorage[3] = 0;
  }

  v2 = DerivedStorage[143];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[143] = 0;
  }

  *DerivedStorage = 0;
  result = FigFormatDescriptionRelease();
  DerivedStorage[2] = 0;
  return result;
}

__CFString *sub_2772AE8CC(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<H264VideoDecoder %p>", a1);
  return Mutable;
}

uint64_t sub_2772AE924(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, *MEMORY[0x277CE2698]))
  {
    if (CFEqual(a2, *MEMORY[0x277CE26C0]))
    {
      v10 = (DerivedStorage + 1128);
      v11 = a3;
      v12 = kCFNumberDoubleType;
LABEL_8:
      v13 = CFNumberCreate(v11, v12, v10);
LABEL_23:
      *a4 = v13;
      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x277CE26E0]))
    {
      if (qword_280B9ABB0 != -1)
      {
        sub_2773B1F00();
      }

      v13 = qword_280B9ABA0;
      if (qword_280B9ABA0)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, *MEMORY[0x277CE2708]))
    {
      v10 = (DerivedStorage + 52);
    }

    else
    {
      if (!CFEqual(a2, *MEMORY[0x277CE26B0]))
      {
        if (CFEqual(a2, *MEMORY[0x277CE2678]))
        {
          v15 = 2 * *(DerivedStorage + 1084);
          v16 = (DerivedStorage + 1088);
        }

        else
        {
          if (!CFEqual(a2, *MEMORY[0x277CE2680]))
          {
            if (!CFEqual(a2, *MEMORY[0x277CE26F8]))
            {
              if (CFEqual(a2, *MEMORY[0x277CE26B8]))
              {
                v13 = *(DerivedStorage + 1144);
                if (!v13)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              goto LABEL_16;
            }

            v10 = (DerivedStorage + 60);
            goto LABEL_28;
          }

          v15 = 2 * *(DerivedStorage + 1086);
          v16 = (DerivedStorage + 1104);
        }

        v13 = CFDataCreate(a3, v16, v15);
        goto LABEL_23;
      }

      v10 = (DerivedStorage + 56);
    }

LABEL_28:
    v11 = a3;
    v12 = kCFNumberSInt32Type;
    goto LABEL_8;
  }

  v8 = *(DerivedStorage + 32);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = MEMORY[0x277CE2750];
      goto LABEL_21;
    }

    if (v8 == 3)
    {
      v9 = MEMORY[0x277CE2758];
      goto LABEL_21;
    }
  }

  else
  {
    if (!v8)
    {
      v9 = MEMORY[0x277CE2748];
      goto LABEL_21;
    }

    if (v8 == 1)
    {
      v9 = MEMORY[0x277CE2760];
LABEL_21:
      v13 = *v9;
LABEL_22:
      v13 = CFRetain(v13);
      goto LABEL_23;
    }
  }

LABEL_16:

  return FigSignalErrorAtGM();
}

uint64_t sub_2772AEBC8(uint64_t a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x277CE2698]))
  {
    if (!a3)
    {
LABEL_5:
      result = 0;
      *(DerivedStorage + 32) = 0;
      return result;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      if (CFEqual(a3, *MEMORY[0x277CE2748]))
      {
        goto LABEL_5;
      }

      if (CFEqual(a3, *MEMORY[0x277CE2760]))
      {
        result = 0;
        v9 = 1;
LABEL_34:
        *(DerivedStorage + 32) = v9;
        return result;
      }

      if (CFEqual(a3, *MEMORY[0x277CE2750]))
      {
        result = 0;
        v9 = 2;
        goto LABEL_34;
      }

      if (CFEqual(a3, *MEMORY[0x277CE2758]))
      {
        result = 0;
        v9 = 3;
        goto LABEL_34;
      }
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26C0]))
  {
    if (!a3)
    {
      result = 0;
      *(DerivedStorage + 1128) = 0x3FF0000000000000;
      return result;
    }

    v8 = CFNumberGetTypeID();
    if (v8 == CFGetTypeID(a3))
    {
      valuePtr = 1.0;
      CFNumberGetValue(a3, kCFNumberDoubleType, &valuePtr);
      if (valuePtr < 0.0 || valuePtr > 1.0)
      {
        return FigSignalErrorAtGM();
      }

      result = 0;
      *(DerivedStorage + 1128) = valuePtr;
      return result;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26E0]))
  {
LABEL_14:

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, *MEMORY[0x277CE2708]))
  {
    if (!a3)
    {
      result = 0;
      *(DerivedStorage + 52) = 0;
      return result;
    }

    v10 = CFNumberGetTypeID();
    if (v10 != CFGetTypeID(a3))
    {
      return 0;
    }

    v11 = (DerivedStorage + 52);
    goto LABEL_39;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26B0]))
  {
    if (!a3)
    {
      result = 0;
      *(DerivedStorage + 56) = 0;
      return result;
    }

    v12 = CFNumberGetTypeID();
    if (v12 != CFGetTypeID(a3))
    {
      return 0;
    }

    v11 = (DerivedStorage + 56);
    goto LABEL_39;
  }

  if (CFEqual(a2, *MEMORY[0x277CE26F8]))
  {
    if (!a3)
    {
      if (*(DerivedStorage + 24))
      {
        v16 = sub_2772AF278(*(DerivedStorage + 1068), *(DerivedStorage + 1072));
        result = 0;
        *(DerivedStorage + 60) = v16;
      }

      else
      {
        result = 0;
        *(DerivedStorage + 60) = 0;
      }

      return result;
    }

    v13 = CFNumberGetTypeID();
    if (v13 != CFGetTypeID(a3))
    {
      return 0;
    }

    v11 = (DerivedStorage + 60);
LABEL_39:
    CFNumberGetValue(a3, kCFNumberSInt32Type, v11);
    return 0;
  }

  if (CFEqual(a2, @"NegotiationDetails"))
  {
    *(DerivedStorage + 64) = 0;
    v14 = (DerivedStorage + 64);
    if (a3)
    {
      v15 = CFStringGetTypeID();
      if (v15 == CFGetTypeID(a3))
      {
        CFStringGetCString(a3, v14, 1001, 0);
      }
    }

    return 0;
  }

  if (!CFEqual(a2, *MEMORY[0x277CE26B8]))
  {
    goto LABEL_14;
  }

  if (a3)
  {
    v17 = CFBooleanGetTypeID();
    if (v17 != CFGetTypeID(a3))
    {
      goto LABEL_14;
    }
  }

  v18 = *(DerivedStorage + 1144);
  if (v18)
  {
    CFRelease(v18);
  }

  if (a3)
  {
    v19 = CFRetain(a3);
  }

  else
  {
    v19 = 0;
  }

  result = 0;
  *(DerivedStorage + 1144) = v19;
  return result;
}

void sub_2772AF034()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = sub_2772AF170(*MEMORY[0x277CE2748], 1.0);
  v3[1] = sub_2772AF170(*MEMORY[0x277CE2760], 1.0);
  v3[2] = sub_2772AF170(*MEMORY[0x277CE2750], 1.0);
  v0 = *MEMORY[0x277CE2758];
  v3[3] = sub_2772AF170(*MEMORY[0x277CE2758], 1.0);
  v3[4] = sub_2772AF170(v0, 0.5);
  qword_280B9ABA0 = CFArrayCreate(*MEMORY[0x277CBECE8], v3, 5, MEMORY[0x277CBF128]);
  if (!qword_280B9ABA0)
  {
    FigSignalErrorAtGM();
  }

  for (i = 0; i != 5; ++i)
  {
    v2 = v3[i];
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

CFDictionaryRef sub_2772AF170(void *a1, double a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v3 = *MEMORY[0x277CE26C0];
  keys[0] = *MEMORY[0x277CE2698];
  keys[1] = v3;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &v8);
  values[0] = a1;
  values[1] = v5;
  v6 = CFDictionaryCreate(v4, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v6)
  {
    FigSignalErrorAtGM();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_2772AF278(int a1, int a2)
{
  keyExistsAndHasValidFormat = 0;
  LODWORD(result) = CFPreferencesGetAppIntegerValue(@"ThreadCountH264SWDecoder", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if ((a2 * a1) <= 0x1FE000)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  if (keyExistsAndHasValidFormat)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_2772AF2DC(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  FigFormatDescriptionRelease();
  *(DerivedStorage + 16) = FigFormatDescriptionRetain();
  *(DerivedStorage + 24) = 0;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceSyncH264SWDecoder", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  *(DerivedStorage + 1076) = v6;
  sub_2772AFCC4(DerivedStorage);
  return 0;
}

uint64_t sub_2772AF370(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, char a4, _DWORD *a5)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  v43 = 0;
  v42 = 0;
  if (a5)
  {
    HIDWORD(v43) = *a5;
  }

  if (!*(DerivedStorage + 24))
  {
    v13 = sub_2772B00FC();
    if (v13)
    {
      goto LABEL_10;
    }
  }

  pixelBuffer = 0;
  PixelBufferPool = VTDecoderSessionGetPixelBufferPool();
  v12 = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, &pixelBuffer);
  if (v12)
  {
    v13 = v12;
    FigSignalErrorAtGM();
LABEL_9:
    CVPixelBufferRelease(pixelBuffer);
LABEL_10:
    VTDecoderSessionEmitDecodedFrame();
    v14 = 0;
    goto LABEL_11;
  }

  extraRowsOnBottom[0] = 0;
  v13 = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  if (v13)
  {
    goto LABEL_9;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if ((PixelFormatType | 0x10) == 0x34323076)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    LODWORD(v43) = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    v18 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
    v20 = &v42;
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(pixelBuffer);
    v18 = 0;
    v20 = &v43;
  }

  *v20 = BytesPerRowOfPlane;
  CVPixelBufferGetExtendedPixels(pixelBuffer, 0, 0, 0, extraRowsOnBottom);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v14 = pixelBuffer;
  if ((a4 & 1) != 0 && !*(v10 + 1076))
  {
    pixelBuffer = BaseAddressOfPlane;
    v24 = 0;
    v25 = v43;
    v26 = PixelFormatType;
    v27 = 0;
    v28 = LODWORD(extraRowsOnBottom[0]) + Height;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v37 = v18;
    v39 = 0u;
    v40 = 0u;
    v38 = v42;
    v41 = 0;
    v22 = sub_2772B03E8(v10, a2, 0, a3, v14, &pixelBuffer, &v43 + 1);
  }

  else
  {
    pixelBuffer = BaseAddressOfPlane;
    v24 = 0;
    v25 = v43;
    v26 = PixelFormatType;
    v27 = 0;
    v28 = LODWORD(extraRowsOnBottom[0]) + Height;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v37 = v18;
    v39 = 0u;
    v40 = 0u;
    v38 = v42;
    v41 = 0;
    v22 = sub_2772B06E0(v10, a2, 0, a3, v14, &pixelBuffer, &v43 + 1);
  }

  v13 = v22;
  if (a5)
  {
    *a5 = HIDWORD(v43);
  }

LABEL_11:
  CVPixelBufferRelease(v14);
  return v13;
}

uint64_t sub_2772AF67C(uint64_t a1, CFTypeRef *a2)
{
  if (qword_280B9ABA8 == -1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_2773B1F18();
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  if (qword_280B9AB98)
  {
    *a2 = CFRetain(qword_280B9AB98);
    return 0;
  }

LABEL_6:

  return FigSignalErrorAtGM();
}

const opaqueCMFormatDescription *sub_2772AF714()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v21 = *MEMORY[0x277D85DE8];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 1080);
  v10 = 0;
  v9 = 0;
  result = *(DerivedStorage + 16);
  if (result)
  {
    if (*(DerivedStorage + 24))
    {
      Extension = CMFormatDescriptionGetExtension(result, *MEMORY[0x277CC0318]);
      if (Extension)
      {
        v6 = Extension;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6))
        {
          LOBYTE(v3) = CFBooleanGetValue(v6);
        }
      }

      if (*(DerivedStorage + 1080) == v3)
      {
        v12 = 0;
        if (!sub_2772B0A18(v1, &v14, &v13, v20, v19, &v10 + 1, v18, v17, &v10, v16, v15, &v9, &v12 + 1, &v12, &v11, &v11, &v14, &v8))
        {
          LOBYTE(result) = sub_277390C20(*(DerivedStorage + 24), v20, v19, HIDWORD(v10), v18, v17, v10, v16, v15, v9);
          return result;
        }

        FigSignalErrorAtGM();
      }
    }

    LOBYTE(result) = 0;
  }

  return result;
}

uint64_t sub_2772AF8E4(uint64_t a1, uint64_t a2)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a2;
  FigFormatDescriptionRelease();
  *(DerivedStorage + 16) = FigFormatDescriptionRetain();
  *(DerivedStorage + 24) = 0;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ForceSyncH264SWDecoder", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  *(DerivedStorage + 1076) = v6;
  return 0;
}

uint64_t sub_2772AF970(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, __CVBuffer *a6, uint64_t a7, char a8, int *a9)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47[0] = 0;
  v16 = CVPixelBufferLockBaseAddress(a6, 0);
  if (v16)
  {
    v17 = v16;
LABEL_17:
    CVPixelBufferUnlockBaseAddress(a6, 0);
    VTTileDecoderSessionEmitDecodedTile();
    return v17;
  }

  sbuf = a3;
  if (a9)
  {
    v47[0] = *a9;
  }

  if (!*(DerivedStorage + 24))
  {
    v21 = sub_2772B00FC();
    if (v21)
    {
      v17 = v21;
      goto LABEL_17;
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(*(DerivedStorage + 16));
    if (*(DerivedStorage + 1068) > Dimensions.width || *(DerivedStorage + 1072) > Dimensions.height)
    {
      v17 = 4294954387;
      goto LABEL_16;
    }
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a6, 0);
  v18 = CVPixelBufferGetBaseAddressOfPlane(a6, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a6, 0);
  v19 = CVPixelBufferGetBytesPerRowOfPlane(a6, 1uLL);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
  if ((PixelFormatType | 0x10) != 0x34323076)
  {
    v17 = 4294954394;
    goto LABEL_16;
  }

  if (*(DerivedStorage + 1068) > a5 || *(DerivedStorage + 1072) > HIDWORD(a5))
  {
    v17 = 4294954394;
LABEL_16:
    FigSignalErrorAtGM();
    goto LABEL_17;
  }

  if ((a8 & 1) != 0 && !*(DerivedStorage + 1076))
  {
    v28 = BaseAddressOfPlane + a7 + BytesPerRowOfPlane * (a7 >> 32);
    v29 = 0;
    v30 = BytesPerRowOfPlane;
    v31 = PixelFormatType;
    v32 = 0;
    v33 = HIDWORD(a5);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    memset(v41, 0, sizeof(v41));
    v42 = v18 + a7 + v19 * ((HIDWORD(a7) + (a7 >> 63)) >> 1);
    v44 = 0u;
    v45 = 0u;
    v43 = v19;
    v46 = 0;
    v24 = sub_2772B03E8(DerivedStorage, 0, a2, sbuf, a6, &v28, v47);
  }

  else
  {
    v28 = BaseAddressOfPlane + a7 + BytesPerRowOfPlane * (a7 >> 32);
    v29 = 0;
    v30 = BytesPerRowOfPlane;
    v31 = PixelFormatType;
    v32 = 0;
    v33 = HIDWORD(a5);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    memset(v41, 0, sizeof(v41));
    v42 = v18 + a7 + v19 * ((HIDWORD(a7) + (a7 >> 63)) >> 1);
    v44 = 0u;
    v45 = 0u;
    v43 = v19;
    v46 = 0;
    v24 = sub_2772B06E0(DerivedStorage, 0, a2, sbuf, a6, &v28, v47);
  }

  v17 = v24;
  if (a9)
  {
    *a9 = v47[0];
  }

  return v17;
}

void sub_2772AFCC4(uint64_t a1)
{
  v2 = 875704422;
  Extension = CMFormatDescriptionGetExtension(*(a1 + 16), *MEMORY[0x277CC0318]);
  if (!Extension || (v4 = Extension, TypeID = CFBooleanGetTypeID(), TypeID != CFGetTypeID(v4)) || !CFBooleanGetValue(v4))
  {
    v2 = 875704438;
  }

  valuePtr = v2;
  if (*(a1 + 44))
  {
    v6 = MEMORY[0x277CBF138];
    v7 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    sub_2772B0030(Mutable, *MEMORY[0x277CC4F20], 1630697081);
    v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v10 = CFDictionaryCreateMutable(0, 0, v6, v7);
    sub_2772B0030(v10, *MEMORY[0x277CC4EF0], 2);
    v11 = *MEMORY[0x277CC4ED0];
    sub_2772B0030(v10, *MEMORY[0x277CC4ED0], 32);
    CFArrayAppendValue(v9, v10);
    CFRelease(v10);
    v12 = CFDictionaryCreateMutable(0, 0, v6, v7);
    sub_2772B0030(v12, v11, 8);
    CFArrayAppendValue(v9, v12);
    CFRelease(v12);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4F70], v9);
    CFRelease(v9);
    sub_2772B0030(Mutable, v11, 24);
    CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(Mutable, 0x61327679u);
    CFRelease(Mutable);
    valuePtr = 1630697081;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(*(a1 + 16));
  v14 = Dimensions;
  v15 = HIDWORD(Dimensions);
  v16 = *(a1 + 1068);
  if (!v16)
  {
    v16 = Dimensions;
  }

  v17 = *(a1 + 1072);
  if (!v17)
  {
    v17 = HIDWORD(Dimensions);
  }

  v18 = (v16 + 31) & 0xFFFFFFE0;
  *(a1 + 1068) = v18;
  v19 = (v17 + 31) & 0xFFFFFFE0;
  *(a1 + 1072) = v19;
  v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v20)
  {
    v21 = v20;
    v22 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v22)
    {
      v23 = v22;
      v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v24)
      {
        v25 = v24;
        CFArrayAppendValue(v23, v24);
        CFRelease(v25);
        CFDictionaryAddValue(v21, *MEMORY[0x277CC4E30], v23);
        CFRelease(v23);
        sub_2772B0094(v21, *MEMORY[0x277CC4EC8], v14);
        sub_2772B0094(v21, *MEMORY[0x277CC4DD8], v15);
        v26 = v18 - v14;
        v27 = v19 - v15;
        if (v26 >= 1)
        {
          sub_2772B0094(v21, *MEMORY[0x277CC4DB8], v26);
        }

        if (v27 >= 1)
        {
          sub_2772B0094(v21, *MEMORY[0x277CC4DA0], v27 & ~(v27 >> 31));
        }

        VTDecoderSessionSetPixelBufferAttributes();
        v28 = v21;
      }

      else
      {
        CFRelease(v21);
        v28 = v23;
      }

      CFRelease(v28);
    }

    else
    {

      CFRelease(v21);
    }
  }
}

void sub_2772B0030(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void sub_2772B0094(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionaryAddValue(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t sub_2772B00FC()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(v0 + 16);
  v5 = *(v3 + 1144);
  v27 = 0;
  v26 = 0;
  v21 = 0;
  v22 = xmmword_2773B26A0;
  v23 = xmmword_2773B26B0;
  v24 = 0xFFFFFFFF00000002;
  v25 = -1;
  v6 = sub_2772B0A18(v4, (v3 + 40), (v3 + 44), v34, v33, &v27, v32, v31, &v26 + 1, v30, v29, &v26, v3 + 48, v3 + 49, (v3 + 1068), (v3 + 1072), (v3 + 1080), &v21);
  if (v6)
  {
    goto LABEL_2;
  }

  v7 = v21;
  if (v21)
  {
    *(v3 + 1076) = 1;
  }

  v8 = *(v3 + 60);
  if (!v8)
  {
    v9 = *(v3 + 1068);
    v10 = *(v3 + 1072);
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ThreadCountH264SWDecoder", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if ((v10 * v9) <= 0x1FE000)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (keyExistsAndHasValidFormat)
    {
      v8 = AppIntegerValue;
    }

    else
    {
      v8 = v12;
    }

    *(v3 + 60) = v8;
  }

  if (v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v2;
  }

  if (v13 == 1)
  {
    DWORD2(v22) = -3;
    HIDWORD(v22) = v8;
    *&v23 = 0xFFFFFFFF00000001;
    v8 = 1;
  }

  LODWORD(v22) = v8;
  sub_277390BE0(&v21 + 1);
  sub_277390BF0(&v21 + 1);
  v14 = HIDWORD(v26);
  v15 = v27;
  v16 = v26;
  v17 = HIDWORD(v21);
  if (v5)
  {
    CFEqual(v5, *MEMORY[0x277CBED10]);
  }

  MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
  v19 = v13 ? sub_277390DA8((v3 + 24), v34, v33, v15, v32, v31, v14, v30, v29, v16, &v22, v17, 0, MachThreadPriorityValue, sub_2772B0FBC) : sub_277390DA8((v3 + 24), v34, v33, v15, v32, v31, v14, v30, v29, v16, &v22, v17, 0, MachThreadPriorityValue, 0);
  v6 = v19;
  if (v19)
  {
LABEL_2:
    FigSignalErrorAtGM();
  }

  else
  {
    sub_2772AFCC4(v3);
  }

  return v6;
}

uint64_t sub_2772B03E8(uint64_t a1, uint64_t a2, uint64_t a3, CMSampleBufferRef sbuf, __CVBuffer *a5, void *a6, int *a7)
{
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v26 = 0;
  theBuffer = 0;
  v16 = CMGetAttachment(sbuf, *MEMORY[0x277CC0718], 0);
  if (v16)
  {
    if (CFEqual(v16, *MEMORY[0x277CBED28]))
    {
      v17 = 7;
    }

    else
    {
      v17 = 0;
    }

    v24 = v17;
    if (a7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
    if (a7)
    {
LABEL_6:
      v18 = *a7;
      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_9:
  CVPixelBufferRetain(a5);
  if (sub_2772B11BC(a1, sbuf))
  {
    if (*(a1 + 1122))
    {
      *(a1 + 1121) = 0;
    }

    dataPointerOut = 0;
    CMBlockBufferCreateWithMemoryBlock(0, 0, DataLength + 16, 0, 0, 0, DataLength, 1u, &theBuffer);
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, dataPointerOut);
    CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v26);
    if (!*(a1 + 44))
    {
      v20 = MEMORY[0x277CAC1A0](0, 72, 0x10200408AFEA05DLL, 0);
      v21 = v20;
      *v20 = *(a1 + 48);
      *(v20 + 1) = *(a1 + 49);
      *(v20 + 8) = *a1;
      *(v20 + 16) = *(a1 + 8);
      *(v20 + 24) = a2;
      *(v20 + 32) = a3;
      *(v20 + 40) = v18;
      *(v20 + 48) = theBuffer;
      *(v20 + 56) = a5;
      *(v20 + 64) = *(a1 + 1120);
      *(v20 + 65) = 0;
      *(v20 + 67) = 0;
      a6[25] = v20 + 65;
      a6[26] = v20 + 66;
      a6[27] = v20 + 67;
      if (*(a1 + 1121))
      {
        goto LABEL_24;
      }

      v23 = sub_27739319C(0, *(a1 + 40), DataLength, 0, v26, *(a1 + 24), v24, 0, 0, a6, v20);
      v19 = v23;
      if (!v23)
      {
        goto LABEL_26;
      }

      if (v23 == -8969)
      {
LABEL_24:
        *(a1 + 1121) = 1;
        v19 = 4294958327;
      }

      sub_2772B0FBC(v19, v21);
      FigSignalErrorAtGM();
      goto LABEL_26;
    }

    v19 = 4294954396;
  }

  else
  {
    v19 = 0;
    v18 = 2;
  }

  if (*a1)
  {
    VTDecoderSessionEmitDecodedFrame();
  }

  else if (*(a1 + 8))
  {
    VTTileDecoderSessionEmitDecodedTile();
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (a5)
  {
    CVPixelBufferUnlockBaseAddress(a5, 0);
    CVPixelBufferRelease(a5);
  }

LABEL_26:
  if (a7)
  {
    *a7 = v18;
  }

  return v19;
}

uint64_t sub_2772B06E0(uint64_t a1, int a2, int a3, CMSampleBufferRef sbuf, __CVBuffer *a5, void *a6, int *a7)
{
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  DataLength = CMBlockBufferGetDataLength(DataBuffer);
  v29 = 0;
  theBuffer = 0;
  v14 = CMGetAttachment(sbuf, *MEMORY[0x277CC0718], 0);
  if (v14)
  {
    if (CFEqual(v14, *MEMORY[0x277CBED28]))
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v28 = 0;
  v27 = 0;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  if (!sub_2772B11BC(a1, sbuf))
  {
    v17 = 0;
    v16 = 2;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_17:
    CVPixelBufferUnlockBaseAddress(a5, 0);
    goto LABEL_18;
  }

  dataPointerOut = 0;
  CMBlockBufferCreateWithMemoryBlock(0, 0, DataLength + 16, 0, 0, 0, DataLength, 1u, &theBuffer);
  CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
  CMBlockBufferCopyDataBytes(DataBuffer, 0, DataLength, dataPointerOut);
  CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v29);
  if (*(a1 + 44))
  {
    v17 = 4294954396;
    goto LABEL_16;
  }

  a6[25] = &v28 + 1;
  a6[26] = &v28;
  a6[27] = &v27;
  v18 = sub_27739319C(0, *(a1 + 40), DataLength, 0, v29, *(a1 + 24), v15, 0, 0, a6, 0);
  if (v18)
  {
    v17 = v18;
LABEL_16:
    FigSignalErrorAtGM();
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(a1 + 1084) = 0;
  LOWORD(v20) = sub_27737E88C(*(a1 + 24));
  LOWORD(v21) = sub_27737E8B4(*(a1 + 24));
  v22 = sub_27737E8A0(*(a1 + 24));
  v23 = v21;
  if ((v21 & 0xFFF8) != 0)
  {
    v21 = 8;
  }

  else
  {
    v21 = v21;
  }

  if (v22 && v20)
  {
    if (v20 >= 8u)
    {
      v20 = 8;
    }

    else
    {
      v20 = v20;
    }

    memcpy((a1 + 1088), v22, (2 * v20));
    *(a1 + 1084) = v20;
  }

  v24 = sub_27737E8C8(*(a1 + 24));
  if (v24 && v23)
  {
    memcpy((a1 + 1104), v24, (2 * v21));
    *(a1 + 1086) = v21;
  }

  v25 = HIBYTE(v28) && !*(a1 + 1120) && v28 == 0;
  if (*a1)
  {
    sub_2772B1120(a5, v25);
  }

  v17 = 0;
  if (a5)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (*a1)
  {
    VTDecoderSessionEmitDecodedFrame();
  }

  else if (*(a1 + 8))
  {
    VTTileDecoderSessionEmitDecodedTile();
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (a7)
  {
    *a7 = v16;
  }

  return v17;
}

uint64_t sub_2772B0A18(const opaqueCMFormatDescription *a1, int *a2, _DWORD *a3, _BYTE *a4, unsigned int *a5, _DWORD *a6, char *a7, unsigned int *a8, _DWORD *a9, char *a10, unsigned int *a11, _DWORD *a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16, _DWORD *a17, _DWORD *a18)
{
  *a15 = 0;
  *a16 = 0;
  *a17 = 0;
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x277CC03B0]);
  if (!Extension || (v23 = Extension, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v23)) || (Value = CFDictionaryGetValue(v23, @"avcC")) == 0 || (ValueAtIndex = Value, v27 = CFArrayGetTypeID(), v27 == CFGetTypeID(ValueAtIndex)) && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) == 0 || (v28 = CFDataGetTypeID(), v28 != CFGetTypeID(ValueAtIndex)))
  {
    LOWORD(v30) = FigSignalErrorAtGM();
    return v30;
  }

  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  LOWORD(v30) = -50;
  if (a4 && a7)
  {
    v81 = 0;
    if (Length - 3001 < 0xFFFFFFFFFFFFF44ELL)
    {
      goto LABEL_11;
    }

    v31 = BytePtr[1];
    v32 = BytePtr[4];
    v33 = BytePtr[5] & 0x1F;
    *a6 = v33;
    if (v33 > 0x10)
    {
      goto LABEL_11;
    }

    v72 = Length;
    if (v33)
    {
      v67 = v31;
      v68 = v32;
      v69 = 0;
      v71 = 0;
      v35 = 0;
      v36 = 6;
      v37 = a5;
      v38 = a4;
      while (1)
      {
        if (v36 + 1 >= Length)
        {
          goto LABEL_52;
        }

        v39 = BytePtr[v36 + 1] | (BytePtr[v36] << 8);
        *v37 = v39;
        if (v39 > 0x1F4 || v39 + v38 - a4 > 1498)
        {
          goto LABEL_11;
        }

        v75 = v35;
        v40 = v36 + 2;
        if (v36 + 2 + v39 > Length)
        {
          goto LABEL_52;
        }

        memcpy(v38, &BytePtr[v40], v39);
        v73 = *v37;
        v41 = sub_2772B10B0(v38, *v37);
        *v37 = v41;
        v38[v41] = 0;
        v42 = *v38 & 0x1F;
        if (v42 != 7)
        {
          goto LABEL_25;
        }

        Length = v72;
        if (!v71)
        {
          break;
        }

        ++v71;
        v42 = 7;
LABEL_26:
        v36 = v40 + v73;
        v35 = v75;
        if (v42 == 13)
        {
          v35 = v75 + 1;
        }

        v43 = *v37++;
        v38 += v43;
        if (!--v33)
        {
          v44 = v69;
          v45 = v71 > 1u;
          v31 = v67;
          v32 = v68;
          goto LABEL_31;
        }
      }

      v30 = sub_2773896E4();
      v69 = v81;
      v81 = v81;
      if (v30)
      {
        goto LABEL_64;
      }

      v42 = *v38 & 0x1F;
      v71 = 1;
LABEL_25:
      Length = v72;
      goto LABEL_26;
    }

    v44 = 0;
    v45 = 0;
    LOBYTE(v35) = 0;
    v36 = 6;
LABEL_31:
    if (v36 >= Length)
    {
LABEL_52:
      LOWORD(v30) = -12909;
      return v30;
    }

    v70 = v44;
    v74 = v45;
    v46 = v31;
    v76 = v35;
    v68 = v32;
    v47 = BytePtr[v36];
    *a9 = v47;
    v48 = v36 + 1;
    if (v47)
    {
      v49 = a7;
      while (v48 + 1 < Length)
      {
        v50 = BytePtr[v48 + 1] | (BytePtr[v48] << 8);
        *a8 = v50;
        if (v50 > 0xBB8 || v50 + v49 - a7 > 3000)
        {
          goto LABEL_11;
        }

        v51 = v48 + 2;
        if (v51 + v50 > Length)
        {
          goto LABEL_52;
        }

        memcpy(v49, &BytePtr[v51], v50);
        v52 = *a8;
        v48 = v51 + v52;
        v53 = sub_2772B10B0(v49, v52);
        Length = v72;
        *a8++ = v53;
        v49 += v53;
        if (!--v47)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_52;
    }

LABEL_39:
    LOBYTE(v54) = 0;
    *a12 = 0;
    if ((v46 - 100) <= 0x2C && ((1 << (v46 - 100)) & 0x100000400401) != 0)
    {
      if (v48 + 3 >= Length)
      {
        LOBYTE(v54) = 0;
      }

      else
      {
        v54 = BytePtr[v48 + 3];
        *a12 = v54;
        if (v54 > 0x10)
        {
LABEL_11:
          LOWORD(v30) = -12910;
          return v30;
        }

        if (v54)
        {
          v55 = v48 + 5;
          if (v48 + 5 < Length)
          {
            v56 = a10;
            v58 = v48 + 4;
            v59 = 1;
            while (1)
            {
              v60 = BytePtr[v55] | (BytePtr[v58] << 8);
              *a11 = v60;
              if (v60 > 0x1F4 || v60 + v56 - a10 > 500)
              {
                goto LABEL_11;
              }

              v61 = v58 + 2;
              if (v58 + 2 + v60 > Length)
              {
                goto LABEL_52;
              }

              memcpy(v56, &BytePtr[v61], v60);
              v62 = *a11;
              v63 = sub_2772B10B0(v56, *a11);
              *a11++ = v63;
              if (v59 < v54)
              {
                v58 = v61 + v62;
                v56 += v63;
                v55 = v61 + v62 + 1;
                ++v59;
                Length = v72;
                if (v55 < v72)
                {
                  continue;
                }
              }

              break;
            }
          }
        }
      }
    }

    v64 = v74;
    if (v70 && v74)
    {
      goto LABEL_11;
    }

    if (!(v54 + v76))
    {
      v64 = 0;
    }

    if (v64 || v70 + (v54 + v76) > 1)
    {
      goto LABEL_11;
    }

    if (!v70)
    {
      goto LABEL_65;
    }

    LOWORD(v30) = sub_2773896E4();
LABEL_64:
    if (!v30)
    {
LABEL_65:
      *a15 = 0;
      *a16 = 0;
      *a17 = 0;
      *a3 = 0;
      *a18 = 0;
      if ((v68 & 3u) > 1)
      {
        if ((v68 & 3) == 2)
        {
          LOWORD(v30) = -1;
          return v30;
        }

        LOWORD(v30) = 0;
        v66 = 5;
      }

      else
      {
        LOWORD(v30) = 0;
        if ((v68 & 3) != 0)
        {
          v66 = 4;
        }

        else
        {
          v66 = 3;
        }
      }

      *a2 = v66;
    }
  }

  return v30;
}

void sub_2772B0FBC(int a1, void *ptr)
{
  if (*(ptr + 65) && !*(ptr + 64))
  {
    v3 = *(ptr + 66) == 0;
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if (a1)
    {
      goto LABEL_8;
    }
  }

  if (*(ptr + 1))
  {
    sub_2772B1120(*(ptr + 7), v3);
  }

LABEL_8:
  v4 = *(ptr + 7);
  if (v4)
  {
    CVPixelBufferUnlockBaseAddress(v4, 0);
  }

  if (*(ptr + 1))
  {
    VTDecoderSessionEmitDecodedFrame();
  }

  else if (*(ptr + 2))
  {
    VTTileDecoderSessionEmitDecodedTile();
  }

  v5 = *(ptr + 6);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(ptr + 7);
  if (v6)
  {
    CVPixelBufferRelease(v6);
  }

  CFAllocatorDeallocate(0, ptr);
}

uint64_t sub_2772B10B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  for (i = 0; i < a2; ++i)
  {
    if (v3 == 2)
    {
      if (*(a1 + i) == 3)
      {
        if (++i >= a2)
        {
          return result;
        }

        v3 = 0;
      }

      else
      {
        v3 = 2;
      }
    }

    v6 = *(a1 + i);
    *(a1 + result) = v6;
    if (v6)
    {
      v3 = 0;
    }

    else
    {
      ++v3;
    }

    result = (result + 1);
  }

  return result;
}

void sub_2772B1120(__CVBuffer *a1, int a2)
{
  CVBufferSetAttachment(a1, *MEMORY[0x277CC4BC8], *MEMORY[0x277CC4BD0], kCVAttachmentMode_ShouldPropagate);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  valuePtr = v4;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CVBufferSetAttachment(a1, *MEMORY[0x277CC4C40], v5, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v5);
}

uint64_t sub_2772B11BC(uint64_t a1, CMSampleBufferRef sbuf)
{
  *(a1 + 1122) = 0;
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (!SampleAttachmentsArray || (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) == 0)
  {
    *(a1 + 36) = 0;
    return 1;
  }

  v5 = ValueAtIndex;
  Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CC0690]);
  v7 = CFDictionaryGetValue(v5, *MEMORY[0x277CC06A0]);
  v8 = CFDictionaryGetValue(v5, *MEMORY[0x277CC06A8]);
  v9 = MEMORY[0x277CBED10];
  if (v7)
  {
    v10 = CFEqual(v7, *MEMORY[0x277CBED10]) != 0;
  }

  else
  {
    v10 = 1;
  }

  *(a1 + 1122) = v10;
  v12 = *(a1 + 32);
  v13 = MEMORY[0x277CBED28];
  if (v12 == 3)
  {
    if (v7)
    {
      v14 = *v9;
      v15 = v7;
LABEL_18:
      if (!CFEqual(v15, v14))
      {
        goto LABEL_20;
      }
    }
  }

  else if (v12 == 2)
  {
    if (v7 && !CFEqual(v7, *v9))
    {
      if (!v8)
      {
        goto LABEL_20;
      }

      v14 = *v13;
      v15 = v8;
      goto LABEL_18;
    }
  }

  else if (v12 == 1 && Value)
  {
    v14 = *MEMORY[0x277CBED28];
    v15 = Value;
    goto LABEL_18;
  }

  v16 = *(a1 + 1128) + *(a1 + 1136);
  *(a1 + 1136) = v16;
  if (v16 >= 1.0)
  {
    v18 = v16 + -1.0;
    *(a1 + 1136) = v18;
    if (v18 >= 1.0)
    {
      *(a1 + 1136) = 0x3FF0000000000000;
    }

    v17 = 1;
    goto LABEL_24;
  }

LABEL_20:
  v17 = 0;
LABEL_24:
  v19 = *v13;
  if (v7 != *v13 || v8 == v19 || *(a1 + 36) == 0)
  {
    result = v17;
  }

  else
  {
    result = 0;
  }

  if (v7 != v19 || v8 == v19)
  {
    *(a1 + 36) = 0;
  }

  else if ((result & 1) == 0 && Value != *v9)
  {
    result = 0;
    *(a1 + 36) = 1;
  }

  return result;
}

void sub_2772B1384()
{
  values[4] = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v0 = *MEMORY[0x277CE2A10];
  v1 = *MEMORY[0x277CE29C8];
  keys = *MEMORY[0x277CE2A00];
  v25 = v1;
  v2 = *MEMORY[0x277CE29D8];
  v17 = v0;
  v18 = v2;
  values[0] = sub_2772B16F4(*MEMORY[0x277CE2748]);
  values[1] = sub_2772B16F4(*MEMORY[0x277CE2760]);
  values[2] = sub_2772B16F4(*MEMORY[0x277CE2750]);
  values[3] = sub_2772B16F4(*MEMORY[0x277CE2758]);
  v3 = *MEMORY[0x277CBECE8];
  v4 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 4, MEMORY[0x277CBF128]);
  if (!v4)
  {
    FigSignalErrorAtGM();
  }

  for (i = 0; i != 4; ++i)
  {
    v6 = values[i];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (!v4)
  {
    FigSignalErrorAtGM();
    return;
  }

  *&v26 = *MEMORY[0x277CE29E8];
  *&v19 = v4;
  v7 = CFDictionaryCreate(v3, &keys, &v17, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v7)
  {
    FigSignalErrorAtGM();
    v16 = v4;
LABEL_17:
    CFRelease(v16);
    return;
  }

  v8 = v7;
  v9 = CFDictionaryCreate(v3, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = v9;
  if (!v9 || (v11 = *MEMORY[0x277CE26C0], keys = *MEMORY[0x277CE2698], v25 = v11, v17 = v8, v18 = v9, v12 = *MEMORY[0x277CE2708], *&v26 = *MEMORY[0x277CE26E0], *(&v26 + 1) = v12, *&v19 = v9, *(&v19 + 1) = v9, v13 = *MEMORY[0x277CE2678], *&v27 = *MEMORY[0x277CE26B0], *(&v27 + 1) = v13, *&v20 = v9, *(&v20 + 1) = v9, v14 = *MEMORY[0x277CE26F8], *&v28 = *MEMORY[0x277CE2680], *(&v28 + 1) = v14, *&v21 = v9, *(&v21 + 1) = v9, v15 = *MEMORY[0x277CE26B8], *&v29 = @"NegotiationDetails", *(&v29 + 1) = v15, *&v22 = v9, *(&v22 + 1) = v9, (qword_280B9AB98 = CFDictionaryCreate(v3, &keys, &v17, 10, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0))
  {
    FigSignalErrorAtGM();
  }

  CFRelease(v4);
  CFRelease(v8);
  if (v10)
  {
    v16 = v10;
    goto LABEL_17;
  }
}

CFDictionaryRef sub_2772B16F4(const void *a1)
{
  v1 = *MEMORY[0x277CE2698];
  v4 = a1;
  keys = v1;
  v2 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &v4, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v2)
  {
    FigSignalErrorAtGM();
  }

  return v2;
}

uint32x2_t sub_2772B179C(int16x8_t *a1, _DWORD *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vaddq_s16(v3, *a1);
  v7 = vsubq_s16(*a1, v3);
  v8 = vaddq_s16(v5, v4);
  v9 = vsubq_s16(v4, v5);
  v10 = vaddq_s16(v8, v6);
  v11 = vsubq_s16(v6, v8);
  v12 = vaddq_s16(v9, v7);
  v13 = vsubq_s16(v7, v9);
  v14 = vtrn1q_s16(v10, v12);
  v15 = vtrn2q_s16(v10, v12);
  v16 = vtrn1q_s16(v11, v13);
  v17 = vtrn2q_s16(v11, v13);
  v18 = vaddq_s16(v15, v14);
  v19 = vsubq_s16(v14, v15);
  v20 = vaddq_s16(v17, v16);
  v21 = vsubq_s16(v16, v17);
  v22 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v19, v21)), vabsq_s16(vtrn2q_s32(v19, v21))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v18, v20)), vabsq_s16(vtrn2q_s32(v18, v20))));
  result = vpaddl_u16(*&vpaddq_s16(v22, v22));
  *a2 = result.i32[0];
  *a3 = result.i32[1];
  return result;
}

uint64_t sub_2772B1864(int16x8_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = vaddq_s16(v2, *a1);
  v9 = vsubq_s16(*a1, v2);
  v10 = vaddq_s16(v6, v4);
  v11 = vsubq_s16(v4, v6);
  v12 = vaddq_s16(v10, v8);
  v13 = vsubq_s16(v8, v10);
  v14 = vaddq_s16(v11, v9);
  v15 = vsubq_s16(v9, v11);
  v16 = vtrn1q_s16(v12, v14);
  v17 = vtrn2q_s16(v12, v14);
  v18 = vtrn1q_s16(v13, v15);
  v19 = vtrn2q_s16(v13, v15);
  v20 = vaddq_s16(v17, v16);
  v21 = vsubq_s16(v16, v17);
  v22 = vaddq_s16(v19, v18);
  v23 = vsubq_s16(v18, v19);
  v24 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v21, v23)), vabsq_s16(vtrn2q_s32(v21, v23))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v20, v22)), vabsq_s16(vtrn2q_s32(v20, v22))));
  v25 = vaddq_s16(v3, v1);
  v26 = vsubq_s16(v1, v3);
  v27 = vaddq_s16(v7, v5);
  v28 = vsubq_s16(v5, v7);
  v29 = vaddq_s16(v27, v25);
  v30 = vsubq_s16(v25, v27);
  v31 = vaddq_s16(v28, v26);
  v32 = vsubq_s16(v26, v28);
  v33 = vtrn1q_s16(v29, v31);
  v34 = vtrn2q_s16(v29, v31);
  v35 = vtrn1q_s16(v30, v32);
  v36 = vtrn2q_s16(v30, v32);
  v37 = vaddq_s16(v34, v33);
  v38 = vsubq_s16(v33, v34);
  v39 = vaddq_s16(v36, v35);
  v40 = vsubq_s16(v35, v36);
  v41 = vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v38, v40)), vabsq_s16(vtrn2q_s32(v38, v40))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v37, v39)), vabsq_s16(vtrn2q_s32(v37, v39))));
  v42 = vmovl_u16(*v24.i8);
  v43 = vmovl_u16(*v41.i8);
  v44 = vmovl_high_u16(v24);
  v45 = vmovl_high_u16(v41);
  v46 = 0uLL;
  v47 = 20;
  v48 = 0uLL;
  do
  {
    v48 = vaddq_s32(vaddq_s32(v48, v42), v44);
    v46 = vaddq_s32(vaddq_s32(v46, v43), v45);
    v47 -= 4;
  }

  while (v47 > 4);
  return vaddvq_s32(vaddq_s32(v46, v48));
}

uint64_t sub_2772B1994(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = vsubl_u8(*a1, *a3);
  v5 = vsubl_u8(*(a1 + a2), *(a3 + a4));
  v6 = vsubl_u8(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = vsubl_u8(*(a1 + 3 * a2), *(a3 + 3 * a4));
  v8 = vsubl_u8(*(a1 + 4 * a2), *(a3 + 4 * a4));
  v9 = vsubl_u8(*(a1 + 5 * a2), *(a3 + 5 * a4));
  v10 = vsubl_u8(*(a1 + 6 * a2), *(a3 + 6 * a4));
  v11 = vsubl_u8(*(&a1[a2] - a2), *(&a3[a4] - a4));
  v12 = vaddq_s16(v5, v4);
  v13 = vsubq_s16(v4, v5);
  v14 = vaddq_s16(v7, v6);
  v15 = vsubq_s16(v6, v7);
  v16 = vaddq_s16(v9, v8);
  v17 = vsubq_s16(v8, v9);
  v18 = vaddq_s16(v11, v10);
  v19 = vsubq_s16(v10, v11);
  v20 = vaddq_s16(v14, v12);
  v21 = vsubq_s16(v12, v14);
  v22 = vaddq_s16(v15, v13);
  v23 = vsubq_s16(v13, v15);
  v24 = vaddq_s16(v18, v16);
  v25 = vsubq_s16(v16, v18);
  v26 = vaddq_s16(v19, v17);
  v27 = vsubq_s16(v17, v19);
  v28 = vaddq_s16(v24, v20);
  v29 = vsubq_s16(v20, v24);
  v30 = vaddq_s16(v26, v22);
  v31 = vsubq_s16(v22, v26);
  v32 = vaddq_s16(v25, v21);
  v33 = vsubq_s16(v21, v25);
  v34 = vaddq_s16(v27, v23);
  v35 = vsubq_s16(v23, v27);
  v36 = vtrn1q_s16(v28, v30);
  v37 = vtrn2q_s16(v28, v30);
  v38 = vtrn1q_s16(v32, v34);
  v39 = vtrn2q_s16(v32, v34);
  v40 = vtrn1q_s16(v29, v31);
  v41 = vtrn2q_s16(v29, v31);
  v42 = vtrn1q_s16(v33, v35);
  v43 = vtrn2q_s16(v33, v35);
  v44 = vaddq_s16(v37, v36);
  v45 = vsubq_s16(v36, v37);
  v46 = vaddq_s16(v39, v38);
  v47 = vsubq_s16(v38, v39);
  v48 = vaddq_s16(v41, v40);
  v49 = vsubq_s16(v40, v41);
  v50 = vaddq_s16(v43, v42);
  v51 = vsubq_s16(v42, v43);
  v52 = vtrn1q_s32(v44, v46);
  v53 = vtrn2q_s32(v44, v46);
  v54 = vtrn1q_s32(v45, v47);
  v55 = vtrn2q_s32(v45, v47);
  v56 = vtrn1q_s32(v48, v50);
  v57 = vtrn2q_s32(v48, v50);
  v58 = vtrn1q_s32(v49, v51);
  v59 = vtrn2q_s32(v49, v51);
  v60 = vaddq_s16(v53, v52);
  v61 = vsubq_s16(v52, v53);
  v62 = vaddq_s16(v55, v54);
  v63 = vsubq_s16(v54, v55);
  v64 = vaddq_s16(v57, v56);
  v65 = vsubq_s16(v56, v57);
  v66 = vaddq_s16(v59, v58);
  v67 = vzip2q_s64(v60, v64);
  v60.i64[1] = v64.i64[0];
  v68 = vsubq_s16(v58, v59);
  v69 = vzip2q_s64(v62, v66);
  v62.i64[1] = v66.i64[0];
  v70 = vzip2q_s64(v61, v65);
  v61.i64[1] = v65.i64[0];
  v65.i64[0] = v63.i64[0];
  v65.i64[1] = v68.i64[0];
  v71 = vaddq_s16(vmaxq_u16(vabsq_s16(v62), vabsq_s16(v69)), vmaxq_u16(vabsq_s16(v60), vabsq_s16(v67)));
  v72 = vaddq_s16(vmaxq_u16(vabsq_s16(v65), vabsq_s16(vzip2q_s64(v63, v68))), vmaxq_u16(vabsq_s16(v61), vabsq_s16(v70)));
  return ((vaddvq_s32(vaddw_high_u16(vaddw_u16(vaddw_high_u16(vmovl_u16(*v71.i8), v71), *v72.i8), v72)) + 1) >> 1);
}

uint64_t sub_2772B1B88(int16x8_t *a1, int a2)
{
  v2 = *(a1 + 2 * a2);
  v3 = *(a1 + 4 * a2);
  v4 = *(a1 + 6 * a2);
  v5 = *(a1 + 8 * a2);
  v6 = *(a1 + 10 * a2);
  v7 = *(a1 + 12 * a2);
  v8 = *(a1 + 14 * a2);
  v9 = vaddq_s16(v2, *a1);
  v10 = vsubq_s16(*a1, v2);
  v11 = vaddq_s16(v4, v3);
  v12 = vsubq_s16(v3, v4);
  v13 = vaddq_s16(v6, v5);
  v14 = vsubq_s16(v5, v6);
  v15 = vaddq_s16(v8, v7);
  v16 = vsubq_s16(v7, v8);
  v17 = vaddq_s16(v11, v9);
  v18 = vsubq_s16(v9, v11);
  v19 = vaddq_s16(v12, v10);
  v20 = vsubq_s16(v10, v12);
  v21 = vaddq_s16(v15, v13);
  v22 = vsubq_s16(v13, v15);
  v23 = vaddq_s16(v16, v14);
  v24 = vsubq_s16(v14, v16);
  v25 = vaddq_s16(v21, v17);
  v26 = vsubq_s16(v17, v21);
  v27 = vaddq_s16(v23, v19);
  v28 = vsubq_s16(v19, v23);
  v29 = vaddq_s16(v22, v18);
  v30 = vsubq_s16(v18, v22);
  v31 = vaddq_s16(v24, v20);
  v32 = vsubq_s16(v20, v24);
  v33 = vtrn1q_s16(v25, v27);
  v34 = vtrn2q_s16(v25, v27);
  v35 = vtrn1q_s16(v29, v31);
  v36 = vtrn2q_s16(v29, v31);
  v37 = vtrn1q_s16(v26, v28);
  v38 = vtrn2q_s16(v26, v28);
  v39 = vtrn1q_s16(v30, v32);
  v40 = vtrn2q_s16(v30, v32);
  v41 = vaddq_s16(v34, v33);
  v42 = vsubq_s16(v33, v34);
  v43 = vaddq_s16(v36, v35);
  v44 = vsubq_s16(v35, v36);
  v45 = vaddq_s16(v38, v37);
  v46 = vsubq_s16(v37, v38);
  v47 = vaddq_s16(v40, v39);
  v48 = vsubq_s16(v39, v40);
  v49 = vtrn1q_s32(v41, v43);
  v50 = vtrn2q_s32(v41, v43);
  v51 = vtrn1q_s32(v42, v44);
  v52 = vtrn2q_s32(v42, v44);
  v53 = vtrn1q_s32(v45, v47);
  v54 = vtrn2q_s32(v45, v47);
  v55 = vtrn1q_s32(v46, v48);
  v56 = vtrn2q_s32(v46, v48);
  v57 = vaddq_s16(v50, v49);
  v58 = vsubq_s16(v49, v50);
  v59 = vaddq_s16(v52, v51);
  v60 = vsubq_s16(v51, v52);
  v61 = vaddq_s16(v54, v53);
  v62 = vsubq_s16(v53, v54);
  v63 = vzip2q_s64(v57, v61);
  v57.i64[1] = v61.i64[0];
  v64 = vaddq_s16(v56, v55);
  v65 = vsubq_s16(v55, v56);
  v66 = vzip2q_s64(v59, v64);
  v59.i64[1] = v64.i64[0];
  v67 = vzip2q_s64(v58, v62);
  v58.i64[1] = v62.i64[0];
  v62.i64[0] = v60.i64[0];
  v62.i64[1] = v65.i64[0];
  v68 = vaddq_s16(vmaxq_u16(vabsq_s16(v59), vabsq_s16(v66)), vmaxq_u16(vabsq_s16(v57), vabsq_s16(v63)));
  v69 = vaddq_s16(vmaxq_u16(vabsq_s16(v62), vabsq_s16(vzip2q_s64(v60, v65))), vmaxq_u16(vabsq_s16(v58), vabsq_s16(v67)));
  return ((vaddvq_s32(vaddw_high_u16(vaddw_u16(vaddw_high_u16(vmovl_u16(*v68.i8), v68), *v69.i8), v69)) + 1) >> 1);
}

uint64_t sub_2772B1D34(int16x8_t *a1, int a2)
{
  v4 = sub_2772B1B88(a1, a2);
  v5 = sub_2772B1B88(a1 + 1, a2) + v4;
  v6 = sub_2772B1B88(a1 + 16, a2);
  return v5 + v6 + sub_2772B1B88(a1 + 17, a2);
}

uint64_t sub_2772B1D9C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0;
  v5 = (a1 + a2);
  v6 = (v5 + a2);
  v7 = a2;
  v8 = *v6;
  v9 = *(v6 + a2);
  v10 = (a3 + a4);
  v11 = *v10;
  v12 = &v10->i8[a4];
  v13 = *&v12->i8[a4];
  v14 = vabal_u8(vabdl_u8(*v8.i8, *v12), *a1, *a3);
  v15 = vabal_high_u8(vabdl_high_u8(v8, *v12->i8), *a1->i8, *a3->i8);
  v16 = vabal_u8(vabdl_u8(*v9.i8, *v13.i8), *v5, *v11.i8);
  v17 = vabal_high_u8(vabdl_high_u8(v9, v13), *v5->i8, v11);
  v18 = 4 * a2;
  v19 = 7 * a2;
  v20 = 6 * a2;
  v21 = 5 * a2;
  do
  {
    v22 = *&a3->i8[4 * a4];
    v23 = *&a3->i8[5 * a4];
    v24 = *&a3->i8[6 * a4];
    v25 = *&a3->i8[7 * a4];
    a3 = (a3 + 2 * a4 + a4 + a4);
    v26 = *&a1->i8[v18];
    v27 = *&a1->i8[v21];
    v28 = *&a1->i8[v20];
    v29 = *&a1->i8[v19];
    a1 = (a1 + 2 * v7 + v7 + v7);
    v14 = vabal_u8(vabal_u8(v14, *v26.i8, *v22.i8), *v28.i8, *v24.i8);
    v15 = vabal_high_u8(vabal_high_u8(v15, v26, v22), v28, v24);
    v16 = vabal_u8(vabal_u8(v16, *v27.i8, *v23.i8), *v29.i8, *v25.i8);
    v17 = vabal_high_u8(vabal_high_u8(v17, v27, v23), v29, v25);
    v4 += 4;
  }

  while (v4 < 0xC);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(v16, v17), vaddq_s16(v15, v14)));
}

uint64_t sub_2772B1EB4(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = (a1 + a2);
  v5 = *v4;
  v6 = (v4 + a2);
  v7 = *v6;
  v8 = (v6 + a2);
  v9 = *v8;
  v10 = (a3 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = *v12;
  v14 = (v12 + a4);
  v15 = *v14;
  v16 = (v14 + a4);
  v17 = (v8 + a2);
  v18 = *v17;
  v19 = (v17 + a2);
  v20 = *v19;
  v21 = (v19 + a2);
  v22 = *(v21 + a2);
  v23 = *v21;
  v24 = (v16 + a4);
  v25 = *v24;
  v26 = (v24 + a4);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabal_u8(vabal_u8(vabal_u8(vabdl_u8(*v9.i8, *v15.i8), *v5.i8, *v11.i8), *v20.i8, *v25.i8), *v22.i8, *&v26->i8[a4]), vabal_high_u8(vabal_high_u8(vabal_high_u8(vabdl_high_u8(v9, v15), v5, v11), v20, v25), v22, *(v26 + a4))), vaddq_s16(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabdl_high_u8(v7, v13), *a1, *a3), v18, *v16), v23, *v26), vabal_u8(vabal_u8(vabal_u8(vabdl_u8(*v7.i8, *v13.i8), *a1->i8, *a3->i8), *v18.i8, *v16->i8), *v23.i8, *v26->i8))));
}

uint64_t sub_2772B1F7C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0;
  v5 = (a1 + a2);
  v6 = (v5 + a2);
  v7 = a2;
  v8 = *v6;
  v9 = *(v6 + a2);
  v10 = (a3 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = vabdl_u8(*a1, *a3);
  v14 = vabdl_u8(*v5, v11);
  v15 = vabdl_u8(v8, *v12);
  v16 = vabdl_u8(v9, *(v12 + a4));
  v17 = 4 * a2;
  v18 = 7 * a2;
  v19 = 6 * a2;
  v20 = 5 * a2;
  do
  {
    v21 = *(a3 + 4 * a4);
    v22 = *(a3 + 5 * a4);
    v23 = *(a3 + 6 * a4);
    v24 = *(a3 + 7 * a4);
    a3 = (a3 + 2 * a4 + a4 + a4);
    v25 = *(a1 + v17);
    v26 = *(a1 + v20);
    v27 = *(a1 + v19);
    v28 = *(a1 + v18);
    a1 = (a1 + 2 * v7 + v7 + v7);
    v13 = vabal_u8(v13, v25, v21);
    v14 = vabal_u8(v14, v26, v22);
    v15 = vabal_u8(v15, v27, v23);
    v16 = vabal_u8(v16, v28, v24);
    v4 += 4;
  }

  while (v4 < 0xC);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(v15, v16), vaddq_s16(v14, v13)));
}

uint64_t sub_2772B2074(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = (a1 + a2);
  v5 = *v4;
  v6 = (v4 + a2);
  v7 = *v6;
  v8 = (v6 + a2);
  v9 = *v8;
  v10 = (a3 + a4);
  v11 = *v10;
  v12 = (v10 + a4);
  v13 = *v12;
  v14 = (v12 + a4);
  v15 = *v14;
  v16 = (v14 + a4);
  v17 = (v8 + a2);
  v18 = *v17;
  v19 = (v17 + a2);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabal_u8(vabdl_u8(v7, v13), *(v19 + a2), *(v16 + a4 + a4)), vabal_u8(vabdl_u8(v9, v15), *(v19 + a2 + a2), *(v16 + a4 + a4 + a4))), vaddq_s16(vabal_u8(vabdl_u8(v5, v11), *v19, *(v16 + a4)), vabal_u8(vabdl_u8(*a1, *a3), v18, *v16))));
}

uint64_t sub_2772B211C(uint8x16_t *a1, int a2, uint8x16_t *a3, uint8x16_t *a4, int a5)
{
  v5 = *a1;
  v6 = (a1 + a2);
  v7 = *v6;
  v8 = (v6 + a2);
  v9 = *v8;
  v10 = *(v8 + a2);
  v11 = *a3;
  v12 = (a3 + a5);
  v13 = *v12;
  v14 = (v12 + a5);
  v15 = *v14;
  v16 = *(v14 + a5);
  if (a4)
  {
    v17 = (a4 + a5 + a5);
    v18 = *v17;
    v19 = (v17 + a5);
    v20 = *v19;
    v21 = (v19 + a5);
    v11 = vrhaddq_u8(v11, *a4);
    v13 = vrhaddq_u8(v13, *(a4 + a5));
    v15 = vrhaddq_u8(v15, v18);
    v16 = vrhaddq_u8(v16, v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
  v23 = vabal_u8(vabdl_u8(*v9.i8, *v15.i8), *v5.i8, *v11.i8);
  v24 = vabal_high_u8(vabdl_high_u8(v9, v15), v5, v11);
  v25 = vabal_u8(vabdl_u8(*v10.i8, *v16.i8), *v7.i8, *v13.i8);
  v26 = vabal_high_u8(vabdl_high_u8(v10, v16), v7, v13);
  do
  {
    v27 = *(a3 + 4 * a5);
    v28 = *(a3 + 5 * a5);
    v29 = *(a3 + 6 * a5);
    v30 = *(a3 + 7 * a5);
    if (v21)
    {
      v31 = *v21;
      v32 = (v21 + a5);
      v33 = *v32;
      v34 = (v32 + a5);
      v35 = *v34;
      v36 = (v34 + a5);
      v37 = *v36;
      v21 = (v36 + a5);
      v27 = vrhaddq_u8(v27, v31);
      v28 = vrhaddq_u8(v28, v33);
      v29 = vrhaddq_u8(v29, v35);
      v30 = vrhaddq_u8(v30, v37);
    }

    a3 = (a3 + 2 * a5 + a5 + a5);
    v38 = *(a1 + 4 * a2);
    v39 = *(a1 + 5 * a2);
    v40 = *(a1 + 6 * a2);
    v41 = *(a1 + 7 * a2);
    a1 = (a1 + 2 * a2 + a2 + a2);
    v23 = vabal_u8(vabal_u8(v23, *v38.i8, *v27.i8), *v40.i8, *v29.i8);
    v24 = vabal_high_u8(vabal_high_u8(v24, v38, v27), v40, v29);
    v25 = vabal_u8(vabal_u8(v25, *v39.i8, *v28.i8), *v41.i8, *v30.i8);
    v26 = vabal_high_u8(vabal_high_u8(v26, v39, v28), v41, v30);
    v22 += 4;
  }

  while (v22 < 0xC);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(v25, v26), vaddq_s16(v24, v23)));
}

uint64_t sub_2772B229C(uint8x16_t *a1, int a2, uint8x16_t *a3, uint8x16_t *a4, int a5)
{
  v5 = &a1->i8[a2];
  v6 = (v5 + a2);
  v7 = (v6 + a2);
  v8 = *a3;
  v9 = (a3 + a5);
  v10 = *v9;
  v11 = (v9 + a5);
  v12 = *v11;
  v13 = (v11 + a5);
  v14 = *v13;
  if (a4)
  {
    v15 = (a4 + a5 + a5);
    v16 = *v15;
    v17 = (v15 + a5);
    v18 = *v17;
    v19 = (v17 + a5);
    v8 = vrhaddq_u8(v8, *a4);
    v10 = vrhaddq_u8(v10, *(a4 + a5));
    v12 = vrhaddq_u8(v12, v16);
    v14 = vrhaddq_u8(v14, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *v7;
  v21 = (v7 + a2);
  v22 = *v21;
  v23 = (v21 + a2);
  v24 = *v23;
  v25 = (v23 + a2);
  v26 = *(v13 + a5);
  v27 = (v13 + a5 + a5);
  v28 = *v27;
  v29 = (v27 + a5);
  v30 = *v29;
  v31 = *(v29 + a5);
  if (v19)
  {
    v32 = (v19 + a5 + a5);
    v26 = vrhaddq_u8(v26, *v19);
    v28 = vrhaddq_u8(v28, *(v19 + a5));
    v30 = vrhaddq_u8(v30, *v32);
    v31 = vrhaddq_u8(v31, *(v32 + a5));
  }

  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabal_u8(vabal_u8(vabal_u8(vabdl_u8(*v20.i8, *v14.i8), *v5, *v10.i8), *v24.i8, *v28.i8), *&v25->i8[a2], *v31.i8), vabal_high_u8(vabal_high_u8(vabal_high_u8(vabdl_high_u8(v20, v14), *v5->i8, v10), v24, v28), *(v25 + a2), v31)), vaddq_s16(vabal_high_u8(vabal_high_u8(vabal_high_u8(vabdl_high_u8(*v6, v12), *a1, v8), v22, v26), *v25, v30), vabal_u8(vabal_u8(vabal_u8(vabdl_u8(*v6->i8, *v12.i8), *a1->i8, *v8.i8), *v22.i8, *v26.i8), *v25->i8, *v30.i8))));
}

uint64_t sub_2772B23D4(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, int a5)
{
  v5 = (a1 + a2);
  v6 = *v5;
  v7 = (v5 + a2);
  v8 = *a3;
  v9 = (a3 + a5);
  v10 = *v9;
  v11 = (v9 + a5);
  v12 = *v11;
  v13 = *(v11 + a5);
  if (a4)
  {
    v14 = (a4 + a5 + a5);
    v15 = *v14;
    v16 = (v14 + a5);
    v17 = *v16;
    v18 = (v16 + a5);
    v8 = vrhadd_u8(v8, *a4);
    v10 = vrhadd_u8(v10, *(a4 + a5));
    v12 = vrhadd_u8(v12, v15);
    v13 = vrhadd_u8(v13, v17);
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
  v20 = vabdl_u8(*a1, v8);
  v21 = vabdl_u8(v6, v10);
  v22 = vabdl_u8(*v7, v12);
  v23 = vabdl_u8(*(v7 + a2), v13);
  do
  {
    v24 = *(a3 + 4 * a5);
    v25 = *(a3 + 5 * a5);
    v26 = *(a3 + 6 * a5);
    v27 = *(a3 + 7 * a5);
    if (v18)
    {
      v28 = *v18;
      v29 = (v18 + a5);
      v30 = *v29;
      v31 = (v29 + a5);
      v32 = *v31;
      v33 = (v31 + a5);
      v34 = *v33;
      v18 = (v33 + a5);
      v24 = vrhadd_u8(v24, v28);
      v25 = vrhadd_u8(v25, v30);
      v26 = vrhadd_u8(v26, v32);
      v27 = vrhadd_u8(v27, v34);
    }

    a3 = (a3 + 2 * a5 + a5 + a5);
    v35 = *(a1 + 4 * a2);
    v36 = *(a1 + 5 * a2);
    v37 = *(a1 + 6 * a2);
    v38 = *(a1 + 7 * a2);
    a1 = (a1 + 2 * a2 + a2 + a2);
    v20 = vabal_u8(v20, v35, v24);
    v21 = vabal_u8(v21, v36, v25);
    v22 = vabal_u8(v22, v37, v26);
    v23 = vabal_u8(v23, v38, v27);
    v19 += 4;
  }

  while (v19 < 0xC);
  return vaddlvq_u16(vaddq_s16(vaddq_s16(v22, v23), vaddq_s16(v21, v20)));
}

uint64_t sub_2772B2534(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, int a5)
{
  v5 = (a1 + a2);
  v6 = (v5 + a2);
  v7 = (v6 + a2);
  v8 = *a3;
  v9 = (a3 + a5);
  v10 = *v9;
  v11 = (v9 + a5);
  v12 = *v11;
  v13 = (v11 + a5);
  v14 = *v13;
  if (a4)
  {
    v15 = (a4 + a5 + a5);
    v16 = *v15;
    v17 = (v15 + a5);
    v18 = *v17;
    v19 = (v17 + a5);
    v8 = vrhadd_u8(v8, *a4);
    v10 = vrhadd_u8(v10, *(a4 + a5));
    v12 = vrhadd_u8(v12, v16);
    v14 = vrhadd_u8(v14, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *v7;
  v21 = (v7 + a2);
  v22 = *v21;
  v23 = (v21 + a2);
  v24 = *v23;
  v25 = (v23 + a2);
  v26 = *(v13 + a5);
  v27 = (v13 + a5 + a5);
  v28 = *v27;
  v29 = (v27 + a5);
  v30 = *v29;
  v31 = *(v29 + a5);
  if (v19)
  {
    v32 = (v19 + a5 + a5);
    v26 = vrhadd_u8(v26, *v19);
    v28 = vrhadd_u8(v28, *(v19 + a5));
    v30 = vrhadd_u8(v30, *v32);
    v31 = vrhadd_u8(v31, *(v32 + a5));
  }

  return vaddlvq_u16(vaddq_s16(vaddq_s16(vabal_u8(vabdl_u8(*v6, v12), *v25, v30), vabal_u8(vabdl_u8(v20, v14), *(v25 + a2), v31)), vaddq_s16(vabal_u8(vabdl_u8(*v5, v10), v24, v28), vabal_u8(vabdl_u8(*a1, v8), v22, v26))));
}

int16x4_t sub_2772B2670(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, uint8x8_t *a6, int a7, int16x4_t *a8)
{
  v8 = vabal_high_u8(vabdl_u8(*a1, *a3), *a1->i8, *a3->i8);
  v9 = vabal_high_u8(vabdl_u8(*a1, *a4), *a1->i8, *a4->i8);
  v10 = vabal_high_u8(vabdl_u8(*a1, *a5), *a1->i8, *a5->i8);
  v11 = vabal_high_u8(vabdl_u8(*a1, *a6), *a1->i8, *a6->i8);
  v12 = (a1 + a2);
  v13 = 15;
  v14 = a7;
  do
  {
    v8 = vabal_high_u8(vabal_u8(v8, *v12, *(a3 + v14)), *v12->i8, *&a3->i8[v14]);
    v9 = vabal_high_u8(vabal_u8(v9, *v12, *(a4 + v14)), *v12->i8, *&a4->i8[v14]);
    v10 = vabal_high_u8(vabal_u8(v10, *v12, *(a5 + v14)), *v12->i8, *&a5->i8[v14]);
    v11 = vabal_high_u8(vabal_u8(v11, *v12, *(a6 + v14)), *v12->i8, *&a6->i8[v14]);
    v12 = (v12 + a2);
    v14 += a7;
    --v13;
  }

  while (v13);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL))), vpadd_s16(vadd_s16(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), vadd_s16(*v11.i8, *&vextq_s8(v11, v11, 8uLL))));
  *a8 = result;
  return result;
}

int16x4_t sub_2772B2730(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, int a6, int16x4_t *a7)
{
  v7 = vabal_high_u8(vabdl_u8(*a1, *a3), *a1->i8, *a3->i8);
  v8 = vabal_high_u8(vabdl_u8(*a1, *a4), *a1->i8, *a4->i8);
  v9 = vabal_high_u8(vabdl_u8(*a1, *a5), *a1->i8, *a5->i8);
  v10 = (a1 + a2);
  v11 = 15;
  v12 = a6;
  do
  {
    v7 = vabal_high_u8(vabal_u8(v7, *v10, *(a3 + v12)), *v10->i8, *&a3->i8[v12]);
    v8 = vabal_high_u8(vabal_u8(v8, *v10, *(a4 + v12)), *v10->i8, *&a4->i8[v12]);
    v9 = vabal_high_u8(vabal_u8(v9, *v10, *(a5 + v12)), *v10->i8, *&a5->i8[v12]);
    v10 = (v10 + a2);
    v12 += a6;
    --v11;
  }

  while (v11);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL))), vpadd_s16(vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0));
  *a7 = result;
  return result;
}

int16x4_t sub_2772B27D4(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, uint8x8_t *a6, int a7, int16x4_t *a8)
{
  v8 = vabal_high_u8(vabdl_u8(*a1, *a3), *a1->i8, *a3->i8);
  v9 = vabal_high_u8(vabdl_u8(*a1, *a4), *a1->i8, *a4->i8);
  v10 = vabal_high_u8(vabdl_u8(*a1, *a5), *a1->i8, *a5->i8);
  v11 = vabal_high_u8(vabdl_u8(*a1, *a6), *a1->i8, *a6->i8);
  v12 = (a1 + a2);
  v13 = 7;
  v14 = a7;
  do
  {
    v8 = vabal_high_u8(vabal_u8(v8, *v12, *(a3 + v14)), *v12->i8, *&a3->i8[v14]);
    v9 = vabal_high_u8(vabal_u8(v9, *v12, *(a4 + v14)), *v12->i8, *&a4->i8[v14]);
    v10 = vabal_high_u8(vabal_u8(v10, *v12, *(a5 + v14)), *v12->i8, *&a5->i8[v14]);
    v11 = vabal_high_u8(vabal_u8(v11, *v12, *(a6 + v14)), *v12->i8, *&a6->i8[v14]);
    v12 = (v12 + a2);
    v14 += a7;
    --v13;
  }

  while (v13);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL))), vpadd_s16(vadd_s16(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), vadd_s16(*v11.i8, *&vextq_s8(v11, v11, 8uLL))));
  *a8 = result;
  return result;
}

int16x4_t sub_2772B2894(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, int a6, int16x4_t *a7)
{
  v7 = vabal_high_u8(vabdl_u8(*a1, *a3), *a1->i8, *a3->i8);
  v8 = vabal_high_u8(vabdl_u8(*a1, *a4), *a1->i8, *a4->i8);
  v9 = vabal_high_u8(vabdl_u8(*a1, *a5), *a1->i8, *a5->i8);
  v10 = (a1 + a2);
  v11 = 7;
  v12 = a6;
  do
  {
    v7 = vabal_high_u8(vabal_u8(v7, *v10, *(a3 + v12)), *v10->i8, *&a3->i8[v12]);
    v8 = vabal_high_u8(vabal_u8(v8, *v10, *(a4 + v12)), *v10->i8, *&a4->i8[v12]);
    v9 = vabal_high_u8(vabal_u8(v9, *v10, *(a5 + v12)), *v10->i8, *&a5->i8[v12]);
    v10 = (v10 + a2);
    v12 += a6;
    --v11;
  }

  while (v11);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL))), vpadd_s16(vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0));
  *a7 = result;
  return result;
}

int16x4_t sub_2772B2938(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, uint8x8_t *a6, int a7, int16x4_t *a8)
{
  v8 = vabdl_u8(*a1, *a3);
  v9 = vabdl_u8(*a1, *a4);
  v10 = vabdl_u8(*a1, *a5);
  v11 = vabdl_u8(*a1, *a6);
  v12 = (a1 + a2);
  v13 = 15;
  v14 = a7;
  do
  {
    v8 = vabal_u8(v8, *v12, *(a3 + v14));
    v9 = vabal_u8(v9, *v12, *(a4 + v14));
    v10 = vabal_u8(v10, *v12, *(a5 + v14));
    v11 = vabal_u8(v11, *v12, *(a6 + v14));
    v12 = (v12 + a2);
    v14 += a7;
    --v13;
  }

  while (v13);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL))), vpadd_s16(vadd_s16(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), vadd_s16(*v11.i8, *&vextq_s8(v11, v11, 8uLL))));
  *a8 = result;
  return result;
}

int16x4_t sub_2772B29D8(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, int a6, int16x4_t *a7)
{
  v7 = vabdl_u8(*a1, *a3);
  v8 = vabdl_u8(*a1, *a4);
  v9 = vabdl_u8(*a1, *a5);
  v10 = (a1 + a2);
  v11 = 15;
  v12 = a6;
  do
  {
    v7 = vabal_u8(v7, *v10, *(a3 + v12));
    v8 = vabal_u8(v8, *v10, *(a4 + v12));
    v9 = vabal_u8(v9, *v10, *(a5 + v12));
    v10 = (v10 + a2);
    v12 += a6;
    --v11;
  }

  while (v11);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL))), vpadd_s16(vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0));
  *a7 = result;
  return result;
}

int16x4_t sub_2772B2A64(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, uint8x8_t *a6, int a7, int16x4_t *a8)
{
  v8 = vabdl_u8(*a1, *a3);
  v9 = vabdl_u8(*a1, *a4);
  v10 = vabdl_u8(*a1, *a5);
  v11 = vabdl_u8(*a1, *a6);
  v12 = (a1 + a2);
  v13 = 7;
  v14 = a7;
  do
  {
    v8 = vabal_u8(v8, *v12, *(a3 + v14));
    v9 = vabal_u8(v9, *v12, *(a4 + v14));
    v10 = vabal_u8(v10, *v12, *(a5 + v14));
    v11 = vabal_u8(v11, *v12, *(a6 + v14));
    v12 = (v12 + a2);
    v14 += a7;
    --v13;
  }

  while (v13);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL))), vpadd_s16(vadd_s16(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), vadd_s16(*v11.i8, *&vextq_s8(v11, v11, 8uLL))));
  *a8 = result;
  return result;
}

int16x4_t sub_2772B2B04(uint8x8_t *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, uint8x8_t *a5, int a6, int16x4_t *a7)
{
  v7 = vabdl_u8(*a1, *a3);
  v8 = vabdl_u8(*a1, *a4);
  v9 = vabdl_u8(*a1, *a5);
  v10 = (a1 + a2);
  v11 = 7;
  v12 = a6;
  do
  {
    v7 = vabal_u8(v7, *v10, *(a3 + v12));
    v8 = vabal_u8(v8, *v10, *(a4 + v12));
    v9 = vabal_u8(v9, *v10, *(a5 + v12));
    v10 = (v10 + a2);
    v12 += a6;
    --v11;
  }

  while (v11);
  result = vpadd_s16(vpadd_s16(vadd_s16(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), vadd_s16(*v8.i8, *&vextq_s8(v8, v8, 8uLL))), vpadd_s16(vadd_s16(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0));
  *a7 = result;
  return result;
}

uint16x8_t sub_2772B2B90(uint8x16_t *a1, unsigned int a2, uint8x16_t *a3, unsigned int a4, uint16x8_t *a5, int a6)
{
  v6 = a6 + 2;
  do
  {
    v7 = *a1;
    v8 = *a3;
    v9 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v10 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v11 = vsubl_u8(*v7.i8, *v8.i8);
    result = vsubl_high_u8(v7, v8);
    *a5 = v11;
    a5[1] = result;
    a5[2] = vsubl_u8(*v9.i8, *v10.i8);
    a5[3] = vsubl_high_u8(v9, v10);
    a5 += 4;
    v6 -= 2;
  }

  while (v6 > 2);
  return result;
}

uint16x8_t sub_2772B2BE8(uint8x8_t *a1, unsigned int a2, uint8x8_t *a3, unsigned int a4, uint16x8_t *a5, int a6)
{
  v6 = a6 + 2;
  do
  {
    v7 = *a1;
    v8 = *a3;
    v9 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v10 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    result = vsubl_u8(v7, v8);
    *a5 = result;
    a5[1] = vsubl_u8(v9, v10);
    a5 += 2;
    v6 -= 2;
  }

  while (v6 > 2);
  return result;
}

uint8x16_t sub_2772B2C30(uint8x8_t *a1, int a2, uint16x8_t *a3, int a4)
{
  v4 = a4 + 2;
  do
  {
    v5 = (a1 + a2);
    v6 = *v5;
    v7 = a3[2];
    v8 = a3[3];
    *a1->i8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(*a3, *a1)), vaddw_high_u8(a3[1], *a1->i8));
    a1 = &v5->i8[a2];
    result = vqmovun_high_s16(vqmovun_s16(vaddw_u8(v7, *v6.i8)), vaddw_high_u8(v8, v6));
    *v5 = result;
    v4 -= 2;
    a3 += 4;
  }

  while (v4 > 2);
  return result;
}

int8x16_t *sub_2772B2C8C(int8x16_t *result, int a2, uint8x16_t *a3, uint16x8_t *a4, int a5)
{
  v5 = a5 + 2;
  do
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = vqmovun_high_s16(vqmovun_s16(vaddw_u8(a4[2], *v7.i8)), vaddw_high_u8(a4[3], v7));
    *result = vqmovun_high_s16(vqmovun_s16(vaddw_u8(*a4, *v6.i8)), vaddw_high_u8(a4[1], v6));
    *(result + a2) = v8;
    result = (result + a2 + a2);
    v5 -= 2;
    a4 += 4;
  }

  while (v5 > 2);
  return result;
}

int8x8_t sub_2772B2CE4(int8x8_t *a1, int a2, uint8x16_t *a3, uint16x8_t *a4)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[4];
  v10 = a4[5];
  v11 = a4[6];
  v12 = a4[7];
  v13 = vqmovun_s16(vaddw_high_u8(a4[1], *a3));
  *a1 = vqmovun_s16(vaddw_u8(*a4, *a3->i8));
  *(a1 + a2) = v13;
  *(a1 + 2 * a2) = vqmovun_s16(vaddw_u8(v7, *v4.i8));
  result = vqmovun_s16(vaddw_high_u8(v12, v6));
  *(a1 + 3 * a2) = vqmovun_s16(vaddw_high_u8(v8, v4));
  *(a1 + 4 * a2) = vqmovun_s16(vaddw_u8(v9, *v5.i8));
  *(a1 + 5 * a2) = vqmovun_s16(vaddw_high_u8(v10, v5));
  *(a1 + 6 * a2) = vqmovun_s16(vaddw_u8(v11, *v6.i8));
  *(&a1[a2] - a2) = result;
  return result;
}

uint64_t sub_2772B2D7C(int16x8_t *a1, int16x8_t *a2)
{
  v2 = vsubq_s16(*a1, *a2);
  v3 = vsubq_s16(a1[1], a2[1]);
  return vaddvq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v2.i8, *v2.i8), v2, v2), *v3.i8, *v3.i8), v3, v3));
}

uint64_t **sub_2772B2DA8()
{
  v0 = sub_2773952EC(0x10uLL);
  v1 = v0;
  if (v0 && sub_2772B2DF8(v0))
  {
    sub_2772B2E5C(v1);
    free(v1);
    return 0;
  }

  return v1;
}

uint64_t sub_2772B2DF8(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  *a1 = v2;
  if (!v2)
  {
    return 4294958327;
  }

  sub_2772B3C64();
  result = 0;
  *(*a1 + 8) = 0;
  **a1 = 0;
  return result;
}

void sub_2772B2E5C(uint64_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[1])
    {
      MEMORY[0x277CAC610](v2[1], 0x1030C40B34BA92BLL);
      (*a1)[1] = 0;
      v2 = *a1;
    }

    if (*v2)
    {
      v3 = sub_2772BEFCC(*v2);
      MEMORY[0x277CAC610](v3, 0x1030C40708365FFLL);
      **a1 = 0;
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
  }
}

void sub_2772B2EFC(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    MEMORY[0x277CAC610](v1, 0x1030C40B34BA92BLL);
  }

  operator new();
}

uint64_t sub_2772B30F8(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  if (v3)
  {
    sub_2772BEEB4(v3);
    v5 = **a1;
    v6 = v5[8] - v5[14];
    v7 = v5[16];
    v8 = *(a2 + 16);
    v9 = *(a2 + 36);
    v10 = (8 * (*(a1 + 2) - v8) - v9 - v7 + 8 * v6 - 32);
    if (v10 >= 1)
    {
      v11 = v8 + (v10 >> 3);
      v12 = (v10 & 7) + v9;
      LOBYTE(v9) = v12 & 7;
      v8 = &v11[v12 >> 3];
      v13 = bswap32(*v8);
      if (v8 > *(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      v14 = v13 << v9;
      goto LABEL_8;
    }

    if ((v10 & 0x80000000) == 0)
    {
      v14 = *(a2 + 32);
LABEL_8:
      result = 0;
      *(a2 + 16) = v8;
      *(a2 + 32) = v14;
      *(a2 + 36) = v9;
      return result;
    }
  }

  return 4294958327;
}

BOOL sub_2772B31C0(uint64_t **a1, unsigned int a2)
{
  v3 = **a1;
  v4 = *(*(v3 + 104) + 48 * a2);
  v5 = sub_2772B429C(v3, (v3 + *(v3 + 76) + (((*(v3 + 112) & 2) == 0) & *(v3 + 112)) + (((v4 & 2) == 0) & v4) + 208));
  if (v5)
  {
    sub_2772BED78(v3, a2);
  }

  return v5;
}

uint64_t sub_2772B325C(uint64_t **a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *((*a1)[1] + 32) = a4;
  v8 = **a1;
  *(v8 + 8) = 0;
  *(v8 + 10) = 0;
  *(v8 + 12) = 0;
  result = sub_2772BAEE0(**a1, (*a1)[1], a5, *a2, a2, a4);
  if (result)
  {
    return result;
  }

  v10 = *(a2 + 5);
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  if (*(v10 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 25;
  }

  if (v13)
  {
    v15 = 0;
    *(v10 + 54) = 0;
  }

  else
  {
    v14 = *(a2 + 6);
    v15 = sub_277396028(*(v10 + 1), v12, *(v10 + 3), v14);
    if (!v15)
    {
      if (*(v14 + 2) != 3 && *(*(a2 + 5) + 1) && v14[272] == 4)
      {
        sub_277396814(*v14, v11, v10 + 4, v10 + 20, (v10 + 36), (v14 + 16), 0, 3);
      }

      v15 = 0;
    }
  }

  if (*a1)
  {
    v16 = **a1;
    if (v16)
    {
      v17 = v16[8] - v16[14];
      v18 = v16[16];
      v19 = *(a3 + 16);
      v20 = *(a3 + 36);
      v21 = (8 * (*(a1 + 2) - v19) - v20 - v18 + 8 * v17 - 32);
      if (v21 >= 1)
      {
        v22 = v19 + (v21 >> 3);
        v23 = (v21 & 7) + v20;
        LOBYTE(v20) = v23 & 7;
        v19 = &v22[v23 >> 3];
        v24 = bswap32(*v19);
        if (v19 > *(a3 + 24))
        {
          v19 = *(a3 + 24);
        }

        v25 = v24 << v20;
        goto LABEL_21;
      }

      if ((v21 & 0x80000000) == 0)
      {
        v25 = *(a3 + 32);
LABEL_21:
        v26 = 0;
        *(a3 + 16) = v19;
        *(a3 + 32) = v25;
        *(a3 + 36) = v20;
        goto LABEL_23;
      }
    }
  }

  v26 = -8969;
LABEL_23:
  result = v26 | v15;
  if (!result)
  {
    if (*(a3 + 16) - *a3 <= *(a3 + 12))
    {
      return 0;
    }

    else
    {
      return 4294958327;
    }
  }

  return result;
}

uint64_t sub_2772B341C(uint64_t **a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *((*a1)[1] + 32) = a4;
  v8 = **a1;
  *(v8 + 8) = 0;
  *(v8 + 10) = 0;
  *(v8 + 12) = 0;
  result = sub_2772BDFCC(**a1, (*a1)[1], a5, *a2, a2, a4);
  if (result)
  {
    return result;
  }

  v10 = *(a2 + 5);
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  if (*(v10 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 25;
  }

  if (v13)
  {
    v15 = 0;
    *(v10 + 54) = 0;
  }

  else
  {
    v14 = *(a2 + 6);
    v15 = sub_277396028(*(v10 + 1), v12, *(v10 + 3), v14);
    if (!v15)
    {
      if (*(v14 + 2) != 3 && *(*(a2 + 5) + 1) && v14[272] == 4)
      {
        sub_277396814(*v14, v11, v10 + 4, v10 + 20, (v10 + 36), (v14 + 16), 0, 3);
      }

      v15 = 0;
    }
  }

  if (*a1)
  {
    v16 = **a1;
    if (v16)
    {
      v17 = v16[8] - v16[14];
      v18 = v16[16];
      v19 = *(a3 + 16);
      v20 = *(a3 + 36);
      v21 = (8 * (*(a1 + 2) - v19) - v20 - v18 + 8 * v17 - 32);
      if (v21 >= 1)
      {
        v22 = v19 + (v21 >> 3);
        v23 = (v21 & 7) + v20;
        LOBYTE(v20) = v23 & 7;
        v19 = &v22[v23 >> 3];
        v24 = bswap32(*v19);
        if (v19 > *(a3 + 24))
        {
          v19 = *(a3 + 24);
        }

        v25 = v24 << v20;
        goto LABEL_21;
      }

      if ((v21 & 0x80000000) == 0)
      {
        v25 = *(a3 + 32);
LABEL_21:
        v26 = 0;
        *(a3 + 16) = v19;
        *(a3 + 32) = v25;
        *(a3 + 36) = v20;
        goto LABEL_23;
      }
    }
  }

  v26 = -8969;
LABEL_23:
  result = v26 | v15;
  if (!result)
  {
    if (*(a3 + 16) - *a3 <= *(a3 + 12))
    {
      return 0;
    }

    else
    {
      return 4294958327;
    }
  }

  return result;
}

uint64_t sub_2772B35DC(uint64_t **a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v105 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 22);
  v11 = *(a2 + 7);
  *((*a1)[1] + 32) = v11;
  bzero(v11, 0x330uLL);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v12 = **a1;
  *(v12 + 8) = 0;
  *(v12 + 10) = 0;
  *(v12 + 12) = 0;
  v13 = sub_2772B7DB8(**a1, (*a1)[1], &v95, v10 + 80, *a2, a2, a6);
  if ((v13 & 0x80000000) != 0)
  {
    return 4294958327;
  }

  v14 = v13;
  v93[1] = v101;
  v93[2] = v102;
  v93[3] = v103;
  v94 = v104;
  v90 = v97;
  v91 = v98;
  v92 = v99;
  v93[0] = v100;
  *v89 = v95;
  *&v89[16] = v96;
  v15 = *(a2 + 28);
  v17 = *(a2 + 5);
  v16 = *(a2 + 6);
  v18 = *(a2 + 31);
  v88 = 0;
  v19 = v95;
  LODWORD(result) = sub_2773963B8(v15, v95, &v88 + 1, &v88);
  if (!result)
  {
    *v17 = v19;
    v21 = HIBYTE(v88);
    *(v17 + 1) = HIBYTE(v88);
    v22 = v88;
    *(v17 + 2) = v88;
    if (v21 || v22 != 25)
    {
      LODWORD(result) = sub_277396480(v21, v22, *(v17 + 3), v16, *(a2 + 31));
      if (!result)
      {
        v24 = *(v16 + 2);
        if (v24 == 3)
        {
          goto LABEL_109;
        }

        v25 = v16[272];
        if (*(*(a2 + 5) + 1) && v25 == 4)
        {
          v26 = HIBYTE(v88);
          v85 = v88;
          v86 = *(v16 + 2);
          v83 = v16[3];
          v84 = v16[2];
          v23.i32[0] = *&v89[20];
          *(v17 + 4) = vmovl_u16(*&vmovl_u8(v23));
          v27 = v17 + 4;
          v28 = v17 + 20;
          v29 = v17 + 36;
          LODWORD(result) = sub_277396814(*v16, *(v17 + 1), v17 + 4, v17 + 20, (v17 + 36), (v16 + 16), 0, 3);
          if (result)
          {
            goto LABEL_116;
          }

          v30 = v89 | 0xC;
          if ((v18 == 2 || v84) && (v26 != 2 || v85 != 4))
          {
            v31 = 0;
            v32 = 0;
            do
            {
              if (v26 == 3 && !*(v27 + 4 * v31) || *(v28 + 4 * v31) == 5)
              {
                v33 = 32;
              }

              else
              {
                v33 = *(v30 + v31);
              }

              if (*(v29 + 4 * v31) >= 1)
              {
                v34 = 0;
                v35 = &v16[16 * v32 + 24];
                do
                {
                  *v35 = v33;
                  v35 += 16;
                  ++v34;
                  ++v32;
                }

                while (v34 < *(v29 + 4 * v31));
              }

              ++v31;
            }

            while (v31 != 4);
          }

          if ((v18 == 2 || v83) && (v26 != 2 || v85 != 4))
          {
            v36 = 0;
            v37 = 0;
            do
            {
              if (v26 == 3 && !*(v27 + 4 * v36) || *(v28 + 4 * v36) == 4)
              {
                v38 = 32;
              }

              else
              {
                v38 = *(v30 + v36 + 4);
              }

              if (*(v29 + 4 * v36) >= 1)
              {
                v39 = 0;
                v40 = &v16[16 * v37 + 25];
                do
                {
                  *v40 = v38;
                  v40 += 16;
                  ++v39;
                  ++v37;
                }

                while (v39 < *(v29 + 4 * v36));
              }

              ++v36;
            }

            while (v36 != 4);
          }

          v41 = 0;
          v42 = 0;
          v43 = v93 + 8;
          v24 = v86;
          do
          {
            if (*(v29 + 4 * v41) >= 1)
            {
              v44 = 0;
              v45 = &v16[16 * v42 + 16];
              v46 = v43;
              do
              {
                LODWORD(v47) = *(v46 - 16);
                HIDWORD(v47) = *v46++;
                *v45 = v47;
                v45 += 16;
                ++v44;
              }

              while (v44 < *(v29 + 4 * v41));
              v42 += v44;
            }

            ++v41;
            v43 += 16;
          }

          while (v41 != 4);
        }

        else if (*(*(a2 + 5) + 1))
        {
          if (v25 == 2)
          {
            v48 = v16[3];
            if (v18 == 2 || v16[2])
            {
              v49 = 0;
              v50 = (v16 + 24);
              do
              {
                if (v50[7] == 5)
                {
                  v51 = 32;
                }

                else
                {
                  v51 = *((v89 | 0xC) + v49);
                }

                *v50 = v51;
                v50 += 16;
                ++v49;
              }

              while (v49 != 2);
            }

            v52 = v16 + 16;
            if (v18 == 2 || v48)
            {
              v53 = v89[14];
              if (v16[31] == 4)
              {
                v53 = 32;
              }

              v16[25] = v53;
              if (v16[47] == 4)
              {
                v54 = 32;
              }

              else
              {
                v54 = v89[15];
              }

              v16[41] = v54;
            }

            v55 = &v89[18];
            v56 = 2;
            do
            {
              if (v52[15] != 5)
              {
                *v52 = *(v55 - 2);
              }

              v52 += 16;
              v55 += 4;
              --v56;
            }

            while (v56);
            v57 = v16 + 20;
            v58 = &v89[26];
            v59 = 2;
            do
            {
              if (v57[11] != 4)
              {
                *v57 = *(v58 - 2);
              }

              v57 += 16;
              v58 += 4;
              --v59;
            }

            while (v59);
          }

          else
          {
            if (v18 == 2 || v16[2])
            {
              if (v16[31] == 5)
              {
                v72 = 32;
              }

              else
              {
                v72 = v89[12];
              }

              v16[24] = v72;
            }

            v73 = v16[31];
            if (v18 == 2 || v16[3])
            {
              v74 = v89[13];
              if (v73 == 4)
              {
                v74 = 32;
              }

              v16[25] = v74;
            }

            if (v73 != 5)
            {
              *(v16 + 4) = *&v89[14];
            }

            if (v25)
            {
              v75 = &v89[20];
              v76 = v16 + 20;
              do
              {
                if (v76[11] != 4)
                {
                  *v76 = *(v75 - 2);
                }

                v75 += 4;
                v76 += 16;
                --v25;
              }

              while (v25);
            }
          }
        }

        else
        {
          v60 = *(v16 + 2);
          if (v24 == 1)
          {
            v61 = *&v89[12];
            v62 = v16 + 325;
            v63 = &v89[29];
            v64 = -16;
            do
            {
              *(v62 - 20) = v61 & 1;
              if (v61)
              {
                v65 = 0;
              }

              else
              {
                v65 = *v63;
              }

              *v62-- = v65;
              v61 >>= 1;
              --v63;
              v66 = __CFADD__(v64++, 1);
            }

            while (!v66);
            v60 = *(v16 + 2);
          }

          if (v60 == 7)
          {
            v67 = *&v89[12];
            v68 = v16 + 329;
            v69 = &v89[17];
            v70 = -4;
            do
            {
              *(v68 - 20) = v67 & 1;
              if (v67)
              {
                v71 = 0;
              }

              else
              {
                v71 = *v69;
              }

              *v68-- = v71;
              v67 >>= 1;
              --v69;
              v66 = __CFADD__(v70++, 1);
            }

            while (!v66);
          }

          v16[289] = v89[30];
        }

        if (v24 != 2)
        {
LABEL_109:
          v77 = HIWORD(v19) & 0x3F;
        }

        else
        {
          v77 = 0;
        }

        v87 = 0;
        LODWORD(result) = sub_277396764(*(v17 + 1), *(v17 + 2), v77, &v87, &v87 + 1, 0, 0);
        *(v17 + 53) = v87;
        *(v17 + 52) = HIBYTE(v87);
        if (v77)
        {
          v78 = 1;
        }

        else
        {
          v78 = v24 == 2;
        }

        v79 = v89[8];
        if (!v78)
        {
          v79 = 0;
        }

        *(v17 + 54) = v79;
      }
    }

    else
    {
      LODWORD(result) = 0;
      *(v17 + 54) = 0;
    }
  }

LABEL_116:
  v80 = ((v14 & 7) + *(a5 + 36)) & 7;
  v81 = (*(a5 + 16) + (v14 >> 3) + (((v14 & 7) + *(a5 + 36)) >> 3));
  v82 = bswap32(*v81);
  if (v81 > *(a5 + 24))
  {
    v81 = *(a5 + 24);
  }

  *(a5 + 16) = v81;
  *(a5 + 32) = v82 << v80;
  *(a5 + 36) = v80;
  if (v81 - *a5 <= *(a5 + 12))
  {
    return result;
  }

  else
  {
    return 4294958327;
  }
}

uint64_t sub_2772B3C64()
{
  if ((byte_280A6FCB0 & 1) == 0)
  {
    v0 = 0;
    byte_280A6FCB0 = 1;
    dword_280A6FCB1 = 922815232;
    word_280A6FCB5 = 17664;
    unk_280A6FCB7 = xmmword_2773B26E0;
    unk_280A6FCC7 = 0x7FE272EB7FE55FEELL;
    unk_280A6FCCF = xmmword_2773B26F0;
    unk_280A6FCDF = unk_2773B2700;
    unk_280A6FCEF = 0x7DEA4CF952FB38FCLL;
    unk_280A6FD37 = xmmword_2773B2758;
    unk_280A6FD47 = unk_2773B2768;
    unk_280A6FD57 = xmmword_2773B2778;
    unk_280A6FCF7 = xmmword_2773B2718;
    unk_280A6FD07 = unk_2773B2728;
    unk_280A6FD17 = xmmword_2773B2738;
    unk_280A6FD27 = unk_2773B2748;
    xmmword_280A6FD81 = unk_2773B27A2;
    unk_280A6FD91 = xmmword_2773B27B2;
    xmmword_280A6FD61 = *(&xmmword_2773B2778 + 10);
    unk_280A6FD71 = xmmword_2773B2792;
    unk_280A6FDDB = unk_2773B27FC;
    xmmword_280A6FDC1 = xmmword_2773B27E2;
    unk_280A6FDD1 = unk_2773B27F2;
    xmmword_280A6FDA1 = unk_2773B27C2;
    unk_280A6FDB1 = xmmword_2773B27D2;
    word_280A6FE4B = 25074;
    xmmword_280A6FDEB = xmmword_2773B280C;
    unk_280A6FDFB = unk_2773B281C;
    xmmword_280A6FE2B = xmmword_2773B284C;
    unk_280A6FE3B = unk_2773B285C;
    xmmword_280A6FE0B = xmmword_2773B282C;
    unk_280A6FE1B = unk_2773B283C;
    xmmword_280A6FE6F = xmmword_2773B288E;
    unk_280A6FE7F = unk_2773B289E;
    xmmword_280A6FE4F = xmmword_2773B286E;
    unk_280A6FE5F = unk_2773B287E;
    unk_280A6FEB9 = *(&xmmword_2773B28CE + 10);
    xmmword_280A6FE9F = unk_2773B28BE;
    unk_280A6FEAF = xmmword_2773B28CE;
    xmmword_280A6FE8F = xmmword_2773B28AE;
    xmmword_280A6FEE9 = xmmword_2773B2908;
    unk_280A6FEF9 = unk_2773B2918;
    xmmword_280A6FEC9 = xmmword_2773B28E8;
    unk_280A6FED9 = unk_2773B28F8;
    unk_280A6FF33 = *(&xmmword_2773B2948 + 10);
    xmmword_280A6FF19 = unk_2773B2938;
    unk_280A6FF29 = xmmword_2773B2948;
    v1 = &dword_280A6FF43;
    xmmword_280A6FF09 = xmmword_2773B2928;
    do
    {
      *v1 = *(&unk_2773B2962 + v0);
      *(v1 + 2) = *(&unk_2773B2962 + v0 + 4);
      v0 += 8;
      v1 = (v1 + 658);
    }

    while (v0 != 24);
    v2 = 0;
    v3 = &qword_280A6FF49;
    do
    {
      *v3 = qword_2773B297A[v2];
      v2 += 3;
      v3 = (v3 + 658);
    }

    while (v2 != 9);
    v4 = &qword_280A6FF51;
    v5 = 1u;
    do
    {
      *v4 = qword_2773B297A[v5];
      v5 += 3;
      v4 = (v4 + 658);
    }

    while (v5 != 10);
    v6 = &qword_280A6FF59;
    v7 = 2u;
    do
    {
      *v6 = qword_2773B297A[v7];
      v7 += 3;
      v6 = (v6 + 658);
    }

    while (v7 != 11);
    v8 = 0;
    v9 = &xmmword_280A6FF61;
    do
    {
      v10 = *(&unk_2773B29C2 + v8 + 16);
      *v9 = *(&unk_2773B29C2 + v8);
      v9[1] = v10;
      *(v9 + 4) = *(&unk_2773B29C2 + v8 + 32);
      v8 += 40;
      v9 = (v9 + 658);
    }

    while (v8 != 120);
    v11 = 0;
    v12 = &xmmword_280A6FF89;
    do
    {
      v13 = *(&unk_2773B2A3A + v11 + 80);
      v12[4] = *(&unk_2773B2A3A + v11 + 64);
      v12[5] = v13;
      v12[6] = *(&unk_2773B2A3A + v11 + 96);
      *(v12 + 106) = *(&unk_2773B2A3A + v11 + 106);
      v14 = *(&unk_2773B2A3A + v11 + 16);
      *v12 = *(&unk_2773B2A3A + v11);
      v12[1] = v14;
      v15 = *(&unk_2773B2A3A + v11 + 32);
      v16 = *(&unk_2773B2A3A + v11 + 48);
      v11 += 122;
      v12[2] = v15;
      v12[3] = v16;
      v12 = (v12 + 658);
    }

    while (v11 != 366);
    v17 = 0;
    v18 = &xmmword_280A70003;
    do
    {
      v19 = *(&unk_2773B2BA8 + v17 + 80);
      v18[4] = *(&unk_2773B2BA8 + v17 + 64);
      v18[5] = v19;
      v18[6] = *(&unk_2773B2BA8 + v17 + 96);
      *(v18 + 106) = *(&unk_2773B2BA8 + v17 + 106);
      v20 = *(&unk_2773B2BA8 + v17 + 16);
      *v18 = *(&unk_2773B2BA8 + v17);
      v18[1] = v20;
      v21 = *(&unk_2773B2BA8 + v17 + 32);
      v22 = *(&unk_2773B2BA8 + v17 + 48);
      v17 += 122;
      v18[2] = v21;
      v18[3] = v22;
      v18 = (v18 + 658);
    }

    while (v17 != 366);
    v23 = 0;
    v24 = &xmmword_280A7007D;
    do
    {
      v25 = *(&unk_2773B2D16 + v23 + 80);
      v24[4] = *(&unk_2773B2D16 + v23 + 64);
      v24[5] = v25;
      *(v24 + 48) = *(&unk_2773B2D16 + v23 + 96);
      v26 = *(&unk_2773B2D16 + v23 + 16);
      *v24 = *(&unk_2773B2D16 + v23);
      v24[1] = v26;
      v28 = *(&unk_2773B2D16 + v23 + 32);
      v27 = *(&unk_2773B2D16 + v23 + 48);
      v23 += 98;
      v24[2] = v28;
      v24[3] = v27;
      v24 = (v24 + 658);
    }

    while (v23 != 294);
    v29 = 0;
    v30 = &xmmword_280A700E1;
    do
    {
      v31 = *(&unk_2773B2E3C + v29 + 80);
      v30[4] = *(&unk_2773B2E3C + v29 + 64);
      v30[5] = v31;
      v30[6] = *(&unk_2773B2E3C + v29 + 96);
      *(v30 + 106) = *(&unk_2773B2E3C + v29 + 106);
      v32 = *(&unk_2773B2E3C + v29 + 16);
      *v30 = *(&unk_2773B2E3C + v29);
      v30[1] = v32;
      v33 = *(&unk_2773B2E3C + v29 + 32);
      v34 = *(&unk_2773B2E3C + v29 + 48);
      v29 += 122;
      v30[2] = v33;
      v30[3] = v34;
      v30 = (v30 + 658);
    }

    while (v29 != 366);
    v35 = 0;
    v36 = &xmmword_280A7015B;
    do
    {
      v37 = *(&unk_2773B2FAA + v35 + 80);
      v36[4] = *(&unk_2773B2FAA + v35 + 64);
      v36[5] = v37;
      v36[6] = *(&unk_2773B2FAA + v35 + 96);
      *(v36 + 106) = *(&unk_2773B2FAA + v35 + 106);
      v38 = *(&unk_2773B2FAA + v35 + 16);
      *v36 = *(&unk_2773B2FAA + v35);
      v36[1] = v38;
      v39 = *(&unk_2773B2FAA + v35 + 32);
      v40 = *(&unk_2773B2FAA + v35 + 48);
      v35 += 122;
      v36[2] = v39;
      v36[3] = v40;
      v36 = (v36 + 658);
    }

    while (v35 != 366);
    v41 = 0;
    v42 = &unk_280B9AC10;
    do
    {
      v43 = 0;
      v44 = &byte_2773B3119;
      do
      {
        v45 = (*v44 + ((v41 * *(v44 - 1)) >> 4));
        if (v45 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = (*v44 + ((v41 * *(v44 - 1)) >> 4));
        }

        if (v46 >= 126)
        {
          LOBYTE(v46) = 126;
        }

        v47 = 2 * v46;
        v48 = v47 ^ 0x7E;
        v49 = v47 - 127;
        if (v45 >= 64)
        {
          v50 = v49;
        }

        else
        {
          v50 = v48;
        }

        v42[v43++] = v50;
        v44 += 2;
      }

      while (v43 != 11);
      v51 = &byte_2773B312F;
      for (i = 60; i != 70; ++i)
      {
        v53 = (*v51 + ((v41 * *(v51 - 1)) >> 4));
        if (v53 <= 1)
        {
          v54 = 1;
        }

        else
        {
          v54 = (*v51 + ((v41 * *(v51 - 1)) >> 4));
        }

        if (v54 >= 126)
        {
          LOBYTE(v54) = 126;
        }

        v55 = 2 * v54;
        v56 = v55 ^ 0x7E;
        v57 = v55 - 127;
        if (v53 >= 64)
        {
          v58 = v57;
        }

        else
        {
          v58 = v56;
        }

        v42[i] = v58;
        v51 += 2;
      }

      v59 = &dword_280A6FCB1 + 1;
      do
      {
        v60 = (*v59 + ((v41 * *(v59 - 1)) >> 4));
        if (v60 <= 1)
        {
          v61 = 1;
        }

        else
        {
          v61 = (*v59 + ((v41 * *(v59 - 1)) >> 4));
        }

        if (v61 >= 126)
        {
          LOBYTE(v61) = 126;
        }

        v62 = 2 * v61;
        v63 = v62 ^ 0x7E;
        v64 = v62 - 127;
        if (v60 >= 64)
        {
          v65 = v64;
        }

        else
        {
          v65 = v63;
        }

        v42[i++] = v65;
        v59 += 2;
      }

      while (i != 399);
      v66 = &byte_2773B3143;
      do
      {
        v67 = (*v66 + ((v41 * *(v66 - 1)) >> 4));
        if (v67 <= 1)
        {
          v68 = 1;
        }

        else
        {
          v68 = (*v66 + ((v41 * *(v66 - 1)) >> 4));
        }

        if (v68 >= 126)
        {
          LOBYTE(v68) = 126;
        }

        v69 = 2 * v68;
        v70 = v69 ^ 0x7E;
        v71 = v69 - 127;
        if (v67 >= 64)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        v42[i++] = v72;
        v66 += 2;
      }

      while (i != 402);
      v73 = &byte_2773B3149;
      do
      {
        v74 = (*v73 + ((v41 * *(v73 - 1)) >> 4));
        if (v74 <= 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = (*v73 + ((v41 * *(v73 - 1)) >> 4));
        }

        if (v75 >= 126)
        {
          LOBYTE(v75) = 126;
        }

        v76 = 2 * v75;
        v77 = v76 ^ 0x7E;
        v78 = v76 - 127;
        if (v74 >= 64)
        {
          v79 = v78;
        }

        else
        {
          v79 = v77;
        }

        v42[i++] = v79;
        v73 += 2;
      }

      while (i != 460);
      v80 = &unk_280B9AC10 + 460 * v41;
      sub_2772831DC(v41, 0, (v80 + 23920));
      sub_2772831DC(v41, 1, (v80 + 47840));
      result = sub_2772831DC(v41++, 2, (v80 + 71760));
      v42 += 460;
    }

    while (v41 != 52);
  }

  return result;
}

BOOL sub_2772B429C(unsigned int *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = byte_2773B3458[4 * v2 + (*a1 >> 6)];
  v4 = *a1 - v3;
  *a1 = v4;
  v5 = *(a1 + 2);
  if (v5 >= v4 << 55)
  {
    *(a1 + 2) = v5 - (v4 << 55);
    *a1 = v3;
    v6 = (v2 & 1) == 0;
    v7 = &unk_2773B36D8;
  }

  else
  {
    v6 = v2 & 1;
    v7 = &unk_2773B3658;
  }

  *a2 = v7[v2];
  v8 = *a1;
  v9 = byte_2773B376C[v8];
  *a1 = v8 << v9;
  v10 = *(a1 + 2) << v9;
  *(a1 + 2) = v10;
  v11 = a1[16];
  v12 = v9 - v11;
  if (v9 > v11)
  {
    v13 = *(a1 + 4);
    v14 = v13 + 1;
    *(a1 + 4) = v13 + 1;
    v15 = bswap32(*v13);
    if (v14 > *(a1 + 6))
    {
      v14 = *(a1 + 6);
    }

    *(a1 + 4) = v14;
    *(a1 + 2) = (v15 << v12) | v10;
    v11 = 32;
    v9 = v12;
  }

  a1[16] = v11 - v9;
  return v6;
}

BOOL sub_2772B437C(unsigned int *a1)
{
  v1 = *a1;
  v2 = v1 << 54;
  v3 = *(a1 + 2);
  if (v3 < v1 << 54)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1 << 54;
  }

  v5 = 2 * (v3 - v4);
  *(a1 + 2) = v5;
  v6 = a1[16];
  v7 = 1;
  if (v6 <= 0)
  {
    v7 = 1 - v6;
    v8 = *(a1 + 4);
    v9 = v8 + 1;
    *(a1 + 4) = v8 + 1;
    v10 = bswap32(*v8);
    if (v9 > *(a1 + 6))
    {
      v9 = *(a1 + 6);
    }

    *(a1 + 4) = v9;
    *(a1 + 2) = (v10 << v7) | v5;
    v6 = 32;
  }

  a1[16] = v6 - v7;
  return v3 >= v2;
}

BOOL sub_2772B43FC(uint64_t a1)
{
  v1 = (*a1 - 2);
  *a1 = v1;
  v2 = *(a1 + 16);
  v3 = v1 << 55;
  if (v1 <= 0xFF && v2 < v3)
  {
    v5 = __clz(v1 << 23);
    *a1 = v1 << v5;
    v6 = v2 << v5;
    *(a1 + 16) = v2 << v5;
    v7 = *(a1 + 64);
    v8 = v5 - v7;
    if (v5 > v7)
    {
      v9 = *(a1 + 32);
      v10 = v9 + 1;
      *(a1 + 32) = v9 + 1;
      v11 = bswap32(*v9);
      if (v10 > *(a1 + 48))
      {
        v10 = *(a1 + 48);
      }

      *(a1 + 32) = v10;
      *(a1 + 16) = (v11 << v8) | v6;
      v7 = 32;
      v5 = v8;
    }

    *(a1 + 64) = v7 - v5;
  }

  return v2 >= v3;
}

uint64_t sub_2772B448C(unsigned int *a1, int a2, int a3, int a4, unsigned int a5)
{
  v8 = a1 + (a3 + a2);
  if (!sub_2772B429C(a1, v8 + 208))
  {
    return 0;
  }

  v9 = a4 - 1;
  LODWORD(v10) = 1;
  if (v9 < 2)
  {
    goto LABEL_6;
  }

  do
  {
    v11 = sub_2772B429C(a1, v8 + 208);
    v10 = (v10 + v11);
  }

  while (v11 && v10 < v9);
  if (v11)
  {
LABEL_6:
    v12 = 0;
    do
    {
      v13 = a5;
      v14 = sub_2772B437C(a1);
      v12 |= v14 << a5;
      a5 += v14;
    }

    while (v14 && a5 < 0xF);
    if (a5)
    {
      a5 = 0;
      v15 = v13 + v14 - 1;
      do
      {
        a5 |= sub_2772B437C(a1) << v15--;
      }

      while (v15 != -1);
    }

    return v12 + v10 + a5;
  }

  return v10;
}

uint64_t sub_2772B4570(uint64_t a1)
{
  if (sub_2772B429C(a1, (a1 + 229)))
  {
    return 0;
  }

  if (sub_2772B429C(a1, (a1 + 230)))
  {
    return sub_2772B429C(a1, (a1 + 231)) ^ 3u;
  }

  return 1;
}

uint64_t sub_2772B45CC(uint64_t a1)
{
  if (sub_2772B429C(a1, (a1 + 244)))
  {
    if (sub_2772B429C(a1, (a1 + 245)))
    {
      if (sub_2772B429C(a1, (a1 + 246)))
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }

      v3 = v2 | sub_2772B429C(a1, (a1 + 247));
      v4 = sub_2772B429C(a1, (a1 + 247));
      v5 = v4;
      if (v3 == 2)
      {
        v6 = sub_2772B429C(a1, (a1 + 247));
        if (v5)
        {
          v7 = 9;
        }

        else
        {
          v7 = 7;
        }

        return (v7 + v6);
      }

      else
      {
        return byte_2773B3758[v4 | (2 * v3)];
      }
    }

    else if (sub_2772B429C(a1, (a1 + 247)))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2772B46AC(unsigned int *a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  if (*a3)
  {
    v8 = 73;
    if ((*a3 & 0x20) == 0)
    {
      v8 = 74;
    }

    if ((a3[1] & 2) != 0)
    {
      v8 = 73;
    }
  }

  else
  {
    v8 = 73;
  }

  if (*a2)
  {
    v9 = ~(*a2 >> 4) & 2;
    if ((a2[1] & 4) != 0)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = a1 + 52;
  v11 = sub_2772B429C(a1, a1 + v8 + v9 + 208);
  v12 = v11;
  if (*a2)
  {
    v13 = ~(*a2 >> 4) & 2;
    if ((a2[1] & 8) != 0)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 73;
  if (!v11)
  {
    v14 = 74;
  }

  v15 = sub_2772B429C(a1, v10 + v13 + v14);
  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v12;
  if (*a3)
  {
    v18 = (*a3 & 0x20) == 0;
    if ((a3[1] & 8) != 0)
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v12)
  {
    v19 = 73;
  }

  else
  {
    v19 = 75;
  }

  v20 = sub_2772B429C(a1, v10 + v18 + v19);
  if (v20)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = v17 | v21;
  if (v15)
  {
    v23 = 73;
  }

  else
  {
    v23 = 75;
  }

  if (sub_2772B429C(a1, v10 + v23 + !v20))
  {
    v24 = 8;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 | v24;
  if (a4)
  {
    v26 = *a3;
    if (v26)
    {
      v27 = ((v26 >> 5) & 1) + 77;
      if ((a3[1] & 0x30) != 0)
      {
        v27 = 78;
      }
    }

    else
    {
      v27 = 77;
    }

    v28 = *a2;
    if (v28)
    {
      if ((a2[1] & 0x30) != 0)
      {
        v29 = 2;
      }

      else
      {
        v29 = (v28 >> 4) & 2;
      }
    }

    else
    {
      v29 = 0;
    }

    if (sub_2772B429C(a1, v10 + v27 + v29))
    {
      v30 = *a3;
      if (v30)
      {
        v31 = ((v30 >> 5) & 1) + 81;
        if ((a3[1] & 0x30) == 0x20)
        {
          v31 = 82;
        }
      }

      else
      {
        v31 = 81;
      }

      v32 = *a2;
      if (v32)
      {
        if ((a2[1] & 0x30) == 0x20)
        {
          v33 = 2;
        }

        else
        {
          v33 = (v32 >> 4) & 2;
        }
      }

      else
      {
        v33 = 0;
      }

      if (sub_2772B429C(a1, v10 + v31 + v33))
      {
        v34 = 32;
      }

      else
      {
        v34 = 16;
      }

      return v34 | v25;
    }
  }

  return v25;
}

uint64_t sub_2772B492C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (sub_2772B429C(a1, (a1 + (((*a2 & ((*a2 << 25) >> 31)) + (*a3 & ((*a3 << 25) >> 31))) | 0x40) + 208)))
  {
    if (sub_2772B429C(a1, (a1 + 275)))
    {
      if (sub_2772B429C(a1, (a1 + 275)))
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_2772B49B8(unsigned int *a1, _BYTE *a2, _BYTE *a3)
{
  if (a3[5])
  {
    v3 = (*a3 & 1) + 399;
  }

  else
  {
    v3 = 399;
  }

  if (a2[5])
  {
    v4 = *a2 & 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_2772B429C(a1, a1 + v4 + v3 + 208);
}

BOOL sub_2772B4A10(unsigned int *a1, _BYTE *a2, _BYTE *a3)
{
  if (a3[6])
  {
    v3 = *a3 & 1 | 0x46;
  }

  else
  {
    v3 = 70;
  }

  if (a2[6])
  {
    v4 = *a2 & 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_2772B429C(a1, a1 + v4 + v3 + 208);
}

uint64_t sub_2772B4A68(uint64_t a1, _BYTE *a2, _BYTE *a3, int a4, unsigned int a5, char a6, int a7, int a8)
{
  if (a5 > 1)
  {
    LOBYTE(v11) = 0;
    v9 = a6;
    v10 = a8;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = a2[(a4 | (2 * a5)) + 12];
    v10 = a2[(a5 & 1) + 2];
    v11 = *a2 ^ 1 | ((*a2 & 4) >> 2);
    if (a5)
    {
LABEL_3:
      v12 = 1;
      goto LABEL_6;
    }
  }

  a6 = a3[(a5 | a4) + 12];
  a8 = a3[(a5 >> 1) + 2];
  v12 = ((*a3 & 4) == 0) & *a3;
LABEL_6:
  v13 = v10 == 0;
  v14 = 56;
  if (v9 <= 0)
  {
    v14 = 54;
  }

  v15 = v11 | a7 & v13;
  LODWORD(v16) = v12 & ((a8 != 0) | ~a7);
  if (a6 > 0)
  {
    v16 = v16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 54;
  }

  else
  {
    v17 = v14;
  }

  if (sub_2772B429C(a1, (a1 + (v17 | v16) + 208)))
  {
    if (sub_2772B429C(a1, (a1 + 266)))
    {
      v18 = 2;
      do
      {
        v19 = v18;
        if (!sub_2772B429C(a1, (a1 + 267)))
        {
          break;
        }

        v18 = v19 + 1;
      }

      while (v19 < 0x1F);
    }

    else
    {
      LOBYTE(v19) = 1;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

uint64_t sub_2772B4BA8(uint64_t a1, _BYTE *a2, _BYTE *a3, int a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a5 >= 2)
  {
    LOBYTE(v11) = 0;
    v9 = (a6 + (a4 | (2 * (a5 & 1))));
    v10 = (a8 + (a5 & 1));
  }

  else
  {
    v9 = &a2[(a4 | (2 * a5)) + 12];
    v10 = &a2[(a5 & 1) + 2];
    v11 = *a2 ^ 1 | ((*a2 & 4) >> 2);
  }

  v12 = a5 >> 1;
  v13 = *v10;
  v14 = *v9;
  if (a5)
  {
    v15 = (a6 + (a4 | (4 * v12)));
    v16 = (a8 + (a5 & 0xFE));
    v17 = 1;
  }

  else
  {
    v15 = &a3[(a5 | a4) + 12];
    v16 = &a3[v12 + 2];
    v17 = ((*a3 & 4) == 0) & *a3;
  }

  v18 = *v15;
  v19 = v13 == 0;
  v20 = *v16 != 0;
  v21 = 56;
  if (v14 <= 0)
  {
    v21 = 54;
  }

  v22 = v11 | a7 & v19;
  LODWORD(v23) = v17 & (v20 | ~a7);
  if (v18 > 0)
  {
    v23 = v23;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = 54;
  }

  else
  {
    v24 = v21;
  }

  if (sub_2772B429C(a1, (a1 + (v24 | v23) + 208)))
  {
    if (sub_2772B429C(a1, (a1 + 266)))
    {
      v25 = 2;
      do
      {
        v26 = v25;
        if (!sub_2772B429C(a1, (a1 + 267)))
        {
          break;
        }

        v25 = v26 + 1;
      }

      while (v26 < 0x1F);
    }

    else
    {
      LOBYTE(v26) = 1;
    }
  }

  else
  {
    LOBYTE(v26) = 0;
  }

  return v26;
}

uint64_t sub_2772B4D04(unsigned int *a1, int a2, int a3, int a4)
{
  if (a4 >= 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = -a4;
  }

  if (a3 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  v8 = v6 + v7;
  if (v8 <= 0x20)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v8 >= 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = a1 + 52;
  v12 = sub_2772B429C(a1, a1 + (v10 + a2) + 208);
  result = 0;
  if (v12)
  {
    if (sub_2772B429C(a1, v11 + (a2 + 3)))
    {
      if (sub_2772B429C(a1, v11 + (a2 + 4)))
      {
        if (sub_2772B429C(a1, v11 + (a2 + 5)))
        {
          v14 = sub_2772B448C(a1, a2, 6, 6, 3u) + 4;
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 1;
    }

    v15 = sub_2772B437C(a1);
    return (v14 ^ (v15 << 31 >> 31)) + v15;
  }

  return result;
}

BOOL sub_2772B4DF8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = (*a4 & 1) != 0 && (a4[4] & 1) != 0 || (*a4 & 1) == 0;
  v6 = *a3;
  if (v6 & 1) != 0 && (a3[4])
  {
    v7 = 2;
  }

  else
  {
    v7 = ~(2 * v6) & 2;
  }

  result = sub_2772B429C(a1, ((v7 + v5) + a1 + 208 + 85));
  *(a1 + 10) |= result;
  if (result)
  {
    v9 = 0;
    v10 = (a1 + 374);
    v11 = -1;
    while (1)
    {
      ++v11;
      result = sub_2772B429C(a1, v10 - 61);
      if (result)
      {
        v12 = v9 + 1;
        v22[v9] = v11;
        result = sub_2772B429C(a1, v10);
        ++v9;
        if (result)
        {
          break;
        }
      }

      ++v10;
      if (v11 >= 0xE)
      {
        if (v11 == 14)
        {
          v12 = v9 + 1;
          v22[v9] = 15;
        }

        else
        {
          v12 = v9;
        }

        break;
      }
    }

    if (((v12 - 1) & 0x8000) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = (v12 - 1) + 1;
      v16 = &v22[(v12 - 1)];
      do
      {
        LODWORD(v17) = v14 + 228;
        if (v14 >= 3)
        {
          LODWORD(v17) = 231;
        }

        if (v13)
        {
          v17 = 227;
        }

        else
        {
          v17 = v17;
        }

        if (sub_2772B429C(a1, (a1 + 208 + v17)))
        {
          if (v13 >= 4)
          {
            v18 = 9;
          }

          else
          {
            v18 = v13 + 5;
          }

          ++v13;
          v19 = sub_2772B448C(a1, 227, v18, 14, 0) + 2;
        }

        else
        {
          ++v14;
          LOWORD(v19) = 1;
        }

        result = sub_2772B437C(a1);
        v20 = *v16--;
        *(*(a1 + 3216) + 2 * v20) = (v19 ^ ((result << 15) >> 15)) + result;
      }

      while (v15-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B4FF8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = (*a4 & 1) != 0 && (a4[4] & 1) != 0 || (*a4 & 1) == 0;
  v6 = *a3;
  if (v6 & 1) != 0 && (a3[4])
  {
    v7 = 2;
  }

  else
  {
    v7 = ~(2 * v6) & 2;
  }

  result = sub_2772B429C(a1, ((v7 + v5) + a1 + 208 + 85));
  *(a1 + 10) |= result;
  if (result)
  {
    v9 = 0;
    v10 = (a1 + 546);
    v11 = -1;
    while (1)
    {
      ++v11;
      result = sub_2772B429C(a1, v10 - 61);
      if (result)
      {
        v12 = v9 + 1;
        v22[v9] = v11;
        result = sub_2772B429C(a1, v10);
        ++v9;
        if (result)
        {
          break;
        }
      }

      ++v10;
      if (v11 >= 0xE)
      {
        if (v11 == 14)
        {
          v12 = v9 + 1;
          v22[v9] = 15;
        }

        else
        {
          v12 = v9;
        }

        break;
      }
    }

    if (((v12 - 1) & 0x8000) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = (v12 - 1) + 1;
      v16 = &v22[(v12 - 1)];
      do
      {
        LODWORD(v17) = v14 + 228;
        if (v14 >= 3)
        {
          LODWORD(v17) = 231;
        }

        if (v13)
        {
          v17 = 227;
        }

        else
        {
          v17 = v17;
        }

        if (sub_2772B429C(a1, (a1 + 208 + v17)))
        {
          if (v13 >= 4)
          {
            v18 = 9;
          }

          else
          {
            v18 = v13 + 5;
          }

          ++v13;
          v19 = sub_2772B448C(a1, 227, v18, 14, 0) + 2;
        }

        else
        {
          ++v14;
          LOWORD(v19) = 1;
        }

        result = sub_2772B437C(a1);
        v20 = *v16--;
        *(*(a1 + 3216) + 2 * v20) = (v19 ^ ((result << 15) >> 15)) + result;
      }

      while (v15-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B51F8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, char a4, int a5, uint64_t a6, unsigned __int8 *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4 + 8;
  v10 = a1 + 208;
  result = sub_2772B429C(a1, (a1 + 208 + (*a3 & (*(a3 + 5) >> (a4 + 8)) & 1 | a5 & ~*a3 | (2 * (*a2 & (*(a2 + 5) >> (a4 + 8)) & 1 | a5 & ~*a2))) + 97));
  *(a1 + 14) |= result << v9;
  if (result)
  {
    v12 = 0;
    v13 = (a1 + 418);
    v14 = -1;
    while (1)
    {
      ++v14;
      result = sub_2772B429C(a1, v13 - 61);
      if (result)
      {
        v15 = v12 + 1;
        v26[v12] = v14;
        result = sub_2772B429C(a1, v13);
        ++v12;
        if (result)
        {
          break;
        }
      }

      ++v13;
      if (v14 >= 2)
      {
        if (v14 == 2)
        {
          v15 = v12 + 1;
          v26[v12] = 3;
        }

        else
        {
          v15 = v12;
        }

        break;
      }
    }

    if (((v15 - 1) & 0x8000) == 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v15 - 1) + 1;
      v19 = &v26[(v15 - 1)];
      do
      {
        LODWORD(v20) = v17 + 258;
        if (v17 >= 3)
        {
          LODWORD(v20) = 261;
        }

        if (v16)
        {
          v20 = 257;
        }

        else
        {
          v20 = v20;
        }

        if (sub_2772B429C(a1, (v10 + v20)))
        {
          if (v16 >= 4)
          {
            v21 = 4;
          }

          else
          {
            v21 = v16;
          }

          ++v16;
          v22 = sub_2772B448C(a1, 262, v21, 14, 0) + 2;
        }

        else
        {
          ++v17;
          LOWORD(v22) = 1;
        }

        result = sub_2772B437C(a1);
        v23 = *v19--;
        *(a6 + 2 * v23) = ((v22 ^ ((result << 15) >> 15)) + result) * *a7;
      }

      while (v18-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B5400(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, char a4, int a5, uint64_t a6, unsigned __int8 *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4 + 8;
  v10 = a1 + 208;
  result = sub_2772B429C(a1, (a1 + 208 + (*a3 & (*(a3 + 5) >> (a4 + 8)) & 1 | a5 & ~*a3 | (2 * (*a2 & (*(a2 + 5) >> (a4 + 8)) & 1 | a5 & ~*a2))) + 97));
  *(a1 + 14) |= result << v9;
  if (result)
  {
    v12 = 0;
    v13 = (a1 + 590);
    v14 = -1;
    while (1)
    {
      ++v14;
      result = sub_2772B429C(a1, v13 - 61);
      if (result)
      {
        v15 = v12 + 1;
        v26[v12] = v14;
        result = sub_2772B429C(a1, v13);
        ++v12;
        if (result)
        {
          break;
        }
      }

      ++v13;
      if (v14 >= 2)
      {
        if (v14 == 2)
        {
          v15 = v12 + 1;
          v26[v12] = 3;
        }

        else
        {
          v15 = v12;
        }

        break;
      }
    }

    if (((v15 - 1) & 0x8000) == 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = (v15 - 1) + 1;
      v19 = &v26[(v15 - 1)];
      do
      {
        LODWORD(v20) = v17 + 258;
        if (v17 >= 3)
        {
          LODWORD(v20) = 261;
        }

        if (v16)
        {
          v20 = 257;
        }

        else
        {
          v20 = v20;
        }

        if (sub_2772B429C(a1, (v10 + v20)))
        {
          if (v16 >= 4)
          {
            v21 = 4;
          }

          else
          {
            v21 = v16;
          }

          ++v16;
          v22 = sub_2772B448C(a1, 262, v21, 14, 0) + 2;
        }

        else
        {
          ++v17;
          LOWORD(v22) = 1;
        }

        result = sub_2772B437C(a1);
        v23 = *v19--;
        *(a6 + 2 * v23) = ((v22 ^ ((result << 15) >> 15)) + result) * *a7;
      }

      while (v18-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B5608(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = (*a3 & 1) != 0 && (a3[4] & 1) != 0 || (*a3 & 1) == 0;
  v7 = *a2;
  if (v7 & 1) != 0 && (a2[4])
  {
    v8 = 2;
  }

  else
  {
    v8 = ~(2 * v7) & 2;
  }

  result = sub_2772B429C(a1, ((v8 + v6) + a1 + 208 + 85));
  *(a1 + 10) |= result;
  if (result)
  {
    v10 = 0;
    v11 = (a1 + 374);
    v12 = -1;
    while (1)
    {
      ++v12;
      result = sub_2772B429C(a1, v11 - 61);
      if (result)
      {
        v13 = v10 + 1;
        v23[v10] = v12;
        result = sub_2772B429C(a1, v11);
        ++v10;
        if (result)
        {
          break;
        }
      }

      ++v11;
      if (v12 >= 0xE)
      {
        if (v12 == 14)
        {
          v13 = v10 + 1;
          v23[v10] = 15;
        }

        else
        {
          v13 = v10;
        }

        break;
      }
    }

    if (((v13 - 1) & 0x8000) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = (v13 - 1) + 1;
      v17 = &v23[(v13 - 1)];
      do
      {
        LODWORD(v18) = v15 + 228;
        if (v15 >= 3)
        {
          LODWORD(v18) = 231;
        }

        if (v14)
        {
          v18 = 227;
        }

        else
        {
          v18 = v18;
        }

        if (sub_2772B429C(a1, (a1 + 208 + v18)))
        {
          if (v14 >= 4)
          {
            v19 = 9;
          }

          else
          {
            v19 = v14 + 5;
          }

          ++v14;
          v20 = sub_2772B448C(a1, 227, v19, 14, 0) + 2;
        }

        else
        {
          ++v15;
          LOWORD(v20) = 1;
        }

        result = sub_2772B437C(a1);
        v21 = *v17--;
        *(a4 + 2 * v21) = (v20 ^ ((result << 15) >> 15)) + result;
      }

      while (v16-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B5808(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = (*a3 & 1) != 0 && (a3[4] & 1) != 0 || (*a3 & 1) == 0;
  v7 = *a2;
  if (v7 & 1) != 0 && (a2[4])
  {
    v8 = 2;
  }

  else
  {
    v8 = ~(2 * v7) & 2;
  }

  result = sub_2772B429C(a1, ((v8 + v6) + a1 + 208 + 85));
  *(a1 + 10) |= result;
  if (result)
  {
    v10 = 0;
    v11 = (a1 + 546);
    v12 = -1;
    while (1)
    {
      ++v12;
      result = sub_2772B429C(a1, v11 - 61);
      if (result)
      {
        v13 = v10 + 1;
        v23[v10] = v12;
        result = sub_2772B429C(a1, v11);
        ++v10;
        if (result)
        {
          break;
        }
      }

      ++v11;
      if (v12 >= 0xE)
      {
        if (v12 == 14)
        {
          v13 = v10 + 1;
          v23[v10] = 15;
        }

        else
        {
          v13 = v10;
        }

        break;
      }
    }

    if (((v13 - 1) & 0x8000) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = (v13 - 1) + 1;
      v17 = &v23[(v13 - 1)];
      do
      {
        LODWORD(v18) = v15 + 228;
        if (v15 >= 3)
        {
          LODWORD(v18) = 231;
        }

        if (v14)
        {
          v18 = 227;
        }

        else
        {
          v18 = v18;
        }

        if (sub_2772B429C(a1, (a1 + 208 + v18)))
        {
          if (v14 >= 4)
          {
            v19 = 9;
          }

          else
          {
            v19 = v14 + 5;
          }

          ++v14;
          v20 = sub_2772B448C(a1, 227, v19, 14, 0) + 2;
        }

        else
        {
          ++v15;
          LOWORD(v20) = 1;
        }

        result = sub_2772B437C(a1);
        v21 = *v17--;
        *(a4 + 2 * v21) = (v20 ^ ((result << 15) >> 15)) + result;
      }

      while (v16-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B5A08(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v47 = *MEMORY[0x277D85DE8];
  v10 = a1 + 208;
  v11 = sub_2772B429C(a1, (a1 + 208 + (*a3 & a3[11] & 1 | a4 & ~*a3 | (2 * (*a2 & a2[11] & 1 | a4 & ~*a2))) + 97));
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 14) |= v12;
  if (v11)
  {
    v43 = v7;
    v44 = v8;
    v45 = v6;
    v13 = 0;
    v14 = (a1 + 418);
    v15 = -1;
    while (1)
    {
      ++v15;
      if (sub_2772B429C(a1, v14 - 61))
      {
        v16 = v13 + 1;
        v46[v13++] = v15;
        if (sub_2772B429C(a1, v14))
        {
          break;
        }
      }

      ++v14;
      if (v15 >= 2)
      {
        if (v15 == 2)
        {
          v16 = v13 + 1;
          v46[v13] = 3;
        }

        else
        {
          v16 = v13;
        }

        break;
      }
    }

    v17 = v16 - 1;
    if (((v16 - 1) & 0x8000) == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = v17 + 1;
      v21 = &v46[v17];
      do
      {
        LODWORD(v22) = v18 + 258;
        if (v18 >= 3)
        {
          LODWORD(v22) = 261;
        }

        if (v19)
        {
          v22 = 257;
        }

        else
        {
          v22 = v22;
        }

        if (sub_2772B429C(a1, (v10 + v22)))
        {
          if (v19 >= 4)
          {
            v23 = 4;
          }

          else
          {
            v23 = v19;
          }

          ++v19;
          v24 = sub_2772B448C(a1, 257, v23 + 5, 14, 0) + 2;
        }

        else
        {
          ++v18;
          LOWORD(v24) = 1;
        }

        v25 = sub_2772B437C(a1);
        v26 = *v21--;
        *(a5 + 2 * v26) = (v24 ^ ((v25 << 15) >> 15)) + v25;
        v27 = v20-- <= 1;
      }

      while (!v27);
    }

    v6 = v45;
    v7 = v43;
    v8 = v44;
  }

  result = sub_2772B429C(a1, (v10 + (*v7 & (*(v7 + 5) >> 9) & 1 | v6 & ~*v7 | (2 * (*v8 & (*(v8 + 5) >> 9) & 1 | v6 & ~*v8))) + 97));
  if (result)
  {
    v29 = 512;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 14) |= v29;
  if (result)
  {
    v30 = 0;
    v31 = (a1 + 418);
    v32 = -1;
    while (1)
    {
      ++v32;
      result = sub_2772B429C(a1, v31 - 61);
      if (result)
      {
        v33 = v30 + 1;
        v46[v30] = v32;
        result = sub_2772B429C(a1, v31);
        ++v30;
        if (result)
        {
          break;
        }
      }

      ++v31;
      if (v32 >= 2)
      {
        if (v32 == 2)
        {
          v33 = v30 + 1;
          v46[v30] = 3;
        }

        else
        {
          v33 = v30;
        }

        break;
      }
    }

    if (((v33 - 1) & 0x8000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = a5 + 8;
      v37 = (v33 - 1) + 1;
      v38 = &v46[(v33 - 1)];
      do
      {
        LODWORD(v39) = v35 + 258;
        if (v35 >= 3)
        {
          LODWORD(v39) = 261;
        }

        if (v34)
        {
          v39 = 257;
        }

        else
        {
          v39 = v39;
        }

        if (sub_2772B429C(a1, (v10 + v39)))
        {
          if (v34 >= 4)
          {
            v40 = 4;
          }

          else
          {
            v40 = v34;
          }

          ++v34;
          v41 = sub_2772B448C(a1, 257, v40 + 5, 14, 0) + 2;
        }

        else
        {
          ++v35;
          LOWORD(v41) = 1;
        }

        result = sub_2772B437C(a1);
        v42 = *v38--;
        *(v36 + 2 * v42) = (v41 ^ ((result << 15) >> 15)) + result;
        v27 = v37-- <= 1;
      }

      while (!v27);
    }
  }

  return result;
}

BOOL sub_2772B5DA0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v47 = *MEMORY[0x277D85DE8];
  v10 = a1 + 208;
  v11 = sub_2772B429C(a1, (a1 + 208 + (*a3 & a3[11] & 1 | a4 & ~*a3 | (2 * (*a2 & a2[11] & 1 | a4 & ~*a2))) + 97));
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 14) |= v12;
  if (v11)
  {
    v43 = v7;
    v44 = v8;
    v45 = v6;
    v13 = 0;
    v14 = (a1 + 590);
    v15 = -1;
    while (1)
    {
      ++v15;
      if (sub_2772B429C(a1, v14 - 61))
      {
        v16 = v13 + 1;
        v46[v13++] = v15;
        if (sub_2772B429C(a1, v14))
        {
          break;
        }
      }

      ++v14;
      if (v15 >= 2)
      {
        if (v15 == 2)
        {
          v16 = v13 + 1;
          v46[v13] = 3;
        }

        else
        {
          v16 = v13;
        }

        break;
      }
    }

    v17 = v16 - 1;
    if (((v16 - 1) & 0x8000) == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = v17 + 1;
      v21 = &v46[v17];
      do
      {
        LODWORD(v22) = v18 + 258;
        if (v18 >= 3)
        {
          LODWORD(v22) = 261;
        }

        if (v19)
        {
          v22 = 257;
        }

        else
        {
          v22 = v22;
        }

        if (sub_2772B429C(a1, (v10 + v22)))
        {
          if (v19 >= 4)
          {
            v23 = 4;
          }

          else
          {
            v23 = v19;
          }

          ++v19;
          v24 = sub_2772B448C(a1, 257, v23 + 5, 14, 0) + 2;
        }

        else
        {
          ++v18;
          LOWORD(v24) = 1;
        }

        v25 = sub_2772B437C(a1);
        v26 = *v21--;
        *(a5 + 2 * v26) = (v24 ^ ((v25 << 15) >> 15)) + v25;
        v27 = v20-- <= 1;
      }

      while (!v27);
    }

    v6 = v45;
    v7 = v43;
    v8 = v44;
  }

  result = sub_2772B429C(a1, (v10 + (*v7 & (*(v7 + 5) >> 9) & 1 | v6 & ~*v7 | (2 * (*v8 & (*(v8 + 5) >> 9) & 1 | v6 & ~*v8))) + 97));
  if (result)
  {
    v29 = 512;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 14) |= v29;
  if (result)
  {
    v30 = 0;
    v31 = (a1 + 590);
    v32 = -1;
    while (1)
    {
      ++v32;
      result = sub_2772B429C(a1, v31 - 61);
      if (result)
      {
        v33 = v30 + 1;
        v46[v30] = v32;
        result = sub_2772B429C(a1, v31);
        ++v30;
        if (result)
        {
          break;
        }
      }

      ++v31;
      if (v32 >= 2)
      {
        if (v32 == 2)
        {
          v33 = v30 + 1;
          v46[v30] = 3;
        }

        else
        {
          v33 = v30;
        }

        break;
      }
    }

    if (((v33 - 1) & 0x8000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = a5 + 8;
      v37 = (v33 - 1) + 1;
      v38 = &v46[(v33 - 1)];
      do
      {
        LODWORD(v39) = v35 + 258;
        if (v35 >= 3)
        {
          LODWORD(v39) = 261;
        }

        if (v34)
        {
          v39 = 257;
        }

        else
        {
          v39 = v39;
        }

        if (sub_2772B429C(a1, (v10 + v39)))
        {
          if (v34 >= 4)
          {
            v40 = 4;
          }

          else
          {
            v40 = v34;
          }

          ++v34;
          v41 = sub_2772B448C(a1, 257, v40 + 5, 14, 0) + 2;
        }

        else
        {
          ++v35;
          LOWORD(v41) = 1;
        }

        result = sub_2772B437C(a1);
        v42 = *v38--;
        *(v36 + 2 * v42) = (v41 ^ ((result << 15) >> 15)) + result;
        v27 = v37-- <= 1;
      }

      while (!v27);
    }
  }

  return result;
}

BOOL sub_2772B6138(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4 + 4 * a5;
  if (a4 >= 2)
  {
    v10 = (*(a1 + 14) >> (v9 - 2)) & 1;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *a2 & (*(a2 + 5) >> (v9 | 2)) & 1 | a6 & ~*a2;
    if (a4)
    {
LABEL_3:
      v11 = a4 + 4 * a5;
      v12 = (*(a1 + 14) >> (v9 - 1)) & 1;
      goto LABEL_6;
    }
  }

  v11 = v9 & 0xFE;
  v12 = *a3 & (*(a3 + 5) >> (v9 & 0xFE | 1)) & 1 | a6 & ~*a3;
LABEL_6:
  result = sub_2772B429C(a1, (a1 + 208 + (v12 | (2 * v10)) + 101));
  *(a1 + 14) |= result << v11;
  if (result)
  {
    v14 = 0;
    v15 = (a1 + 421);
    v16 = -1;
    while (1)
    {
      ++v16;
      result = sub_2772B429C(a1, v15 - 61);
      if (result)
      {
        v17 = v14 + 1;
        v27[v14] = v16;
        result = sub_2772B429C(a1, v15);
        ++v14;
        if (result)
        {
          break;
        }
      }

      ++v15;
      if (v16 >= 0xD)
      {
        if (v16 == 13)
        {
          v17 = v14 + 1;
          v27[v14] = 14;
        }

        else
        {
          v17 = v14;
        }

        break;
      }
    }

    if (((v17 - 1) & 0x8000) == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = (v17 - 1) + 1;
      v21 = &v27[(v17 - 1)];
      do
      {
        LODWORD(v22) = v19 + 267;
        if (v19 >= 3)
        {
          LODWORD(v22) = 270;
        }

        if (v18)
        {
          v22 = 266;
        }

        else
        {
          v22 = v22;
        }

        if (sub_2772B429C(a1, (a1 + 208 + v22)))
        {
          if (v18 >= 4)
          {
            v23 = 9;
          }

          else
          {
            v23 = v18 + 5;
          }

          ++v18;
          v24 = sub_2772B448C(a1, 266, v23, 14, 0) + 2;
        }

        else
        {
          ++v19;
          LOWORD(v24) = 1;
        }

        result = sub_2772B437C(a1);
        v25 = *v21--;
        *(a7 + 2 * v25) = (v24 ^ ((result << 15) >> 15)) + result;
      }

      while (v20-- > 1);
    }
  }

  return result;
}

BOOL sub_2772B6384(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4, char a5, int a6, uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a4 + 4 * a5;
  if (a4 >= 2)
  {
    v10 = (*(a1 + 14) >> (v9 - 2)) & 1;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *a2 & (*(a2 + 5) >> (v9 | 2)) & 1 | a6 & ~*a2;
    if (a4)
    {
LABEL_3:
      v11 = a4 + 4 * a5;
      v12 = (*(a1 + 14) >> (v9 - 1)) & 1;
      goto LABEL_6;
    }
  }

  v11 = v9 & 0xFE;
  v12 = *a3 & (*(a3 + 5) >> (v9 & 0xFE | 1)) & 1 | a6 & ~*a3;
LABEL_6:
  result = sub_2772B429C(a1, (a1 + 208 + (v12 | (2 * v10)) + 101));
  *(a1 + 14) |= result << v11;
  if (result)
  {
    v14 = 0;
    v15 = (a1 + 593);
    v16 = -1;
    while (1)
    {
      ++v16;
      result = sub_2772B429C(a1, v15 - 61);
      if (result)
      {
        v17 = v14 + 1;
        v27[v14] = v16;
        result = sub_2772B429C(a1, v15);
        ++v14;
        if (result)
        {
          break;
        }
      }

      ++v15;
      if (v16 >= 0xD)
      {
        if (v16 == 13)
        {
          v17 = v14 + 1;
          v27[v14] = 14;
        }

        else
        {
          v17 = v14;
        }

        break;
      }
    }

    if (((v17 - 1) & 0x8000) == 0)
    {
      v18 = 0;
      v19 = 0;
      v20 = (v17 - 1) + 1;
      v21 = &v27[(v17 - 1)];
      do
      {
        LODWORD(v22) = v19 + 267;
        if (v19 >= 3)
        {
          LODWORD(v22) = 270;
        }

        if (v18)
        {
          v22 = 266;
        }

        else
        {
          v22 = v22;
        }

        if (sub_2772B429C(a1, (a1 + 208 + v22)))
        {
          if (v18 >= 4)
          {
            v23 = 9;
          }

          else
          {
            v23 = v18 + 5;
          }

          ++v18;
          v24 = sub_2772B448C(a1, 266, v23, 14, 0) + 2;
        }

        else
        {
          ++v19;
          LOWORD(v24) = 1;
        }

        result = sub_2772B437C(a1);
        v25 = *v21--;
        *(a7 + 2 * v25) = (v24 ^ ((result << 15) >> 15)) + result;
      }

      while (v20-- > 1);
    }
  }

  return result;
}

void sub_2772B65D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5, int a6, unsigned int a7, uint64_t a8, char a9, uint64_t a10)
{
  v149 = *MEMORY[0x277D85DE8];
  v130 = a7 & 0xF;
  v141 = a5 | a6;
  v12 = *(a1 + 3216);
  v127 = v12;
  v126 = a7 >> 4;
  if (*(a10 + 1422192))
  {
    if (a5)
    {
      *v12 = 0u;
      v12[1] = 0u;
      sub_2772B4DF8(a1, a2, a3, a4);
      v13 = *(a1 + 3216) + 34;
    }

    else
    {
      v13 = (v12 + 2);
    }

    *(a1 + 3216) = v13;
    bzero(v12 + 2, 0x310uLL);
    if (a9)
    {
      v18 = 0;
      v19 = a1 + 208;
      do
      {
        if ((v130 >> v18))
        {
          v20 = 0;
          v21 = -1;
          v22 = &byte_2773B396C;
          v23 = &byte_2773B39AC;
          while (1)
          {
            ++v21;
            v24 = *v22++;
            if (sub_2772B429C(a1, (v24 + v19 + 402)))
            {
              v25 = v20 + 1;
              *&v148[2 * v20++] = v21;
              if (sub_2772B429C(a1, (*v23 + v19 + 417)))
              {
                break;
              }
            }

            ++v23;
            if (v21 >= 0x3E)
            {
              if (v21 == 62)
              {
                v25 = v20 + 1;
                *&v148[2 * v20] = 63;
              }

              else
              {
                v25 = v20;
              }

              break;
            }
          }

          v26 = v25 - 1;
          if (((v25 - 1) & 0x8000) == 0)
          {
            v27 = 0;
            v28 = 0;
            v29 = v26 + 1;
            v30 = &v148[2 * v26];
            do
            {
              LODWORD(v31) = v28 + 427;
              if (v28 >= 3)
              {
                LODWORD(v31) = 430;
              }

              if (v27)
              {
                v31 = 426;
              }

              else
              {
                v31 = v31;
              }

              if (sub_2772B429C(a1, (v19 + v31)))
              {
                if (v27 >= 4)
                {
                  v32 = 9;
                }

                else
                {
                  v32 = v27 + 5;
                }

                ++v27;
                v33 = sub_2772B448C(a1, 426, v32, 14, 0) + 2;
              }

              else
              {
                ++v28;
                LOWORD(v33) = 1;
              }

              v34 = sub_2772B437C(a1);
              v35 = *v30--;
              *(*(a1 + 3216) + 2 * v35) = (v33 ^ ((v34 << 15) >> 15)) + v34;
              v36 = v29-- <= 1;
            }

            while (!v36);
          }

          *(a8 + 4 * v18) = 1;
          *(a1 + 12) |= 15 << (4 * v18);
        }

        *(a1 + 3216) += 128;
        ++v18;
      }

      while (v18 != 4);
LABEL_83:
      v69 = v126;
      v70 = v127;
      if ((v126 & 3) != 0)
      {
        v71 = a10 + 1422194;
        if (v141)
        {
          v72 = 0;
        }

        else
        {
          v72 = 3;
        }

        sub_2772B51F8(a1, a3, a4, 0, v141, (v127 + 50), (v71 + 16 * (v72 + 1)));
        v69 = v126;
        sub_2772B51F8(a1, a3, a4, 1, v141, v127 + 808, (v71 + 16 * (v72 + 2)));
      }

      *(a1 + 3216) = v127 + 546;
      if ((v69 & 2) == 0)
      {
LABEL_167:
        *(a1 + 3216) = v70 + 802;
        return;
      }

      v73 = 0;
      v74 = 3;
      if (v141)
      {
        v74 = 0;
      }

      v144 = v74;
      v75 = a1 + 208;
      while (1)
      {
        if (v73 < 4)
        {
          v76 = 1;
        }

        else
        {
          v76 = 2;
        }

        if ((v73 & 2) != 0)
        {
          v77 = (*(a1 + 14) >> (v73 - 2)) & 1;
          if ((v73 & 1) == 0)
          {
LABEL_99:
            v78 = *a4 & (*(a4 + 5) >> (v73 | 1)) & 1 | v141 & (*a4 ^ 1);
            goto LABEL_100;
          }
        }

        else
        {
          v77 = *a3 & (*(a3 + 5) >> (v73 | 2)) & 1 | v141 & (*a3 ^ 1);
          if ((v73 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v78 = (*(a1 + 14) >> (v73 - 1)) & 1;
LABEL_100:
        v79 = sub_2772B429C(a1, (v75 + (v78 | (2 * v77)) + 101));
        *(a1 + 14) |= v79 << v73;
        if (v79)
        {
          v80 = 0;
          v81 = a10 + 1422194 + 16 * (v76 + v144) + 1;
          v82 = -1;
          v83 = (a1 + 360);
          while (1)
          {
            ++v82;
            if (sub_2772B429C(a1, v83))
            {
              v84 = v80 + 1;
              *&v148[2 * v80++] = v82;
              if (sub_2772B429C(a1, v83 + 61))
              {
                break;
              }
            }

            ++v83;
            if (v82 >= 0xD)
            {
              if (v82 == 13)
              {
                v84 = v80 + 1;
                *&v148[2 * v80] = 14;
              }

              else
              {
                v84 = v80;
              }

              break;
            }
          }

          v85 = v84 - 1;
          if (((v84 - 1) & 0x8000) == 0)
          {
            v86 = 0;
            v87 = 0;
            v88 = v85 + 1;
            v89 = &v148[2 * v85];
            do
            {
              LODWORD(v90) = v87 + 267;
              if (v87 >= 3)
              {
                LODWORD(v90) = 270;
              }

              if (v86)
              {
                v90 = 266;
              }

              else
              {
                v90 = v90;
              }

              if (sub_2772B429C(a1, (v75 + v90)))
              {
                if (v86 >= 4)
                {
                  v91 = 9;
                }

                else
                {
                  v91 = v86 + 5;
                }

                ++v86;
                v92 = sub_2772B448C(a1, 266, v91, 14, 0) + 2;
              }

              else
              {
                ++v87;
                LOWORD(v92) = 1;
              }

              v93 = sub_2772B437C(a1);
              v94 = *v89--;
              *(*(a1 + 3216) + 2 * v94) = ((v92 ^ ((v93 << 15) >> 15)) + v93) * *(v81 + v94);
              v36 = v88-- <= 1;
            }

            while (!v36);
          }
        }

        *(a1 + 3216) += 32;
        if (++v73 == 8)
        {
          return;
        }
      }
    }

    v37 = 48;
    if (v141)
    {
      v37 = 0;
    }

    v146 = a10 + v37 + a5 + 1422194;
    if (a5)
    {
      v38 = 15;
    }

    else
    {
      v38 = 16;
    }

    if (a5)
    {
      v39 = 89;
    }

    else
    {
      v39 = 93;
    }

    v40 = 0;
    v41 = a1 + 208;
    v42 = 1;
    if (!a5)
    {
      v42 = 2;
    }

    v131 = v42;
    v143 = v38;
    v43 = v38 - 1;
    v133 = v39;
    while (1)
    {
      v128 = v40;
      if ((v130 >> v40))
      {
        break;
      }

      *(a1 + 3216) += 128;
LABEL_82:
      v40 = v128 + 1;
      if (v128 == 3)
      {
        goto LABEL_83;
      }
    }

    v44 = 0;
    v45 = 4 * v40;
    v135 = 4 * v40;
    while (1)
    {
      v46 = v44 + v45;
      v47 = ((v44 + v45) >> 1) & 2 | v44 & 1;
      v48 = ((v44 + v45) >> 1) & 4 | v44 & 2;
      v49 = v48 >> 1;
      if (v48)
      {
        v50 = (*(a1 + 12) >> (v46 - byte_2773B39F8[v49])) & 1;
        if (!v47)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v50 = *a3 & (*(a3 + 4) >> byte_2773B39FC[v47]) & 1 | v141 & (*a3 ^ 1);
        if (!v47)
        {
LABEL_52:
          v51 = *a4 & (*(a4 + 4) >> byte_2773B3A10[v49]) & 1 | v141 & (*a4 ^ 1);
          goto LABEL_53;
        }
      }

      v51 = (*(a1 + 12) >> byte_2773B3A00[v46]) & 1;
LABEL_53:
      v52 = sub_2772B429C(a1, (v41 + (v39 + 2 * v50 + v51)));
      *(a1 + 12) |= v52 << v46;
      if (v52)
      {
        v139 = v44 + v45;
        v53 = 0;
        v54 = 0;
        v55 = word_2773B39EC[v131];
        v56 = word_2773B3760[v131];
        do
        {
          if (sub_2772B429C(a1, (v41 + (v53 + v55))))
          {
            *&v148[2 * v54] = v53;
            if (sub_2772B429C(a1, (v41 + (v55 + 61 + v53))))
            {
              v53 = v143;
            }

            ++v54;
          }

          ++v53;
        }

        while (v53 < v43);
        if (v53 == v43)
        {
          v57 = v54++;
          *&v148[2 * v57] = v43;
        }

        v58 = v54 - 1;
        if (((v54 - 1) & 0x8000) == 0)
        {
          v59 = 0;
          v60 = 0;
          v61 = v58 + 1;
          v62 = &v148[2 * v58];
          do
          {
            if (v60 < 3)
            {
              v63 = v60 + 1;
            }

            else
            {
              v63 = 4;
            }

            if (v59)
            {
              v63 = 0;
            }

            if (sub_2772B429C(a1, (v41 + (v63 + v56))))
            {
              if (v59 >= 4)
              {
                v64 = 9;
              }

              else
              {
                v64 = v59 + 5;
              }

              ++v59;
              v65 = sub_2772B448C(a1, v56, v64, 14, 0) + 2;
            }

            else
            {
              ++v60;
              LOWORD(v65) = 1;
            }

            v66 = sub_2772B437C(a1);
            v67 = *v62--;
            *(*(a1 + 3216) + 2 * v67) = ((v65 ^ ((v66 << 15) >> 15)) + v66) * *(v146 + v67);
            v36 = v61-- <= 1;
          }

          while (!v36);
        }

        v68 = 1;
        v39 = v133;
        v45 = v135;
        v46 = v139;
      }

      else
      {
        v68 = 0;
      }

      *(a8 + v46) = v68;
      *(a1 + 3216) += 32;
      if (++v44 == 4)
      {
        goto LABEL_82;
      }
    }
  }

  bzero(*(a2 + 32), 0x330uLL);
  v14 = *(a1 + 3216);
  if (a5)
  {
    sub_2772B5608(a1, a3, a4, v14);
    v15 = *(a1 + 3216) + 34;
    v16 = 15;
    v17 = 1;
  }

  else
  {
    v15 = v14 + 32;
    v16 = 16;
    v17 = 2;
  }

  *(a1 + 3216) = v15;
  v95 = 4 * v17 + 85;
  v96 = a1 + 208;
  v147 = v16;
  v97 = v16 - 1;
  v98 = 0;
  v134 = v17;
  v132 = v95;
  do
  {
    v129 = v98;
    if ((v130 >> v98))
    {
      v99 = 0;
      v100 = 4 * v98;
      v136 = 4 * v98;
      while (1)
      {
        v101 = v99 + v100;
        v102 = ((v99 + v100) >> 1) & 2 | v99 & 1;
        v103 = ((v99 + v100) >> 1) & 4 | v99 & 2;
        v104 = v103 >> 1;
        if (v103)
        {
          v105 = (*(a1 + 12) >> (v101 - byte_2773B39F8[v104])) & 1;
          if (!v102)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v105 = *a3 & (*(a3 + 4) >> byte_2773B39FC[v102]) & 1 | v141 & (*a3 ^ 1);
          if (!v102)
          {
LABEL_133:
            v106 = *a4 & (*(a4 + 4) >> byte_2773B3A10[v104]) & 1 | v141 & (*a4 ^ 1);
            goto LABEL_134;
          }
        }

        v106 = (*(a1 + 12) >> byte_2773B3A00[v101]) & 1;
LABEL_134:
        v107 = sub_2772B429C(a1, (v96 + (v95 + 2 * v105 + v106)));
        *(a1 + 12) |= v107 << v101;
        if (v107)
        {
          v140 = v99 + v100;
          v145 = v99;
          v108 = 0;
          v109 = 0;
          v110 = word_2773B39EC[v17];
          v111 = word_2773B3760[v17];
          do
          {
            if (sub_2772B429C(a1, (v96 + (v108 + v110))))
            {
              v148[v109] = v108;
              if (sub_2772B429C(a1, (v96 + (v110 + 61 + v108))))
              {
                v108 = v147;
              }

              ++v109;
            }

            ++v108;
          }

          while (v108 < v97);
          if (v108 == v97)
          {
            v112 = v109++;
            v148[v112] = v97;
          }

          v113 = v109 - 1;
          if (((v109 - 1) & 0x8000) == 0)
          {
            v114 = 0;
            v115 = 0;
            v116 = v113 + 1;
            v117 = &v148[v113];
            do
            {
              if (v115 < 3)
              {
                v118 = v115 + 1;
              }

              else
              {
                v118 = 4;
              }

              if (v114)
              {
                v118 = 0;
              }

              if (sub_2772B429C(a1, (v96 + (v118 + v111))))
              {
                if (v114 >= 4)
                {
                  v119 = 9;
                }

                else
                {
                  v119 = v114 + 5;
                }

                ++v114;
                v120 = sub_2772B448C(a1, v111, v119, 14, 0) + 2;
              }

              else
              {
                ++v115;
                LOWORD(v120) = 1;
              }

              v121 = sub_2772B437C(a1);
              v122 = *v117--;
              *(v15 + 2 * v122) = (v120 ^ ((v121 << 15) >> 15)) + v121;
              v36 = v116-- <= 1;
            }

            while (!v36);
          }

          v123 = 1;
          v17 = v134;
          v95 = v132;
          v99 = v145;
          v100 = v136;
          v101 = v140;
        }

        else
        {
          v123 = 0;
        }

        *(a8 + v101) = v123;
        v15 = *(a1 + 3216) + 32;
        *(a1 + 3216) = v15;
        if (++v99 == 4)
        {
          goto LABEL_163;
        }
      }
    }

    v15 += 128;
    *(a1 + 3216) = v15;
LABEL_163:
    v98 = v129 + 1;
  }

  while (v129 != 3);
  v70 = v127;
  if ((v126 & 3) != 0)
  {
    sub_2772B5A08(a1, a3, a4, v141, (v127 + 50));
  }

  v124 = v127 + 546;
  *(a1 + 3216) = v127 + 546;
  if ((v126 & 2) == 0)
  {
    goto LABEL_167;
  }

  for (i = 0; i != 8; ++i)
  {
    sub_2772B6138(a1, a3, a4, i & 3, i >> 2, v141, v124);
    v124 = *(a1 + 3216) + 32;
    *(a1 + 3216) = v124;
  }
}

void sub_2772B71C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5, int a6, unsigned int a7, uint64_t a8, char a9, uint64_t a10)
{
  v149 = *MEMORY[0x277D85DE8];
  v130 = a7 & 0xF;
  v141 = a5 | a6;
  v12 = *(a1 + 3216);
  v127 = v12;
  v126 = a7 >> 4;
  if (*(a10 + 1422192))
  {
    if (a5)
    {
      *v12 = 0u;
      v12[1] = 0u;
      sub_2772B4FF8(a1, a2, a3, a4);
      v13 = *(a1 + 3216) + 34;
    }

    else
    {
      v13 = (v12 + 2);
    }

    *(a1 + 3216) = v13;
    bzero(v12 + 2, 0x310uLL);
    if (a9)
    {
      v18 = 0;
      v19 = a1 + 208;
      do
      {
        if ((v130 >> v18))
        {
          v20 = 0;
          v21 = -1;
          v22 = &byte_2773B3A14;
          v23 = &byte_2773B39AC;
          while (1)
          {
            ++v21;
            v24 = *v22++;
            if (sub_2772B429C(a1, (v24 + v19 + 436)))
            {
              v25 = v20 + 1;
              *&v148[2 * v20++] = v21;
              if (sub_2772B429C(a1, (*v23 + v19 + 451)))
              {
                break;
              }
            }

            ++v23;
            if (v21 >= 0x3E)
            {
              if (v21 == 62)
              {
                v25 = v20 + 1;
                *&v148[2 * v20] = 63;
              }

              else
              {
                v25 = v20;
              }

              break;
            }
          }

          v26 = v25 - 1;
          if (((v25 - 1) & 0x8000) == 0)
          {
            v27 = 0;
            v28 = 0;
            v29 = v26 + 1;
            v30 = &v148[2 * v26];
            do
            {
              LODWORD(v31) = v28 + 427;
              if (v28 >= 3)
              {
                LODWORD(v31) = 430;
              }

              if (v27)
              {
                v31 = 426;
              }

              else
              {
                v31 = v31;
              }

              if (sub_2772B429C(a1, (v19 + v31)))
              {
                if (v27 >= 4)
                {
                  v32 = 9;
                }

                else
                {
                  v32 = v27 + 5;
                }

                ++v27;
                v33 = sub_2772B448C(a1, 426, v32, 14, 0) + 2;
              }

              else
              {
                ++v28;
                LOWORD(v33) = 1;
              }

              v34 = sub_2772B437C(a1);
              v35 = *v30--;
              *(*(a1 + 3216) + 2 * v35) = (v33 ^ ((v34 << 15) >> 15)) + v34;
              v36 = v29-- <= 1;
            }

            while (!v36);
          }

          *(a8 + 4 * v18) = 1;
          *(a1 + 12) |= 15 << (4 * v18);
        }

        *(a1 + 3216) += 128;
        ++v18;
      }

      while (v18 != 4);
LABEL_83:
      v69 = v126;
      v70 = v127;
      if ((v126 & 3) != 0)
      {
        v71 = a10 + 1422418;
        if (v141)
        {
          v72 = 0;
        }

        else
        {
          v72 = 3;
        }

        sub_2772B5400(a1, a3, a4, 0, v141, (v127 + 50), (v71 + 16 * (v72 + 1)));
        v69 = v126;
        sub_2772B5400(a1, a3, a4, 1, v141, v127 + 808, (v71 + 16 * (v72 + 2)));
      }

      *(a1 + 3216) = v127 + 546;
      if ((v69 & 2) == 0)
      {
LABEL_167:
        *(a1 + 3216) = v70 + 802;
        return;
      }

      v73 = 0;
      v74 = 3;
      if (v141)
      {
        v74 = 0;
      }

      v144 = v74;
      v75 = a1 + 208;
      while (1)
      {
        if (v73 < 4)
        {
          v76 = 1;
        }

        else
        {
          v76 = 2;
        }

        if ((v73 & 2) != 0)
        {
          v77 = (*(a1 + 14) >> (v73 - 2)) & 1;
          if ((v73 & 1) == 0)
          {
LABEL_99:
            v78 = *a4 & (*(a4 + 5) >> (v73 | 1)) & 1 | v141 & (*a4 ^ 1);
            goto LABEL_100;
          }
        }

        else
        {
          v77 = *a3 & (*(a3 + 5) >> (v73 | 2)) & 1 | v141 & (*a3 ^ 1);
          if ((v73 & 1) == 0)
          {
            goto LABEL_99;
          }
        }

        v78 = (*(a1 + 14) >> (v73 - 1)) & 1;
LABEL_100:
        v79 = sub_2772B429C(a1, (v75 + (v78 | (2 * v77)) + 101));
        *(a1 + 14) |= v79 << v73;
        if (v79)
        {
          v80 = 0;
          v81 = a10 + 1422418 + 16 * (v76 + v144) + 1;
          v82 = -1;
          v83 = (a1 + 532);
          while (1)
          {
            ++v82;
            if (sub_2772B429C(a1, v83))
            {
              v84 = v80 + 1;
              *&v148[2 * v80++] = v82;
              if (sub_2772B429C(a1, v83 + 61))
              {
                break;
              }
            }

            ++v83;
            if (v82 >= 0xD)
            {
              if (v82 == 13)
              {
                v84 = v80 + 1;
                *&v148[2 * v80] = 14;
              }

              else
              {
                v84 = v80;
              }

              break;
            }
          }

          v85 = v84 - 1;
          if (((v84 - 1) & 0x8000) == 0)
          {
            v86 = 0;
            v87 = 0;
            v88 = v85 + 1;
            v89 = &v148[2 * v85];
            do
            {
              LODWORD(v90) = v87 + 267;
              if (v87 >= 3)
              {
                LODWORD(v90) = 270;
              }

              if (v86)
              {
                v90 = 266;
              }

              else
              {
                v90 = v90;
              }

              if (sub_2772B429C(a1, (v75 + v90)))
              {
                if (v86 >= 4)
                {
                  v91 = 9;
                }

                else
                {
                  v91 = v86 + 5;
                }

                ++v86;
                v92 = sub_2772B448C(a1, 266, v91, 14, 0) + 2;
              }

              else
              {
                ++v87;
                LOWORD(v92) = 1;
              }

              v93 = sub_2772B437C(a1);
              v94 = *v89--;
              *(*(a1 + 3216) + 2 * v94) = ((v92 ^ ((v93 << 15) >> 15)) + v93) * *(v81 + v94);
              v36 = v88-- <= 1;
            }

            while (!v36);
          }
        }

        *(a1 + 3216) += 32;
        if (++v73 == 8)
        {
          return;
        }
      }
    }

    v37 = 48;
    if (v141)
    {
      v37 = 0;
    }

    v146 = a10 + v37 + a5 + 1422418;
    if (a5)
    {
      v38 = 15;
    }

    else
    {
      v38 = 16;
    }

    if (a5)
    {
      v39 = 89;
    }

    else
    {
      v39 = 93;
    }

    v40 = 0;
    v41 = a1 + 208;
    v42 = 1;
    if (!a5)
    {
      v42 = 2;
    }

    v131 = v42;
    v143 = v38;
    v43 = v38 - 1;
    v133 = v39;
    while (1)
    {
      v128 = v40;
      if ((v130 >> v40))
      {
        break;
      }

      *(a1 + 3216) += 128;
LABEL_82:
      v40 = v128 + 1;
      if (v128 == 3)
      {
        goto LABEL_83;
      }
    }

    v44 = 0;
    v45 = 4 * v40;
    v135 = 4 * v40;
    while (1)
    {
      v46 = v44 + v45;
      v47 = ((v44 + v45) >> 1) & 2 | v44 & 1;
      v48 = ((v44 + v45) >> 1) & 4 | v44 & 2;
      v49 = v48 >> 1;
      if (v48)
      {
        v50 = (*(a1 + 12) >> (v46 - byte_2773B39F8[v49])) & 1;
        if (!v47)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v50 = *a3 & (*(a3 + 4) >> byte_2773B39FC[v47]) & 1 | v141 & (*a3 ^ 1);
        if (!v47)
        {
LABEL_52:
          v51 = *a4 & (*(a4 + 4) >> byte_2773B3A10[v49]) & 1 | v141 & (*a4 ^ 1);
          goto LABEL_53;
        }
      }

      v51 = (*(a1 + 12) >> byte_2773B3A00[v46]) & 1;
LABEL_53:
      v52 = sub_2772B429C(a1, (v41 + (v39 + 2 * v50 + v51)));
      *(a1 + 12) |= v52 << v46;
      if (v52)
      {
        v139 = v44 + v45;
        v53 = 0;
        v54 = 0;
        v55 = word_2773B3A54[v131];
        v56 = word_2773B3760[v131];
        do
        {
          if (sub_2772B429C(a1, (v41 + (v53 + v55))))
          {
            *&v148[2 * v54] = v53;
            if (sub_2772B429C(a1, (v41 + (v55 + 61 + v53))))
            {
              v53 = v143;
            }

            ++v54;
          }

          ++v53;
        }

        while (v53 < v43);
        if (v53 == v43)
        {
          v57 = v54++;
          *&v148[2 * v57] = v43;
        }

        v58 = v54 - 1;
        if (((v54 - 1) & 0x8000) == 0)
        {
          v59 = 0;
          v60 = 0;
          v61 = v58 + 1;
          v62 = &v148[2 * v58];
          do
          {
            if (v60 < 3)
            {
              v63 = v60 + 1;
            }

            else
            {
              v63 = 4;
            }

            if (v59)
            {
              v63 = 0;
            }

            if (sub_2772B429C(a1, (v41 + (v63 + v56))))
            {
              if (v59 >= 4)
              {
                v64 = 9;
              }

              else
              {
                v64 = v59 + 5;
              }

              ++v59;
              v65 = sub_2772B448C(a1, v56, v64, 14, 0) + 2;
            }

            else
            {
              ++v60;
              LOWORD(v65) = 1;
            }

            v66 = sub_2772B437C(a1);
            v67 = *v62--;
            *(*(a1 + 3216) + 2 * v67) = ((v65 ^ ((v66 << 15) >> 15)) + v66) * *(v146 + v67);
            v36 = v61-- <= 1;
          }

          while (!v36);
        }

        v68 = 1;
        v39 = v133;
        v45 = v135;
        v46 = v139;
      }

      else
      {
        v68 = 0;
      }

      *(a8 + v46) = v68;
      *(a1 + 3216) += 32;
      if (++v44 == 4)
      {
        goto LABEL_82;
      }
    }
  }

  bzero(*(a2 + 32), 0x330uLL);
  v14 = *(a1 + 3216);
  if (a5)
  {
    sub_2772B5808(a1, a3, a4, v14);
    v15 = *(a1 + 3216) + 34;
    v16 = 15;
    v17 = 1;
  }

  else
  {
    v15 = v14 + 32;
    v16 = 16;
    v17 = 2;
  }

  *(a1 + 3216) = v15;
  v95 = 4 * v17 + 85;
  v96 = a1 + 208;
  v147 = v16;
  v97 = v16 - 1;
  v98 = 0;
  v134 = v17;
  v132 = v95;
  do
  {
    v129 = v98;
    if ((v130 >> v98))
    {
      v99 = 0;
      v100 = 4 * v98;
      v136 = 4 * v98;
      while (1)
      {
        v101 = v99 + v100;
        v102 = ((v99 + v100) >> 1) & 2 | v99 & 1;
        v103 = ((v99 + v100) >> 1) & 4 | v99 & 2;
        v104 = v103 >> 1;
        if (v103)
        {
          v105 = (*(a1 + 12) >> (v101 - byte_2773B39F8[v104])) & 1;
          if (!v102)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v105 = *a3 & (*(a3 + 4) >> byte_2773B39FC[v102]) & 1 | v141 & (*a3 ^ 1);
          if (!v102)
          {
LABEL_133:
            v106 = *a4 & (*(a4 + 4) >> byte_2773B3A10[v104]) & 1 | v141 & (*a4 ^ 1);
            goto LABEL_134;
          }
        }

        v106 = (*(a1 + 12) >> byte_2773B3A00[v101]) & 1;
LABEL_134:
        v107 = sub_2772B429C(a1, (v96 + (v95 + 2 * v105 + v106)));
        *(a1 + 12) |= v107 << v101;
        if (v107)
        {
          v140 = v99 + v100;
          v145 = v99;
          v108 = 0;
          v109 = 0;
          v110 = word_2773B3A54[v17];
          v111 = word_2773B3760[v17];
          do
          {
            if (sub_2772B429C(a1, (v96 + (v108 + v110))))
            {
              v148[v109] = v108;
              if (sub_2772B429C(a1, (v96 + (v110 + 61 + v108))))
              {
                v108 = v147;
              }

              ++v109;
            }

            ++v108;
          }

          while (v108 < v97);
          if (v108 == v97)
          {
            v112 = v109++;
            v148[v112] = v97;
          }

          v113 = v109 - 1;
          if (((v109 - 1) & 0x8000) == 0)
          {
            v114 = 0;
            v115 = 0;
            v116 = v113 + 1;
            v117 = &v148[v113];
            do
            {
              if (v115 < 3)
              {
                v118 = v115 + 1;
              }

              else
              {
                v118 = 4;
              }

              if (v114)
              {
                v118 = 0;
              }

              if (sub_2772B429C(a1, (v96 + (v118 + v111))))
              {
                if (v114 >= 4)
                {
                  v119 = 9;
                }

                else
                {
                  v119 = v114 + 5;
                }

                ++v114;
                v120 = sub_2772B448C(a1, v111, v119, 14, 0) + 2;
              }

              else
              {
                ++v115;
                LOWORD(v120) = 1;
              }

              v121 = sub_2772B437C(a1);
              v122 = *v117--;
              *(v15 + 2 * v122) = (v120 ^ ((v121 << 15) >> 15)) + v121;
              v36 = v116-- <= 1;
            }

            while (!v36);
          }

          v123 = 1;
          v17 = v134;
          v95 = v132;
          v99 = v145;
          v100 = v136;
          v101 = v140;
        }

        else
        {
          v123 = 0;
        }

        *(a8 + v101) = v123;
        v15 = *(a1 + 3216) + 32;
        *(a1 + 3216) = v15;
        if (++v99 == 4)
        {
          goto LABEL_163;
        }
      }
    }

    v15 += 128;
    *(a1 + 3216) = v15;
LABEL_163:
    v98 = v129 + 1;
  }

  while (v129 != 3);
  v70 = v127;
  if ((v126 & 3) != 0)
  {
    sub_2772B5DA0(a1, a3, a4, v141, (v127 + 50));
  }

  v124 = v127 + 546;
  *(a1 + 3216) = v127 + 546;
  if ((v126 & 2) == 0)
  {
    goto LABEL_167;
  }

  for (i = 0; i != 8; ++i)
  {
    sub_2772B6384(a1, a3, a4, i & 3, i >> 2, v141, v124);
    v124 = *(a1 + 3216) + 32;
    *(a1 + 3216) = v124;
  }
}

uint64_t sub_2772B7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v13 = *(a2 + 4);
  v14 = *(a1 + v13 + 668);
  v15 = *(a1 + v13 + 678);
  v128 = *(a1 + 2 * v13 + 688);
  v16 = *(a6 + 185);
  if (v16)
  {
    if (!a7 && (*(a6 + 16) & 1) != 0)
    {
      v17 = 0;
      goto LABEL_11;
    }

    if (*(a6 + 188))
    {
      v17 = sub_2772B4A10(a1, (*(a1 + 104) + 48 * a5), (a1 + 112));
    }

    else
    {
      v17 = 0;
    }

    v16 = v17 + 1;
  }

  else
  {
    v17 = 0;
  }

  *(a6 + 31) = v16;
LABEL_11:
  *(a1 + 3216) = *(a2 + 32);
  v18 = *(a2 + 4);
  if (v18 > 4)
  {
    if (v18 != 5)
    {
      v126 = v15;
      if (v18 != 7)
      {
LABEL_14:
        v19 = *(*(a1 + 104) + 48 * a5);
        v20 = ((v19 & 0x12) == 0) & v19;
        v21 = a1 + 208;
        v22 = 27;
        if ((((*(a1 + 112) & 0x12) == 0) & *(a1 + 112)) != 0)
        {
          v22 = 28;
        }

        if (sub_2772B429C(a1, (v21 + v22 + v20)))
        {
          if (sub_2772B429C(a1, (a1 + 238)))
          {
            v120 = v14;
            if (sub_2772B429C(a1, (a1 + 239)))
            {
              v25 = 2;
            }

            else
            {
              v25 = 0;
            }

            v26 = v25 | sub_2772B429C(a1, (a1 + 240));
            if (sub_2772B429C(a1, (a1 + 240)))
            {
              v27 = 2;
            }

            else
            {
              v27 = 0;
            }

            v28 = v27 | (4 * v26) | sub_2772B429C(a1, (a1 + 240));
            if (v28 != 13)
            {
              v15 = v126;
              if ((v28 - 8) > 4)
              {
                v29 = byte_2773B3A90[v28];
              }

              else
              {
                v29 = (sub_2772B429C(a1, (a1 + 240)) & 0xF1 | (2 * (v28 & 7))) + 12;
              }

              v14 = v120;
              goto LABEL_66;
            }

            v14 = v120;
            if (sub_2772B429C(a1, (a1 + 240)))
            {
              if (sub_2772B43FC(a1))
              {
                v29 = 48;
              }

              else
              {
                v112 = sub_2772B429C(a1, (a1 + 241));
                v113 = sub_2772B429C(a1, (a1 + 242));
                if (v112)
                {
                  v114 = 2;
                }

                else
                {
                  v114 = 0;
                }

                v115 = v114 | v113;
                v116 = 34;
                if (!v113)
                {
                  v116 = 35;
                }

                if (sub_2772B429C(a1, (v21 + v116)))
                {
                  v117 = 2;
                }

                else
                {
                  v117 = 0;
                }

                v118 = v117 | (4 * v115) | sub_2772B429C(a1, (a1 + 243));
                if ((0xF0F0uLL >> v118))
                {
                  v119 = &unk_2773B3A70 + (sub_2772B429C(a1, (a1 + 243)) | (2 * v118));
                }

                else
                {
                  v119 = &unk_2773B3A60 + v118;
                }

                v14 = v120;
                v29 = *v119 + 23;
              }
            }

            else
            {
              v29 = 23;
            }
          }

          else if (sub_2772B429C(a1, (a1 + 240)))
          {
            v29 = 2;
          }

          else
          {
            v29 = 1;
          }
        }

        else
        {
          v29 = 0;
        }

        v15 = v126;
LABEL_66:
        v33 = v29 == 0;
        goto LABEL_69;
      }

      goto LABEL_30;
    }
  }

  else if (*(a2 + 4))
  {
    v126 = v15;
    if (v18 != 2)
    {
      goto LABEL_14;
    }

LABEL_30:
    if ((((*(a1 + 112) & 8) == 0) & *(a1 + 112)) != 0)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    v32 = a1 + 208;
    v30 = *(*(a1 + 104) + 48 * a5);
    if (!sub_2772B429C(a1, (a1 + 208 + v31 + (((v30 & 8) == 0) & v30))))
    {
      v33 = 0;
      v29 = 0;
      goto LABEL_41;
    }

    if (sub_2772B43FC(a1))
    {
      v33 = 0;
      v29 = 25;
      goto LABEL_41;
    }

    v123 = a4;
    v121 = v14;
    v39 = sub_2772B429C(a1, (a1 + 214));
    v40 = sub_2772B429C(a1, (a1 + 215));
    if (v39)
    {
      v41 = 2;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41 | v40;
    v43 = 8;
    if (v40)
    {
      v44 = 9;
    }

    else
    {
      v43 = 9;
      v44 = 10;
    }

    if (sub_2772B429C(a1, (v32 + v43)))
    {
      v45 = 2;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45 | (4 * v42);
    v47 = sub_2772B429C(a1, (v32 + v44));
    v48 = v46 | v47;
    if ((0xF0F0uLL >> (v46 | v47)))
    {
      v49 = &unk_2773B3A70 + (sub_2772B429C(a1, (a1 + 218)) | (2 * v48));
    }

    else
    {
      v49 = &unk_2773B3A60 + v48;
    }

    v15 = v126;
    v14 = v121;
    v33 = 0;
    v29 = *v49;
    a4 = v123;
    goto LABEL_69;
  }

  if (sub_2772B429C(a1, (a1 + 222)))
  {
    if (!sub_2772B429C(a1, (a1 + 225)))
    {
      v33 = 0;
      v29 = 5;
      goto LABEL_69;
    }

    if (sub_2772B43FC(a1))
    {
      v33 = 0;
      v29 = 30;
      goto LABEL_69;
    }

    v126 = v15;
    v122 = v14;
    v104 = sub_2772B429C(a1, (a1 + 226));
    v105 = sub_2772B429C(a1, (a1 + 227));
    if (v104)
    {
      v106 = 2;
    }

    else
    {
      v106 = 0;
    }

    v107 = v106 | v105;
    v108 = 19;
    if (!v105)
    {
      v108 = 20;
    }

    if (sub_2772B429C(a1, (a1 + 208 + v108)))
    {
      v109 = 2;
    }

    else
    {
      v109 = 0;
    }

    v110 = v109 | (4 * v107) | sub_2772B429C(a1, (a1 + 228));
    if ((0xF0F0uLL >> v110))
    {
      v111 = &unk_2773B3A70 + (sub_2772B429C(a1, (a1 + 228)) | (2 * v110));
    }

    else
    {
      v111 = &unk_2773B3A60 + v110;
    }

    v14 = v122;
    v33 = 0;
    v29 = *v111 + 5;
LABEL_41:
    v15 = v126;
    goto LABEL_69;
  }

  v34 = sub_2772B429C(a1, (a1 + 223));
  v35 = 16;
  if (v34)
  {
    v35 = 17;
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = sub_2772B429C(a1, (a1 + 208 + v35));
  v33 = 0;
  if (v37)
  {
    v38 = 2;
  }

  else
  {
    v38 = 0;
  }

  v29 = (v36 | v37) ^ v38;
LABEL_69:
  v50 = v29;
  v51 = *a3 & 0xFFFFFF00 | v29;
  *a3 = v51;
  if (v29 == v15)
  {
    v52 = *(a1 + 3216);
    *a3 = v51 & 0x1FC080FF | 0xA0004000;
    v53 = *(a1 + 16) << 9;
    *(a1 + 16) = v53;
    v54 = *(a1 + 64);
    v55 = 9;
    if (v54 <= 8)
    {
      v55 = 9 - v54;
      v56 = *(a1 + 32);
      v57 = v56 + 1;
      *(a1 + 32) = v56 + 1;
      v58 = bswap32(*v56);
      if (v57 > *(a1 + 48))
      {
        v57 = *(a1 + 48);
      }

      *(a1 + 32) = v57;
      v53 |= v58 << v55;
      v54 = 32;
    }

    v59 = v54 - v55;
    *(a1 + 64) = v59;
    v60 = v59 & 7;
    v61 = v53 << (v59 & 7);
    *(a1 + 16) = v61;
    if (v59 < 0)
    {
      v60 -= v59;
      v62 = *(a1 + 32);
      v63 = v62 + 1;
      *(a1 + 32) = v62 + 1;
      v64 = bswap32(*v62);
      if (v63 > *(a1 + 48))
      {
        v63 = *(a1 + 48);
      }

      *(a1 + 32) = v63;
      v61 |= v64 << v60;
      *(a1 + 16) = v61;
      v59 = 32;
    }

    *(a1 + 64) = v59 - v60;
    *(a1 + 28) = HIDWORD(v61);
    v65 = 32;
    do
    {
      v66 = *(a1 + 28);
      v67 = *(a1 + 16) << 8;
      *(a1 + 16) = v67;
      v68 = *(a1 + 64);
      if (v68 > 7)
      {
        v69 = 8;
      }

      else
      {
        v69 = 8 - v68;
        v70 = *(a1 + 32);
        v71 = v70 + 1;
        *(a1 + 32) = v70 + 1;
        v72 = bswap32(*v70);
        if (v71 > *(a1 + 48))
        {
          v71 = *(a1 + 48);
        }

        *(a1 + 32) = v71;
        v67 |= v72 << v69;
        *(a1 + 16) = v67;
        v68 = 32;
      }

      *(a1 + 64) = v68 - v69;
      *(a1 + 28) = HIDWORD(v67);
      *(v52 + v65) = HIBYTE(v66);
      v73 = *(a1 + 28);
      v74 = *(a1 + 16) << 8;
      *(a1 + 16) = v74;
      v75 = *(a1 + 64);
      if (v75 > 7)
      {
        v76 = 8;
      }

      else
      {
        v76 = 8 - v75;
        v77 = *(a1 + 32);
        v78 = v77 + 1;
        *(a1 + 32) = v77 + 1;
        v79 = bswap32(*v77);
        if (v78 > *(a1 + 48))
        {
          v78 = *(a1 + 48);
        }

        *(a1 + 32) = v78;
        v74 |= v79 << v76;
        *(a1 + 16) = v74;
        v75 = 32;
      }

      *(a1 + 64) = v75 - v76;
      *(a1 + 28) = HIDWORD(v74);
      *(v52 + v65 + 2) = HIBYTE(v73);
      v65 += 4;
    }

    while (v65 != 800);
    *a1 = 510;
    *(a1 + 112) = *(a1 + 112) & 0xC3 | 0x20;
    *(a1 + 116) = 1;
    *(a1 + 120) = 0x3FFFFFF;
    v80 = 48 * a5;
    *(*(a1 + 104) + v80) &= ~4u;
    *(*(a1 + 104) + v80) &= ~8u;
    *(*(a1 + 104) + v80) &= ~0x10u;
    *(*(a1 + 104) + v80) |= 0x20u;
    *(*(a1 + 104) + v80) &= ~0x40u;
    *(a1 + 112) &= ~0x40u;
    *(*(a1 + 104) + v80 + 4) = 1;
    *(*(a1 + 104) + v80 + 8) = -1;
    *(*(a1 + 104) + v80 + 10) = 1023;
    *(*(a1 + 104) + v80 + 12) = 0;
    *(a1 + 124) = 0;
    v81 = *(a1 + 104) + v80;
    *(v81 + 16) = 0u;
    *(v81 + 32) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 118) = v17;
    *(*(a1 + 104) + v80 + 6) = v17;
    *(*(a6 + 40) + 3) = 0;
    *(a1 + 117) = 0;
    *(*(a1 + 104) + v80 + 5) = 0;
    *(*(a6 + 48) + 272) = 0;
    *(*(a6 + 40) + 54) = 0;
    goto LABEL_141;
  }

  v129 = 1;
  *(*(a6 + 40) + 3) = 0;
  v127 = v33;
  if (v29 == v128 || v29 == v128 >> 8)
  {
    v82 = v17;
    result = sub_2772B8B30(a1, a2, a3, v23, *(a1 + 104) + 48 * a5, a1 + 112, &v129, **(a6 + 48));
    *(*(a1 + 104) + 48 * a5) &= ~0x40u;
    *(a1 + 112) &= ~0x40u;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

LABEL_100:
    v124 = a4;
    v125 = v82;
    if (v50 <= v14)
    {
      v95 = a5;
      v96 = sub_2772B46AC(a1, (*(a1 + 104) + 48 * a5), (a1 + 112), *(*(a6 + 48) + 1));
      v91 = v96;
      v87 = v14;
      v86 = v50 == v14;
      if ((v96 & 0xF) != 0)
      {
        if (*(a6 + 184) && v50 != v87 && v129)
        {
          if (v127 && !**(a6 + 48))
          {
            v86 = 0;
          }

          else
          {
            v86 = 0;
            *(*(a6 + 40) + 3) = sub_2772B49B8(a1, (*(a1 + 104) + 48 * a5), (a1 + 112));
          }
        }
      }

      else if (!v96)
      {
        *(a1 + 4) = 0;
        *(a3 + 4) = 0;
        *(a3 + 6) = 0;
LABEL_128:
        if (v86)
        {
          v97 = 8;
        }

        else
        {
          v97 = 0;
        }

        if (v50 > v87 || v86)
        {
          v99 = 4;
        }

        else
        {
          v99 = 0;
        }

        if (v127)
        {
          v100 = 16;
        }

        else
        {
          v100 = 0;
        }

        *(a1 + 112) = v100 | v97 | v99 | *(a1 + 112) & 0xC3;
        *(a1 + 113) = v91;
        *(a1 + 116) = *(a1 + 10);
        *(a1 + 120) = *(a1 + 12);
        v101 = 48 * v95;
        *(*(a1 + 104) + v101) = *(*(a1 + 104) + 48 * v95) & 0xF7 | v97;
        *(*(a1 + 104) + v101) = *(*(a1 + 104) + 48 * v95) & 0xFB | v99;
        *(*(a1 + 104) + v101) = *(*(a1 + 104) + 48 * v95) & 0xEF | v100;
        *(*(a1 + 104) + v101) = *(*(a1 + 104) + 48 * v95) & 0xDF;
        *(*(a1 + 104) + 48 * v95 + 1) = v91;
        *(*(a1 + 104) + 48 * v95 + 4) = *(a1 + 10);
        *(*(a1 + 104) + 48 * v95 + 8) = *(a1 + 12);
        *(*(a1 + 104) + 48 * v95 + 10) = *(a1 + 14);
        *(a1 + 118) = v125;
        *(*(a1 + 104) + 48 * v95 + 6) = v125;
        v102 = *(*(a6 + 40) + 3);
        *(a1 + 117) = v102;
        *(*(a1 + 104) + 48 * v95 + 5) = v102;
        *a3 = *a3 & 0xFFC0FFFF | ((v91 & 0x3F) << 16);
        *(a3 + 8) = *(a1 + 4);
LABEL_141:
        sub_2772B8AC8(a1, a5);
        v103 = 8 * (*(a1 + 32) - *(a1 + 56)) - *(a1 + 64) - 32;
        result = (v103 - *(a1 + 72));
        *(a1 + 72) = v103;
        return result;
      }
    }

    else
    {
      v85 = v14;
      v86 = 0;
      v87 = v85;
      v88 = v50 + ~v85;
      v89 = (v88 >> 2) % 3u;
      if (v88 >= 12)
      {
        v90 = 15;
      }

      else
      {
        v90 = 0;
      }

      v91 = v90 | (16 * v89);
    }

    if (*(a1 + 4))
    {
      v92 = a1 + 1;
    }

    else
    {
      v92 = a1;
    }

    if (sub_2772B429C(a1, (v92 + 268)))
    {
      if (sub_2772B429C(a1, (a1 + 270)))
      {
        v93 = 1;
        do
        {
          ++v93;
        }

        while (sub_2772B429C(a1, (a1 + 271)) && v93 < 0x34);
        v94 = (((v93 & 1) - 1) ^ ((v93 + 1) >> 1)) + !(v93 & 1);
        if (v94 - 26 < 0xFFFFFFCC)
        {
          v94 = 0;
        }
      }

      else
      {
        v94 = 1;
      }
    }

    else
    {
      v94 = 0;
    }

    *(a1 + 4) = v94;
    if (*(a6 + 29) || *(a6 + 31) == 2)
    {
      v95 = a5;
      sub_2772B71C4(a1, a2, (*(a1 + 104) + 48 * a5), (a1 + 112), v50 > v87, v86, v91, v124, *(*(a6 + 40) + 3), a6);
    }

    else
    {
      v95 = a5;
      sub_2772B65D0(a1, a2, (*(a1 + 104) + 48 * a5), (a1 + 112), v50 > v87, v86, v91, v124, *(*(a6 + 40) + 3), a6);
    }

    goto LABEL_128;
  }

  v82 = v17;
  if (*(a6 + 184) && v29 == v14)
  {
    v84 = a5;
    *(*(a6 + 40) + 3) = sub_2772B49B8(a1, (*(a1 + 104) + 48 * a5), (a1 + 112));
  }

  else
  {
    v84 = a5;
  }

  result = sub_2772B9E28(a1, v50, a2, a3, v14, v24, *(a1 + 104) + 48 * v84, a1 + 112, *(*(a6 + 40) + 3), *(*(a6 + 48) + 1));
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  return result;
}

uint64_t sub_2772B8AC8(uint64_t result, unsigned int a2)
{
  v2 = *(result + 104);
  v3 = 48 * a2;
  *(result + 88) = *(v2 + v3) & 1;
  *(result + 112) = *(result + 112) & 0xFC | 1;
  *(v2 + v3) &= ~2u;
  *(*(result + 104) + v3) |= 1u;
  if (a2 + 1 == *(result + 80))
  {
    *(result + 112) &= ~1u;
    *(result + 88) = 0;
  }

  return result;
}

uint64_t sub_2772B8B30(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7, int a8)
{
  v208 = *MEMORY[0x277D85DE8];
  if (a2[42])
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 8) == 2;
  }

  if (a2[43])
  {
    v12 = 1;
  }

  else
  {
    v12 = *(a1 + 8) == 2;
  }

  v201 = -1;
  v206 = 0u;
  v207 = 0u;
  *a3 &= ~0x4000u;
  v176 = (a3 + 24);
  v204 = 0u;
  v205 = 0u;
  if (a2[4] == 5 || !a2[4])
  {
    v13 = sub_2772B4570(a1);
    *(a3 + 20) = v13;
    v197 = v13;
    v14 = sub_2772B4570(a1);
    *(a3 + 21) = v14;
    v198 = v14;
    v15 = sub_2772B4570(a1);
    *(a3 + 22) = v15;
    v199 = v15;
    v16 = sub_2772B4570(a1);
    *(a3 + 23) = v16;
    v200 = v16;
    v17 = v13 | v14;
    v18 = a3;
    *a7 = (v17 | v15 | v16) == 0;
    *a3 = *a3 & 0x1FFFFFFF | 0x80000000;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 12) = 0xFFFFFFFF00000000;
    if (v11)
    {
      LOBYTE(v201) = sub_2772B4BA8(a1, a5, a6, 0, 0, &v201, 0, &v197);
      *(a3 + 12) = v201;
      BYTE2(v201) = sub_2772B4BA8(a1, a5, a6, 0, 1u, &v201, 0, &v197);
      *(a3 + 13) = BYTE2(v201);
      BYTE4(v201) = sub_2772B4BA8(a1, a5, a6, 0, 2u, &v201, 0, &v197);
      *(a3 + 14) = BYTE4(v201);
      v19 = sub_2772B4BA8(a1, a5, a6, 0, 3u, &v201, 0, &v197);
      BYTE6(v201) = v19;
      *(a3 + 15) = v19;
      if ((*(a3 + 12) | *(a3 + 13) | *(a3 + 14) | v19) > 0x1F)
      {
        return 4293967296;
      }
    }

    if (*a5)
    {
      v20 = *(a5 + 24);
      LODWORD(v206) = *(a5 + 16);
      DWORD2(v206) = v20;
      v21 = *(a5 + 40);
      LODWORD(v207) = *(a5 + 32);
      DWORD2(v207) = v21;
    }

    v22 = v176;
    if (*a6)
    {
      v23 = *(a6 + 24);
      LODWORD(v204) = *(a6 + 16);
      DWORD2(v204) = v23;
      v24 = *(a6 + 40);
      LODWORD(v205) = *(a6 + 32);
      DWORD2(v205) = v24;
    }

    v25 = 0;
    v26 = 0;
    for (i = &v203; ; i += 4)
    {
      v179 = &v22[8 * v26];
      v28 = v18 + v25;
      v192 = (v18 + v25 + 24);
      v29 = *(&v197 + v26);
      v30 = 4 * (v26 & 1);
      v31 = &v206 + 2 * v30;
      v183 = 2 * v26;
      v32 = &v204 + 2 * ((2 * v26) & 0x7C);
      v33 = sub_2772B4D04(a1, 40, *v31, *v32);
      *(i - 8) = v33;
      v187 = v31;
      v34 = v31[1];
      v35 = v32;
      v36 = sub_2772B4D04(a1, 47, v34, v32[1]);
      *(i - 7) = v36;
      if (v29 == 2)
      {
        break;
      }

      if (v29 == 1)
      {
        v40 = &v204 + 2 * (v183 | 2u);
        *(i - 4) = sub_2772B4D04(a1, 40, v33, *v40);
        v41 = sub_2772B4D04(a1, 47, v36, v40[1]);
        v18 = a3;
        *(a3 + v25 + 26) = v36;
        *(i - 3) = v41;
        v42 = *(i - 4);
        *v35 = v42;
        v37 = *(i - 2);
        *(&v206 + (v30 | 2)) = v37;
        *v40 = v37;
        *v187 = v37;
        *v192 = v42;
        v43 = v179;
LABEL_22:
        v38 = v43 + 2;
        v39 = 6;
LABEL_24:
        v36 = v41;
        goto LABEL_25;
      }

      if (v29)
      {
        v46 = &v206 + 2 * (v30 | 2);
        v172 = v46;
        v174 = v33;
        v47 = v33;
        v171 = sub_2772B4D04(a1, 40, *v46, v33);
        *(i - 4) = v171;
        LOWORD(v46) = sub_2772B4D04(a1, 47, v46[1], v36);
        *(i - 3) = v46;
        v48 = &v204 + 2 * (v183 | 2u);
        LOWORD(v47) = sub_2772B4D04(a1, 40, v47, *v48);
        *i = v47;
        v49 = sub_2772B4D04(a1, 47, v36, v48[1]);
        *(i + 1) = v49;
        *(i + 4) = sub_2772B4D04(a1, 40, v171, v47);
        v41 = sub_2772B4D04(a1, 47, v46, v49);
        v18 = a3;
        v50 = (a3 + v25);
        v50[13] = v36;
        *(i + 5) = v41;
        v51 = *i;
        *v187 = *i;
        v37 = *(i + 2);
        *v172 = v37;
        v52 = *(i - 2);
        *v35 = v52;
        *v48 = v37;
        *v192 = v174;
        v50[14] = v52;
        v50[15] = v46;
        v50[16] = v51;
        v50[17] = v49;
        v38 = v179 + 6;
        v39 = 14;
        goto LABEL_24;
      }

      v37 = *(i - 4);
      *(&v204 + (v183 | 2u)) = v37;
      *v32 = v37;
      *(&v206 + (v30 | 2)) = v37;
      v38 = v192;
      *v187 = v37;
      v39 = 2;
      v18 = a3;
LABEL_25:
      *v38 = v37;
      *(v18 + v25 + v39 + 24) = v36;
      ++v26;
      v25 += 16;
      v22 = v176;
      if (v25 == 64)
      {
        v53 = DWORD2(v206);
        *(a5 + 16) = v206;
        *(a5 + 24) = v53;
        v54 = DWORD2(v207);
        *(a5 + 32) = v207;
        *(a5 + 40) = v54;
        v55 = DWORD2(v204);
        *(a6 + 16) = v204;
        *(a6 + 24) = v55;
        v56 = DWORD2(v205);
        *(a6 + 32) = v205;
        *(a6 + 40) = v56;
        *(a5 + 12) = BYTE4(v201);
        v57 = BYTE6(v201);
        *(a5 + 14) = BYTE6(v201);
        *(a6 + 12) = BYTE2(v201);
        v58 = 148;
        *(a6 + 14) = v57;
        return v58;
      }
    }

    v44 = &v206 + 2 * (v30 | 2);
    *(i - 4) = sub_2772B4D04(a1, 40, *v44, v33);
    v41 = sub_2772B4D04(a1, 47, v44[1], v36);
    *(v28 + 26) = v36;
    *(i - 3) = v41;
    v37 = *(i - 2);
    *(&v204 + (v183 | 2u)) = v37;
    *v32 = v37;
    v45 = *(i - 4);
    *v187 = v45;
    *v44 = v37;
    *v192 = v45;
    v18 = a3;
    v43 = v179;
    goto LABEL_22;
  }

  v173 = v12;
  v59 = sub_2772B45CC(a1);
  *(a3 + 20) = v59;
  v197 = v59;
  v60 = sub_2772B45CC(a1);
  *(a3 + 21) = v60;
  v198 = v60;
  v61 = sub_2772B45CC(a1);
  *(a3 + 22) = v61;
  v199 = v61;
  v62 = sub_2772B45CC(a1);
  v63 = v62;
  *(a3 + 23) = v62;
  v200 = v62;
  v67 = v59 < 4 && v60 < 4u && v61 < 4u && v62 < 4u;
  if (!a8)
  {
    if (v60)
    {
      v68 = v59 == 0;
    }

    else
    {
      v68 = 1;
    }

    v69 = !v68;
    if (!v61)
    {
      v69 = 0;
    }

    if (!v62)
    {
      v69 = 0;
    }

    v67 &= v69;
  }

  *a7 = v67;
  v70 = byte_2773B3B14[v59];
  *(a3 + 12) = v70;
  v71 = byte_2773B3B21[v59];
  LOBYTE(v201) = v70;
  BYTE1(v201) = v71;
  *(a3 + 16) = v71;
  BYTE2(v201) = byte_2773B3B14[v60];
  v188 = BYTE2(v201);
  *(a3 + 13) = BYTE2(v201);
  BYTE3(v201) = byte_2773B3B21[v60];
  v193 = BYTE3(v201);
  *(a3 + 17) = BYTE3(v201);
  v72 = byte_2773B3B14[v61];
  *(a3 + 14) = v72;
  v73 = byte_2773B3B21[v61];
  v184 = v72;
  BYTE4(v201) = v72;
  BYTE5(v201) = v73;
  v180 = v73;
  *(a3 + 18) = v73;
  v74 = byte_2773B3B14[v62];
  BYTE6(v201) = v74;
  *(a3 + 15) = v74;
  HIBYTE(v201) = byte_2773B3B21[v62];
  v175 = HIBYTE(v201);
  *(a3 + 19) = HIBYTE(v201);
  v58 = 0;
  if (v11)
  {
    if (v59 && !v70)
    {
      v75 = sub_2772B4BA8(a1, a5, a6, 0, 0, &v201, 1, &v197);
      LOBYTE(v70) = v75;
      LOBYTE(v201) = v75;
      if (v75 >= 0x20)
      {
        v58 = 4293967296;
      }

      else
      {
        v58 = 0;
      }
    }

    if (v60 && !v188)
    {
      v76 = sub_2772B4BA8(a1, a5, a6, 0, 1u, &v201, 1, &v197);
      BYTE2(v201) = v76;
      LOBYTE(v188) = v76;
      if (v76 >= 0x20)
      {
        v77 = -1000000;
      }

      else
      {
        v77 = 0;
      }

      v58 = (v77 + v58);
    }

    if (v61 && !v184)
    {
      v78 = sub_2772B4BA8(a1, a5, a6, 0, 2u, &v201, 1, &v197);
      BYTE4(v201) = v78;
      LOBYTE(v184) = v78;
      if (v78 >= 0x20)
      {
        v79 = -1000000;
      }

      else
      {
        v79 = 0;
      }

      v58 = (v79 + v58);
    }

    if (v63 && !v74)
    {
      v80 = sub_2772B4BA8(a1, a5, a6, 0, 3u, &v201, 1, &v197);
      LOBYTE(v74) = v80;
      BYTE6(v201) = v80;
      if (v80 >= 0x20)
      {
        v81 = -1000000;
      }

      else
      {
        v81 = 0;
      }

      v58 = (v81 + v58);
    }
  }

  if (!v173)
  {
    v85 = a3;
    v86 = v193;
    v87 = v180;
    goto LABEL_84;
  }

  if (v59)
  {
    v82 = a1;
    if (!v71)
    {
      v83 = sub_2772B4BA8(a1, a5, a6, 1, 0, &v201, 1, &v197);
      BYTE1(v201) = v83;
      LOBYTE(v71) = v83;
      if (v83 >= 0x20)
      {
        v84 = -1000000;
      }

      else
      {
        v84 = 0;
      }

      v58 = (v84 + v58);
    }
  }

  else
  {
    v82 = a1;
  }

  if (v60)
  {
    v85 = a3;
    if (!v193)
    {
      v89 = sub_2772B4BA8(v82, a5, a6, 1, 1u, &v201, 1, &v197);
      BYTE3(v201) = v89;
      LOBYTE(v193) = v89;
      if (v89 >= 0x20)
      {
        v90 = -1000000;
      }

      else
      {
        v90 = 0;
      }

      v58 = (v90 + v58);
    }
  }

  else
  {
    v85 = a3;
  }

  if (v61)
  {
    v87 = v180;
    if (!v180)
    {
      v91 = sub_2772B4BA8(v82, a5, a6, 1, 2u, &v201, 1, &v197);
      v87 = v91;
      BYTE5(v201) = v91;
      if (v91 >= 0x20)
      {
        v92 = -1000000;
      }

      else
      {
        v92 = 0;
      }

      v58 = (v92 + v58);
    }
  }

  else
  {
    v87 = v180;
  }

  if (!v63)
  {
    v86 = v193;
LABEL_84:
    LOBYTE(v88) = v175;
    if ((v58 & 0x80000000) != 0)
    {
      return v58;
    }

    goto LABEL_108;
  }

  LOBYTE(v88) = v175;
  if (!v175)
  {
    v88 = sub_2772B4BA8(v82, a5, a6, 1, 3u, &v201, 1, &v197);
    HIBYTE(v201) = v88;
    if (v88 >= 0x20)
    {
      v93 = -1000000;
    }

    else
    {
      v93 = 0;
    }

    v58 = (v93 + v58);
  }

  v86 = v193;
  if ((v58 & 0x80000000) == 0)
  {
LABEL_108:
    v85[12] = v70;
    v85[13] = v188;
    v85[14] = v184;
    v85[15] = v74;
    v85[16] = v71;
    v85[17] = v86;
    v85[18] = v87;
    v85[19] = v88;
    if (*a5)
    {
      v94 = *(a5 + 32);
      v206 = *(a5 + 16);
      v207 = v94;
    }

    v95 = v176;
    if (*a6)
    {
      v96 = *(a6 + 32);
      v204 = *(a6 + 16);
      v205 = v96;
    }

    v97 = 0;
    v98 = &v201;
    v99 = &v202;
    do
    {
      v100 = v97 & 1;
      v101 = v97 >> 1;
      v102 = *(&v197 + v97);
      if (!*(&v197 + v97) || *v98 == 255)
      {
        *(&v204 + ((4 * v101) | 2u)) = 0;
        *(&v204 + 4 * (v101 & 0x3F)) = 0;
        *(&v206 + ((4 * (v97 & 1)) | 2)) = 0;
        *v95 = 0;
        *(v95 + 1) = 0;
        *(&v206 + (4 * v100)) = 0;
      }

      else if (v102 > 3)
      {
        v177 = v95;
        if (v102 > 9)
        {
          v189 = &v206 + 2 * (4 * v100);
          v194 = &v204 + (v101 & 0x3F);
          v118 = sub_2772B4D04(a1, 40, *v189, *v194);
          *v99 = v118;
          v119 = v118;
          v185 = v118;
          v120 = sub_2772B4D04(a1, 47, v189[1], *(v194 + 1));
          *(v99 + 1) = v120;
          v181 = &v206 + 2 * ((4 * (v97 & 1)) | 2);
          v121 = sub_2772B4D04(a1, 40, *v181, v119);
          *(v99 + 4) = v121;
          v122 = sub_2772B4D04(a1, 47, v181[1], v120);
          *(v99 + 5) = v122;
          v123 = &v204 + 2 * ((4 * v101) | 2u);
          v124 = sub_2772B4D04(a1, 40, v119, *v123);
          *(v99 + 8) = v124;
          v125 = sub_2772B4D04(a1, 47, v120, v123[1]);
          *(v99 + 9) = v125;
          *(v99 + 12) = sub_2772B4D04(a1, 40, v121, v124);
          v126 = sub_2772B4D04(a1, 47, v122, v125);
          *(v99 + 13) = v126;
          v127 = *(v99 + 4);
          *v189 = v127;
          v128 = *(v99 + 6);
          *v181 = v128;
          v129 = *(v99 + 2);
          *v194 = v129;
          *v123 = v128;
          *v177 = v185;
          v177[1] = v120;
          v177[2] = v129;
          v177[3] = v122;
          v177[4] = v127;
          v177[5] = v125;
          v95 = v177;
          v177[6] = v128;
          v177[7] = v126;
        }

        else
        {
          v107 = 4 * v100;
          v108 = &v206 + 2 * (4 * v100);
          v109 = 4 * v101;
          v110 = &v204 + (v101 & 0x3F);
          v111 = sub_2772B4D04(a1, 40, *v108, *v110);
          *v99 = v111;
          v112 = sub_2772B4D04(a1, 47, v108[1], *(v110 + 1));
          *(v99 + 1) = v112;
          v113 = v111;
          v114 = v112;
          if (v102)
          {
            v130 = &v206 + 2 * (v107 | 2u);
            *(v99 + 4) = sub_2772B4D04(a1, 40, *v130, v113);
            *(v99 + 5) = sub_2772B4D04(a1, 47, v130[1], v114);
            v117 = *(v99 + 2);
            *(&v204 + (v109 | 2u)) = v117;
            *v110 = v117;
            v116 = *v99;
            *v108 = *v99;
            *v130 = v117;
          }

          else
          {
            v115 = &v204 + 2 * (v109 | 2u);
            *(v99 + 4) = sub_2772B4D04(a1, 40, v113, *v115);
            *(v99 + 5) = sub_2772B4D04(a1, 47, v114, v115[1]);
            v116 = *v99;
            *v110 = *v99;
            v117 = *(v99 + 2);
            *v115 = v117;
            *(&v206 + (v107 | 2u)) = v117;
            *v108 = v117;
          }

          *v95 = v116;
          *(v95 + 1) = v117;
        }

        v85 = a3;
      }

      else
      {
        v103 = &v206 + 2 * (4 * v100);
        v104 = &v204 + (v101 & 0x3F);
        *v99 = sub_2772B4D04(a1, 40, *v103, *v104);
        v85 = a3;
        v105 = sub_2772B4D04(a1, 47, v103[1], *(v104 + 1));
        *(v99 + 1) = v105;
        v106 = *v99;
        *(&v204 + ((4 * v101) | 2u)) = *v99;
        *v104 = v106;
        *(&v206 + ((4 * (v97 & 1)) | 2)) = v106;
        *v103 = v106;
        *v95 = v106;
        v95[1] = v105;
      }

      ++v97;
      v95 += 8;
      v98 = (v98 + 2);
      v99 += 32;
    }

    while (v97 != 4);
    v131 = 0;
    v132 = v85 + 88;
    v133 = &v201 + 1;
    v134 = &v203 + 2;
    do
    {
      v135 = v131 & 1;
      v136 = v131 >> 1;
      v137 = *(&v197 + v131);
      if (!*(&v197 + v131) || *v133 == 255)
      {
        *(&v204 + ((4 * (v136 & 0x3F)) | 3u)) = 0;
        *(&v204 + ((4 * (v136 & 0x3F)) | 1u)) = 0;
        *(&v206 + ((4 * v135) | 3u)) = 0;
        *v132 = 0;
        *(v132 + 1) = 0;
        *(&v206 + ((4 * (v131 & 1)) | 1)) = 0;
      }

      else if (v137 > 3)
      {
        if (v137 > 9)
        {
          v186 = &v206 + 2 * ((4 * v135) | 1u);
          v191 = &v204 + 2 * ((4 * (v136 & 0x3F)) | 1u);
          v195 = sub_2772B4D04(a1, 40, *v186, *v191);
          *(v134 - 8) = v195;
          v152 = sub_2772B4D04(a1, 47, v186[1], v191[1]);
          *(v134 - 7) = v152;
          v153 = v152;
          v182 = v152;
          v154 = sub_2772B4D04(a1, 40, *(&v206 + 2 * ((4 * (v131 & 1)) | 3)), v195);
          *(v134 - 4) = v154;
          v155 = v153;
          v156 = sub_2772B4D04(a1, 47, *(&v206 + 2 * ((4 * (v131 & 1)) | 3) + 1), v153);
          *(v134 - 3) = v156;
          v157 = &v204 + 2 * ((4 * (v136 & 0x3F)) | 3u);
          v158 = sub_2772B4D04(a1, 40, v195, *v157);
          *v134 = v158;
          LOWORD(v155) = sub_2772B4D04(a1, 47, v155, v157[1]);
          v134[1] = v155;
          v134[4] = sub_2772B4D04(a1, 40, v154, v158);
          v159 = sub_2772B4D04(a1, 47, v156, v155);
          v134[5] = v159;
          v160 = *v134;
          *v186 = *v134;
          v161 = *(v134 + 2);
          *(&v206 + ((4 * (v131 & 1)) | 3)) = v161;
          v162 = *(v134 - 2);
          *v191 = v162;
          *v157 = v161;
          *v132 = v195;
          *(v132 + 1) = v182;
          *(v132 + 2) = v162;
          *(v132 + 3) = v156;
          *(v132 + 4) = v160;
          *(v132 + 5) = v155;
          *(v132 + 6) = v161;
          *(v132 + 7) = v159;
        }

        else
        {
          v190 = 4 * v135;
          v142 = &v206 + 4 * ((4 * (v131 & 1)) | 1);
          v143 = 4 * (v136 & 0x3F);
          v144 = &v204 + 2 * (v143 | 1u);
          v145 = sub_2772B4D04(a1, 40, *v142, *v144);
          *(v134 - 8) = v145;
          v146 = sub_2772B4D04(a1, 47, *(v142 + 1), v144[1]);
          *(v134 - 7) = v146;
          v147 = v145;
          v148 = v146;
          if (v137)
          {
            v142 = &v206 + 4 * (v190 | 3u);
            *(v134 - 4) = sub_2772B4D04(a1, 40, *v142, v147);
            *(v134 - 3) = sub_2772B4D04(a1, 47, *(v142 + 1), v148);
            v151 = *(v134 - 2);
            *(&v204 + (v143 | 3u)) = v151;
            *v144 = v151;
            v150 = *(v134 - 4);
            *(&v206 + ((4 * (v131 & 1)) | 1)) = v150;
          }

          else
          {
            v149 = &v204 + 2 * (v143 | 3u);
            *(v134 - 4) = sub_2772B4D04(a1, 40, v147, *v149);
            *(v134 - 3) = sub_2772B4D04(a1, 47, v148, v149[1]);
            v150 = *(v134 - 4);
            *v144 = v150;
            v151 = *(v134 - 2);
            *v149 = v151;
            *(&v206 + (v190 | 3u)) = v151;
          }

          *v142 = v151;
          *v132 = v150;
          *(v132 + 1) = v151;
        }
      }

      else
      {
        v138 = &v206 + 2 * ((4 * v135) | 1u);
        v139 = &v204 + 2 * ((4 * (v136 & 0x3F)) | 1u);
        *(v134 - 8) = sub_2772B4D04(a1, 40, *v138, *v139);
        v140 = sub_2772B4D04(a1, 47, v138[1], v139[1]);
        *(v134 - 7) = v140;
        v141 = *(v134 - 4);
        *(&v204 + ((4 * (v136 & 0x3F)) | 3u)) = v141;
        *v139 = v141;
        *(&v206 + ((4 * (v131 & 1)) | 3)) = v141;
        *v138 = v141;
        *v132 = v141;
        *(v132 + 1) = v140;
      }

      ++v131;
      v132 += 16;
      v133 += 2;
      v134 += 16;
    }

    while (v131 != 4);
    v58 = 0;
    v163 = v207;
    *(a5 + 16) = v206;
    *(a5 + 32) = v163;
    v164 = v205;
    *(a6 + 16) = v204;
    *(a6 + 32) = v164;
    *(a5 + 12) = BYTE4(v201);
    v165 = BYTE6(v201);
    *(a5 + 14) = BYTE6(v201);
    *(a6 + 12) = BYTE2(v201);
    *(a6 + 14) = v165;
    *(a5 + 13) = BYTE5(v201);
    v166 = HIBYTE(v201);
    *(a5 + 15) = HIBYTE(v201);
    *(a6 + 13) = BYTE3(v201);
    *(a6 + 15) = v166;
    *(a5 + 2) = v199;
    v167 = v200;
    *(a5 + 3) = v200;
    *(a6 + 2) = v198;
    *(a6 + 3) = v167;
  }

  return v58;
}