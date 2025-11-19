uint64_t FstSearchLateLatticeHashBackoff::seedTheory(FstSearchLateLatticeHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 36 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 16) = a2;
    *(v12 + 20) = 0xFFFFFFFFLL;
    *(v12 + 28) = 0;
    *(v12 + 32) = -2;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 24 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchLateLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLateLatticeHashBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 228);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 36 * v8);
    for (i = v10[5]; i != -1; v8 = v16)
    {
      v16 = i;
      result = *(v9 + 40);
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = *(v9 + 160);
      v21 = *(v20 + 36 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = *(v9 + 160);
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v20 + 36 * v8 + 16);
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (*(v9 + 160) + 36 * v16);
      i = v10[5];
    }

    *a4 = *v10;
  }

  return result;
}

BOOL FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  v4 = (v3 + 36 * a2);
  v5 = *v4;
  v19 = 0;
  if ((v5 - 16777209) > 5 || ((1 << (v5 + 7)) & 0x31) == 0)
  {
    v16 = *(a1 + 48);
    v7 = (v16[9] + 2 * *(v16[6] + 4 * v5));
    v17 = *(v16[4] + 2 * v5);
    if (!v17)
    {
      v13 = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

    if (v17 == 2)
    {
      *(a3 + 2) = *v7;
      *a3 = *(a1 + 68);
      *(a3 + 10) = 0;
      v13 = 1;
      goto LABEL_14;
    }

    if (v17 != 1)
    {
      v18 = &v7[v17];
      *(a3 + 2) = *(v18 - 2);
      *a3 = *(v18 - 3);
      *(a3 + 10) = 0;
      v13 = (v17 - 1);
      goto LABEL_14;
    }
  }

  else
  {
    v7 = &v19;
  }

  v8 = *(*(a1 + 176) + 16 * v4[2] + 12);
  if ((v8 & 0x80000000) != 0)
  {
    v12 = *(a1 + 68);
    *(a3 + 2) = v12;
  }

  else
  {
    v9 = *(v3 + 36 * v8);
    v10 = *(a1 + 48);
    if (*(v10 + 388) > v9 && *(*(v10 + 104) + v9))
    {
      v11 = *(*(v10 + 72) + 2 * *(*(v10 + 48) + 4 * v9) + 2 * (*(*(v10 + 32) + 2 * v9) - 1));
    }

    else
    {
      v11 = 0;
    }

    *(a3 + 2) = v11;
    v12 = *(a1 + 68);
  }

  v13 = 0;
  *a3 = v12;
  *(a3 + 10) = 1;
LABEL_14:
  v14 = v7[v13];
  *(a3 + 4) = v14;
  return *PicMgr::getPicNode(*(*(a1 + 56) + 48), *(*(*(*(a1 + 56) + 48) + 16) + v14) - 1, a3) == *(*(a1 + 160) + 36 * a2 + 32);
}

char *mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(char *result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_168:
    if ((a2 * a3) > a3)
    {
      v82 = &result[a2 * a3];
      v83 = &result[a3];
      v84 = result;
      do
      {
        if (v83 > result)
        {
          v85 = v84;
          v86 = v83;
          do
          {
            v87 = v86;
            v86 = (v86 + v4);
            v88 = v86[2];
            v89 = v87[2];
            if (v88 <= v89 && (v88 < v89 || *v86 <= *v87))
            {
              break;
            }

            if (v7)
            {
              v90 = 0;
              if (v6)
              {
                v91 = v86;
                do
                {
                  v92 = *&v87[2 * v90];
                  *&v87[2 * v90] = *v91;
                  *v91++ = v92;
                  ++v90;
                }

                while (a3 >> 3 != v90);
              }

              else
              {
                v94 = a3;
                do
                {
                  v95 = *(v87 + v90);
                  *(v87 + v90) = *(v85 + v90);
                  *(v85 + v90++) = v95;
                  --v94;
                }

                while (v94);
              }
            }

            else
            {
              v93 = *v87;
              *v87 = *v86;
              *v86 = v93;
            }

            v85 = (v85 + v4);
          }

          while (v86 > result);
        }

        v83 += a3;
        v84 = (v84 + a3);
      }

      while (v83 < v82);
    }

    return result;
  }

  v8 = a3 >> 3;
  while (1)
  {
    v9 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_84;
    }

    v10 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v12 = result;
      goto LABEL_65;
    }

    v11 = (a2 >> 3) * a3;
    v12 = &result[v11];
    v13 = &result[2 * v11];
    v14 = *(result + 2);
    v15 = *&result[v11 + 8];
    if (v14 > v15 || v14 >= v15 && *result >= *v12)
    {
      v16 = *(v13 + 2);
      if (v15 <= v16 && (v15 < v16 || *v12 <= *v13))
      {
        if (v14 > v16 || (v12 = result, v14 >= v16) && (v12 = result, *result >= *v13))
        {
LABEL_22:
          v12 = &result[2 * v11];
        }
      }
    }

    else
    {
      v17 = *(v13 + 2);
      if (v15 > v17 || v15 >= v17 && *v12 >= *v13)
      {
        v12 = result;
        if (v14 <= v17)
        {
          if (v14 < v17)
          {
            goto LABEL_22;
          }

          v12 = &result[2 * v11];
          if (*result >= *v13)
          {
            v12 = result;
          }
        }
      }
    }

    v18 = &v9[-v11];
    v19 = &v9[v11];
    v20 = *&v9[-v11 + 8];
    v21 = *(v9 + 2);
    if (v20 > v21 || v20 >= v21 && *v18 >= *v9)
    {
      v22 = *(v19 + 2);
      if (v21 <= v22 && (v21 < v22 || *v9 <= *v19))
      {
        if (v20 > v22)
        {
          goto LABEL_45;
        }

        if (v20 >= v22)
        {
          v9 -= v11;
          if (*v18 < *v19)
          {
            goto LABEL_49;
          }

LABEL_45:
          v9 = v19;
          goto LABEL_49;
        }

LABEL_40:
        v9 -= v11;
      }
    }

    else
    {
      v23 = *(v19 + 2);
      if (v21 > v23 || v21 >= v23 && *v9 >= *v19)
      {
        if (v20 > v23)
        {
          goto LABEL_40;
        }

        if (v20 < v23)
        {
          goto LABEL_45;
        }

        if (*v18 >= *v19)
        {
          v9 -= v11;
        }

        else
        {
          v9 += v11;
        }
      }
    }

LABEL_49:
    v24 = -v11;
    v25 = &v10[-2 * v11];
    v26 = &v10[v24];
    v27 = *(v25 + 2);
    v28 = *(v26 + 2);
    if (v27 > v28 || v27 >= v28 && *v25 >= *v26)
    {
      v29 = *(v10 + 2);
      if (v28 > v29 || v28 >= v29 && *v26 > *v10)
      {
        goto LABEL_64;
      }

      if (v27 <= v29 && (v27 < v29 || *v25 < *v10))
      {
        goto LABEL_61;
      }
    }

    else
    {
      v30 = *(v10 + 2);
      if (v28 <= v30 && (v28 < v30 || *v26 < *v10))
      {
LABEL_64:
        v10 = v26;
        goto LABEL_65;
      }

      if (v27 > v30)
      {
LABEL_61:
        v10 = v25;
        goto LABEL_65;
      }

      if (v27 >= v30 && *v25 >= *v10)
      {
        v10 = v25;
      }
    }

LABEL_65:
    v31 = *(v12 + 2);
    v32 = *(v9 + 2);
    if (v31 > v32 || v31 >= v32 && *v12 >= *v9)
    {
      v33 = *(v10 + 2);
      if (v32 <= v33 && (v32 < v33 || *v9 <= *v10))
      {
        if (v31 > v33)
        {
          goto LABEL_83;
        }

        if (v31 < v33)
        {
          goto LABEL_77;
        }

        v9 = v12;
        if (*v12 >= *v10)
        {
LABEL_83:
          v9 = v10;
        }
      }

LABEL_84:
      if (!v7)
      {
        goto LABEL_100;
      }

      goto LABEL_85;
    }

    v34 = *(v10 + 2);
    if (v32 <= v34 && (v32 < v34 || *v9 < *v10))
    {
      goto LABEL_84;
    }

    if (v31 > v34)
    {
LABEL_77:
      v9 = v12;
      if (!v7)
      {
        goto LABEL_100;
      }

      goto LABEL_85;
    }

    if (v31 < v34)
    {
      goto LABEL_83;
    }

    if (*v12 >= *v10)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }

    if (!v7)
    {
LABEL_100:
      v41 = *result;
      *result = *v9;
      *v9 = v41;
      goto LABEL_101;
    }

LABEL_85:
    if (v6)
    {
      v35 = result;
      v36 = a3 >> 3;
      do
      {
        v37 = *v35;
        *v35 = *v9;
        v35 += 8;
        *v9 = v37;
        v9 += 8;
        --v36;
      }

      while (v36);
    }

    else
    {
      v38 = a3;
      v39 = result;
      do
      {
        v40 = *v39;
        *v39++ = *v9;
        *v9++ = v40;
        --v38;
      }

      while (v38);
    }

LABEL_101:
    v42 = 0;
    v43 = &result[a3];
    v44 = &result[(a2 - 1) * a3];
    v45 = v44;
    v46 = &result[a3];
    v47 = &result[a3];
LABEL_102:
    while (v46 <= v45)
    {
      v48 = *(v46 + 2);
      v49 = *(result + 2);
      if (v48 > v49)
      {
        break;
      }

      if (v48 >= v49)
      {
        if (*v46 == *result)
        {
          if (v7)
          {
            v50 = 0;
            if (v6)
            {
              do
              {
                v51 = *&v47[8 * v50];
                *&v47[8 * v50] = *&v46[8 * v50];
                *&v46[8 * v50++] = v51;
              }

              while (v8 != v50);
            }

            else
            {
              do
              {
                v52 = v47[v50];
                v47[v50] = v46[v50];
                v46[v50++] = v52;
              }

              while (a3 != v50);
            }
          }

          else
          {
            v62 = *v47;
            *v47 = *v46;
            *v46 = v62;
          }

          v47 += a3;
          v42 = 1;
        }

        else if (*v46 > *result)
        {
          break;
        }
      }

      v46 += a3;
    }

    while (v46 <= v45)
    {
      v54 = *(v45 + 2);
      v55 = *(result + 2);
      if (v54 <= v55)
      {
        if (v54 < v55)
        {
          goto LABEL_128;
        }

        if (*v45 == *result)
        {
          if (v7)
          {
            v56 = 0;
            if (v6)
            {
              do
              {
                v57 = *&v45[8 * v56];
                *&v45[8 * v56] = *&v44[8 * v56];
                *&v44[8 * v56++] = v57;
              }

              while (v8 != v56);
            }

            else
            {
              do
              {
                v58 = v45[v56];
                v45[v56] = v44[v56];
                v44[v56++] = v58;
              }

              while (a3 != v56);
            }
          }

          else
          {
            v53 = *v45;
            *v45 = *v44;
            *v44 = v53;
          }

          v44 += v4;
          v42 = 1;
        }

        else if (*v45 <= *result)
        {
LABEL_128:
          if (v7)
          {
            v59 = 0;
            if (v6)
            {
              do
              {
                v60 = *&v46[8 * v59];
                *&v46[8 * v59] = *&v45[8 * v59];
                *&v45[8 * v59++] = v60;
              }

              while (v8 != v59);
            }

            else
            {
              do
              {
                v61 = v46[v59];
                v46[v59] = v45[v59];
                v45[v59++] = v61;
              }

              while (a3 != v59);
            }
          }

          else
          {
            v63 = *v46;
            *v46 = *v45;
            *v45 = v63;
          }

          v46 += a3;
          v45 += v4;
          v42 = 1;
          goto LABEL_102;
        }
      }

      v45 += v4;
    }

    v64 = &result[a2 * a3];
    if (!v42)
    {
      break;
    }

    v65 = v46 - v47;
    if (v47 - result >= v46 - v47)
    {
      v66 = v46 - v47;
    }

    else
    {
      v66 = v47 - result;
    }

    if (v66)
    {
      if (v6)
      {
        v67 = &v46[-v66];
        v68 = v66 >> 3;
        v69 = result;
        do
        {
          v70 = *v69;
          *v69 = *v67;
          v69 += 8;
          *v67 = v70;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v71 = -v66;
        v72 = result;
        do
        {
          v73 = *v72;
          *v72++ = v46[v71];
          v46[v71] = v73;
          v74 = __CFADD__(v71++, 1);
        }

        while (!v74);
      }
    }

    v75 = v44 - v45;
    v76 = v64 - &v44[a3];
    if (v44 - v45 < v76)
    {
      v76 = v44 - v45;
    }

    if (v76)
    {
      if (v6)
      {
        v77 = &v64[-v76];
        v78 = v76 >> 3;
        do
        {
          v79 = *v46;
          *v46 = *v77;
          v46 += 8;
          *v77 = v79;
          v77 += 8;
          --v78;
        }

        while (v78);
      }

      else
      {
        v80 = -v76;
        do
        {
          v81 = *v46;
          *v46++ = v64[v80];
          v64[v80] = v81;
          v74 = __CFADD__(v80++, 1);
        }

        while (!v74);
      }
    }

    if (v65 > a3)
    {
      result = mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>();
    }

    if (v75 <= a3)
    {
      return result;
    }

    result = &v64[-v75];
    a2 = v75 / a3;
    v6 = (((v64 - v75) | a3) & 7) == 0;
    if ((((v64 - v75) | a3) & 7) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = v5;
    }

    if (a2 < 7)
    {
      goto LABEL_168;
    }
  }

  if ((a2 * a3) > a3)
  {
    v96 = result;
    do
    {
      if (v43 > result)
      {
        v97 = v96;
        v98 = v43;
        do
        {
          v99 = v98;
          v98 = (v98 + v4);
          v100 = v98[2];
          v101 = v99[2];
          if (v100 <= v101 && (v100 < v101 || *v98 <= *v99))
          {
            break;
          }

          if (v7)
          {
            v102 = 0;
            if (v6)
            {
              v103 = v98;
              do
              {
                v104 = *&v99[2 * v102];
                *&v99[2 * v102] = *v103;
                *v103++ = v104;
                ++v102;
              }

              while (v8 != v102);
            }

            else
            {
              v106 = a3;
              do
              {
                v107 = *(v99 + v102);
                *(v99 + v102) = *(v97 + v102);
                *(v97 + v102++) = v107;
                --v106;
              }

              while (v106);
            }
          }

          else
          {
            v105 = *v99;
            *v99 = *v98;
            *v98 = v105;
          }

          v97 = (v97 + v4);
        }

        while (v98 > result);
      }

      v43 += a3;
      v96 = (v96 + a3);
    }

    while (v43 < v64);
  }

  return result;
}

char *mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(char *result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_157:
    if ((a2 * a3) > a3)
    {
      v87 = &result[a2 * a3];
      v88 = &result[a3];
      v89 = result;
      do
      {
        if (v88 > result)
        {
          v90 = v89;
          v91 = v88;
          do
          {
            v92 = v91;
            v91 = (v91 + v4);
            if (*v91 <= *v92)
            {
              break;
            }

            if (v7)
            {
              v93 = 0;
              if (v6)
              {
                v94 = v91;
                do
                {
                  v95 = *&v92[2 * v93];
                  *&v92[2 * v93] = *v94;
                  *v94++ = v95;
                  ++v93;
                }

                while (a3 >> 3 != v93);
              }

              else
              {
                v97 = a3;
                do
                {
                  v98 = *(v92 + v93);
                  *(v92 + v93) = *(v90 + v93);
                  *(v90 + v93++) = v98;
                  --v97;
                }

                while (v97);
              }
            }

            else
            {
              v96 = *v92;
              *v92 = *v91;
              *v91 = v96;
            }

            v90 = (v90 + v4);
          }

          while (v91 > result);
        }

        v88 += a3;
        v89 = (v89 + a3);
      }

      while (v88 < v87);
    }
  }

  else
  {
    v8 = a3 >> 3;
    while (1)
    {
      v9 = &result[(a2 >> 1) * a3];
      if (a2 != 7)
      {
        v10 = &result[(a2 - 1) * a3];
        if (a2 <= 0x28)
        {
          v22 = *result;
          v33 = *v9;
          v13 = result;
          v42 = *v10;
        }

        else
        {
          v11 = (a2 >> 3) * a3;
          v12 = 2 * v11;
          v13 = &result[2 * v11];
          v14 = *result;
          v15 = *&result[v11];
          v16 = *v13;
          if (*result >= *v13)
          {
            v17 = *v13;
          }

          else
          {
            v17 = *result;
          }

          if (v14 >= v16)
          {
            v18 = &result[2 * v11];
          }

          else
          {
            v18 = result;
          }

          if (v15 > v16)
          {
            v17 = *&result[v11];
            v18 = &result[v11];
          }

          if (v14 <= v16)
          {
            v19 = *v13;
          }

          else
          {
            v19 = *result;
          }

          if (v14 >= v16)
          {
            v13 = result;
          }

          v20 = v15 < v16;
          if (v15 >= v16)
          {
            v21 = v19;
          }

          else
          {
            v21 = *&result[v11];
          }

          if (v20)
          {
            v13 = &result[v11];
          }

          if (v14 < v15)
          {
            v22 = v21;
          }

          else
          {
            v22 = v17;
          }

          if (v14 >= v15)
          {
            v13 = v18;
          }

          v23 = -v11;
          v24 = &v9[-v11];
          v25 = &v9[v11];
          v26 = *v24;
          v27 = *v9;
          v28 = *v25;
          if (*v24 >= *v25)
          {
            v29 = *v25;
          }

          else
          {
            v29 = *v24;
          }

          if (v26 >= v28)
          {
            v30 = v25;
          }

          else
          {
            v30 = v24;
          }

          if (v27 > v28)
          {
            v29 = *v9;
            v30 = &result[(a2 >> 1) * a3];
          }

          if (v26 <= v28)
          {
            v31 = *v25;
          }

          else
          {
            v31 = *v24;
          }

          if (v26 >= v28)
          {
            v25 = v24;
          }

          if (v27 >= v28)
          {
            v32 = v31;
          }

          else
          {
            v32 = *v9;
          }

          if (v27 >= v28)
          {
            v9 = v25;
          }

          if (v26 < v27)
          {
            v33 = v32;
          }

          else
          {
            v33 = v29;
          }

          if (v26 >= v27)
          {
            v9 = v30;
          }

          v34 = &v10[-v12];
          v35 = &v10[v23];
          v36 = *v34;
          v37 = *v35;
          v38 = *v10;
          if (*v34 >= *v10)
          {
            v39 = *v10;
          }

          else
          {
            v39 = *v34;
          }

          if (v36 >= v38)
          {
            v40 = &result[(a2 - 1) * a3];
          }

          else
          {
            v40 = v34;
          }

          if (v37 > v38)
          {
            v39 = *v35;
            v40 = v35;
          }

          if (v36 <= v38)
          {
            v41 = *v10;
          }

          else
          {
            v41 = *v34;
          }

          if (v36 >= v38)
          {
            v10 = v34;
          }

          if (v37 >= v38)
          {
            v42 = v41;
          }

          else
          {
            v42 = *v35;
          }

          if (v37 < v38)
          {
            v10 = v35;
          }

          if (v36 >= v37)
          {
            v42 = v39;
            v10 = v40;
          }
        }

        if (v22 >= v42)
        {
          v43 = v10;
        }

        else
        {
          v43 = v13;
        }

        if (v33 > v42)
        {
          v43 = v9;
        }

        if (v22 >= v42)
        {
          v10 = v13;
        }

        if (v33 >= v42)
        {
          v9 = v10;
        }

        if (v22 >= v33)
        {
          v9 = v43;
        }
      }

      if (v7)
      {
        if (v6)
        {
          v44 = result;
          v45 = a3 >> 3;
          do
          {
            v46 = *v44;
            *v44 = *v9;
            v44 += 8;
            *v9 = v46;
            v9 += 8;
            --v45;
          }

          while (v45);
        }

        else
        {
          v48 = a3;
          v49 = result;
          do
          {
            v50 = *v49;
            *v49++ = *v9;
            *v9++ = v50;
            --v48;
          }

          while (v48);
        }
      }

      else
      {
        v47 = *result;
        *result = *v9;
        *v9 = v47;
      }

      v51 = 0;
      v52 = &result[a3];
      v53 = &result[(a2 - 1) * a3];
      v54 = v53;
      v55 = &result[a3];
      v56 = &result[a3];
LABEL_96:
      while (v55 <= v54 && *v55 <= *result)
      {
        if (*v55 == *result)
        {
          if (v7)
          {
            v57 = 0;
            if (v6)
            {
              do
              {
                v58 = *&v56[8 * v57];
                *&v56[8 * v57] = *&v55[8 * v57];
                *&v55[8 * v57++] = v58;
              }

              while (v8 != v57);
            }

            else
            {
              do
              {
                v59 = v56[v57];
                v56[v57] = v55[v57];
                v55[v57++] = v59;
              }

              while (a3 != v57);
            }
          }

          else
          {
            v67 = *v56;
            *v56 = *v55;
            *v55 = v67;
          }

          v56 += a3;
          v51 = 1;
        }

        v55 += a3;
      }

      while (v55 <= v54)
      {
        if (*v54 < *result)
        {
          if (v7)
          {
            v64 = 0;
            if (v6)
            {
              do
              {
                v65 = *&v55[8 * v64];
                *&v55[8 * v64] = *&v54[8 * v64];
                *&v54[8 * v64++] = v65;
              }

              while (v8 != v64);
            }

            else
            {
              do
              {
                v66 = v55[v64];
                v55[v64] = v54[v64];
                v54[v64++] = v66;
              }

              while (a3 != v64);
            }
          }

          else
          {
            v68 = *v55;
            *v55 = *v54;
            *v54 = v68;
          }

          v55 += a3;
          v54 += v4;
          v51 = 1;
          goto LABEL_96;
        }

        if (*v54 == *result)
        {
          if (v7)
          {
            v60 = 0;
            if (v6)
            {
              do
              {
                v61 = *&v54[8 * v60];
                *&v54[8 * v60] = *&v53[8 * v60];
                *&v53[8 * v60++] = v61;
              }

              while (v8 != v60);
            }

            else
            {
              do
              {
                v62 = v54[v60];
                v54[v60] = v53[v60];
                v53[v60++] = v62;
              }

              while (a3 != v60);
            }
          }

          else
          {
            v63 = *v54;
            *v54 = *v53;
            *v53 = v63;
          }

          v53 += v4;
          v51 = 1;
        }

        v54 += v4;
      }

      v69 = &result[a2 * a3];
      if (!v51)
      {
        break;
      }

      v70 = v55 - v56;
      if (v56 - result >= v55 - v56)
      {
        v71 = v55 - v56;
      }

      else
      {
        v71 = v56 - result;
      }

      if (v71)
      {
        if (v6)
        {
          v72 = &v55[-v71];
          v73 = v71 >> 3;
          v74 = result;
          do
          {
            v75 = *v74;
            *v74 = *v72;
            v74 += 8;
            *v72 = v75;
            v72 += 8;
            --v73;
          }

          while (v73);
        }

        else
        {
          v76 = -v71;
          v77 = result;
          do
          {
            v78 = *v77;
            *v77++ = v55[v76];
            v55[v76] = v78;
            v79 = __CFADD__(v76++, 1);
          }

          while (!v79);
        }
      }

      v80 = v53 - v54;
      v81 = v69 - &v53[a3];
      if (v53 - v54 < v81)
      {
        v81 = v53 - v54;
      }

      if (v81)
      {
        if (v6)
        {
          v82 = &v69[-v81];
          v83 = v81 >> 3;
          do
          {
            v84 = *v55;
            *v55 = *v82;
            v55 += 8;
            *v82 = v84;
            v82 += 8;
            --v83;
          }

          while (v83);
        }

        else
        {
          v85 = -v81;
          do
          {
            v86 = *v55;
            *v55++ = v69[v85];
            v69[v85] = v86;
            v79 = __CFADD__(v85++, 1);
          }

          while (!v79);
        }
      }

      if (v70 > a3)
      {
        result = mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>();
      }

      if (v80 <= a3)
      {
        return result;
      }

      result = &v69[-v80];
      a2 = v80 / a3;
      v6 = (((v69 - v80) | a3) & 7) == 0;
      if ((((v69 - v80) | a3) & 7) != 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = v5;
      }

      if (a2 < 7)
      {
        goto LABEL_157;
      }
    }

    if ((a2 * a3) > a3)
    {
      v99 = result;
      do
      {
        if (v52 > result)
        {
          v100 = v99;
          v101 = v52;
          do
          {
            v102 = v101;
            v101 = (v101 + v4);
            if (*v101 <= *v102)
            {
              break;
            }

            if (v7)
            {
              v103 = 0;
              if (v6)
              {
                v104 = v101;
                do
                {
                  v105 = *&v102[2 * v103];
                  *&v102[2 * v103] = *v104;
                  *v104++ = v105;
                  ++v103;
                }

                while (v8 != v103);
              }

              else
              {
                v107 = a3;
                do
                {
                  v108 = *(v102 + v103);
                  *(v102 + v103) = *(v100 + v103);
                  *(v100 + v103++) = v108;
                  --v107;
                }

                while (v107);
              }
            }

            else
            {
              v106 = *v102;
              *v102 = *v101;
              *v101 = v106;
            }

            v100 = (v100 + v4);
          }

          while (v101 > result);
        }

        v52 += a3;
        v99 = (v99 + a3);
      }

      while (v52 < v69);
    }
  }

  return result;
}

void FstSearchLateLatticeHashBackoff::checkSearchParametersValidityForArcGraph(FstSearchLateLatticeHashBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

void FstSearchLateLatticeHashBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    v9 = a4;
    LODWORD(v11) = 0;
    v12 = a2;
    v13 = a2;
    do
    {
      v14 = (*(a1 + 160) + 36 * v13);
      if (*v14 == 16777209)
      {
        v11 = v11;
      }

      else
      {
        v11 = (v11 + 1);
      }

      v13 = v14[5];
    }

    while (v13 != -1);
    v15 = *(a3 + 12);
    if (v11 > v15)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v11 - v15, 0);
    }

    v16 = *(a3 + 8);
    if (v16 < v11)
    {
      v17 = v11 - v16;
      v18 = *a3 + 32 * v16;
      do
      {
        *v18 = 0x3FFFFAFFFFFFLL;
        *(v18 + 8) = xmmword_26286CC40;
        *(v18 + 24) = 0x1F0000001FLL;
        v18 += 32;
        --v17;
      }

      while (v17);
    }

    *(a3 + 8) = v11;
    if (v11)
    {
      v19 = *(a1 + 160);
      v20 = -16;
      do
      {
        v21 = (v19 + 36 * v12);
        v22 = v21[1];
        if (*v21 == 16777209)
        {
          if (v9)
          {
            v20 = (v22 - 1) / 2 + 1;
          }

          else
          {
            v20 = v22 + 1;
          }
        }

        else
        {
          if (v9)
          {
            v22 = (v22 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(*(a1 + 40), *v21, a3, a4, a5, a6, a7, a8, v26);
          if (v20 == -16)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = v20;
          }

          v24 = v26[1];
          v11 = (v11 - 1);
          v25 = *a3 + 32 * v11;
          *v25 = v26[0];
          *(v25 + 4) = v24;
          *(v25 + 8) = v27;
          *(v25 + 24) = v22 + 1;
          *(v25 + 28) = v23;
          v19 = *(a1 + 160);
          v20 = -16;
        }

        v12 = *(v19 + 36 * v12 + 20);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchLateLatticeHashBackoff::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLateLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = *(a1 + 160) + 36 * v15;
  return (*(v22 + 16) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

int64x2_t FstSearchLateLatticeHash::advanceDeltas(FstSearchLateLatticeHash *this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v95[0] = a2;
  v93 = 0u;
  v94 = 0u;
  SnapTime::recordTime(&v93, 1, 0, 0, 0);
  v91.n128_u64[0] = 0xFFFFFFFF00000000;
  v91.n128_u32[2] = -1;
  v91.n128_u16[6] = -2;
  v92 = 0;
  *(this + 58) = a3;
  v10 = (this + 232);
  v11 = *(this + 2);
  v12 = *(this + 50);
  if (v12)
  {
    v70 = a4;
    v71 = v8;
    for (i = 0; i < v12; ++i)
    {
      v14 = *(this + 24) + 24 * i;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12)) + v17;
          v19 = *(this + 58);
          if (v18 - v11 <= v19)
          {
            if (v19 > v18)
            {
              *v10 = v18;
            }

            v20 = (*(this + 24) + 24 * i);
            v21 = v20[1].n128_u64[0];
            v91 = *v20;
            v92 = v21;
            v91.n128_u32[0] = v18;
            FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v91);
          }
        }

        v22 = v15;
        do
        {
          v23 = *(this + 5);
          v24 = *(v23 + 152);
          v25 = *(v24 + 4 * v22);
          v26 = *(v24 + 4 * (v22 + 1));
          v27 = *(v23 + 140);
          if (v27 <= v26)
          {
            if (v27 <= v15 && (*(this + 356) & 1) != 0)
            {
              v34 = (v25 & 0xFFFFF) <= 0xFFFF3 ? v25 & 0xFFFFF : v25 & 0xFFFFF | 0xF00000;
              if (v34 != 16777210)
              {
                DgnString::DgnString(&v88);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v34, &v88, v35, v36, v37, v38, v39);
                v44 = &unk_26287F8B0;
                if (v88.i32[2])
                {
                  v44 = v88.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v40, v41, v42, v43, v15, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 8), v44);
                MiniFst::seed(this + 240, *(*(this + 24) + 24 * i), *(*(this + 24) + 24 * i + 20), *(*(this + 24) + 24 * i + 8), v26);
                DgnString::~DgnString(&v88);
              }
            }
          }

          else
          {
            v28 = (v25 >> 20) & 0x3FF;
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v24 + 4 * v22));
            v30 = *(this + 24) + 24 * i;
            v31 = ScoreNoBackoff + v28 + *v30;
            v32 = *(this + 58);
            if (v31 - v11 <= v32)
            {
              if (v32 > v31)
              {
                *v10 = v31;
              }

              v33 = *(v30 + 16);
              v91 = *v30;
              HIDWORD(v92) = HIDWORD(v33);
              v91.n128_u64[0] = __PAIR64__(v26, v31);
              v91.n128_u16[6] = v25;
              LODWORD(v92) = v33 + v28;
              FstSearchLateLatticeHashBackoff::maybeInsertHashedToken(this, &v91);
            }
          }

          v22 += 2;
        }

        while ((v25 & 0x80000000) == 0);
        v12 = *(this + 50);
      }
    }

    a3 = *v10;
    v8 = v71;
    a4 = v70;
  }

  v90 = a3 + v11;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, this + 58, v11, v8);
  }

  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  v88 = vsubq_s64(v88, v93);
  v89 = vsubq_s64(v89, v94);
  v45 = *(this + 13);
  v46 = vaddq_s64(v45[1], v89);
  *v45 = vaddq_s64(*v45, v88);
  v45[1] = v46;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v90);
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v47 = vsubq_s64(v84, v86);
  v48 = *(this + 13);
  v49 = v48[3];
  v50 = vaddq_s64(v48[2], v47);
  v84 = v47;
  v85 = vsubq_s64(v85, v87);
  v51 = vaddq_s64(v49, v85);
  v48[2] = v50;
  v48[3] = v51;
  v82 = 0u;
  v83 = 0u;
  SnapTime::recordTime(&v82, 1, 0, 0, 0);
  v52 = *(this + 24);
  v53 = *(this + 26);
  *(this + 24) = v53;
  *(this + 26) = v52;
  LODWORD(v52) = *(this + 51);
  v54 = *(this + 27);
  *(this + 25) = v54;
  *(this + 54) = 0;
  *(this + 55) = v52;
  v55 = *(this + 6);
  if (v55 && v55 < v54)
  {
    mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(v53, v55, v54);
  }

  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v56 = vsubq_s64(v80, v82);
  v57 = *(this + 13);
  v58 = v57[5];
  v59 = vaddq_s64(v57[4], v56);
  v80 = v56;
  v81 = vsubq_s64(v81, v83);
  v60 = vaddq_s64(v58, v81);
  v57[4] = v59;
  v57[5] = v60;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v61 = vsubq_s64(v76, v78);
  v62 = *(this + 13);
  v63 = v62[9];
  v64 = vaddq_s64(v62[8], v61);
  v76 = v61;
  v77 = vsubq_s64(v77, v79);
  v65 = vaddq_s64(v63, v77);
  v62[8] = v64;
  v62[9] = v65;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  *(this + 54) = 0;
  v66 = *(this + 50);
  *(this + 38) = v66;
  if (a4)
  {
    *(a4 + 2) += v66;
    if (*(a4 + 2) > v66)
    {
      LODWORD(v66) = *(a4 + 2);
    }

    *(a4 + 2) = v66;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLateLatticeHash::seedFromMiniFst(this, v95);
  }

  if (a5)
  {
    FstSearchLateLatticeHashBackoff::propagateNulls(this, v90, v8, a4);
  }

  *(this + 56) = v8;
  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v67 = *(this + 13);
  result = vaddq_s64(v67[6], vsubq_s64(v72, v74));
  v69 = vaddq_s64(v67[7], vsubq_s64(v73, v75));
  v67[6] = result;
  v67[7] = v69;
  return result;
}

uint64_t PelScoreCache::getScoreNoBackoff(PelScoreCache *this, uint64_t a2)
{
  if (*(this + 494) == 1)
  {
    v4 = *(*(this + 8) + 2 * a2);
    if (v4 == 20046)
    {
      if (*(this + 495))
      {
        v4 = 19999;
      }

      else if (*(this + 492) == 1)
      {
        v6 = *(**(this + 3) + 2 * a2);
        if (*(*(this + 18) + 4 * v6) == -1)
        {
          PelScoreCache::computeGenScores(this, *(**(this + 3) + 2 * a2));
        }

        v4 = PelScoreCache::computePelScoreFromGenScores(this, a2, v6);
      }

      else
      {
        v4 = PelScoreCache::computePelScore(this, a2);
      }
    }
  }

  else
  {
    v4 = PelScoreCache::computePelScoreNoCache(this, a2);
  }

  return (v4 - *(this + 64));
}

uint64_t FstSearchLateLatticeHash::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (*(v2 + 256) + v4);
        v7 = *v6;
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[6];
        v11 = v6[7];
        LODWORD(v6) = v6[2];
        v23[0] = 0;
        v23[1] = 0;
        v12 = -2 - v6;
        if (v11 == 16777213)
        {
          v13 = (*(v2 + 160) + 36 * v12);
          v11 = 16777209;
          if (*v13 == 16777209)
          {
            v12 = *(*(v2 + 176) + 16 * v13[2] + 12);
          }
        }

        v14 = *a2;
        v15 = *(v2 + 168);
        if (v15 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v15) = *(v2 + 168);
        }

        v16 = *(v2 + 160);
        v17 = v16 + 36 * v15;
        *v17 = v11;
        *(v17 + 4) = v14;
        *(v17 + 8) = 0xFFFFFFFFLL;
        *(v17 + 16) = v7;
        *(v17 + 20) = v12;
        *(v17 + 24) = v8;
        *(v17 + 28) = v9;
        *(v17 + 32) = -2;
        v18 = *(v2 + 168);
        *(v2 + 168) = v18 + 1;
        *(v16 + 36 * v18 + 12) = 1;
        v19 = *(v2 + 200);
        if (v19 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v19) = *(v2 + 200);
        }

        v20 = *(v2 + 192) + 24 * v19;
        *v20 = v7;
        *(v20 + 4) = v10;
        *(v20 + 8) = v18;
        *(v20 + 12) = -2;
        *(v20 + 16) = v8;
        *(v20 + 20) = v9;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
        ++v5;
        v21 = *(v2 + 264);
        if (v21 >= *(v2 + 20))
        {
          v21 = *(v2 + 20);
        }

        v4 += 36;
      }

      while (v5 < v21);
    }
  }

  return this;
}

void sub_262623AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLateLatticeHash::vite(int64x2_t **this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  FstSearchLateLatticeHash::advanceDeltas(this, a2, a3, a4, a5);
  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v9 = 0u;
  v10 = 0u;
  SnapTime::recordTime(&v9, 1, 0, 0, 0);
  v6 = this[13];
  result = vaddq_s64(v6[14], vsubq_s64(v9, v11));
  v8 = vaddq_s64(v6[15], vsubq_s64(v10, v12));
  v6[14] = result;
  v6[15] = v8;
  return result;
}

int64x2_t FstSearchLateLatticeHash::reset(FstSearchLateLatticeHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLateLatticeHash::doFrame(int64x2_t **this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLateLatticeHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLateLatticeHash::beginTopRecPassSyncRecog(FstSearchLateLatticeHash *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 240, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLateLatticeHash::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(this);
  FstSearchLateLatticeHash::generateTraceTokensForLateLattice(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

uint64_t FstSearchLateLatticeHash::generateTraceTokensForLateLattice(FstSearchLateLatticeHash *this)
{
  v1 = this;
  v128[1] = 0;
  v129 = 0;
  v130 = 0;
  v128[0] = 0;
  FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(this, &v129, v128);
  v126 = 0;
  v127 = 0;
  v124 = 0;
  v125 = 0;
  v123[0] = 0;
  v123[1] = 0;
  v122 = 1879048192;
  v2 = (*(*v1 + 80))(v1, &v126, &v124, &v122, v123);
  v9 = *(v1 + 7);
  v10 = *(v1 + 2);
  v119 = -1;
  v121 = 256;
  v120 = *(v1 + 34);
  if (v2)
  {
    v117 = 0;
    v118 = 0;
    v11 = *(v1 + 42);
    if (v11)
    {
      v12 = 0;
      v102 = v10;
      v103 = v9;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v11;
            v13 = *(v1 + 20);
            if (*(v126 + v11))
            {
              break;
            }

            *(v13 + 36 * v11 + 8) = -1;
            if (!v11)
            {
              goto LABEL_76;
            }
          }

          v14 = (v13 + 36 * v11);
          v15 = *v14;
          v16 = *(v1 + 6);
          if (*(v16 + 388) > v15 && *(*(v16 + 104) + v15))
          {
            v17 = *(*(v16 + 72) + 2 * *(*(v16 + 48) + 4 * v15));
          }

          else
          {
            v17 = 0;
          }

          v18 = *(v1 + 11);
          v19 = *(v18 + 4 * v14[1]);
          v20 = *(v1 + 22);
          v21 = (v20 + 16 * v14[2]);
          v22 = *(v1 + 3);
          v23 = *(v123[0] + 4 * v11);
          HIWORD(v119) = v17;
          v107 = v21;
          v24 = v21[1].u32[1];
          if ((v24 & 0x80000000) == 0)
          {
            break;
          }

          v14[2] = v12;
          if (v12 == HIDWORD(v118))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
            v12 = v118;
          }

          *(v117 + v12) = *v107->i8;
          v12 = v118 + 1;
          LODWORD(v118) = v118 + 1;
          *(*(v1 + 20) + 36 * v11 + 12) = 1;
          if (!v11)
          {
            goto LABEL_76;
          }
        }

        v25 = v13 + 36 * v24;
        v26 = *(v25 + 4);
        v27 = v26 ? *(v129 + 4 * (v26 - 1)) : 0;
        v112 = v22 + v122 - v23;
        v105 = (v20 + 16 * *(v25 + 8));
        v106 = v19 + v107->i32[0] - *(v18 + 4 * v26) - v105->i32[0];
        v104 = v105->i32[0] - *(v128[0] + 4 * v26);
        v28 = v12;
        v109 = v24;
        if (v27 < *(v129 + 4 * v26))
        {
          break;
        }

LABEL_42:
        if (v12 >= v28)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 150, "fst/fstsrch", 2, "%s", v7, v8, &unk_26287F8B0);
          v28 = v118;
        }

        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v117 + 16 * v12, v28 - v12, 16);
        v43 = v12 + 1;
        v44 = v118;
        if (v43 < v118)
        {
          v45 = 16 * (v12 + 1);
          v46 = v12;
          do
          {
            if (*(v117 + v45 + 8) != *(v117 + 4 * v46 + 2))
            {
              *(v117 + ++v46) = *(v117 + v45);
              v44 = v118;
            }

            ++v43;
            v45 += 16;
          }

          while (v43 < v44);
          LODWORD(v43) = v46 + 1;
        }

        v47 = v117;
        if (HIDWORD(v118) < v43)
        {
          v115 = 0;
          HIDWORD(v118) = realloc_array(v117, &v115, 16 * v43, 16 * v44, 16 * v44, 1) >> 4;
          v47 = v115;
          v117 = v115;
          v44 = v118;
        }

        if (v44 < v43)
        {
          v48 = v43 - v44;
          v49 = &v47[16 * v44];
          do
          {
            *v49 = xmmword_26287F850;
            v49 += 16;
            --v48;
          }

          while (v48);
        }

        LODWORD(v118) = v43;
        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(&v47[16 * v12], v43 - v12, 16);
        v50 = 16 * v12;
        v51 = *(v117 + v50) + v10;
        if (v51 >= v112)
        {
          v51 = v112;
        }

        v52 = v118;
        v53 = *(v1 + 5) + v12;
        if (v118 < v53)
        {
          v53 = v118;
        }

        v54 = *(v1 + 20);
        *(v54 + 36 * v11 + 8) = v12;
        if (v12 < v53)
        {
          while (*(v117 + v50) <= v51)
          {
            v55 = *(v117 + v50 + 12);
            if ((v55 & 0x80000000) == 0)
            {
              *(v126 + v55) = 1;
              v56 = v55 == v109 ? 0 : v104 + v9;
              v57 = v56 + v106 + *(v123[0] + 4 * v11);
              if (*(v123[0] + 4 * v55) > v57)
              {
                *(v123[0] + 4 * v55) = v57;
              }
            }

            ++v12;
            v50 += 16;
            if (v53 == v12)
            {
              v12 = v53;
              break;
            }
          }

          v54 = *(v1 + 20);
          v52 = v118;
        }

        *(v54 + 36 * v11 + 12) = v12 - *(v54 + 36 * v11 + 8);
        if (HIDWORD(v118) < v12)
        {
          v115 = 0;
          HIDWORD(v118) = realloc_array(v117, &v115, 16 * v12, 16 * v52, 16 * v52, 1) >> 4;
          v117 = v115;
          v52 = v118;
        }

        if (v52 < v12)
        {
          v58 = v12 - v52;
          v59 = v117 + 16 * v52;
          do
          {
            *v59++ = xmmword_26287F850;
            --v58;
          }

          while (v58);
        }

        LODWORD(v118) = v12;
        if (!v11)
        {
LABEL_76:
          v60 = v117;
          v61 = HIDWORD(v118);
          v62 = *(v1 + 42);
          goto LABEL_78;
        }
      }

      v108 = v11;
      v111 = v104 + v9;
      v110 = v19 + v107->i32[0] - v105->i32[0];
      v29 = 36 * v27;
      while (1)
      {
        if (v24 == v27)
        {
          v30 = 0;
        }

        else
        {
          v30 = v111;
        }

        v31 = *(v1 + 20);
        v32 = (*(v1 + 22) + 16 * *(v31 + v29 + 8));
        if ((v110 + v30 + *v32) <= v112)
        {
          v33 = v1;
          v34 = *(v31 + 36 * v108);
          v35 = *(v31 + v29);
          v36 = v35 != 16777209 && ArcGraph::lexToCWID(v33[5], *(v31 + v29), v3, v4, v5, v6, v7, v8) >> 25 != 126;
          if (v34 == 16777209)
          {
            v1 = v33;
            v24 = v109;
            if (v36)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v37 = v34 == 16777214 || v35 == 16777213;
            v1 = v33;
            v24 = v109;
            if (!v37)
            {
LABEL_35:
              isLexPelPhnMatch = FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(v1, v27, &v119);
              v1 = v33;
              v24 = v109;
              if (isLexPelPhnMatch)
              {
                v39 = v118;
                if (v118 == HIDWORD(v118))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(&v117, 1, 1);
                  v39 = v118;
                  v1 = v33;
                  v24 = v109;
                }

                *(v117 + v39) = *v32;
                v40 = v118;
                LODWORD(v118) = v118 + 1;
                v41 = (v117 + 16 * v40);
                v41[1].i32[1] = v27;
                *v41 = vadd_s32(vsub_s32(vadd_s32(*v107, vdup_n_s32(v30)), *v105), *v41);
                v42 = *(*(v1 + 20) + 36 * v108);
                if (v42 != 16777209)
                {
                  v41[1].i32[0] = v42 + 2 * v41[1].i32[0] + 1;
                }
              }
            }
          }
        }

        ++v27;
        v29 += 36;
        if (v27 >= *(v129 + 4 * v26))
        {
          v28 = v118;
          v10 = v102;
          v9 = v103;
          v11 = v108;
          goto LABEL_42;
        }
      }
    }

    v62 = 0;
    v12 = 0;
    v61 = 0;
    v60 = 0;
LABEL_78:
    v63 = *(v1 + 22);
    *(v1 + 22) = v60;
    v117 = v63;
    v64 = *(v1 + 47);
    *(v1 + 46) = v12;
    *(v1 + 47) = v61;
    LODWORD(v118) = 0;
    HIDWORD(v118) = v64;
    v116 = 0;
    v115 = 0;
    if (v62)
    {
      v65 = MemChunkAlloc(4 * v62, 0);
      v115 = v65;
      v116 = v62;
      if (*(v1 + 42))
      {
        v66 = 0;
        v67 = 0;
        v62 = 0;
        do
        {
          v68 = *(v1 + 20);
          v69 = (v68 + v66);
          if (*(v68 + v66 + 8) == -1)
          {
            *(v65 + v67) = -1;
          }

          else
          {
            if (v67 != v62)
            {
              v70 = v68 + 36 * v62;
              v71 = *v69;
              v72 = v69[1];
              *(v70 + 32) = *(v69 + 16);
              *v70 = v71;
              *(v70 + 16) = v72;
            }

            *(v65 + v67) = v62++;
          }

          ++v67;
          v73 = *(v1 + 42);
          v66 += 36;
        }

        while (v67 < v73);
        v74 = *(v1 + 43);
        if (v62 > v74)
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v1 + 160, v62 - v74, 0);
          LODWORD(v73) = *(v1 + 42);
        }

        if (v73 < v62)
        {
          v75 = v62 - v73;
          v76 = (*(v1 + 20) + 36 * v73 + 32);
          do
          {
            *(v76 - 2) = xmmword_26287F860;
            *(v76 - 1) = xmmword_26287F870;
            *v76 = -2;
            v76 += 18;
            --v75;
          }

          while (v75);
        }
      }

      else
      {
        v62 = 0;
      }
    }

    *(v1 + 42) = v62;
    v77 = *(v1 + 46);
    if (v77)
    {
      v78 = v115;
      v79 = (*(v1 + 22) + 12);
      do
      {
        v80 = *v79;
        if ((v80 & 0x80000000) == 0)
        {
          *v79 = v78[v80];
        }

        v79 += 4;
        --v77;
      }

      while (v77);
    }

    v81 = *(v1 + 50);
    v113 = 0;
    v114 = 0;
    if (v81)
    {
      v131[0] = 0;
      v82 = realloc_array(0, v131, 24 * v81, 0, 0, 1) / 0x18;
      HIDWORD(v114) = v82;
      v83 = v131[0];
      v113 = v131[0];
      v84 = v131[0] + 16;
      v85 = v81;
      do
      {
        *(v84 - 2) = 0xFFFFFFFF00000000;
        *(v84 - 2) = -1;
        *(v84 - 2) = -2;
        *v84 = 0;
        v84 += 3;
        --v85;
      }

      while (v85);
    }

    else
    {
      v83 = 0;
      LODWORD(v82) = 0;
    }

    LODWORD(v114) = v81;
    v86 = *(v1 + 50);
    if (v86)
    {
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = v115;
      do
      {
        v91 = *(v1 + 38);
        if (v89 < v91 && v88 == v91)
        {
          *(v1 + 38) = v89;
        }

        v93 = (*(v1 + 24) + v87);
        v94 = *(v93 + 2);
        if (v94 == -1 || v90[v94] != -1)
        {
          v95 = &v83[3 * v89];
          v96 = *v93;
          v95[2] = *(v93 + 2);
          *v95 = v96;
          v97 = *(*(v1 + 24) + v87 + 8);
          if (v97 != -1)
          {
            LODWORD(v97) = v90[v97];
          }

          *(v95 + 2) = v97;
          ++v89;
          v86 = *(v1 + 50);
        }

        ++v88;
        v87 += 24;
      }

      while (v88 < v86);
    }

    else
    {
      v89 = 0;
    }

    if (v89 < *(v1 + 38))
    {
      *(v1 + 38) = v89;
    }

    if (v82 < v89)
    {
      v131[0] = 0;
      v82 = realloc_array(v83, v131, 24 * v89, 24 * v81, 24 * v81, 1) / 0x18;
      v83 = v131[0];
      LODWORD(v81) = v114;
    }

    if (v81 < v89)
    {
      v98 = v89 - v81;
      v99 = &v83[3 * v81 + 2];
      do
      {
        *(v99 - 2) = 0xFFFFFFFF00000000;
        *(v99 - 2) = -1;
        *(v99 - 2) = -2;
        *v99 = 0;
        v99 += 3;
        --v98;
      }

      while (v98);
    }

    v100 = *(v1 + 24);
    *(v1 + 24) = v83;
    v113 = v100;
    LODWORD(v100) = *(v1 + 51);
    *(v1 + 50) = v89;
    *(v1 + 51) = v82;
    LODWORD(v114) = 0;
    HIDWORD(v114) = v100;
    DgnIArray<Utterance *>::~DgnIArray(&v113);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v115);
    DgnIArray<Utterance *>::~DgnIArray(&v117);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v123);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v124);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v126);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v128);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v129);
}

void sub_262624734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a31);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v31 - 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v31 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v31 - 128);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v31 - 112);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHash::printSize(FstSearchLateLatticeHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v117);
  if (v118)
  {
    v16 = v117;
  }

  else
  {
    v16 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v16);
  DgnString::~DgnString(&v117);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F8B0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v117);
  if (v118)
  {
    v27 = v117;
  }

  else
  {
    v27 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v117);
  if (v118)
  {
    v32 = v117;
  }

  else
  {
    v32 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v117);
  if (v118)
  {
    v37 = v117;
  }

  else
  {
    v37 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v112 = a2;
  v113 = a6;
  v114 = a3;
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v117);
  if (v118)
  {
    v42 = v117;
  }

  else
  {
    v42 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v42, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v43 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  v44 = *(this + 42);
  v45 = 24 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 24 * (*(this + 43) - v44);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v117);
  if (v118)
  {
    v52 = v117;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v52, v47, v46, 0);
  DgnString::~DgnString(&v117);
  *a4 += v47;
  *a5 += v46;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 46);
  v55 = 16 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 16 * (*(this + 47) - v54);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v117);
  if (v118)
  {
    v62 = v117;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v62, v57, v56, 0);
  DgnString::~DgnString(&v117);
  *a4 += v57;
  *a5 += v56;
  v63 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  v64 = *(this + 50);
  v65 = 22 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 22 * (*(this + 51) - v64);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v117);
  if (v118)
  {
    v72 = v117;
  }

  else
  {
    v72 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v21, &unk_26287F8B0, v22, v22, v72, v67, v66, 0);
  DgnString::~DgnString(&v117);
  *a4 += v67;
  *a5 += v66;
  v73 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  v74 = *(this + 54);
  v75 = 22 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 22 * (*(this + 55) - v74);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v117);
  if (v118)
  {
    v82 = v117;
  }

  else
  {
    v82 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v21, &unk_26287F8B0, v22, v22, v82, v77, v76, 0);
  DgnString::~DgnString(&v117);
  *a4 += v77;
  *a5 += v76;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v117);
  if (v118)
  {
    v87 = v117;
  }

  else
  {
    v87 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26287F8B0, v22, v22, v87, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v117);
  if (v118)
  {
    v92 = v117;
  }

  else
  {
    v92 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &unk_26287F8B0, v22, v22, v92, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v117);
  if (v118)
  {
    v97 = v117;
  }

  else
  {
    v97 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26287F8B0, v22, v22, v97, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v98 = sizeObject(this + 240, 0);
  v99 = sizeObject(this + 240, 1);
  v100 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v117);
  if (v118)
  {
    v105 = v117;
  }

  else
  {
    v105 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v21, &unk_26287F8B0, v22, v22, v105, v98, v99, v100);
  DgnString::~DgnString(&v117);
  *a4 += v98;
  *a5 += v99;
  *v113 += v100;
  v115 = 0;
  v116 = 0;
  SearchItf::printSize(this, v112, v21, &v116, &v115, &v115);
  *a4 += v116;
  *a5 += v115;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v117);
  if (v118)
  {
    v110 = v117;
  }

  else
  {
    v110 = &unk_26287F8B0;
  }

  v111 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v114, &unk_26287F8B0, (35 - v114), (35 - v114), v110, *a4, *a5, *v113);
  DgnString::~DgnString(&v117);
}

BOOL FstSearchLateLatticeHash::findBestPath(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4, uint64_t a5)
{
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a3 + 8) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v10;
  }

  if (v10)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(v10, 0);
    *(a2 + 2) = v10;
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    *(*a2 + v13) = 0;
    *(*a3 + v13++) = 0;
  }

  while (v10 != v13);
LABEL_16:
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1 || (v15 = *(a1 + 160), v16 = *(v15 + 36 * BestTrace + 16) + *(*(a1 + 88) + 4 * *(v15 + 36 * BestTrace + 4)), *a4 = v16, v16 == 1879048192))
  {
    v17 = 1879048192;
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = v18 - 1;
      v20 = 36 * v18;
      v21 = *(v15 + 36 * BestTrace + 4);
      v22 = 1879048192;
      do
      {
        if (*(v15 + v20 - 32) == v21 && *(v15 + v20 - 36) == 16777213 && !*(*a2 + v19))
        {
          *(*a2 + v19) = 2;
          *(*a3 + v19) = 1;
          v15 = *(a1 + 160);
          if (v22 >= *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32)))
          {
            v22 = *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32));
          }
        }

        --v19;
        v20 -= 36;
      }

      while (v19 != -1);
      v16 = *a4;
      v23 = *(a1 + 168);
    }

    else
    {
      v23 = 0;
      v22 = 1879048192;
    }

    v24 = *(a1 + 28);
    if (v16 <= v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16 - v22;
    }

    v26 = *(a5 + 12);
    v27 = v23;
    if (v23 > v26)
    {
      DgnPrimArray<unsigned int>::reallocElts(a5, v23 - v26, 0);
      v27 = *(a1 + 168);
    }

    *(a5 + 8) = v23;
    v17 = *a4;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v17 - (v25 + v24) + *(a1 + 12);
      do
      {
        v31 = *a2;
        v32 = *(*a2 + v29);
        if (v32 == 2)
        {
          v33 = *a5;
          if (*(*(a1 + 176) + 16 * *(*(a1 + 160) + v28 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + v28 + 4)) <= v30)
          {
            *(v33 + 4 * v29) = v25 + v24;
            *(v31 + v29) = 1;
          }

          else
          {
            *(v33 + 4 * v29) = 1879048192;
            *(v31 + v29) = 0;
          }
        }

        else if (v32 == 1)
        {
          *(*a5 + 4 * v29) = 0;
        }

        else
        {
          *(*a5 + 4 * v29) = 1879048192;
        }

        ++v29;
        v28 += 36;
      }

      while (v29 < *(a1 + 168));
      v17 = *a4;
    }
  }

  return v17 != 1879048192;
}

uint64_t FstSearchLateLatticeHash::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLateLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 36 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLateLatticeHash::createLatticeLink(a1, v11, v15, 0xFFFFFFFFLL, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLateLatticeHash::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 36 * v11 + 12) + *(*(a1 + 160) + 36 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_26262542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 36 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 36 * a2), a3, a4, a5, a6, a7, a8, v44);
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v44[0] >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((v12 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 36 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 36 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v35 = *(v30 + 36 * v12 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 36 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 36 * v12 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_262625678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLateLatticeHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLateLatticeHash::endTopRecSyncRecog(FstSearchLateLatticeHash *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchLateLatticeHash::getBestExitScore(FstSearchLateLatticeHash *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v5 = v18;
          v4 = v17;
        }

        v4[v5] = v8;
        v5 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = *(this + 20);
    v10 = v5;
    v11 = 1879048192;
    do
    {
      v12 = *v4++;
      v13 = v9 + 36 * v12;
      v14 = *(v13 + 16);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 20);
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_16:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v15 = 20000;
  }

  else
  {
    v15 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  return v15;
}

uint64_t FstSearchLateLatticeHash::getBestScoreMaybeUpdateFstNode(FstSearchLateLatticeHash *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

uint64_t FstSearchLateLatticeHash::seedTheory(FstSearchLateLatticeHash *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 36 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 16) = a2;
    *(v12 + 20) = 0xFFFFFFFFLL;
    *(v12 + 28) = 0;
    *(v12 + 32) = -2;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 24 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchLateLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLateLatticeHash::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 228);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 36 * v8);
    for (i = v10[5]; i != -1; v8 = v16)
    {
      v16 = i;
      result = *(v9 + 40);
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = *(v9 + 160);
      v21 = *(v20 + 36 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = *(v9 + 160);
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v20 + 36 * v8 + 16);
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (*(v9 + 160) + 36 * v16);
      i = v10[5];
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLateLatticeHash::checkSearchParametersValidityForArcGraph(FstSearchLateLatticeHash *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

uint64_t FstSearchLateLatticeHash::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLateLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = *(a1 + 160) + 36 * v15;
  return (*(v22 + 16) + *(*(a1 + 88) + 4 * *(v22 + 4)));
}

unint64_t FstSearchLatticeHashBackoff::generateNullTraces(unint64_t this, int a2, unsigned int a3)
{
  v3 = *(this + 200);
  if (v3 > a3)
  {
    v5 = this;
    v6 = a3;
    v7 = *(this + 192);
    v8 = 28 * a3;
    do
    {
      if ((*(v7 + v8 + 24) & 0x80000000) == 0)
      {
        v9 = *(v5 + 184);
        v10 = *(v5 + 168);
        if (v10 == *(v5 + 172))
        {
          this = DgnArray<DgnPrimArray<double>>::reallocElts(v5 + 160, 1, 1);
          v10 = *(v5 + 168);
        }

        v11 = (*(v5 + 160) + 16 * v10);
        *v11 = 16777210;
        v11[1] = a2;
        v11[2] = v9;
        v11[3] = 0;
        v12 = *(v5 + 168);
        *(v5 + 168) = v12 + 1;
        v13 = *(v5 + 184);
        if (v13 == *(v5 + 188))
        {
          this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v5 + 176, 1, 1);
          v13 = *(v5 + 184);
          v12 = *(v5 + 168) - 1;
        }

        v14 = *(v5 + 176) + 20 * v13;
        *(v5 + 184) = v13 + 1;
        v7 = *(v5 + 192);
        v15 = v7 + v8;
        *v14 = *(v7 + v8);
        *(v14 + 4) = *(v7 + v8 + 16);
        v16 = *(v7 + v8 + 24);
        *(v14 + 12) = *(v7 + v8 + 8);
        *(v14 + 16) = v16;
        *(v15 + 24) = -1;
        *(v15 + 8) = v12;
        v3 = *(v5 + 200);
      }

      ++v6;
      v8 += 28;
    }

    while (v6 < v3);
  }

  return this;
}

int64x2_t FstSearchLatticeHashBackoff::advanceDeltas(FstSearchLatticeHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v93[0] = a2;
  v91 = 0u;
  v92 = 0u;
  SnapTime::recordTime(&v91, 1, 0, 0, 0);
  *v90 = 0xFFFFFFFF00000000;
  *&v90[8] = -1;
  *&v90[12] = -2;
  *&v90[16] = 0;
  *&v90[24] = -1;
  *(this + 58) = a3;
  v10 = *(this + 2);
  v70 = (this + 232);
  v11 = *(this + 50);
  if (v11)
  {
    v69 = a5;
    for (i = 0; i < v11; ++i)
    {
      v13 = *(this + 24) + 28 * i;
      v14 = *(v13 + 4);
      v15 = *(this + 5);
      if (*(v15 + 160) != v14)
      {
        if (*(v15 + 140) > v14)
        {
          v16 = *(this + 19) + *(this + 58) >= 5000 ? 5000 : *(this + 19) + *(this + 58);
          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v13 + 12), *v13, v16);
          v18 = *(this + 58);
          if (ScoreAllowBackoff_updateNodeInSequence - v10 <= v18)
          {
            if (v18 > ScoreAllowBackoff_updateNodeInSequence)
            {
              *v70 = ScoreAllowBackoff_updateNodeInSequence;
            }

            v19 = (*(this + 24) + 28 * i);
            v20 = *(v19 + 12);
            *v90 = *v19;
            *&v90[12] = v20;
            *v90 = ScoreAllowBackoff_updateNodeInSequence;
            FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v90);
          }
        }

        v21 = v14;
        do
        {
          v22 = *(this + 5);
          v23 = *(v22 + 152);
          v24 = *(v23 + 4 * v21);
          v25 = *(v23 + 4 * (v21 + 1));
          v26 = *(v22 + 140);
          if (v26 <= v25)
          {
            if (v26 <= v14 && (*(this + 356) & 1) != 0)
            {
              v33 = (v24 & 0xFFFFF) <= 0xFFFF3 ? v24 & 0xFFFFF : v24 & 0xFFFFF | 0xF00000;
              if (v33 != 16777210)
              {
                DgnString::DgnString(&v87);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v33, &v87, v34, v35, v36, v37, v38);
                v43 = &unk_26287F8B0;
                if (v87.i32[2])
                {
                  v43 = v87.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v39, v40, v41, v42, v14, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 8), v43);
                MiniFst::seed(this + 240, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 20), *(*(this + 24) + 28 * i + 8), v25);
                DgnString::~DgnString(&v87);
              }
            }
          }

          else
          {
            v27 = (v24 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v28 = 5000;
            }

            else
            {
              v28 = *(this + 19) + *(this + 58);
            }

            v29 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v23 + 4 * v21), *(*(this + 24) + 28 * i) + v27, v28);
            v30 = *(this + 58);
            if (v29 - v10 <= v30)
            {
              if (v30 > v29)
              {
                *v70 = v29;
              }

              v31 = (*(this + 24) + 28 * i);
              v32 = *(v31 + 12);
              *v90 = *v31;
              *&v90[12] = v32;
              *v90 = v29;
              *&v90[4] = v25;
              *&v90[12] = v24;
              *&v90[16] = DWORD1(v32) + v27;
              FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v90);
            }
          }

          v21 += 2;
        }

        while ((v24 & 0x80000000) == 0);
        v11 = *(this + 50);
      }
    }

    a3 = *v70;
    a5 = v69;
  }

  v89 = a3 + v10;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v70, v10, a2);
  }

  v87 = 0u;
  v88 = 0u;
  SnapTime::recordTime(&v87, 1, 0, 0, 0);
  v87 = vsubq_s64(v87, v91);
  v88 = vsubq_s64(v88, v92);
  v44 = *(this + 13);
  v45 = vaddq_s64(v44[1], v88);
  *v44 = vaddq_s64(*v44, v87);
  v44[1] = v45;
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  FstSearchLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v89);
  v83 = 0u;
  v84 = 0u;
  SnapTime::recordTime(&v83, 1, 0, 0, 0);
  v46 = vsubq_s64(v83, v85);
  v47 = *(this + 13);
  v48 = v47[3];
  v49 = vaddq_s64(v47[2], v46);
  v83 = v46;
  v84 = vsubq_s64(v84, v86);
  v50 = vaddq_s64(v48, v84);
  v47[2] = v49;
  v47[3] = v50;
  v81 = 0u;
  v82 = 0u;
  SnapTime::recordTime(&v81, 1, 0, 0, 0);
  v51 = *(this + 24);
  v52 = *(this + 26);
  *(this + 24) = v52;
  *(this + 26) = v51;
  LODWORD(v51) = *(this + 51);
  v53 = *(this + 27);
  *(this + 25) = v53;
  *(this + 54) = 0;
  *(this + 55) = v51;
  v54 = *(this + 6);
  if (v54 && v54 < v53)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v52, v54, v53);
  }

  FstSearchLatticeHashBackoff::generateNullTraces(this, a2, 0);
  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  v55 = vsubq_s64(v79, v81);
  v56 = *(this + 13);
  v57 = v56[5];
  v58 = vaddq_s64(v56[4], v55);
  v79 = v55;
  v80 = vsubq_s64(v80, v82);
  v59 = vaddq_s64(v57, v80);
  v56[4] = v58;
  v56[5] = v59;
  v77 = 0u;
  v78 = 0u;
  SnapTime::recordTime(&v77, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v75 = 0u;
  v76 = 0u;
  SnapTime::recordTime(&v75, 1, 0, 0, 0);
  v60 = vsubq_s64(v75, v77);
  v61 = *(this + 13);
  v62 = v61[9];
  v63 = vaddq_s64(v61[8], v60);
  v75 = v60;
  v76 = vsubq_s64(v76, v78);
  v64 = vaddq_s64(v62, v76);
  v61[8] = v63;
  v61[9] = v64;
  v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(&v73, 1, 0, 0, 0);
  *(this + 54) = 0;
  v65 = *(this + 50);
  *(this + 38) = v65;
  if (a4)
  {
    *(a4 + 2) += v65;
    if (*(a4 + 2) > v65)
    {
      LODWORD(v65) = *(a4 + 2);
    }

    *(a4 + 2) = v65;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLatticeHashBackoff::seedFromMiniFst(this, v93);
  }

  if (a5)
  {
    FstSearchLatticeHashBackoff::propagateNulls(this, v89, a2, a4);
  }

  *(this + 56) = a2;
  v71 = 0u;
  v72 = 0u;
  SnapTime::recordTime(&v71, 1, 0, 0, 0);
  v66 = *(this + 13);
  result = vaddq_s64(v66[6], vsubq_s64(v71, v73));
  v68 = vaddq_s64(v66[7], vsubq_s64(v72, v74));
  v66[6] = result;
  v66[7] = v68;
  return result;
}

__n128 FstSearchLatticeHashBackoff::maybeInsertHashedToken(uint64_t a1, int *a2)
{
  v4 = a2[1];
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v19 = *(a1 + 216);
    *(v17 + 4 * v6) = v19;
    a2[6] = -1;
    if (v19 == *(a1 + 220))
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a1 + 208, 1, 1);
      v19 = *(a1 + 216);
    }

    v20 = *(a1 + 208) + 28 * v19;
    result = *a2;
    *(v20 + 12) = *(a2 + 3);
    *v20 = result;
    ++*(a1 + 216);
    return result;
  }

  v21 = a2[5];
  v22 = *(a1 + 208);
  v23 = (v22 + 28 * v18);
  if (v21 == v23[5])
  {
    if (*v23 <= *a2)
    {
      return result;
    }

LABEL_16:
    result = *a2;
    *(v23 + 3) = *(a2 + 3);
    *v23 = result;
    return result;
  }

  v24 = v18 ^ 0xFFFFFFFFLL;
  v25 = *v23;
  v26 = v23[6];
  if (v26 < 0)
  {
    v28 = 1;
    v30 = *v23;
LABEL_25:
    if (v28 >= *(a1 + 20))
    {
      v38 = *a2;
      if (v30 <= *a2)
      {
        return result;
      }

      if ((v24 & 0x80000000) != 0)
      {
        a2[6] = v26;
        goto LABEL_16;
      }

      v27 = *(a1 + 176);
      v39 = (v27 + 20 * v24);
      a2[6] = v39[4];
      v40 = a2[4];
      *v39 = v38;
      v39[1] = v40;
      v41 = a2[2];
      v39[2] = v21;
      v39[3] = v41;
      v29 = v24;
      goto LABEL_35;
    }

    a2[6] = v26;
    v29 = *(a1 + 184);
    v33 = *(a1 + 188);
    v23[6] = v29;
    v34 = v29;
    if (v29 == v33)
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a1 + 176, 1, 1);
      v34 = *(a1 + 184);
      v21 = a2[5];
    }

    v27 = *(a1 + 176);
    v35 = (v27 + 20 * v34);
    *(a1 + 184) = v34 + 1;
    v36 = a2[4];
    *v35 = *a2;
    v35[1] = v36;
    v37 = a2[2];
    v35[2] = v21;
    v35[3] = v37;
    v35[4] = a2[6];
    if ((v29 & 0x80000000) == 0)
    {
      v22 = *(a1 + 208);
      v25 = *(v22 + 28 * v18);
      v38 = *(v27 + 20 * v29);
      goto LABEL_35;
    }
  }

  else
  {
    v27 = *(a1 + 176);
    v28 = 1;
    v29 = v23[6];
    v30 = *v23;
    while (1)
    {
      v31 = (v27 + 20 * v29);
      v32 = *v31;
      if (v31[2] == v21)
      {
        break;
      }

      if (v30 <= v32)
      {
        v24 = v29;
        v30 = *v31;
      }

      ++v28;
      v29 = v31[4];
      if ((v29 & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    v38 = *a2;
    if (v32 > *a2)
    {
      a2[6] = v31[4];
      v42 = a2[4];
      *v31 = v38;
      v31[1] = v42;
      v43 = a2[2];
      v31[2] = v21;
      v31[3] = v43;
LABEL_35:
      if (v25 > v38)
      {
        v44 = v27 + 20 * v29;
        v45 = v22 + 28 * v18;
        v46 = *(v44 + 12);
        *v44 = v25;
        v47 = *(v44 + 4);
        *(v44 + 4) = *(v45 + 16);
        *(v44 + 12) = *(v45 + 8);
        LODWORD(v44) = *(v45 + 24);
        result = *(a2 + 3);
        *v45 = *a2;
        *(v45 + 12) = result;
        v48 = *(a1 + 208) + 28 * v18;
        *v48 = v38;
        *(v48 + 8) = v46;
        *(v48 + 16) = v47;
        *(v48 + 24) = v44;
      }
    }
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 216);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 208), a2, v4);
    v8 = *(*(v6 + 208) + 28 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 220);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v6 + 208, a2 - v9, 0);
    }

    v10 = *(v6 + 216);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = *(v6 + 208) + 28 * v10 + 12;
      do
      {
        *(v12 - 12) = 0xFFFFFFFF00000000;
        *(v12 - 4) = -1;
        *v12 = -2;
        *(v12 + 4) = 0;
        *(v12 + 8) = 0;
        *(v12 + 12) = -1;
        v12 += 28;
        --v11;
      }

      while (v11);
    }

    *(v6 + 216) = a2;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 28 * v3);
      v5 = (result + 28 * (v3 + (a3 >> 1)));
      v6 = 28;
      v7 = v4;
      do
      {
        v8 = *v7;
        *v7++ = *v5;
        *v5++ = v8;
        --v6;
      }

      while (v6);
      v9 = (result - 28 + 28 * (v3 + a3));
      v10 = (result + 28 * v3);
      do
      {
        v11 = v10 + 28;
        while (1)
        {
          v10 = v11;
          if (v11 >= v9)
          {
            break;
          }

          v11 += 28;
          if (*v10 > *v4)
          {
            v12 = v10;
            while (*v9 >= *v4)
            {
              v9 -= 28;
              if (v10 >= v9)
              {
                goto LABEL_16;
              }
            }

            for (i = 0; i != 28; ++i)
            {
              v14 = *v12;
              *v12++ = v9[i];
              v9[i] = v14;
            }

            v9 -= 28;
            break;
          }
        }

LABEL_16:
        ;
      }

      while (v10 < v9);
      if (*v10 > *v4)
      {
        v10 -= 28;
      }

      if (v10 > v4)
      {
        for (j = 0; j != 28; ++j)
        {
          v16 = v10[j];
          v10[j] = v4[j];
          v4[j] = v16;
        }
      }

      v17 = (v10 - v4) / 0x1CuLL;
      if (v17 <= a2)
      {
        if (v17 >= a2)
        {
          return result;
        }

        v18 = v17 + 1;
        v3 += v18;
        a2 -= v18;
        v17 = a3 - v18;
      }

      a3 = v17;
    }

    while (v17 > 1);
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 256) + 36 * v4);
        v6 = *v5;
        v43 = *v5;
        v44 = v5[5];
        v7 = v5[6];
        v41 = v5[4];
        v42 = v5[7];
        v8 = v5[2];
        v45 = 0;
        v46 = 0;
        v40 = v7;
        if ((v8 & 0x80000000) != 0)
        {
          LODWORD(v12) = -2 - v8;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          do
          {
            if (v10 == HIDWORD(v46))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v45, 1, 1);
              v10 = v46;
              v9 = v45;
            }

            *(v9 + 4 * v10) = v8;
            v11 = v46;
            v10 = v46 + 1;
            LODWORD(v46) = v46 + 1;
            v8 = *(*(v2 + 240) + 36 * v8 + 8);
          }

          while ((v8 & 0x80000000) == 0);
          LODWORD(v12) = -2 - v8;
          if ((v11 & 0x80000000) == 0)
          {
            do
            {
              v13 = *(v45 + 4 * v11);
              v14 = *(v2 + 240);
              v15 = (v14 + 36 * v13);
              v16 = *v15;
              v17 = *(v15 + 2);
              v18 = *(v2 + 184);
              if (v18 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v18 = *(v2 + 184);
                v14 = *(v2 + 240);
              }

              v19 = *(v2 + 176) + 20 * v18;
              *(v2 + 184) = v18 + 1;
              *v19 = v16;
              *(v19 + 4) = v17;
              *(v19 + 12) = v12;
              *(v19 + 16) = -1;
              v20 = *(v14 + 36 * v13 + 28);
              v21 = *(v2 + 168);
              if (v21 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v21 = *(v2 + 168);
              }

              v22 = *(v2 + 160);
              v23 = v22 + 16 * v21;
              *v23 = v20;
              *(v23 + 8) = v18;
              *(v23 + 12) = 0;
              v12 = *(v2 + 168);
              *(v2 + 168) = v12 + 1;
              *(v22 + 16 * v12 + 12) = 1;
            }

            while (v11-- > 0);
          }
        }

        v25 = *(v2 + 184);
        if (v25 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
          v25 = *(v2 + 184);
        }

        v26 = *(v2 + 176);
        *(v2 + 184) = v25 + 1;
        v27 = (v26 + 20 * v25);
        *v27 = v43;
        v27[1] = v41;
        v27[2] = v44;
        v27[3] = v12;
        v27[4] = -1;
        if (v42 == 16777213)
        {
          v28 = (*(v2 + 160) + 16 * v12);
          v29 = 16777209;
          if (*v28 == 16777209)
          {
            v25 = v28[2];
          }
        }

        else
        {
          v29 = v42;
        }

        v30 = *a2;
        v31 = *(v2 + 168);
        if (v31 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v31 = *(v2 + 168);
        }

        v32 = *(v2 + 160);
        v33 = (v32 + 16 * v31);
        *v33 = v29;
        v33[1] = v30;
        v33[2] = v25;
        v33[3] = 0;
        v34 = *(v2 + 168);
        *(v2 + 168) = v34 + 1;
        *(v32 + 16 * v34 + 12) = 1;
        v35 = *(v2 + 200);
        if (v35 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v35) = *(v2 + 200);
        }

        v36 = *(v2 + 192) + 28 * v35;
        *v36 = v43;
        *(v36 + 4) = v40;
        *(v36 + 8) = v34;
        *(v36 + 12) = -2;
        *(v36 + 16) = v41;
        *(v36 + 20) = v44;
        *(v36 + 24) = -1;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
        ++v4;
        LODWORD(v37) = *(v2 + 264);
        v38 = *(v2 + 20);
        if (v37 >= v38)
        {
          v37 = v38;
        }

        else
        {
          v37 = v37;
        }
      }

      while (v4 < v37);
    }
  }

  return this;
}

void sub_262626F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLatticeHashBackoff::propagateNulls(FstSearchLatticeHashBackoff *this, int a2, int a3, SearchStats *a4)
{
  v5 = *(this + 42);
  LODWORD(v6) = *(this + 50);
  if (!v6)
  {
    v41 = *(this + 38);
    if (a4)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v62 = *(this + 42);
  v63 = a4;
  v7 = 0;
  v70 = a2;
  do
  {
    v8 = *(*(this + 24) + 28 * v7 + 4);
    v9 = *(this + 5);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(this + 24) + 28 * v7 + 4);
      v66 = v7;
      do
      {
        v11 = *(this + 5);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_37;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_37;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(this + 24);
        v20 = (v19 + 28 * v7);
        v21 = *v20;
        v22 = *v20 + v18;
        if (v22 > a2)
        {
          goto LABEL_37;
        }

        v23 = v20[2];
        v72 = *(v20 + 6);
        v71 = *(v20 + 7);
        v24 = v20[4];
        v25 = v20[5];
        v26 = v20[6];
        v27 = v24 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(this + 51))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v28 = v21 - v24;
          }

          else
          {
            v28 = v22;
          }

          if (v16 == 16777214)
          {
            v29 = 0;
          }

          else
          {
            v29 = v27;
          }

          if (v16 == 16777214)
          {
            v30 = v27;
          }

          else
          {
            v30 = 0;
          }

          v67 = v30;
          v68 = v28;
          v31 = *(this + 46);
          v69 = v26;
          if (v31 == *(this + 47))
          {
            v32 = v27;
            v64 = v29;
            DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
            v29 = v64;
            v28 = v68;
            v26 = v69;
            v27 = v32;
            a2 = v70;
            v31 = *(this + 46);
          }

          v25 = v16 + 2 * v25 + 1;
          v33 = (*(this + 22) + 20 * v31);
          *(this + 46) = v31 + 1;
          *v33 = v28;
          v33[1] = v29;
          v33[2] = v25;
          v33[3] = v23;
          v33[4] = v26;
          v34 = *(this + 42);
          if (v34 == *(this + 43))
          {
            v35 = v27;
            DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
            v28 = v68;
            v26 = v69;
            v27 = v35;
            a2 = v70;
            v34 = *(this + 42);
          }

          v6 = *(this + 20) + 16 * v34;
          *v6 = v16;
          *(v6 + 4) = a3;
          *(v6 + 8) = v31;
          *(v6 + 12) = 0;
          v23 = *(this + 42);
          *(this + 42) = v23 + 1;
          v22 = v28 + v67;
          LODWORD(v6) = *(this + 50);
          if (v6 != *(this + 51))
          {
            goto LABEL_35;
          }
        }

        v36 = v26;
        v37 = v23;
        v38 = v8;
        v39 = v25;
        v40 = v27;
        DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, 1, 1);
        v27 = v40;
        v25 = v39;
        v8 = v38;
        v23 = v37;
        v7 = v66;
        v26 = v36;
        a2 = v70;
        LODWORD(v6) = *(this + 50);
LABEL_35:
        v19 = *(this + 24);
LABEL_36:
        v6 = v19 + 28 * v6;
        *v6 = v22;
        *(v6 + 4) = v14;
        *(v6 + 8) = v23;
        *(v6 + 12) = v72;
        *(v6 + 14) = v71;
        *(v6 + 16) = v27;
        *(v6 + 20) = v25;
        *(v6 + 24) = v26;
        LODWORD(v6) = *(this + 50) + 1;
        *(this + 50) = v6;
LABEL_37:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v41 = *(this + 38);
  if (v6 > v41)
  {
    mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(this + 24) + 28 * v41), v6 - v41, 28);
    v41 = *(this + 38);
    LODWORD(v6) = *(this + 50);
  }

  if (v41 < v6)
  {
    v42 = v41 - 1;
    v43 = v41;
    do
    {
      v44 = *(this + 24);
      v45 = (v44 + 28 * v43);
      if (*(v45 + 1) == *(v44 + 28 * (v43 - 1) + 4))
      {
        if (v41 - v42 < *(this + 5))
        {
          v46 = *(v45 + 5);
          v47 = v44 + 28 * v42;
          if (v46 != *(v47 + 20))
          {
            v48 = *(v47 + 24);
            if ((v48 & 0x80000000) != 0)
            {
LABEL_49:
              if (v48 == 0xFFFFFFFFLL)
              {
                v50 = *(this + 46);
                if (v50 == *(this + 47))
                {
                  DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
                  v50 = *(this + 46);
                  v44 = *(this + 24);
                  v46 = *(v44 + 28 * v43 + 20);
                }

                v51 = (*(this + 22) + 20 * v50);
                *(this + 46) = v50 + 1;
                v52 = (v44 + 28 * v43);
                v53 = v52[4];
                *v51 = *v52;
                v51[1] = v53;
                LODWORD(v52) = v52[2];
                v51[2] = v46;
                v51[3] = v52;
                v54 = v44 + 28 * v42;
                v51[4] = *(v54 + 24);
                *(v54 + 24) = v50;
                ++v41;
              }
            }

            else
            {
              while (1)
              {
                v49 = *(this + 22) + 20 * v48;
                if (v46 == *(v49 + 8))
                {
                  break;
                }

                v48 = *(v49 + 16);
                if ((v48 & 0x80000000) != 0)
                {
                  goto LABEL_49;
                }
              }
            }
          }
        }
      }

      else
      {
        v41 = v42 + 2;
        ++v42;
        v55 = *v45;
        v56 = (v44 + 28 * v42);
        *(v56 + 12) = *(v45 + 12);
        *v56 = v55;
      }

      ++v43;
      v6 = *(this + 50);
    }

    while (v43 < v6);
    v41 = v42 + 1;
  }

  a4 = v63;
  v5 = v62;
  if (v63)
  {
LABEL_57:
    *(a4 + 1) += *(this + 42) - v5;
  }

LABEL_58:
  v57 = *(this + 51);
  if (v41 > v57)
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, v41 - v57, 0);
    LODWORD(v6) = *(this + 50);
  }

  if (v6 < v41)
  {
    v58 = v41 - v6;
    v59 = *(this + 24) + 28 * v6 + 12;
    do
    {
      *(v59 - 12) = 0xFFFFFFFF00000000;
      *(v59 - 4) = -1;
      *v59 = -2;
      *(v59 + 4) = 0;
      *(v59 + 8) = 0;
      *(v59 + 12) = -1;
      v59 += 28;
      --v58;
    }

    while (v58);
  }

  *(this + 50) = v41;
  v60 = *(this + 38);

  return FstSearchLatticeHashBackoff::generateNullTraces(this, a3, v60);
}

unint64_t FstSearchLatticeHashBackoff::getCandidateTokensForTrace(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 12) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(v5 + 176);
      v8 = (v7 + 20 * (*(a2 + 8) + v6));
      v9 = v8[1].u32[1];
      if (v9 == -1 || (v10 = (*(v5 + 160) + 16 * v9), *v10 != 16777210))
      {
        v20 = *(a3 + 8);
        if (v20 == *(a3 + 12))
        {
          result = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a3, 1, 1);
          LODWORD(v20) = *(a3 + 8);
        }

        v21 = *a3 + 20 * v20;
        v22 = *v8->i8;
        *(v21 + 16) = v8[2].i32[0];
        *v21 = v22;
        LODWORD(v21) = *(a3 + 8);
        *(a3 + 8) = v21 + 1;
        *(*a3 + 20 * v21 + 16) = -1;
      }

      else
      {
        v11 = v10[2];
        if ((v11 & 0x80000000) == 0)
        {
          v12 = vsub_s32(*v8, *(v7 + 20 * v11));
          v13 = *(a3 + 8);
          do
          {
            v14 = *(v5 + 176);
            if (v13 == *(a3 + 12))
            {
              result = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a3, 1, 1);
              v13 = *(a3 + 8);
            }

            v15 = (v14 + 20 * v11);
            v16 = *a3 + 20 * v13;
            v17 = *v15;
            *(v16 + 16) = *(v15 + 4);
            *v16 = v17;
            v18 = *(a3 + 8);
            v13 = v18 + 1;
            *(a3 + 8) = v18 + 1;
            v19 = (*a3 + 20 * v18);
            *v19 = vadd_s32(v12, *v19);
            v19[2].i32[0] = -1;
            v11 = *(v15 + 4);
          }

          while ((v11 & 0x80000000) == 0);
        }
      }

      ++v6;
    }

    while (v6 < *(a2 + 12));
  }

  return result;
}

double FstSearchLatticeHashBackoff::annihilateNullActiveTokens(FstSearchLatticeHashBackoff *this)
{
  if (*(this + 50))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 24) + 28 * v2;
      v4 = *(v3 + 8);
      if ((v4 & 0x80000000) != 0 || (v5 = (*(this + 20) + 16 * v4), *v5 != 16777210))
      {
        v18 = *(this + 54);
        if (v18 == *(this + 55))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 208, 1, 1);
          LODWORD(v18) = *(this + 54);
        }

        v19 = (*(this + 26) + 28 * v18);
        v20 = *v3;
        *(v19 + 12) = *(v3 + 12);
        *v19 = v20;
        ++*(this + 54);
      }

      else
      {
        v6 = v5[2];
        if ((v6 & 0x80000000) == 0)
        {
          v7 = (*(this + 22) + 20 * v6);
          v8 = *v3 - *v7;
          v9 = *(v3 + 16) - v7[1];
          v10 = *(this + 54);
          do
          {
            if (v10 == *(this + 55))
            {
              DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 208, 1, 1);
              v10 = *(this + 54);
            }

            v11 = (*(this + 26) + 28 * v10);
            v12 = *v3;
            *(v11 + 12) = *(v3 + 12);
            *v11 = v12;
            v13 = *(this + 54);
            v10 = v13 + 1;
            *(this + 54) = v13 + 1;
            v14 = (*(this + 26) + 28 * v13);
            v15 = (*(this + 22) + 20 * v6);
            v16 = v15[2];
            v14[2] = v15[3];
            v17 = v15[1];
            v6 = v15[4];
            *v14 = v8 + *v15;
            v14[4] = v9 + v17;
            v14[5] = v16;
            v14[6] = -1;
          }

          while ((v6 & 0x80000000) == 0);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 50));
  }

  v21 = *(this + 24);
  *(this + 24) = *(this + 26);
  *(this + 26) = v21;
  LODWORD(v21) = *(this + 51);
  result = *(this + 27);
  *(this + 25) = result;
  *(this + 54) = 0;
  *(this + 55) = v21;
  return result;
}

unint64_t FstSearchLatticeHashBackoff::annihilateNullTraces(unint64_t this)
{
  if (*(this + 168))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = *(v1 + 160) + 16 * v2;
      v32 = 0;
      v33 = 0;
      FstSearchLatticeHashBackoff::getCandidateTokensForTrace(v1, v3, &v32);
      v4 = v33;
      v5 = v32;
      if (v33 < 2 || (mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v32 + 20, (v33 - 1), 20), v4 = v33, v5 = v32, v33 < 2))
      {
        v6 = 0;
        v9 = xmmword_26287F850;
      }

      else
      {
        v6 = 0;
        v7 = v32 + 28;
        v8 = v33 - 1;
        v9 = xmmword_26287F850;
        do
        {
          if (*v7 != *&v5[20 * v6 + 8] && *(v5 + 2) != *v7)
          {
            ++v6;
            v10 = *(v7 - 2);
            v11 = &v5[20 * v6];
            *(v11 + 4) = v7[2];
            *v11 = v10;
          }

          v7 += 5;
          --v8;
        }

        while (v8);
      }

      v12 = v6 + 1;
      if (HIDWORD(v33) < v12)
      {
        v34 = 0;
        HIDWORD(v33) = realloc_array(v5, &v34, 20 * v12, 20 * v4, 20 * v4, 1) / 0x14;
        v5 = v34;
        v32 = v34;
        v4 = v33;
        v9 = xmmword_26287F850;
      }

      if (v4 < v12)
      {
        v13 = v12 - v4;
        v14 = &v5[20 * v4 + 16];
        do
        {
          *(v14 - 1) = v9;
          *v14 = -1;
          v14 += 20;
          --v13;
        }

        while (v13);
      }

      LODWORD(v33) = v6 + 1;
      mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(v5 + 20, v6, 20);
      v15 = v33;
      v16 = *(v1 + 20);
      if (v33 > v16)
      {
        if (HIDWORD(v33) < v16)
        {
          v34 = 0;
          HIDWORD(v33) = realloc_array(v32, &v34, 20 * v16, 20 * v33, 20 * v33, 1) / 0x14;
          v32 = v34;
          v15 = v33;
        }

        if (v15 < v16)
        {
          v17 = v16 - v15;
          v18 = v32 + 20 * v15 + 16;
          do
          {
            *(v18 - 1) = xmmword_26287F850;
            *v18 = -1;
            v18 += 5;
            --v17;
          }

          while (v17);
        }

        LODWORD(v33) = v16;
        v15 = v16;
      }

      if (v15)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0xFFFFFFFFLL;
        do
        {
          if (*(v3 + 12) <= v20)
          {
            v26 = *(v1 + 184);
            v27 = *(v1 + 176);
            *(v27 + 20 * v21 + 16) = v26;
            v28 = v32;
            if (v26 == *(v1 + 188))
            {
              DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v1 + 176, 1, 1);
              v29 = *(v1 + 184);
              v27 = *(v1 + 176);
              v15 = v33;
            }

            else
            {
              v29 = v26;
            }

            v30 = v27 + 20 * v29;
            v31 = *&v28[v19];
            *(v30 + 16) = *&v28[v19 + 16];
            *v30 = v31;
            ++*(v1 + 184);
          }

          else
          {
            v22 = *(v1 + 176) + 20 * (v20 + *(v3 + 8));
            v23 = *(v32 + v19);
            *(v22 + 16) = *(v32 + v19 + 16);
            *v22 = v23;
            v24 = *(v3 + 8);
            v25 = v20 + v24;
            if (v20)
            {
              *(*(v1 + 176) + 20 * (v20 + v24 - 1) + 16) = v25;
            }

            v26 = v25;
          }

          ++v20;
          v19 += 20;
          v21 = v26;
        }

        while (v20 < v15);
      }

      *(v3 + 12) = 0;
      this = DgnIArray<Utterance *>::~DgnIArray(&v32);
      ++v2;
    }

    while (v2 < *(v1 + 168));
  }

  return this;
}

void sub_262627AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLatticeHashBackoff::annihilateNullLongestFinal(unint64_t this)
{
  v1 = *(this + 168);
  if (v1)
  {
    v2 = this;
    do
    {
      --v1;
      v3 = *(v2 + 160);
      v4 = (v3 + 16 * v1);
      if (*v4 == 16777210)
      {
        v5 = *(v2 + 176);
        v6 = (v5 + 20 * v4[2]);
        v7 = v6[1].u32[1];
        if (v7 != -1)
        {
          v8 = *v6;
          v9 = (v3 + 16 * v7);
          v10 = *v9;
          v11 = v9[2];
          v12 = v9[3];
          v13 = *(v2 + 184);
          v14 = v4[1];
          v15 = *(v2 + 168);
          if (v15 == *(v2 + 172))
          {
            this = DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
            v15 = *(v2 + 168);
            v3 = *(v2 + 160);
            v5 = *(v2 + 176);
          }

          v16 = (v3 + 16 * v15);
          *v16 = v10;
          v16[1] = v14;
          v16[2] = v13;
          v16[3] = v12;
          ++*(v2 + 168);
          if (v11 != 0xFFFFFFFFLL)
          {
            v17 = vsub_s32(v8, *(v5 + 20 * v11));
            v18 = *(v2 + 184);
            v19 = -1;
            do
            {
              v20 = v18;
              if ((v19 & 0x80000000) == 0)
              {
                *(v5 + 20 * v19 + 16) = v18;
              }

              v21 = (v5 + 20 * v11);
              v22 = *v21;
              v23 = v21[1];
              v24 = v20;
              if (v20 == *(v2 + 188))
              {
                this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v24 = *(v2 + 184);
                v5 = *(v2 + 176);
              }

              v25 = (v5 + 20 * v24);
              *v25 = vadd_s32(v17, v22);
              v25[1] = v23;
              v25[2].i32[0] = -1;
              v18 = *(v2 + 184) + 1;
              *(v2 + 184) = v18;
              v5 = *(v2 + 176);
              v11 = *(v5 + 20 * v11 + 16);
              v19 = v20;
            }

            while (v11 != -1);
          }

          if (v10 == 16777213)
          {
            return this;
          }
        }
      }

      else if (*v4 == 16777213)
      {
        return this;
      }
    }

    while (v1);
  }

  return this;
}

uint64_t FstSearchLatticeHashBackoff::collectTraces(FstSearchLatticeHashBackoff *this)
{
  v2 = *(this + 42);
  v40 = 0;
  v39 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v39 = v3;
    v40 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v40);
  }

  v5 = *(this + 50);
  if (v5)
  {
    v6 = 0;
    v7 = v39;
    v8 = (*(this + 24) + 8);
    do
    {
      v10 = *v8;
      v8 += 7;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 50);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (v11)
  {
    v12 = 0;
    v13 = v39;
    do
    {
      --v11;
      if (v12)
      {
        v12 = 1;
      }

      else if (*(*(this + 20) + 16 * v11) == 16777213)
      {
        v12 = 1;
        *(v13 + v11) = 1;
      }

      else
      {
        v12 = 0;
      }

      if (*(v13 + v11))
      {
        v14 = *(*(this + 20) + 16 * v11 + 8);
        if (v14 != -1)
        {
          v15 = *(this + 22);
          do
          {
            v16 = v15 + 20 * v14;
            v17 = *(v16 + 12);
            if (v17 != -1)
            {
              *(v13 + v17) = 1;
            }

            v14 = *(v16 + 16);
          }

          while (v14 != -1);
        }
      }
    }

    while (v11);
    v18 = *(this + 42);
    v37 = 0;
    v38 = 0;
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (*(v39 + v19))
        {
          v21 = *(this + 20);
          if (v19 != v20)
          {
            *(v21 + 16 * v20) = *(v21 + 16 * v19);
            v21 = *(this + 20);
          }

          v22 = v38;
          *(v21 + 16 * v20 + 8) = v38;
          v23 = *(v21 + 16 * v19 + 8);
          if (v23 == -1)
          {
            v24 = v37;
          }

          else
          {
            v25 = *(this + 22);
            do
            {
              if (v22 == HIDWORD(v38))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(&v37, 1, 1);
                v22 = v38;
              }

              v24 = v37;
              v26 = v37 + 20 * v22;
              *v26 = *(v25 + 20 * v23);
              LODWORD(v38) = ++v22;
              *(v26 + 16) = v22;
              v27 = *(v26 + 12);
              if (v27 != -1)
              {
                *(v26 + 12) = *(v39 + v27);
              }

              v25 = *(this + 22);
              v23 = *(v25 + 20 * v23 + 16);
            }

            while (v23 != -1);
            v21 = *(this + 20);
          }

          *(v24 + 20 * (v22 - 1) + 16) = -1;
          *(v21 + 16 * v20 + 12) = v22 - *(v21 + 16 * v20 + 8);
          *(v39 + v19) = v20++;
          v18 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v18);
      v28 = *(this + 43);
      if (v20 > v28)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v20 - v28, 0);
        v18 = *(this + 42);
      }

      if (v18 < v20)
      {
        v29 = v20 - v18;
        v30 = (*(this + 20) + 16 * v18);
        do
        {
          *v30++ = xmmword_26287F860;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v37 = 0;
    v38 = 0;
  }

  *(this + 42) = v20;
  v31 = *(this + 22);
  *(this + 22) = v37;
  v37 = v31;
  LODWORD(v31) = *(this + 47);
  *(this + 23) = v38;
  LODWORD(v38) = 0;
  HIDWORD(v38) = v31;
  v32 = *(this + 50);
  if (v32)
  {
    v33 = v39;
    v34 = (*(this + 24) + 8);
    do
    {
      v35 = *v34;
      if (v35 != -1)
      {
        *v34 = *(v33 + v35);
      }

      v34 += 7;
      --v32;
    }

    while (v32);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v37);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v39);
}

void sub_262627F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLatticeHashBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeHashBackoff::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

int64x2_t FstSearchLatticeHashBackoff::reset(FstSearchLatticeHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLatticeHashBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeHashBackoff::beginTopRecPassSyncRecog(FstSearchLatticeHashBackoff *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 240, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLatticeHashBackoff::collectTraces(this);
  FstSearchLatticeHashBackoff::annihilateNullTraces(this);
  FstSearchLatticeHashBackoff::annihilateNullActiveTokens(this);
  FstSearchLatticeHashBackoff::annihilateNullLongestFinal(this);
  FstSearchLatticeHashBackoff::collectTraces(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeHashBackoff::printSize(FstSearchLatticeHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v117);
  if (v118)
  {
    v16 = v117;
  }

  else
  {
    v16 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v16);
  DgnString::~DgnString(&v117);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F8B0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v117);
  if (v118)
  {
    v27 = v117;
  }

  else
  {
    v27 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v117);
  if (v118)
  {
    v32 = v117;
  }

  else
  {
    v32 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v117);
  if (v118)
  {
    v37 = v117;
  }

  else
  {
    v37 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v112 = a2;
  v113 = a6;
  v114 = a3;
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v117);
  if (v118)
  {
    v42 = v117;
  }

  else
  {
    v42 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v42, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v43 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  v44 = *(this + 42);
  v45 = 16 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 16 * (*(this + 43) - v44);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v117);
  if (v118)
  {
    v52 = v117;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v52, v47, v46, 0);
  DgnString::~DgnString(&v117);
  *a4 += v47;
  *a5 += v46;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 46);
  v55 = 20 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 20 * (*(this + 47) - v54);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v117);
  if (v118)
  {
    v62 = v117;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v62, v57, v56, 0);
  DgnString::~DgnString(&v117);
  *a4 += v57;
  *a5 += v56;
  v63 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  v64 = *(this + 50);
  v65 = 26 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 26 * (*(this + 51) - v64);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v117);
  if (v118)
  {
    v72 = v117;
  }

  else
  {
    v72 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v21, &unk_26287F8B0, v22, v22, v72, v67, v66, 0);
  DgnString::~DgnString(&v117);
  *a4 += v67;
  *a5 += v66;
  v73 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  v74 = *(this + 54);
  v75 = 26 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 26 * (*(this + 55) - v74);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v117);
  if (v118)
  {
    v82 = v117;
  }

  else
  {
    v82 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v21, &unk_26287F8B0, v22, v22, v82, v77, v76, 0);
  DgnString::~DgnString(&v117);
  *a4 += v77;
  *a5 += v76;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v117);
  if (v118)
  {
    v87 = v117;
  }

  else
  {
    v87 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26287F8B0, v22, v22, v87, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v117);
  if (v118)
  {
    v92 = v117;
  }

  else
  {
    v92 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &unk_26287F8B0, v22, v22, v92, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v117);
  if (v118)
  {
    v97 = v117;
  }

  else
  {
    v97 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26287F8B0, v22, v22, v97, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v98 = sizeObject(this + 240, 0);
  v99 = sizeObject(this + 240, 1);
  v100 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v117);
  if (v118)
  {
    v105 = v117;
  }

  else
  {
    v105 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v21, &unk_26287F8B0, v22, v22, v105, v98, v99, v100);
  DgnString::~DgnString(&v117);
  *a4 += v98;
  *a5 += v99;
  *v113 += v100;
  v115 = 0;
  v116 = 0;
  SearchItf::printSize(this, v112, v21, &v116, &v115, &v115);
  *a4 += v116;
  *a5 += v115;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v117);
  if (v118)
  {
    v110 = v117;
  }

  else
  {
    v110 = &unk_26287F8B0;
  }

  v111 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v114, &unk_26287F8B0, (35 - v114), (35 - v114), v110, *a4, *a5, *v113);
  DgnString::~DgnString(&v117);
}

uint64_t FstSearchLatticeHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 200);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 28 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 192);
    if (!a4 || (v10 = *(v9 + v6 + 8), v10 == -1))
    {
      if (*(*(a1 + 40) + 160) != *(v9 + v6 + 4))
      {
        goto LABEL_19;
      }

      v10 = *(v9 + v6 + 8);
    }

    if (a2)
    {
      *(*a2 + v10) = 1;
    }

    if (a3)
    {
      *(*a3 + v10) = 1;
    }

    v11 = *(*(a1 + 176) + 20 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 20 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 200);
LABEL_19:
    ++v4;
    v6 += 28;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v13 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v13)
    {
      --v13;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 16 * v13) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v13) = 1;
        }

        v8 = v13;
        if (a3)
        {
          *(*a3 + v13) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLatticeHashBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 20 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchLatticeHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v8 = a2;
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a2 + 2) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a2 = MemChunkAlloc(4 * v10, 0);
    *(v8 + 2) = v10;
  }

  Node = Lattice<WordLatticeLC>::createNode(a4);
  result = a3;
  v14 = *(a3 + 8);
  if (v14 == *(a3 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    result = a3;
    v14 = *(a3 + 8);
  }

  *(*result + 4 * v14) = Node;
  ++*(result + 8);
  v15 = *(a1 + 168);
  v16 = a7;
  if (v15)
  {
    v17 = -1;
    v39 = v8;
    do
    {
      --v15;
      v18 = *v8;
      *(*v8 + v15) = -1;
      if (*(*a6 + v15))
      {
        v19 = *(a1 + 160);
        v20 = *(*(a1 + 88) + 4 * *(v19 + 16 * v15 + 4));
        if (*(*v16 + v15) == 1)
        {
          if (*(*a6 + v15) != 1 || v17 == -1)
          {
            v22 = Lattice<WordLatticeLC>::createNode(a4);
            result = a3;
            v23 = *(a3 + 8);
            *(*v8 + v15) = v23;
            if (v23 == *(a3 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              result = a3;
              v23 = *(a3 + 8);
            }

            *(*result + 4 * v23) = v22;
            v24 = *(result + 8);
            *(result + 8) = v24 + 1;
            if (*(*a6 + v15) == 1)
            {
              v17 = v24;
            }

            v19 = *(a1 + 160);
            v16 = a7;
          }

          else
          {
            *(v18 + v15) = v17;
          }
        }

        v25 = (v19 + 16 * v15);
        if (v25[3] >= 1)
        {
          v40 = v17;
          v26 = *v25;
          v27 = v25[2];
          do
          {
            v28 = *(a1 + 176);
            v29 = (v28 + 20 * v27);
            v30 = v29[3];
            if ((v30 & 0x80000000) != 0)
            {
              *v29 += v20;
            }

            else
            {
              if (v26 == 16777209)
              {
                v31 = *a5 + 16 * v30;
                v32 = *(v31 + 8);
                if (v32 == *(v31 + 12))
                {
                  result = DgnPrimArray<unsigned int>::reallocElts(v31, 1, 1);
                  v16 = a7;
                  v32 = *(v31 + 8);
                  v19 = *(a1 + 160);
                  v28 = *(a1 + 176);
                }

                *(*v31 + 4 * v32) = v15;
                ++*(v31 + 8);
                v30 = v29[3];
              }

              else
              {
                *(*v16 + v30) = 1;
              }

              v33 = v19 + 16 * v30;
              v34 = *(*(a1 + 88) + 4 * *(v33 + 4));
              v35 = (v28 + 20 * *(v33 + 8));
              v36 = v20 + *v29 - v34 - *v35;
              LODWORD(v35) = v29[1] - v35[1];
              *v29 = v36;
              v29[1] = v35;
              *(*a6 + v30) = 2;
              v19 = *(a1 + 160);
            }

            ++v27;
          }

          while (v27 < *(v19 + 16 * v15 + 12) + *(v19 + 16 * v15 + 8));
          v8 = v39;
          v17 = v40;
        }
      }
    }

    while (v15);
  }

  return result;
}

uint64_t FstSearchLatticeHashBackoff::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 20 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeHashBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFFLL, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeHashBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_2626290F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 20 * v19 + 12) == a2)
      {
        v22 = (v21 + 20 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 16 * a2), a3, a4, a5, a6, a7, a8, v44);
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v44[0] >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((v12 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * v12 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 16 * v12 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26262932C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLatticeHashBackoff::endTopRecSyncRecog(FstSearchLatticeHashBackoff *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchLatticeHashBackoff::getBestExitScore(FstSearchLatticeHashBackoff *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 28;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 20 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 57) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLatticeHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLatticeHashBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 28;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

unint64_t FstSearchLatticeHashBackoff::seedTheory(FstSearchLatticeHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 20 * v11;
    *(v12 + 4) = xmmword_26287F880;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 50);
  if (v16 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, 1, 1);
    v16 = *(this + 50);
  }

  v17 = *(this + 24) + 28 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 24) = -1;
  LODWORD(v17) = *(this + 50) + 1;
  *(this + 50) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLatticeHashBackoff::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 228);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 16 * v8);
    for (i = *(*(result + 176) + 20 * v10[2] + 12); i != -1; v8 = v16)
    {
      v16 = i;
      result = v9[5];
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = v9[20];
      v21 = *(v20 + 16 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = v9[20];
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v9[22] + 20 * *(v20 + 16 * v8 + 8));
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (v9[20] + 16 * v16);
      i = *(v9[22] + 20 * v10[2] + 12);
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLatticeHashBackoff::checkSearchParametersValidityForArcGraph(FstSearchLatticeHashBackoff *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

void FstSearchLatticeHashBackoff::getHistory(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    v9 = a4;
    LODWORD(v11) = 0;
    v12 = a2;
    v13 = a2;
    do
    {
      v14 = (*(a1 + 160) + 16 * v13);
      if (*v14 == 16777209)
      {
        v11 = v11;
      }

      else
      {
        v11 = (v11 + 1);
      }

      v13 = *(*(a1 + 176) + 20 * v14[2] + 12);
    }

    while (v13 != -1);
    v15 = *(a3 + 12);
    if (v11 > v15)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v11 - v15, 0);
    }

    v16 = *(a3 + 8);
    if (v16 < v11)
    {
      v17 = v11 - v16;
      v18 = *a3 + 32 * v16;
      do
      {
        *v18 = 0x3FFFFAFFFFFFLL;
        *(v18 + 8) = xmmword_26286CC40;
        *(v18 + 24) = 0x1F0000001FLL;
        v18 += 32;
        --v17;
      }

      while (v17);
    }

    *(a3 + 8) = v11;
    if (v11)
    {
      v19 = *(a1 + 160);
      v20 = -16;
      do
      {
        v21 = (v19 + 16 * v12);
        v22 = v21[1];
        if (*v21 == 16777209)
        {
          if (v9)
          {
            v20 = (v22 - 1) / 2 + 1;
          }

          else
          {
            v20 = v22 + 1;
          }
        }

        else
        {
          if (v9)
          {
            v22 = (v22 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(*(a1 + 40), *v21, a3, a4, a5, a6, a7, a8, v26);
          if (v20 == -16)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = v20;
          }

          v24 = v26[1];
          v11 = (v11 - 1);
          v25 = *a3 + 32 * v11;
          *v25 = v26[0];
          *(v25 + 4) = v24;
          *(v25 + 8) = v27;
          *(v25 + 24) = v22 + 1;
          *(v25 + 28) = v23;
          v19 = *(a1 + 160);
          v20 = -16;
        }

        v12 = *(*(a1 + 176) + 20 * *(v19 + 16 * v12 + 8) + 12);
      }

      while (v12 != -1);
    }
  }
}

uint64_t FstSearchLatticeHashBackoff::makePartialResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = a1[20] + 16 * v15;
  return (*(a1[22] + 20 * *(v22 + 8)) + *(a1[11] + 4 * *(v22 + 4)));
}

int64x2_t FstSearchLatticeHash::advanceDeltas(FstSearchLatticeHash *this, int a2, int a3, SearchStats *a4, int a5)
{
  v94[0] = a2;
  v92 = 0u;
  v93 = 0u;
  SnapTime::recordTime(&v92, 1, 0, 0, 0);
  *v91 = 0xFFFFFFFF00000000;
  *&v91[8] = -1;
  *&v91[12] = -2;
  *&v91[16] = 0;
  *&v91[24] = -1;
  *(this + 58) = a3;
  v10 = (this + 232);
  v11 = *(this + 2);
  v12 = *(this + 50);
  if (v12)
  {
    v70 = a5;
    v71 = a4;
    for (i = 0; i < v12; ++i)
    {
      v14 = *(this + 24) + 28 * i;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12)) + v17;
          v19 = *(this + 58);
          if (v18 - v11 <= v19)
          {
            if (v19 > v18)
            {
              *v10 = v18;
            }

            v20 = (*(this + 24) + 28 * i);
            v21 = *(v20 + 12);
            *v91 = *v20;
            *&v91[12] = v21;
            *v91 = v18;
            FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v91);
          }
        }

        v22 = v15;
        do
        {
          v23 = *(this + 5);
          v24 = *(v23 + 152);
          v25 = *(v24 + 4 * v22);
          v26 = *(v24 + 4 * (v22 + 1));
          v27 = *(v23 + 140);
          if (v27 <= v26)
          {
            if (v27 <= v15 && (*(this + 356) & 1) != 0)
            {
              v34 = (v25 & 0xFFFFF) <= 0xFFFF3 ? v25 & 0xFFFFF : v25 & 0xFFFFF | 0xF00000;
              if (v34 != 16777210)
              {
                DgnString::DgnString(&v88);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v34, &v88, v35, v36, v37, v38, v39);
                v44 = &unk_26287F8B0;
                if (v88.i32[2])
                {
                  v44 = v88.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v40, v41, v42, v43, v15, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 8), v44);
                MiniFst::seed(this + 240, *(*(this + 24) + 28 * i), *(*(this + 24) + 28 * i + 20), *(*(this + 24) + 28 * i + 8), v26);
                DgnString::~DgnString(&v88);
              }
            }
          }

          else
          {
            v28 = (v25 >> 20) & 0x3FF;
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v24 + 4 * v22));
            v30 = *(this + 24) + 28 * i;
            v31 = ScoreNoBackoff + v28 + *v30;
            v32 = *(this + 58);
            if (v31 - v11 <= v32)
            {
              if (v32 > v31)
              {
                *v10 = v31;
              }

              v33 = *(v30 + 12);
              *v91 = *v30;
              *&v91[12] = v33;
              *v91 = v31;
              *&v91[4] = v26;
              *&v91[12] = v25;
              *&v91[16] = DWORD1(v33) + v28;
              FstSearchLatticeHashBackoff::maybeInsertHashedToken(this, v91);
            }
          }

          v22 += 2;
        }

        while ((v25 & 0x80000000) == 0);
        v12 = *(this + 50);
      }
    }

    a3 = *v10;
    a4 = v71;
    a5 = v70;
  }

  v90 = a3 + v11;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, this + 58, v11, a2);
  }

  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  v88 = vsubq_s64(v88, v92);
  v89 = vsubq_s64(v89, v93);
  v45 = *(this + 13);
  v46 = vaddq_s64(v45[1], v89);
  *v45 = vaddq_s64(*v45, v88);
  v45[1] = v46;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  FstSearchLatticeHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v90);
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v47 = vsubq_s64(v84, v86);
  v48 = *(this + 13);
  v49 = v48[3];
  v50 = vaddq_s64(v48[2], v47);
  v84 = v47;
  v85 = vsubq_s64(v85, v87);
  v51 = vaddq_s64(v49, v85);
  v48[2] = v50;
  v48[3] = v51;
  v82 = 0u;
  v83 = 0u;
  SnapTime::recordTime(&v82, 1, 0, 0, 0);
  v52 = *(this + 24);
  v53 = *(this + 26);
  *(this + 24) = v53;
  *(this + 26) = v52;
  LODWORD(v52) = *(this + 51);
  v54 = *(this + 27);
  *(this + 25) = v54;
  *(this + 54) = 0;
  *(this + 55) = v52;
  v55 = *(this + 6);
  if (v55 && v55 < v54)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v53, v55, v54);
  }

  FstSearchLatticeHashBackoff::generateNullTraces(this, a2, 0);
  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v56 = vsubq_s64(v80, v82);
  v57 = *(this + 13);
  v58 = v57[5];
  v59 = vaddq_s64(v57[4], v56);
  v80 = v56;
  v81 = vsubq_s64(v81, v83);
  v60 = vaddq_s64(v58, v81);
  v57[4] = v59;
  v57[5] = v60;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v61 = vsubq_s64(v76, v78);
  v62 = *(this + 13);
  v63 = v62[9];
  v64 = vaddq_s64(v62[8], v61);
  v76 = v61;
  v77 = vsubq_s64(v77, v79);
  v65 = vaddq_s64(v63, v77);
  v62[8] = v64;
  v62[9] = v65;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  *(this + 54) = 0;
  v66 = *(this + 50);
  *(this + 38) = v66;
  if (a4)
  {
    *(a4 + 2) += v66;
    if (*(a4 + 2) > v66)
    {
      LODWORD(v66) = *(a4 + 2);
    }

    *(a4 + 2) = v66;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLatticeHash::seedFromMiniFst(this, v94);
  }

  if (a5)
  {
    FstSearchLatticeHashBackoff::propagateNulls(this, v90, a2, a4);
  }

  *(this + 56) = a2;
  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v67 = *(this + 13);
  result = vaddq_s64(v67[6], vsubq_s64(v72, v74));
  v69 = vaddq_s64(v67[7], vsubq_s64(v73, v75));
  v67[6] = result;
  v67[7] = v69;
  return result;
}

uint64_t FstSearchLatticeHash::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 256) + 36 * v4);
        v6 = *v5;
        v43 = *v5;
        v44 = v5[5];
        v7 = v5[6];
        v41 = v5[4];
        v42 = v5[7];
        v8 = v5[2];
        v45 = 0;
        v46 = 0;
        v40 = v7;
        if ((v8 & 0x80000000) != 0)
        {
          LODWORD(v12) = -2 - v8;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          do
          {
            if (v10 == HIDWORD(v46))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v45, 1, 1);
              v10 = v46;
              v9 = v45;
            }

            *(v9 + 4 * v10) = v8;
            v11 = v46;
            v10 = v46 + 1;
            LODWORD(v46) = v46 + 1;
            v8 = *(*(v2 + 240) + 36 * v8 + 8);
          }

          while ((v8 & 0x80000000) == 0);
          LODWORD(v12) = -2 - v8;
          if ((v11 & 0x80000000) == 0)
          {
            do
            {
              v13 = *(v45 + 4 * v11);
              v14 = *(v2 + 240);
              v15 = (v14 + 36 * v13);
              v16 = *v15;
              v17 = *(v15 + 2);
              v18 = *(v2 + 184);
              if (v18 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v18 = *(v2 + 184);
                v14 = *(v2 + 240);
              }

              v19 = *(v2 + 176) + 20 * v18;
              *(v2 + 184) = v18 + 1;
              *v19 = v16;
              *(v19 + 4) = v17;
              *(v19 + 12) = v12;
              *(v19 + 16) = -1;
              v20 = *(v14 + 36 * v13 + 28);
              v21 = *(v2 + 168);
              if (v21 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v21 = *(v2 + 168);
              }

              v22 = *(v2 + 160);
              v23 = v22 + 16 * v21;
              *v23 = v20;
              *(v23 + 8) = v18;
              *(v23 + 12) = 0;
              v12 = *(v2 + 168);
              *(v2 + 168) = v12 + 1;
              *(v22 + 16 * v12 + 12) = 1;
            }

            while (v11-- > 0);
          }
        }

        v25 = *(v2 + 184);
        if (v25 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
          v25 = *(v2 + 184);
        }

        v26 = *(v2 + 176);
        *(v2 + 184) = v25 + 1;
        v27 = (v26 + 20 * v25);
        *v27 = v43;
        v27[1] = v41;
        v27[2] = v44;
        v27[3] = v12;
        v27[4] = -1;
        if (v42 == 16777213)
        {
          v28 = (*(v2 + 160) + 16 * v12);
          v29 = 16777209;
          if (*v28 == 16777209)
          {
            v25 = v28[2];
          }
        }

        else
        {
          v29 = v42;
        }

        v30 = *a2;
        v31 = *(v2 + 168);
        if (v31 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v31 = *(v2 + 168);
        }

        v32 = *(v2 + 160);
        v33 = (v32 + 16 * v31);
        *v33 = v29;
        v33[1] = v30;
        v33[2] = v25;
        v33[3] = 0;
        v34 = *(v2 + 168);
        *(v2 + 168) = v34 + 1;
        *(v32 + 16 * v34 + 12) = 1;
        v35 = *(v2 + 200);
        if (v35 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v35) = *(v2 + 200);
        }

        v36 = *(v2 + 192) + 28 * v35;
        *v36 = v43;
        *(v36 + 4) = v40;
        *(v36 + 8) = v34;
        *(v36 + 12) = -2;
        *(v36 + 16) = v41;
        *(v36 + 20) = v44;
        *(v36 + 24) = -1;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
        ++v4;
        LODWORD(v37) = *(v2 + 264);
        v38 = *(v2 + 20);
        if (v37 >= v38)
        {
          v37 = v38;
        }

        else
        {
          v37 = v37;
        }
      }

      while (v4 < v37);
    }
  }

  return this;
}

void sub_26262A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

unint64_t FstSearchLatticeHash::annihilateNullTraces(unint64_t this)
{
  if (*(this + 168))
  {
    v1 = this;
    v2 = 0;
    do
    {
      v3 = *(v1 + 160) + 16 * v2;
      v32 = 0;
      v33 = 0;
      FstSearchLatticeHashBackoff::getCandidateTokensForTrace(v1, v3, &v32);
      v4 = v33;
      v5 = v32;
      if (v33 < 2 || (mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v32 + 20, (v33 - 1), 20), v4 = v33, v5 = v32, v33 < 2))
      {
        v6 = 0;
        v9 = xmmword_26287F850;
      }

      else
      {
        v6 = 0;
        v7 = v32 + 28;
        v8 = v33 - 1;
        v9 = xmmword_26287F850;
        do
        {
          if (*v7 != *&v5[20 * v6 + 8] && *(v5 + 2) != *v7)
          {
            ++v6;
            v10 = *(v7 - 2);
            v11 = &v5[20 * v6];
            *(v11 + 4) = v7[2];
            *v11 = v10;
          }

          v7 += 5;
          --v8;
        }

        while (v8);
      }

      v12 = v6 + 1;
      if (HIDWORD(v33) < v12)
      {
        v34 = 0;
        HIDWORD(v33) = realloc_array(v5, &v34, 20 * v12, 20 * v4, 20 * v4, 1) / 0x14;
        v5 = v34;
        v32 = v34;
        v4 = v33;
        v9 = xmmword_26287F850;
      }

      if (v4 < v12)
      {
        v13 = v12 - v4;
        v14 = &v5[20 * v4 + 16];
        do
        {
          *(v14 - 1) = v9;
          *v14 = -1;
          v14 += 20;
          --v13;
        }

        while (v13);
      }

      LODWORD(v33) = v6 + 1;
      mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(v5 + 20, v6, 20);
      v15 = v33;
      v16 = *(v1 + 20);
      if (v33 > v16)
      {
        if (HIDWORD(v33) < v16)
        {
          v34 = 0;
          HIDWORD(v33) = realloc_array(v32, &v34, 20 * v16, 20 * v33, 20 * v33, 1) / 0x14;
          v32 = v34;
          v15 = v33;
        }

        if (v15 < v16)
        {
          v17 = v16 - v15;
          v18 = v32 + 20 * v15 + 16;
          do
          {
            *(v18 - 1) = xmmword_26287F850;
            *v18 = -1;
            v18 += 5;
            --v17;
          }

          while (v17);
        }

        LODWORD(v33) = v16;
        v15 = v16;
      }

      if (v15)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0xFFFFFFFFLL;
        do
        {
          if (*(v3 + 12) <= v20)
          {
            v26 = *(v1 + 184);
            v27 = *(v1 + 176);
            *(v27 + 20 * v21 + 16) = v26;
            v28 = v32;
            if (v26 == *(v1 + 188))
            {
              DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v1 + 176, 1, 1);
              v29 = *(v1 + 184);
              v27 = *(v1 + 176);
              v15 = v33;
            }

            else
            {
              v29 = v26;
            }

            v30 = v27 + 20 * v29;
            v31 = *&v28[v19];
            *(v30 + 16) = *&v28[v19 + 16];
            *v30 = v31;
            ++*(v1 + 184);
          }

          else
          {
            v22 = *(v1 + 176) + 20 * (v20 + *(v3 + 8));
            v23 = *(v32 + v19);
            *(v22 + 16) = *(v32 + v19 + 16);
            *v22 = v23;
            v24 = *(v3 + 8);
            v25 = v20 + v24;
            if (v20)
            {
              *(*(v1 + 176) + 20 * (v20 + v24 - 1) + 16) = v25;
            }

            v26 = v25;
          }

          ++v20;
          v19 += 20;
          v21 = v26;
        }

        while (v20 < v15);
      }

      *(v3 + 12) = 0;
      this = DgnIArray<Utterance *>::~DgnIArray(&v32);
      ++v2;
    }

    while (v2 < *(v1 + 168));
  }

  return this;
}

void sub_26262AA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHash::collectTraces(FstSearchLatticeHash *this)
{
  v2 = *(this + 42);
  v40 = 0;
  v39 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v39 = v3;
    v40 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v40);
  }

  v5 = *(this + 50);
  if (v5)
  {
    v6 = 0;
    v7 = v39;
    v8 = (*(this + 24) + 8);
    do
    {
      v10 = *v8;
      v8 += 7;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 50);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (v11)
  {
    v12 = 0;
    v13 = v39;
    do
    {
      --v11;
      if (v12)
      {
        v12 = 1;
      }

      else if (*(*(this + 20) + 16 * v11) == 16777213)
      {
        v12 = 1;
        *(v13 + v11) = 1;
      }

      else
      {
        v12 = 0;
      }

      if (*(v13 + v11))
      {
        v14 = *(*(this + 20) + 16 * v11 + 8);
        if (v14 != -1)
        {
          v15 = *(this + 22);
          do
          {
            v16 = v15 + 20 * v14;
            v17 = *(v16 + 12);
            if (v17 != -1)
            {
              *(v13 + v17) = 1;
            }

            v14 = *(v16 + 16);
          }

          while (v14 != -1);
        }
      }
    }

    while (v11);
    v18 = *(this + 42);
    v37 = 0;
    v38 = 0;
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (*(v39 + v19))
        {
          v21 = *(this + 20);
          if (v19 != v20)
          {
            *(v21 + 16 * v20) = *(v21 + 16 * v19);
            v21 = *(this + 20);
          }

          v22 = v38;
          *(v21 + 16 * v20 + 8) = v38;
          v23 = *(v21 + 16 * v19 + 8);
          if (v23 == -1)
          {
            v24 = v37;
          }

          else
          {
            v25 = *(this + 22);
            do
            {
              if (v22 == HIDWORD(v38))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(&v37, 1, 1);
                v22 = v38;
              }

              v24 = v37;
              v26 = v37 + 20 * v22;
              *v26 = *(v25 + 20 * v23);
              LODWORD(v38) = ++v22;
              *(v26 + 16) = v22;
              v27 = *(v26 + 12);
              if (v27 != -1)
              {
                *(v26 + 12) = *(v39 + v27);
              }

              v25 = *(this + 22);
              v23 = *(v25 + 20 * v23 + 16);
            }

            while (v23 != -1);
            v21 = *(this + 20);
          }

          *(v24 + 20 * (v22 - 1) + 16) = -1;
          *(v21 + 16 * v20 + 12) = v22 - *(v21 + 16 * v20 + 8);
          *(v39 + v19) = v20++;
          v18 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v18);
      v28 = *(this + 43);
      if (v20 > v28)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v20 - v28, 0);
        v18 = *(this + 42);
      }

      if (v18 < v20)
      {
        v29 = v20 - v18;
        v30 = (*(this + 20) + 16 * v18);
        do
        {
          *v30++ = xmmword_26287F860;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v37 = 0;
    v38 = 0;
  }

  *(this + 42) = v20;
  v31 = *(this + 22);
  *(this + 22) = v37;
  v37 = v31;
  LODWORD(v31) = *(this + 47);
  *(this + 23) = v38;
  LODWORD(v38) = 0;
  HIDWORD(v38) = v31;
  v32 = *(this + 50);
  if (v32)
  {
    v33 = v39;
    v34 = (*(this + 24) + 8);
    do
    {
      v35 = *v34;
      if (v35 != -1)
      {
        *v34 = *(v33 + v35);
      }

      v34 += 7;
      --v32;
    }

    while (v32);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v37);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v39);
}

void sub_26262ADB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a11);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLatticeHash::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeHash::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeHash::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

int64x2_t FstSearchLatticeHash::reset(FstSearchLatticeHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchLatticeHash::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeHash::beginTopRecPassSyncRecog(FstSearchLatticeHash *this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 240, a3, *(this + 4));
    result = ArcGraph::findBackoffState(*(this + 5));
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeHash::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLatticeHash::collectTraces(this);
  FstSearchLatticeHash::annihilateNullTraces(this);
  FstSearchLatticeHashBackoff::annihilateNullActiveTokens(this);
  FstSearchLatticeHashBackoff::annihilateNullLongestFinal(this);
  FstSearchLatticeHash::collectTraces(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeHash::printSize(FstSearchLatticeHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950, &v117);
  if (v118)
  {
    v16 = v117;
  }

  else
  {
    v16 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v16);
  DgnString::~DgnString(&v117);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F8B0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952, &v117);
  if (v118)
  {
    v27 = v117;
  }

  else
  {
    v27 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954, &v117);
  if (v118)
  {
    v32 = v117;
  }

  else
  {
    v32 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955, &v117);
  if (v118)
  {
    v37 = v117;
  }

  else
  {
    v37 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v112 = a2;
  v113 = a6;
  v114 = a3;
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956, &v117);
  if (v118)
  {
    v42 = v117;
  }

  else
  {
    v42 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v39, v40, v41, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v42, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v43 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  v44 = *(this + 42);
  v45 = 16 * v44;
  if (v44 <= 0)
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = v45 + v43 + 16 * (*(this + 43) - v44);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957, &v117);
  if (v118)
  {
    v52 = v117;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v49, v50, v51, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v52, v47, v46, 0);
  DgnString::~DgnString(&v117);
  *a4 += v47;
  *a5 += v46;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 46);
  v55 = 20 * v54;
  if (v54 <= 0)
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = v55 + v53 + 20 * (*(this + 47) - v54);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959, &v117);
  if (v118)
  {
    v62 = v117;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v62, v57, v56, 0);
  DgnString::~DgnString(&v117);
  *a4 += v57;
  *a5 += v56;
  v63 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  v64 = *(this + 50);
  v65 = 26 * v64;
  if (v64 <= 0)
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = v65 + v63 + 26 * (*(this + 51) - v64);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964, &v117);
  if (v118)
  {
    v72 = v117;
  }

  else
  {
    v72 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v21, &unk_26287F8B0, v22, v22, v72, v67, v66, 0);
  DgnString::~DgnString(&v117);
  *a4 += v67;
  *a5 += v66;
  v73 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  v74 = *(this + 54);
  v75 = 26 * v74;
  if (v74 <= 0)
  {
    v75 = 0;
  }

  v76 = v75 + v73;
  v77 = v75 + v73 + 26 * (*(this + 55) - v74);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966, &v117);
  if (v118)
  {
    v82 = v117;
  }

  else
  {
    v82 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v21, &unk_26287F8B0, v22, v22, v82, v77, v76, 0);
  DgnString::~DgnString(&v117);
  *a4 += v77;
  *a5 += v76;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968, &v117);
  if (v118)
  {
    v87 = v117;
  }

  else
  {
    v87 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26287F8B0, v22, v22, v87, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970, &v117);
  if (v118)
  {
    v92 = v117;
  }

  else
  {
    v92 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v89, v90, v91, v21, &unk_26287F8B0, v22, v22, v92, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972, &v117);
  if (v118)
  {
    v97 = v117;
  }

  else
  {
    v97 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v94, v95, v96, v21, &unk_26287F8B0, v22, v22, v97, 4, 4, 0);
  DgnString::~DgnString(&v117);
  *a4 += 4;
  *a5 += 4;
  v98 = sizeObject(this + 240, 0);
  v99 = sizeObject(this + 240, 1);
  v100 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974, &v117);
  if (v118)
  {
    v105 = v117;
  }

  else
  {
    v105 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v21, &unk_26287F8B0, v22, v22, v105, v98, v99, v100);
  DgnString::~DgnString(&v117);
  *a4 += v98;
  *a5 += v99;
  *v113 += v100;
  v115 = 0;
  v116 = 0;
  SearchItf::printSize(this, v112, v21, &v116, &v115, &v115);
  *a4 += v116;
  *a5 += v115;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985, &v117);
  if (v118)
  {
    v110 = v117;
  }

  else
  {
    v110 = &unk_26287F8B0;
  }

  v111 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v114, &unk_26287F8B0, (35 - v114), (35 - v114), v110, *a4, *a5, *v113);
  DgnString::~DgnString(&v117);
}

BOOL FstSearchLatticeHash::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 20 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLatticeHash::buildWordLattice(uint64_t a1, unint64_t a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if ((*v13 - 16777209) >= 2 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 20 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeHash::createLatticeLink(a1, v11, v15, 0xFFFFFFFFLL, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeHash::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_26262BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, uint64_t a5, const WordLatticeLC *a6, unint64_t a7, uint64_t a8, char a9)
{
  v11 = a5;
  v12 = a4;
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 20 * v19 + 12) == a2)
      {
        v22 = (v21 + 20 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(*(a1 + 40), *(v16 + 16 * a2), a3, a4, a5, a6, a7, a8, v44);
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (v44[0] >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((v12 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((v12 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * v12 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 16 * v12 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, v11, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26262BD48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLatticeHash::endTopRecSyncRecog(FstSearchLatticeHash *this)
{
  VirtMap::setEmpty(*(this + 14));
  result = *(this + 14);
  *(this + 14) = 0;
  return result;
}

uint64_t FstSearchLatticeHash::getBestExitScore(FstSearchLatticeHash *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 28;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 20 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 57) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLatticeHash::getBestScoreMaybeUpdateFstNode(FstSearchLatticeHash *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 28;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

unint64_t FstSearchLatticeHash::seedTheory(FstSearchLatticeHash *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 20 * v11;
    *(v12 + 4) = xmmword_26287F880;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 50);
  if (v16 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 192, 1, 1);
    v16 = *(this + 50);
  }

  v17 = *(this + 24) + 28 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 24) = -1;
  LODWORD(v17) = *(this + 50) + 1;
  *(this + 50) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t FstSearchLatticeHash::expandEmbFstHistory(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 228);
  if (v8 != -1)
  {
    v9 = result;
    v10 = (*(result + 160) + 16 * v8);
    for (i = *(*(result + 176) + 20 * v10[2] + 12); i != -1; v8 = v16)
    {
      v16 = i;
      result = v9[5];
      if (*v10 == 16777209)
      {
        v17 = (*(result + 174) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v10, a3, a4, a5, a6, a7, a8);
        v17 = result;
      }

      v18 = *(a2 + 8);
      if (v18 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v18 = *(a2 + 8);
      }

      *(*a2 + 4 * v18) = v17;
      ++*(a2 + 8);
      v19 = *(a6 + 8);
      if (v19 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v19 = *(a6 + 8);
      }

      *(*a6 + 4 * v19) = v8;
      ++*(a6 + 8);
      v20 = v9[20];
      v21 = *(v20 + 16 * v8 + 4);
      v22 = *(a3 + 8);
      if (v22 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v22 = *(a3 + 8);
        v20 = v9[20];
      }

      *(*a3 + 4 * v22) = v21;
      ++*(a3 + 8);
      v23 = *(v9[22] + 20 * *(v20 + 16 * v8 + 8));
      v24 = *(a5 + 8);
      if (v24 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v24 = *(a5 + 8);
      }

      *(*a5 + 4 * v24) = v23;
      ++*(a5 + 8);
      v10 = (v9[20] + 16 * v16);
      i = *(v9[22] + 20 * v10[2] + 12);
    }

    *a4 = *v10;
  }

  return result;
}

void FstSearchLatticeHash::checkSearchParametersValidityForArcGraph(FstSearchLatticeHash *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  if (*(v8 + 178) == 1)
  {
    v9 = a3;
    ArcGraph::ensureHeaderValid(*(this + 5), "Header", a3, a4, a5, a6, a7, a8);
    if (*(v8 + 202) == 1 && *(v8 + 188) != *(this + 35))
    {
      v16 = *(v8 + 188);
      v19 = *(this + 35);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchInterWordSilencePenalty");
    }

    if (*(v8 + 192) != *(this + 34))
    {
      v17 = *(v8 + 192);
      v20 = *(this + 34);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "SearchPerWordPenalty");
    }

    if (*(v8 + 196) != *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608))
    {
      v18 = *(v8 + 196);
      v21 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 5) + 174)) + 608);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, "Voc");
    }

    v14 = *(v8 + 203);
    if (v9)
    {
      if (a2)
      {
        if ((*(v8 + 203) & 1) == 0)
        {
          return;
        }
      }

      else if (*(v8 + 203))
      {
        return;
      }

      v23 = *(v8 + 203);
      v15 = "DropAlternateFrames";
      goto LABEL_18;
    }

    if (a2 & 1) != 0 || (*(v8 + 203))
    {
      v22 = *(v8 + 203);
      v15 = "NoDecimation";
LABEL_18:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", v12, v13, v15);
    }
  }
}

uint64_t FstSearchLatticeHash::makePartialResult(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v15 = BestTrace;
  FstSearchLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4, v11, v12, v13, v14);
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  if (*(a3 + 8))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *a3 + v16;
      v20 = *(v19 + 28);
      WordLatticeLC::WordLatticeLC(v24, v19, v18, *(v19 + 24) - v18, v20 - *(v19 + 24), v25);
      v21 = *(a2 + 8);
      if (v21 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v21) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v21), v24);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v24);
      ++v17;
      v16 += 32;
      v18 = v20;
    }

    while (v17 < *(a3 + 8));
  }

  v22 = a1[20] + 16 * v15;
  return (*(a1[22] + 20 * *(v22 + 8)) + *(a1[11] + 4 * *(v22 + 4)));
}

uint64_t FstSearchDurationHashBackoff::maybeInitDurModel(FstSearchDurationHashBackoff *this, const PicMgr *a2, int a3)
{
  v15 = 0;
  v16 = 0;
  PicMgr::getPelDurIdMap(a2, &v15);
  if (a3 == 1)
  {
    v6 = 56;
  }

  else
  {
    v6 = 72;
  }

  v7 = v16;
  v8 = *(this + 51);
  if (v16 <= v8)
  {
    *(this + 50) = v16;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    DgnPrimArray<short>::reallocElts(this + 192, v16 - v8, 0);
    *(this + 50) = v7;
  }

  v9 = 0;
  v10 = v15;
  v11 = *(this + 24);
  do
  {
    if (!v9 || (v12 = *(v10 + 2 * v9), v12 == 0xFFFF))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(a2 + v6) + 2 * v12);
    }

    *(v11 + 2 * v9++) = v13;
  }

  while (v7 != v9);
LABEL_13:
  *(this + 208) = *(a2 + 8);
  *(this + 53) = *(a2 + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

int64x2_t FstSearchDurationHashBackoff::advanceDeltas(FstSearchDurationHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v103[0] = a2;
  v101 = 0u;
  v102 = 0u;
  SnapTime::recordTime(&v101, 1, 0, 0, 0);
  *v100 = 0xFFFFFFFF00000000;
  *&v100[8] = -1;
  *&v100[12] = -2;
  *&v100[16] = 0;
  *&v100[24] = 0;
  v10 = (this + 256);
  *(this + 64) = a3;
  v11 = *(this + 2);
  v12 = *(this + 56);
  if (v12)
  {
    v76 = a5;
    v77 = a4;
    v13 = 0;
    v80 = *(this + 53);
    v78 = v8;
    v79 = *(this + 208);
    do
    {
      v14 = *(this + 27) + 28 * v13;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          if (*(this + 19) + *(this + 64) >= 5000)
          {
            v17 = 5000;
          }

          else
          {
            v17 = *(this + 19) + *(this + 64);
          }

          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v14 + 12), *v14, v17);
          v19 = (*(this + 27) + 28 * v13);
          v20 = *v19;
          *&v100[12] = *(v19 + 12);
          *v100 = v20;
          v21 = WORD6(v20);
          if (WORD6(v20))
          {
            if (*&v100[20] >= 1)
            {
              v22 = v79 - *&v100[20];
            }

            else
            {
              v22 = v79;
            }

            v21 = v22 & ((*&v100[20] - v79) >> 31);
            *&v100[20] -= v79;
            *&v100[24] += v21;
          }

          v23 = v21 + ScoreAllowBackoff_updateNodeInSequence;
          if (v23 - v11 <= *v10)
          {
            if (*v10 > v23)
            {
              *v10 = v23;
            }

            *v100 = v23;
            FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v100);
          }
        }

        v24 = v15;
        do
        {
          v25 = *(this + 5);
          v26 = *(v25 + 152);
          v27 = *(v26 + 4 * v24);
          v28 = *(v26 + 4 * (v24 + 1));
          v29 = *(v25 + 140);
          if (v29 <= v28)
          {
            if (v29 <= v15 && (*(this + 380) & 1) != 0)
            {
              v38 = (v27 & 0xFFFFF) <= 0xFFFF3 ? v27 & 0xFFFFF : v27 & 0xFFFFF | 0xF00000;
              if (v38 != 16777210)
              {
                DgnString::DgnString(&v97);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v38, &v97, v39, v40, v41, v42, v43);
                v48 = &unk_26287F8B0;
                if (v97.i32[2])
                {
                  v48 = v97.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v44, v45, v46, v47, v15, *(*(this + 27) + 28 * v13), *(*(this + 27) + 28 * v13 + 8), v48);
                MiniFst::seed(this + 264, *(*(this + 27) + 28 * v13), 0, *(*(this + 27) + 28 * v13 + 8), v28);
                DgnString::~DgnString(&v97);
              }
            }
          }

          else
          {
            v30 = (v27 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 64) >= 5000)
            {
              v31 = 5000;
            }

            else
            {
              v31 = *(this + 19) + *(this + 64);
            }

            v32 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v26 + 4 * v24), *(*(this + 27) + 28 * v13) + v30, v31);
            v33 = (*(this + 27) + 28 * v13);
            v34 = *v33;
            *&v100[12] = *(v33 + 12);
            *v100 = v34;
            v35 = *&v100[20] & ~(*&v100[20] >> 31);
            v36 = v27;
            if (v27)
            {
              v36 = *(*(this + 24) + 2 * v27);
              v35 -= v36 & (v36 >> 31);
              v37 = v80;
            }

            else
            {
              v37 = 0;
            }

            v49 = v37 + v35;
            *&v100[20] = v36;
            *&v100[24] += v49;
            v50 = v49 + v32;
            if (v50 - v11 <= *v10)
            {
              if (*v10 > v50)
              {
                *v10 = v50;
              }

              *v100 = v50;
              *&v100[4] = v28;
              *&v100[12] = v27;
              *&v100[16] += v30;
              FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v100);
            }
          }

          v24 += 2;
        }

        while ((v27 & 0x80000000) == 0);
        v12 = *(this + 56);
      }

      ++v13;
    }

    while (v13 < v12);
    a3 = *v10;
    v8 = v78;
    a4 = v77;
    a5 = v76;
  }

  v99 = a3 + v11;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, this + 64, v11, v8);
  }

  v97 = 0u;
  v98 = 0u;
  SnapTime::recordTime(&v97, 1, 0, 0, 0);
  v97 = vsubq_s64(v97, v101);
  v98 = vsubq_s64(v98, v102);
  v51 = *(this + 13);
  v52 = vaddq_s64(v51[1], v98);
  *v51 = vaddq_s64(*v51, v97);
  v51[1] = v52;
  v95 = 0u;
  v96 = 0u;
  SnapTime::recordTime(&v95, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v99);
  v93 = 0u;
  v94 = 0u;
  SnapTime::recordTime(&v93, 1, 0, 0, 0);
  v53 = vsubq_s64(v93, v95);
  v54 = *(this + 13);
  v55 = v54[3];
  v56 = vaddq_s64(v54[2], v53);
  v93 = v53;
  v94 = vsubq_s64(v94, v96);
  v57 = vaddq_s64(v55, v94);
  v54[2] = v56;
  v54[3] = v57;
  v91 = 0u;
  v92 = 0u;
  SnapTime::recordTime(&v91, 1, 0, 0, 0);
  v58 = *(this + 27);
  v59 = *(this + 29);
  *(this + 27) = v59;
  *(this + 29) = v58;
  LODWORD(v58) = *(this + 57);
  v60 = *(this + 30);
  *(this + 28) = v60;
  *(this + 60) = 0;
  *(this + 61) = v58;
  v61 = *(this + 6);
  if (v61 && v61 < v60)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v59, v61, v60);
  }

  v89 = 0u;
  v90 = 0u;
  SnapTime::recordTime(&v89, 1, 0, 0, 0);
  v62 = vsubq_s64(v89, v91);
  v63 = *(this + 13);
  v64 = v63[5];
  v65 = vaddq_s64(v63[4], v62);
  v89 = v62;
  v90 = vsubq_s64(v90, v92);
  v66 = vaddq_s64(v64, v90);
  v63[4] = v65;
  v63[5] = v66;
  v87 = 0u;
  v88 = 0u;
  SnapTime::recordTime(&v87, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  v67 = vsubq_s64(v85, v87);
  v68 = *(this + 13);
  v69 = v68[9];
  v70 = vaddq_s64(v68[8], v67);
  v85 = v67;
  v86 = vsubq_s64(v86, v88);
  v71 = vaddq_s64(v69, v86);
  v68[8] = v70;
  v68[9] = v71;
  v83 = 0u;
  v84 = 0u;
  SnapTime::recordTime(&v83, 1, 0, 0, 0);
  *(this + 60) = 0;
  v72 = *(this + 56);
  *(this + 38) = v72;
  if (a4)
  {
    *(a4 + 2) += v72;
    if (*(a4 + 2) > v72)
    {
      LODWORD(v72) = *(a4 + 2);
    }

    *(a4 + 2) = v72;
  }

  if (*(this + 380) == 1)
  {
    FstSearchDurationHashBackoff::seedFromMiniFst(this, v103);
  }

  if (a5)
  {
    FstSearchDurationHashBackoff::propagateNulls(this, v99, v8, a4);
  }

  *(this + 62) = v8;
  v81 = 0u;
  v82 = 0u;
  SnapTime::recordTime(&v81, 1, 0, 0, 0);
  v73 = *(this + 13);
  result = vaddq_s64(v73[6], vsubq_s64(v81, v83));
  v75 = vaddq_s64(v73[7], vsubq_s64(v82, v84));
  v73[6] = result;
  v73[7] = v75;
  return result;
}

__n128 FstSearchDurationHashBackoff::maybeInsertHashedToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v20 = *(a1 + 240);
    *(v17 + 4 * v6) = v20;
    if (v20 == *(a1 + 244))
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(a1 + 232, 1, 1);
      v20 = *(a1 + 240);
    }

    v21 = *(a1 + 232) + 28 * v20;
    result = *a2;
    *(v21 + 12) = *(a2 + 12);
    *v21 = result;
    ++*(a1 + 240);
  }

  else
  {
    v19 = *(a1 + 232) + 28 * v18;
    if (*v19 > *a2)
    {
      result = *a2;
      *(v19 + 12) = *(a2 + 12);
      *v19 = result;
    }
  }

  return result;
}

uint64_t FstSearchDurationHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 240);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 232), a2, v4);
    v8 = *(*(v6 + 232) + 28 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 244);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v6 + 232, a2 - v9, 0);
    }

    v10 = *(v6 + 240);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = *(v6 + 232) + 28 * v10 + 12;
      do
      {
        *(v12 - 12) = 0xFFFFFFFF00000000;
        *(v12 - 4) = -1;
        *v12 = -2;
        *(v12 + 8) = 0;
        *(v12 + 4) = 0;
        v12 += 28;
        --v11;
      }

      while (v11);
    }

    *(v6 + 240) = a2;
  }

  return this;
}

uint64_t FstSearchDurationHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 380) == 1)
  {
    v2 = this;
    v3 = *(this + 288);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 280) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 28 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 16 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 28 * v14);
        *v15 = v10;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[5] = 0;
        v15[6] = 0;
        v15[4] = v11;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 224);
        if (v17 == *(v2 + 228))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 216, 1, 1);
          LODWORD(v17) = *(v2 + 224);
        }

        v18 = *(v2 + 216) + 28 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        ++*(v2 + 224);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 288);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

_DWORD *FstSearchDurationHashBackoff::propagateNulls(_DWORD *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  v6 = this[56];
  if (!v6)
  {
    v37 = this[38];
    if (a4)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v48 = this[42];
  v49 = a4;
  v7 = 0;
  v58 = a2;
  do
  {
    v8 = *(*(v4 + 216) + 28 * v7 + 4);
    v9 = *(v4 + 40);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 216) + 28 * v7 + 4);
      v57 = v7;
      v56 = v10;
      do
      {
        v11 = *(v4 + 40);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_32;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_32;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(v4 + 216);
        v20 = v19 + 28 * v7;
        v21 = *v20 + v18;
        if (v21 > a2)
        {
          goto LABEL_32;
        }

        v22 = *(v20 + 8);
        v23 = *(v20 + 12);
        v24 = *(v20 + 14);
        v25 = *(v20 + 16);
        v26 = *(v20 + 24);
        v27 = v25 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 228))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v21 = *v20 - v25;
            v28 = 0;
          }

          else
          {
            v28 = v25 + v18;
          }

          if (v16 == 16777214)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v30 = *(v4 + 168);
          if (v30 == *(v4 + 172))
          {
            v53 = *(v20 + 14);
            v54 = *(v20 + 12);
            v51 = v29;
            v52 = *(v20 + 8);
            v50 = v28;
            DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v4 + 160, 1, 1);
            v28 = v50;
            v29 = v51;
            v22 = v52;
            v24 = v53;
            v23 = v54;
            a2 = v58;
            LODWORD(v30) = *(v4 + 168);
          }

          this = 0;
          v31 = (*(v4 + 160) + 28 * v30);
          *v31 = v16;
          v31[1] = a3;
          v31[2] = -1;
          v31[3] = v21;
          v31[4] = v22;
          v31[5] = v28;
          v31[6] = v26;
          v22 = *(v4 + 168);
          *(v4 + 168) = v22 + 1;
          v21 += v29;
          v6 = *(v4 + 224);
          v26 = 0;
          if (v6 != *(v4 + 228))
          {
            goto LABEL_30;
          }
        }

        v32 = v27;
        v33 = v24;
        v34 = v23;
        v35 = v22;
        DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v4 + 216, 1, 1);
        v22 = v35;
        v24 = v33;
        v27 = v32;
        v8 = v56;
        v7 = v57;
        v23 = v34;
        a2 = v58;
        v6 = *(v4 + 224);
        this = v26;
LABEL_30:
        v19 = *(v4 + 216);
        LODWORD(v26) = this;
LABEL_31:
        v36 = v19 + 28 * v6;
        *v36 = v21;
        *(v36 + 4) = v14;
        *(v36 + 8) = v22;
        *(v36 + 12) = v23;
        *(v36 + 14) = v24;
        *(v36 + 16) = v27;
        *(v36 + 20) = 0;
        *(v36 + 24) = v26;
        v6 = *(v4 + 224) + 1;
        *(v4 + 224) = v6;
LABEL_32:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v37 = *(v4 + 152);
  if (v6 > v37)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 216) + 28 * v37), v6 - v37, 28);
    v37 = *(v4 + 152);
    v6 = *(v4 + 224);
  }

  a4 = v49;
  v5 = v48;
  if (v37 < v6)
  {
    v38 = v37;
    v39 = v37 - 1;
    v40 = 28 * v37;
    do
    {
      v41 = *(v4 + 216);
      v42 = (v41 + v40);
      if (*(v41 + v40 + 4) != *(v41 + 28 * v39 + 4))
      {
        v43 = (v41 + 28 * v37);
        v44 = *v42;
        *(v43 + 12) = *(v42 + 12);
        *v43 = v44;
        ++v37;
        v6 = *(v4 + 224);
      }

      ++v38;
      ++v39;
      v40 += 28;
    }

    while (v38 < v6);
  }

  if (v49)
  {
LABEL_42:
    *(a4 + 1) += *(v4 + 168) - v5;
  }

LABEL_43:
  v45 = *(v4 + 228);
  if (v37 > v45)
  {
    this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v4 + 216, v37 - v45, 0);
    v6 = *(v4 + 224);
  }

  if (v6 < v37)
  {
    v46 = v37 - v6;
    v47 = *(v4 + 216) + 28 * v6 + 12;
    do
    {
      *(v47 - 12) = 0xFFFFFFFF00000000;
      *(v47 - 4) = -1;
      *v47 = -2;
      *(v47 + 8) = 0;
      *(v47 + 4) = 0;
      v47 += 28;
      --v46;
    }

    while (v46);
  }

  *(v4 + 224) = v37;
  return this;
}