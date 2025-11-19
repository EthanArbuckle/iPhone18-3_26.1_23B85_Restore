uint64_t MiniFst::beginTopFstSyncRecog(uint64_t this)
{
  *(this + 96) = 0;
  **(this + 32) = 5000;
  return this;
}

uint64_t MiniFst::seed(uint64_t this, int a2, int a3, int a4, int a5)
{
  v5 = *(this + 32);
  if (*v5 > a2)
  {
    *(v5 + 8) = -2 - a4;
    *(v5 + 12) = 0;
    v6 = *(*(this + 80) + 144);
    *v5 = a2;
    *(v5 + 4) = v6;
    *(v5 + 16) = 0;
    *(v5 + 20) = a3;
    *(v5 + 24) = a5;
    if (!*(this + 96))
    {
      *(this + 96) = 1;
    }
  }

  return this;
}

uint64_t MiniFst::updateFrame(uint64_t this, int *a2, int a3, int a4)
{
  *(this + 104) = -1;
  v4 = *(this + 96);
  if (!v4)
  {
    return this;
  }

  v5 = this;
  *(this + 100) = a4;
  v6 = **(this + 32);
  if (v4 <= (v6 > 4999))
  {
    LODWORD(v10) = 1;
    goto LABEL_54;
  }

  v9 = v6 > 4999;
  v10 = 1;
  do
  {
    v11 = *(v5 + 32) + 28 * v9;
    v12 = *(v11 + 4);
    if (*(*(v5 + 80) + 140) > v12)
    {
      this = PelScoreCache::getScoreNoBackoff(*(v5 + 88), *(v11 + 12));
      v13 = *(v5 + 32) + 28 * v9;
      v14 = *v13 + this;
      if (v14 - a3 <= *a2)
      {
        if (*a2 > v14)
        {
          *a2 = v14;
        }

        v15 = *(v5 + 64);
        v16 = *(v15 + 4 * v12);
        v17 = *(v5 + 48);
        if (v16 == -1)
        {
          *(v15 + 4 * v12) = v10;
          if (!v17)
          {
            v10 = (v10 + 1);
            goto LABEL_15;
          }

          v18 = v17 + 28 * v10;
          v10 = (v10 + 1);
        }

        else
        {
          v18 = v17 + 28 * v16;
          if (v14 >= *v18)
          {
            goto LABEL_15;
          }
        }

        v19 = *(v13 + 12);
        *v18 = *v13;
        *(v18 + 12) = v19;
        *v18 = v14;
        goto LABEL_15;
      }
    }

    do
    {
LABEL_15:
      v20 = *(v5 + 80);
      v21 = *(v20 + 152);
      v22 = *(v21 + 4 * v12);
      LODWORD(v21) = *(v21 + 4 * (v12 + 1));
      v23 = v21 & 0xFFFFFFF;
      if (*(v20 + 140) > (v21 & 0xFFFFFFF))
      {
        v24 = (v22 >> 20) & 0x3FF;
        this = PelScoreCache::getScoreNoBackoff(*(v5 + 88), v22);
        v25 = *(v5 + 32) + 28 * v9;
        v26 = this + v24 + *v25;
        if (v26 - a3 <= *a2)
        {
          if (*a2 > v26)
          {
            *a2 = v26;
          }

          v27 = *(v5 + 64);
          v28 = *(v27 + 4 * v23);
          v29 = *(v5 + 48);
          if (v28 == -1)
          {
            *(v27 + 4 * v23) = v10;
            if (v29)
            {
              v30 = v29 + 28 * v10;
              v10 = (v10 + 1);
LABEL_24:
              *v30 = v26;
              *(v30 + 4) = v23;
              *(v30 + 8) = *(v25 + 8);
              *(v30 + 12) = v22;
              *(v30 + 16) = *(v25 + 16) + v24;
              *(v30 + 20) = *(v25 + 20);
              goto LABEL_26;
            }

            v10 = (v10 + 1);
          }

          else
          {
            v30 = v29 + 28 * v28;
            if (v26 < *v30)
            {
              goto LABEL_24;
            }
          }
        }
      }

LABEL_26:
      v12 += 2;
    }

    while ((v22 & 0x80000000) == 0);
    ++v9;
  }

  while (v9 < *(v5 + 96));
  if (v10 >= 2)
  {
    v31 = *(v5 + 48);
    v32 = *(v5 + 80);
    v33 = 1;
    this = 1048563;
    v75 = a3;
    while (1)
    {
      v34 = *(v31 + 28 * v33 + 4);
      if ((*(*(v32 + 152) + 4 * v34) & 0x40000000) != 0)
      {
        break;
      }

LABEL_31:
      if (++v33 >= v10)
      {
        if (v10 >= 2)
        {
          v70 = 0;
          do
          {
            v71 = *(v5 + 48) + v70;
            v72 = *(v71 + 32);
            v73 = *(v5 + 32) + v70;
            v74 = *(v71 + 28);
            *(v73 + 40) = *(v71 + 40);
            *(v73 + 28) = v74;
            *(*(v5 + 64) + 4 * v72) = -1;
            v70 += 28;
          }

          while (28 * v10 - 28 != v70);
        }

        goto LABEL_54;
      }
    }

    while (2)
    {
      v35 = *(v32 + 152);
      v36 = *(v35 + 4 * v34);
      v37 = *(v35 + 4 * (v34 + 1)) & 0xFFFFFFF;
      if (*(v32 + 140) <= v37)
      {
        v38 = a3;
        v39 = v10;
        v40 = (v36 >> 20) & 0x3FF;
        v41 = *(v31 + 28 * v33) + v40;
        if ((v36 & 0xFFFFF) <= 0xFFFF3)
        {
          v42 = v36 & 0xFFFFF;
        }

        else
        {
          v42 = v36 & 0xFFFFF | 0xF00000;
        }

        if (v41 - v38 > *a2)
        {
          goto LABEL_45;
        }

        if (*a2 > v41)
        {
          *a2 = v41;
        }

        v43 = *(v5 + 8);
        if (v43 == *(v5 + 12))
        {
          v44 = a2;
          v45 = v33;
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v5, 1, 1);
          this = 1048563;
          v33 = v45;
          a2 = v44;
          v43 = *(v5 + 8);
        }

        *(v5 + 8) = v43 + 1;
        v46 = *v5;
        if (*(v5 + 104) == -1)
        {
          *(v5 + 104) = v43 + 1;
        }

        v47 = v46 + 36 * v43;
        v48 = (*(v5 + 48) + 28 * v33);
        v49 = *(v48 + 12);
        *v47 = *v48;
        *(v47 + 12) = v49;
        *v47 = v41;
        v50 = *(v47 + 16) + v40;
        v31 = *(v5 + 48);
        v51 = v31 + 28 * v33;
        v52 = v42 + 2 * *(v51 + 20);
        *(v47 + 16) = v50;
        *(v47 + 20) = v52;
        v53 = *(v5 + 100);
        *(v47 + 28) = v42;
        *(v47 + 32) = v53;
        v32 = *(v5 + 80);
        if (*(v32 + 160) == v37)
        {
LABEL_45:
          v10 = v39;
          a3 = v75;
          goto LABEL_46;
        }

        v54 = *(v5 + 64);
        v55 = *(v54 + 4 * v37);
        v10 = v39;
        if (v55 == -1)
        {
          *(v54 + 4 * v37) = v39;
          v56 = (v31 + 28 * v39);
          v10 = (v39 + 1);
          v50 = *(v47 + 16);
          v52 = *(v47 + 20);
          a3 = v75;
          goto LABEL_52;
        }

        v56 = (v31 + 28 * v55);
        a3 = v75;
        if (v41 < *v56)
        {
LABEL_52:
          *v56 = v41;
          v56[1] = v37;
          v56[2] = *(v5 + 8) - 1;
          v56[4] = v50;
          v56[5] = v52;
          v56[6] = *(v51 + 24);
        }
      }

LABEL_46:
      LODWORD(v34) = v34 + 2;
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      continue;
    }
  }

LABEL_54:
  *(v5 + 96) = v10;
  v57 = *(*(v5 + 80) + 144);
  v58 = *(v5 + 32);
  *v58 = 5000;
  v58[1] = v57;
  v59 = *(v5 + 104);
  if (v59 != -1)
  {
    v60 = *(v5 + 8);
    v61 = (v60 - v59);
    v62 = *(v5 + 28);
    if (v61 > v62)
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v5 + 16, v61 - v62, 0);
    }

    *(v5 + 24) = v61;
    if (v60 != v59)
    {
      v63 = 0;
      v64 = 0;
      do
      {
        v65 = *v5 + 36 * (v64 + *(v5 + 104));
        v66 = *(v5 + 16) + v63;
        v67 = *v65;
        v68 = *(v65 + 16);
        *(v66 + 32) = *(v65 + 32);
        *v66 = v67;
        *(v66 + 16) = v68;
        ++v64;
        v63 += 36;
      }

      while (v61 != v64);
      LODWORD(v61) = *(v5 + 24);
    }

    v69 = *(v5 + 16);

    return mrec_qsort_r<MiniFst::Trace>(v69, v61, 36);
  }

  return this;
}

char *mrec_qsort_r<MiniFst::Trace>(char *result, unint64_t a2, int64_t a3)
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
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v8 = &result[a2 * a3];
      v9 = &result[a3];
      v10 = result;
      do
      {
        if (v9 > result)
        {
          v11 = v10;
          v12 = v9;
          do
          {
            v13 = v12;
            v12 = (v12 + v4);
            v14 = v12[8];
            v15 = v13[8];
            if (v14 == v15)
            {
              if (*v12 <= *v13)
              {
                break;
              }
            }

            else if (v14 < v15)
            {
              break;
            }

            if (v7)
            {
              v16 = 0;
              if (v6)
              {
                v17 = v12;
                do
                {
                  v18 = *&v13[2 * v16];
                  *&v13[2 * v16] = *v17;
                  *v17++ = v18;
                  ++v16;
                }

                while (a3 >> 3 != v16);
              }

              else
              {
                v20 = a3;
                do
                {
                  v21 = *(v13 + v16);
                  *(v13 + v16) = *(v11 + v16);
                  *(v11 + v16++) = v21;
                  --v20;
                }

                while (v20);
              }
            }

            else
            {
              v19 = *v13;
              *v13 = *v12;
              *v12 = v19;
            }

            v11 = (v11 + v4);
          }

          while (v12 > result);
        }

        v9 += a3;
        v10 = (v10 + a3);
      }

      while (v9 < v8);
    }

    return result;
  }

  v22 = a3 >> 3;
  while (2)
  {
    v23 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v27 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v29 = result;
LABEL_113:
      v82 = &result[(a2 - 1) * a3];
      goto LABEL_166;
    }

    v28 = (a2 >> 3) * a3;
    v29 = &result[v28];
    v30 = &result[2 * v28];
    v31 = *(result + 8);
    v32 = *&result[v28 + 32];
    v33 = v31 < v32;
    if (v31 == v32)
    {
      v33 = *result < *v29;
    }

    if (!v33)
    {
      v83 = *(v30 + 8);
      if (v32 == v83)
      {
        if (*v29 > *v30)
        {
          goto LABEL_125;
        }
      }

      else if (v32 >= v83)
      {
        goto LABEL_125;
      }

      if (v31 == v83)
      {
        v29 = result;
        if (*result < *v30)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v29 = result;
        if (v31 < v83)
        {
          goto LABEL_125;
        }
      }

      v29 = &result[2 * v28];
      goto LABEL_125;
    }

    v34 = *(v30 + 8);
    v35 = v32 < v34;
    if (v32 == v34)
    {
      v35 = *v29 < *v30;
    }

    if (!v35)
    {
      if (v31 == v34)
      {
        v29 = &result[2 * v28];
        if (*result < *v30)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v29 = &result[2 * v28];
        if (v31 < v34)
        {
          goto LABEL_125;
        }
      }

      v29 = result;
    }

LABEL_125:
    v84 = &v23[-v28];
    v85 = &v23[v28];
    v86 = *&v23[-v28 + 32];
    v87 = *(v23 + 8);
    v88 = v86 < v87;
    if (v86 == v87)
    {
      v88 = *v84 < *v23;
    }

    if (!v88)
    {
      v91 = *(v85 + 8);
      if (v87 == v91)
      {
        if (*v23 > *v85)
        {
          goto LABEL_146;
        }
      }

      else if (v87 >= v91)
      {
        goto LABEL_146;
      }

      if (v86 == v91)
      {
        v23 -= v28;
        if (*v84 < *v85)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v23 -= v28;
        if (v86 < v91)
        {
          goto LABEL_146;
        }
      }

      v23 = v85;
      goto LABEL_146;
    }

    v89 = *(v85 + 8);
    v90 = v87 < v89;
    if (v87 == v89)
    {
      v90 = *v23 < *v85;
    }

    if (!v90)
    {
      if (v86 == v89)
      {
        v23 += v28;
        if (*v84 < *v85)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v23 += v28;
        if (v86 < v89)
        {
          goto LABEL_146;
        }
      }

      v23 = v84;
    }

LABEL_146:
    v92 = -v28;
    v82 = &v27[-2 * v28];
    v93 = &v27[v92];
    v94 = *(v82 + 8);
    v95 = *(v93 + 8);
    v96 = v94 < v95;
    if (v94 == v95)
    {
      v96 = *v82 < *v93;
    }

    if (v96)
    {
      v97 = *(v27 + 8);
      v98 = v95 < v97;
      if (v95 == v97)
      {
        v98 = *v93 < *v27;
      }

      if (!v98)
      {
        v99 = v94 < v97;
        if (v94 == v97)
        {
          v99 = *v82 < *v27;
        }

        if (v99)
        {
          goto LABEL_113;
        }

        goto LABEL_166;
      }

      goto LABEL_165;
    }

    v100 = *(v27 + 8);
    if (v95 == v100)
    {
      if (*v93 <= *v27)
      {
        goto LABEL_159;
      }

LABEL_165:
      v82 = v93;
      goto LABEL_166;
    }

    if (v95 >= v100)
    {
      goto LABEL_165;
    }

LABEL_159:
    v101 = v94 < v100;
    if (v94 == v100)
    {
      v101 = *v82 < *v27;
    }

    if (!v101)
    {
      goto LABEL_113;
    }

LABEL_166:
    v102 = *(v29 + 8);
    v103 = *(v23 + 8);
    v104 = v102 < v103;
    if (v102 == v103)
    {
      v104 = *v29 < *v23;
    }

    if (v104)
    {
      v105 = *(v82 + 8);
      v106 = v103 < v105;
      if (v103 == v105)
      {
        v106 = *v23 < *v82;
      }

      if (v106)
      {
        goto LABEL_26;
      }

      if (v102 == v105)
      {
        v23 = v82;
        if (*v29 < *v82)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v82;
        if (v102 < v105)
        {
          goto LABEL_26;
        }
      }

      v23 = v29;
      goto LABEL_26;
    }

    v107 = *(v82 + 8);
    if (v103 == v107)
    {
      if (*v23 > *v82)
      {
        goto LABEL_26;
      }
    }

    else if (v103 >= v107)
    {
      goto LABEL_26;
    }

    if (v102 == v107)
    {
      v23 = v29;
      if (*v29 >= *v82)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v23 = v29;
      if (v102 >= v107)
      {
LABEL_186:
        v23 = v82;
      }
    }

LABEL_26:
    if (v7)
    {
      if (v6)
      {
        v24 = result;
        v25 = a3 >> 3;
        do
        {
          v26 = *v24;
          *v24 = *v23;
          v24 += 8;
          *v23 = v26;
          v23 += 8;
          --v25;
        }

        while (v25);
      }

      else
      {
        v37 = a3;
        v38 = result;
        do
        {
          v39 = *v38;
          *v38++ = *v23;
          *v23++ = v39;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v36 = *result;
      *result = *v23;
      *v23 = v36;
    }

    v40 = 0;
    v41 = &result[a3];
    v42 = &result[(a2 - 1) * a3];
    v43 = v42;
    v44 = &result[a3];
    v45 = &result[a3];
    while (1)
    {
LABEL_46:
      if (v44 > v43)
      {
        goto LABEL_60;
      }

      v46 = *(v44 + 8);
      v47 = *(result + 8);
      v48 = v46 < v47;
      if (v46 != v47)
      {
        break;
      }

      v48 = *v44 < *result;
      if (*v44 != *result)
      {
        break;
      }

      if (v7)
      {
        v49 = 0;
        if (v6)
        {
          do
          {
            v50 = *&v45[8 * v49];
            *&v45[8 * v49] = *&v44[8 * v49];
            *&v44[8 * v49++] = v50;
          }

          while (v22 != v49);
        }

        else
        {
          do
          {
            v51 = v45[v49];
            v45[v49] = v44[v49];
            v44[v49++] = v51;
          }

          while (a3 != v49);
        }
      }

      else
      {
        v62 = *v45;
        *v45 = *v44;
        *v44 = v62;
      }

      v45 += a3;
      v40 = 1;
LABEL_79:
      v44 += a3;
    }

    if (v48)
    {
      goto LABEL_79;
    }

LABEL_60:
    while (v44 <= v43)
    {
      v53 = *(v43 + 8);
      v54 = *(result + 8);
      v55 = v53 < v54;
      if (v53 == v54 && (v55 = *v43 < *result, *v43 == *result))
      {
        if (v7)
        {
          v56 = 0;
          if (v6)
          {
            do
            {
              v57 = *&v43[8 * v56];
              *&v43[8 * v56] = *&v42[8 * v56];
              *&v42[8 * v56++] = v57;
            }

            while (v22 != v56);
          }

          else
          {
            do
            {
              v58 = v43[v56];
              v43[v56] = v42[v56];
              v42[v56++] = v58;
            }

            while (a3 != v56);
          }
        }

        else
        {
          v52 = *v43;
          *v43 = *v42;
          *v42 = v52;
        }

        v42 += v4;
        v40 = 1;
      }

      else if (v55)
      {
        if (v7)
        {
          v59 = 0;
          if (v6)
          {
            do
            {
              v60 = *&v44[8 * v59];
              *&v44[8 * v59] = *&v43[8 * v59];
              *&v43[8 * v59++] = v60;
            }

            while (v22 != v59);
          }

          else
          {
            do
            {
              v61 = v44[v59];
              v44[v59] = v43[v59];
              v43[v59++] = v61;
            }

            while (a3 != v59);
          }
        }

        else
        {
          v63 = *v44;
          *v44 = *v43;
          *v43 = v63;
        }

        v44 += a3;
        v43 += v4;
        v40 = 1;
        goto LABEL_46;
      }

      v43 += v4;
    }

    v64 = &result[a2 * a3];
    if (v40)
    {
      v65 = v44 - v45;
      if (v45 - result >= v44 - v45)
      {
        v66 = v44 - v45;
      }

      else
      {
        v66 = v45 - result;
      }

      if (v66)
      {
        if (v6)
        {
          v67 = &v44[-v66];
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
            *v72++ = v44[v71];
            v44[v71] = v73;
            v74 = __CFADD__(v71++, 1);
          }

          while (!v74);
        }
      }

      v75 = v42 - v43;
      v76 = v64 - &v42[a3];
      if (v42 - v43 < v76)
      {
        v76 = v42 - v43;
      }

      if (v76)
      {
        if (v6)
        {
          v77 = &v64[-v76];
          v78 = v76 >> 3;
          do
          {
            v79 = *v44;
            *v44 = *v77;
            v44 += 8;
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
            v81 = *v44;
            *v44++ = v64[v80];
            v64[v80] = v81;
            v74 = __CFADD__(v80++, 1);
          }

          while (!v74);
        }
      }

      if (v65 > a3)
      {
        result = mrec_qsort_r<MiniFst::Trace>();
      }

      if (v75 > a3)
      {
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
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v108 = result;
      do
      {
        if (v41 > result)
        {
          v109 = v108;
          v110 = v41;
          do
          {
            v111 = v110;
            v110 = (v110 + v4);
            v112 = v110[8];
            v113 = v111[8];
            if (v112 == v113)
            {
              if (*v110 <= *v111)
              {
                break;
              }
            }

            else if (v112 < v113)
            {
              break;
            }

            if (v7)
            {
              v114 = 0;
              if (v6)
              {
                v115 = v110;
                do
                {
                  v116 = *&v111[2 * v114];
                  *&v111[2 * v114] = *v115;
                  *v115++ = v116;
                  ++v114;
                }

                while (v22 != v114);
              }

              else
              {
                v118 = a3;
                do
                {
                  v119 = *(v111 + v114);
                  *(v111 + v114) = *(v109 + v114);
                  *(v109 + v114++) = v119;
                  --v118;
                }

                while (v118);
              }
            }

            else
            {
              v117 = *v111;
              *v111 = *v110;
              *v110 = v117;
            }

            v109 = (v109 + v4);
          }

          while (v110 > result);
        }

        v41 += a3;
        v108 = (v108 + a3);
      }

      while (v41 < v64);
    }

    return result;
  }
}

uint64_t sizeObject<MiniFst::Trace>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 22 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 22 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t sizeObject<MiniFst::Token>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 18 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 18 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t AcousticNet::AcousticNet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  HmmNet::HmmNet(a1, a2, a3, a4, a5, a8);
  *v11 = &unk_287529278;
  *(v11 + 116) = a6;
  *(v11 + 120) = a7;
  PhnIndexSet::PhnIndexSet((v11 + 128), 0);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xFFFFFFF000000000;
  return a1;
}

void AcousticNet::~AcousticNet(AcousticNet *this)
{
  *this = &unk_287529278;
  BitArray::~BitArray((this + 128));

  HmmNet::~HmmNet(this);
}

uint64_t AcousticNet::sizeObject(_DWORD *a1, uint64_t a2)
{
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = PhnIndexSet::sizeObject(a1 + 32, a2);
  v6 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v6 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  return v4 + 16 * (a2 != 3) + v5 + v6;
}

uint64_t AcousticNet::updateSilSeedTime(uint64_t this, int a2, int a3)
{
  v3 = *(this + 152);
  if (v3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if (v3)
    {
      v5 = a3;
    }

    else
    {
      v5 = -16;
    }

    *(this + 156) = v5;
  }

  return this;
}

uint64_t AcousticNet::unpackEnd(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if ((*(*a1 + 40))(a1))
  {

    return AcousticNet::unpackEndTrace(a1, a2, a3);
  }

  else
  {
    v7 = *(*a2 + 4);
    v8 = *(a1 + 8);
    v9 = v8 + 299008;
    v10 = *(v8 + 16);
    v11 = *(*(v10 + 16) + v7);
    v12 = a2[2];
    v13 = *(v8 + 302852);
    v14 = v12;
    if (v12 > v13)
    {
      DgnPrimArray<unsigned int>::reallocElts(v8 + 302840, v12 - v13, 0);
      v14 = a2[2];
      v8 = *(a1 + 8);
    }

    v15 = v8 + 299008;
    *(v9 + 3840) = v12;
    v16 = v14 * v11;
    v17 = *(v8 + 302868);
    if (v16 > v17)
    {
      DgnPrimArray<unsigned int>::reallocElts(v8 + 302856, v16 - v17, 0);
    }

    *(v15 + 3856) = v16;
    v64 = 0;
    canLookupPic = PicMgr::canLookupPic(v10, *a2);
    v19 = *(a1 + 8);
    v20 = (v19 + 302840);
    v21 = (v19 + 302856);
    if (canLookupPic)
    {
      EndDuplicatesLookup = PicMgr::getEndDuplicatesLookup(v10, a2, v20, v21, v19 + 302544, v19 + 302560);
    }

    else
    {
      EndDuplicatesLookup = PicMgr::getEndDuplicatesSearch(v10, a2, v20, v21, &v64, v19 + 302560);
      v23 = *(a1 + 8) + 299008;
      *(v23 + 3660) = *(*(a1 + 8) + 302668) + v16;
      *(v23 + 3664) += v64;
    }

    (*(*a1 + 312))(a1, v7, EndDuplicatesLookup);
    v24 = a2[2];
    v25 = *(a1 + 8) + 299008;
    *(v25 + 3648) = *(*(a1 + 8) + 302656) + v24;
    *(v25 + 3652) += EndDuplicatesLookup;
    if (*(a1 + 52) == 2)
    {
      if (*(a1 + 40) == 3)
      {
        v24 = EndDuplicatesLookup;
      }

      (*(*a1 + 136))(a1, v24 + 1);
    }

    if (!*(a1 + 144))
    {
      (*(*a1 + 216))(a1);
    }

    v26 = *(a1 + 8);
    v27 = v26 + 74752;
    v28 = v26[75725];
    if (EndDuplicatesLookup > v28)
    {
      DgnPrimArray<unsigned long long>::reallocElts((v26 + 75722), EndDuplicatesLookup - v28, 0);
      v26 = *(a1 + 8);
    }

    v29 = v26 + 74752;
    v27[972] = EndDuplicatesLookup;
    v30 = v26[75729];
    if (EndDuplicatesLookup > v30)
    {
      DgnPrimArray<unsigned long long>::reallocElts((v26 + 75726), EndDuplicatesLookup - v30, 0);
      v26 = *(a1 + 8);
    }

    v31 = v26 + 74752;
    v29[976] = EndDuplicatesLookup;
    v32 = a2[2];
    v33 = v26[75721];
    v34 = v32;
    v35 = v32 - v33;
    if (v32 > v33)
    {
      DgnPrimArray<unsigned int>::reallocElts((v26 + 75718), v35, 0);
      v34 = a2[2];
    }

    v31[968] = v32;
    if (v34)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = (*(a1 + 8) + 299008);
        v41 = *(*(*(a1 + 8) + 302840) + 4 * v38);
        if (v38 == v41)
        {
          v42 = *a2;
          *(*(*(a1 + 8) + 302872) + 4 * v38) = v39;
          (*(*a1 + 232))(a1, v40[481] + 4 * v37, v11, &v42[v36], v40[485] + 8 * v39, v40[487] + 8 * v39, a3);
          ++v39;
        }

        else
        {
          *(*(*(a1 + 8) + 302872) + 4 * v38) = *(*(*(a1 + 8) + 302872) + 4 * v41);
        }

        ++v38;
        v37 += v11;
        v36 += 6;
      }

      while (v38 < a2[2]);
    }

    v43 = (*(*a1 + 128))(a1, v35);
    *v43 = 0x100000001;
    *(v43 + 8) = 1310740000;
    *(v43 + 12) = 0;
    *(v43 + 20) = -65536;
    if (EndDuplicatesLookup)
    {
      v44 = 0;
      do
      {
        (*(*a1 + 120))(a1, v43, *(*(*(a1 + 8) + 302888) + v44));
        v44 += 8;
      }

      while (8 * EndDuplicatesLookup != v44);
    }

    v45 = (*(*a1 + 192))(a1);
    v46 = *(a1 + 96);
    if (*(a1 + 40) == 4)
    {
      if (*(a1 + 96))
      {
        v47 = 0;
        v48 = 0;
        do
        {
          if ((*(*v45 + 4 * (v47 >> 5)) >> v47))
          {
            *(*(a1 + 88) + v47) = ++v48;
          }

          ++v47;
        }

        while (v46 != v47);
      }

      v49 = *(a1 + 80);
      if (v49 >= 2)
      {
        v50 = 0;
        do
        {
          v51 = *(*(*(a1 + 8) + 302904) + 8 * *(*(*(a1 + 8) + 302872) + 4 * v50));
          v52 = *(a1 + 72);
          v53 = (v50 + 1);
          if (*(a1 + 52))
          {
            *(v52 + 8 * v53) = v51;
          }

          else
          {
            PredStruct::addPred(*(v52 + 8 * v53) + 16, v51);
            v49 = *(a1 + 80);
          }

          v54 = v50 + 2;
          ++v50;
        }

        while (v54 < v49);
      }
    }

    else
    {
      if (*(a1 + 96))
      {
        v55 = 0;
        v56 = 0;
        do
        {
          if ((*(*v45 + 4 * (v55 >> 5)) >> v55))
          {
            v57 = (*(*(*(a1 + 8) + 302872) + 4 * v56) + 1);
            *(*(a1 + 88) + v55) = *(*(*(a1 + 8) + 302872) + 4 * v56++) + 1;
          }

          ++v55;
        }

        while (v46 != v55);
      }

      v58 = *(a1 + 80);
      if (v58 >= 2)
      {
        v59 = 0;
        do
        {
          v60 = *(*(*(a1 + 8) + 302904) + 8 * v59);
          v61 = *(a1 + 72);
          v62 = (v59 + 1);
          if (*(a1 + 52))
          {
            *(v61 + 8 * v62) = v60;
          }

          else
          {
            PredStruct::addPred(*(v61 + 8 * v62) + 16, v60);
            v58 = *(a1 + 80);
          }

          v63 = v59 + 2;
          ++v59;
        }

        while (v63 < v58);
      }
    }

    (*(*a1 + 120))(a1, **(*(a1 + 8) + 302904), *(a1 + 144));
    return v43;
  }
}

uint64_t AcousticNet::unpackEndTrace(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  (*(*a1 + 312))(a1, *(*a2 + 4), a2[2]);
  if (*(a1 + 13) == 2)
  {
    (*(*a1 + 136))(a1, a2[2] + 1);
  }

  if (!a1[18])
  {
    (*(*a1 + 216))(a1);
  }

  v6 = a1[1];
  v7 = v6 + 74752;
  v8 = a2[2];
  v9 = v6[75725];
  v10 = v8;
  if (v8 > v9)
  {
    DgnPrimArray<unsigned long long>::reallocElts((v6 + 75722), v8 - v9, 0);
    v6 = a1[1];
    v10 = a2[2];
  }

  v11 = v6 + 74752;
  v7[972] = v8;
  v12 = v6[75729];
  if (v10 <= v12)
  {
    v13 = v10;
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts((v6 + 75726), v10 - v12, 0);
    v6 = a1[1];
    v13 = a2[2];
  }

  v14 = v6 + 74752;
  v11[976] = v10;
  v15 = v6[75721];
  v16 = v13;
  v17 = v13 - v15;
  if (v13 > v15)
  {
    DgnPrimArray<unsigned int>::reallocElts((v6 + 75718), v17, 0);
    v16 = a2[2];
  }

  v14[968] = v13;
  if (v16)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *a1;
      v22 = a1[1] + 299008;
      *(*(a1[1] + 302872) + 4 * v20) = v20;
      (*(v21 + 224))(a1, *a2 + v19, *(v22 + 3880) + v18, *(v22 + 3896) + v18, a3);
      ++v20;
      v19 += 12;
      v18 += 8;
    }

    while (v20 < a2[2]);
  }

  v23 = (*(*a1 + 128))(a1, v17);
  *v23 = 0x100000001;
  *(v23 + 8) = 1310740000;
  *(v23 + 12) = 0;
  *(v23 + 20) = -65536;
  if (a2[2])
  {
    v24 = 0;
    do
    {
      (*(*a1 + 120))(a1, v23, *(*(a1[1] + 302888) + 8 * v24++));
    }

    while (v24 < a2[2]);
  }

  v25 = (*(*a1 + 192))(a1);
  v26 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      if ((*(*v25 + 4 * (v27 >> 5)) >> v27))
      {
        *(a1[11] + v27) = ++v28;
      }

      ++v27;
    }

    while (v26 != v27);
  }

  v29 = *(a1 + 20);
  if (v29 >= 2)
  {
    v30 = 0;
    do
    {
      v31 = *(*(a1[1] + 302904) + 8 * v30);
      v32 = a1[9];
      v33 = (v30 + 1);
      if (*(a1 + 13))
      {
        *(v32 + 8 * v33) = v31;
      }

      else
      {
        PredStruct::addPred(*(v32 + 8 * v33) + 16, v31);
        v29 = *(a1 + 20);
      }

      v34 = v30 + 2;
      ++v30;
    }

    while (v34 < v29);
  }

  (*(*a1 + 120))(a1, **(a1[1] + 302904), a1[18]);
  return v23;
}

uint64_t AcousticNet::estimateActivePelsThisFrame(uint64_t this, BitArray *a2)
{
  v2 = *(this + 144);
  if (v2)
  {
    *(*a2 + ((*(v2 + 22) >> 3) & 0x1FFC)) |= 1 << *(v2 + 22);
  }

  return this;
}

void MrecInitModule_recog_kernel(void)
{
  if (!gParDebugShowNetNodeStatsPerFrame)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowNetNodeStatsPerFrame", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowNetNodeStatsPerFrame = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowNetNodeStatsPerFrame);
  }

  if (!gParDebugShowNetNodeStats)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowNetNodeStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowNetNodeStats = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowNetNodeStats);
  }

  if (!gParDebugRecognitionWatchTheseWords)
  {
    v4 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v4, "DebugRecognitionWatchTheseWords", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v5 = &unk_287526E40;
    gParDebugRecognitionWatchTheseWords = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRecognitionWatchTheseWords);
  }

  if (!gParDiagnosticFrameSpecificCommand)
  {
    v6 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v6, "DiagnosticFrameSpecificCommand", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v7 = &unk_287526E40;
    gParDiagnosticFrameSpecificCommand = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticFrameSpecificCommand);
  }

  if (!gParDebugAbortRecognition)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugAbortRecognition", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugAbortRecognition = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugAbortRecognition);
  }

  if (!gParDebugRecognitionWatchAllActiveWords)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugRecognitionWatchAllActiveWords", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugRecognitionWatchAllActiveWords = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRecognitionWatchAllActiveWords);
  }

  if (!gParDebugShowActiveWords)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugShowActiveWords", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugShowActiveWords = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowActiveWords);
  }

  if (!gParDebugShowActiveStats)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DebugShowActiveStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDebugShowActiveStats = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowActiveStats);
  }

  if (!gParDebugShowFinalActiveStats)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "DebugShowFinalActiveStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v17 = &unk_287527EA0;
    gParDebugShowFinalActiveStats = v17;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowFinalActiveStats);
  }

  if (!gParDebugShowPerFrameRecognitionStats)
  {
    v18 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v18, "DebugShowPerFrameRecognitionStats", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v19 = &unk_287527EA0;
    gParDebugShowPerFrameRecognitionStats = v19;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPerFrameRecognitionStats);
  }

  if (!gParDebugPartialFinalResults)
  {
    v20 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v20, "DebugPartialFinalResults", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v21 = &unk_287527EA0;
    gParDebugPartialFinalResults = v21;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPartialFinalResults);
  }

  if (!gParDiagnosticSearchRecognitionNetType)
  {
    v22 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v29, &sDiagnosticSearchRecognitionNetTypeEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v22, "DiagnosticSearchRecognitionNetType", &byte_262899963, &byte_262899963, 1u, &v29, 0);
    v22->n128_u64[0] = &unk_287527B80;
    gParDiagnosticSearchRecognitionNetType = v22;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticSearchRecognitionNetType);
  }

  if (!gParDebugSeeding)
  {
    v23 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v23, "DebugSeeding", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v24 = &unk_287527EA0;
    gParDebugSeeding = v24;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSeeding);
  }

  if (!gParDebugPrefiltererDeactivation)
  {
    v25 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v25, "DebugPrefiltererDeactivation", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v26 = &unk_287527EA0;
    gParDebugPrefiltererDeactivation = v26;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPrefiltererDeactivation);
  }

  if (!gParDebugShowPartialResults)
  {
    v27 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v27, "DebugShowPartialResults", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v28 = &unk_287527EA0;
    gParDebugShowPartialResults = v28;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPartialResults);
  }
}

double GermRecogGermIterator::getCurrentGermInternal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (**(a1 + 40) + 8 * v2);
  *a2 = *v3;
  *(a2 + 4) = 0x3FFF;
  *(a2 + 8) = xmmword_26286CC40;
  *(a2 + 24) = 0;
  *(a2 + 26) = 0;
  result = 3.10503915e231;
  *(a2 + 32) = 0x70000000FFFFFFFELL;
  *(a2 + 40) = v2;
  *(a2 + 28) = v3[1];
  return result;
}

uint64_t GermRecogGermIterator::advanceUntilMatch(uint64_t this)
{
  if (*(this + 32))
  {
    v2 = *(this + 8);
    v1 = *(this + 12);
    if (v2 != v1)
    {
      v3 = **(this + 40);
      v4 = *(this + 16);
      do
      {
        v5 = *(v3 + 8 * v2);
        if (v4 == v5 >> 25)
        {
          v6 = *(this + 24);
          if (v5 & 0xFFFFFF) < *(v6 + 8) && ((*(*v6 + (((*&v5 & 0xFFFFFFuLL) >> 3) & 0x1FFFFC)) >> v5))
          {
            break;
          }
        }

        *(this + 8) = ++v2;
      }

      while (v1 != v2);
    }
  }

  return this;
}

uint64_t RecognizerOptions::RecognizerOptions(uint64_t a1, char a2, int a3, int a4, int a5, char a6, uint64_t a7, uint64_t a8, double a9, __int128 a10, int a11, int a12, __int128 a13, __int128 a14, uint64_t a15, int a16, char a17, __int128 a18, __int128 a19, char a20, char a21, char a22, char a23, char a24, char a25, uint64_t a26, int a27, char a28, char a29, char a30, char a31, char a32, char a33, int a34, uint64_t a35, uint64_t a36, int a37, char a38, __int128 a39, int a40, int a41)
{
  *&v50[16] = a37;
  *&v50[8] = a36;
  *v50 = a35;
  *a1 = a2;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 17) = a7;
  *(a1 + 20) = a8;
  *(a1 + 40) = a11;
  *(a1 + 80) = a15;
  *(a1 + 88) = a16;
  *(a1 + 92) = a17;
  *(a1 + 136) = a20;
  *(a1 + 137) = a21;
  *(a1 + 138) = a22;
  *(a1 + 139) = a23;
  *(a1 + 140) = a24;
  *(a1 + 141) = a25;
  *(a1 + 144) = a26;
  *(a1 + 152) = a27;
  *(a1 + 156) = a28;
  *(a1 + 157) = a29;
  *(a1 + 158) = a30;
  *(a1 + 159) = a31;
  *(a1 + 160) = a32;
  *(a1 + 161) = a33;
  *(a1 + 164) = a34;
  *(a1 + 168) = v50[0];
  *(a1 + 188) = a38;
  *(a1 + 208) = a40;
  *(a1 + 212) = a41;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 24) = a10;
  *(a1 + 44) = a12;
  *(a1 + 48) = a13;
  *(a1 + 64) = a14;
  *(a1 + 96) = a9;
  *(a1 + 104) = a18;
  *(a1 + 120) = a19;
  *(a1 + 172) = *&v50[4];
  *(a1 + 192) = a39;
  if (a12 != -1 && a4 + a3 - a12 < 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 733, "kernel/recog", 5, "%d %d %d %d", a7, a8, a4 + a3 - a12);
  }

  v42 = *(a1 + 8) + *(a1 + 4);
  v43 = *(a1 + 32);
  if (v42 - v43 < 0)
  {
    v47 = *(a1 + 8);
    v48 = *(a1 + 32);
    v46 = *(a1 + 4);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 744, "kernel/recog", 6, "%d %d %d %d", a7, a8, v42 - v43);
    v42 = *(a1 + 8) + *(a1 + 4);
  }

  v44 = v42 - *(a1 + 36);
  if (v44 < 0)
  {
    v49 = *(a1 + 36);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 756, "kernel/recog", 7, "%d %d %d %d", a7, a8, v44);
  }

  return a1;
}

uint64_t RecognizerOptions::RecognizerOptions(uint64_t a1, char a2, int a3, int a4, int a5, char a6, unsigned int a7, unsigned int a8, double a9, __int128 a10, int a11, int a12, __int128 a13, __int128 a14, uint64_t a15, int a16, char a17, __int128 a18, __int128 a19, char a20, char a21, char a22, char a23, char a24, char a25, uint64_t a26, int a27, char a28, char a29, char a30, char a31, char a32, char a33, int a34, uint64_t a35, uint64_t a36, int a37, char a38, __int128 a39, int a40, int a41)
{

  return RecognizerOptions::RecognizerOptions(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

double RecognizerOptions::RecognizerOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 192) = *(a2 + 192);
  result = *(a2 + 208);
  *(a1 + 208) = result;
  return result;
}

uint64_t SearchStats::resetStats(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

double SearchStats::operator=(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return result;
}

int32x2_t SearchStats::operator-=(int32x2_t *a1, int32x2_t *a2)
{
  result = vsub_s32(*a1, *a2);
  *a1 = result;
  a1[1].i32[0] -= a2[1].i32[0];
  *&a1[2] -= *&a2[2];
  a1[3].i32[0] -= a2[3].i32[0];
  return result;
}

uint64_t Recognizer::Recognizer(uint64_t a1, char a2, int a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a1 = &unk_2875295E0;
  RecognizerOptions::RecognizerOptions(a1 + 8, a8);
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = a5;
  *(a1 + 264) = a6;
  if (a3 == 3)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  *(a1 + 288) = v19;
  *(a1 + 304) = a2;
  *(a1 + 308) = -16;
  *(a1 + 312) = a3;
  *(a1 + 316) = 0xFFFFFFF0FFFFFFF0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 348) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  MergedActive::MergedActive((a1 + 392));
  *(a1 + 528) = a4;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 608) = 0xF0000000FLL;
  *(a1 + 616) = 0;
  *(a1 + 620) = 0;
  SearchLMScorer::SearchLMScorer(a1 + 624, *(a1 + 172), *(a1 + 176), *(a1 + 180), *(a1 + 184), *(a1 + 167), a9, a10, a11, a12);
  *(a1 + 832) = 0x3FFFFCFFFFFDLL;
  *(a1 + 840) = xmmword_26286CC40;
  *(a1 + 856) = 0;
  *(a1 + 858) = 1310720000;
  *(a1 + 862) = 0;
  *(a1 + 864) = 0x70000000FFFFFFFELL;
  *(a1 + 872) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  PelStats::resetStats((a1 + 880));
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  LMStats::resetStats((a1 + 1056));
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  PelStats::resetStats((a1 + 1240));
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1472) = 0u;
  LMStats::resetStats((a1 + 1416));
  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = 0;
  LatticeStats::LatticeStats((a1 + 1616));
  *(a1 + 2224) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2200) = 0u;
  *(a1 + 2264) = 0x3FFF;
  *(a1 + 2268) = xmmword_26286CC40;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2376) = 0u;
  v20 = *(a1 + 304);
  if (*(a1 + 304))
  {
    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  *(a1 + 2344) = 0uLL;
  if (v20 && (a7 & 1) == 0)
  {
    v21 = *(gParDiagnosticSearchRecognitionNetType + 44);
  }

  v22 = MemChunkAlloc(0x4A098uLL, 0);
  v23 = *(a1 + 312);
  v28 = *(a1 + 288);
  v24 = Active::Active(v22, v23, &v28, v21, *(a1 + 264));
  *(a1 + 296) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = v24;
  *(a1 + 360) = 0;
  v25 = *(*VocMgr::smpVocMgr + 8);
  if (*(a1 + 564) >= v25)
  {
    *(a1 + 560) = v25;
    if (!v25)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v29 = 0;
    *(a1 + 564) = realloc_array(*(a1 + 552), &v29, v25, *(a1 + 560), *(a1 + 560), 1);
    *(a1 + 552) = v29;
    *(a1 + 560) = v25;
  }

  bzero(*(a1 + 552), v25);
LABEL_14:
  *(a1 + 1608) = 0;
  *(a1 + 368) = 0;
  *(a1 + 2240) = 0;
  *(a1 + 2024) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2200) = 0u;
  *(a1 + 2216) = 0;
  *(a1 + 2340) = 0;
  *(a1 + 2308) = 0u;
  *(a1 + 2324) = 0u;
  *(a1 + 2244) = 0x4E20FFFFFFFELL;
  *(a1 + 2252) = 0;
  *(a1 + 2256) = 0xFAFFFFFFFFFFFFF0;
  *(a1 + 2264) = 0x3FFF;
  *(a1 + 2268) = xmmword_26286CC40;
  if (*(a1 + 312) != 3)
  {
    v26 = MemChunkAlloc(0x38uLL, 0);
    *(a1 + 368) = CWIDCrumbBank::CWIDCrumbBank(v26, (*(a1 + 280) + 72));
  }

  SearchLMScorer::setRecognizer(a1 + 624, a1);
  return a1;
}

void sub_2627AF77C(_Unwind_Exception *a1)
{
  SearchLMScorer::~SearchLMScorer((v1 + 624));
  DgnIArray<Utterance *>::~DgnIArray(v1 + 584);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 568);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  MergedActive::~MergedActive((v2 + 168));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void MergedActive::~MergedActive(MergedActive *this)
{
  *(this + 4) = &unk_287525AE0;
  DgnArray<PhnIndexSet>::releaseAll(this + 80);
  BitArray::~BitArray((this + 64));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnIArray<Utterance *>::~DgnIArray(this + 8);
}

void Recognizer::~Recognizer(Recognizer *this)
{
  *this = &unk_2875295E0;
  DgnDelete<Active>(*(this + 35));
  DgnDelete<PelScoreCacheData>(*(this + 37));
  DgnDelete<CWIDCrumbBank>(*(this + 46));
  DgnDelete<Constraint>(*(this + 277));
  DgnDelete<RecogGermIterator>(*(this + 47));
  DgnDelete<RecogGermIterator>(*(this + 48));
  DgnIArray<Utterance *>::~DgnIArray(this + 2376);
  DgnIArray<Utterance *>::~DgnIArray(this + 2360);
  DgnIArray<Utterance *>::~DgnIArray(this + 2344);
  DgnIArray<Utterance *>::~DgnIArray(this + 2288);
  DgnIArray<Utterance *>::~DgnIArray(this + 2224);
  SearchLMScorer::~SearchLMScorer((this + 624));
  DgnIArray<Utterance *>::~DgnIArray(this + 584);
  DgnIArray<Utterance *>::~DgnIArray(this + 568);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 536);
  MergedActive::~MergedActive((this + 392));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
}

{
  Recognizer::~Recognizer(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t DgnDelete<Active>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnIArray<Utterance *>::~DgnIArray(result + 303240);
    HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV((v1 + 37892));
    Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash((v1 + 37878));
    ActiveWordMgr::~ActiveWordMgr((v1 + 2));

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<CWIDCrumbBank>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnIOwnArray<CWIDCrumbWACSFrame *>::releaseAll(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void Recognizer::printSize(Recognizer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1154, &v457);
  if (v458)
  {
    v16 = v457;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v457);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = (a3 + 1);
  v454 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1155, &v457);
  if (v458)
  {
    v27 = v457;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &byte_262899963, v22, v22, v27, 171, 171, 0);
  DgnString::~DgnString(&v457);
  *a4 += 171;
  *a5 += 171;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  else
  {
    v28 = 16;
  }

  v29 = *(this + 58);
  v30 = *(this + 59);
  if (v30 >= v29)
  {
    v31 = 0;
    if (v29 > 0)
    {
      v28 += 4 * (v29 - 1) + 4;
    }

    v32 = v28 + 4 * (v30 - v29);
  }

  else
  {
    v31 = 4 * v29;
    v32 = v28;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1157, &v457);
  if (v458)
  {
    v37 = v457;
  }

  else
  {
    v37 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, v21, &byte_262899963, v22, v22, v37, v32, v28, v31);
  DgnString::~DgnString(&v457);
  *a4 += v32;
  *a5 += v28;
  *a6 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 12;
  }

  else
  {
    v38 = 16;
  }

  v39 = *(this + 62);
  v40 = *(this + 63);
  if (v40 >= v39)
  {
    v41 = 0;
    if (v39 > 0)
    {
      v38 += 4 * (v39 - 1) + 4;
    }

    v42 = v38 + 4 * (v40 - v39);
  }

  else
  {
    v41 = 4 * v39;
    v42 = v38;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1159, &v457);
  if (v458)
  {
    v47 = v457;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, v21, &byte_262899963, v22, v22, v47, v42, v38, v41);
  DgnString::~DgnString(&v457);
  *a4 += v42;
  *a5 += v38;
  *a6 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 4;
  }

  else
  {
    v48 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1160, &v457);
  if (v458)
  {
    v53 = v457;
  }

  else
  {
    v53 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v50, v51, v52, v21, &byte_262899963, v22, v22, v53, v48, v48, 0);
  DgnString::~DgnString(&v457);
  *a4 += v48;
  *a5 += v48;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v54 = 4;
  }

  else
  {
    v54 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1161, &v457);
  if (v458)
  {
    v59 = v457;
  }

  else
  {
    v59 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v21, &byte_262899963, v22, v22, v59, v54, v54, 0);
  DgnString::~DgnString(&v457);
  *a4 += v54;
  *a5 += v54;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 4;
  }

  else
  {
    v60 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1162, &v457);
  if (v458)
  {
    v65 = v457;
  }

  else
  {
    v65 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v21, &byte_262899963, v22, v22, v65, v60, v60, 0);
  DgnString::~DgnString(&v457);
  *a4 += v60;
  *a5 += v60;
  v66 = *(this + 35);
  if (v66)
  {
    v456 = 0;
    v457 = 0;
    v455 = 0;
    Active::printSize(v66, 0xFFFFFFFFLL, v21, &v457, &v456, &v455);
    *a4 += v457;
    *a5 += v456;
    *a6 += v455;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 4;
  }

  else
  {
    v67 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1163, &v457);
  if (v458)
  {
    v72 = v457;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v21, &byte_262899963, v22, v22, v72, v67, v67, 0);
  DgnString::~DgnString(&v457);
  *a4 += v67;
  *a5 += v67;
  v73 = sizeObject(this + 288, 0);
  v74 = sizeObject(this + 288, 1);
  v75 = sizeObject(this + 288, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1164, &v457);
  if (v458)
  {
    v80 = v457;
  }

  else
  {
    v80 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v21, &byte_262899963, v22, v22, v80, v73, v74, v75);
  DgnString::~DgnString(&v457);
  *a4 += v73;
  *a5 += v74;
  *a6 += v75;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v81 = 4;
  }

  else
  {
    v81 = 8;
  }

  v82 = *(this + 37);
  if (v82)
  {
    v83 = sizeObject(v82, 0) + v81;
    v84 = *(this + 37);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v81 = 4;
    }

    else
    {
      v81 = 8;
    }

    if (v84 && (v81 += sizeObject(v84, 1), (v85 = *(this + 37)) != 0))
    {
      v86 = sizeObject(v85, 3);
    }

    else
    {
      v86 = 0;
    }
  }

  else
  {
    v86 = 0;
    v83 = v81;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1166, &v457);
  if (v458)
  {
    v91 = v457;
  }

  else
  {
    v91 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v88, v89, v90, v21, &byte_262899963, v22, v22, v91, v83, v81, v86);
  DgnString::~DgnString(&v457);
  *a4 += v83;
  *a5 += v81;
  *a6 += v86;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1167, &v457);
  if (v458)
  {
    v96 = v457;
  }

  else
  {
    v96 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v93, v94, v95, v21, &byte_262899963, v22, v22, v96, 1, 1, 0);
  DgnString::~DgnString(&v457);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1169, &v457);
  if (v458)
  {
    v101 = v457;
  }

  else
  {
    v101 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v98, v99, v100, v21, &byte_262899963, v22, v22, v101, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1170, &v457);
  if (v458)
  {
    v106 = v457;
  }

  else
  {
    v106 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v21, &byte_262899963, v22, v22, v106, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1172, &v457);
  if (v458)
  {
    v111 = v457;
  }

  else
  {
    v111 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v21, &byte_262899963, v22, v22, v111, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1174, &v457);
  if (v458)
  {
    v116 = v457;
  }

  else
  {
    v116 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, v21, &byte_262899963, v22, v22, v116, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1176, &v457);
  if (v458)
  {
    v121 = v457;
  }

  else
  {
    v121 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v21, &byte_262899963, v22, v22, v121, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1177, &v457);
  if (v458)
  {
    v126 = v457;
  }

  else
  {
    v126 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v123, v124, v125, v21, &byte_262899963, v22, v22, v126, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1179, &v457);
  if (v458)
  {
    v131 = v457;
  }

  else
  {
    v131 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v127, v128, v129, v130, v21, &byte_262899963, v22, v22, v131, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1180, &v457);
  if (v458)
  {
    v136 = v457;
  }

  else
  {
    v136 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v133, v134, v135, v21, &byte_262899963, v22, v22, v136, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1181, &v457);
  if (v458)
  {
    v141 = v457;
  }

  else
  {
    v141 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v138, v139, v140, v21, &byte_262899963, v22, v22, v141, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1183, &v457);
  if (v458)
  {
    v146 = v457;
  }

  else
  {
    v146 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v142, v143, v144, v145, v21, &byte_262899963, v22, v22, v146, 1, 1, 0);
  DgnString::~DgnString(&v457);
  ++*a4;
  ++*a5;
  v147 = *(this + 46);
  if (v147)
  {
    v456 = 0;
    v457 = 0;
    v455 = 0;
    CWIDCrumbBank::printSize(v147, 0xFFFFFFFFLL, v21, &v457, &v456, &v455);
    *a4 += v457;
    *a5 += v456;
    *a6 += v455;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v148 = 4;
  }

  else
  {
    v148 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1195, &v457);
  if (v458)
  {
    v153 = v457;
  }

  else
  {
    v153 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v150, v151, v152, v21, &byte_262899963, v22, v22, v153, v148, v148, 0);
  DgnString::~DgnString(&v457);
  *a4 += v148;
  *a5 += v148;
  v154 = *(this + 47);
  if (v154)
  {
    v456 = 0;
    v457 = 0;
    v455 = 0;
    RecogGermIterator::printSize(v154, 0xFFFFFFFFLL, v21, &v457, &v456, &v455);
    *a4 += v457;
    *a5 += v456;
    *a6 += v455;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v155 = 4;
  }

  else
  {
    v155 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1196, &v457);
  if (v458)
  {
    v160 = v457;
  }

  else
  {
    v160 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v156, v157, v158, v159, v21, &byte_262899963, v22, v22, v160, v155, v155, 0);
  DgnString::~DgnString(&v457);
  *a4 += v155;
  *a5 += v155;
  v161 = *(this + 48);
  if (v161)
  {
    v456 = 0;
    v457 = 0;
    v455 = 0;
    RecogGermIterator::printSize(v161, 0xFFFFFFFFLL, v21, &v457, &v456, &v455);
    *a4 += v457;
    *a5 += v456;
    *a6 += v455;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v162 = 4;
  }

  else
  {
    v162 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1198, &v457);
  if (v458)
  {
    v167 = v457;
  }

  else
  {
    v167 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v21, &byte_262899963, v22, v22, v167, v162, v162, 0);
  DgnString::~DgnString(&v457);
  *a4 += v162;
  *a5 += v162;
  v168 = sizeObject(this + 392, 0);
  v169 = sizeObject(this + 392, 1);
  v170 = sizeObject(this + 392, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1200, &v457);
  if (v458)
  {
    v175 = v457;
  }

  else
  {
    v175 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v172, v173, v174, v21, &byte_262899963, v22, v22, v175, v168, v169, v170);
  DgnString::~DgnString(&v457);
  *a4 += v168;
  *a5 += v169;
  *a6 += v170;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1202, &v457);
  if (v458)
  {
    v180 = v457;
  }

  else
  {
    v180 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v176, v177, v178, v179, v21, &byte_262899963, v22, v22, v180, 2, 2, 0);
  DgnString::~DgnString(&v457);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v181 = 12;
  }

  else
  {
    v181 = 16;
  }

  v182 = *(this + 136);
  v183 = *(this + 137);
  if (v183 >= v182)
  {
    v184 = 0;
    if (v182 > 0)
    {
      v181 += 2 * (v182 - 1) + 2;
    }

    v185 = v181 + 2 * (v183 - v182);
  }

  else
  {
    v184 = 2 * v182;
    v185 = v181;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1204, &v457);
  if (v458)
  {
    v190 = v457;
  }

  else
  {
    v190 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v187, v188, v189, v21, &byte_262899963, v22, v22, v190, v185, v181, v184);
  DgnString::~DgnString(&v457);
  *a4 += v185;
  *a5 += v181;
  *a6 += v184;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v191 = 12;
  }

  else
  {
    v191 = 16;
  }

  v192 = *(this + 140);
  v193 = *(this + 141);
  v194 = v193 >= v192;
  v195 = v193 - v192;
  if (v194)
  {
    if (v192 > 0)
    {
      v196 = (v192 - 1) + v191 + 1;
    }

    else
    {
      v196 = v191;
    }

    v191 = v196 + v195;
    v192 = 0;
  }

  else
  {
    v196 = v191;
  }

  v197 = v192;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1206, &v457);
  if (v458)
  {
    v202 = v457;
  }

  else
  {
    v202 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v198, v199, v200, v201, v21, &byte_262899963, v22, v22, v202, v191, v196, v197);
  DgnString::~DgnString(&v457);
  *a4 += v191;
  *a5 += v196;
  *a6 += v197;
  v203 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v203 = 12;
  }

  v204 = *(this + 144);
  v205 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v205 = 3;
  }

  v206 = (((*(this + 145) - v204) + v204) << v205) + v203;
  v207 = (v204 << v205) + v203;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1208, &v457);
  if (v458)
  {
    v212 = v457;
  }

  else
  {
    v212 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v208, v209, v210, v211, v21, &byte_262899963, v22, v22, v212, v206, v207, 0);
  DgnString::~DgnString(&v457);
  *a4 += v206;
  *a5 += v207;
  v213 = sizeObject<RecogGerm>(this + 584, 0);
  v214 = sizeObject<RecogGerm>(this + 584, 1);
  v457 = 0x3FFFFAFFFFFFLL;
  v458 = xmmword_26286CC40;
  v459 = 0;
  v460 = 1310720000;
  v461 = 0;
  v462 = 0x70000000FFFFFFFELL;
  sizeObject(&v457, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1209, &v457);
  if (v458)
  {
    v219 = v457;
  }

  else
  {
    v219 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v215, v216, v217, v218, v21, &byte_262899963, v22, v22, v219, v213, v214, 0);
  DgnString::~DgnString(&v457);
  *a4 += v213;
  *a5 += v214;
  v220 = sizeObject(this + 616, 0) + 17;
  v221 = sizeObject(this + 616, 1) + 17;
  v222 = sizeObject(this + 616, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1210, &v457);
  if (v458)
  {
    v227 = v457;
  }

  else
  {
    v227 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v223, v224, v225, v226, v21, &byte_262899963, v22, v22, v227, v220, v221, v222);
  DgnString::~DgnString(&v457);
  *a4 += v220;
  *a5 += v221;
  *a6 += v222;
  v456 = 0;
  v457 = 0;
  v455 = 0;
  SearchLMScorer::printSize((this + 624), 0xFFFFFFFFLL, v21, &v457, &v456, &v455);
  *a4 += v457;
  *a5 += v456;
  *a6 += v455;
  v228 = sizeObject(this + 832, 0);
  v229 = sizeObject(this + 832, 1);
  v230 = sizeObject(this + 832, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1213, &v457);
  if (v458)
  {
    v235 = v457;
  }

  else
  {
    v235 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v231, v232, v233, v234, v21, &byte_262899963, v22, v22, v235, v228, v229, v230);
  DgnString::~DgnString(&v457);
  *a4 += v228;
  *a5 += v229;
  *a6 += v230;
  v236 = PelStats::sizeObject(this + 880, 0);
  v237 = PelStats::sizeObject(this + 880, 1);
  v238 = PelStats::sizeObject(this + 880, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1215, &v457);
  if (v458)
  {
    v243 = v457;
  }

  else
  {
    v243 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v240, v241, v242, v21, &byte_262899963, v22, v22, v243, v236, v237, v238);
  DgnString::~DgnString(&v457);
  *a4 += v236;
  *a5 += v237;
  *a6 += v238;
  v244 = LMStats::sizeObject(this + 1056, 0);
  v245 = LMStats::sizeObject(this + 1056, 1);
  v246 = LMStats::sizeObject(this + 1056, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1216, &v457);
  if (v458)
  {
    v251 = v457;
  }

  else
  {
    v251 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v247, v248, v249, v250, v21, &byte_262899963, v22, v22, v251, v244, v245, v246);
  DgnString::~DgnString(&v457);
  *a4 += v244;
  *a5 += v245;
  *a6 += v246;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1217, &v457);
  if (v458)
  {
    v256 = v457;
  }

  else
  {
    v256 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v252, v253, v254, v255, v21, &byte_262899963, v22, v22, v256, 24, 24, 0);
  DgnString::~DgnString(&v457);
  *a4 += 24;
  *a5 += 24;
  v257 = PelStats::sizeObject(this + 1240, 0);
  v258 = PelStats::sizeObject(this + 1240, 1);
  v259 = PelStats::sizeObject(this + 1240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1219, &v457);
  if (v458)
  {
    v264 = v457;
  }

  else
  {
    v264 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v261, v262, v263, v21, &byte_262899963, v22, v22, v264, v257, v258, v259);
  DgnString::~DgnString(&v457);
  *a4 += v257;
  *a5 += v258;
  *a6 += v259;
  v265 = LMStats::sizeObject(this + 1416, 0);
  v266 = LMStats::sizeObject(this + 1416, 1);
  v267 = LMStats::sizeObject(this + 1416, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1221, &v457);
  if (v458)
  {
    v272 = v457;
  }

  else
  {
    v272 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v268, v269, v270, v271, v21, &byte_262899963, v22, v22, v272, v265, v266, v267);
  DgnString::~DgnString(&v457);
  *a4 += v265;
  *a5 += v266;
  *a6 += v267;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1223, &v457);
  if (v458)
  {
    v277 = v457;
  }

  else
  {
    v277 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v273, v274, v275, v276, v21, &byte_262899963, v22, v22, v277, 24, 24, 0);
  DgnString::~DgnString(&v457);
  *a4 += 24;
  *a5 += 24;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1226, &v457);
  if (v458)
  {
    v282 = v457;
  }

  else
  {
    v282 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v278, v279, v280, v281, v21, &byte_262899963, v22, v22, v282, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1249, &v457);
  if (v458)
  {
    v287 = v457;
  }

  else
  {
    v287 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v283, v284, v285, v286, v21, &byte_262899963, v22, v22, v287, 8, 8, 0);
  DgnString::~DgnString(&v457);
  *a4 += 8;
  *a5 += 8;
  v288 = LatticeStats::sizeObject(this + 1616, 0);
  v289 = LatticeStats::sizeObject(this + 1616, 1);
  v290 = LatticeStats::sizeObject(this + 1616, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1251, &v457);
  if (v458)
  {
    v295 = v457;
  }

  else
  {
    v295 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v291, v292, v293, v294, v21, &byte_262899963, v22, v22, v295, v288, v289, v290);
  DgnString::~DgnString(&v457);
  *a4 += v288;
  *a5 += v289;
  *a6 += v290;
  v296 = SnapTime::sizeObject(this + 2024, 0);
  v297 = SnapTime::sizeObject(this + 2024, 1);
  v298 = SnapTime::sizeObject(this + 2024, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1253, &v457);
  if (v458)
  {
    v303 = v457;
  }

  else
  {
    v303 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v299, v300, v301, v302, v21, &byte_262899963, v22, v22, v303, v296, v297, v298);
  DgnString::~DgnString(&v457);
  *a4 += v296;
  *a5 += v297;
  *a6 += v298;
  v304 = SnapTime::sizeObject(this + 2056, 0);
  v305 = SnapTime::sizeObject(this + 2056, 1);
  v306 = SnapTime::sizeObject(this + 2056, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1255, &v457);
  if (v458)
  {
    v311 = v457;
  }

  else
  {
    v311 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v307, v308, v309, v310, v21, &byte_262899963, v22, v22, v311, v304, v305, v306);
  DgnString::~DgnString(&v457);
  *a4 += v304;
  *a5 += v305;
  *a6 += v306;
  v312 = SnapTime::sizeObject(this + 2088, 0);
  v313 = SnapTime::sizeObject(this + 2088, 1);
  v314 = SnapTime::sizeObject(this + 2088, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1257, &v457);
  if (v458)
  {
    v319 = v457;
  }

  else
  {
    v319 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v315, v316, v317, v318, v21, &byte_262899963, v22, v22, v319, v312, v313, v314);
  DgnString::~DgnString(&v457);
  *a4 += v312;
  *a5 += v313;
  *a6 += v314;
  v320 = SnapTime::sizeObject(this + 2120, 0);
  v321 = SnapTime::sizeObject(this + 2120, 1);
  v322 = SnapTime::sizeObject(this + 2120, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1259, &v457);
  if (v458)
  {
    v327 = v457;
  }

  else
  {
    v327 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v323, v324, v325, v326, v21, &byte_262899963, v22, v22, v327, v320, v321, v322);
  DgnString::~DgnString(&v457);
  *a4 += v320;
  *a5 += v321;
  *a6 += v322;
  v328 = SnapTime::sizeObject(this + 2152, 0);
  v329 = SnapTime::sizeObject(this + 2152, 1);
  v330 = SnapTime::sizeObject(this + 2152, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1261, &v457);
  if (v458)
  {
    v335 = v457;
  }

  else
  {
    v335 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v331, v332, v333, v334, v21, &byte_262899963, v22, v22, v335, v328, v329, v330);
  DgnString::~DgnString(&v457);
  *a4 += v328;
  *a5 += v329;
  *a6 += v330;
  v336 = SnapTime::sizeObject(this + 2184, 0);
  v337 = SnapTime::sizeObject(this + 2184, 1);
  v338 = SnapTime::sizeObject(this + 2184, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1263, &v457);
  if (v458)
  {
    v343 = v457;
  }

  else
  {
    v343 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v339, v340, v341, v342, v21, &byte_262899963, v22, v22, v343, v336, v337, v338);
  DgnString::~DgnString(&v457);
  *a4 += v336;
  *a5 += v337;
  *a6 += v338;
  v344 = *(this + 277);
  if (v344)
  {
    v456 = 0;
    v457 = 0;
    v455 = 0;
    Constraint::printSize(v344, 0xFFFFFFFFLL, v21, &v457, &v456, &v455);
    *a4 += v457;
    *a5 += v456;
    *a6 += v455;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v345 = 4;
  }

  else
  {
    v345 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1265, &v457);
  if (v458)
  {
    v350 = v457;
  }

  else
  {
    v350 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v346, v347, v348, v349, v21, &byte_262899963, v22, v22, v350, v345, v345, 0);
  DgnString::~DgnString(&v457);
  *a4 += v345;
  *a5 += v345;
  v351 = sizeObject<CWIDAC>(this + 2224, 0);
  v352 = sizeObject<CWIDAC>(this + 2224, 1);
  HIDWORD(v457) = 0x3FFF;
  v458 = xmmword_26286CC40;
  sizeObject(&v457, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1267, &v457);
  if (v458)
  {
    v357 = v457;
  }

  else
  {
    v357 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v353, v354, v355, v356, v21, &byte_262899963, v22, v22, v357, v351, v352, 0);
  DgnString::~DgnString(&v457);
  *a4 += v351;
  *a5 += v352;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1269, &v457);
  if (v458)
  {
    v362 = v457;
  }

  else
  {
    v362 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v358, v359, v360, v361, v21, &byte_262899963, v22, v22, v362, 1, 1, 0);
  DgnString::~DgnString(&v457);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1271, &v457);
  if (v458)
  {
    v367 = v457;
  }

  else
  {
    v367 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v363, v364, v365, v366, v21, &byte_262899963, v22, v22, v367, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1273, &v457);
  if (v458)
  {
    v372 = v457;
  }

  else
  {
    v372 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v368, v369, v370, v371, v21, &byte_262899963, v22, v22, v372, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1275, &v457);
  if (v458)
  {
    v377 = v457;
  }

  else
  {
    v377 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v373, v374, v375, v376, v21, &byte_262899963, v22, v22, v377, 1, 1, 0);
  DgnString::~DgnString(&v457);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1277, &v457);
  if (v458)
  {
    v382 = v457;
  }

  else
  {
    v382 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v378, v379, v380, v381, v21, &byte_262899963, v22, v22, v382, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  v383 = sizeObject(this + 2260, 0);
  v384 = sizeObject(this + 2260, 1);
  v385 = sizeObject(this + 2260, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1279, &v457);
  if (v458)
  {
    v390 = v457;
  }

  else
  {
    v390 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v386, v387, v388, v389, v21, &byte_262899963, v22, v22, v390, v383, v384, v385);
  DgnString::~DgnString(&v457);
  *a4 += v383;
  *a5 += v384;
  *a6 += v385;
  v391 = sizeObject<HistoryAndBigScore>(this + 2288, 0);
  v392 = sizeObject<HistoryAndBigScore>(this + 2288, 1);
  v457 = 0x70000000FFFFFFFELL;
  LODWORD(v458) = 1879048192;
  sizeObject(&v457, 2);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1281, &v457);
  if (v458)
  {
    v397 = v457;
  }

  else
  {
    v397 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v393, v394, v395, v396, v21, &byte_262899963, v22, v22, v397, v391, v392, 0);
  DgnString::~DgnString(&v457);
  *a4 += v391;
  *a5 += v392;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1282, &v457);
  if (v458)
  {
    v402 = v457;
  }

  else
  {
    v402 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v398, v399, v400, v401, v21, &byte_262899963, v22, v22, v402, 1, 1, 0);
  DgnString::~DgnString(&v457);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1284, &v457);
  if (v458)
  {
    v407 = v457;
  }

  else
  {
    v407 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v403, v404, v405, v406, v21, &byte_262899963, v22, v22, v407, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1286, &v457);
  if (v458)
  {
    v412 = v457;
  }

  else
  {
    v412 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v408, v409, v410, v411, v21, &byte_262899963, v22, v22, v412, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1288, &v457);
  if (v458)
  {
    v417 = v457;
  }

  else
  {
    v417 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v413, v414, v415, v416, v21, &byte_262899963, v22, v22, v417, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1290, &v457);
  if (v458)
  {
    v422 = v457;
  }

  else
  {
    v422 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v418, v419, v420, v421, v21, &byte_262899963, v22, v22, v422, 8, 8, 0);
  DgnString::~DgnString(&v457);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1292, &v457);
  if (v458)
  {
    v427 = v457;
  }

  else
  {
    v427 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v423, v424, v425, v426, v21, &byte_262899963, v22, v22, v427, 8, 8, 0);
  DgnString::~DgnString(&v457);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1294, &v457);
  if (v458)
  {
    v432 = v457;
  }

  else
  {
    v432 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v428, v429, v430, v431, v21, &byte_262899963, v22, v22, v432, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1296, &v457);
  if (v458)
  {
    v437 = v457;
  }

  else
  {
    v437 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v433, v434, v435, v436, v21, &byte_262899963, v22, v22, v437, 4, 4, 0);
  DgnString::~DgnString(&v457);
  *a4 += 4;
  *a5 += 4;
  v438 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v438 = 12;
  }

  v439 = *(this + 596);
  v440 = 8 * v439;
  if (v439 <= 0)
  {
    v440 = 0;
  }

  v441 = v440 + v438;
  v442 = v440 + v438 + 8 * (*(this + 597) - v439);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1298, &v457);
  if (v458)
  {
    v447 = v457;
  }

  else
  {
    v447 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v443, v444, v445, v446, v21, &byte_262899963, v22, v22, v447, v442, v441, 0);
  DgnString::~DgnString(&v457);
  *a4 += v442;
  *a5 += v441;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1299, &v457);
  if (v458)
  {
    v452 = v457;
  }

  else
  {
    v452 = &byte_262899963;
  }

  v453 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v448, v449, v450, v451, v454, &byte_262899963, (35 - v454), (35 - v454), v452, *a4, *a5, *a6);
  DgnString::~DgnString(&v457);
}

void sub_2627B1ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t Recognizer::beginTopRecSyncRecog(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 272) = 0;
  *(result + 348) = a2;
  *(result + 352) = 0;
  *(result + 1608) = 0;
  *(result + 316) = 0xFFFFFFF0FFFFFFF0;
  *(result + 2392) = a3;
  *(result + 2400) = a4;
  return result;
}

void (***Recognizer::endTopRecSyncRecog(Recognizer *this))(void)
{
  if (*(this + 304) == 1)
  {
    v2 = *(*(this + 34) + 120);
    if (v2)
    {
      PelScoreCache::removeCacheClient(v2, this);
      *(this + 360) = 0;
    }
  }

  Active::endActiveSyncRecog(*(this + 35));
  *(this + 136) = 0;
  v3 = *(this + 140);
  if (v3)
  {
    bzero(*(this + 69), v3);
  }

  SearchLMScorer::endSearchLMScorerSyncRecog((this + 624));
  DgnDelete<RecogGermIterator>(*(this + 47));
  *(this + 47) = 0;
  result = DgnDelete<RecogGermIterator>(*(this + 48));
  *(this + 48) = 0;
  return result;
}

uint64_t Recognizer::beginTopRecPassSyncRecog(Recognizer *this, int a2, int a3, PelScorer *a4)
{
  *(this + 34) = a4;
  *(this + 88) = a2;
  v6 = *(this + 87);
  *(this + 89) = v6 * a2;
  if (*(this + 304) == 1)
  {
    v7 = *(a4 + 15);
    v8 = v6 == 1;
    v9 = 72;
    if (v8)
    {
      v9 = 56;
    }

    v10 = *(this + 33) + v9;
  }

  else
  {
    v7 = 0;
    v10 = 0;
  }

  Active::beginActiveSyncRecog(*(this + 35), v10, v7, *(this + 7), *(this + 8));
  MrecInitModule_sdpres_sdapi();
  v19 = 0x3FFFFCFFFFFELL;
  v20 = xmmword_26286CC40;
  Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(this + 35) + 303024, &v19);
  if (!*Bucket || (v12 = *(*Bucket + 40)) == 0)
  {
    v13 = *(this + 35);
    if (*(this + 304))
    {
      active = Active::newActiveWordSilence(v13, &v19);
    }

    else
    {
      active = Active::newActiveWordNonAcoustic(v13, &v19);
    }

    v12 = active;
  }

  ((*v12)[3])(v12, 0, 0, 4294967294);
  if (*(this + 78) != 3 || (result = (*(*v12[1] + 32))(v12[1]), *(this + 78) != 3))
  {
    v16 = *(this + 46);
    v18 = *(this + 72);
    result = CWIDCrumbBank::setFirstFrame(v16, &v18, 0);
  }

  if (v7)
  {
    PelScoreCache::addCacheClient(v7, this);
    *(this + 360) = 1;
    result = PelScoreCache::setCacheData(v7, *(this + 37));
  }

  *(this + 77) = a3;
  if (*(this + 72) == -1)
  {
    v17 = a3 - 1;
  }

  else
  {
    v17 = 0;
  }

  *(this + 79) = v17;
  *(this + 80) = v17;
  *(this + 81) = 0;
  *(this + 592) = 0;
  *(this + 588) = 0;
  return result;
}

uint64_t Recognizer::endTopRecPassSyncRecog(uint64_t this)
{
  v1 = this;
  v2 = *(this + 288);
  if (v2 == -1 || (v2 = *(this + 308), v2 != -16))
  {
    if (*(this + 316) == v2 && *(this + 312) != 3 && *(this + 620) == 1)
    {
      this = Recognizer::collectLastFrameConfidencePredictors(this, *(this + 600));
      *(v1 + 612) = 4294967280;
      *(v1 + 620) = 0;
    }
  }

  if (*(v1 + 304) == 1)
  {
    this = *(*(v1 + 272) + 120);
    if (this)
    {
      v3 = *(v1 + 320);
      v4 = *(v1 + 288) == 1;

      return PelScoreCache::removeCacheClientOfFramesFromTimeOn(this, v3, v4, v1);
    }
  }

  return this;
}

BOOL Recognizer::checkForDone(Recognizer *this)
{
  v1 = *(this + 72);
  if (v1 == -1)
  {
    return *(this + 79) == v1;
  }

  v1 = *(this + 77);
  return v1 != -16 && *(this + 79) == v1;
}

unint64_t Recognizer::collectLastFrameConfidencePredictors(unint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 316);
  if (v4 == -16)
  {
    v5 = -16;
  }

  else
  {
    v5 = v4 - *(this + 288);
  }

  for (i = *(this + 232); v5 >= i; *(v3 + 232) = i)
  {
    if (i == *(v3 + 236))
    {
      this = DgnPrimArray<unsigned int>::reallocElts(v3 + 224, 1, 1);
      i = *(v3 + 232);
    }

    *(*(v3 + 224) + 4 * i) = 0;
    i = *(v3 + 232) + 1;
  }

  v7 = 0;
  v8 = (*(*(v3 + 280) + 303248) - 1);
  if (v8 >= 0)
  {
    v9 = v8 + 1;
    v10 = *(*(v3 + 280) + 303240) + 8 * v8;
    do
    {
      this = *(*v10 + 8);
      if (*(this + 104) || *(this + 112) == 1)
      {
        this = (*(*this + 80))(this, a2);
        v7 += this;
      }

      --v9;
      v10 -= 8;
    }

    while (v9 >= 1);
  }

  *(*(v3 + 224) + 4 * v5) = v7;
  return this;
}

_DWORD *Recognizer::collectByFrameConfidencePredictors(_DWORD *this)
{
  v1 = this;
  v2 = this[79];
  if (v2 == -16)
  {
    v3 = -16;
  }

  else
  {
    v3 = v2 - this[72];
  }

  for (i = this[58]; v3 >= i; *(v1 + 232) = i)
  {
    if (i == *(v1 + 236))
    {
      this = DgnPrimArray<unsigned int>::reallocElts(v1 + 224, 1, 1);
      i = *(v1 + 232);
    }

    *(*(v1 + 224) + 4 * i) = 0;
    i = *(v1 + 232) + 1;
  }

  if (*(*(v1 + 280) + 303248) - 1 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 8 * (*(*(v1 + 280) + 303248) - 1);
    do
    {
      v5 += *(*(*(*(*(v1 + 280) + 303240) + v6) + 8) + 104);
      v6 -= 8;
    }

    while (v6 != -8);
  }

  *(*(v1 + 224) + 4 * v3) = v5;
  return this;
}

int32x2_t Recognizer::adjustBestForBWBack(Recognizer *this, int a2)
{
  v2 = *(this + 79);
  v3 = -16;
  if (v2 != -16)
  {
    v3 = v2 - *(this + 72);
  }

  if (v3 == *(this + 77))
  {
    v4 = -16;
  }

  else
  {
    v4 = v3;
  }

  return NetMgr::adjustBestForBWBack((*(this + 35) + 16), a2, v4, this + 81);
}

_BYTE *Recognizer::debugFrameStart(_BYTE *this)
{
  if (*(gParDiagnosticFrameSpecificCommand + 64))
  {
    v1 = this;
    this = *(gParDiagnosticFrameSpecificCommand + 56);
    if (*this)
    {
      v34 = 0;
      v35 = 0;
      DgnSplitStringIntoTokens(this, " \n\r,", &v34, 0);
      v4 = v35;
      if (v35)
      {
        v5 = 0;
        do
        {
          v6 = v5 + 1;
          v7 = v34;
          v8 = v5;
          if (v5 + 1 >= v4)
          {
            v9 = v34 + 16 * v5;
            if (*(v9 + 8))
            {
              v10 = *v9;
            }

            else
            {
              v10 = &byte_262899963;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 1907, "kernel/recog", 2, "%.500s %u", v2, v3, v10);
            v7 = v34;
          }

          v11 = v7 + 16 * v8;
          if (*(v11 + 8))
          {
            v12 = *v11;
          }

          else
          {
            v12 = &byte_262899963;
          }

          v13 = atoi(v12);
          if (v13 == *(v1 + 79))
          {
            v18 = v13;
            v19 = v7 + 16 * v6;
            if (*(v19 + 8))
            {
              v20 = *v19;
            }

            else
            {
              v20 = &byte_262899963;
            }

            xlprintf("Attempting DiagnosticFrameSpecificCommand '%.500s' on frame %d\n", v14, v15, v16, v17, v20, v13);
            if (*(v19 + 8))
            {
              v21 = *v19;
            }

            else
            {
              v21 = &byte_262899963;
            }

            if (!strcmp(v21, "DisplayObjectSizes()"))
            {
              InternalDisplayObjectSizes();
            }

            else if (!strcmp(v21, "DisplayMemStats()"))
            {
              MemStatsDisplayFromRef(0, 0, 1, 0, 0, 0, 0);
            }

            else if (!strcmp(v21, "DisplayMemChunkStats()"))
            {
              MrecInitModule_sdpres_sdapi();
            }

            else
            {
              v22 = strcmp(v21, "ErrThrow()");
              if (v22)
              {
                v25 = strcmp(v21, "ErrThrowMemory()");
                if (!v25)
                {
                  CurrentRegion = MemChunkRegion::getCurrentRegion(v25);
                  ThrowNewFailure(CurrentRegion, 0);
                }

                if (*v21)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 433, "kernel/recog", 3, "%.500s", v30, v31, v21);
                }
              }

              else
              {
                errThrowInternal(v22, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 424, "kernel/recog", 8, "%.500s", v23, v24, v21);
              }
            }

            if (*(v19 + 8))
            {
              v32 = *v19;
            }

            else
            {
              v32 = &byte_262899963;
            }

            xlprintf("Finished DiagnosticFrameSpecificCommand '%.500s' on frame %d\n", v26, v27, v28, v29, v32, v18);
          }

          v5 = v8 + 2;
          v4 = v35;
        }

        while (v8 + 2 < v35);
      }

      return DgnArray<DgnString>::releaseAll(&v34);
    }
  }

  return this;
}

void sub_2627B27FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

uint64_t *Recognizer::endNonAcousticFrame(uint64_t *this)
{
  if (*(this + 72) != -1)
  {
    v9 = v1;
    v10 = v2;
    v3 = this;
    if (*(this + 77) == -16)
    {
      v4 = this[35];
      if (!*(v4 + 303248) || (v7 = 0x3FFFFCFFFFFDLL, v8 = xmmword_26286CC40, this = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v4 + 303024, &v7), *this) && (v5 = *(*this + 40)) != 0 && ((v6 = *(v5 + 8), *(v6 + 104)) || *(v6 + 112) == 1) && *(v3[35] + 303248) == 1)
      {
        *(v3 + 77) = *(v3 + 79) + 1;
      }
    }
  }

  return this;
}

uint64_t Recognizer::checkForAbort(Recognizer *this)
{
  v2 = *(*(this + 35) + 88);
  v3 = *(this + 21);
  v4 = v3 > 0 && v2 >= v3;
  v5 = v4;
  *(this + 2304) = v5;
  MemChunkRegion::getRegionStats(0, &v18);
  if (*(this + 2304) != 1)
  {
    v7 = *(this + 22);
    if (v7 < 1 || (v14 = v19 < v7, *(this + 2304) = v19 >= v7, v14))
    {
      if (*(this + 304) != 1)
      {
        goto LABEL_24;
      }

      v10 = *(this + 79);
      if (v10 < 50)
      {
        goto LABEL_24;
      }

      v11 = v2 / v10;
      v12 = *(this + 201);
      if (v12 <= v11)
      {
        v12 = v2 / v10;
      }

      v13 = *(this + 23);
      *(this + 201) = v12;
      v14 = v11 < v13 || v13 <= 0;
      v15 = !v14;
      *(this + 2304) = v15;
      if (v15)
      {
        v8 = this;
        v9 = 3;
      }

      else
      {
LABEL_24:
        v16 = *(this + 24);
        if (v16 < 1)
        {
          v6 = 0;
          *(this + 2304) = 0;
          return v6;
        }

        v4 = *(this + 302) >= v16;
        *(this + 2304) = v4;
        if (!v4)
        {
          return 0;
        }

        v8 = this;
        v9 = 4;
      }
    }

    else
    {
      v8 = this;
      v9 = 2;
    }

    Recognizer::setSearchAbortRecognizerStats(v8, v9);
    return 1;
  }

  v6 = 1;
  Recognizer::setSearchAbortRecognizerStats(this, 1);
  return v6;
}

void Recognizer::setSearchAbortRecognizerStats(uint64_t a1, int a2)
{
  *(a1 + 2308) = a2;
  v3 = *(*(a1 + 280) + 88);
  *(a1 + 2312) = *(a1 + 1208);
  *(a1 + 2316) = v3;
  MemChunkRegion::getRegionStats(0, v6);
  *(a1 + 2320) = v6[1];
  v4 = *(a1 + 316);
  if (v4)
  {
    v5 = v3 / v4;
  }

  else
  {
    v5 = 0.0;
  }

  *(a1 + 2328) = v5;
}

uint64_t Recognizer::turnOffPrefilterer(Recognizer *this)
{
  if (*(this + 9))
  {
    return 0;
  }

  v2 = (*(*(this + 35) + 303248) - 1);
  if (v2 >= 0)
  {
    v3 = v2 + 1;
    for (i = *(*(this + 35) + 303240) + 8 * v2; ; i -= 8)
    {
      v5 = *(*i + 8);
      if (*(v5 + 104) || *(v5 + 112) == 1) && *(v5 + 16) != -50331651 && (*(*i + 36))
      {
        break;
      }

      if (v3-- <= 1)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void Recognizer::doFrame1(Recognizer *this)
{
  Recognizer::debugFrameStart(this);
  Recognizer::beginTopRecFrame(this, *(this + 79));
  *(this + 592) = 0;
  *(this + 588) = 0;
}

void Recognizer::beginTopRecFrame(Recognizer *this, int a2)
{
  NetMgr::beginNetMgrFrame((*(this + 35) + 16), a2);
  if (*(this + 78) != 3)
  {
    CWIDCrumbBank::ensureCrumbFrame(*(this + 46), a2);
  }

  *(this + 400) = 0;
}

uint64_t Recognizer::doFrame2(Recognizer *this, uint64_t a2)
{
  if (*(this + 304) == 1)
  {
    (*(**(this + 34) + 56))(*(this + 34), *(this + 79), 0, a2, this + 880, 0);
    if (!*(this + 78) && *(this + 25) == 1)
    {
      v3 = *(this + 35);
      if (*(v3 + 302984) == *(v3 + 302960))
      {
        DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::addChunk(v3 + 302952);
      }
    }
  }

  v4 = *(this + 79);
  if (v4 == -16)
  {
    goto LABEL_7;
  }

  v7 = *(this + 72);
  v5 = v4 - v7;
  if (v7 == 1)
  {
    if (v5 == -1)
    {
      goto LABEL_7;
    }
  }

  else if (v5 == *(this + 77))
  {
LABEL_7:
    v5 = -16;
  }

  if (*(this + 78) == 3)
  {
    Recognizer::adjustBestForBWBack(this, 0);
    v6 = 5000;
  }

  else
  {
    v6 = NetMgr::normalizeBestAndComputeEstimatedThresh((*(this + 35) + 16), v5, *(this + 4) + *(this + 3), this + 81);
    v8 = *(this + 81);
    v9 = *(this + 84);
    if (v9 == *(this + 85))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 328, 1, 1);
      v9 = *(this + 84);
    }

    *(*(this + 41) + 4 * v9) = v8;
    ++*(this + 84);
  }

  v10 = 5000;
  if (v5 != -16)
  {
    v10 = *(this + 150);
    *(this + 612) = 4294967280;
    *(this + 620) = 0;
  }

  v11 = *(this + 13);
  if (v11 == -1)
  {
    v12 = 5000;
  }

  else
  {
    v12 = (v6 - v11);
  }

  result = Active::scoreActiveWords(*(this + 35), *(this + 79), v10, v6, *(this + 5), v12, *(this + 14));
  if (v5 != -16 && *(this + 78) != 3)
  {
    result = Recognizer::collectByFrameConfidencePredictors(this);
  }

  *(this + 86) = 0;
  if (*(this + 304) == 1)
  {
    v14 = *(*(this + 34) + 120);
    ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(v14, 0);
    v16 = *(this + 34);
    *(this + 86) = ScoreNoBackoff + *(*(this + 35) + 260);
    (*(*v16 + 64))(v16, *(this + 79), this + 880);
    result = PelScoreCache::removeCacheClientOfFrame(v14, *(this + 79), this);
    *(this + 80) = *(this + 72) + *(this + 79);
  }

  return result;
}

uint64_t Recognizer::doFrame3(uint64_t a1, uint64_t a2)
{
  v4 = NetMgr::computeThreshScore((*(a1 + 280) + 16), *(a1 + 12), *(a1 + 16), *(a1 + 40), *(a1 + 44), (a1 + 1216), (a1 + 1224));
  active = Active::thresholdActiveWords(*(a1 + 280), *(a1 + 316), v4, *(a1 + 20));
  if (*(a1 + 312) == 3)
  {
    v6 = *(a1 + 280);
    v7 = *(a1 + 288);
    v8 = *(a1 + 316);
    *(a1 + 604) = *(v6 + 264);
    *(a1 + 600) = v4;
    *(a1 + 616) = v7;
    *(a1 + 608) = v8;
    *(a1 + 612) = v8 + v7;
    *(a1 + 620) = 1;
  }

  else
  {
    Recognizer::seedActiveWords(a1, v4, 20000, active, a2);
    v9 = *(a1 + 316);
    v10 = *(a1 + 248);
    if (v9 >= v10)
    {
      do
      {
        if (v10 == *(a1 + 252))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 240, 1, 1);
          v10 = *(a1 + 248);
        }

        v11 = *(a1 + 240);
        *(v11 + 4 * v10) = 0;
        v10 = *(a1 + 248) + 1;
        *(a1 + 248) = v10;
        v9 = *(a1 + 316);
      }

      while (v9 >= v10);
    }

    else
    {
      v11 = *(a1 + 240);
    }

    *(v11 + 4 * v9) = *(a1 + 1600);
    v6 = *(a1 + 280);
  }

  v12 = *(v6 + 216);
  if (v12 == 20000)
  {
    v13 = -2;
  }

  else
  {
    v13 = *(v6 + 208);
  }

  *(a1 + 2244) = v13;
  *(a1 + 2248) = v12;
  v14 = *(v6 + 232);
  if (!v14)
  {
    *(a1 + 2252) = 0;
    goto LABEL_20;
  }

  *(a1 + 2252) = 1;
  v15 = *(v14 + 16);
  *(a1 + 2260) = v15;
  *(a1 + 2264) = *(v14 + 20);
  *(a1 + 2268) = *(v14 + 24);
  if (v15 >> 25 == 126)
  {
    v16 = -16;
  }

  else
  {
    if ((*(*v14 + 96))(v14))
    {
      *(a1 + 2256) = (*(*v14 + 104))(v14);
      goto LABEL_20;
    }

    v16 = *(a1 + 316);
  }

  *(a1 + 2256) = v16;
LABEL_20:
  if (*(a1 + 312) != 1)
  {
    if (*(a1 + 304))
    {
      v17 = *(a1 + 80);
      v18 = *(a1 + 316);
      if (v17 && !(v18 % v17))
      {
        Active::prune(*(a1 + 280));
        v18 = *(a1 + 316);
      }

      Active::pruneTimeConstrained(*(a1 + 280), v18);
    }

    else
    {
      Active::prune(*(a1 + 280));
      Recognizer::endNonAcousticFrame(a1);
    }
  }

  result = Recognizer::endTopRecFrame(a1, *(a1 + 316));
  *(a1 + 316) += *(a1 + 288);
  ++*(a1 + 1208);
  return result;
}

void Recognizer::seedActiveWords(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v9 = *(a1 + 312);
  if (v9 != 3)
  {
    a3 = *(*(a1 + 280) + 264);
  }

  v10 = *(a1 + 288);
  v11 = *(a1 + 316);
  *(a1 + 604) = a3;
  *(a1 + 600) = a2;
  *(a1 + 616) = v10;
  *(a1 + 608) = v11;
  *(a1 + 612) = v11 + v10;
  *(a1 + 620) = 1;
  if (v9 == 3)
  {

    Recognizer::doBackward(a1);
  }

  else
  {
    CWIDCrumbBank::setBestAccumScore(*(a1 + 368), v11, *(a1 + 324));
    Recognizer::doFinalSilForward(a1);
    if (a4)
    {

      Recognizer::doForward(a1, a5);
    }
  }
}

uint64_t Recognizer::endTopRecFrame(Recognizer *this, int a2)
{
  if (*(this + 78) != 3)
  {
    CWIDCrumbBank::endCrumbFrame(*(this + 46), a2, *(this + 86));
  }

  v3 = *(this + 35) + 16;

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Recognizer::getBestHistoryMaybeExtend(Recognizer *this, char a2, int a3, int *a4)
{
  v8 = *(this + 35);
  v31 = 0x3FFFFCFFFFFDLL;
  v32 = xmmword_26286CC40;
  Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v8 + 303024, &v31);
  if (!*Bucket || (*(this + 2304) & 1) != 0 || (a2 & 1) != 0 || (v10 = *(*Bucket + 40)) == 0 || (v11 = *(v10 + 8), (v12 = *(v11 + 104)) == 0) && (*(v11 + 112) != 1 || (a3 & 1) == 0))
  {
    v24 = *(this + 35);
    if (*(v24 + 216) == 20000)
    {
      v25 = 1879048192;
      v26 = 4294967294;
    }

    else
    {
      v26 = *(v24 + 208);
      v25 = 1879048192;
    }

    goto LABEL_33;
  }

  v13 = *(v11 + 64);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = *(v11 + 56);
  do
  {
    v17 = *v15++;
    v16 = v17;
    if (*(v17 + 8) < 20000)
    {
      v14 = v16;
    }

    --v13;
  }

  while (v13);
  if (!v14 || a3 == 0)
  {
LABEL_18:
    v19 = 1879048192;
  }

  else
  {
    v19 = 20000;
    if (*(v14 + 8) != 20000)
    {
      v20 = *v14;
      v19 = *(v14 + 8);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }
  }

  v20 = -2;
  if (!v12)
  {
LABEL_30:
    v25 = *(this + 81) + v19;
    v27 = *(this + 79);
    LOBYTE(v31) = 0;
    v26 = HistoryMgr::extendHistory(*(this + 35) + 72, v20, (v11 + 16), 0, v27 + 1, v27 + 1, &v31);
    if (v31 == 1)
    {
      ++*(this + 303);
    }

    CWIDCrumbBank::addZeroFrameFinalSilHABS(*(this + 46), v27, *(v10 + 8) + 16, v26, v25);
    goto LABEL_33;
  }

LABEL_20:
  NonSilOutPort = HmmNet::getNonSilOutPort(*(v10 + 8), 0);
  v22 = *(NonSilOutPort + 8);
  if (v19 <= v22)
  {
    v11 = *(v10 + 8);
    goto LABEL_30;
  }

  if (v22 == 20000)
  {
    v23 = -2;
  }

  else
  {
    v23 = *NonSilOutPort;
  }

  v25 = *(this + 81) + v22;
  v29 = *(this + 79);
  v30 = *(v10 + 8);
  LOBYTE(v31) = 0;
  v26 = HistoryMgr::extendHistory(*(this + 35) + 72, v23, (v30 + 16), 0, v29, v29, &v31);
  if (v31 == 1)
  {
    ++*(this + 303);
  }

LABEL_33:
  *a4 = v25;
  return v26;
}

uint64_t Recognizer::makePartialResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, uint64_t a7, unint64_t a8)
{
  v16 = a6[2];
  if (v16 >= 1)
  {
    v17 = 112 * v16 - 112;
    do
    {
      (**(*a6 + v17))(*a6 + v17);
      v17 -= 112;
    }

    while (v17 != -112);
  }

  a6[2] = 0;
  *(a8 + 8) = 0;
  if (*(a1 + 2248) == 20000)
  {
    return 1879048192;
  }

  v18 = *(a1 + 2244);
  if (v18 == -2)
  {
    return 1879048192;
  }

  *v50 = a3;
  v49 = a5;
  v51 = *(a1 + 324);
  v52 = *(a1 + 2248);
  HistoryMgr::getForwardContents(*(a1 + 280) + 72, v18, a7);
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  if (*(a7 + 8))
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      v24 = *a7 + v21;
      v25 = *(v24 + 24);
      if ((v25 - v23) < *(a1 + 220))
      {
        return (v51 + v52);
      }

      v26 = *(v24 + 28);
      WordLatticeLC::WordLatticeLC(&v57, v24, v23, v25 - v23, v26 - v25, v67);
      v27 = a6[2];
      if (v27 == a6[3])
      {
        DgnArray<WordLatticeLC>::reallocElts(a6, 1, 1);
        LODWORD(v27) = a6[2];
      }

      WordLatticeLC::WordLatticeLC((*a6 + 112 * v27), &v57);
      ++a6[2];
      WordLatticeLC::~WordLatticeLC(&v57);
      v28 = *(a8 + 8);
      if (v28 == *(a8 + 12))
      {
        v20 = DgnPrimArray<unsigned int>::reallocElts(a8, 1, 1);
        v28 = *(a8 + 8);
      }

      *(*a8 + 4 * v28) = 1;
      ++*(a8 + 8);
      ++v22;
      v21 += 32;
      v23 = v26;
      if (v22 >= *(a7 + 8))
      {
        goto LABEL_17;
      }
    }
  }

  v26 = 0;
LABEL_17:
  if (*(a1 + 2252) != 1)
  {
    v32 = 1;
    if (!a2)
    {
      return (v51 + v52);
    }

    goto LABEL_29;
  }

  v29 = *(a1 + 2260);
  if (v29 >> 25 == 126)
  {
    v30 = v29 & 0xFFFFFF;
    if ((v29 & 0xFFFFFF) == 0xFFFFFD && a6[2] == 1)
    {
      v31 = *(a1 + 316);
      *(*a6 + 20) += v31 - v26;
      v32 = 1;
      v26 = v31;
      if (!a2)
      {
        return (v51 + v52);
      }

LABEL_29:
      if (v32)
      {
        v55 = 0x3FFFFAFFFFFCLL;
        v56 = xmmword_26286CC40;
        v34 = a6[2];
        if (v34)
        {
          v35 = *a6 + 112 * (v34 - 1);
          v55 = *(v35 + 88);
          v56 = *(v35 + 96);
        }

        v36 = *(a2 + 48);
        v37 = *(v36 + 4);
        if (v37 <= v26)
        {
LABEL_40:
          v43 = 1;
        }

        else
        {
          while (1)
          {
            GermsForFrame = PrefilterResult::getGermsForFrame(v36, v26);
            v59 = -16;
            v60 = 0u;
            memset(v61, 0, sizeof(v61));
            v62 = 1879048192;
            v63 = 0;
            v64 = -1;
            v57 = &unk_2875281A8;
            v58 = 0xBFF0000000000000;
            HIDWORD(v65) = 0x3FFF;
            v66 = xmmword_26286CC40;
            PartialResultWord = Recognizer::getPartialResultWord(a1, GermsForFrame, v26, &v55, &v57, v54);
            if ((PartialResultWord & 1) == 0)
            {
              break;
            }

            v40 = v60;
            if (v60 < *(a1 + 216))
            {
              break;
            }

            v41 = a6[2];
            if (v41 == a6[3])
            {
              DgnArray<WordLatticeLC>::reallocElts(a6, 1, 1);
              LODWORD(v41) = a6[2];
            }

            WordLatticeLC::WordLatticeLC((*a6 + 112 * v41), &v57);
            ++a6[2];
            v42 = *(a8 + 8);
            if (v42 == *(a8 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a8, 1, 1);
              v42 = *(a8 + 8);
            }

            *(*a8 + 4 * v42) = 2;
            ++*(a8 + 8);
            v26 += v40;
            v55 = v65;
            v56 = v66;
            WordLatticeLC::~WordLatticeLC(&v57);
            if (v37 <= v26)
            {
              goto LABEL_40;
            }
          }

          v43 = PartialResultWord ^ 1;
          WordLatticeLC::~WordLatticeLC(&v57);
        }

        if (*v50 && v43)
        {
          v44 = *(*v50 + 8);
          v54[0] = 0;
          v54[1] = 0;
          if (v44 > v26)
          {
            v45 = 0;
            while ((v49 - v26) >= *(a1 + 208))
            {
              Recognizer::returnIncompleteGerms(v20, v26, *v50, a4, v54);
              v59 = -16;
              v60 = 0u;
              memset(v61, 0, sizeof(v61));
              v62 = 1879048192;
              v63 = 0;
              v64 = -1;
              v57 = &unk_2875281A8;
              v58 = 0xBFF0000000000000;
              HIDWORD(v65) = 0x3FFF;
              v66 = xmmword_26286CC40;
              if ((Recognizer::getPartialResultWord(a1, v54, v26, &v55, &v57, &v53) & 1) == 0)
              {
                goto LABEL_56;
              }

              v46 = v60;
              if (v60 < *(a1 + 212))
              {
                goto LABEL_56;
              }

              v47 = a6[2];
              if (v47 == a6[3])
              {
                DgnArray<WordLatticeLC>::reallocElts(a6, 1, 1);
                LODWORD(v47) = a6[2];
              }

              WordLatticeLC::WordLatticeLC((*a6 + 112 * v47), &v57);
              ++a6[2];
              v48 = *(a8 + 8);
              if (v48 == *(a8 + 12))
              {
                DgnPrimArray<unsigned int>::reallocElts(a8, 1, 1);
                v48 = *(a8 + 8);
              }

              *(*a8 + 4 * v48) = 3;
              ++*(a8 + 8);
              v55 = v65;
              v56 = v66;
              if (*(a1 + 204) - 1 < ++v45)
              {
LABEL_56:
                WordLatticeLC::~WordLatticeLC(&v57);
                break;
              }

              v26 += v46;
              WordLatticeLC::~WordLatticeLC(&v57);
              if (v44 <= v26)
              {
                break;
              }
            }
          }

          DgnIArray<Utterance *>::~DgnIArray(v54);
        }
      }

      return (v51 + v52);
    }

    WordLatticeLC::WordLatticeLC(&v57, a1 + 2260, v26, *(a1 + 316) - v26, 0, v67);
    DgnArray<WordLatticeLC>::add(a6, &v57);
    v32 = v30 != 16777213;
  }

  else
  {
    v32 = *(a1 + 392) == 0;
    v33 = *(a1 + 2256);
    if ((v33 - v26) < *(a1 + 220))
    {
      return (v51 + v52);
    }

    WordLatticeLC::WordLatticeLC(&v57, a1 + 2260, v26, v33 - v26, *(a1 + 316) - v33, v67);
    DgnArray<WordLatticeLC>::add(a6, &v57);
  }

  WordLatticeLC::~WordLatticeLC(&v57);
  v20 = DgnPrimArray<unsigned int>::add(a8, 1);
  v26 = *(a1 + 316);
  if (a2)
  {
    goto LABEL_29;
  }

  return (v51 + v52);
}

void sub_2627B3A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

void DgnArray<WordLatticeLC>::add(uint64_t a1, WordLatticeLC *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    DgnArray<WordLatticeLC>::reallocElts(a1, 1, 1);
    v4 = *(a1 + 8);
  }

  WordLatticeLC::WordLatticeLC((*a1 + 112 * v4), a2);
  ++*(a1 + 8);
}

uint64_t Recognizer::getPartialResultWord(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, uint64_t a5, int *a6)
{
  if (a2 && *(a2 + 8))
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    *(v12 + 2) = 0;
    *(v12 + 32) = 0;
    v12[3] = 0;
    *v12 = &unk_287525768;
    v12[5] = a2;
    *(v12 + 3) = *(a2 + 8);
    Constraint::prunePreList(*(a1 + 2216), v12, 1, v13, v14, v15, v16, v17);
    v67[0] = 0;
    Legal = Constraint::getLegal(*(a1 + 2216), a4, 0, 1, v67 + 1, a3, v67, 0, 0, 0, 0);
    if (HIDWORD(v67[0]))
    {
      v19 = Legal;
      SeededWeights = Constraint::getSeededWeights(*(a1 + 2216), a4, a3);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      LMStats::resetStats(v60);
      v21 = (a1 + 624);
      v58 = v21;
      v59 = 1;
      SearchLMScorer::setContext(v21, 0xFAFFFFFC, a4, v19, 1, SeededWeights, v60, 0, 0xFAFFFFFC, 0xFAFFFFFC);
      v56 = 0x3FFFFCFFFFFDLL;
      v57 = xmmword_26286CC40;
      v22 = *(v19 + 8);
      if (!v22)
      {
        goto LABEL_32;
      }

      v41 = a3;
      v42 = a5;
      v43 = v12;
      v44 = v19;
      v23 = 0;
      v45 = 0;
      v24 = 20000;
      do
      {
        v25 = *v19 + 16 * v23;
        v26 = *(v25 + 8);
        if (v26)
        {
          v27 = 0;
          for (i = 0; i < v26; ++i)
          {
            v29 = *v25 + v27;
            v30 = *(v29 + 30);
            if ((v30 & 0x80000000) == 0)
            {
              v46 = *v29;
              *v47 = *(v29 + 8);
              v31 = *(v29 + 28);
              v32 = *(v29 + 26);
              v33 = SearchLMScorer::lmScoreNonSilCwidac(v21, &v46, v60);
              if (v31 != 20000 && v32 != 20000 && v33 != 20000 && v32 + v31 + v33 < v24)
              {
                v56 = v46;
                v57 = *v47;
                if (v30 <= 1)
                {
                  v37 = 1;
                }

                else
                {
                  v37 = v30;
                }

                v45 = v37;
                v24 = v32 + v31 + v33;
              }

              v26 = *(v25 + 8);
            }

            v27 += 44;
          }

          v19 = v44;
          v22 = *(v44 + 8);
        }

        ++v23;
      }

      while (v23 < v22);
      v12 = v43;
      if (v24 < 20000)
      {
        memset(v54, 0, sizeof(v54));
        v55 = 0;
        WordLatticeLC::WordLatticeLC(&v46, &v56, v41, v45, 0, v54);
        *(v42 + 8) = v47[0];
        v38 = *&v47[3];
        *(v42 + 16) = *&v47[1];
        *(v42 + 32) = v38;
        *(v42 + 48) = *&v47[5];
        *(v42 + 64) = v47[7];
        *(v42 + 72) = v48;
        *(v42 + 80) = v49;
        *(v42 + 88) = v50;
        *(v42 + 92) = v51;
        *(v42 + 94) = v52;
        *(v42 + 96) = v53;
        WordLatticeLC::~WordLatticeLC(&v46);
        *a6 = v24;
        v39 = 1;
        if ((v59 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
LABEL_32:
        v39 = 0;
      }

      SearchLMScorer::unsetContext(v58);
    }

    else
    {
      v39 = 0;
    }

LABEL_35:
    DgnDelete<RecogGermIterator>(v12);
    return v39;
  }

  return 0;
}

unint64_t Recognizer::returnIncompleteGerms(int a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*a3 + 8 * a2);
  if (!v5)
  {
    return result;
  }

  v8 = *(v5 + 12);
  if (v8)
  {
    v9 = *(v5 + 80);
    v10 = *v9;
    if (*v9)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v11 = 0;
      v12 = v9 + 1;
      while (v8 - 1 != v11)
      {
        v10 = v12[v11++];
        if (v10)
        {
          LODWORD(v8) = v11;
          goto LABEL_11;
        }
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  v13 = *(v5 + 8);
  v14 = *(a5 + 12);
  if (v13 > v14)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a5, v13 - v14, 0);
  }

  v16 = *(a5 + 8);
  if (v16 < v13)
  {
    v17 = v13 - v16;
    v18 = *a5 + 8 * v16 + 6;
    do
    {
      *(v18 - 6) = 4211081215;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  *(a5 + 8) = v13;
  if (v8 >= *(v5 + 12))
  {
    return result;
  }

  for (i = 0; ; ++i)
  {
    v20 = *(v10 + 2);
    if (v10)
    {
      v21 = v10 + 6;
    }

    else
    {
      v21 = 0;
    }

    v22 = *v21;
    if (*(v10 + 2) >> 25 < *(a4 + 8))
    {
      v23 = *a4 + 16 * (v20 >> 25);
      if ((v20 & 0xFFFFFF) < *(v23 + 8))
      {
        v24 = *(*v23 + 2 * (v20 & 0xFFFFFF));
        if (v24 != 20000)
        {
          v22 -= v24;
        }
      }
    }

    *(*a5 + 8 * i) = (v21[1] << 48) | (v22 << 32) | v20;
    v25 = *v10;
    v26 = *(v5 + 12);
    if (*v10)
    {
      goto LABEL_33;
    }

    v8 = (v8 + 1);
    if (v8 >= v26)
    {
      v25 = v10;
      goto LABEL_33;
    }

    v27 = *(v5 + 80);
    v25 = *(v27 + 8 * v8);
    if (!v25)
    {
      break;
    }

LABEL_33:
    v10 = v25;
    if (v8 >= v26)
    {
      return result;
    }
  }

  v28 = (v27 + 8 * v8 + 8);
  v29 = ~v8 + v26;
  while (v29)
  {
    v30 = *v28++;
    v25 = v30;
    LODWORD(v8) = v8 + 1;
    --v29;
    if (v30)
    {
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t *Recognizer::makeRecognizerResults(Recognizer *this, LatticeStats *a2, char a3)
{
  v85 = 1879048192;
  BestHistoryMaybeExtend = Recognizer::getBestHistoryMaybeExtend(this, a2, *(this + 149), &v85);
  v7 = v85;
  if (v85 == 1879048192 && (a3 & 1) == 0)
  {
    Lattice = 0;
    *(this + 2240) = 1;
    return Lattice;
  }

  SnapTime::recordTime((this + 2024), 1, 1, 1, 1);
  v13 = *(this + 46);
  v79 = VocMgr::smpVocMgr;
  v14 = *(this + 77);
  if (v14)
  {
    v14 = CWIDCrumbBank::getLastFrame(v13) + 1;
    v15 = *(this + 77);
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = BestHistoryMaybeExtend == -2;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = *(this + 43);
  v81 = v14;
  v78 = v15;
  if (v18 == 2)
  {
    goto LABEL_17;
  }

  if (v18 != 3)
  {
    v18 = 3;
LABEL_17:
    v19 = *(this + 144);
    v20 = *(this + 145);
    goto LABEL_18;
  }

  v19 = 0;
  v20 = 0;
  v18 = 1;
LABEL_18:
  LatticeType = BackTraceLatticeBuilder::getLatticeType((v19 & 1), v20 & 1, v18, *(this + 148), v9, v10, v11, v12);
  v77 = a3;
  v80 = v17;
  if (!LatticeType && *(this + 144) == 1 && *(this + 43) == 2 && (*(this + 145) & v17 & 1) != 0)
  {
    v22 = HistoryMgr::copyAndOverrideToBigramHistories((*(this + 35) + 72));
    v23 = MemChunkAlloc(0x38uLL, 0);
    v24 = CWIDCrumbBank::CWIDCrumbBank(v23, (*(this + 35) + 72));
    CWIDCrumbBank::copy(v24, v13);
    CWIDCrumbBank::mergeCrumbs(v23, v25);
    CWIDCrumbBank::updateCrumbHistory(v23, v22);
    v26 = 1;
  }

  else
  {
    v26 = 0;
    v22 = 0;
    v23 = v13;
    v13 = 0;
  }

  Latch<MemChunkRegion,LatchAdapter>::Latch(v83, &gGlobalMemChunkRegion);
  v27 = MemChunkAlloc(0x238uLL, 0);
  if (*(this + 8))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(this + 146) ^ 1;
  }

  BackTraceLatticeBuilder::BackTraceLatticeBuilder(v27, *(this + 277), v23, *(this + 35) + 302952, this + 624, *(this + 304), LatticeType, *(this + 28), *(this + 13), *(this + 29), *(this + 30), *(this + 31), *(this + 32), *(this + 33), *(this + 34), *(this + 35), *(this + 147), *(this + 148), v28 & 1, *(this + 38), *(this + 14), *(this + 166), *(this + 196), v26, v13, v22);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(v83);
  if (v80)
  {
    if (v7 == 1879048192)
    {
      *v83 = 0x3FFFFCFFFFFDLL;
      v84 = xmmword_26286CC40;
      v32 = *(this + 77);
      LOBYTE(v86) = 0;
      v33 = HistoryMgr::extendHistory(*(this + 35) + 72, BestHistoryMaybeExtend, v83, 0, v32, v32, &v86);
      if (v86 == 1)
      {
        ++*(this + 303);
      }

      v29 = CWIDCrumbBank::setTopChoiceHistoryExtendToEnd(v23, v33, *(this + 77));
    }

    else
    {
      v83[0] = 1879048192;
      LODWORD(v86) = -2;
      CWIDCrumbBank::getRightSilenceInfo(v23, v81 - 1, &v86, v83);
      CWIDCrumbBank::setTopChoiceHistory(v23, v86);
      v29 = 0;
    }

    v34 = *(this + 3);
    v35 = *(this + 4);
    Latch<MemChunkRegion,LatchAdapter>::Latch(v83, &gGlobalMemChunkRegion);
    Lattice = BackTraceLatticeBuilder::makeLattice(v27, *(this + 264), *(this + 34), v7 == 1879048192, v29, *(this + 100), (this + 1616), v35 + v34, *(this + 88), *(this + 89), a2);
    v36 = (*(this + 304) & v77);
    *(Lattice + 209) = v7 == 1879048192;
    Latch<MemChunkRegion,LatchAdapter>::~Latch(v83);
    v31 = v79;
    if (v13)
    {
      DgnDelete<CWIDCrumbBank>(v23);
      *(Lattice + 207) = v78 == v81;
      if (v36)
      {
LABEL_36:
        v37 = *(this + 77);
        for (i = *(this + 58); v37 > i; *(this + 58) = i)
        {
          if (i == *(this + 59))
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 224, 1, 1);
            i = *(this + 58);
          }

          *(*(this + 28) + 4 * i) = 0;
          i = *(this + 58) + 1;
        }

        for (j = *(this + 62); v37 > j; *(this + 62) = j)
        {
          if (j == *(this + 63))
          {
            DgnPrimArray<unsigned int>::reallocElts(this + 240, 1, 1);
            j = *(this + 62);
          }

          *(*(this + 30) + 4 * j) = 0;
          j = *(this + 62) + 1;
        }

        v30 = 1;
        goto LABEL_49;
      }
    }

    else
    {
      *(Lattice + 207) = v78 == v81;
      if (v36)
      {
        goto LABEL_36;
      }
    }

    v30 = 0;
  }

  else
  {
    Latch<MemChunkRegion,LatchAdapter>::Latch(v83, &gGlobalMemChunkRegion);
    Lattice = BackTraceLatticeBuilder::makeSilentLattice(*(this + 264), *(this + 77), *(this + 88), *(this + 89), *(this + 304), this + 1616, a2);
    *(Lattice + 209) = 257;
    Latch<MemChunkRegion,LatchAdapter>::~Latch(v83);
    v30 = 0;
    *(Lattice + 207) = v78 == v81;
    v31 = v79;
  }

LABEL_49:
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v82, &gGlobalMemChunkRegion);
  if (v27)
  {
    BackTraceLatticeBuilder::~BackTraceLatticeBuilder(v27);
    MemChunkFree(v40, 0);
  }

  SnapTime::recordTime((this + 2056), 1, 1, 1, 1);
  v48 = *(this + 277);
  if ((*(v48 + 68) & 0xFFFFFFFD) == 0 && *(v48 + 192))
  {
    WordLattice::computeParseTokens(Lattice, v48 + 168, (v48 + 184));
  }

  if (*(Lattice + 210))
  {
    goto LABEL_105;
  }

  if (*(this + 304) == 1 && *(this + 146) == 1)
  {
    SnapTime::recordTime((this + 2184), 1, 1, 1, 1);
    WordLattice::addSegmentations(Lattice, *(this + 35), *(this + 32), *(this + 33));
    if (*(Lattice + 210))
    {
      goto LABEL_105;
    }
  }

  if ((*(this + 675) & 1) == 0 && *(this + 678) != 1 || WordLattice::hasCollapsedWords(Lattice))
  {
    LOBYTE(v49) = 0;
    v50 = 0;
    goto LABEL_88;
  }

  SnapTime::recordTime((this + 2088), 1, 1, 1, 1);
  *v83 = 0;
  *&v84 = 0;
  if (!*(Lattice + 26))
  {
LABEL_86:
    LOBYTE(v49) = 0;
    v50 = 0;
    goto LABEL_87;
  }

  v51 = 0;
  do
  {
    v52 = Lattice[16] + 136 * *(Lattice[12] + 4 * v51);
    v55 = *(v52 + 88);
    v53 = (v52 + 88);
    v54 = v55;
    if (v55 >> 27 != 31)
    {
      v56 = v84;
      if (!v84)
      {
        goto LABEL_71;
      }

      v57 = *v83;
      v58 = v84;
      v59 = 0xFFFFFFFFLL;
      while (1)
      {
        v60 = *v57++;
        if (v60 == v54 >> 25)
        {
          break;
        }

        --v59;
        if (!--v58)
        {
          goto LABEL_71;
        }
      }

      if (!v59)
      {
LABEL_71:
        v61 = *(this + 277);
        if ((*(v61 + 68) & 0xFFFFFFFD) == 0)
        {
          if (!Constraint::isLMAllowedForState(v61, v53))
          {
            goto LABEL_77;
          }

          v56 = v84;
        }

        if (v56 == DWORD1(v84))
        {
          DgnPrimArray<short>::reallocElts(v83, 1, 1);
          v56 = v84;
        }

        *(*v83 + 2 * v56) = v54 >> 25;
        LODWORD(v84) = v56 + 1;
      }
    }

LABEL_77:
    ++v51;
  }

  while (v51 < *(Lattice + 26));
  if (!v84)
  {
    goto LABEL_86;
  }

  v62 = 0;
  v50 = 0;
  v49 = 0;
  do
  {
    v63 = *(*(**v31 + 8 * *(*v83 + 2 * v62)) + 72);
    if (*(this + 675) == 1)
    {
      v49 |= (*(*v63 + 448))(*(*(**v31 + 8 * *(*v83 + 2 * v62)) + 72), v53);
    }

    if (*(this + 678) == 1)
    {
      v50 |= (*(*v63 + 312))(v63, 0) != 0;
    }

    ++v62;
  }

  while (v62 < v84);
LABEL_87:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v83);
  if ((v49 & 1) == 0)
  {
LABEL_88:
    if ((v50 & 1) == 0)
    {
      v64 = 0;
      goto LABEL_98;
    }
  }

  if (*(this + 184))
  {
    v65 = **(this + 91);
  }

  else
  {
    v65 = -50331650;
  }

  if (v49)
  {
    v66 = 4;
  }

  else
  {
    v66 = 3;
  }

  v64 = WordLattice::expandLMContext(Lattice, v66, v65, *(this + 48), this + 1616, this + 584, this + 585);
  if (v64 != 1)
  {
    SnapTime::recordTime((this + 2120), 1, 1, 1, 1);
    WordLattice::rescoreLatticeLM(Lattice, (this + 624), this + 202, v49 & 1);
  }

LABEL_98:
  SnapTime::recordTime((this + 2152), 1, 1, 1, 1);
  if (*(this + 304) == 1 && *(this + 146) == 1)
  {
    Lattice<WordLatticeLC>::minimize(Lattice);
  }

  else
  {
    v67 = MemChunkAlloc(0x120uLL, 0);
    WordLattice::WordLattice(v67, Lattice, 0, 0, 0, 0, 0, 0);
    DgnDelete<WordLattice>(Lattice);
    Lattice = v67;
  }

  WordLattice::maybePruneToNumUniquePaths(Lattice, *(this + 47));
  if ((*(Lattice + 210) & 1) == 0 && v64 == 1)
  {
    *(Lattice + 210) = 1;
  }

LABEL_105:
  v68 = *(this + 277);
  if ((*(v68 + 68) & 0xFFFFFFFD) == 0 && *(v68 + 192))
  {
    WordLattice::fixStateIds(Lattice, v41, v42, v43, v44, v45, v46, v47);
  }

  if (v30)
  {
    v69 = *(*(this + 34) + 120);
    v70 = *(v69 + 480);
    *v83 = 0;
    *&v84 = 0;
    if (v70)
    {
      v86 = 0;
      v71 = realloc_array(0, &v86, 2 * v70, 0, 0, 1);
      v72 = 0;
      v73 = v86;
      *v83 = v86;
      LODWORD(v84) = v70;
      DWORD1(v84) = v71 >> 1;
      v74 = *(v69 + 472) + 2;
      do
      {
        v73[v72] = *(v74 + 1 * v72);
        ++v72;
      }

      while (v70 != v72);
    }

    else
    {
      v73 = 0;
      LODWORD(v84) = 0;
    }

    v75 = *(this + 77);
    while (v75 > v70)
    {
      if (v70 == DWORD1(v84))
      {
        DgnPrimArray<short>::reallocElts(v83, 1, 1);
        LODWORD(v70) = v84;
        v73 = *v83;
      }

      v73[v70] = 0;
      LODWORD(v70) = v70 + 1;
      LODWORD(v84) = v70;
    }

    WordLattice::computeConfidencePredictorsForLinks(Lattice, this + 224, this + 30, v83);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v83);
  }

  *(this + 2240) = 1;
  Latch<MemChunkRegion,LatchAdapter>::~Latch(&v82);
  return Lattice;
}

void sub_2627B49E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *Recognizer::setPelScores(PelScoreCacheData **this, const PelScoreCacheData *a2)
{
  DgnDelete<PelScoreCacheData>(this[37]);
  if (a2)
  {
    result = PelScoreCacheData::clone(a2);
  }

  else
  {
    result = 0;
  }

  this[37] = result;
  return result;
}

uint64_t Recognizer::beginTrackingConfidenceStatistics(uint64_t this)
{
  *(this + 232) = 0;
  *(this + 248) = 0;
  return this;
}

__n128 Recognizer::setContextPars(uint64_t a1, __n128 *a2)
{
  v4 = MemChunkAlloc(0x18uLL, 0);
  result = *a2;
  *v4 = *a2;
  *(v4 + 4) = a2[1].n128_u32[0];
  *(v4 + 20) = a2[1].n128_u8[4];
  *(a1 + 760) = v4;
  return result;
}

uint64_t Recognizer::setRightGermsBackward(Recognizer *this)
{
  v2 = *(*(this + 35) + 303248);
  *(this + 148) = 0;
  v3 = *(this + 149);
  if (v2 > v3)
  {
    DgnArray<RecogGerm>::reallocElts(this + 584, v2 - v3, 0);
  }

  *(this + 144) = 0;
  v4 = *(this + 145);
  if (v2 > v4)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 568, v2 - v4, 0);
  }

  *(this + 144) = v2;
  v5 = *(*(this + 35) + 303248);
  if (v5 - 1 < 0)
  {
    return 0;
  }

  v6 = 0;
  result = 0;
  v8 = *(*(this + 35) + 303240) + 8 * (v5 - 1);
  do
  {
    v9 = *v8;
    v10 = *(*v8 + 8);
    if (*(v10 + 104) || *(v10 + 112) == 1)
    {
      *(*(this + 71) + 8 * v6) = v9;
      v11 = *(v9 + 8);
      if (*(this + 151) >= *(v11 + 108))
      {
        v12 = *(v11 + 16);
        if (v12 >> 25 == 126)
        {
          if (v12 == -50331650)
          {
            result = v9;
          }
        }

        else
        {
          v13 = *(this + 148);
          v14 = *(this + 73) + 44 * v13;
          *v14 = 0x3FFFFAFFFFFFLL;
          *(v14 + 8) = xmmword_26286CC40;
          *(this + 148) = v13 + 1;
          *v14 = *(v11 + 16);
          *(v14 + 4) = *(v11 + 20);
          *(v14 + 8) = *(v11 + 24);
          *(v14 + 24) = 0;
          *(v14 + 26) = 1310720000;
          *(v14 + 30) = 0;
          *(v14 + 32) = 0x70000000FFFFFFFELL;
          *(v14 + 40) = v6;
        }
      }
    }

    ++v6;
    v8 -= 8;
  }

  while (v5 != v6);
  return result;
}

uint64_t *Recognizer::doBackward(Recognizer *this)
{
  v2 = Recognizer::setRightGermsBackward(this);
  DgnDelete<RecogGermIterator>(*(this + 48));
  v3 = MemChunkAlloc(0x30uLL, 0);
  *(v3 + 2) = 0;
  *(v3 + 32) = 0;
  v3[3] = 0;
  *v3 = &unk_287524340;
  v3[5] = this + 584;
  *(v3 + 3) = *(this + 148);
  *(this + 48) = v3;
  Constraint::prunePreList(*(this + 277), v3, 1, v4, v5, v6, v7, v8);
  DgnDelete<RecogGermIterator>(*(this + 47));
  *(this + 47) = 0;
  result = MemChunkAlloc(0x30uLL, 0);
  result[3] = 0;
  *result = &unk_2875253D0;
  result[5] = this + 2224;
  v10 = *(this + 558);
  *(result + 3) = v10;
  *(this + 47) = result;
  v31 = 0x3FFFFAFFFFFFLL;
  v32 = xmmword_26286CC40;
  v33 = 0;
  *v34 = 1310720000;
  *&v34[4] = 0;
  v35 = 0x70000000FFFFFFFELL;
  *(result + 32) = 0;
  *(result + 2) = 0;
  if (v10)
  {
    do
    {
      (*(*result + 16))(result, &v31);
      v29 = v31;
      v30 = v32;
      if (v31 >> 25 == 126)
      {
        v31 = 0x3FFFFCFFFFFDLL;
        v32 = xmmword_26286CC40;
      }

      v28 = 0;
      Legal = Constraint::getLegal(*(this + 277), &v29, 0, 0, &v28, *(this + 79), this + 308, 0, 0, 0, 0);
      if (v28)
      {
        v12 = Legal;
        v13 = *(Legal + 8);
        if (*(Legal + 8))
        {
          v14 = 0;
          do
          {
            v15 = *v12 + 16 * v14;
            if (*(v15 + 8))
            {
              v16 = 0;
              v17 = 40;
              do
              {
                v18 = *(*(this + 71) + 8 * *(*v15 + v17));
                Recognizer::seedOneBackward(this, v18, v14, &v31);
                if (*(this + 304) == 1 && v31 >> 25 != 126)
                {
                  Recognizer::seedOneBackward(this, v18, 0, &v31);
                }

                ++v16;
                v17 += 44;
              }

              while (v16 < *(v15 + 8));
            }

            ++v14;
          }

          while (v14 != v13);
        }
      }

      if (v2)
      {
        if (v29 >> 25 == 126 || (v19 = *(*(**VocMgr::smpVocMgr + ((v29 >> 22) & 0x3F8)) + 48), *(*(v19 + 32) + 2 * (v29 & 0xFFFFFF)) != 1) || *(*(v19 + 592) + 2 * (v29 & 0xFFFFFF)))
        {
          if (Constraint::getCanSeedFinalSilence(*(this + 277), &v29, *(this + 79)))
          {
            v21 = v31;
            v22 = v32;
            v23 = v33;
            v24 = *v34;
            v25 = *&v34[2];
            v26 = v35;
            v27 = v36;
            Recognizer::seedOneBackward(this, v2, 0, &v21);
          }
        }
      }

      result = *(this + 47);
      v20 = *(result + 2) + 1;
      *(result + 2) = v20;
      if (*(result + 32))
      {
        (*(*result + 24))(result);
        result = *(this + 47);
        v20 = *(result + 2);
      }
    }

    while (v20 != *(result + 3));
  }

  return result;
}

uint64_t Recognizer::seedOneBackward(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v8 = *a4;
  if (v8 >> 25 == 126)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*(*(**VocMgr::smpVocMgr + ((v8 >> 22) & 0x3F8)) + 48) + 608) + 2 * (v8 & 0xFFFFFF));
  }

  result = *(a2 + 8);
  if (a3 || (*(a1 + 304) == 1 ? (v11 = (*(result + 16) & 0xFE000000) == -67108864) : (v11 = 1), v11))
  {
    result = HmmNet::getNonSilOutPort(result, v9);
    v19 = result;
    v20 = 0;
  }

  else
  {
    v19 = **(result + 72);
    v20 = 1;
  }

  v12 = *(v19 + 8);
  if (*(a1 + 604) >= v12)
  {
    v13 = (*(**(a2 + 8) + 184))(*(a2 + 8));
    v14 = *(a1 + 612);
    v15 = v14;
    if (v20)
    {
      v15 = (*(**(a2 + 8) + 104))(*(a2 + 8));
    }

    v16 = *v19;
    v17 = *(a2 + 8);
    LOBYTE(v22[0]) = 0;
    v18 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v16, (v17 + 16), v15 != v14, v15, v14, v22);
    if (LOBYTE(v22[0]) == 1)
    {
      ++*(a1 + 1212);
    }

    v22[0] = &unk_2875254F8;
    v22[1] = a2;
    return Recognizer::seedOneFromPort(a1, v22, a3, v13 + v12, 0, 0, 0, 0, 0, v18, a4, v21, 20000);
  }

  return result;
}

uint64_t Recognizer::seedOneFromPort(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, unsigned int a10, uint64_t a11, int a12, int a13)
{
  result = (*(*a2 + 24))(a2);
  v21 = result;
  v22 = *(a1 + 600);
  if (a13 == 20000)
  {
    v23 = 0;
  }

  else
  {
    v23 = a13;
  }

  v24 = (a5 + a4 + a6 + a7 - a8 + v23);
  if (a13 != 20000)
  {
    v22 += *(a1 + 72);
  }

  if (*(a1 + 304) == 1)
  {
    v25 = a9;
    if (a9 == -1)
    {
      v22 = 5000;
LABEL_13:
      a4 = v24;
      goto LABEL_17;
    }

    v26 = *(a11 + 28);
    if (v26 == 20000)
    {
      if (!*(a1 + 165))
      {
        v25 = 0;
      }

      v22 -= v25;
      goto LABEL_13;
    }

    if (!*(a1 + 164))
    {
      v26 = 0;
    }

    a4 = v26 + v24;
    v22 -= a9;
  }

LABEL_17:
  if (a4 <= v22)
  {
    v27 = *(a11 + 4);
    v49 = *a11;
    v50 = v27;
    v51 = *(a11 + 8);
    if (v49 >> 25 == 126)
    {
      Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(a1 + 280) + 303024, &v49);
      if (!*Bucket || (v29 = *(*Bucket + 40)) == 0)
      {
        v30 = *(a1 + 280);
        if (*(a1 + 304))
        {
          active = Active::newActiveWordSilence(v30, &v49);
        }

        else
        {
          active = Active::newActiveWordNonAcoustic(v30, &v49);
        }

        v29 = active;
      }
    }

    else
    {
      if (*(a1 + 166) == 1)
      {
        HIWORD(v50) = a3;
      }

      v48 = 0xFFFFFFFE00000000;
      v32 = MergedActive::convertToMergedCWIDAC((a1 + 392), &v49, &v48);
      v33 = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(*(a1 + 280) + 303024, &v49);
      if (!*v33 || (v29 = *(*v33 + 40)) == 0)
      {
        v34 = *(a1 + 280);
        if (*(a1 + 304))
        {
          if (*(a1 + 312))
          {
            v35 = 0;
          }

          else
          {
            v35 = *(a1 + 25);
          }

          v36 = Active::newActiveWord(v34, &v49, a8, *(a1 + 76), v35 & 1);
        }

        else
        {
          v36 = Active::newActiveWordNonAcoustic(v34, &v49);
        }

        v29 = v36;
      }

      if (v32)
      {
        v37 = v21[3];
        v46 = (*v21 >> 25) | (v21[2] << 32);
        v47 = v37;
        MergedStateTransition::updateMergedStateTransition(*(v29 + 24), &v46, &v48);
        MaxEndTime = Constraint::getMaxEndTime(*(a1 + 2216), a11);
        v45 = *(v29 + 32);
        if (v45 <= MaxEndTime)
        {
          v45 = MaxEndTime;
        }

        *(v29 + 32) = v45;
        if (Constraint::getSuccessorRecursivePrefilteringAllowed(*(a1 + 2216), a11, v39, v40, v41, v42, v43, v44))
        {
          *(v29 + 36) = 1;
        }
      }
    }

    return (*(*v29 + 24))(v29, a3, v24, a10);
  }

  return result;
}

BOOL MergedActive::convertToMergedCWIDAC(MergedActive *a1, unsigned int *a2, unsigned int *a3)
{
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  result = MergedActive::isCWIDAllowMerge(a1, *a2);
  if (result)
  {
    v8 = *(*(**VocMgr::smpVocMgr + ((v6 >> 22) & 0x3F8)) + 56);
    v9 = a2[2];
    *a3 = v9;
    if (*(a1 + 128) == 1)
    {
      result = MergedActive::isStateAllowMerge(a1, v8, v9);
      if (result)
      {
        *(a2 + 2) = 0x3FFF;
        a2[2] = -1;
        result = 1;
      }
    }

    else
    {
      result = 0;
    }

    a3[1] = a2[3];
    if (*(a1 + 129) == 1)
    {
      a2[3] = -3;
      return 1;
    }
  }

  return result;
}

uint64_t Recognizer::seedFromOnePredToOnePhoneForward(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, unsigned int a6, unsigned int a7, uint64_t *a8)
{
  v8 = *(a8 + 2);
  if (v8 >= 1)
  {
    v11 = result;
    v12 = v8 + 1;
    v13 = 44 * v8;
    do
    {
      v14 = *a8;
      v15 = (*a8 + v13 - 44);
      if (*(v11 + 361) != 1 || (result = *(v11 + 2216), (*(result + 68) & 0xFFFFFFFD) != 0) || (result = Constraint::isPrecedingNonAcousticWordRequiredForState(result, (*a8 + v13 - 44)), (result & 1) == 0))
      {
        if (a6 == -2)
        {
          v16 = 0;
        }

        else
        {
          result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v11 + 2216), v15, *(v11 + 324) + a4);
          v16 = result;
        }

        if (a7 == -2 || (v18 = *v15, v18 >> 25 != 126) && (v19 = *(*(**VocMgr::smpVocMgr + ((v18 >> 22) & 0x3F8)) + 48), v20 = v18 & 0xFFFFFF, *(*(v19 + 32) + 2 * v20) == 1) && !*(*(v19 + 592) + 2 * v20))
        {
          v17 = 0;
        }

        else
        {
          result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v11 + 2216), v15, *(v11 + 324) + a5);
          v17 = result;
        }

        if ((v16 | v17))
        {
          result = SearchLMScorer::lmScoreNonSilCwidac(v11 + 624, v15, (v11 + 1056));
          v21 = result;
          if (v16)
          {
            result = Recognizer::seedOneFromPort(v11, a2, a3, a4, result, *(v14 + v13 - 18), *(v11 + 152), *(v11 + 48), *(v11 + 156), a6, v15, v22, 20000);
          }

          if (v17)
          {
            result = Recognizer::seedOneFromPort(v11, a2, 0, a5, v21, *(v14 + v13 - 18), *(v11 + 152), *(v11 + 48), *(v11 + 156), a7, v15, v22, 20000);
          }
        }
      }

      --v12;
      v13 -= 44;
    }

    while (v12 > 1);
  }

  return result;
}

uint64_t Recognizer::seedFromOnePredToOnePhoneWithNonAcousticWordForward(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, unsigned int a6, unsigned int a7, uint64_t *a8, int a9, int **a10)
{
  v10 = *(a8 + 2);
  if (v10 >= 1)
  {
    v12 = result;
    v13 = v10 + 1;
    v14 = 44 * v10;
    do
    {
      result = *(v12 + 2216);
      if ((*(result + 68) & 0xFFFFFFFD) == 0)
      {
        v15 = *a8;
        v16 = (*a8 + v14 - 44);
        result = Constraint::isPrecedingNonAcousticWordValidForState(result, v16, a9);
        if (result)
        {
          if (*(v15 + v14 - 24) != -83886084)
          {
            if (a6 == -2)
            {
              v17 = 0;
            }

            else
            {
              result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v12 + 2216), v16, *(v12 + 324) + a4);
              v17 = result;
            }

            if (a7 == -2)
            {
              v18 = 0;
            }

            else
            {
              result = Constraint::getCanSeedUsingLatticeTimeConstraintSeedThreshScore(*(v12 + 2216), v16, *(v12 + 324) + a5);
              v18 = result;
            }

            if ((v17 | v18))
            {
              v19 = SearchLMScorer::lmScoreNonSilCwidac(v12 + 624, v16, (v12 + 1056));
              result = *(v12 + 2216);
              if ((*(result + 68) & 0xFFFFFFFD) != 0 || (v20 = v19, result = Constraint::getWeightsForState(result, v16), v19 = v20, result == 0xFFFF))
              {
                v21 = *a10;
              }

              else
              {
                v21 = &(*a10)[result];
              }

              v22 = *v21;
              v23 = *(v12 + 68);
              if (v23 == -1 || v22 + v19 <= v23)
              {
                if (v17)
                {
                  v24 = v19;
                  result = Recognizer::seedOneFromPort(v12, a2, a3, a4, v19, *(v15 + v14 - 18), *(v12 + 152), *(v12 + 48), *(v12 + 156), a6, v16, v25, v22);
                  v19 = v24;
                }

                if (v18)
                {
                  result = Recognizer::seedOneFromPort(v12, a2, 0, a5, v19, *(v15 + v14 - 18), *(v12 + 152), *(v12 + 48), *(v12 + 156), a7, v16, v25, v22);
                }
              }
            }
          }
        }
      }

      --v13;
      v14 -= 44;
    }

    while (v13 > 1);
  }

  return result;
}

void *Recognizer::seedFromOnePredForward(uint64_t a1, uint64_t a2, int a3)
{
  v5 = VocMgr::smpVocMgr;
  v6 = (*(*a2 + 24))(a2);
  v8 = *v6;
  v7 = v6[1];
  v309 = *v6;
  v310 = v7;
  v311 = *(v6 + 2);
  v277 = *(a1 + 604);
  v281 = a2;
  v9 = (*(*a2 + 16))(a2);
  v10 = (*(**(v9 + 8) + 184))(*(v9 + 8));
  if (*(a1 + 312))
  {
    v264 = 0;
  }

  else
  {
    v264 = *(a1 + 25);
  }

  v11 = v8 & 0xFE000000;
  v12 = v8 & 0xFFFFFF;
  v13 = (v8 & 0xFFFFFF) == 0xFFFFF8 || (v8 & 0xFE000000) != -67108864;
  if (v11 == -67108864 || v12 == 16777208)
  {
    v269 = 0;
  }

  else
  {
    v15 = (v8 >> 22) & 0x3F8;
    v269 = *(*(*(*(**v5 + v15) + 48) + 608) + 2 * v12);
    v16 = *(*(**VocMgr::smpVocMgr + v15) + 48);
    if (*(*(v16 + 32) + 2 * v12) == 1)
    {
      v13 = 0;
      v17 = 0;
      v18 = 0;
      if (!*(*(v16 + 592) + 2 * v12))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  if (Constraint::getCanSeedFinalSilence(*(a1 + 2216), v6, *(a1 + 288) + *(a1 + 316)))
  {
    v18 = (v11 != -67108864) & *(a1 + 673);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  v260 = v17;
  v307 = 0;
  v308 = 0;
  v305 = 0x70000000FFFFFFFELL;
  v306 = 1879048192;
  v304 = 0;
  v19 = (a1 + 2288);
  *(a1 + 2296) = 0;
  v275 = a1;
  v266 = v10;
  v262 = (a1 + 2288);
  if (v277 >= a3)
  {
    v29 = *(a1 + 2216);
    if ((*(v29 + 68) & 0xFFFFFFFD) != 0)
    {
      SeededWeights = 0;
    }

    else
    {
      SeededWeights = Constraint::getSeededWeights(v29, v6, *(a1 + 288) + *(a1 + 316));
    }

    if (*(a1 + 304) == 1)
    {
      v302 = 0;
      v303 = 0;
      v30 = *(a1 + 544);
      v270 = v6;
      Legal = Constraint::getLegal(*(a1 + 2216), v6, *(a1 + 36), 1, &v304, *(a1 + 288) + *(a1 + 316), (a1 + 1232), a1 + 536, (a1 + 552), a1 + 2360, 0);
      v274 = (a1 + 536);
      v267 = v5;
      if (v8 == -50331650 && *(a1 + 2368))
      {
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v33 = (*(*v281 + 32))(v281, v269, *(a1 + 604));
          v34 = v33;
          if (v33)
          {
            break;
          }

          ++v32;
          v31 += 12;
          if (v32 >= *(a1 + 2368))
          {
            goto LABEL_39;
          }
        }

        if ((v264 & 1) != 0 && (*(*(v9 + 8) + 114) & 1) == 0)
        {
          v47 = -2;
        }

        else
        {
          v47 = *(v33 + 4);
        }

        v231 = *(v33 + 8);
        HIDWORD(v305) = v47;
        v232 = *v33;
        v233 = *(a1 + 612);
        LOBYTE(v291) = 0;
        v234 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v232, v6, 0, v233, v233, &v291);
        if (v291 == 1)
        {
          ++*(v275 + 1212);
        }

        v235 = (*(v275 + 2360) + v31);
        v236 = *v235;
        v237 = *(v235 + 2);
        v238 = *(v275 + 612);
        v239 = *(v275 + 2352);
        if (v239 == *(v275 + 2356))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v275 + 2344, 1, 1);
          v239 = *(v275 + 2352);
        }

        v240 = v266 + v231;
        v241 = *(v275 + 2344) + 28 * v239;
        *v241 = v236;
        *(v241 + 8) = v237;
        *(v241 + 12) = v266 + v231;
        *(v241 + 16) = v269;
        *(v241 + 20) = v234;
        *(v241 + 24) = v238;
        ++*(v275 + 2352);
        v242 = **(v275 + 256);
        v243 = *(v275 + 2300);
        if (v242 > v243)
        {
          DgnArray<RuleDesc>::reallocElts(v262, v242 - v243, 0);
        }

        v244 = *(v275 + 2296);
        if (v244 < v242)
        {
          v245 = v242 - v244;
          v246 = 12 * v244;
          do
          {
            v247 = *v262 + v246;
            *v247 = 0x70000000FFFFFFFELL;
            *(v247 + 8) = 1879048192;
            v246 += 12;
            --v245;
          }

          while (v245);
        }

        *(v275 + 2296) = v242;
        if (v242)
        {
          v248 = 0;
          do
          {
            v249 = *(v275 + 324) + v240;
            v250 = *(v34 + 4);
            if (*(*(v9 + 8) + 114))
            {
              v251 = *(v34 + 4);
            }

            else
            {
              v251 = -2;
            }

            if (v264)
            {
              v250 = v251;
            }

            v252 = (*(v275 + 2288) + v248);
            v252[1] = v250;
            v252[2] = v249;
            *v252 = v234;
            v248 += 12;
          }

          while (12 * v242 != v248);
        }

        Recognizer::dropCrumbs(v275, v270, a3, v266, &v305, v262);
        goto LABEL_346;
      }

LABEL_39:
      if (v13)
      {
        v300 = 0;
        v301 = 0;
        v298 = 0;
        v299 = 0;
        v296 = 0;
        v297 = 0;
        v295 = -2;
        v293 = 0;
        v294 = 0;
        (*(*v281 + 40))(v281, &v300, &v298, &v295, &v296, &v293);
        v35 = v295;
        v283 = v301;
        v36 = v267;
        v37 = v301 >= 1 && *v300 == -50331651;
        v39 = v6;
        if (v301 <= (v37 + 1))
        {
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v293);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v296);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v298);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v300);
LABEL_346:
          DgnIArray<Utterance *>::~DgnIArray(&v302);
          return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v307);
        }

        HIDWORD(v291) = 0x3FFF;
        v292 = xmmword_26286CC40;
        v258 = (*(*v281 + 32))(v281, 0, *(a1 + 604));
        v48 = v295;
        if (!*(a1 + 2300))
        {
          DgnArray<RuleDesc>::reallocElts(v262, 1, 0);
        }

        if (!*(a1 + 2296))
        {
          v49 = *v262;
          *v49 = 0x70000000FFFFFFFELL;
          *(v49 + 8) = 1879048192;
        }

        *(a1 + 2296) = 1;
        v50 = v37;
        v51 = (v283 - 2);
        v52 = v300;
        if (v51 > v37)
        {
          v53 = 0;
          v254 = *(*(**VocMgr::smpVocMgr + ((*(v300 + v37) >> 22) & 0x3F8)) + 48);
          v280 = -50331650;
          v40 = (a1 + 536);
          v256 = v50;
          while (1)
          {
            v54 = *(v298 + 4 * v51);
            *(a1 + 2296) = 0;
            if ((*(v300 + v51) & 0xFFFFFF) != 0xFFFFF9)
            {
              break;
            }

            --v51;
LABEL_90:
            if (v51 <= v50)
            {
              v52 = v300;
              v39 = v270;
              v36 = v267;
              v73 = v280;
              goto LABEL_94;
            }
          }

          LODWORD(v291) = *(v300 + v51);
          HIDWORD(v291) = 0x3FFF;
          v292 = xmmword_26286CC40;
          LODWORD(v292) = *((*(*v281 + 24))(v281) + 8);
          HIDWORD(v292) = *(v300 + v51) & 0xFE000000 | *(v293 + v51) & 0xFFFFFF;
          DWORD2(v292) = v280;
          v280 = *(v300 + v51);
          v55 = *(*(a1 + 328) + 4 * *(v298 + 4 * v51));
          LOBYTE(v289) = 0;
          v35 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v35, &v291, 0, v54 + 1, v54 + 1, &v289);
          if (v289 == 1)
          {
            ++*(a1 + 1212);
          }

          v56 = *(v296 + 4 * v51);
          v57 = *(v258 + 4);
          if (*(*(v9 + 8) + 114))
          {
            v58 = *(v258 + 4);
          }

          else
          {
            v58 = -2;
          }

          if (v264)
          {
            v59 = v58;
          }

          else
          {
            v59 = *(v258 + 4);
          }

          v60 = *(v300 + (v51 - 1)) & 0xFFFFFF;
          if (v60 == 16777209)
          {
            if (v51 < 2)
            {
              goto LABEL_78;
            }

            v61 = *(v300 + v51 - 2);
            if (v61 == -50331651)
            {
              goto LABEL_78;
            }

            v60 = v61 & 0xFFFFFF;
          }

          v53 = *(*(v254 + 592) + 2 * v60);
LABEL_78:
          v62 = v53 + 1;
          v63 = *(v275 + 2300);
          if (v63 <= v53)
          {
            DgnArray<RuleDesc>::reallocElts(v262, v62 - v63, 0);
          }

          v64 = *(v275 + 2296);
          if (v64 <= v53)
          {
            v65 = v53 - v64 + 1;
            v66 = 12 * v64;
            do
            {
              v67 = *v262 + v66;
              *v67 = 0x70000000FFFFFFFELL;
              *(v67 + 8) = 1879048192;
              v66 += 12;
              --v65;
            }

            while (v65);
          }

          v68 = v56 + v55;
          a1 = v275;
          *(v275 + 2296) = v62;
          v69 = (*(v275 + 2288) + 12 * v53);
          v69[1] = v59;
          v69[2] = v68;
          *v69 = v35;
          v70 = *(v298 + 4 * v51);
          v289 = 0;
          v290 = 0;
          v287 = 0;
          v288 = 0;
          v285 = 0;
          v286 = 0;
          CWIDCrumbBank::getFrameInfo(*(v275 + 368), 0, v70, &v289, &v287, &v285);
          if (v290)
          {
            v71 = 0;
            v72 = 0;
            while (!CWIDAC::operator==(v289 + v71, &v291) || CWIDCrumbBank::getHistory(*(v275 + 368), v70, v289 + v71, v53) != v35)
            {
              ++v72;
              v71 += 24;
              if (v72 >= v290)
              {
                goto LABEL_88;
              }
            }
          }

          else
          {
LABEL_88:
            CWIDCrumbBank::addCrumbWACSRecordEFst(*(v275 + 368), v70, &v291, *(v296 + 4 * v51) + v266, &v305, v262, v53);
          }

          DgnIArray<Utterance *>::~DgnIArray(&v285);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v287);
          DgnIArray<Utterance *>::~DgnIArray(&v289);
          --v51;
          v48 = v35;
          v40 = v274;
          v50 = v256;
          goto LABEL_90;
        }

        v73 = -50331650;
        v40 = (a1 + 536);
LABEL_94:
        v74 = *(v52 + v50);
        v19 = v262;
        if ((v74 & 0xFFFFFF) != 0xFFFFF9)
        {
          v75 = v39[2];
          v309 = v74;
          v310 = 0x3FFF;
          *&v311 = v75 | 0xFFFFFFFE00000000;
          *(&v311 + 1) = v73 | 0xFAFFFFFC00000000;
        }

        v76 = **(*((*(*v281 + 16))(v281) + 8) + 72);
        *v76 = v48;
        v76[1] = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v293);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v296);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v298);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v300);
      }

      else
      {
        v283 = 0;
        v39 = v6;
        v36 = v267;
        v40 = (a1 + 536);
      }

      if (*(a1 + 361) == 1 && (v77 = *(a1 + 2216), (*(v77 + 68) & 0xFFFFFFFD) == 0) && ((v223 = *v39, v223 >> 25 == 126) || (v224 = *(*(**VocMgr::smpVocMgr + ((v223 >> 22) & 0x3F8)) + 48), v225 = v223 & 0xFFFFFF, *(*(v224 + 32) + 2 * v225) != 1) || *(*(v224 + 592) + 2 * v225)))
      {
        SeededPrecedingNonAcousticWords = Constraint::getSeededPrecedingNonAcousticWords(v77, v39);
      }

      else
      {
        SeededPrecedingNonAcousticWords = 0;
      }

      if (v30 < *(a1 + 544))
      {
        do
        {
          if ((PhnMgr::operator==(*(a1 + 256), *(**v36 + 8 * *(*(a1 + 536) + 2 * v30)) + 184) & 1) == 0)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/recog.cpp", 5223, "kernel/recog", 4, "%u", v78, v79, *(*v40 + 2 * v30));
          }

          ++v30;
        }

        while (v30 < *(a1 + 544));
      }

      DgnIArray<Utterance *>::~DgnIArray(&v302);
      v10 = v266;
      v25 = Legal;
    }

    else
    {
      v25 = Constraint::getLegal(*(a1 + 2216), v6, 0, 0, &v304, *(a1 + 288) + *(a1 + 316), (a1 + 1232), 0, 0, 0, 0);
      SeededPrecedingNonAcousticWords = 0;
      v283 = 0;
    }

    v80 = *(v25 + 8);
    if (v80)
    {
LABEL_109:
      v28 = v80;
      v83 = *(a1 + 2300);
      if (v28 > v83)
      {
        DgnArray<RuleDesc>::reallocElts(v19, v28 - v83, 0);
      }

      v24 = SeededPrecedingNonAcousticWords;
      v21 = v9;
      v84 = *(a1 + 2296);
      if (v84 < v28)
      {
        v85 = v28 - v84;
        v86 = 12 * v84;
        do
        {
          v87 = *v19 + v86;
          *v87 = 0x70000000FFFFFFFELL;
          *(v87 + 8) = 1879048192;
          v86 += 12;
          --v85;
        }

        while (v85);
      }

      *(a1 + 2296) = v28;
      v26 = (a1 + 624);
      v27 = (a1 + 1056);
      v291 = (a1 + 624);
      LOBYTE(v292) = 1;
      v23 = v283;
      goto LABEL_115;
    }

    v81 = v25;
    if (*(v25 + 12))
    {
      goto LABEL_107;
    }

    DgnArray<DgnPrimArray<double>>::reallocElts(v25, 1, 0);
    v94 = *(v25 + 8);
    if (v94 > 1)
    {
      if (v94 >= 2)
      {
        v95 = 16 * v94 - 16;
        do
        {
          --v94;
          DgnIArray<Utterance *>::~DgnIArray(*v81 + v95);
          v95 -= 16;
        }

        while (v94 > 1);
      }

      goto LABEL_108;
    }

    if (!v94)
    {
LABEL_107:
      v82 = *v25;
      *v82 = 0;
      v82[1] = 0;
    }

LABEL_108:
    LOWORD(v80) = 1;
    *(v81 + 8) = 1;
    v25 = v81;
    goto LABEL_109;
  }

  if (v18 && (v20 = *(a1 + 2216), (*(v20 + 68) & 0xFFFFFFFD) == 0))
  {
    WeightsForState = Constraint::getWeightsForState(v20, v6);
    if (WeightsForState != 0xFFFF)
    {
      v42 = *v6 >> 25;
      v43 = v42 + 1;
      if (HIDWORD(v308) <= v42)
      {
        v291 = 0;
        HIDWORD(v308) = realloc_array(v307, &v291, 16 * v43, 16 * v308, 16 * v308, 1) >> 4;
        v307 = v291;
      }

      v44 = v9;
      v45 = v308;
      if (v308 <= v43)
      {
        if (v308 <= v42)
        {
          v226 = v42 - v308 + 1;
          v227 = 16 * v308;
          do
          {
            v228 = (v307 + v227);
            *v228 = 0;
            v228[1] = 0;
            v227 += 16;
            --v226;
          }

          while (v226);
        }
      }

      else if (v308 > v43)
      {
        v46 = 16 * v308 - 16;
        do
        {
          --v45;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v307 + v46);
          v46 -= 16;
        }

        while (v45 > v43);
      }

      LODWORD(v308) = v42 + 1;
      v229 = (v307 + 16 * v42);
      v230 = *(v229 + 2);
      v9 = v44;
      v19 = (a1 + 2288);
      if (v230 == *(v229 + 3))
      {
        DgnPrimArray<unsigned int>::reallocElts(v307 + 16 * v42, 1, 1);
        v230 = *(v229 + 2);
      }

      *(*v229 + 4 * v230) = WeightsForState;
      ++*(v229 + 2);
    }

    SeededWeights = &v307;
  }

  else
  {
    SeededWeights = 0;
  }

  if (!*(a1 + 2300))
  {
    DgnArray<RuleDesc>::reallocElts(v19, 1, 0);
  }

  v21 = v9;
  if (!*(a1 + 2296))
  {
    v22 = *v19;
    *v22 = 0x70000000FFFFFFFELL;
    *(v22 + 8) = 1879048192;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v282 = 0;
  v273 = 0;
  v279 = 0;
  v257 = 0;
  *(a1 + 2296) = 1;
  v26 = (a1 + 624);
  v291 = (a1 + 624);
  v27 = (a1 + 1056);
  LOBYTE(v292) = v18;
  LODWORD(v28) = 0xFFFF;
  if (v18)
  {
LABEL_115:
    v257 = 1;
    v88 = v27;
    SearchLMScorer::setContext(v26, 0xFAFFFFFC, &v309, v25, 1, SeededWeights, v27, 0, 0xFAFFFFFC, 0xFAFFFFFC);
    v27 = v88;
    v282 = v23;
    v273 = v24;
    v279 = v25;
  }

  v151 = v277 < a3;
  v263 = v28;
  v276 = v27;
  v278 = v26;
  if (v151)
  {
    v271 = 0;
    v268 = 20000;
    v89 = v21;
    goto LABEL_160;
  }

  v271 = 0;
  v268 = 20000;
  v89 = v21;
  if (*(a1 + 304) == 1 && v269)
  {
    v90 = v27;
    v91 = (*(*v281 + 32))(v281, 0xFFFFLL, *(a1 + 604));
    if (v91)
    {
      if (v264)
      {
        v92 = *(v21 + 8);
        if (v92[114] == 1)
        {
          v93 = *(v91 + 4);
        }

        else
        {
          v93 = -2;
        }
      }

      else
      {
        v93 = *(v91 + 4);
        v92 = *(v21 + 8);
      }

      v96 = *(v91 + 8);
      HIDWORD(v305) = v93;
      v97 = *v91;
      v98 = (*(*v92 + 104))(v92);
      v99 = *(a1 + 612);
      LOBYTE(v302) = 0;
      v100 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v97, &v309, 1, v98, v99, &v302);
      v268 = v10 + v96;
      if (v302 == 1)
      {
        ++*(a1 + 1212);
      }

      LODWORD(v305) = v100;
      v271 = 1;
    }

    else
    {
      v271 = 0;
      v268 = 20000;
    }

    v27 = v90;
  }

  if (v28)
  {
    v101 = v89;
    v102 = 0;
    v103 = 4;
    v104 = 8;
    v105 = v28;
    while (1)
    {
      v106 = (*v279 + v104);
      v108 = *v106;
      v107 = (v106 - 2);
      if (!v108 && !v282 && (v102 != 0) | (*(a1 + 304) ^ 1) & 1)
      {
        goto LABEL_158;
      }

      v109 = (*(*v281 + 32))(v281, v102, *(a1 + 604));
      v110 = v109;
      if (v109)
      {
        v111 = *(v109 + 8);
        v112 = *v109;
        v113 = *(a1 + 612);
        LOBYTE(v302) = 0;
        v114 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v112, &v309, 0, v113, v113, &v302);
        v115 = v114;
        if (v302 == 1)
        {
          ++*(a1 + 1212);
        }

        v116 = v266 + v111;
        v117 = *(a1 + 324) + v266 + v111;
        v118 = *(v110 + 4);
        if (*(*(v101 + 8) + 114))
        {
          v119 = *(v110 + 4);
        }

        else
        {
          v119 = -2;
        }

        if (v264)
        {
          v118 = v119;
        }

        v120 = (*(a1 + 2288) + v103);
        *v120 = v118;
        v120[1] = v117;
        *(v120 - 1) = v114;
        if (v114 != -2)
        {
          v271 = 1;
          v121 = v305;
          goto LABEL_157;
        }

        v271 = 1;
      }

      else
      {
        v116 = 20000;
      }

      v121 = v305;
      if (v305 != -2)
      {
        v115 = -2;
LABEL_157:
        Recognizer::seedFromOnePredToOnePhoneForward(a1, v281, v269, v116, v268, v115, v121, v107);
      }

LABEL_158:
      ++v102;
      v103 += 12;
      v104 += 16;
      if (v105 == v102)
      {
        v10 = v266;
        v89 = v101;
        v19 = v262;
        v27 = v276;
        v26 = v278;
        break;
      }
    }
  }

LABEL_160:
  if (v260)
  {
    v122 = v27;
    v123 = 600;
    if (*(a1 + 24))
    {
      v123 = 604;
    }

    v124 = (*(*v281 + 32))(v281, 0, *(a1 + v123));
    v125 = v124;
    if (v124)
    {
      v126 = *(v124 + 8);
      v127 = *v124;
      v128 = *(a1 + 612);
      LOBYTE(v302) = 0;
      v129 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v127, &v309, 0, v128, v128, &v302);
      v130 = v129;
      v131 = v10 + v126;
      if (v302 == 1)
      {
        ++*(a1 + 1212);
      }

      v132 = *(a1 + 324) + v131;
      v133 = *(v125 + 4);
      if (*(*(v89 + 8) + 114))
      {
        v134 = *(v125 + 4);
      }

      else
      {
        v134 = -2;
      }

      if (v264)
      {
        v133 = v134;
      }

      v135 = *(a1 + 2288);
      v135[1] = v133;
      v135[2] = v132;
      *v135 = v129;
      if (v257)
      {
        v136 = SearchLMScorer::lmScoreFinalSilence(v26, v122);
      }

      else
      {
        v136 = SearchLMScorer::lmScoreFinalSilenceWithoutActualLM(v26, 0xFAFFFFFC, &v309);
      }

      Recognizer::seedOneFromPort(a1, v281, v269, v131, v136, 0, 0, 0, *(a1 + 160), v130, a1 + 832, v253, 20000);
      v271 = 1;
    }
  }

  if (!v273 || !*(v273 + 8))
  {
    v167 = v268;
    goto LABEL_306;
  }

  v302 = 0;
  v303 = 0;
  v284 = *(a1 + 64) + *(a1 + 604);
  v300 = 0;
  v301 = 0;
  v298 = 0;
  v299 = 0;
  v296 = 0;
  v297 = 0;
  v293 = 0;
  v294 = 0;
  v289 = 0;
  v290 = 0;
  v259 = v89;
  if (*(SeededWeights + 2))
  {
    v137 = v273;
    v138 = *(v273 + 8);
    if (v138 >= 1)
    {
      do
      {
        v139 = v138--;
        v140 = *(*v137 + 4 * v138) >> 25;
        if (v140 < *(SeededWeights + 2))
        {
          v141 = *SeededWeights + 16 * v140;
          v142 = *(v141 + 8);
          if (v142)
          {
            LODWORD(v301) = 0;
            v143 = v293;
            v261 = v139;
            if (!HIDWORD(v294))
            {
              v287 = 0;
              HIDWORD(v294) = realloc_array(v293, &v287, 4uLL, 4 * v294, 4 * v294, 1) >> 2;
              v143 = v287;
              v293 = v287;
            }

            v144 = 0;
            v145 = 0;
            LODWORD(v294) = 1;
            v146 = 20000;
            *v143 = 20000;
            do
            {
              v147 = *(*v141 + 4 * v144);
              v148 = SearchLMScorer::lmScoreNonAcousticWord(v278, *(*v273 + 4 * v138), v147, v276);
              v149 = v148;
              v150 = *(v275 + 60);
              v151 = v150 == -1 || v148 <= v150;
              v153 = v151 && v148 + a3 <= v284;
              v154 = v301;
              if (v301 == HIDWORD(v301))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v300, 1, 1);
                v154 = v301;
              }

              *(v300 + v154) = v147;
              v155 = v301;
              LODWORD(v301) = v301 + 1;
              if (v146 >= v149)
              {
                v156 = v149;
              }

              else
              {
                v156 = v146;
              }

              if (v155)
              {
                v146 = v156;
              }

              else
              {
                v146 = v149;
              }

              if (v147 == 0xFFFF)
              {
                v157 = v293;
              }

              else
              {
                v158 = v294;
                if (v294 <= v147)
                {
                  do
                  {
                    if (v158 == HIDWORD(v294))
                    {
                      DgnPrimArray<unsigned int>::reallocElts(&v293, 1, 1);
                      v158 = v294;
                    }

                    v159 = v293;
                    *(v293 + v158) = 20000;
                    v158 = v294 + 1;
                    LODWORD(v294) = v158;
                  }

                  while (v158 <= v147);
                }

                else
                {
                  v159 = v293;
                }

                v157 = v159 + v147;
              }

              v145 |= v153;
              *v157 = v149;
              ++v144;
            }

            while (v144 != v142);
            a1 = v275;
            v139 = v261;
            if (v145)
            {
              v160 = v299;
              if (v299 == HIDWORD(v299))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v298, 1, 1);
                v160 = v299;
              }

              v161 = (v298 + 16 * v160);
              *v161 = 0;
              v161[1] = 0;
              DgnPrimArray<int>::copyArraySlice(v161, &v300, 0, v301);
              LODWORD(v299) = v299 + 1;
              v162 = v297;
              if (v297 == HIDWORD(v297))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v296, 1, 1);
                v162 = v297;
              }

              *(v296 + 4 * v162) = v146;
              LODWORD(v297) = v297 + 1;
              v163 = v290;
              if (v290 == HIDWORD(v290))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v289, 1, 1);
                v163 = v290;
              }

              v164 = (v289 + 16 * v163);
              *v164 = 0;
              v164[1] = 0;
              DgnPrimArray<int>::copyArraySlice(v164, &v293, 0, v294);
              LODWORD(v290) = v290 + 1;
              v165 = *(*v273 + 4 * v138);
              v166 = v303;
              if (v303 == HIDWORD(v303))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v302, 1, 1);
                v166 = v303;
              }

              *(v302 + 4 * v166) = v165;
              LODWORD(v303) = v303 + 1;
            }
          }
        }

        v137 = v273;
      }

      while (v139 > 1);
    }
  }

  else
  {
    v287 = 0;
    v168 = realloc_array(0, &v287, 4uLL, 0, 0, 1);
    v293 = v287;
    LODWORD(v294) = 1;
    HIDWORD(v294) = v168 >> 2;
    if (!HIDWORD(v301))
    {
      v287 = 0;
      HIDWORD(v301) = realloc_array(v300, &v287, 4uLL, 4 * v301, 4 * v301, 1) >> 2;
      v300 = v287;
    }

    LODWORD(v301) = 1;
    v169 = *(v273 + 8);
    if (v169 >= 1)
    {
      v170 = v169 - 1;
      do
      {
        v171 = SearchLMScorer::lmScoreNonAcousticWord(v278, *(*v273 + 4 * v170), 0xFFFFLL, v276);
        v172 = v171;
        v173 = *(a1 + 60);
        if ((v171 <= v173 || v173 == -1) && v171 + a3 <= v284)
        {
          *v300 = 0xFFFF;
          v176 = v299;
          if (v299 == HIDWORD(v299))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v298, 1, 1);
            v176 = v299;
          }

          v177 = (v298 + 16 * v176);
          *v177 = 0;
          v177[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v177, &v300, 0, v301);
          LODWORD(v299) = v299 + 1;
          v178 = v297;
          if (v297 == HIDWORD(v297))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v296, 1, 1);
            v178 = v297;
          }

          *(v296 + 4 * v178) = v172;
          LODWORD(v297) = v297 + 1;
          *v293 = v172;
          v179 = v290;
          if (v290 == HIDWORD(v290))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v289, 1, 1);
            v179 = v290;
          }

          v180 = (v289 + 16 * v179);
          *v180 = 0;
          v180[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v180, &v293, 0, v294);
          LODWORD(v290) = v290 + 1;
          v181 = *(*v273 + 4 * v170);
          v182 = v303;
          if (v303 == HIDWORD(v303))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v302, 1, 1);
            v182 = v303;
          }

          *(v302 + 4 * v182) = v181;
          LODWORD(v303) = v303 + 1;
        }

        v183 = v170-- + 1;
      }

      while (v183 > 1);
    }
  }

  v184 = v303;
  if (v303 >= 1)
  {
    v10 = v266;
    if (v292)
    {
      SearchLMScorer::unsetContext(v291);
      v185 = v263;
      v184 = v303;
      LOBYTE(v292) = 0;
      v287 = 0;
      v288 = 0;
      if (v303 < 1)
      {
LABEL_304:
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v287);
        goto LABEL_305;
      }
    }

    else
    {
      LOBYTE(v292) = 0;
      v287 = 0;
      v288 = 0;
      v185 = v263;
    }

    v186 = v184;
    v187 = v185;
    while (1)
    {
      v188 = v186 - 1;
      v189 = *(v302 + 4 * (v186 - 1));
      if (v269 && (v190 = (*(*v281 + 32))(v281, 0xFFFFLL, (v284 - *(v296 + 4 * v188)))) != 0)
      {
        if (v305 == -2)
        {
          if (v264)
          {
            v191 = *(v259 + 8);
            if (v191[114] == 1)
            {
              v192 = *(v190 + 4);
            }

            else
            {
              v192 = -2;
            }
          }

          else
          {
            v192 = *(v190 + 4);
            v191 = *(v259 + 8);
          }

          v194 = *(v190 + 8);
          HIDWORD(v305) = v192;
          v195 = *v190;
          v196 = (*(*v191 + 104))(v191);
          v197 = *(a1 + 612);
          LOBYTE(v285) = 0;
          v198 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v195, &v309, 1, v196, v197, &v285);
          if (v285 == 1)
          {
            ++*(a1 + 1212);
          }

          v268 = v10 + v194;
          LODWORD(v305) = v198;
        }

        v193 = 1;
        v271 = 1;
      }

      else
      {
        v193 = 0;
      }

      v199 = (v298 + 16 * v188);
      if (*(v199 + 2) != 1)
      {
        break;
      }

      v200 = **v199;
      v201 = v288;
      if (v200 != 0xFFFF)
      {
        goto LABEL_272;
      }

      if (v288 >= 1)
      {
        v202 = 16 * v288 - 16;
        do
        {
          DgnPrimArray<unsigned int>::~DgnPrimArray(v287 + v202);
          v202 -= 16;
        }

        while (v202 != -16);
      }

      LODWORD(v288) = 0;
LABEL_285:
      v285 = v278;
      LOBYTE(v286) = 1;
      SearchLMScorer::setContext(v278, 0xFAFFFFFC, &v309, v279, 1, &v287, v276, 1, v189, 0xFAFFFFFC);
      if (v263)
      {
        v210 = 0;
        v211 = 8;
        do
        {
          if (v210)
          {
            v212 = (*v279 + v211);
            v214 = *v212;
            v213 = (v212 - 2);
            if (v214)
            {
              v215 = (*(*v281 + 32))(v281, v210, (v284 - *(v296 + 4 * v188)));
              if (v215)
              {
                v216 = *(v215 + 8);
                v217 = *v215;
                v218 = *(a1 + 612);
                LOBYTE(v295) = 0;
                v219 = HistoryMgr::extendHistory(*(a1 + 280) + 72, v217, &v309, 0, v218, v218, &v295);
                if (v295 == 1)
                {
                  ++*(a1 + 1212);
                }

                v220 = v10 + v216;
                v271 = 1;
              }

              else
              {
                v219 = -2;
                v220 = 20000;
              }

              if (((v219 == -2) & ~v193) == 0)
              {
                if (v193)
                {
                  v221 = v305;
                }

                else
                {
                  v221 = -2;
                }

                Recognizer::seedFromOnePredToOnePhoneWithNonAcousticWordForward(a1, v281, v269, v220, v268, v219, v221, v213, *(v302 + 4 * v188), (v289 + 16 * v188));
              }
            }
          }

          ++v210;
          v211 += 16;
        }

        while (v187 != v210);
      }

      if (v286 == 1)
      {
        SearchLMScorer::unsetContext(v285);
      }

      v151 = v186-- <= 1;
      if (v151)
      {
        goto LABEL_304;
      }
    }

    v201 = v288;
LABEL_272:
    if (v201)
    {
      *(v287 + 4 * v201 - 2) = 0;
    }

    v203 = v189 >> 25;
    v204 = (v189 >> 25) + 1;
    if (HIDWORD(v288) <= (v189 >> 25))
    {
      v285 = 0;
      HIDWORD(v288) = realloc_array(v287, &v285, 16 * v204, 16 * v201, 16 * v201, 1) >> 4;
      v287 = v285;
      v201 = v288;
    }

    if (v201 <= v204)
    {
      if (v201 <= v203)
      {
        v207 = v203 - v201 + 1;
        v208 = 16 * v201;
        do
        {
          v209 = v287 + v208;
          *v209 = 0;
          v209[1] = 0;
          v208 += 16;
          --v207;
        }

        while (v207);
      }
    }

    else if (v201 > v204)
    {
      v205 = v201;
      v206 = 16 * v201 - 16;
      do
      {
        --v205;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v287 + v206);
        v206 -= 16;
      }

      while (v205 > v204);
    }

    LODWORD(v288) = (v189 >> 25) + 1;
    DgnPrimArray<int>::copyArraySlice(v287 + 16 * v203, (v298 + 16 * v188), 0, *(v298 + 16 * v188 + 8));
    a1 = v275;
    v10 = v266;
    goto LABEL_285;
  }

  LOWORD(v10) = v266;
LABEL_305:
  v19 = v262;
  v167 = v268;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v289);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v293);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v296);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v298);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v300);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v302);
LABEL_306:
  if ((v271 & 1) != 0 && *(a1 + 312) != 3)
  {
    if (v167 != 20000)
    {
      v306 = *(a1 + 324) + v167;
    }

    Recognizer::dropCrumbs(a1, &v309, a3, v10, &v305, v19);
  }

  if (v292 == 1)
  {
    SearchLMScorer::unsetContext(v291);
  }

  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v307);
}

void sub_2627B767C(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v1 - 184);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 - 144);
  _Unwind_Resume(a1);
}

uint64_t Recognizer::dropCrumbs(uint64_t a1, unsigned int *a2, __int16 a3, __int16 a4, _DWORD *a5, uint64_t *a6)
{
  v7 = *a2;
  if (v7 >> 25 == 126)
  {
    v8 = *(a1 + 368);
    v9 = *(a1 + 608);
    return CWIDCrumbBank::addCrumbWACSRecord(v8, v9, a2, a4 + a3, a5, a6);
  }

  v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v7 >> 22) & 0x3F8)) + 56) + 528) + 2 * a2[2]);
  v8 = *(a1 + 368);
  v9 = *(a1 + 608);
  if (v10 == 127)
  {
    return CWIDCrumbBank::addCrumbWACSRecord(v8, v9, a2, a4 + a3, a5, a6);
  }

  return CWIDCrumbBank::addCrumbWACSRecordEFst(*(a1 + 368), v9, a2, a4 + a3, a5, a6, 0xFFFFu);
}

uint64_t Recognizer::doFinalSilForward(Recognizer *this)
{
  v2 = *(this + 35);
  v18 = 0x3FFFFCFFFFFDLL;
  v19 = xmmword_26286CC40;
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v2 + 303024, &v18);
  if (*result)
  {
    v4 = *(*result + 40);
    if (v4)
    {
      result = *(v4 + 8);
      if (*(result + 104) || *(result + 112) == 1)
      {
        result = HmmNet::getNonSilOutPort(result, 0);
        v5 = result;
        v6 = 0;
        v7 = *(this + 78);
        if (!v7)
        {
          v6 = *(this + 25);
        }

        v8 = *(result + 8);
        if ((*(this + 304) & 1) == 0)
        {
          v18 = &unk_2875254F8;
          *&v19 = v4;
          result = Recognizer::seedOneFromPort(this, &v18, 0, v8, 0, 0, 0, 0, 0, *result, this + 832, v17, 20000);
          v7 = *(this + 78);
        }

        if (v7 != 3)
        {
          v9 = *v5;
          v10 = *(v4 + 8);
          v11 = *(this + 153);
          LOBYTE(v18) = 0;
          v12 = HistoryMgr::extendHistory(*(this + 35) + 72, v9, (v10 + 16), 0, v11, v11, &v18);
          if (v18 == 1)
          {
            ++*(this + 303);
          }

          v13 = *(this + 81) + v8;
          *(this + 574) = 0;
          if (*(this + 575) || (DgnArray<RuleDesc>::reallocElts(this + 2288, 1, 0), !*(this + 574)))
          {
            v14 = *(this + 286);
            *v14 = 0x70000000FFFFFFFELL;
            *(v14 + 8) = 1879048192;
          }

          *(this + 574) = 1;
          v15 = v5[1];
          if (v6)
          {
            v15 = -2;
          }

          v16 = *(this + 286);
          v16[1] = v15;
          v16[2] = v13;
          *v16 = v12;
          return CWIDCrumbBank::addFinalSilHABS(*(this + 46), *(this + 152), *(v4 + 8) + 16, v12, v13);
        }
      }
    }
  }

  return result;
}

void Recognizer::doForward(uint64_t a1, uint64_t a2)
{
  DgnDelete<RecogGermIterator>(*(a1 + 376));
  *(a1 + 376) = 0;
  if (a2)
  {
    v9 = MemChunkAlloc(0x30uLL, 0);
    *(v9 + 2) = 0;
    *(v9 + 32) = 0;
    v9[3] = 0;
    *v9 = &unk_287525768;
    v9[5] = a2;
    *(v9 + 3) = *(a2 + 8);
    *(a1 + 376) = v9;
    v10 = *(a1 + 2216);
  }

  else
  {
    v10 = *(a1 + 2216);
    v9 = 0;
  }

  Constraint::prunePreList(v10, v9, 0, v4, v5, v6, v7, v8);
  v11 = *(a1 + 604);
  v12 = v11;
  if ((*(a1 + 24) & 1) == 0)
  {
    v12 = *(a1 + 600);
  }

  v13 = *(a1 + 392);
  if (v13)
  {
    *(a1 + 408) = 0;
    *(a1 + 416) = 1;
  }

  v14 = *(a1 + 280) + 303104;
  v15 = *(*(a1 + 280) + 303248);
  v16 = (v15 - 1);
  if (v15 - 1 >= 0)
  {
    do
    {
      v17 = *(*(v14 + 136) + 8 * v16);
      v18 = *(v17 + 1);
      v19 = *(v18 + 108);
      if (*(v18 + 104) || *(v18 + 112) == 1)
      {
        v20 = *(v18 + 16) == -50331651 || v12 < v19;
        if (!v20)
        {
          if (*(v18 + 24) == -1 || *(v18 + 28) == -3)
          {
            MergedActive::add(a1 + 392, v17);
          }

          else
          {
            v30[0] = &unk_2875254F8;
            v30[1] = v17;
            Recognizer::seedFromOnePredForward(a1, v30, v19);
          }

          if (v11 >= v19)
          {
            ++*(a1 + 1600);
          }
        }
      }

      v20 = v16-- < 1;
    }

    while (!v20);
    v13 = *(a1 + 392);
  }

  if (v13)
  {
    *(a1 + 416) = 2;
    v21 = *(a1 + 408);
    if (!v21)
    {
      goto LABEL_35;
    }

    for (i = 0; i != v21; ++i)
    {
      v23 = MergedActive::processMergedWord((a1 + 392), i, v12);
      v24 = *(v23 + 24);
      if (v24 >= 1)
      {
        v25 = v23;
        v26 = v24 - 1;
        do
        {
          v27 = *(v25 + 16);
          if (*(v27 + 2 * v26) != 20000)
          {
            *(v25 + 88) = v26;
            v28 = *(*(v25 + 8) + 24);
            *(v25 + 68) = 0x3FFF;
            *(v25 + 72) = *(*v28 + 8 * v26);
            Recognizer::seedFromOnePredForward(a1, v25, *(v27 + 2 * v26));
          }

          v29 = v26-- + 1;
        }

        while (v29 > 1);
      }
    }

    if (*(a1 + 392))
    {
LABEL_35:
      *(a1 + 416) = 0;
    }
  }
}

unint64_t MergedActive::add(unint64_t this, ActiveWord *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4 == *(this + 20))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this + 8, 1, 1);
    v4 = *(v3 + 16);
  }

  *(*(v3 + 8) + 8 * v4) = a2;
  *(v3 + 16) = v4 + 1;
  return this;
}

uint64_t MergedActive::processMergedWord(MergedActive *this, unsigned int a2, int a3)
{
  v6 = *(*(*(this + 1) + 8 * a2) + 8);
  v7 = (*(*v6 + 192))(v6);
  SeedMergedActiveWord::processMergedWord((this + 32), *(*(this + 1) + 8 * a2), *this, v7, a3);
  return this + 32;
}

uint64_t Recognizer::setConstraint(Constraint **this, Constraint *a2)
{
  result = DgnDelete<Constraint>(this[277]);
  this[277] = a2;
  if (a2)
  {
    result = Constraint::setupConstraint(a2);
    v5 = *(this + 168) == 1 && (*(this[277] + 17) & 0xFFFFFFFD) == 0;
    v7 = *(this + 169) == 1 && (v6 = this[277], (*(v6 + 17) & 0xFFFFFFFD) == 0) && *(v6 + 27) != 0;
    if (v5 || v7)
    {
      result = MergedActive::initMergedActive((this + 49), this[35] + 72, v5, v7);
    }
  }

  *(this[35] + 37875) = this[277];
  return result;
}

uint64_t Recognizer::addCrumbsToPrefilterResult(CWIDCrumbBank **this, char a2, const PrefilterResult *a3, unsigned int a4, PrefilterResult *a5)
{
  result = CWIDCrumbBank::getLastFrame(this[46]);
  if ((a2 & 1) == 0 && (this[288] & 1) == 0)
  {
    v9 = result + 1;
    if (result != -1)
    {
      if ((*a5 & 1) == 0 && !*(a5 + 4))
      {
        PrefilterResult::initEmpty(a5, v9);
      }

      v47 = 0;
      v48 = 0;
      v46[0] = 0;
      v46[1] = 0;
      v45[0] = 0;
      v45[1] = 0;
      if ((v9 & 0x80000000) == 0)
      {
        v42 = a4 + 1;
        v10 = v9;
        do
        {
          v41 = v10;
          CWIDCrumbBank::getFrameInfo(this[46], 0, v10, &v47, v46, v45);
          if (v48)
          {
            v11 = 0;
            do
            {
              v12 = *(v47 + 24 * v11);
              if ((v12 + 0x8000000) >> 25 >= 5)
              {
                v13 = **(v45[0] + 24 * v11 + 16);
                if (v13 != -2)
                {
                  v31 = *(this[35] + 10);
                  v32 = (v31 + 36 * v13);
                  if (*v32 == -50331650 || (v33 = v32[8], v33 == -2))
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = *(v31 + 36 * v33 + 28);
                  }

                  PrefilterResult::addEntry(a5, v34, *(v47 + 24 * v11), 20000);
                  v35 = v42 + v34;
                  if (v34 >= a4)
                  {
                    v36 = v34 - a4;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (v35 >= v9)
                  {
                    v37 = v9;
                  }

                  else
                  {
                    v37 = v35;
                  }

                  while (v36 < v37)
                  {
                    if (a3)
                    {
                      GermsForFrame = PrefilterResult::getGermsForFrame(a3, v36);
                      v39 = *(GermsForFrame + 8);
                      if (v39)
                      {
                        v40 = (*GermsForFrame + 4);
                        while (*(v40 - 1) != v12)
                        {
                          v40 += 4;
                          if (!--v39)
                          {
                            goto LABEL_67;
                          }
                        }

                        PrefilterResult::addEntry(a5, v36, v12, *v40);
                      }
                    }

                    else
                    {
                      PrefilterResult::addEntry(a5, v36, v12, 20000);
                    }

LABEL_67:
                    ++v36;
                  }
                }

                v14 = v45[0];
                v15 = *(v45[0] + 24 * v11);
                if (v15)
                {
                  v16 = 0;
                  do
                  {
                    v17 = *(v15 + 8);
                    v18 = *(v14 + 24 * v11 + 16);
                    if (v18)
                    {
                      v19 = (v17 + 1);
                    }

                    else
                    {
                      v19 = v17;
                    }

                    if (v16 >= v19)
                    {
                      break;
                    }

                    if (v16 != v17)
                    {
                      v18 = (*v15 + 12 * v16);
                    }

                    if (v18)
                    {
                      if (v18[2] != 1879048192)
                      {
                        v20 = *v18;
                        if (v20 != -2)
                        {
                          v21 = *(this[35] + 10);
                          v22 = (v21 + 36 * v20);
                          if (*v22 == -50331650 || (v23 = v22[8], v23 == -2))
                          {
                            v24 = 0;
                          }

                          else
                          {
                            v24 = *(v21 + 36 * v23 + 28);
                          }

                          PrefilterResult::addEntry(a5, v24, v12, 20000);
                          v25 = v42 + v24;
                          if (v24 >= a4)
                          {
                            v26 = v24 - a4;
                          }

                          else
                          {
                            v26 = 0;
                          }

                          if (v25 >= v9)
                          {
                            v27 = v9;
                          }

                          else
                          {
                            v27 = v25;
                          }

                          while (v26 < v27)
                          {
                            if (a3)
                            {
                              v28 = PrefilterResult::getGermsForFrame(a3, v26);
                              v29 = *(v28 + 8);
                              if (v29)
                              {
                                v30 = (*v28 + 4);
                                while (*(v30 - 1) != v12)
                                {
                                  v30 += 4;
                                  if (!--v29)
                                  {
                                    goto LABEL_45;
                                  }
                                }

                                PrefilterResult::addEntry(a5, v26, v12, *v30);
                              }
                            }

                            else
                            {
                              PrefilterResult::addEntry(a5, v26, v12, 20000);
                            }

LABEL_45:
                            ++v26;
                          }
                        }
                      }
                    }

                    ++v16;
                    v14 = v45[0];
                    v15 = *(v45[0] + 24 * v11);
                  }

                  while (v15);
                }
              }

              ++v11;
            }

            while (v11 < v48);
          }

          v10 = v41 - 1;
        }

        while (v41 > 0);
      }

      DgnIArray<Utterance *>::~DgnIArray(v45);
      DgnPrimArray<unsigned int>::~DgnPrimArray(v46);
      return DgnIArray<Utterance *>::~DgnIArray(&v47);
    }
  }

  return result;
}

void sub_2627B820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  _Unwind_Resume(a1);
}

unint64_t Recognizer::setEmbeddedTransducers(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    return DgnArray<StateSpec>::copyArraySlice(result + 2376, a2, 0, *(a2 + 8));
  }

  return result;
}

void GermRecogGermIterator::~GermRecogGermIterator(GermRecogGermIterator *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

void MergedActive::MergedActive(MergedActive *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  SeedMergedActiveWord::SeedMergedActiveWord((this + 32));
  *(this + 64) = 0;
}

void SeedMergedActiveWord::SeedMergedActiveWord(SeedMergedActiveWord *this)
{
  *this = &unk_287525AE0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  DgnString::DgnString((this + 32));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 17) = 0x3FFF;
  *(this + 72) = xmmword_26286CC40;
  *(this + 22) = -1;
}

void SeedMergedActiveWord::~SeedMergedActiveWord(SeedMergedActiveWord *this)
{
  *this = &unk_287525AE0;
  DgnArray<PhnIndexSet>::releaseAll(this + 48);
  BitArray::~BitArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

{
  *this = &unk_287525AE0;
  DgnArray<PhnIndexSet>::releaseAll(this + 48);
  BitArray::~BitArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);

  JUMPOUT(0x26672B1B0);
}

uint64_t SeedMergedActiveWord::maybeGetActiveOutPort(SeedMergedActiveWord *this, unsigned int a2, int a3)
{
  if (a2 == 0xFFFF)
  {
    if (((*(*(this + 4) + ((*(this + 22) >> 3) & 0x1FFFFFFC)) >> *(this + 22)) & 1) == 0)
    {
      return 0;
    }

    result = **(*(*(this + 1) + 8) + 72);
  }

  else
  {
    result = HmmNet::maybeGetNonSilOutPort(*(*(this + 1) + 8), a2);
    if (((*(*(*(this + 6) + 16 * *(this + 22)) + 4 * (a2 >> 5)) >> a2) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(result + 8) > a3)
  {
    return 0;
  }

  return result;
}

void *MemChunkRegion::getCurrentRegion(MemChunkRegion *this)
{
  if (MemChunkRegion::smTlsID != -1)
  {
    v1 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v1)
    {
      result = *v1;
      if (result)
      {
        return result;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  return &gGlobalMemChunkRegion;
}

BOOL MergedActive::isCWIDAllowMerge(MergedActive *this, unsigned int a2)
{
  v2 = *(*(**VocMgr::smpVocMgr + 8 * (a2 >> 25)) + 48);
  v3 = a2 & 0xFFFFFF;
  if (*(v2[4] + 2 * (a2 & 0xFFFFFF)) < 2u)
  {
    return 0;
  }

  if (*(v2[74] + 2 * v3))
  {
    return 1;
  }

  return *(v2[76] + 2 * v3) != 0;
}

uint64_t SeedUnmergedActiveWord::maybeGetActiveOutPort(SeedUnmergedActiveWord *this, unsigned int a2, int a3)
{
  v4 = *(*(this + 1) + 8);
  if (a2 == 0xFFFF)
  {
    result = **(v4 + 9);
  }

  else
  {
    result = HmmNet::maybeGetNonSilOutPort(v4, a2);
  }

  if (*(result + 8) > a3)
  {
    return 0;
  }

  return result;
}

void *DgnIOwnArray<CWIDCrumbWACSFrame *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<CWIDCrumbWACSFrame>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

CWIDCrumbWACSFrame *DgnDelete<CWIDCrumbWACSFrame>(CWIDCrumbWACSFrame *result)
{
  if (result)
  {
    CWIDCrumbWACSFrame::~CWIDCrumbWACSFrame(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitLibrary_fst(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_arcgraph_fst();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_fstcore_fst();
  MrecInitModule_fstsrch_fst();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_fwdbwd_fst();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_virtmap_fst();
}

void MrecInitLibrarySet_throughFst(void)
{
  MrecInitLibrarySet_throughKernel();

  MrecInitLibrary_fst();
}

void FeatureFrame::~FeatureFrame(FeatureFrame *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t FeatureFrame::getScaledFeature(FeatureFrame *this, unsigned int a2, int a3, int a4, const BinaryIntScale *a5)
{
  if (*(this + 4) == 1)
  {
    LOBYTE(v5) = *(*(this + 1) + a2);
  }

  else
  {
    v6 = 1 << (*a5 - 1);
    if (!*a5)
    {
      LODWORD(v6) = 0;
    }

    v5 = (v6 + (a4 + *(*(this + 3) + 8 * a2) * a3)) >> *a5;
    if (v5 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }

    if (v5 >= 0x100)
    {
      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

unint64_t FeatureFrame::scaleFeatureToUns8(unint64_t this, void *a2, void *a3, BinaryIntScale *a4)
{
  v7 = this;
  v8 = *(this + 32);
  v9 = v8;
  if (*(this + 20) < v8)
  {
    v11 = 0;
    this = realloc_array(*(this + 8), &v11, v8, *(this + 16), *(this + 16), 1);
    *(v7 + 20) = this;
    *(v7 + 8) = v11;
    v9 = *(v7 + 32);
  }

  *(v7 + 16) = v8;
  if (v9)
  {
    v10 = 0;
    do
    {
      this = FeatureFrame::getScaledFeature(v7, v10, *(*a2 + 4 * v10), *(*a3 + 4 * v10), a4);
      *(*(v7 + 8) + v10++) = this;
    }

    while (v10 < *(v7 + 32));
  }

  *(v7 + 4) = 1;
  return this;
}

void MrecInitModule_lookahsc_prefilt(void)
{
  if (!gParDebugPrefiltererLookahead)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugPrefiltererLookahead", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugPrefiltererLookahead = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugPrefiltererLookahead);
  }
}

uint64_t SimpleLookaheadScorer::SimpleLookaheadScorer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_2875256D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = *(a2 + 40);
  *(a1 + 28) = a4;
  *(a1 + 32) = -16;
  v7 = *(a2 + 128);
  *(a1 + 40) = 0;
  v8 = (a1 + 40);
  *(a1 + 48) = 0;
  if (v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 40, v7, 0);
    v9 = *(a1 + 48);
    if (v9 > v7)
    {
      if (v9 > v7)
      {
        v10 = v9;
        v11 = 16 * v9 - 16;
        do
        {
          --v10;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*v8 + v11);
          v11 -= 16;
        }

        while (v10 > v7);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9 < v7)
  {
    v12 = v7 - v9;
    v13 = 16 * v9;
    do
    {
      v14 = (*v8 + v13);
      *v14 = 0;
      v14[1] = 0;
      v13 += 16;
      --v12;
    }

    while (v12);
  }

LABEL_11:
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  if (!a4)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    goto LABEL_19;
  }

  v15 = *(a2 + 128);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!v15)
  {
LABEL_19:
    LODWORD(v15) = 0;
    v16 = 0;
    goto LABEL_20;
  }

  DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 64, v15, 0);
  v16 = *(a1 + 72);
  if (v16 > v15)
  {
    if (v16 > v15)
    {
      v17 = v16;
      v18 = 16 * v16 - 16;
      do
      {
        --v17;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*(a1 + 64) + v18);
        v18 -= 16;
      }

      while (v17 > v15);
    }

    goto LABEL_23;
  }

LABEL_20:
  if (v16 < v15)
  {
    v19 = v15 - v16;
    v20 = (*(a1 + 64) + 16 * v16 + 8);
    do
    {
      *(v20 - 1) = 0;
      *v20 = 0;
      v20 += 4;
      --v19;
    }

    while (v19);
  }

LABEL_23:
  *(a1 + 72) = v15;
  *(a1 + 80) = 0u;
  v21 = **(*(a1 + 8) + 64);
  *(a1 + 96) = 0;
  v22 = v21 - 2;
  if (v21 != 2)
  {
    *(a1 + 88) = MemChunkAlloc(2 * (v21 - 2), 0);
    *(a1 + 96) = v22;
  }

  v23 = *(a2 + 40);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v23)
  {
    v26 = 0;
    *(a1 + 116) = realloc_array(0, &v26, v23, 0, 0, 1);
    *(a1 + 104) = v26;
  }

  v24 = *(a2 + 40);
  *(a1 + 120) = 0;
  *(a1 + 112) = v23;
  *(a1 + 128) = 0;
  if (v24)
  {
    DgnPrimArray<short>::reallocElts(a1 + 120, v24, 0);
  }

  *(a1 + 128) = v24;
  return a1;
}

void SimpleLookaheadScorer::~SimpleLookaheadScorer(SimpleLookaheadScorer *this)
{
  *this = &unk_2875256D8;
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 8) = -16;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 88);
  ScoreFixArraySpinQueue::~ScoreFixArraySpinQueue((this + 64));
  FeatureArraySpinQueue::~FeatureArraySpinQueue((this + 40));
}

{
  SimpleLookaheadScorer::~SimpleLookaheadScorer(this);

  JUMPOUT(0x26672B1B0);
}

double SimpleLookaheadScorer::reset(SimpleLookaheadScorer *this)
{
  result = 0.0;
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 8) = -16;
  return result;
}

void SimpleLookaheadScorer::printSize(SimpleLookaheadScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 125, &v102);
  if (v103)
  {
    v16 = v102;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v102);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  v22 = (a3 + 1);
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 126, &v102);
  if (v103)
  {
    v28 = v102;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v102);
  *a4 += v21;
  *a5 += v21;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 127, &v102);
  if (v103)
  {
    v34 = v102;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, v29, v29, 0);
  DgnString::~DgnString(&v102);
  *a4 += v29;
  *a5 += v29;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 128, &v102);
  if (v103)
  {
    v39 = v102;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v39, 4, 4, 0);
  DgnString::~DgnString(&v102);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 129, &v102);
  if (v103)
  {
    v44 = v102;
  }

  else
  {
    v44 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v44, 4, 4, 0);
  v101 = a3;
  DgnString::~DgnString(&v102);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 138, &v102);
  if (v103)
  {
    v49 = v102;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v49, 4, 4, 0);
  DgnString::~DgnString(&v102);
  *a4 += 4;
  *a5 += 4;
  v50 = sizeObject<DgnPrimArray<unsigned char>>(this + 40, 0) + 8;
  v51 = sizeObject<DgnPrimArray<unsigned char>>(this + 40, 1) + 8;
  v102 = 0;
  v103 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v102);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 139, &v102);
  if (v103)
  {
    v56 = v102;
  }

  else
  {
    v56 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, v22, &byte_262899963, v23, v23, v56, v50, v51, 0);
  DgnString::~DgnString(&v102);
  *a4 += v50;
  *a5 += v51;
  v57 = sizeObject<ScoreFixArray>(this + 64, 0) + 8;
  v58 = sizeObject<ScoreFixArray>(this + 64, 1) + 8;
  v102 = 0;
  LODWORD(v103) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v102);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 140, &v102);
  if (v103)
  {
    v63 = v102;
  }

  else
  {
    v63 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v60, v61, v62, v22, &byte_262899963, v23, v23, v63, v57, v58, 0);
  DgnString::~DgnString(&v102);
  *a4 += v57;
  *a5 += v58;
  v64 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 8;
  }

  v65 = *(this + 24);
  if (v65 <= 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = (2 * v65);
  }

  v67 = v64 + v66;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 142, &v102);
  if (v103)
  {
    v72 = v102;
  }

  else
  {
    v72 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v69, v70, v71, v22, &byte_262899963, v23, v23, v72, v67, v67, 0);
  DgnString::~DgnString(&v102);
  *a4 += v67;
  *a5 += v67;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v73 = 12;
  }

  else
  {
    v73 = 16;
  }

  v74 = *(this + 28);
  v75 = *(this + 29);
  v76 = v75 >= v74;
  v77 = v75 - v74;
  if (v76)
  {
    if (v74 > 0)
    {
      v78 = (v74 - 1) + v73 + 1;
    }

    else
    {
      v78 = v73;
    }

    v73 = v78 + v77;
    v74 = 0;
  }

  else
  {
    v78 = v73;
  }

  v79 = v74;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 143, &v102);
  if (v103)
  {
    v84 = v102;
  }

  else
  {
    v84 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v81, v82, v83, v22, &byte_262899963, v23, v23, v84, v73, v78, v79);
  DgnString::~DgnString(&v102);
  *a4 += v73;
  *a5 += v78;
  *a6 += v79;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v85 = 12;
  }

  else
  {
    v85 = 16;
  }

  v86 = *(this + 32);
  v87 = *(this + 33);
  if (v87 >= v86)
  {
    v88 = 0;
    if (v86 > 0)
    {
      v85 += 2 * (v86 - 1) + 2;
    }

    v89 = v85 + 2 * (v87 - v86);
  }

  else
  {
    v88 = 2 * v86;
    v89 = v85;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 145, &v102);
  if (v103)
  {
    v94 = v102;
  }

  else
  {
    v94 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v90, v91, v92, v93, v22, &byte_262899963, v23, v23, v94, v89, v85, v88);
  DgnString::~DgnString(&v102);
  *a4 += v89;
  *a5 += v85;
  *a6 += v88;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 147, &v102);
  if (v103)
  {
    v99 = v102;
  }

  else
  {
    v99 = &byte_262899963;
  }

  v100 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v101, &byte_262899963, (35 - v101), (35 - v101), v99, *a4, *a5, *a6);
  DgnString::~DgnString(&v102);
}

void sub_2627B944C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *SimpleLookaheadScorer::scoreForLookahead(uint64_t *result, int a2, uint64_t a3, _BYTE *a4)
{
  v5 = result;
  if (a3)
  {
    v8 = *(result + 15);
    v9 = *(result + 12);
    if (v8 >= v9)
    {
      v18 = *(result + 14);
      if (v18 + 1 < v9)
      {
        v10 = v18 + 1;
      }

      else
      {
        v10 = 0;
      }

      *(result + 14) = v10;
      v11 = v8 - 1;
    }

    else
    {
      *(result + 15) = v8 + 1;
      v10 = *(result + 14);
      v11 = v8;
    }

    result = DgnPrimArray<unsigned char>::copyArraySlice(result[5] + 16 * ((v11 + v10) % v9), a3, 0, *(a3 + 8));
    if (*(v5 + 28))
    {
      v25 = 0;
      v26 = 0;
      DgnPrimArray<unsigned char>::copyArraySlice(&v25, a3, 0, *(a3 + 8));
      LODWORD(v26) = *(v5 + 24);
      SimpleLookaheadScorer::doScore(v5, &v25);
      v19 = *(v5 + 84);
      v20 = *(v5 + 72);
      if (v19 >= v20)
      {
        v22 = *(v5 + 80);
        if (v22 + 1 < v20)
        {
          v21 = v22 + 1;
        }

        else
        {
          v21 = 0;
        }

        *(v5 + 80) = v21;
        --v19;
      }

      else
      {
        *(v5 + 84) = v19 + 1;
        v21 = *(v5 + 80);
      }

      DgnPrimFixArray<short>::copyArraySlice((*(v5 + 64) + 16 * ((v19 + v21) % v20)), (v5 + 88), 0, *(v5 + 96));
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
    }

    v23 = *(v5 + 32);
    if (v23 == -16)
    {
      *(v5 + 32) = a2;
      v23 = a2;
    }

    v24 = *(*(v5 + 8) + 128);
    if (*(v5 + 60) >= v24)
    {
      if (v8 == v24)
      {
        *(v5 + 32) = v23 + 1;
      }

      return SimpleLookaheadScorer::doOverallScore(v5, a4);
    }
  }

  else
  {
    v12 = *(result + 15);
    if (*(result[1] + 128) > v12)
    {
      result = SimpleLookaheadScorer::doOverallScore(result, a4);
      v12 = *(v5 + 60);
    }

    if (v12 >= 2)
    {
      do
      {
        v13 = v12 - 1;
        v14 = *(v5 + 56);
        if ((v14 + 1) < *(v5 + 48))
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = 0;
        }

        *(v5 + 56) = v15;
        *(v5 + 60) = v13;
        if (*(v5 + 28))
        {
          v16 = *(v5 + 84);
          if (v16)
          {
            *(v5 + 84) = --v16;
            if (v16)
            {
              v17 = *(v5 + 80);
              if ((v17 + 1) < *(v5 + 72))
              {
                v16 = v17 + 1;
              }

              else
              {
                v16 = 0;
              }
            }
          }

          *(v5 + 80) = v16;
        }

        ++*(v5 + 32);
        result = SimpleLookaheadScorer::doOverallScore(v5, a4);
        v12 = *(v5 + 60);
      }

      while (v12 > 1);
    }

    *a4 = 1;
  }

  return result;
}

uint64_t *SimpleLookaheadScorer::doOverallScore(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 28);
  if (v4 == 1)
  {
    SimpleLookaheadScorer::computeMinimumScore(a1);
  }

  else if (v4)
  {
    SimpleLookaheadScorer::computeCombinedScore(a1);
  }

  else
  {
    SimpleLookaheadScorer::computeSmoothFrame(a1);
    SimpleLookaheadScorer::doScore(a1, (a1 + 104));
  }

  v5 = *(a1 + 32);

  return SynchronizedArray<ScoreFixArray>::add(a2, v5, a1 + 88);
}

uint64_t SimpleLookaheadScorer::doScore(uint64_t result, unsigned __int8 **a2)
{
  v2 = *(result + 96);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      if (i)
      {
        result = *(v4 + 8);
        if (*(*(result + 64) + 56) == i)
        {
          *(*(v4 + 88) + 2 * i) = 20000;
        }

        else
        {
          result = Lookahead::scoreOneForLookahead(result, a2, *(*(result + 104) + 4 * i));
          *(*(v4 + 88) + 2 * i) = result;
          v2 = *(v4 + 96);
        }
      }

      else
      {
        **(v4 + 88) = 20000;
      }
    }
  }

  return result;
}

uint64_t SimpleLookaheadScorer::getNextFrameTime(SimpleLookaheadScorer *this)
{
  v1 = *(this + 8);
  if (v1 == -16)
  {
    v1 = 0;
  }

  return (*(this + 15) + v1);
}

uint64_t SimpleLookaheadScorer::scoreLookaheadUntil(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v14[0] = 0;
  v14[1] = 0;
  v8 = (*(*a1 + 32))(a1);
  v9 = *(a4 + 16);
  if (v9 <= a2)
  {
    for (i = v8; ; ++i)
    {
      v11 = *(a3 + 16);
      if (v11 <= i)
      {
        break;
      }

      v12 = *(a3 + 8) + 16 * i;
      DgnPrimArray<unsigned char>::copyArraySlice(v14, v12, 0, *(v12 + 8));
      SimpleLookaheadScorer::scoreForLookahead(a1, i, v14, a4);
      v9 = *(a4 + 16);
      if (v9 > a2)
      {
        return DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
      }
    }

    if (*a3 == 1 && (*a4 & 1) == 0)
    {
      *(a4 + 4) = v9;
      SimpleLookaheadScorer::scoreForLookahead(a1, v11, 0, a4);
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
}

uint64_t SimpleLookaheadScorer::computeSmoothFrame(uint64_t this)
{
  if (*(this + 24))
  {
    v1 = 0;
    v2 = *(*(*(this + 8) + 136) + 4 * (*(this + 60) - 1));
    do
    {
      v3 = *(this + 60);
      if (v3)
      {
        v4 = 0;
        v5 = *(*(this + 8) + 120);
        v6 = *(this + 56);
        v7 = *(this + 48);
        do
        {
          v8 = v6;
          if (v6 >= v7)
          {
            v8 = v6 % v7;
          }

          v9 = *v5++;
          v4 += v9 * *(*(*(this + 40) + 16 * v8) + v1);
          ++v6;
          --v3;
        }

        while (v3);
      }

      else
      {
        v4 = 0;
      }

      *(*(this + 104) + v1++) = (v4 + (v2 >> 1)) / v2;
    }

    while (v1 < *(this + 24));
  }

  return this;
}

uint64_t SimpleLookaheadScorer::computeMinimumScore(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 72);
    v4 = *(this + 64);
    v5 = *(this + 80);
    v6 = *(this + 84);
    v7 = *(this + 88);
    do
    {
      v8 = v5;
      if (v5 >= v3)
      {
        v8 = v5 % v3;
      }

      v9 = *(v4 + 16 * v8);
      this = v2;
      v10 = *(v9 + 2 * v2);
      v11 = v6 - 1;
      v12 = v5 + 1;
      if (v6 >= 2)
      {
        do
        {
          if (v12 >= v3)
          {
            v13 = 16 * (v12 % v3);
          }

          else
          {
            v13 = 16 * v12;
          }

          v14 = *(*(v4 + v13) + 2 * v2);
          if (v14 < v10)
          {
            v10 = v14;
          }

          ++v12;
          --v11;
        }

        while (v11);
      }

      *(v7 + 2 * v2++) = v10;
    }

    while (v1 > v2);
  }

  return this;
}

uint64_t SimpleLookaheadScorer::computeCombinedScore(uint64_t this)
{
  v1 = *(this + 96);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 72);
    v4 = *(this + 64);
    v5 = *(this + 80);
    v6 = *(this + 84);
    v7 = *(this + 88);
    do
    {
      v8 = v5;
      if (v5 >= v3)
      {
        v8 = v5 % v3;
      }

      v9 = *(*(v4 + 16 * v8) + 2 * v2);
      if (v6 >= 2)
      {
        v10 = *(this + 8);
        v11 = v5 + 1;
        v12 = v6 - 1;
        do
        {
          v13 = v11;
          if (v11 >= v3)
          {
            v13 = v11 % v3;
          }

          v14 = *(*(v4 + 16 * v13) + 2 * v2);
          v16 = v14 - v9;
          v15 = v14 - v9 < 0;
          if (v14 < v9)
          {
            v9 = v14;
          }

          if (v15)
          {
            v17 = -v16;
          }

          else
          {
            v17 = v16;
          }

          if (v17 < *(v10 + 80))
          {
            v9 -= *(*(v10 + 72) + 4 * v17);
          }

          ++v11;
          --v12;
        }

        while (v12);
      }

      *(v7 + 2 * v2++) = v9;
    }

    while (v1 > v2);
  }

  return this;
}

uint64_t *SynchronizedArray<ScoreFixArray>::add(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 20))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 8, 1, 1);
    v6 = *(a1 + 16);
  }

  v7 = *(a1 + 8);
  v8 = v7 + 16 * v6;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(a1 + 16) = v6 + 1;
  v9 = *(a3 + 8);

  return DgnPrimFixArray<short>::copyArraySlice((v7 + 16 * a2), a3, 0, v9);
}

void LookaheadScorerThreadWorker::~LookaheadScorerThreadWorker(LookaheadScorerThreadWorker *this)
{
  *this = &unk_287524800;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);

  DgnThreadWorker::~DgnThreadWorker(this);
}

{
  *this = &unk_287524800;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnThreadWorker::~DgnThreadWorker(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t LookaheadScorerThreadWorker::onStartup(LookaheadScorerThreadWorker *this)
{
  v2 = *(this + 6);
  v3 = MemChunkAlloc(0x88uLL, 0);
  *(this + 33) = SimpleLookaheadScorer::SimpleLookaheadScorer(v3, *(v2 + 1576), *(v2 + 1584), *(v2 + 1592));
  v4 = MemChunkAlloc(0x18uLL, 0);
  *(this + 34) = SynchronizedArray<ScoreFixArray>::SynchronizedArray(v4);
  v5 = MemChunkAlloc(0x18uLL, 0);
  result = SynchronizedArray<DgnPrimArray<unsigned char>>::SynchronizedArray(v5);
  *(this + 35) = result;
  return result;
}

uint64_t LookaheadScorerThreadWorker::onShutdown(LookaheadScorerThreadWorker *this)
{
  DgnDelete<SimpleLookaheadScorer>(*(this + 33));
  DgnDelete<SynchronizedArray<ScoreFixArray>>(*(this + 34));
  v2 = *(this + 35);

  return DgnDelete<UttFeatureArraySynchronizedArray>(v2);
}

void (***DgnDelete<SimpleLookaheadScorer>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t DgnDelete<SynchronizedArray<ScoreFixArray>>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnArray<DgnVector>::releaseAll(result + 8);

    return MemChunkFree(v1, 0);
  }

  return result;
}

_BYTE *LookaheadScorerThreadWorker::onPlay(LookaheadScorerThreadWorker *this)
{
  v1 = *(this + 6);
  *(this + 64) = *(v1 + 1604);
  result = *(this + 35);
  if ((*result & 1) == 0)
  {
    return SynchronizedArray<DgnPrimArray<unsigned char>>::update(result, *(v1 + 1608));
  }

  return result;
}

uint64_t LookaheadScorerThreadWorker::playOne(LookaheadScorerThreadWorker *this)
{
  v1 = *(this + 34);
  if (*v1)
  {
    return 4;
  }

  v4 = *(this + 64);
  if (v4 != -16 && *(v1 + 16) > v4)
  {
    return 4;
  }

  v5 = (*(**(this + 33) + 32))(*(this + 33));
  v6 = v5;
  v7 = *(this + 35);
  if (*(v7 + 16) <= v5)
  {
    if (*v7 == 1)
    {
      v10 = *(this + 33);
      v11 = *(this + 34);
      *(v11 + 4) = *(v11 + 16);
      SimpleLookaheadScorer::scoreForLookahead(v10, v6, 0, v11);
    }

    return 4;
  }

  v8 = *(v7 + 8) + 16 * v5;
  DgnPrimArray<unsigned char>::copyArraySlice(this + 288, v8, 0, *(v8 + 8));
  SimpleLookaheadScorer::scoreForLookahead(*(this + 33), v6, this + 288, *(this + 34));
  v9 = *(this + 64);
  if (v9 != -16 && *(*(this + 34) + 16) > v9)
  {
    return 4;
  }

  return 1;
}

uint64_t *LookaheadScorerThreadWorker::reset(LookaheadScorerThreadWorker *this)
{
  Latch<MemChunkRegion,LatchAdapter>::Latch(&v6, *(this + 5));
  v2 = *(this + 33);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    SynchronizedArray<DgnPrimArray<unsigned char>>::reset(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    SynchronizedArray<ScoreFixArray>::reset(v4);
  }

  *(this + 64) = -16;
  return Latch<MemChunkRegion,LatchAdapter>::~Latch(&v6);
}

void sub_2627B9F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<MemChunkRegion,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

void LookaheadScorerThreadWorker::printSize(LookaheadScorerThreadWorker *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 635, &v69);
  if (v70)
  {
    v15 = v69;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v69);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  v20 = (a3 + 1);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 638, &v69);
  if (v70)
  {
    v26 = v69;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v69);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 639, &v69);
  if (v70)
  {
    v32 = v69;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v32, v27, v27, 0);
  DgnString::~DgnString(&v69);
  *a4 += v27;
  *a5 += v27;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 4;
  }

  else
  {
    v33 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 640, &v69);
  if (v70)
  {
    v38 = v69;
  }

  else
  {
    v38 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v38, v33, v33, 0);
  DgnString::~DgnString(&v69);
  *a4 += v33;
  *a5 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 641, &v69);
  if (v70)
  {
    v44 = v69;
  }

  else
  {
    v44 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v44, v39, v39, 0);
  v64 = a3;
  DgnString::~DgnString(&v69);
  *a4 += v39;
  *a5 += v39;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 12;
  }

  else
  {
    v45 = 16;
  }

  v46 = *(this + 74);
  v47 = *(this + 75);
  v48 = a2;
  v49 = v47 >= v46;
  v50 = v47 - v46;
  if (v49)
  {
    if (v46 > 0)
    {
      v51 = (v46 - 1) + v45 + 1;
    }

    else
    {
      v51 = v45;
    }

    v45 = v51 + v50;
    v46 = 0;
  }

  else
  {
    v51 = v45;
  }

  v52 = v46;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 643, &v69);
  if (v70)
  {
    v57 = v69;
  }

  else
  {
    v57 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v20, &byte_262899963, v21, v21, v57, v45, v51, v52);
  DgnString::~DgnString(&v69);
  *a4 += v45;
  *a5 += v51;
  *a6 += v52;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  DgnThreadWorker::printSize(this, v48, v20, &v68, &v66, &v67);
  *a4 += v68;
  *a5 += v66;
  *a6 += v67;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/lookahsc.cpp", 651, &v69);
  if (v70)
  {
    v62 = v69;
  }

  else
  {
    v62 = &byte_262899963;
  }

  v63 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v64, &byte_262899963, (35 - v64), (35 - v64), v62, *a4, *a5, *a6);
  DgnString::~DgnString(&v69);
}