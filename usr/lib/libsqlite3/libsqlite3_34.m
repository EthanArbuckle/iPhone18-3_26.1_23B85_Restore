uint64_t sub_1819EA344(uint64_t result, unsigned int *a2, unint64_t a3)
{
  if (!*(result + 60))
  {
    v76[11] = v3;
    v76[12] = v4;
    v5 = a2;
    v6 = result;
    v7 = 0;
    v73 = (a2 + 2);
    while (1)
    {
      v9 = (*(v5 + 11) + 32 * v7);
      v10 = v9[6];
      v11 = *(*v6 + 196);
      if (v10 >= v11)
      {
        break;
      }

      v14 = v9 + 1;
      if (v9[1])
      {
        v15 = a3;
        v16 = a3 - *(v9 + 1);
        v12 = 1;
        goto LABEL_56;
      }

      v12 = 1;
      v13 = v9[6];
LABEL_24:
      v29 = v9 - 8;
      if (!v7)
      {
        v29 = v73;
      }

      v30 = *v29;
      v31 = (v13 + 9);
      v32 = v9[7];
      if (v31 <= v32)
      {
        v37 = *(v9 + 2);
      }

      else
      {
        if (v32)
        {
          LODWORD(v33) = v9[7];
        }

        else
        {
          LODWORD(v33) = 64;
        }

        v33 = v33;
        do
        {
          v34 = v33;
          v33 *= 2;
        }

        while (v34 < v31);
        v35 = *(v9 + 2);
        if (sqlite3_initialize() || (v37 = sub_18190287C(v35, v34, 688041480)) == 0)
        {
          *(v6 + 15) = 7;
          v36 = v9[6];
          goto LABEL_36;
        }

        v9[7] = v34;
        *(v9 + 2) = v37;
        v13 = v9[6];
      }

      *(v37 + v13) = v10 >= v11;
      v36 = v9[6] + 1;
      v9[6] = v36;
LABEL_36:
      v38 = (v36 + 9);
      v39 = v9[7];
      v15 = a3;
      if (v38 <= v39)
      {
        v43 = *(v9 + 2);
LABEL_45:
        v44 = (v43 + v36);
        if (v30 > 0x7F)
        {
          if (v30 >> 14)
          {
            v45 = sub_1819436D0(v44, v30);
          }

          else
          {
            v44->i8[0] = (v30 >> 7) | 0x80;
            v44->i8[1] = v30 & 0x7F;
            v45 = 2;
          }
        }

        else
        {
          v44->i8[0] = v30;
          v45 = 1;
        }

        v10 = v9[6] + v45;
        v9[6] = v10;
        goto LABEL_55;
      }

      if (v39)
      {
        LODWORD(v40) = v9[7];
      }

      else
      {
        LODWORD(v40) = 64;
      }

      v40 = v40;
      do
      {
        v41 = v40;
        v40 *= 2;
      }

      while (v41 < v38);
      v42 = *(v9 + 2);
      if (!sqlite3_initialize())
      {
        v43 = sub_18190287C(v42, v41, 688041480);
        if (v43)
        {
          v9[7] = v41;
          *(v9 + 2) = v43;
          v36 = v9[6];
          goto LABEL_45;
        }
      }

      *(v6 + 15) = 7;
      v10 = v9[6];
LABEL_55:
      v16 = a3;
LABEL_56:
      v46 = (v10 + 9);
      LODWORD(v47) = v9[7];
      if (v46 <= v47)
      {
        result = *(v9 + 2);
LABEL_64:
        v50 = (result + v10);
        if (v16 <= 0x7F)
        {
          v50->i8[0] = v16;
          result = 1;
        }

        else if (v16 >> 14)
        {
          result = sub_1819436D0(v50, v16);
        }

        else
        {
          v50->i8[0] = (v16 >> 7) | 0x80;
          v50->i8[1] = v16 & 0x7F;
          result = 2;
        }

        v9[6] += result;
        v8 = *(v6 + 15);
        goto LABEL_5;
      }

      if (!v47)
      {
        LODWORD(v47) = 64;
      }

      v47 = v47;
      do
      {
        v48 = v47;
        v47 *= 2;
      }

      while (v48 < v46);
      v49 = *(v9 + 2);
      result = sqlite3_initialize();
      if (!result)
      {
        result = sub_18190287C(v49, v48, 688041480);
        if (result)
        {
          v9[7] = v48;
          *(v9 + 2) = result;
          v10 = v9[6];
          goto LABEL_64;
        }
      }

      v8 = 7;
      *(v6 + 15) = 7;
LABEL_5:
      *v14 = 1;
      *(v9 + 1) = v15;
      ++v7;
      v5 = a2;
      if (v8 | v12)
      {
        return result;
      }
    }

    **(v9 + 2) = 1;
    sub_1819D7E9C(v6, (v7 << 31) + (*v5 << 37) + 0x1000000000 + *v9, *(v9 + 2), v9[6]);
    if (*(v6 + 15))
    {
      goto LABEL_8;
    }

    v17 = v7 + 2;
    v18 = *(v5 + 11);
    if (v5[21] <= v7 + 2)
    {
      if (sqlite3_initialize() || (v51 = sub_18190287C(v18, 32 * v17, 0x1010040F09D962ALL)) == 0)
      {
        *(v6 + 15) = 7;
LABEL_8:
        v9 = (*(v5 + 11) + 32 * v7);
LABEL_9:
        v12 = 0;
        v13 = 0;
        v9[6] = 0;
        v9[1] = 0;
        v14 = v9 + 1;
        ++*v9;
        goto LABEL_24;
      }

      v52 = v5[21];
      v53 = v51;
      bzero((v51 + 32 * v52), 32 * (v17 - v52));
      *(a2 + 11) = v53;
      a2[21] = v17;
      v9 = (v53 + 32 * v7);
      if (*(v6 + 15))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = (v18 + 32 * v7);
    }

    if (v9[14])
    {
      goto LABEL_9;
    }

    v76[0] = 0;
    v19 = (*(v9 + 2) + 1);
    v20 = sub_1819DFFB0(v19, v76);
    sub_1819DFFB0(&v19[v20], v76);
    v21 = v76[0];
    v9[8] = *v9;
    v22 = v9[14];
    v23 = v9[15];
    v24 = (v22 + 9);
    if (v24 <= v23)
    {
      v54 = *(v9 + 6);
    }

    else
    {
      if (v23)
      {
        LODWORD(v25) = v9[15];
      }

      else
      {
        LODWORD(v25) = 64;
      }

      v25 = v25;
      do
      {
        v26 = v25;
        v25 *= 2;
      }

      while (v26 < v24);
      v27 = *(v9 + 6);
      if (sqlite3_initialize() || (v54 = sub_18190287C(v27, v26, 688041480)) == 0)
      {
        *(v6 + 15) = 7;
        v28 = v9[14];
        goto LABEL_77;
      }

      v9[15] = v26;
      *(v9 + 6) = v54;
      v22 = v9[14];
    }

    *(v54 + v22) = 0;
    v28 = v9[14] + 1;
    v9[14] = v28;
LABEL_77:
    v55 = *v9;
    v56 = (v28 + 9);
    v57 = v9[15];
    if (v56 <= v57)
    {
      v62 = *(v9 + 6);
    }

    else
    {
      if (v57)
      {
        LODWORD(v58) = v9[15];
      }

      else
      {
        LODWORD(v58) = 64;
      }

      v58 = v58;
      do
      {
        v59 = v58;
        v58 *= 2;
      }

      while (v59 < v56);
      v60 = *(v9 + 6);
      if (sqlite3_initialize() || (v62 = sub_18190287C(v60, v59, 688041480)) == 0)
      {
        *(v6 + 15) = 7;
        v61 = v9[14];
        goto LABEL_96;
      }

      v9[15] = v59;
      *(v9 + 6) = v62;
      v28 = v9[14];
    }

    v63 = (v62 + v28);
    if (v55 > 0x7F)
    {
      if (v55 >> 14)
      {
        v64 = sub_1819436D0(v63, v55);
      }

      else
      {
        v63->i8[0] = (v55 >> 7) | 0x80;
        v63->i8[1] = v55 & 0x7F;
        v64 = 2;
      }
    }

    else
    {
      v63->i8[0] = v55;
      v64 = 1;
    }

    v61 = v9[14] + v64;
    v9[14] = v61;
LABEL_96:
    v65 = (v61 + 9);
    v66 = v9[15];
    if (v65 <= v66)
    {
      v70 = *(v9 + 6);
    }

    else
    {
      if (v66)
      {
        LODWORD(v67) = v9[15];
      }

      else
      {
        LODWORD(v67) = 64;
      }

      v67 = v67;
      do
      {
        v68 = v67;
        v67 *= 2;
      }

      while (v68 < v65);
      v69 = *(v9 + 6);
      if (sqlite3_initialize() || (v70 = sub_18190287C(v69, v68, 688041480)) == 0)
      {
        *(v6 + 15) = 7;
LABEL_113:
        v9[9] = 1;
        *(v9 + 5) = v21;
        goto LABEL_9;
      }

      v9[15] = v68;
      *(v9 + 6) = v70;
      v61 = v9[14];
    }

    v71 = (v70 + v61);
    if (v21 > 0x7F)
    {
      if (v21 >> 14)
      {
        v72 = sub_1819436D0(v71, v21);
      }

      else
      {
        v71->i8[0] = (v21 >> 7) | 0x80;
        v71->i8[1] = v21 & 0x7F;
        v72 = 2;
      }
    }

    else
    {
      v71->i8[0] = v21;
      v72 = 1;
    }

    v9[14] += v72;
    goto LABEL_113;
  }

  return result;
}

uint64_t sub_1819EA9A4(uint64_t a1, unsigned int *a2)
{
  *(*(a2 + 2) + 2) = bswap32(*(a2 + 12)) >> 16;
  if (*(a2 + 74))
  {
    if (!*(a2 + 73))
    {
      goto LABEL_23;
    }

    v4 = *(a2 + 11);
    v5 = *(v4 + 24);
    if (v5 < 1)
    {
      goto LABEL_23;
    }

    v6 = v5 + 9;
    v7 = *(v4 + 28);
    if (v5 + 9 <= v7)
    {
      v19 = *(v4 + 16);
    }

    else
    {
      if (v7)
      {
        LODWORD(v8) = *(v4 + 28);
      }

      else
      {
        LODWORD(v8) = 64;
      }

      v8 = v8;
      do
      {
        v9 = v8;
        v8 *= 2;
      }

      while (v9 < v6);
      v10 = *(v4 + 16);
      if (sqlite3_initialize() || (v19 = sub_18190287C(v10, v9, 688041480)) == 0)
      {
        *(a1 + 60) = 7;
LABEL_23:
        ++a2[20];
        goto LABEL_24;
      }

      *(v4 + 28) = v9;
      *(v4 + 16) = v19;
      LODWORD(v5) = *(v4 + 24);
    }

    *(v19 + v5) = 0;
    ++*(v4 + 24);
    goto LABEL_23;
  }

  v11 = a2[10];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = *(a2 + 4);
  v13 = a2[6];
  v14 = a2[7];
  v15 = (v13 + v11);
  if (v15 <= v14)
  {
    v25 = *(a2 + 2);
  }

  else
  {
    if (v14)
    {
      LODWORD(v16) = a2[7];
    }

    else
    {
      LODWORD(v16) = 64;
    }

    v16 = v16;
    do
    {
      v17 = v16;
      v16 *= 2;
    }

    while (v17 < v15);
    v18 = *(a2 + 2);
    if (sqlite3_initialize() || (v25 = sub_18190287C(v18, v17, 688041480)) == 0)
    {
      *(a1 + 60) = 7;
      goto LABEL_24;
    }

    a2[7] = v17;
    *(a2 + 2) = v25;
    v13 = a2[6];
  }

  memcpy((v25 + v13), v12, v11);
  a2[6] += v11;
LABEL_24:
  sub_1819D7E9C(a1, a2[2] + (*a2 << 37), *(a2 + 2), a2[6]);
  a2[6] = 0;
  a2[10] = 0;
  LODWORD(v20) = a2[7];
  if (v20 >= 4)
  {
    v24 = 0;
    result = *(a2 + 2);
LABEL_32:
    *(result + v24) = 0;
    a2[6] += 4;
    goto LABEL_33;
  }

  if (v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = 64;
  }

  do
  {
    v21 = v20;
    v20 *= 2;
  }

  while (v21 < 4);
  v22 = *(a2 + 2);
  result = sqlite3_initialize();
  if (!result)
  {
    result = sub_18190287C(v22, v21, 688041480);
    if (result)
    {
      a2[7] = v21;
      *(a2 + 2) = result;
      v24 = a2[6];
      goto LABEL_32;
    }
  }

  *(a1 + 60) = 7;
LABEL_33:
  ++a2[2];
  a2[3] = 0;
  ++a2[19];
  *(a2 + 73) = 257;
  return result;
}

uint64_t sub_1819EAC00(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*(result + 60))
  {
    if (*(a2 + 24) >= 5)
    {
      v4 = result;
      v5 = a3;
      sub_1819EA9A4(result, a2);
      a3 = v5;
      result = v4;
    }

    *a3 = *(a2 + 8) - 1;
    if (*(a2 + 8) >= 2)
    {
      result = sub_1819EB6B8(result, a2);
    }
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_12:
      result = (*v7)(v6);
      goto LABEL_13;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
    --qword_1ED456A90;
    result = off_1ED452EB0(v6);
    v6 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v7 = &xmmword_1ED452F28;
      goto LABEL_12;
    }
  }

LABEL_13:
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_19;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
  --qword_1ED456A90;
  result = off_1ED452EB0(v8);
  v8 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v9 = &xmmword_1ED452F28;
LABEL_19:
    result = (*v9)(v8);
  }

LABEL_20:
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v10 = *(a2 + 32);
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_26;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
  --qword_1ED456A90;
  result = off_1ED452EB0(v10);
  v10 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v11 = &xmmword_1ED452F28;
LABEL_26:
    result = (*v11)(v10);
  }

LABEL_27:
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(a2 + 96);
  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_33;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
  --qword_1ED456A90;
  result = off_1ED452EB0(v12);
  v12 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v13 = &xmmword_1ED452F28;
LABEL_33:
    result = (*v13)(v12);
  }

LABEL_34:
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  if (*(a2 + 84) >= 1)
  {
    v14 = 0;
    v15 = 16;
    do
    {
      v16 = (*(a2 + 88) + v15);
      v17 = *v16;
      if (*v16)
      {
        v18 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v17);
          --qword_1ED456A90;
          result = off_1ED452EB0(v17);
          v17 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_37;
          }

          v18 = &xmmword_1ED452F28;
        }

        result = (*v18)(v17);
      }

LABEL_37:
      *v16 = 0;
      v16[1] = 0;
      ++v14;
      v15 += 32;
    }

    while (v14 < *(a2 + 84));
  }

  v19 = *(a2 + 88);
  if (v19)
  {
    v20 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_50:
      v21 = *v20;

      return v21(v19);
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v19);
    --qword_1ED456A90;
    result = off_1ED452EB0(v19);
    v19 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v20 = &xmmword_1ED452F28;
      goto LABEL_50;
    }
  }

  return result;
}

uint64_t sub_1819EAFC8(uint64_t result, int **a2)
{
  if (*result)
  {
    return result;
  }

  v3 = result;
  v4 = *a2;
  if (**a2 >= 2)
  {
    v5 = v4[7];
    result = sqlite3_initialize();
    if (result || (v7 = 16 * v5, (result = sub_181902484(16 * v5 + 32, 1913357809)) == 0))
    {
      v6 = 0;
      if (v5 >= -1)
      {
        *v3 = 7;
      }
    }

    else
    {
      v6 = result;
      bzero(result, v7 + 32);
      result = memcpy(v6, v4, v7 + 32);
      v8 = v4[7];
      if (v8 >= 1)
      {
        if (v8 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8 & 0x7FFFFFFE;
          v10 = v6 + 14;
          v11 = v9;
          do
          {
            *(v10 - 2) = 0;
            *v10 = 0;
            v10 += 4;
            v11 -= 2;
          }

          while (v11);
          if (v9 == v8)
          {
LABEL_16:
            v14 = 0;
            v15 = (v4 + 10);
            v16 = v6 + 10;
            while (!*v3)
            {
              v17 = *(v16 - 1);
              if (sqlite3_initialize() || (v18 = 56 * v17, (v19 = sub_181902484(56 * v17, 1913357809)) == 0))
              {
                if (v17 >= 1)
                {
                  *v3 = 7;
                }

                break;
              }

              v20 = v19;
              bzero(v19, v18);
              *v16 = v20;
              v16 += 2;
              v21 = *v15;
              v15 += 2;
              result = memcpy(v20, v21, v18);
              if (++v14 >= v4[7])
              {
                goto LABEL_21;
              }
            }

            *v16 = 0;
            if (v4[7] >= 1)
            {
              v24 = 0;
              v25 = (v6 + 10);
              do
              {
                v26 = *v25;
                if (*v25)
                {
                  v27 = &off_1ED452EB0;
                  if (dword_1ED452E80)
                  {
                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
                    --qword_1ED456A90;
                    off_1ED452EB0(v26);
                    v26 = xmmword_1ED456AF0;
                    if (!xmmword_1ED456AF0)
                    {
                      goto LABEL_36;
                    }

                    v27 = &xmmword_1ED452F28;
                  }

                  (*v27)(v26);
                }

LABEL_36:
                ++v24;
                v25 += 2;
              }

              while (v24 < v4[7]);
            }

            v28 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
              --qword_1ED456A90;
              result = off_1ED452EB0(v6);
              v6 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_23;
              }

              v28 = &xmmword_1ED452F28;
            }

            result = (*v28)(v6);
LABEL_23:
            if (*v3)
            {
              return result;
            }

            v4 = *a2;
            goto LABEL_25;
          }
        }

        v12 = v8 - v9;
        v13 = &v6[4 * v9 + 10];
        do
        {
          *v13 = 0;
          v13 += 2;
          --v12;
        }

        while (v12);
        goto LABEL_16;
      }

LABEL_21:
      --*v4;
      *v6 = 1;
    }

    *a2 = v6;
    goto LABEL_23;
  }

LABEL_25:
  v22 = v4[7];
  result = sqlite3_initialize();
  if (result || 16 * v22 == -64 || (result = sub_18190287C(v4, 16 * v22 + 64, 1775351634)) == 0)
  {
    *v3 = 7;
  }

  else
  {
    v23 = result + 16 * v22;
    *(v23 + 32) = 0;
    *(v23 + 40) = 0;
    ++*(result + 28);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1819EB308(uint64_t result, int a2, uint64_t a3)
{
  if (!*(result + 60))
  {
    v3 = a3 + 32;
    v4 = a3 + 32 + 16 * a2;
    v5 = *(v4 + 4);
    if (v5)
    {
      v6 = *(*(v4 + 8) + 56 * v5 - 48) - *(*(v4 + 8) + 56 * v5 - 52) + 1;
      v7 = (a3 + 16 * a2 + 40);
      v8 = a2;
      do
      {
        v9 = __OFSUB__(v8--, 1);
        if (v8 < 0 != v9)
        {
          v14 = 0;
          v8 = -1;
          goto LABEL_19;
        }

        v10 = *(v7 - 5);
        v7 -= 2;
      }

      while (!v10);
      if (v10 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = (*v7 + 8);
        do
        {
          v13 = *v12 - *(v12 - 1);
          if (v13 >= v11)
          {
            v11 = v13 + 1;
          }

          v12 += 14;
          --v10;
        }

        while (v10);
      }

      if (v11 >= v6)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      if (v11 < v6)
      {
        v8 = -1;
      }

LABEL_19:
      if (v8 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = v6;
      }

      if (v8 >= 0)
      {
        v16 = v8;
      }

      else
      {
        v16 = a2;
      }

      v17 = v3 + 16 * v16;
      if (!*v17)
      {
        v18 = v16 + 1;
        v19 = *(a3 + 28);
        if (v18 < v19)
        {
          for (i = v18; i < v19; ++i)
          {
            v20 = v3 + 16 * i;
            if (*v20)
            {
              break;
            }

            v21 = *(v20 + 4);
            if (v21 >= 1)
            {
              v22 = v21 + 1;
              v23 = 56 * v21;
              while (*(*(v20 + 8) + v23 - 48) - *(*(v20 + 8) + v23 - 52) + 1 <= v15 && !*(result + 60))
              {
                v36 = v22;
                v24 = a3;
                v25 = result;
                v26 = *(v17 + 4);
                v27 = v26 + 1;
                v28 = v26 == -1;
                v29 = *(v17 + 8);
                result = sqlite3_initialize();
                if (v28 || result || (result = sub_18190287C(v29, 56 * v27, 211794990)) == 0)
                {
                  *(v25 + 60) = 7;
                  return result;
                }

                v30 = result;
                result = memmove((result + 56), result, 56 * *(v17 + 4));
                *v30 = 0u;
                *(v30 + 16) = 0u;
                *(v30 + 32) = 0u;
                *(v30 + 48) = 0;
                *(v17 + 8) = v30;
                if (*(v25 + 60))
                {
                  return result;
                }

                result = v25;
                a3 = v24;
                v31 = *(v20 + 8) + v23;
                v32 = *(v31 - 56);
                v33 = *(v31 - 40);
                v34 = *(v31 - 24);
                *(v30 + 48) = *(v31 - 8);
                *(v30 + 16) = v33;
                *(v30 + 32) = v34;
                *v30 = v32;
                ++*(v17 + 4);
                --*(v20 + 4);
                v22 = v36 - 1;
                v23 -= 56;
                if ((v36 - 1) <= 1)
                {
                  v19 = *(v24 + 28);
                  goto LABEL_39;
                }
              }

              return result;
            }

LABEL_39:
            ;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1819EB56C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  if (!v3)
  {
    return 0;
  }

  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a2 + 24);
  if (*a1 == 1)
  {
    if (*(a2 + 32))
    {
      v6 = v5 + 1;
      *(v4 + v5) = 0;
      if (*(a2 + 33))
      {
        v5 += 2;
        *(v4 + v6) = 0;
      }

      else
      {
        ++v5;
      }
    }
  }

  else
  {
    v8 = v5 + ~v3;
    v9 = *(a2 + 32) + 2 * v8;
    if (v9 > 127)
    {
      v10 = a2;
      v11 = a3;
      if (v9 >= 0x4000)
      {
        if (v9 >> 28)
        {
          v13 = 5;
        }

        else
        {
          v13 = 4;
        }

        if (v9 >= 0x200000)
        {
          v12 = v13;
        }

        else
        {
          v12 = 3;
        }
      }

      else
      {
        v12 = 2;
      }

      memmove((v4 + v12 + v3), (v4 + v3 + 1), v8);
      v14 = (v4 + *(v10 + 20));
      if (v9 >> 14)
      {
        sub_1819436D0(v14, v9);
        a2 = v10;
      }

      else
      {
        a2 = v10;
        v14->i8[0] = (v9 >> 7) | 0x80;
        v14->i8[1] = v9 & 0x7F;
      }

      a3 = v11;
      v5 = v5 + v12 - 1;
    }

    else
    {
      *(v4 + v3) = *(a2 + 32) + 2 * v8;
    }
  }

  result = (v5 - *(a2 + 24));
  if (!a3)
  {
    *(a2 + 32) = 0;
    *(a2 + 20) = 0;
    *(a2 + 24) = v5;
  }

  return result;
}

uint64_t sub_1819EB6B8(uint64_t result, unsigned int *a2)
{
  if (a2[28])
  {
    v3 = result;
    v4 = *(*(a2 + 11) + 24) >= 1 && a2[20] > 3;
    v5 = a2[21];
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0x1000000000;
      do
      {
        v9 = *(a2 + 11);
        v10 = (v9 + v6);
        v11 = *(v9 + v6 + 24);
        if (!v11)
        {
          break;
        }

        if (v4)
        {
          result = sub_1819D7E9C(v3, v8 + *v10 + (*a2 << 37), v10[2], v11);
          v5 = a2[21];
        }

        *(v10 + 6) = 0;
        *(v9 + v6 + 4) = 0;
        ++v7;
        v8 += 0x80000000;
        v6 += 32;
      }

      while (v7 < v5);
    }

    a2[20] = 0;
    if (*(v3 + 60))
    {
      goto LABEL_32;
    }

    v12 = a2[26];
    if (v12 < 1)
    {
      v14 = (v3 + 96);
      if ((v12 & 0x80000000) != 0)
      {
        sub_1819012D0(101409);
LABEL_23:
        v20 = *v14;
        v21 = a2[28];
        if (!sub_1818DF6EC(*v14, 2u))
        {
          v22 = v4 | (2 * v21);
          v23 = v20[16];
          if ((*(v23 + 148) & 0x9000) != 0)
          {
            sub_18193D288(v23 + 128, v22);
          }

          else
          {
            *(v23 + 128) = v22;
            *(v23 + 148) = 4;
          }

          v24 = *(*v20 + 24);
          if (v24)
          {
            xmmword_1ED452F28(v24);
          }
        }

        sqlite3_step(*(v3 + 96));
        *(v3 + 60) = sqlite3_reset(*(v3 + 96));
        v25 = *(v3 + 96);
        result = sub_1818DF6EC(v25, 1u);
        if (!result)
        {
          result = *(*v25 + 24);
          if (result)
          {
            result = xmmword_1ED452F28(result);
          }
        }

LABEL_32:
        a2[28] = 0;
        return result;
      }

      v13 = &byte_181A2878D;
    }

    else
    {
      v13 = *(a2 + 12);
      v14 = (v3 + 96);
    }

    v15 = *v14;
    if (!sub_1818DF6EC(*v14, 1u))
    {
      if (v13)
      {
        v16 = sub_1818900D0(v15[16] + 64, v13, v12, 0, 0);
        if (v16)
        {
          v17 = v16;
          v18 = *v15;
          *(v18 + 80) = v17;
          sub_181932D5C(v18, v17);
          sub_18193C988(*v15, v17);
        }
      }

      v19 = *(*v15 + 24);
      if (v19)
      {
        xmmword_1ED452F28(v19);
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1819EB900(uint64_t result, int a2, int a3)
{
  if (a3 == 1)
  {
    return result;
  }

  v5 = result;
  v6 = (result + 136);
  if (!*(result + 136))
  {
    result = sqlite3_mprintf("DELETE FROM '%q'.'%q_idx' WHERE (segid, (pgno/2)) = (?1, ?2)", *(*result + 16), *(*result + 24));
    v8 = result;
    if (!*(v5 + 60))
    {
      if (result)
      {
        result = sub_1818954B4(**v5, result, 0xFFFFFFFFLL, 133, 0, v6, 0, v7);
        if (result == 1)
        {
          v9 = 11;
        }

        else
        {
          v9 = result;
        }
      }

      else
      {
        v9 = 7;
      }

      *(v5 + 60) = v9;
    }

    if (v8)
    {
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
        --qword_1ED456A90;
        result = off_1ED452EB0(v8);
        v8 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_17;
        }

        v10 = &xmmword_1ED452F28;
      }

      result = (*v10)(v8);
    }
  }

LABEL_17:
  if (!*(v5 + 60))
  {
    v11 = *v6;
    if (!sub_1818DF6EC(*v6, 0))
    {
      v12 = v11[16];
      if ((*(v12 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v12, a2);
      }

      else
      {
        *v12 = a2;
        *(v12 + 20) = 4;
      }

      v13 = *(*v11 + 24);
      if (v13)
      {
        xmmword_1ED452F28(v13);
      }
    }

    v14 = *v6;
    if (!sub_1818DF6EC(v14, 1u))
    {
      v15 = v14[16];
      if ((*(v15 + 84) & 0x9000) != 0)
      {
        sub_18193D288(v15 + 64, a3);
      }

      else
      {
        *(v15 + 64) = a3;
        *(v15 + 84) = 4;
      }

      v16 = *(*v14 + 24);
      if (v16)
      {
        xmmword_1ED452F28(v16);
      }
    }

    sqlite3_step(*(v5 + 136));
    result = sqlite3_reset(*(v5 + 136));
    *(v5 + 60) = result;
  }

  return result;
}

uint64_t sub_1819EBB18(_DWORD *a1, int **a2, int a3, int a4)
{
  v37 = a3;
  v5 = *a2;
  v36 = *a2;
  if (a3 < 1 || (v5 = v36, a1[15]))
  {
    result = 0;
    goto LABEL_4;
  }

  result = 0;
  while (1)
  {
    v9 = v5[7];
    if (v9 >= 1)
    {
      break;
    }

    v12 = 0;
    if (a4 > 0)
    {
      goto LABEL_19;
    }

LABEL_41:
    if (v12 < 0)
    {
      goto LABEL_4;
    }

    sub_1819EBD74(a1, &v36, v12, &v37);
    if (!a1[15] && !v36[4 * v12 + 8])
    {
      sub_1819EB308(a1, v12 + 1, v36);
    }

    if (v37 <= 0)
    {
      result = 1;
      v5 = v36;
      goto LABEL_4;
    }

    if (a4 == 1)
    {
      a4 = 2;
    }

    result = 1;
    v5 = v36;
    if (a1[15])
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v5 + 9;
  do
  {
    v14 = *(v13 - 1);
    if (v14)
    {
      if (v14 > v11)
      {
        v12 = v10;
        v11 = a4;
      }

      if (v11 < a4)
      {
        goto LABEL_19;
      }

      goto LABEL_41;
    }

    v16 = *v13;
    v13 += 4;
    v15 = v16;
    if (v16 > v11)
    {
      v12 = v10;
      v11 = v15;
    }

    ++v10;
  }

  while (v9 != v10);
  if (v11 >= a4)
  {
    goto LABEL_41;
  }

LABEL_19:
  if (*(*a1 + 76))
  {
    v17 = *(*a1 + 236);
    if (v9 >= 1 && v17 >= 1)
    {
      v19 = 0;
      v20 = 0;
      v12 = -1;
      while (1)
      {
        v22 = &v5[4 * v19 + 8];
        v23 = *(v22 + 4);
        if (v23 >= 1)
        {
          break;
        }

LABEL_25:
        ++v19;
        if (*v22)
        {
          v21 = 1;
        }

        else
        {
          v21 = v19 == v9;
        }

        if (v21)
        {
          goto LABEL_41;
        }
      }

      v24 = *(v22 + 8);
      if (v23 == 1)
      {
        v25 = 0;
        v26 = 0uLL;
      }

      else
      {
        v25 = v23 & 0x7FFFFFFE;
        v27 = v24 + 6;
        v28 = 0uLL;
        v29 = v25;
        v30 = 0uLL;
        do
        {
          v31 = *(v27 - 56);
          v32 = *v27;
          v27 += 7;
          v30 = vaddq_s64(v31, v30);
          v28 = vaddq_s64(v32, v28);
          v29 -= 2;
        }

        while (v29);
        v26 = vaddq_s64(v28, v30);
        if (v25 == v23)
        {
LABEL_37:
          if (v26.i64[1] >= 1 && v17 <= (100 * v26.i64[0] / v26.i64[1]) && v20 < (100 * v26.i64[0] / v26.i64[1]))
          {
            v20 = 100 * v26.i64[0] / v26.i64[1];
            v12 = v19;
          }

          goto LABEL_25;
        }
      }

      v33 = &v24[2].u64[7 * v25 + 1];
      v34 = v23 - v25;
      do
      {
        v35 = *v33;
        v33 += 7;
        v26 = vaddq_s64(v35, v26);
        --v34;
      }

      while (v34);
      goto LABEL_37;
    }
  }

LABEL_4:
  *a2 = v5;
  return result;
}

uint64_t sub_1819EBD74(uint64_t result, int **a2, signed int a3, _DWORD *a4)
{
  v4 = a4;
  v6 = result;
  v223 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = (*a2 + 8);
  v9 = v8 + 16 * a3;
  v221 = 0;
  if (a4)
  {
    v205 = *a4;
  }

  else
  {
    v205 = 0;
  }

  v220 = 0;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v213 = 0u;
  v209 = *(*result + 116);
  v10 = *v9;
  if (*v9)
  {
    v11 = v8 + 16 * a3;
    v189 = v11 + 16;
    v12 = *(v11 + 24) + 56 * *(v11 + 20);
    v14 = *(v12 - 56);
    v13 = v12 - 56;
    sub_1819E8474(result, &v213, v14);
    DWORD2(v213) = *(v13 + 8) + 1;
    LODWORD(v220) = 0;
    v15 = *(v11 + 20);
  }

  else
  {
    v17 = (result + 60);
    v16 = *(result + 60);
    if (v16)
    {
      v18 = 0;
    }

    else if (v7[6] < 2000)
    {
      memset(v222, 0, 252);
      v163 = v7[7];
      if (v163 >= 1)
      {
        for (i = 0; i != v163; ++i)
        {
          v165 = v8 + 16 * i;
          v166 = *(v165 + 4);
          if (v166 >= 1)
          {
            v167 = *(v165 + 8);
            do
            {
              v168 = *v167;
              v167 += 14;
              v169 = v168 - 1;
              if ((v168 - 1) <= 0x7CF)
              {
                *(v222 + (v169 >> 5)) |= 1 << v169;
              }

              --v166;
            }

            while (v166);
          }
        }
      }

      v18 = -32;
      v170 = v222;
      do
      {
        v172 = *v170++;
        v171 = v172;
        v18 += 32;
      }

      while (v172 == -1);
      v173 = 0;
      do
      {
        v174 = v171 >> v173++;
        ++v18;
      }

      while ((v174 & 1) != 0);
      v16 = 0;
    }

    else
    {
      v18 = 0;
      v16 = 13;
      *v17 = 13;
    }

    if (v7[7] - 1 == a3)
    {
      result = sub_1819EAFC8(result + 60, a2);
      v7 = *a2;
      v16 = *v17;
    }

    if (v16)
    {
      return result;
    }

    v9 = &v7[4 * a3 + 8];
    v176 = *(v9 + 20);
    v177 = v176 + 1;
    v178 = v176 == -1;
    v179 = *(v9 + 24);
    result = sqlite3_initialize();
    if (v178 || result || (result = sub_18190287C(v179, 56 * v177, 211794990)) == 0)
    {
      *v17 = 7;
      return result;
    }

    v180 = result + 56 * *(v9 + 20);
    *(v180 + 48) = 0;
    *(v180 + 16) = 0u;
    *(v180 + 32) = 0u;
    *v180 = 0u;
    *(v9 + 24) = result;
    v4 = a4;
    if (*v17)
    {
      return result;
    }

    sub_1819E8474(v6, &v213, v18);
    v181 = *(v9 + 20);
    v13 = *(v9 + 24) + 56 * v181;
    v15 = v181 + 1;
    v189 = v9 + 16;
    *(v9 + 20) = v181 + 1;
    *v13 = v18;
    *(v13 + 4) = 1;
    ++v7[6];
    v10 = *(v9 + 4);
    if (*(v7 + 2))
    {
      v182 = *(v9 + 8);
      v183 = *(v182 + 16);
      v184 = *(v182 + 56 * v10 - 32);
      *(v13 + 16) = v183;
      *(v13 + 24) = v184;
    }
  }

  v203 = v15 == 1 && v7[7] == a3 + 2;
  v212 = v9;
  v195 = v7;
  v207 = v10;
  sub_1819E5E40(v6, v7, 0x20u, 0, 0, 0, a3, v10, &v221);
  __s2 = 0;
  if (!*(v6 + 60))
  {
    __s2 = 0;
    v39 = 0;
    v201 = 0;
    v40 = 0;
    v41 = v221;
    while (1)
    {
      if (*(v41 + 20))
      {
        goto LABEL_12;
      }

      v43 = v41 + 104 + (*(*(v41 + 96) + 4) << 7);
      v44 = *(v43 + 104);
      v45 = *(v43 + 96);
      if (v44 == v39 && (v39 < 1 || !memcmp(*(v43 + 96), __s2, v39)))
      {
        goto LABEL_79;
      }

      if (v4 && SHIDWORD(v217) > v205)
      {
        goto LABEL_12;
      }

      if (!v44)
      {
        break;
      }

      LODWORD(v46) = v201;
      if (v201 >= v44)
      {
        goto LABEL_83;
      }

      if (!v201)
      {
        LODWORD(v46) = 64;
      }

      v46 = v46;
      do
      {
        v47 = v46;
        v46 *= 2;
      }

      while (v47 < v44);
      if (!sqlite3_initialize())
      {
        v48 = sub_18190287C(__s2, v47, 688041480);
        if (v48)
        {
          __s2 = v48;
          v201 = v47;
LABEL_83:
          memcpy(__s2, v45, v44);
          v40 = 0;
          v39 = v44;
          if (*(v43 + 120))
          {
            goto LABEL_86;
          }

          goto LABEL_84;
        }
      }

      v39 = 0;
      v40 = 0;
      *(v6 + 60) = 7;
      if (*(v43 + 120))
      {
        goto LABEL_86;
      }

LABEL_84:
      if (v203 || !*(v43 + 124))
      {
        goto LABEL_62;
      }

LABEL_86:
      v49 = *(v6 + 60);
      if (!(v49 | v40))
      {
        sub_1819E8AD4(v6, &v213, v44, v45);
        v49 = *(v6 + 60);
        v40 = 1;
      }

      if (!v49)
      {
        v50 = *(v41 + 104 + (*(*(v41 + 96) + 4) << 7) + 112);
        if (DWORD2(v215) + DWORD2(v214) >= *(*v6 + 196))
        {
          sub_1819EA9A4(v6, &v213);
        }

        if (BYTE9(v217))
        {
          *v214 = bswap32(WORD4(v214)) >> 16;
          sub_1819EA344(v6, &v213, v50);
        }

        if (BYTE8(v217))
        {
          v51 = DWORD2(v214);
          goto LABEL_96;
        }

        v51 = DWORD2(v214);
        if (BYTE9(v217))
        {
LABEL_96:
          v52 = (v51 + 9);
          if (v52 <= HIDWORD(v214))
          {
            v56 = v214;
            goto LABEL_105;
          }

          if (HIDWORD(v214))
          {
            LODWORD(v53) = HIDWORD(v214);
          }

          else
          {
            LODWORD(v53) = 64;
          }

          v53 = v53;
          do
          {
            v54 = v53;
            v53 *= 2;
          }

          while (v54 < v52);
          v55 = v214;
          if (!sqlite3_initialize())
          {
            v56 = sub_18190287C(v55, v54, 688041480);
            if (v56)
            {
              HIDWORD(v214) = v54;
              *&v214 = v56;
              v51 = DWORD2(v214);
LABEL_105:
              v57 = (v56 + v51);
              if (v50 <= 0x7F)
              {
                v57->i8[0] = v50;
                goto LABEL_107;
              }

              if (!(v50 >> 14))
              {
                v57->i8[0] = (v50 >> 7) | 0x80;
                v59 = v50 & 0x7F;
                goto LABEL_110;
              }

              v66 = v50;
LABEL_123:
              v58 = sub_1819436D0(v57, v66);
              goto LABEL_124;
            }
          }

LABEL_103:
          *(v6 + 60) = 7;
        }

        else
        {
          v60 = v217;
          v61 = (DWORD2(v214) + 9);
          if (v61 <= HIDWORD(v214))
          {
            v65 = v214;
          }

          else
          {
            if (HIDWORD(v214))
            {
              LODWORD(v62) = HIDWORD(v214);
            }

            else
            {
              LODWORD(v62) = 64;
            }

            v62 = v62;
            do
            {
              v63 = v62;
              v62 *= 2;
            }

            while (v63 < v61);
            v64 = v214;
            if (sqlite3_initialize())
            {
              goto LABEL_103;
            }

            v65 = sub_18190287C(v64, v63, 688041480);
            if (!v65)
            {
              goto LABEL_103;
            }

            HIDWORD(v214) = v63;
            *&v214 = v65;
            v51 = DWORD2(v214);
          }

          v66 = v50 - v60;
          v57 = (v65 + v51);
          if (v50 - v60 > 0x7F)
          {
            if (v66 >> 14)
            {
              goto LABEL_123;
            }

            v57->i8[0] = (v66 >> 7) | 0x80;
            v59 = v66 & 0x7F;
LABEL_110:
            v57->i8[1] = v59;
            v58 = 2;
          }

          else
          {
            v57->i8[0] = v66;
LABEL_107:
            v58 = 1;
          }

LABEL_124:
          DWORD2(v214) += v58;
        }

        *&v217 = v50;
        WORD4(v217) = 0;
      }

      if (v209 != 1)
      {
        v72 = *(v43 + 120);
        v73 = *(v43 + 124);
        v74 = DWORD2(v214);
        v75 = (DWORD2(v214) + 9);
        if (v75 > HIDWORD(v214))
        {
          if (HIDWORD(v214))
          {
            LODWORD(v76) = HIDWORD(v214);
          }

          else
          {
            LODWORD(v76) = 64;
          }

          v76 = v76;
          do
          {
            v77 = v76;
            v76 *= 2;
          }

          while (v77 < v75);
          v78 = v214;
          if (sqlite3_initialize() || (v79 = sub_18190287C(v78, v77, 688041480)) == 0)
          {
            *(v6 + 60) = 7;
            v4 = a4;
          }

          else
          {
            HIDWORD(v214) = v77;
            *&v214 = v79;
            v74 = DWORD2(v214);
LABEL_145:
            v80 = v73 + 2 * v72;
            v81 = (v79 + v74);
            if (v80 <= 0x7F)
            {
              v81->i8[0] = v80;
              v42 = 1;
              v4 = a4;
            }

            else
            {
              v4 = a4;
              if (v80 >> 14)
              {
                v42 = sub_1819436D0(v81, v80);
              }

              else
              {
                v81->i8[0] = (v80 >> 7) | 0x80;
                v81->i8[1] = v80 & 0x7F;
                v42 = 2;
              }
            }

            DWORD2(v214) += v42;
          }

          sub_1819ED198(v6, v43, &v213, sub_1819ED428);
          goto LABEL_62;
        }

        v79 = v214;
        goto LABEL_145;
      }

      if (!*(v43 + 124))
      {
        goto LABEL_62;
      }

      v67 = DWORD2(v214);
      v68 = (DWORD2(v214) + 9);
      if (v68 <= HIDWORD(v214))
      {
        v82 = v214;
      }

      else
      {
        if (HIDWORD(v214))
        {
          LODWORD(v69) = HIDWORD(v214);
        }

        else
        {
          LODWORD(v69) = 64;
        }

        v69 = v69;
        do
        {
          v70 = v69;
          v69 *= 2;
        }

        while (v70 < v68);
        v71 = v214;
        if (sqlite3_initialize() || (v82 = sub_18190287C(v71, v70, 688041480)) == 0)
        {
          *(v6 + 60) = 7;
          goto LABEL_150;
        }

        HIDWORD(v214) = v70;
        *&v214 = v82;
        v67 = DWORD2(v214);
      }

      *(v82 + v67) = 0;
      ++DWORD2(v214);
LABEL_150:
      if (*(v43 + 120) >= 1)
      {
        v83 = DWORD2(v214);
        v84 = (DWORD2(v214) + 9);
        if (v84 <= HIDWORD(v214))
        {
          v88 = v214;
LABEL_160:
          *(v88 + v83) = 0;
          ++DWORD2(v214);
          goto LABEL_62;
        }

        if (HIDWORD(v214))
        {
          LODWORD(v85) = HIDWORD(v214);
        }

        else
        {
          LODWORD(v85) = 64;
        }

        v85 = v85;
        do
        {
          v86 = v85;
          v85 *= 2;
        }

        while (v86 < v84);
        v87 = v214;
        if (!sqlite3_initialize())
        {
          v88 = sub_18190287C(v87, v86, 688041480);
          if (v88)
          {
            HIDWORD(v214) = v86;
            *&v214 = v88;
            v83 = DWORD2(v214);
            goto LABEL_160;
          }
        }

        *(v6 + 60) = 7;
      }

LABEL_62:
      v41 = v221;
      sub_1819DEB74(v6, v221, 0, 0);
      if (*(v6 + 60))
      {
        goto LABEL_12;
      }
    }

    v39 = 0;
    v40 = 0;
LABEL_79:
    if (*(v43 + 120))
    {
      goto LABEL_86;
    }

    goto LABEL_84;
  }

LABEL_12:
  sub_1819EAC00(v6, &v213, (v13 + 8));
  v19 = v221;
  v20 = &dword_1ED452E80;
  v210 = v221;
  if (*(v6 + 60) || *(v221 + 20))
  {
    if (v207 < 1)
    {
LABEL_44:
      v34 = *(v212 + 4) - v207;
      if (v34)
      {
        memmove(*(v212 + 8), (*(v212 + 8) + 56 * v207), 56 * v34);
      }

      v195[6] -= v207;
      v35 = *(v212 + 4) - v207;
      *v212 = 0;
      *(v212 + 4) = v35;
      v4 = a4;
      v36 = v210;
      if (!*(v13 + 8))
      {
        --*(v189 + 4);
        --v195[6];
      }

      v20 = &dword_1ED452E80;
      goto LABEL_49;
    }

    v21 = 0;
    while (1)
    {
      v22 = (*(v212 + 8) + v21);
      *(v13 + 48) += *(v22 + 6) - *(v22 + 5);
      v23 = *v22;
      sub_1819ED620(v6, v23 << 37, ((v23 + 1) << 37) - 1);
      v24 = v22[8];
      if (v24)
      {
        sub_1819ED620(v6, (v23 + 0x10000) << 37, v24 + ((v23 + 0x10000) << 37) - 1);
      }

      if (*(v6 + 104))
      {
        goto LABEL_37;
      }

      v25 = sqlite3_mprintf("DELETE FROM '%q'.'%q_idx' WHERE segid=?", *(*v6 + 16), *(*v6 + 24));
      v27 = v25;
      if (*(v6 + 60))
      {
        if (!v25)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (!v25)
        {
          *(v6 + 60) = 7;
          goto LABEL_37;
        }

        v28 = sub_1818954B4(**v6, v25, 0xFFFFFFFFLL, 133, 0, (v6 + 104), 0, v26);
        if (v28 == 1)
        {
          v29 = 11;
        }

        else
        {
          v29 = v28;
        }

        *(v6 + 60) = v29;
        if (!v27)
        {
          goto LABEL_37;
        }
      }

      v30 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v27);
        --qword_1ED456A90;
        off_1ED452EB0(v27);
        v27 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_37;
        }

        v30 = &xmmword_1ED452F28;
      }

      (*v30)(v27);
LABEL_37:
      if (!*(v6 + 60))
      {
        v31 = *(v6 + 104);
        if (!sub_1818DF6EC(v31, 0))
        {
          v32 = v31[16];
          if ((*(v32 + 20) & 0x9000) != 0)
          {
            sub_18193D288(v32, v23);
          }

          else
          {
            *v32 = v23;
            *(v32 + 20) = 4;
          }

          v33 = *(*v31 + 24);
          if (v33)
          {
            xmmword_1ED452F28(v33);
          }
        }

        sqlite3_step(*(v6 + 104));
        *(v6 + 60) = sqlite3_reset(*(v6 + 104));
      }

      v21 += 56;
      if (56 * v207 == v21)
      {
        goto LABEL_44;
      }
    }
  }

  v89 = v212;
  if (*(v221 + 72) < 1)
  {
    goto LABEL_338;
  }

  v196 = 0;
  v90 = 0;
  v202 = 0;
  v91 = v221 + 104;
  v206 = v221 + 104;
  while (!*(v6 + 60))
  {
    v92 = (v91 + (v90 << 7));
    v93 = *v92;
    if (*v92)
    {
      if (v92[2])
      {
        v94 = *v93 << 37;
        v95 = *(v92 + 15);
        v204 = *(v92 + 14);
        v96 = sub_1819DFC90(v6, v94 + v204);
        if (!v96)
        {
          v4 = a4;
          goto LABEL_277;
        }

        v97 = v96;
        v98 = v96[2];
        if (v98 < 4 || (v99 = v96[3], v99 > v98))
        {
          *(v6 + 60) = 267;
          v100 = (v20 + 12);
          if (*v20)
          {
            v101 = xmmword_1ED456AF0;
            v4 = a4;
            if (xmmword_1ED456AF0)
            {
              goto LABEL_187;
            }

            goto LABEL_188;
          }

          v4 = a4;
LABEL_276:
          (*v100)(v97);
          goto LABEL_277;
        }

        if (v95 > v99)
        {
          *(v6 + 60) = 267;
LABEL_273:
          v100 = (v20 + 12);
          v4 = a4;
          if (!*v20)
          {
            goto LABEL_276;
          }

          v101 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
LABEL_187:
            xmmword_1ED452F18(v101);
          }

LABEL_188:
          qword_1ED456A48[0] -= xmmword_1ED452EC0(v97);
          --qword_1ED456A90;
          off_1ED452EB0(v97);
          v97 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            v100 = &xmmword_1ED452F28;
            goto LABEL_276;
          }

LABEL_277:
          v91 = v206;
          goto LABEL_178;
        }

        v102 = v196;
        if (v98 <= v196)
        {
          goto LABEL_212;
        }

        v103 = v196 ? v196 : 64;
        do
        {
          v104 = v103;
          v103 *= 2;
        }

        while (v104 < v98);
        if (sqlite3_initialize() || (v105 = sub_18190287C(v202, v104, 688041480)) == 0)
        {
          *(v6 + 60) = 7;
          v102 = v196;
        }

        else
        {
          v102 = v104;
          v202 = v105;
        }

        if (v102 > 3)
        {
LABEL_212:
          *v202 = 0;
          v109 = 4;
        }

        else
        {
          v106 = v102;
          if (v102)
          {
            v107 = v102;
          }

          else
          {
            v107 = 64;
          }

          do
          {
            v108 = v107;
            v107 *= 2;
          }

          while (v108 < 4);
          if (!sqlite3_initialize())
          {
            v110 = sub_18190287C(v202, v108, 688041480);
            if (v110)
            {
              v102 = v108;
              v202 = v110;
              goto LABEL_212;
            }
          }

          v109 = 0;
          *(v6 + 60) = 7;
          v102 = v106;
        }

        v111 = *(v92 + 26);
        v112 = v109 | 9;
        if (v112 <= v102)
        {
LABEL_222:
          v118 = (v202 + v109);
          if (v111 > 0x7F)
          {
            if (v111 >> 14)
            {
              v120 = v111;
              v121 = v102;
              v122 = v109;
              v119 = sub_1819436D0(v118, v120);
              v109 = v122;
              v102 = v121;
            }

            else
            {
              v118->i8[0] = (v111 >> 7) | 0x80;
              v118->i8[1] = v111 & 0x7F;
              v119 = 2;
            }
          }

          else
          {
            v118->i8[0] = v111;
            v119 = 1;
          }

          v116 = v119 + v109;
        }

        else
        {
          v113 = v109;
          v197 = v102;
          if (v102)
          {
            v114 = v102;
          }

          else
          {
            v114 = 64;
          }

          do
          {
            v115 = v114;
            v114 *= 2;
          }

          while (v115 < v112);
          if (!sqlite3_initialize())
          {
            v117 = sub_18190287C(v202, v115, 688041480);
            if (v117)
            {
              v102 = v115;
              v202 = v117;
              v89 = v212;
              v109 = v113;
              goto LABEL_222;
            }
          }

          *(v6 + 60) = 7;
          v89 = v212;
          v102 = v197;
          v116 = v113;
        }

        v123 = *(v92 + 26);
        if (v123)
        {
          v124 = v92[12];
          v125 = (v123 + v116);
          v198 = v102;
          if (v125 <= v102)
          {
            goto LABEL_239;
          }

          v186 = v92[12];
          v190 = v116;
          if (v102)
          {
            LODWORD(v126) = v102;
          }

          else
          {
            LODWORD(v126) = 64;
          }

          v126 = v126;
          do
          {
            v127 = v126;
            v126 *= 2;
          }

          while (v127 < v125);
          if (sqlite3_initialize() || (v128 = sub_18190287C(v202, v127, 688041480)) == 0)
          {
            *(v6 + 60) = 7;
            v89 = v212;
            v102 = v198;
            v116 = v190;
          }

          else
          {
            v198 = v127;
            v202 = v128;
            v89 = v212;
            v124 = v186;
            v116 = v190;
LABEL_239:
            memcpy((v202 + v116), v124, v123);
            v116 = v125;
            v102 = v198;
          }
        }

        v129 = v97[3];
        v130 = (v129 - v95);
        if (v129 == v95)
        {
          goto LABEL_252;
        }

        v131 = *v97;
        v132 = (v130 + v116);
        v199 = v102;
        if (v132 <= v102)
        {
          goto LABEL_251;
        }

        v187 = *v97;
        v191 = v116;
        if (v102)
        {
          LODWORD(v133) = v102;
        }

        else
        {
          LODWORD(v133) = 64;
        }

        v133 = v133;
        do
        {
          v134 = v133;
          v133 *= 2;
        }

        while (v134 < v132);
        if (sqlite3_initialize() || (v135 = sub_18190287C(v202, v134, 688041480)) == 0)
        {
          *(v6 + 60) = 7;
          v89 = v212;
          v19 = v210;
          v102 = v199;
          v116 = v191;
        }

        else
        {
          v199 = v134;
          v202 = v135;
          v89 = v212;
          v131 = v187;
          v116 = v191;
LABEL_251:
          memcpy((v202 + v116), (v131 + v95), v130);
          v116 = v132;
          v102 = v199;
LABEL_252:
          v19 = v210;
          if (!*(v6 + 60))
          {
            *(v202 + 2) = bswap32(v116) >> 16;
          }
        }

        v136 = (v116 + 9);
        if (v136 <= v102)
        {
LABEL_264:
          *(v202 + v116) = 4;
          v139 = v116 + 1;
        }

        else
        {
          v192 = v116;
          v200 = v102;
          if (v102)
          {
            LODWORD(v137) = v102;
          }

          else
          {
            LODWORD(v137) = 64;
          }

          v137 = v137;
          do
          {
            v138 = v137;
            v137 *= 2;
          }

          while (v138 < v136);
          if (!sqlite3_initialize())
          {
            v140 = sub_18190287C(v202, v138, 688041480);
            if (v140)
            {
              v102 = v138;
              v202 = v140;
              v116 = v192;
              goto LABEL_264;
            }
          }

          *(v6 + 60) = 7;
          v102 = v200;
          v139 = v192;
        }

        v196 = v102;
        if (*(v92 + 3) != *(v92 + 14))
        {
          v144 = v139;
          goto LABEL_272;
        }

        v141 = v20;
        v142 = *(v92 + 17);
        v143 = v97[3];
        if (v142 >= v143 || *(v92 + 16) > v97[2])
        {
          v144 = v139;
          goto LABEL_269;
        }

        v145 = (v139 + 9);
        if (v145 <= v102)
        {
LABEL_288:
          v150 = v139 + (v142 + ~v143) - 4;
          v151 = (v202 + v139);
          if (v150 > 0x7F)
          {
            v20 = v141;
            if (v150 >> 14)
            {
              v153 = v102;
              v154 = v139;
              v152 = sub_1819436D0(v151, v150);
              v139 = v154;
              v102 = v153;
            }

            else
            {
              v151->i8[0] = (v150 >> 7) | 0x80;
              v151->i8[1] = v150 & 0x7F;
              v152 = 2;
            }
          }

          else
          {
            v151->i8[0] = v150;
            v152 = 1;
            v20 = v141;
          }

          v148 = v152 + v139;
        }

        else
        {
          v193 = v139;
          if (v102)
          {
            LODWORD(v146) = v102;
          }

          else
          {
            LODWORD(v146) = 64;
          }

          v146 = v146;
          do
          {
            v147 = v146;
            v146 *= 2;
          }

          while (v147 < v145);
          if (!sqlite3_initialize())
          {
            v149 = sub_18190287C(v202, v147, 688041480);
            if (v149)
            {
              v102 = v147;
              v202 = v149;
              v139 = v193;
              goto LABEL_288;
            }
          }

          *(v6 + 60) = 7;
          v20 = v141;
          v102 = v196;
          v148 = v193;
        }

        v155 = v97[2];
        v156 = *(v92 + 16);
        v157 = (v155 - v156);
        v196 = v102;
        if (v155 == v156)
        {
          v144 = v148;
LABEL_270:
          v19 = v210;
LABEL_272:
          (*v92)[1] = *(v92 + 14);
          sub_1819ED620(v6, v94 | 1, v94 + v204);
          sub_1819D7E9C(v6, v94 + v204, v202, v144);
          goto LABEL_273;
        }

        v158 = *v97;
        v159 = (v157 + v148);
        if (v159 <= v102)
        {
LABEL_306:
          memcpy((v202 + v148), (v158 + v156), v157);
          v144 = v159;
        }

        else
        {
          v188 = *v97;
          v194 = (v155 - v156);
          v144 = v148;
          if (v102)
          {
            LODWORD(v160) = v102;
          }

          else
          {
            LODWORD(v160) = 64;
          }

          v160 = v160;
          do
          {
            v161 = v160;
            v160 *= 2;
          }

          while (v161 < v159);
          if (!sqlite3_initialize())
          {
            v162 = sub_18190287C(v202, v161, 688041480);
            if (v162)
            {
              v196 = v161;
              v202 = v162;
              v89 = v212;
              v148 = v144;
              v158 = v188;
              v157 = v194;
              goto LABEL_306;
            }
          }

          *(v6 + 60) = 7;
          v89 = v212;
        }

LABEL_269:
        v20 = v141;
        goto LABEL_270;
      }

      v93[1] = 0;
      v93[2] = 0;
    }

LABEL_178:
    if (++v90 >= *(v19 + 72))
    {
      break;
    }
  }

  if (v202)
  {
    v185 = (v20 + 12);
    if (!*v20)
    {
      goto LABEL_337;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v202);
    --qword_1ED456A90;
    off_1ED452EB0(v202);
    v202 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v185 = &xmmword_1ED452F28;
LABEL_337:
      (*v185)(v202);
    }
  }

LABEL_338:
  *v89 = v207;
  v36 = v221;
LABEL_49:
  result = sub_1819DB2CC(v36);
  if (__s2)
  {
    v38 = *v20;
    v37 = (v20 + 12);
    if (!v38)
    {
      goto LABEL_55;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(__s2);
    --qword_1ED456A90;
    result = off_1ED452EB0(__s2);
    __s2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v37 = &xmmword_1ED452F28;
LABEL_55:
      result = (*v37)(__s2);
    }
  }

  if (v4)
  {
    *v4 -= HIDWORD(v217);
  }

  return result;
}

unsigned int *sub_1819ED198(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a2;
  v8 = 0;
  v9 = *(a2 + 30);
  v10 = a2[2];
  v11 = a2[4];
  v12 = v11 + *v10;
  v13 = v10[3] - v11;
  if (v13 <= v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(a2 + 3);
  if ((a2[1] & 2) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = ~v15 + v16;
  for (i = v15 + 1; ; ++i)
  {
    result = a4(a1, a3, v12, v14);
    if (!v8)
    {
      goto LABEL_16;
    }

    v20 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_15;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
    --qword_1ED456A90;
    result = off_1ED452EB0(v8);
    v8 = xmmword_1ED456AF0;
    v6 = a2;
    if (xmmword_1ED456AF0)
    {
      v20 = &xmmword_1ED452F28;
LABEL_15:
      result = (*v20)(v8);
    }

LABEL_16:
    LODWORD(v9) = v9 - v14;
    if (v9 < 1)
    {
      return result;
    }

    if (!*v6)
    {
      *(a1 + 60) = 267;
      return result;
    }

    result = sub_1819DFC90(a1, i + (**v6 << 37));
    if (!result)
    {
      return result;
    }

    v8 = result;
    v21 = result[2];
    if (v21 < 4)
    {
      break;
    }

    v22 = result[3];
    if (v22 > v21)
    {
      break;
    }

    v23 = *result;
    v24 = v22 - 4;
    if (v9 >= v24)
    {
      v14 = v24;
    }

    else
    {
      v14 = v9;
    }

    if (!v17)
    {
      v6[3] = result;
      v8 = 0;
    }

    v12 = v23 + 4;
    --v17;
  }

  *(a1 + 60) = 267;
  v25 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_31;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
  --qword_1ED456A90;
  result = off_1ED452EB0(v8);
  v8 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v25 = &xmmword_1ED452F28;
LABEL_31:
    v26 = *v25;

    return v26(v8);
  }

  return result;
}

uint64_t sub_1819ED428(uint64_t result, uint64_t a2, char *__src, size_t __n)
{
  v4 = __n;
  for (i = result; !i[15]; result = sub_1819EA9A4(i, a2))
  {
    v15 = *(a2 + 24);
    v16 = *(a2 + 40) + v15;
    v17 = *(*i + 196);
    if (v16 + v4 < v17)
    {
      break;
    }

    v18 = v17 - v16;
    if (v17 - v16 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      LODWORD(v14) = 0;
      do
      {
        v24 = 0;
        v14 = v14 + sub_1819DFFB0(&__src[v14], &v24);
      }

      while (v14 < v18);
      v19 = (v14 + v15);
      LODWORD(v20) = *(a2 + 28);
      if (v19 <= v20)
      {
        v23 = *(a2 + 16);
LABEL_26:
        memcpy((v23 + v15), __src, v14);
        *(a2 + 24) += v14;
        goto LABEL_13;
      }

      if (!v20)
      {
        LODWORD(v20) = 64;
      }

      v20 = v20;
      do
      {
        v21 = v20;
        v20 *= 2;
      }

      while (v21 < v19);
      v22 = *(a2 + 16);
      if (!sqlite3_initialize())
      {
        v23 = sub_18190287C(v22, v21, 688041480);
        if (v23)
        {
          *(a2 + 28) = v21;
          *(a2 + 16) = v23;
          v15 = *(a2 + 24);
          goto LABEL_26;
        }
      }

      i[15] = 7;
    }

LABEL_13:
    __src += v14;
    v4 -= v14;
  }

  if (v4 >= 1)
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 28);
    v10 = (v8 + v4);
    if (v10 <= v9)
    {
      result = *(a2 + 16);
    }

    else
    {
      if (v9)
      {
        LODWORD(v11) = *(a2 + 28);
      }

      else
      {
        LODWORD(v11) = 64;
      }

      v11 = v11;
      do
      {
        v12 = v11;
        v11 *= 2;
      }

      while (v12 < v10);
      v13 = *(a2 + 16);
      result = sqlite3_initialize();
      if (result || (result = sub_18190287C(v13, v12, 688041480)) == 0)
      {
        i[15] = 7;
        return result;
      }

      *(a2 + 28) = v12;
      *(a2 + 16) = result;
      v8 = *(a2 + 24);
    }

    result = memcpy((result + v8), __src, v4);
    *(a2 + 24) += v4;
  }

  return result;
}

uint64_t sub_1819ED620(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 60))
  {
    return result;
  }

  v5 = result;
  v6 = (result + 88);
  v7 = *(result + 88);
  if (!v7)
  {
    result = sqlite3_mprintf("DELETE FROM '%q'.'%q_data' WHERE id>=? AND id<=?", *(*result + 16), *(*result + 24));
    v10 = result;
    if (!*(v5 + 60))
    {
      if (result)
      {
        result = sub_1818954B4(**v5, result, 0xFFFFFFFFLL, 133, 0, v6, 0, v9);
        if (result == 1)
        {
          v11 = 11;
        }

        else
        {
          v11 = result;
        }
      }

      else
      {
        v11 = 7;
      }

      *(v5 + 60) = v11;
    }

    if (!v10)
    {
      goto LABEL_30;
    }

    v16 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
      --qword_1ED456A90;
      result = off_1ED452EB0(v10);
      v10 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_30;
      }

      v16 = &xmmword_1ED452F28;
    }

    result = (*v16)(v10);
LABEL_30:
    if (*(v5 + 60))
    {
      return result;
    }

    v7 = *v6;
  }

  if (!sub_1818DF6EC(v7, 0))
  {
    v8 = v7[16];
    if ((*(v8 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v8, a2);
    }

    else
    {
      *v8 = a2;
      *(v8 + 20) = 4;
    }

    v12 = *(*v7 + 24);
    if (v12)
    {
      xmmword_1ED452F28(v12);
    }
  }

  v13 = *v6;
  if (!sub_1818DF6EC(v13, 1u))
  {
    v14 = v13[16];
    if ((*(v14 + 84) & 0x9000) != 0)
    {
      sub_18193D288(v14 + 64, a3);
    }

    else
    {
      *(v14 + 64) = a3;
      *(v14 + 84) = 4;
    }

    v15 = *(*v13 + 24);
    if (v15)
    {
      xmmword_1ED452F28(v15);
    }
  }

  sqlite3_step(*(v5 + 88));
  result = sqlite3_reset(*(v5 + 88));
  *(v5 + 60) = result;
  return result;
}

char *sub_1819ED848(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 16);
  v6 = *v5;
  v7 = *(a2 + 32);
  result = (*v5 + v7);
  v9 = *result;
  if (*result < 0)
  {
    v11 = result[1];
    if (result[1] < 0)
    {
      v12 = result[2];
      if (v12 < 0)
      {
        v32 = 0;
        v13 = a3;
        result = sub_1819DFFB0(result, &v32);
        a3 = v13;
        v9 = v32 & 0x7FFFFFFF;
        v10 = result;
      }

      else
      {
        v9 = ((v9 & 0x7F) << 14) | ((v11 & 0x7F) << 7) | v12;
        v10 = 3;
      }
    }

    else
    {
      v9 = ((v9 & 0x7F) << 7) | v11;
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  v14 = v10 + v7;
  v15 = v9;
  v16 = v14 + v9;
  if (v16 > *(v5 + 3) || (v9 ? (v17 = *(a2 + 104) < a3) : (v17 = 1), v17))
  {
LABEL_14:
    *(a1 + 60) = 267;
    return result;
  }

  *(a2 + 104) = a3;
  v18 = v9 + a3;
  LODWORD(v19) = *(a2 + 108);
  if (v18 <= v19)
  {
    v22 = *(a2 + 96);
  }

  else
  {
    if (!v19)
    {
      LODWORD(v19) = 64;
    }

    v19 = v19;
    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 < v18);
    v21 = *(a2 + 96);
    if (sqlite3_initialize() || (v22 = sub_18190287C(v21, v20, 688041480)) == 0)
    {
      *(a1 + 60) = 7;
      goto LABEL_25;
    }

    *(a2 + 108) = v20;
    *(a2 + 96) = v22;
    a3 = *(a2 + 104);
  }

  memcpy((v22 + a3), (v6 + v14), v15);
  *(a2 + 104) += v15;
LABEL_25:
  *(a2 + 56) = *(a2 + 12);
  *(a2 + 60) = v16;
  *(a2 + 32) = v16;
  v23 = *(a2 + 64);
  v24 = *(a2 + 16);
  v25 = *(v24 + 8);
  if (v23 >= v25)
  {
    v29 = v25 + 1;
  }

  else
  {
    v26 = v6 + v23;
    v27 = *(v6 + v23);
    if (*(v6 + v23) < 0)
    {
      v30 = *(v26 + 1);
      if (*(v26 + 1) < 0)
      {
        v31 = *(v26 + 2);
        if (v31 < 0)
        {
          v32 = 0;
          v28 = sub_1819DFFB0(v26, &v32);
          v27 = v32 & 0x7FFFFFFF;
        }

        else
        {
          v27 = ((v27 & 0x7F) << 14) | ((v30 & 0x7F) << 7) | v31;
          v28 = 3;
        }
      }

      else
      {
        v27 = ((v27 & 0x7F) << 7) | v30;
        v28 = 2;
      }
    }

    else
    {
      v28 = 1;
    }

    v29 = *(a2 + 68) + v27;
    *(a2 + 64) = v28 + v23;
  }

  *(a2 + 68) = v29;
  if (v16 < *(v24 + 12))
  {
LABEL_41:
    result = sub_1819DFFB0((*v24 + v16), (a2 + 112));
    *(a2 + 32) = v16 + result;
    return result;
  }

  v16 = 4;
  while (1)
  {
    result = sub_1819E0144(a1, a2);
    v24 = *(a2 + 16);
    if (!v24)
    {
      break;
    }

    if (*(v24 + 12) > 4)
    {
      goto LABEL_41;
    }
  }

  if (!*(a1 + 60))
  {
    goto LABEL_14;
  }

  return result;
}

unsigned int *sub_1819EDAC4(unsigned int *a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v5 < 0 != v4)
  {

    return sub_1819DF754(a1, a2);
  }

  else
  {
    v6 = **(a2 + 16);
    v10 = 0;
    *(a2 + 72) = v5;
    *(a2 + 32) = *(*(a2 + 80) + 4 * v5);
    sub_1819E0398(a1, a2);
    v8 = *(a2 + 32);
    if (*(*a1 + 116) != 1)
    {
      v8 += *(a2 + 120);
    }

    result = sub_1819DFFB0((v6 + v8), &v10);
    *(a2 + 112) -= v10;
  }

  return result;
}

uint64_t sub_1819EDB88(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(a2 + 32);
  if (*a2)
  {
    if (*(*(a2 + 16) + 12) <= v6)
    {
      result = sub_1819E0144(result, a2);
      if (*(v5 + 60))
      {
        return result;
      }

      v14 = *(a2 + 16);
      if (!v14)
      {
        return result;
      }

      *(a2 + 112) = 0;
      if (*a2)
      {
        while (1)
        {
          v15 = *(v14 + 12);
          v7 = v15 < 5;
          if (v15 > 4)
          {
            break;
          }

          result = sub_1819E0144(v5, a2);
          if (*(v5 + 60))
          {
            return result;
          }

          v14 = *(a2 + 16);
          if (!v14)
          {
            return result;
          }

          *(a2 + 112) = 0;
          v6 = 4;
          if (!*a2)
          {
            goto LABEL_5;
          }
        }

        v6 = 4;
      }

      else
      {
        v7 = 1;
        v6 = 4;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_5:
  if (v6 >= *(a2 + 68))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      if (!v7)
      {
        v18 = *(a2 + 16);
        v19 = *v18;
        v20 = (*v18 + *(v18 + 3));
        v21 = *v20;
        if (*v20 < 0)
        {
          v22 = v20[1];
          if (v20[1] < 0)
          {
            v23 = v20[2];
            if (v23 < 0)
            {
              v29 = 0;
              sub_1819DFFB0(v20, &v29);
              v21 = v29 & 0x7FFFFFFF;
            }

            else
            {
              v21 = ((v21 & 0x7F) << 14) | ((v22 & 0x7F) << 7) | v23;
            }
          }

          else
          {
            v21 = ((v21 & 0x7F) << 7) | v22;
          }
        }

        if (v6 == v21)
        {
          v24 = 0;
        }

        else
        {
          v25 = (v19 + v6);
          v24 = *v25;
          if (*v25 < 0)
          {
            v27 = v25[1];
            if (v25[1] < 0)
            {
              v28 = v25[2];
              if (v28 < 0)
              {
                v29 = 0;
                v26 = sub_1819DFFB0(v25, &v29);
                v24 = v29 & 0x7FFFFFFF;
              }

              else
              {
                v24 = ((v24 & 0x7F) << 14) | ((v27 & 0x7F) << 7) | v28;
                v26 = 3;
              }
            }

            else
            {
              v24 = ((v24 & 0x7F) << 7) | v27;
              v26 = 2;
            }
          }

          else
          {
            v26 = 1;
          }

          v6 += v26;
        }

        *(a2 + 32) = v6;
        sub_1819ED848(v5, a2, v24);
        if (!a3)
        {
          goto LABEL_55;
        }

LABEL_54:
        *a3 = 1;
        goto LABEL_55;
      }

      result = *(v5 + 24);
      v8 = *(*(result + 24) + 8);
      *(result + 24) = v8;
      if (v8)
      {
        v9 = (v8 + 48);
        v10 = *(v8 + 28);
        sub_1819EB56C(result, v8, 0);
        v11 = *(v8 + 24) - v10 - 48;
        v12 = *(a2 + 16);
        *v12 = v8 + 48 + v10;
        *(v12 + 8) = v11;
        *(v12 + 12) = v11;
        *(a2 + 68) = v11;
        *(a2 + 104) = 0;
        if (!v10)
        {
          goto LABEL_37;
        }

        if (*(a2 + 108) >= v10)
        {
          v13 = 0;
        }

        else
        {
          if (sub_1819D750C((v5 + 60), a2 + 96, v10))
          {
            goto LABEL_37;
          }

          v13 = *(a2 + 104);
        }

        memcpy((*(a2 + 96) + v13), v9, v10);
        *(a2 + 104) += v10;
LABEL_37:
        *(a2 + 32) = sub_1819DFFB0(v9 + v10, (a2 + 112));
        if (!a3)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }
    }

    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v16);
        --qword_1ED456A90;
        result = off_1ED452EB0(v16);
        v16 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_29;
        }

        v17 = &xmmword_1ED452F28;
      }

      result = (*v17)(v16);
    }

LABEL_29:
    *(a2 + 16) = 0;
    return result;
  }

  v29 = 0;
  *(a2 + 32) = (v6 + sub_1819DFFB0((**(a2 + 16) + v6), &v29));
  *(a2 + 112) += v29;
LABEL_55:

  return sub_1819E0398(v5, a2);
}

uint64_t sub_1819EDF3C(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(a2 + 16);
  v7 = *(v6 + 3);
  v8 = *(a2 + 120) + *(a2 + 32);
  if (v8 >= v7)
  {
    if (*a2)
    {
      LODWORD(v13) = 0;
      v14 = 0;
      while (!v13)
      {
        result = sub_1819E0144(v5, a2);
        v15 = *(a2 + 16);
        if (!v15)
        {
          return result;
        }

        v16 = *v15;
        LODWORD(v13) = __rev16(**v15);
        v17 = *(v15 + 3);
        if (v13)
        {
          v18 = v17 <= v13;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          if (*(v15 + 2) > v17)
          {
            v19 = &v16[v17];
            LODWORD(v13) = *v19;
            if (*v19 < 0)
            {
              v22 = v19[1];
              if (v19[1] < 0)
              {
                v24 = v19[2];
                if (v24 < 0)
                {
                  v55 = 0;
                  result = sub_1819DFFB0(v19, &v55);
                  LODWORD(v13) = v55 & 0x7FFFFFFF;
                }

                else
                {
                  LODWORD(v13) = ((v13 & 0x7F) << 14) | ((v22 & 0x7F) << 7) | v24;
                  result = 3;
                }
              }

              else
              {
                LODWORD(v13) = ((v13 & 0x7F) << 7) | v22;
                result = 2;
              }
            }

            else
            {
              result = 1;
            }

            *(a2 + 32) = v13;
            *(a2 + 64) = result + v17;
            *(a2 + 68) = v13;
            v14 = 1;
          }
        }

        else
        {
          result = sub_1819DFFB0(&v16[v13], (a2 + 112));
          v13 = (result + v13);
          *(a2 + 32) = v13;
          v17 = *(v15 + 3);
          if (*(v15 + 2) > v17)
          {
            v20 = *v15 + v17;
            v21 = *v20;
            if (*v20 < 0)
            {
              v23 = v20[1];
              if (v20[1] < 0)
              {
                v25 = v20[2];
                if (v25 < 0)
                {
                  v55 = 0;
                  result = sub_1819DFFB0(v20, &v55);
                  *(a2 + 68) = v55 & 0x7FFFFFFF;
                }

                else
                {
                  *(a2 + 68) = ((v21 & 0x7F) << 14) | ((v23 & 0x7F) << 7) | v25;
                  result = 3;
                }
              }

              else
              {
                *(a2 + 68) = ((v21 & 0x7F) << 7) | v23;
                result = 2;
              }
            }

            else
            {
              *(a2 + 68) = v21;
              result = 1;
            }

            *(a2 + 64) = result + v17;
            v17 = *(v15 + 3);
          }
        }

        if (v13 > v17)
        {
          *(v5 + 60) = 267;
          return result;
        }
      }

      v6 = *(a2 + 16);
      if (!v6)
      {
        return result;
      }

      v11 = 0;
      if (v14)
      {
LABEL_79:
        if ((*(a2 + 8) & 1) == 0)
        {
          sub_1819ED848(v5, a2, v11);
          result = sub_1819E0398(v5, a2);
          if (a3)
          {
            *a3 = 1;
          }

          return result;
        }

LABEL_82:
        v54 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v6);
          --qword_1ED456A90;
          result = off_1ED452EB0(v6);
          v6 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_88;
          }

          v54 = &xmmword_1ED452F28;
        }

        result = (*v54)(v6);
LABEL_88:
        *(a2 + 16) = 0;
        return result;
      }

      goto LABEL_47;
    }

    if (*(a2 + 8))
    {
      goto LABEL_82;
    }

    v29 = *(result + 24);
    v30 = *(*(v29 + 24) + 8);
    *(v29 + 24) = v30;
    if (!v30)
    {
      goto LABEL_82;
    }

    v31 = (v30 + 48);
    v32 = *(v30 + 28);
    sub_1819EB56C(v29, v30, 0);
    v33 = (v30 + 48 + v32);
    v34 = *(v30 + 24) - v32;
    v35 = *(a2 + 16);
    *v35 = v33;
    *(v35 + 8) = v34 - 48;
    *(v35 + 12) = v34 - 48;
    *(a2 + 68) = v34 - 47;
    *(a2 + 104) = 0;
    if (v32)
    {
      v36 = v32;
      LODWORD(v37) = *(a2 + 108);
      if (v37 >= v32)
      {
        v50 = 0;
        v51 = *(a2 + 96);
      }

      else
      {
        if (!v37)
        {
          LODWORD(v37) = 64;
        }

        v37 = v37;
        do
        {
          v38 = v37;
          v37 *= 2;
        }

        while (v38 < v36);
        v39 = *(a2 + 96);
        if (sqlite3_initialize() || (v51 = sub_18190287C(v39, v38, 688041480)) == 0)
        {
          *(v5 + 60) = 7;
          goto LABEL_65;
        }

        *(a2 + 108) = v38;
        *(a2 + 96) = v51;
        v50 = *(a2 + 104);
      }

      memcpy((v51 + v50), v31, v36);
      *(a2 + 104) += v36;
    }

LABEL_65:
    result = sub_1819DFFB0(v33, (a2 + 112));
    v40 = result;
    *(a2 + 32) = result;
    *a3 = 1;
    v6 = *(a2 + 16);
    if (!v6)
    {
      return result;
    }

    goto LABEL_48;
  }

  v9 = *v6;
  if (v8 < *(a2 + 68))
  {
    v55 = 0;
    v10 = sub_1819DFFB0((v9 + v8), &v55);
    v11 = 0;
    v12 = 0;
    v8 += v10;
    *(a2 + 112) += v55;
    goto LABEL_78;
  }

  v26 = v9 + v7;
  v27 = *(v9 + v7);
  v28 = *(v9 + v7);
  if (v27 < 0)
  {
    v44 = *(v26 + 1);
    if (*(v26 + 1) < 0)
    {
      v48 = *(v26 + 2);
      if (v48 < 0)
      {
        v55 = 0;
        sub_1819DFFB0(v26, &v55);
        if (v8 == (v55 & 0x7FFFFFFF))
        {
          goto LABEL_34;
        }
      }

      else if (v8 == (((v28 & 0x7F) << 14) | ((v44 & 0x7F) << 7) | v48))
      {
        goto LABEL_34;
      }
    }

    else if (v8 == (((v28 & 0x7F) << 7) | v44))
    {
      goto LABEL_34;
    }

LABEL_54:
    v45 = (v9 + v8);
    v11 = *v45;
    if (*v45 < 0)
    {
      v47 = v45[1];
      if (v45[1] < 0)
      {
        v52 = v45[2];
        if (v52 < 0)
        {
          v55 = 0;
          v46 = sub_1819DFFB0(v45, &v55);
          v11 = v55 & 0x7FFFFFFF;
        }

        else
        {
          v11 = ((v11 & 0x7F) << 14) | ((v47 & 0x7F) << 7) | v52;
          v46 = 3;
        }
      }

      else
      {
        v11 = ((v11 & 0x7F) << 7) | v47;
        v46 = 2;
      }
    }

    else
    {
      v46 = 1;
    }

    v8 += v46;
    goto LABEL_77;
  }

  if (v8 != v28)
  {
    goto LABEL_54;
  }

LABEL_34:
  v11 = 0;
LABEL_77:
  v12 = 1;
LABEL_78:
  *(a2 + 32) = v8;
  if (v12)
  {
    goto LABEL_79;
  }

LABEL_47:
  v40 = *(a2 + 32);
LABEL_48:
  v41 = *v6;
  *(a2 + 32) = v40 + 1;
  result = v41 + v40;
  v42 = *(v41 + v40);
  if ((v42 & 0x80000000) != 0)
  {
    *(a2 + 32) = v40;
    v42 = *result;
    if (*result < 0)
    {
      v49 = *(result + 1);
      if (*(result + 1) < 0)
      {
        v53 = *(result + 2);
        if (v53 < 0)
        {
          v55 = 0;
          result = sub_1819DFFB0(result, &v55);
          v42 = v55 & 0x7FFFFFFF;
          v43 = result;
        }

        else
        {
          v42 = ((v42 & 0x7F) << 14) | ((v49 & 0x7F) << 7) | v53;
          v43 = 3;
        }
      }

      else
      {
        v42 = ((v42 & 0x7F) << 7) | v49;
        v43 = 2;
      }
    }

    else
    {
      v43 = 1;
    }

    *(a2 + 32) = v43 + v40;
  }

  *(a2 + 124) = v42 & 1;
  *(a2 + 120) = v42 >> 1;
  return result;
}

int *sub_1819EE4E4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (*(a1 + 60))
  {
    return 0;
  }

  v4 = a3;
  v6 = 0;
  v7 = 0;
  v8 = (a3 << 37) + a4 + 0x1000000000;
  v9 = 1;
  do
  {
    if (sqlite3_initialize() || (v12 = sub_18190287C(v7, v6 + 40, 0x100004000313F17)) == 0)
    {
      *(a1 + 60) = 7;
      v13 = v7;
      if (v7)
      {
        goto LABEL_32;
      }

      return v13;
    }

    v13 = v12;
    v14 = v12 + v6;
    *(v14 + 24) = 0u;
    *(v14 + 8) = 0u;
    v15 = sub_1819DFC90(a1, v8);
    *(v14 + 8) = v15;
    if (v15)
    {
      v10 = (**v15 & 1) == 0;
    }

    else
    {
      v10 = 0;
    }

    *v13 = v9;
    v6 += 32;
    v11 = *(a1 + 60);
    v8 += 0x80000000;
    ++v9;
    v7 = v13;
  }

  while (!(v11 | v10));
  if (v11)
  {
    goto LABEL_32;
  }

  v13[1] = v4;
  v16 = *v13;
  if (a2)
  {
    v17 = *(a1 + 60);
    if (!v17 && v16 >= 1)
    {
      while (1)
      {
        v18 = v16--;
        v19 = &v13[8 * v16 + 2];
          ;
        }

        *(v19 + 12) = 0;
        if (v18 < 2)
        {
          goto LABEL_30;
        }

        v20 = *(v19 - 32);
        if (v20)
        {
          v21 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v20);
            --qword_1ED456A90;
            off_1ED452EB0(v20);
            v20 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_17;
            }

            v21 = &xmmword_1ED452F28;
          }

          (*v21)(v20);
        }

LABEL_17:
        *(v19 - 32) = 0u;
        *(v19 - 16) = 0u;
        *(v19 - 32) = sub_1819DFC90(a1, (v18 << 31) + (v13[1] << 37) + *(v19 + 20) + 0xF00000000);
        if (*(a1 + 60))
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    if (v16 >= 1)
    {
      v22 = 0;
      v23 = (v13 + 2);
      do
      {
        sub_1819DFB20(v23);
        ++v22;
        v23 += 32;
      }

      while (v22 < *v13);
    }

LABEL_30:
    v17 = *(a1 + 60);
  }

  if (v17)
  {
LABEL_32:
    if (*v13 >= 1)
    {
      v24 = 0;
      v25 = 2;
      do
      {
        v26 = *&v13[v25];
        if (v26)
        {
          v27 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
            --qword_1ED456A90;
            off_1ED452EB0(v26);
            v26 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_35;
            }

            v27 = &xmmword_1ED452F28;
          }

          (*v27)(v26);
        }

LABEL_35:
        ++v24;
        v25 += 8;
      }

      while (v24 < *v13);
    }

    v28 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_47;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
    --qword_1ED456A90;
    off_1ED452EB0(v13);
    v13 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v28 = &xmmword_1ED452F28;
LABEL_47:
      (*v28)(v13);
      return 0;
    }
  }

  return v13;
}

void sub_1819EE874(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 4) && !a1[15])
  {
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if ((*(a3 + 8) & 2) != 0)
    {
      v5 = sub_1819EDAC4;
    }

    else if (*(*a1 + 116) == 1)
    {
      v5 = sub_1819EDB88;
    }

    else
    {
      v5 = sub_1819EDF3C;
    }

    *(a3 + 48) = v5;
    *a3 = a2;
    *(a3 + 12) = *(a2 + 4) - 1;
    while (1)
    {
      sub_1819E0144(a1, a3);
      if (a1[15])
      {
        break;
      }

      v6 = *(a3 + 16);
      if (!v6)
      {
        break;
      }

      if (*(v6 + 8) != 4)
      {
        *(a3 + 32) = 4;
        *(a3 + 64) = *(v6 + 12) + 1;
        sub_1819ED848(a1, a3, 0);
        sub_1819E0398(a1, a3);
        v7 = *(*a3 + 32);
        if (v7 >= 1 && !a1[15])
        {
          if (sqlite3_initialize() || (v8 = sub_181902484(8 * v7 + 16, 1913357809)) == 0)
          {
            a1[15] = 7;
          }

          else
          {
            v9 = v8;
            bzero(v8, 8 * v7 + 16);
            *v9 = 1;
            v9[1] = v7;
            *(a3 + 40) = v9;
          }
        }

        return;
      }
    }
  }
}

uint64_t sub_1819EE9D8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = (*(a4 + 8) + *(a2 + 2));
  if (v7)
  {
    v8 = 64;
    do
    {
      v9 = v8;
      v8 *= 2;
    }

    while (v9 < v7);
    result = sqlite3_initialize();
    if (result || (result = sub_18190287C(0, v9, 688041480), (v26 = result) == 0))
    {
      *(v6 + 60) = 7;
      return result;
    }
  }

  else
  {
    v26 = 0;
    LODWORD(v9) = 0;
  }

  if (!*(v6 + 60))
  {
    if (*(a2 + 2) < 1)
    {
      v11 = 0;
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v27 = 0;
      result = sub_1819DFFB0(*a2, &v27);
      v10 = result;
      v11 = v27;
    }

    v25 = a2;
    if (*(a4 + 8) < 1)
    {
      if ((v10 & 0x80000000) != 0)
      {
        v15 = 0;
        goto LABEL_46;
      }

      v13 = 0;
      v14 = v10 >= 0;
      v12 = -1;
    }

    else
    {
      v27 = 0;
      v12 = sub_1819DFFB0(*a4, &v27);
      v13 = v27;
      v14 = v10 >= 0;
    }

    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v11;
      v18 = v13;
      result = v26 + v15;
      if (v14 && (v12 < 0 || v11 < v13))
      {
        v21 = v11 - v16;
        if ((v11 - v16) > 0x7F)
        {
          if (v21 >> 14)
          {
            result = sub_1819436D0(result, v21);
            v20 = result;
          }

          else
          {
            *result = (v21 >> 7) | 0x80;
            *(result + 1) = v21 & 0x7F;
            v20 = 2;
          }
        }

        else
        {
          *result = v21;
          v20 = 1;
        }

        if (v10 >= *(v25 + 2))
        {
          v10 = 0xFFFFFFFFLL;
        }

        else
        {
          v27 = 0;
          result = sub_1819DFFB0((*v25 + v10), &v27);
          v10 += result;
          v11 += v27;
        }

        v13 = v18;
        v16 = v17;
      }

      else
      {
        v19 = v13 - v16;
        if ((v13 - v16) > 0x7F)
        {
          if (v19 >> 14)
          {
            result = sub_1819436D0(result, v19);
            v20 = result;
          }

          else
          {
            *result = (v19 >> 7) | 0x80;
            *(result + 1) = v19 & 0x7F;
            v20 = 2;
          }
        }

        else
        {
          *result = v19;
          v20 = 1;
        }

        if (v14 && v11 == v18)
        {
          if (v10 >= *(v25 + 2))
          {
            v10 = 0xFFFFFFFFLL;
            v11 = v18;
          }

          else
          {
            v27 = 0;
            result = sub_1819DFFB0((*v25 + v10), &v27);
            v10 += result;
            v11 = v27 + v18;
          }
        }

        if (v12 >= *(a4 + 8))
        {
          v12 = -1;
          v13 = v18;
        }

        else
        {
          v27 = 0;
          result = sub_1819DFFB0((*a4 + v12), &v27);
          v12 += result;
          v13 = v27 + v18;
        }

        v16 = v18;
      }

      v15 += v20;
      v14 = v10 >= 0;
    }

    while ((v10 & 0x80000000) == 0 || (v12 & 0x80000000) == 0);
LABEL_46:
    v22 = *v25;
    *v25 = v26;
    *(v25 + 2) = v15;
    *(v25 + 3) = v9;
    if (!v22)
    {
      return result;
    }

    v23 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
      --qword_1ED456A90;
      result = off_1ED452EB0(v22);
      v22 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return result;
      }

      v23 = &xmmword_1ED452F28;
    }

    v24 = *v23;

    return v24(v22);
  }

  return result;
}

uint64_t sub_1819EED70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = *(a4 + 12);
  v7 = (v5 + 9);
  if (v7 <= v6)
  {
    result = *a4;
  }

  else
  {
    v9 = a2;
    if (v6)
    {
      LODWORD(v10) = *(a4 + 12);
    }

    else
    {
      LODWORD(v10) = 64;
    }

    v10 = v10;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 < v7);
    v12 = *a4;
    result = sqlite3_initialize();
    if (result || (result = sub_18190287C(v12, v11, 688041480)) == 0)
    {
      *(a1 + 60) = 7;
      return result;
    }

    *(a4 + 12) = v11;
    *a4 = result;
    v5 = *(a4 + 8);
    a2 = v9;
  }

  v14 = (result + v5);
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      result = sub_1819436D0(v14, a2);
    }

    else
    {
      v14->i8[0] = (a2 >> 7) | 0x80;
      v14->i8[1] = a2 & 0x7F;
      result = 2;
    }
  }

  else
  {
    v14->i8[0] = a2;
    result = 1;
  }

  *(a4 + 8) += result;
  return result;
}

uint64_t sub_1819EEE6C(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v170[129] = *MEMORY[0x1E69E9840];
  v8 = (a3 + 1);
  result = __memset_chk();
  v10 = &v170[8 * a3 + 1];
  v168 = v10;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v164 = a2;
  v11 = *(a2 + 2);
  if (v11 >= 1)
  {
    v12 = *a2;
    v10[2] = *a2;
    v13 = v12 + v11;
    *v10 = v12 + v11;
    v14 = (v12 + *(v10 + 7) + *(v10 + 6));
    if (v14 < v12 + v11)
    {
      v169 = 0;
      v15 = &v14[sub_1819DFFB0(v14, &v169)];
      v10[1] += v169;
      v16 = *v15;
      if ((v16 & 0x80) != 0)
      {
        v18 = v15[1];
        if (v15[1] < 0)
        {
          v20 = v15[2];
          if (v20 < 0)
          {
            v170[0] = 0;
            result = sub_1819DFFB0(v15, v170);
            v19 = v170[0] & 0x7FFFFFFF;
          }

          else
          {
            v19 = ((v16 & 0x7F) << 14) | ((v18 & 0x7F) << 7) | v20;
            result = 3;
          }
        }

        else
        {
          v19 = ((v16 & 0x7F) << 7) | v18;
          result = 2;
        }

        v17 = v19 >> 1;
      }

      else
      {
        v17 = v16 >> 1;
        result = 1;
      }

      *(v10 + 6) = v17;
      *(v10 + 7) = result;
      if (&v15[v17] <= v13)
      {
        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v10[2] = v21;
      if (a3 < 1)
      {
        return result;
      }

      goto LABEL_18;
    }

    v10[2] = 0;
  }

  if (a3 < 1)
  {
    return result;
  }

LABEL_18:
  v166 = v11;
  v160 = v8;
  v163 = a1;
  v22 = 0;
  v23 = 0;
  v24 = 0uLL;
  do
  {
    v25 = a4 + 16 * v22;
    v26 = &v170[8 * v22 + 1];
    *v26 = v24;
    *(v26 + 1) = v24;
    v27 = *(v25 + 8);
    if (v27 <= 0)
    {
      if (!v26[2])
      {
        goto LABEL_20;
      }

LABEL_37:
      v40 = v168;
      if (v168 && (v41 = v26[1], v41 > v168[1]))
      {
        do
        {
          v42 = v40;
          v40 = *(v40 + 56);
        }

        while (v40 && v41 > *(v40 + 8));
        v43 = (v42 + 56);
      }

      else
      {
        v43 = &v168;
      }

      v26[7] = v40;
      *v43 = v26;
      goto LABEL_20;
    }

    v28 = *v25;
    v26[2] = v28;
    v29 = v28 + v27;
    *v26 = v28 + v27;
    v30 = (v28 + *(v26 + 7) + *(v26 + 6));
    if (v30 >= v28 + v27)
    {
      v26[2] = 0;
      goto LABEL_20;
    }

    v169 = 0;
    v31 = &v30[sub_1819DFFB0(v30, &v169)];
    v26[1] += v169;
    v32 = *v31;
    if ((v32 & 0x80) != 0)
    {
      v34 = v31[1];
      if (v31[1] < 0)
      {
        v36 = v31[2];
        v24 = 0uLL;
        if (v36 < 0)
        {
          v170[0] = 0;
          result = sub_1819DFFB0(v31, v170);
          v24 = 0uLL;
          v35 = v170[0] & 0x7FFFFFFF;
        }

        else
        {
          v35 = ((v32 & 0x7F) << 14) | ((v34 & 0x7F) << 7) | v36;
          result = 3;
        }
      }

      else
      {
        v35 = ((v32 & 0x7F) << 7) | v34;
        result = 2;
        v24 = 0uLL;
      }

      v33 = v35 >> 1;
    }

    else
    {
      v33 = v32 >> 1;
      result = 1;
      v24 = 0uLL;
    }

    *(v26 + 6) = v33;
    *(v26 + 7) = result;
    v37 = &v31[v33];
    v38 = v37 > v29;
    if (v37 <= v29)
    {
      v39 = v31;
    }

    else
    {
      v39 = 0;
    }

    v26[2] = v39;
    if (!v38)
    {
      goto LABEL_37;
    }

LABEL_20:
    v23 += v27;
    ++v22;
  }

  while (v22 != a3);
  if (!v23)
  {
    return result;
  }

  v44 = (v166 + 10 * a3 + v23 + 9);
  if (v166 + 10 * a3 + v23 == -9)
  {
    v47 = 0;
    LODWORD(v46) = 0;
  }

  else
  {
    v45 = 64;
    do
    {
      v46 = v45;
      v45 *= 2;
    }

    while (v46 < v44);
    result = sqlite3_initialize();
    if (result || (result = sub_18190287C(0, v46, 688041480)) == 0)
    {
      *(a1 + 60) = 7;
      return result;
    }

    v47 = result;
  }

  v48 = v168;
  v162 = v47;
  v49 = 0;
  if (!v168)
  {
    v52 = 0;
    goto LABEL_211;
  }

  LODWORD(v50) = 0;
  v51 = 0;
  v52 = 0;
  while (2)
  {
    v54 = (v47 + v52);
    v55 = v48[1] - v51;
    if (v55 > 0x7F)
    {
      if (v55 >> 14)
      {
        result = sub_1819436D0(v54, v55);
        v48 = v168;
      }

      else
      {
        v54->i8[0] = (v55 >> 7) | 0x80;
        v54->i8[1] = v55 & 0x7F;
        result = 2;
      }
    }

    else
    {
      v54->i8[0] = v55;
      result = 1;
    }

    v56 = v52 + result;
    v57 = v48[1];
    v58 = v48[7];
    v167 = v57;
    if (!v58 || v57 != *(v58 + 8))
    {
      result = memcpy((v47 + v56), v48[2], *(v48 + 7) + *(v48 + 6));
      v69 = *(v48 + 6);
      v70 = *(v48 + 7);
      v52 = v69 + v56 + v70;
      v71 = (v48[2] + v70 + v69);
      v72 = *v48;
      if (v71 >= *v48)
      {
        v48[2] = 0;
        v53 = v48[7];
        v168 = v53;
        v51 = v167;
      }

      else
      {
        v169 = 0;
        v73 = &v71[sub_1819DFFB0(v71, &v169)];
        v48[1] += v169;
        v74 = *v73;
        if ((v74 & 0x80) != 0)
        {
          v85 = v73[1];
          v51 = v167;
          if (v73[1] < 0)
          {
            v89 = v73[2];
            if (v89 < 0)
            {
              v170[0] = 0;
              result = sub_1819DFFB0(v73, v170);
              v51 = v167;
              v86 = v170[0] & 0x7FFFFFFF;
            }

            else
            {
              v86 = ((v74 & 0x7F) << 14) | ((v85 & 0x7F) << 7) | v89;
              result = 3;
            }
          }

          else
          {
            v86 = ((v74 & 0x7F) << 7) | v85;
            result = 2;
          }

          v75 = v86 >> 1;
        }

        else
        {
          v75 = v74 >> 1;
          result = 1;
          v51 = v167;
        }

        *(v48 + 6) = v75;
        *(v48 + 7) = result;
        v123 = &v73[v75];
        v53 = v48[7];
        v168 = v53;
        v124 = v123 > v72;
        if (v123 <= v72)
        {
          v125 = v73;
        }

        else
        {
          v125 = 0;
        }

        v48[2] = v125;
        if (!v124)
        {
          if (v53 && (v126 = v48[1], v126 > v53[1]))
          {
            do
            {
              v127 = v53;
              v53 = v53[7];
            }

            while (v53 && v126 > v53[1]);
            v128 = (v127 + 7);
          }

          else
          {
            v128 = &v168;
          }

          v48[7] = v53;
          *v128 = v48;
          goto LABEL_205;
        }
      }

LABEL_56:
      v48 = v53;
      if (!v53)
      {
        goto LABEL_211;
      }

      continue;
    }

    break;
  }

  v161 = v52 + result;
  v59 = 0;
  v168 = 0;
  v60 = 8;
  do
  {
    if (v48[1] != v57)
    {
      break;
    }

    *(v48 + 10) = 0;
    v48[4] = 0;
    v62 = v48[7];
    v63 = *(v48 + 6);
    v64 = v48[2] + *(v48 + 7);
    v48[6] = v64;
    result = sub_1819E0A34(v64, v63, v48 + 10, v48 + 4);
    v65 = *(v48 + 6);
    v66 = v48[4];
    if ((v66 & 0x8000000000000000) == 0)
    {
      v67 = v168;
      if (v168 && v66 > v168[4])
      {
        do
        {
          v68 = v67;
          v67 = v67[7];
        }

        while (v67 && v66 > v67[4]);
        v61 = (v68 + 7);
      }

      else
      {
        v61 = &v168;
      }

      v48[7] = v67;
      *v61 = v48;
    }

    v60 += v65 + 10;
    ++v59;
    v48 = v62;
    v57 = v167;
  }

  while (v62);
  v76 = v168;
  if (!v168 || (v77 = v168[7]) == 0)
  {
    v155 = 267;
    v47 = v162;
    goto LABEL_209;
  }

  v78 = (10 * v59 + v60);
  if (v50 < v78)
  {
    if (v50)
    {
      LODWORD(v79) = v50;
    }

    else
    {
      LODWORD(v79) = 64;
    }

    v79 = v79;
    do
    {
      v50 = v79;
      v79 *= 2;
    }

    while (v50 < v78);
    result = sqlite3_initialize();
    v47 = v162;
    if (!result)
    {
      result = sub_18190287C(v49, v50, 688041480);
      if (result)
      {
        v77 = v76[7];
        v80 = result;
        goto LABEL_90;
      }
    }

    v155 = 7;
LABEL_209:
    v122 = v163;
    v156 = v161;
LABEL_210:
    *(v122 + 60) = v155;
    v52 = v156;
    goto LABEL_211;
  }

  v80 = v49;
LABEL_90:
  v168 = v77;
  v81 = (v76 + 4);
  v82 = v76[4];
  if ((v82 & 0x8000000000000000) != 0)
  {
    v87 = 0;
    v82 = 0;
  }

  else
  {
    if (HIDWORD(v82))
    {
      *v80 = 1;
      v88 = (v80 + 1);
      if (v82 >> 39)
      {
        if (v82 >> 46)
        {
          v90 = sub_1819436D0(v88, HIDWORD(v82));
          v81 = (v76 + 4);
          v83 = v90 + 1;
        }

        else
        {
          v80[1] = (v82 >> 39) | 0x80;
          v80[2] = BYTE4(v82) & 0x7F;
          v83 = 3;
        }
      }

      else
      {
        v88->i8[0] = BYTE4(v82);
        v83 = 2;
      }

      v84 = v83;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v91 = &v80[v84];
    v92 = v82 + 2;
    if (v82 > 0x7DuLL)
    {
      if (v82 > 0x3FFDuLL)
      {
        v94 = v81;
        v93 = sub_1819436D0(v91, v92);
        v81 = v94;
      }

      else
      {
        v91->i8[0] = (v92 >> 7) | 0x80;
        v91->i8[1] = v92 & 0x7F;
        v93 = 2;
      }
    }

    else
    {
      v91->i8[0] = v92;
      v93 = 1;
    }

    v87 = v83 + v93;
  }

  result = sub_1819E0A34(v76[6], *(v76 + 6), v76 + 10, v81);
  v95 = v76[4];
  if ((v95 & 0x8000000000000000) == 0)
  {
    if (v77 && v95 > v77[4])
    {
      do
      {
        v96 = v77;
        v77 = v77[7];
      }

      while (v77 && v95 > v77[4]);
      v97 = (v96 + 7);
    }

    else
    {
      v97 = &v168;
    }

    v76[7] = v77;
    *v97 = v76;
  }

  __src = v80;
  v98 = v168;
  v99 = (v168 + 7);
  if (v168[7])
  {
    do
    {
      v109 = (v98 + 4);
      v110 = v98[4];
      if (v82 < v110)
      {
        if ((v110 & 0x7FFFFFFF00000000) != (v82 & 0x7FFFFFFF00000000))
        {
          v111 = v87;
          v112 = v87 + 1;
          __src[v111] = 1;
          v113 = &__src[v112];
          v114 = v110 >> 32;
          if ((v110 >> 32) > 0x7F)
          {
            if (v114 >> 14)
            {
              v115 = sub_1819436D0(v113, v114);
              v109 = (v98 + 4);
            }

            else
            {
              v113->i8[0] = (HIDWORD(v110) >> 7) | 0x80;
              v113->i8[1] = BYTE4(v110) & 0x7F;
              v115 = 2;
            }
          }

          else
          {
            v113->i8[0] = BYTE4(v110);
            v115 = 1;
          }

          v87 = v112 + v115;
          v82 = v110 & 0x7FFFFFFF00000000;
        }

        v116 = &__src[v87];
        v117 = v110 - v82 + 2;
        if (v117 > 0x7F)
        {
          if (v117 >> 14)
          {
            v119 = v109;
            v118 = sub_1819436D0(v116, v117);
            v109 = v119;
          }

          else
          {
            v116->i8[0] = (v117 >> 7) | 0x80;
            v116->i8[1] = v117 & 0x7F;
            v118 = 2;
          }
        }

        else
        {
          v116->i8[0] = v117;
          v118 = 1;
        }

        v87 += v118;
        v82 = v110;
      }

      result = sub_1819E0A34(v98[6], *(v98 + 6), v98 + 10, v109);
      v100 = *v99;
      v168 = *v99;
      v120 = v98[4];
      if ((v120 & 0x8000000000000000) == 0)
      {
        if (v100 && v120 > v100[4])
        {
          do
          {
            v121 = v100;
            v100 = v100[7];
          }

          while (v100 && v120 > v100[4]);
          v108 = (v121 + 7);
        }

        else
        {
          v108 = &v168;
        }

        *v99 = v100;
        *v108 = v98;
        v100 = v168;
      }

      v99 = (v100 + 7);
      v98 = v100;
    }

    while (v100[7]);
  }

  else
  {
    v100 = v168;
  }

  v101 = v100[4];
  if (v82 >= v101)
  {
    v122 = v163;
    v102 = v160;
  }

  else
  {
    v102 = v160;
    if ((v101 & 0x7FFFFFFF00000000) != (v82 & 0x7FFFFFFF00000000))
    {
      v103 = v87;
      v104 = v87 + 1;
      __src[v103] = 1;
      v105 = &__src[v104];
      v106 = v101 >> 32;
      if ((v101 >> 32) > 0x7F)
      {
        if (v106 >> 14)
        {
          v107 = sub_1819436D0(v105, v106);
        }

        else
        {
          v105->i8[0] = (HIDWORD(v101) >> 7) | 0x80;
          v105->i8[1] = BYTE4(v101) & 0x7F;
          v107 = 2;
        }
      }

      else
      {
        v105->i8[0] = BYTE4(v101);
        v107 = 1;
      }

      v87 = v104 + v107;
      v82 = v101 & 0x7FFFFFFF00000000;
    }

    v129 = &__src[v87];
    v130 = v101 - v82 + 2;
    if (v130 > 0x7F)
    {
      v122 = v163;
      if (v130 >> 14)
      {
        result = sub_1819436D0(v129, v130);
      }

      else
      {
        v129->i8[0] = (v130 >> 7) | 0x80;
        v129->i8[1] = v130 & 0x7F;
        result = 2;
      }
    }

    else
    {
      v129->i8[0] = v130;
      result = 1;
      v122 = v163;
    }

    v87 += result;
  }

  v131 = (*(v100 + 6) - *(v100 + 10));
  if (v87 + v131 <= v60 - 8)
  {
    v132 = (v162 + v161);
    v133 = 2 * (v87 + v131);
    if (v133 > 0x7F)
    {
      if (v133 >> 14)
      {
        v134 = sub_1819436D0(v132, v133);
      }

      else
      {
        v132->i8[0] = (v133 >> 7) | 0x80;
        v132->i8[1] = v133 & 0x7E;
        v134 = 2;
      }
    }

    else
    {
      v132->i8[0] = v133;
      v134 = 1;
    }

    v135 = v134 + v161;
    result = memcpy((v162 + v135), __src, v87);
    v52 = v87 + v135;
    if (v131 >= 1)
    {
      result = memcpy((v162 + v52), (v168[6] + *(v168 + 10)), v131);
      v52 += v131;
    }

    v51 = v167;
    v136 = 0;
    v168 = v48;
    do
    {
      v137 = &v170[8 * v136 + 1];
      v138 = v137[2];
      if (v138 && v137[1] == v51)
      {
        v139 = (v138 + *(v137 + 7) + *(v137 + 6));
        v140 = *v137;
        if (v139 >= *v137)
        {
          v137[2] = 0;
        }

        else
        {
          v169 = 0;
          v141 = sub_1819DFFB0(v139, &v169);
          v51 = v167;
          v142 = &v139[v141];
          v143 = v169 + v167;
          v137[1] = v169 + v167;
          v144 = *v142;
          if ((v144 & 0x80) != 0)
          {
            v146 = v142[1];
            if (v142[1] < 0)
            {
              v148 = v142[2];
              if (v148 < 0)
              {
                v170[0] = 0;
                result = sub_1819DFFB0(v142, v170);
                v51 = v167;
                v147 = v170[0] & 0x7FFFFFFF;
              }

              else
              {
                v147 = ((v144 & 0x7F) << 14) | ((v146 & 0x7F) << 7) | v148;
                result = 3;
              }
            }

            else
            {
              v147 = ((v144 & 0x7F) << 7) | v146;
              result = 2;
            }

            v145 = v147 >> 1;
          }

          else
          {
            v145 = v144 >> 1;
            result = 1;
          }

          *(v137 + 6) = v145;
          *(v137 + 7) = result;
          v149 = &v142[v145];
          v150 = v149 > v140;
          if (v149 <= v140)
          {
            v151 = v142;
          }

          else
          {
            v151 = 0;
          }

          v137[2] = v151;
          if (!v150)
          {
            v152 = v168;
            if (v168 && v143 > v168[1])
            {
              do
              {
                v153 = v152;
                v152 = *(v152 + 56);
              }

              while (v152 && v143 > *(v152 + 8));
              v154 = (v153 + 56);
            }

            else
            {
              v154 = &v168;
            }

            v137[7] = v152;
            *v154 = v137;
          }
        }
      }

      ++v136;
    }

    while (v136 != v102);
    v47 = v162;
    v49 = __src;
LABEL_205:
    v53 = v168;
    goto LABEL_56;
  }

  v156 = v161;
  v47 = v162;
  if (!*(v122 + 60))
  {
    v155 = 267;
    v49 = __src;
    goto LABEL_210;
  }

  v52 = v161;
  v49 = __src;
LABEL_211:
  v157 = *v164;
  if (*v164)
  {
    v158 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_217;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v157);
    --qword_1ED456A90;
    result = off_1ED452EB0(v157);
    v157 = xmmword_1ED456AF0;
    v47 = v162;
    if (xmmword_1ED456AF0)
    {
      v158 = &xmmword_1ED452F28;
LABEL_217:
      result = (*v158)(v157);
    }
  }

  *v164 = 0;
  v164[1] = 0;
  if (v49)
  {
    v159 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_224;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v49);
    --qword_1ED456A90;
    result = off_1ED452EB0(v49);
    v49 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v159 = &xmmword_1ED452F28;
LABEL_224:
      result = (*v159)(v49);
    }
  }

  *(v47 + v52) = 0;
  *v164 = v47;
  *(v164 + 2) = v52;
  *(v164 + 3) = v46;
  return result;
}

uint64_t sub_1819EFC08(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 60))
  {
    v4 = *(a3 + 16);
    v5 = *(a4 + 8);
    v6 = *(a4 + 12);
    v7 = (v4 + v5 + 26);
    if (v7 <= v6)
    {
      result = *a4;
    }

    else
    {
      v8 = result;
      v9 = a2;
      v10 = a3;
      if (v6)
      {
        LODWORD(v11) = *(a4 + 12);
      }

      else
      {
        LODWORD(v11) = 64;
      }

      v11 = v11;
      do
      {
        v12 = v11;
        v11 *= 2;
      }

      while (v12 < v7);
      v13 = a4;
      v14 = *a4;
      result = sqlite3_initialize();
      if (result || (result = sub_18190287C(v14, v12, 688041480)) == 0)
      {
        *(v8 + 60) = 7;
        return result;
      }

      a4 = v13;
      *(v13 + 12) = v12;
      *v13 = result;
      v5 = *(v13 + 8);
      a3 = v10;
      a2 = v9;
    }

    v15 = (result + v5);
    if (a2 > 0x7F)
    {
      if (a2 >> 14)
      {
        v17 = a4;
        v18 = a3;
        v16 = sub_1819436D0(v15, a2);
        a3 = v18;
        a4 = v17;
      }

      else
      {
        v15->i8[0] = (a2 >> 7) | 0x80;
        v15->i8[1] = a2 & 0x7F;
        v16 = 2;
      }
    }

    else
    {
      v15->i8[0] = a2;
      v16 = 1;
    }

    v19 = *(a4 + 8) + v16;
    *(a4 + 8) = v19;
    v20 = (*a4 + v19);
    v21 = 2 * v4;
    if ((2 * v4) > 0x7F)
    {
      if (v21 >> 14)
      {
        v23 = a4;
        v24 = a3;
        v22 = sub_1819436D0(v20, v21);
        a3 = v24;
        a4 = v23;
      }

      else
      {
        v20->i8[0] = (v21 >> 7) | 0x80;
        v20->i8[1] = v21 & 0x7E;
        v22 = 2;
      }
    }

    else
    {
      v20->i8[0] = v21;
      v22 = 1;
    }

    v25 = *(a4 + 8) + v22;
    *(a4 + 8) = v25;
    v26 = a4;
    result = memcpy((*a4 + v25), *(a3 + 8), v4);
    v27 = *(v26 + 8) + v4;
    *(v26 + 8) = v27;
    *(*v26 + v27) = 0;
  }

  return result;
}

void sub_1819EFDD0(uint64_t a1, _DWORD *a2, char *a3, int a4, int a5, void (*a6)(uint64_t, uint64_t, uint64_t, const void *, uint64_t), uint64_t a7)
{
  v10 = a1;
  if (a5)
  {
    v11 = 56;
  }

  else
  {
    v11 = 48;
  }

  v68 = 0;
  v66 = sub_1819E25BC(a1);
  v62 = a3;
  sub_1819E5E40(v10, v66, v11, a2, a3, a4, 0xFFFFFFFF, 0, &v68);
  v12 = v68;
  if (!*(v10 + 60))
  {
    v13 = **(v68 + 32);
    v14 = *(v13 + 116);
    if (v14 == 1)
    {
      v15 = sub_1819F09D4;
    }

    else
    {
      v16 = *(v68 + 56);
      if (v16)
      {
        if (*v16)
        {
          if (v14)
          {
            v17 = *(v13 + 32);
            if (v17 <= 100)
            {
              *(v68 + 64) = sub_1819F0DAC;
              LODWORD(v18) = *(v12 + 52);
              if (v18 < v17)
              {
                if (!v18)
                {
                  LODWORD(v18) = 64;
                }

                v18 = v18;
                do
                {
                  v19 = v18;
                  v18 *= 2;
                }

                while (v19 < v17);
                v20 = *(v12 + 40);
                if (sqlite3_initialize() || (v61 = sub_18190287C(v20, v19, 688041480)) == 0)
                {
                  *(v10 + 60) = 7;
                  goto LABEL_5;
                }

                *(v12 + 52) = v19;
                *(v12 + 40) = v61;
                if (*(v10 + 60))
                {
                  goto LABEL_5;
                }
              }

              goto LABEL_24;
            }

            v15 = sub_1819F0E9C;
          }

          else
          {
            v15 = sub_1819F0B0C;
          }
        }

        else
        {
          v15 = sub_1819F0B04;
        }
      }

      else
      {
        v15 = sub_1819F09E8;
      }
    }

    *(v68 + 64) = v15;
LABEL_24:
    v21 = v12 + 104;
    v22 = 1;
    v67 = v10;
    do
    {
      if (*(v12 + 20))
      {
        break;
      }

      v23 = v21 + (*(*(v12 + 96) + 4) << 7);
      (*(v12 + 64))(v12, v23);
      if (*(v10 + 60))
      {
        break;
      }

      if (v22)
      {
        v24 = *(v23 + 104);
        if (v24 < a4)
        {
          break;
        }

        v25 = *(v23 + 96);
        if (memcmp(v62, v25, a4))
        {
          break;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      a6(v10, a7, v12, v25, v24);
      if (*(v10 + 60))
      {
        break;
      }

      v22 = 0;
      while (1)
      {
        do
        {
          v26 = *(*(v12 + 96) + 4);
          v27 = v21 + (v26 << 7);
          v69 = 0;
          (*(v27 + 48))(v10, v27, &v69);
          if (*(v27 + 16))
          {
            v28 = v69 == 0;
          }

          else
          {
            v28 = 0;
          }

          if (v28)
          {
            v50 = *(v27 + 112);
            v51 = *(v12 + 88);
            if (v50 == v51)
            {
              v52 = *(v12 + 76);
            }

            else
            {
              v52 = v50 < v51;
              if (*(v12 + 76) != v52)
              {
                v46 = *(v12 + 96);
                goto LABEL_65;
              }
            }

            v54 = v26 ^ 1;
            if (v52)
            {
              v55 = 0x8000000000000000;
            }

            else
            {
              v55 = 0x7FFFFFFFFFFFFFFFLL;
            }

            *(v12 + 88) = v55;
            v29 = *(v12 + 72);
            v30 = v29 + v26;
            v46 = *(v12 + 96);
            for (i = v29 + v26; ; i = i / 2)
            {
              v57 = v46 + 4 * (i / 2);
              if (*(v57 + 2))
              {
                v58 = v21 + (v54 << 7);
                v59 = *(v27 + 112);
                v60 = *(v58 + 112);
                if (v59 == v60)
                {
                  goto LABEL_39;
                }

                if (v52 == v60 > v59 || (v58 = v27, v52 == v60 > v55))
                {
                  *(v12 + 88) = v60;
                  v55 = v60;
                  v27 = v58;
                }
              }

              *v57 = (v27 - v21) >> 7;
              if ((i & 0xFFFFFFFE) == 2)
              {
                break;
              }

              v54 = *(v46 + 4 * (((i + (i >> 31)) >> 1) ^ 1));
            }
          }

          else
          {
            v29 = *(v12 + 72);
            v30 = v29 + v26;
LABEL_39:
            if (v30 >= 2)
            {
              do
              {
                if (*(v10 + 60))
                {
                  break;
                }

                v31 = v30 >> 1;
                v32 = *(v12 + 96);
                v33 = (v30 >> 1) - v29 / 2;
                if ((v30 >> 1) >= v29 / 2)
                {
                  v34 = 2 * v33;
                  v35 = (2 * v33) | 1;
                }

                else
                {
                  v34 = *(v32 + 4 * (v30 & 0x7FFFFFFE));
                  v35 = *(v32 + 4 * (v30 | 1));
                }

                v36 = v32 + 4 * v31;
                v37 = v21 + (v34 << 7);
                *(v36 + 2) = 0;
                if (*(v37 + 16))
                {
                  v38 = v21 + (v35 << 7);
                  if (*(v38 + 16))
                  {
                    v39 = *(v37 + 104);
                    v40 = *(v38 + 104);
                    if (v39 >= v40)
                    {
                      v41 = v40;
                    }

                    else
                    {
                      v41 = v39;
                    }

                    if (v41 < 1 || (v42 = v29, v43 = memcmp(*(v37 + 96), *(v38 + 96), v41), v29 = v42, !v43))
                    {
                      v43 = v39 - v40;
                      if (v39 == v40)
                      {
                        *(v36 + 2) = 1;
                        v44 = *(v37 + 112);
                        v45 = *(v38 + 112);
                        if (v44 == v45)
                        {
                          v10 = v67;
                          v21 = v12 + 104;
                          if (v35)
                          {
                            (*(v38 + 48))(v67, v38, 0);
                            v29 = *(v12 + 72);
                            v31 = v29 + v35;
                          }

                          goto LABEL_63;
                        }

                        if (*(v12 + 76) == v44 > v45)
                        {
                          v43 = -1;
                        }

                        else
                        {
                          v43 = 1;
                        }
                      }
                    }

                    if (v43 < 0)
                    {
                      LOWORD(v35) = v34;
                    }

                    v10 = v67;
                    v21 = v12 + 104;
                  }

                  else
                  {
                    LOWORD(v35) = v34;
                  }
                }

                *v36 = v35;
LABEL_63:
                v30 = v31;
              }

              while (v31 > 1);
            }

            v46 = *(v12 + 96);
            v47 = v21 + (*(v46 + 4) << 7);
            *(v12 + 20) = *(v47 + 16) == 0;
            *(v12 + 88) = *(v47 + 112);
            v22 = 1;
          }

LABEL_65:
          if (*(v10 + 60))
          {
            break;
          }

          v53 = v21 + (*(v46 + 4) << 7);
          if (!*(v53 + 16))
          {
            break;
          }
        }

        while (!*(v53 + 120));
        v48 = sub_1819DF594(v12);
        v49 = *(v10 + 60);
        if (!v48)
        {
          break;
        }

        if (v49)
        {
          goto LABEL_5;
        }
      }
    }

    while (!v49);
  }

LABEL_5:
  sub_1819DB2CC(v12);
  sub_1819D8AE8(v66);
}

uint64_t sub_1819F02E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (*(a3 + 16) < 1)
  {
    goto LABEL_39;
  }

  v8 = *a3;
  v9 = *(a2 + 16);
  v40 = a2;
  v41 = result;
  if (*a3 > v9 || *(a2 + 56) < 1)
  {
    goto LABEL_38;
  }

  if (*(result + 60))
  {
    goto LABEL_37;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a2 + 24);
  v13 = 1;
  v14 = v12;
  do
  {
    v15 = v14 <= v13 ? v13 : v14;
    v16 = v12 * v10 + 1;
    v17 = v12 + v12 * v10 <= v16 ? v16 : v12 + v12 * v10;
    if (!*(a2 + 56))
    {
      break;
    }

    v18 = v11;
    v19 = v10 * v12 + v12;
    if (v12 < 1)
    {
      v22 = v10 * v12;
LABEL_21:
      if (v22 != v19)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v20 = (v11 << 32) + 0x100000000;
      v21 = *(a2 + 32) + 16 * v11;
      v22 = v11;
      while (*(v21 + 8))
      {
        ++v22;
        v21 += 16;
        v23 = v19 <= v20 >> 32;
        v20 += 0x100000000;
        if (v23)
        {
          goto LABEL_21;
        }
      }

      v24 = *(a2 + 48);
      *(a2 + 48) = *v21;
      *v21 = v24;
      *(a2 + 56) = 0;
      if (v22 != v19)
      {
        goto LABEL_6;
      }
    }

    v39 = 16 * v11;
    v37 = v17;
    v38 = v11;
    (*a2)(v41, v40 + 48, v12, *(a2 + 32) + 16 * v10 * v12);
    v18 = v38;
    a2 = v40;
    result = v41;
    if (v12 >= 1)
    {
      v25 = v37 - v16;
      v26 = v25 + 1;
      v27 = *(v40 + 32);
      v28 = v38;
      if (v25 + 1 < 2)
      {
        goto LABEL_26;
      }

      v28 = v38;
      if (v16 + v25 < v16)
      {
        goto LABEL_26;
      }

      v28 = v38;
      if (HIDWORD(v25))
      {
        goto LABEL_26;
      }

      v31 = (v15 - v13 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v28 = (v26 & 0xFFFFFFFFFFFFFFFELL) + v38;
      v32 = (v27 + v39 + 24);
      do
      {
        *(v32 - 4) = 0;
        *v32 = 0;
        v32 += 8;
        v31 -= 2;
      }

      while (v31);
      if (v26 != (v26 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_26:
        v29 = (v27 + 16 * v28 + 8);
        v30 = (v28 << 32) + 0x100000000;
        do
        {
          *v29 = 0;
          v29 += 4;
          v23 = v19 <= v30 >> 32;
          v30 += 0x100000000;
        }

        while (!v23);
      }
    }

LABEL_6:
    ++v10;
    v11 = v18 + v12;
    v14 += v12;
    v13 += v12;
  }

  while (!*(result + 60));
  v7 = a3;
  v6 = a4;
  v8 = *a3;
  v5 = a5;
LABEL_37:
  v9 = 0;
  *(a2 + 16) = 0;
LABEL_38:
  (*(a2 + 8))(v41, v8 - v9, v7, v40 + 48);
  a2 = v40;
  result = v41;
  *(v40 + 16) = *v7;
LABEL_39:
  v33 = *(a2 + 64);
  if (v33)
  {

    return sub_1819F080C(result, v33, v7, v6, v5);
  }

  return result;
}

uint64_t sub_1819F0580(uint64_t result, uint64_t a2)
{
  if (*(result + 60))
  {
    return result;
  }

  v2 = result;
  v4 = 24 * *(a2 + 4);
  result = sqlite3_initialize();
  if (result || (result = sub_181902484(v4, 1913357809)) == 0)
  {
    if (v4 >= 1)
    {
      *(v2 + 60) = 7;
    }

    return result;
  }

  v5 = result;
  bzero(result, v4);
  v6 = *(a2 + 4);
  if (v6 < 2)
  {
    goto LABEL_35;
  }

  v7 = *(a2 + 8);
  v8 = 1;
  v9 = v5;
  do
  {
    v10 = v9;
    v9 = v7;
    if (v6 >= 1)
    {
      v11 = 0;
      while (1)
      {
        v12 = v6 - v11;
        if (v8 < v6 - v11)
        {
          v12 = v8;
        }

        v13 = v6 - (v12 + v11);
        if (v8 < v13)
        {
          v13 = v8;
        }

        v14 = v13 > 0;
        v15 = v12 > 0;
        if (v12 > 0 || v13 >= 1)
        {
          break;
        }

LABEL_12:
        v11 += 2 * v8;
        if (v11 >= v6)
        {
          goto LABEL_9;
        }
      }

      v16 = 0;
      v17 = 0;
      v18 = &v9[24 * v11];
      v19 = &v9[24 * v12 + 24 * v11];
      while (1)
      {
        v20 = &v10[24 * v11 + 24 * v17 + 24 * v16];
        if (!v14)
        {
          break;
        }

        if (v15)
        {
          v21 = v16;
          v22 = &v18[24 * v16];
          v23 = &v19[24 * v17];
          if (*v22 < *v23)
          {
            goto LABEL_27;
          }

          v24 = v17;
          if (*v22 == *v23 && *(v22 + 1) <= *(v23 + 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = v17;
        }

        v27 = &v19[24 * v24];
        v28 = *v27;
        *(v20 + 16) = *(v27 + 2);
        *v20 = v28;
        ++v17;
LABEL_30:
        v14 = v17 < v13;
        v15 = v16 < v12;
        if (v16 >= v12 && v17 >= v13)
        {
          v6 = *(a2 + 4);
          goto LABEL_12;
        }
      }

      v21 = v16;
LABEL_27:
      v25 = &v18[24 * v21];
      v26 = *v25;
      *(v20 + 16) = *(v25 + 2);
      *v20 = v26;
      ++v16;
      goto LABEL_30;
    }

LABEL_9:
    v8 *= 2;
    v7 = v10;
  }

  while (v8 < v6);
  v29 = *(a2 + 8);
  if (v10 != v29)
  {
    memcpy(v29, v10, 24 * v6);
  }

LABEL_35:
  v30 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    result = off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v30 = &xmmword_1ED452F28;
      goto LABEL_40;
    }
  }

  else
  {
LABEL_40:
    v31 = *v30;

    return v31(v5);
  }

  return result;
}

uint64_t sub_1819F080C(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v30 = 0;
  v29 = 0;
  if (a4)
  {
    v8 = (a5 - 1);
    v9 = *a2;
    v10 = *(*a2 + 24);
    a2[2] = v10;
    a2[3] = v8;
    if (a5 != 1)
    {
      v11 = (v10 + v8);
      v12 = *(v9 + 28);
      if (v11 <= v12)
      {
        v28 = *(v9 + 16);
      }

      else
      {
        v13 = a4;
        if (v12)
        {
          LODWORD(v14) = *(v9 + 28);
        }

        else
        {
          LODWORD(v14) = 64;
        }

        v14 = v14;
        do
        {
          v15 = v14;
          v14 *= 2;
        }

        while (v15 < v11);
        v16 = *(v9 + 16);
        if (sqlite3_initialize())
        {
          goto LABEL_10;
        }

        v28 = sub_18190287C(v16, v15, 688041480);
        if (!v28)
        {
          goto LABEL_10;
        }

        *(v9 + 28) = v15;
        *(v9 + 16) = v28;
        v10 = *(v9 + 24);
        a4 = v13;
      }

      memcpy((v28 + v10), (a4 + 1), v8);
      *(v9 + 24) += v8;
    }
  }

  while (1)
  {
    result = sub_1819E0A34(a3[1], *(a3 + 4), &v30, &v29);
    if (result)
    {
      return result;
    }

    if (!*(a1 + 60))
    {
      v18 = *a2;
      v19 = a2[2];
      v20 = a2[3];
      v21 = *a3;
      v22 = v29;
      v23 = *(*a2 + 4);
      if (v23 == **a2)
      {
        if (v23)
        {
          v24 = 2 * v23;
        }

        else
        {
          v24 = 64;
        }

        v25 = *(v18 + 8);
        if (!sqlite3_initialize())
        {
          v26 = sub_18190287C(v25, (24 * v24) & ~((24 * v24) >> 31), 0x1000040504FFAC1);
          if (v26)
          {
            *(v18 + 8) = v26;
            *v18 = v24;
            v23 = *(v18 + 4);
            goto LABEL_21;
          }
        }

LABEL_10:
        *(a1 + 60) = 7;
      }

      else
      {
        v26 = *(v18 + 8);
LABEL_21:
        v27 = v26 + 24 * v23;
        *v27 = v21;
        *(v27 + 8) = v22;
        *(v27 + 16) = v19;
        *(v26 + 24 * (*(v18 + 4))++ + 20) = v20;
      }
    }
  }
}

uint64_t sub_1819F09D4(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 112);
  *(result + 16) = *(a2 + 120);
  return result;
}

uint64_t sub_1819F09E8(uint64_t result, uint64_t a2)
{
  v2 = result;
  *result = *(a2 + 112);
  v3 = *(a2 + 120);
  *(result + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  if (v4 + v3 > *(v5 + 12))
  {
    *(result + 48) = 0;
    v6 = *(result + 32);
    v7 = (v3 + 8);
    v8 = *(result + 52);
    if (v7 <= v8)
    {
      v14 = 0;
      result = *(result + 40);
    }

    else
    {
      v9 = a2;
      if (v8)
      {
        LODWORD(v10) = *(result + 52);
      }

      else
      {
        LODWORD(v10) = 64;
      }

      v10 = v10;
      do
      {
        v11 = v10;
        v10 *= 2;
      }

      while (v11 < v7);
      v12 = *(result + 40);
      result = sqlite3_initialize();
      if (result || (result = sub_18190287C(v12, v11, 688041480)) == 0)
      {
        *(v6 + 60) = 7;
LABEL_13:
        v13 = *(v2 + 40);
        goto LABEL_14;
      }

      *(v2 + 52) = v11;
      *(v2 + 40) = result;
      v14 = *(v2 + 48);
      a2 = v9;
      LODWORD(v3) = *(v9 + 120);
    }

    *(result + v14 + v3) = 0;
    result = sub_1819ED198(v6, a2, v2 + 40, sub_1819F107C);
    goto LABEL_13;
  }

  v13 = *v5 + v4;
LABEL_14:
  *(v2 + 8) = v13;
  return result;
}

uint64_t sub_1819F0B0C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56);
  *result = *(a2 + 112);
  v3 = *(a2 + 32);
  v4 = *(a2 + 120);
  v5 = *(a2 + 16);
  if (v3 + v4 > *(v5 + 3))
  {
    *(result + 48) = 0;
    v6 = result;
    result = sub_1819F0EE8(*(result + 32), a2, v2, result + 40);
    *(v6 + 8) = *(v6 + 40);
    *(v6 + 16) = *(v6 + 48);
    return result;
  }

  v7 = *v5;
  v8 = *(result + 32);
  *(result + 48) = 0;
  if (!*(v8 + 60))
  {
    if (*v2 >= 2)
    {
      LODWORD(v9) = *(result + 52);
      if (v9 < v4)
      {
        v10 = v2;
        if (!v9)
        {
          LODWORD(v9) = 64;
        }

        v9 = v9;
        do
        {
          v11 = v9;
          v9 *= 2;
        }

        while (v11 < v4);
        v12 = result;
        v13 = *(result + 40);
        result = sqlite3_initialize();
        if (result || (result = sub_18190287C(v13, v11, 688041480)) == 0)
        {
          *(v8 + 60) = 7;
          return result;
        }

        v14 = result;
        result = v12;
        *(v12 + 52) = v11;
        *(v12 + 40) = v14;
        v2 = v10;
      }
    }

    v15 = 0;
    LODWORD(v16) = 0;
    v17 = (v7 + v3);
    v18 = v7 + v3 + v4;
    v19 = (v7 + v3);
    while (1)
    {
      v16 = v16;
      while (1)
      {
        v20 = v2[v16 + 1];
        if (v20 >= v15)
        {
          break;
        }

        if (++v16 == *v2)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= v18)
      {
        v23 = 0;
        v21 = v19;
      }

      else
      {
        v21 = v19;
        do
        {
          v22 = *v21;
          v23 = v22 == 1;
          if (v22 == 1)
          {
            break;
          }

          ++v21;
          if (v22 < 0)
          {
            do
            {
              v24 = *v21++;
            }

            while (v24 < 0);
          }
        }

        while (v21 < v18);
      }

      if (v20 == v15)
      {
        if (*v2 == 1)
        {
          *(result + 8) = v17;
          v35 = v21 - v17;
LABEL_39:
          *(result + 16) = v35;
          return result;
        }

        v25 = v21 - v17;
        v26 = result;
        v27 = v2;
        memcpy((*(result + 40) + *(result + 48)), v17, v21 - v17);
        v2 = v27;
        result = v26;
        *(v26 + 48) += v25;
      }

      if (!v23)
      {
LABEL_38:
        *(result + 8) = *(result + 40);
        v35 = *(result + 48);
        goto LABEL_39;
      }

      v19 = v21 + 2;
      v15 = v21[1];
      v17 = v21;
      if (v21[1] < 0)
      {
        v28 = *v19;
        v29 = v28;
        if (v28 < 0)
        {
          v31 = v21[3];
          if (v31 < 0)
          {
            v36 = 0;
            v32 = result;
            v33 = v2;
            v34 = sub_1819DFFB0(v21 + 1, &v36);
            v2 = v33;
            LODWORD(v30) = v34;
            result = v32;
            v15 = v36 & 0x7FFFFFFF;
            v30 = v30;
          }

          else
          {
            v15 = ((v15 & 0x7F) << 14) | ((v29 & 0x7F) << 7) | v31;
            v30 = 3;
          }
        }

        else
        {
          v15 = ((v15 & 0x7F) << 7) | v28;
          v30 = 2;
        }

        v19 = &v21[v30 + 1];
        v17 = v21;
      }
    }
  }

  return result;
}

uint64_t sub_1819F0DAC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 32);
  v4 = *(a2 + 120);
  v5 = *(a2 + 16);
  if (v3 + v4 <= *(v5 + 3))
  {
    v9 = *v5;
    v10 = *(result + 56);
    v13 = *v10;
    v11 = v10 + 1;
    v12 = v13;
    v14 = *(result + 40);
    *result = *(a2 + 112);
    if (v4 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = (v9 + v3);
      v18 = &v17[v4];
      v19 = &v11[v12];
      do
      {
        v20 = *v17++;
        v16 = v16 + v20 - 2;
        while (*v11 < v16)
        {
          if (++v11 == v19)
          {
            goto LABEL_12;
          }
        }

        if (*v11 == v16)
        {
          *v14++ = v16 - v15 + 2;
          v15 = v16;
        }
      }

      while (v17 < v18);
    }

LABEL_12:
    v21 = *(result + 40);
    *(result + 8) = v21;
    v8 = v14 - v21;
  }

  else
  {
    *(result + 48) = 0;
    result = sub_1819F0EE8(*(result + 32), a2, *(result + 56), result + 40);
    v7 = *(v2 + 40);
    *v2 = *(a2 + 112);
    *(v2 + 8) = v7;
    v8 = *(v2 + 48);
  }

  *(v2 + 16) = v8;
  return result;
}

uint64_t sub_1819F0E9C(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  result = sub_1819F0EE8(*(a1 + 32), a2, *(a1 + 56), a1 + 40);
  v5 = *(a1 + 40);
  *a1 = *(a2 + 112);
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a1 + 48);
  return result;
}

uint64_t sub_1819F0EE8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = *(a2 + 120);
  v5 = *(a4 + 8);
  v6 = *(a4 + 12);
  v7 = (v5 + v4 + 8);
  if (v7 <= v6)
  {
    v16 = *a4;
  }

  else
  {
    v8 = a3;
    v9 = a1;
    v10 = a2;
    if (v6)
    {
      LODWORD(v11) = *(a4 + 12);
    }

    else
    {
      LODWORD(v11) = 64;
    }

    v11 = v11;
    do
    {
      v12 = v11;
      v11 *= 2;
    }

    while (v12 < v7);
    v13 = a4;
    v14 = *a4;
    result = sqlite3_initialize();
    if (result || (result = sub_18190287C(v14, v12, 688041480)) == 0)
    {
      *(v9 + 60) = 7;
      return result;
    }

    v16 = result;
    a4 = v13;
    *(v13 + 12) = v12;
    *v13 = result;
    v5 = *(v13 + 8);
    a2 = v10;
    v4 = *(v10 + 120);
    a1 = v9;
    a3 = v8;
  }

  *(v16 + v4 + v5) = 0;
  if (a3)
  {
    if (*(*a1 + 116))
    {
      v23 = a3;
      v24 = 0;
      v22 = a4;
      v17 = sub_1819F139C;
    }

    else
    {
      v23 = a3;
      v24 = 0;
      v22 = a4;
      v20 = *a3;
      v18 = a3 + 1;
      v19 = v20;
      if (v20 < 1)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        while (*v18++)
        {
          if (!--v19)
          {
            goto LABEL_24;
          }
        }

        LODWORD(v19) = 1;
      }

LABEL_24:
      LODWORD(v24) = v19;
      v17 = sub_1819F10D4;
    }

    return sub_1819ED198(a1, a2, &v22, v17);
  }

  else
  {

    return sub_1819ED198(a1, a2, a4, sub_1819F107C);
  }
}

void *sub_1819F107C(int a1, uint64_t a2, void *__src, size_t __n)
{
  if (__n >= 1)
  {
    v5 = __n;
    result = memcpy((*a2 + *(a2 + 8)), __src, __n);
    *(a2 + 8) += v5;
  }

  return result;
}

void sub_1819F10D4(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  if (a4 >= 1)
  {
    v36[11] = v4;
    v36[12] = v5;
    if (*(a2 + 16) == 2)
    {
      v9 = *a3;
      if (*a3 < 0)
      {
        v11 = a3[1];
        if (a3[1] < 0)
        {
          v12 = a3[2];
          if (v12 < 0)
          {
            v36[0] = 0;
            v10 = sub_1819DFFB0(a3, v36);
            v9 = v36[0] & 0x7FFFFFFF;
          }

          else
          {
            v9 = ((v9 & 0x7F) << 14) | ((v11 & 0x7F) << 7) | v12;
            v10 = 3;
          }
        }

        else
        {
          v9 = ((v9 & 0x7F) << 7) | v11;
          v10 = 2;
        }
      }

      else
      {
        v10 = 1;
      }

      v13 = *(a2 + 8);
      v16 = *v13;
      v14 = v13 + 1;
      v15 = v16;
      if (v16 < 1)
      {
LABEL_14:
        *(a2 + 16) = 0;
      }

      else
      {
        while (1)
        {
          v17 = *v14++;
          if (v17 == v9)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_14;
          }
        }

        *(a2 + 16) = 1;
        *(**a2 + (*(*a2 + 8))++) = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v18 = 0;
    do
    {
      if (v10 >= a4)
      {
        v21 = 0;
LABEL_26:
        if (!*(a2 + 16))
        {
          goto LABEL_28;
        }
      }

      else
      {
        while (1)
        {
          v20 = a3[v10];
          v21 = v20 == 1;
          if (v20 == 1)
          {
            break;
          }

          v22 = &a3[v10];
          do
          {
            v23 = *v22++;
            v10 = (v10 + 1);
          }

          while (v23 < 0);
          if (v10 >= a4)
          {
            goto LABEL_26;
          }
        }

        v21 = 1;
        if (!*(a2 + 16))
        {
          goto LABEL_28;
        }
      }

      memcpy((**a2 + *(*a2 + 8)), &a3[v18], v10 - v18);
      *(*a2 + 8) += v10 - v18;
LABEL_28:
      if (v21)
      {
        v19 = v10 + 1;
        if (v19 >= a4)
        {
          *(a2 + 16) = 2;
        }

        else
        {
          v24 = &a3[v19];
          v25 = a3[v19];
          if (a3[v19] < 0)
          {
            v26 = v24[1];
            if (v24[1] < 0)
            {
              v28 = v24[2];
              if (v28 < 0)
              {
                v36[0] = 0;
                v27 = sub_1819DFFB0(v24, v36);
                v25 = v36[0] & 0x7FFFFFFF;
              }

              else
              {
                v25 = ((v25 & 0x7F) << 14) | ((v26 & 0x7F) << 7) | v28;
                v27 = 3;
              }
            }

            else
            {
              v25 = ((v25 & 0x7F) << 7) | v26;
              v27 = 2;
            }

            v19 = (v27 + v19);
          }

          else
          {
            v19 = (v10 + 2);
          }

          v29 = *(a2 + 8);
          v32 = *v29;
          v30 = v29 + 1;
          v31 = v32;
          if (v32 < 1)
          {
LABEL_44:
            *(a2 + 16) = 0;
          }

          else
          {
            while (1)
            {
              v33 = *v30++;
              if (v33 == v25)
              {
                break;
              }

              if (!--v31)
              {
                goto LABEL_44;
              }
            }

            *(a2 + 16) = 1;
            v34 = &a3[v10];
            v35 = v19 - v10;
            memcpy((**a2 + *(*a2 + 8)), v34, v35);
            *(*a2 + 8) += v35;
            v10 = v19;
          }
        }
      }

      else
      {
        v19 = v10;
        v10 = v18;
      }

      v18 = v10;
      v10 = v19;
    }

    while (v19 < a4);
  }
}

void sub_1819F139C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v25[7] = v4;
    v25[8] = v5;
    v9 = 0;
    do
    {
      v11 = a3 + v9;
      v12 = *(a3 + v9);
      if (*(a3 + v9) < 0)
      {
        v14 = *(v11 + 1);
        if (*(v11 + 1) < 0)
        {
          v15 = *(v11 + 2);
          if (v15 < 0)
          {
            v25[0] = 0;
            v13 = sub_1819DFFB0(v11, v25);
            v12 = v25[0] & 0x7FFFFFFF;
          }

          else
          {
            v12 = ((v12 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v15;
            v13 = 3;
          }
        }

        else
        {
          v12 = ((v12 & 0x7F) << 7) | v14;
          v13 = 2;
        }
      }

      else
      {
        v13 = 1;
      }

      v16 = *(a2 + 16) + v12;
      v17 = v16 - 2;
      *(a2 + 16) = v16 - 2;
      v18 = *(a2 + 8);
      v21 = *v18;
      v19 = v18 + 1;
      v20 = v21;
      if (v21 >= 1)
      {
        while (1)
        {
          v22 = *v19++;
          if (v22 == v17)
          {
            break;
          }

          if (!--v20)
          {
            goto LABEL_5;
          }
        }

        v23 = (**a2 + *(*a2 + 8));
        v24 = v16 - *(a2 + 20);
        if (v24 <= 0x7F)
        {
          v23->i8[0] = v24;
          v10 = 1;
        }

        else if (v24 >> 14)
        {
          v10 = sub_1819436D0(v23, v24);
        }

        else
        {
          v23->i8[0] = (v24 >> 7) | 0x80;
          v23->i8[1] = v24 & 0x7F;
          v10 = 2;
        }

        *(*a2 + 8) += v10;
        *(a2 + 20) = v17;
      }

LABEL_5:
      v9 += v13;
    }

    while (v9 < a4);
  }
}

uint64_t sub_1819F1508(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (sqlite3_initialize())
  {
    goto LABEL_2;
  }

  v21 = 0;
  v18 = 0;
  v19 = &v22;
  v20 = 0x7FFFFFFD00000200;
  sqlite3_str_vappendf(&v18, "SELECT rowid, rank FROM %Q.%Q ORDER BY %s(%w%s%s) %s", &a9);
  if (v19)
  {
    v19[v21] = 0;
    if (HIDWORD(v20))
    {
      if ((v21 & 0x40000000000) == 0)
      {
        v13 = sub_18192A12C(&v18);
        if (!v13)
        {
          goto LABEL_2;
        }

LABEL_9:
        v14 = sub_1818954B4(*a2, v13, 0xFFFFFFFFLL, 129, 0, &v17, 0, v12);
        if (v14)
        {
          v15 = sqlite3_errmsg(*a2);
          sub_1819D75B8(a2, "%s", v15);
        }

        v16 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v13);
          --qword_1ED456A90;
          off_1ED452EB0(v13);
          v13 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_17;
          }

          v16 = &xmmword_1ED452F28;
        }

        (*v16)(v13);
LABEL_17:
        result = v14;
        goto LABEL_18;
      }
    }
  }

  v13 = v19;
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_2:
  result = 7;
LABEL_18:
  *a1 = v17;
  return result;
}

uint64_t sub_1819F16C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  result = sqlite3_step(*v2);
  if (result == 101)
  {
    v17 = 3;
  }

  else
  {
    if (result != 100)
    {
      return result;
    }

    *(v2 + 8) = sqlite3_column_int64(*v2, 0);
    v4 = sqlite3_column_bytes(*v2, 1);
    v5 = sqlite3_column_blob(*v2, 1);
    if (v4 >= 1)
    {
      v6 = v5;
      v7 = *(v2 + 24);
      if (v7 < 2)
      {
        v8 = 0;
        v11 = v5;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = v7 - 1;
        v11 = v5;
        do
        {
          v13 = *v11;
          if (*v11 < 0)
          {
            v14 = v11[1];
            if (v11[1] < 0)
            {
              v15 = v11[2];
              if (v15 < 0)
              {
                v18 = 0;
                v16 = sub_1819DFFB0(v11, &v18);
                v13 = v18 & 0x7FFFFFFF;
                v12 = v16;
              }

              else
              {
                v13 = ((v13 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v15;
                v12 = 3;
              }
            }

            else
            {
              v13 = ((v13 & 0x7F) << 7) | v14;
              v12 = 2;
            }
          }

          else
          {
            v12 = 1;
          }

          v11 += v12;
          v9 += v13;
          *(v2 + 28 + 4 * v8++) = v9;
        }

        while (v8 < v10);
      }

      *(v2 + 4 * v8 + 28) = v6 + v4 - v11;
      *(v2 + 16) = v11;
    }

    v17 = 78;
  }

  result = 0;
  *(a1 + 80) |= v17;
  return result;
}

uint64_t sub_1819F1838(uint64_t a1, int a2)
{
  v3 = (a1 + 56);
  if (*(a1 + 56))
  {
    if ((*(a1 + 80) & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = *a1;
    if (*(a1 + 32) == 5)
    {
      v6 = *(a1 + 36) != 0;
    }

    else
    {
      v6 = 2;
    }

    v7 = *(v5 + 40);
    v8 = (v5 + 16);
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    result = sub_1819D907C(v7, v6, v3, v9);
    if (result)
    {
      return result;
    }

    v7[v6 + 6] = 0;
    if ((*(a1 + 80) & 2) == 0)
    {
      return 0;
    }
  }

  v10 = *a1;
  sqlite3_reset(*(a1 + 56));
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(v12 + 8);
  }

  else if (*(a1 + 32) < 5)
  {
    v13 = *(*(*(a1 + 64) + 16) + 24);
  }

  else
  {
    v13 = sqlite3_column_int64(*(a1 + 56), 0);
  }

  if (!sub_1818DF6EC(v11, 0))
  {
    v14 = v11[16];
    if ((*(v14 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v14, v13);
    }

    else
    {
      *v14 = v13;
      *(v14 + 20) = 4;
    }

    v15 = *(*v11 + 24);
    if (v15)
    {
      xmmword_1ED452F28(v15);
    }
  }

  ++*(*(v10 + 24) + 184);
  v16 = sqlite3_step(*v3);
  --*(*(v10 + 24) + 184);
  if (v16 == 100)
  {
    result = 0;
    *(a1 + 80) &= ~2u;
  }

  else
  {
    result = sqlite3_reset(*v3);
    if (result)
    {
      v17 = *(v10 + 24);
      if (*(v17 + 248))
      {
        v18 = result;
        v19 = sqlite3_errmsg(*v17);
        sub_1819DCD80(v10, "%s", v19);
        return v18;
      }
    }

    else
    {
      v20 = *(a1 + 72);
      if (v20)
      {
        v21 = *(v20 + 8);
      }

      else if (*(a1 + 32) < 5)
      {
        v21 = *(*(*(a1 + 64) + 16) + 24);
      }

      else
      {
        v21 = sqlite3_column_int64(*v3, 0);
      }

      sub_1819DCD80(v10, "fts5: missing row %lld from content table %s", v21, *(*(v10 + 24) + 88));
      return 267;
    }
  }

  return result;
}

uint64_t sub_1819F1A64(uint64_t a1, sqlite3_stmt *a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v9 = a3 + 1;
  v10 = sqlite3_column_value(a2, a3 + 1);
  v19 = 0;
  v18 = 0;
  if (*(a1 + 112) && *(a1 + 72) == 2 && sub_1819DCE5C(a1, v10))
  {
    v11 = sub_1819DCF2C(v10, a4, a5, &v19, &v18);
    v12 = v19;
    v13 = v18;
    goto LABEL_28;
  }

  if (!v10)
  {
    *a4 = 0;
    sub_1819012D0(93690);
    goto LABEL_20;
  }

  v14 = *(v10 + 10);
  if ((~v14 & 0x202) != 0 || *(v10 + 22) != 1)
  {
    if (v14)
    {
      *a4 = 0;
      if ((v14 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = sub_18193CB70(v10, 1);
      LOWORD(v14) = *(v10 + 10);
      *a4 = v15;
      if ((v14 & 2) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    *a4 = *(v10 + 1);
    if ((v14 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  if (*(v10 + 22) == 1)
  {
    v16 = *(v10 + 4);
    goto LABEL_21;
  }

LABEL_17:
  if ((v14 & 0x10) != 0)
  {
    v16 = *(v10 + 4);
    if ((v14 & 0x400) != 0)
    {
      v16 += *v10;
    }

    goto LABEL_21;
  }

  if ((v14 & 1) == 0)
  {
    v16 = sub_18193CB44(v10, 1);
    goto LABEL_21;
  }

LABEL_20:
  v16 = 0;
LABEL_21:
  *a5 = v16;
  if (*(a1 + 112) && !*(a1 + 72))
  {
    v12 = sqlite3_column_text(a2, *(a1 + 32) + v9);
    v13 = sqlite3_column_bytes(a2, *(a1 + 32) + v9);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v11 = 0;
LABEL_28:
  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
  return v11;
}

uint64_t sub_1819F1C34(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a1 + 40);
  result = sub_1819F39A0(v3, 0);
  if (!result)
  {
    v5 = *(v3 + 24);
    *a2 = v5;
    if (v5 >= 1)
    {
      return 0;
    }

    else
    {
      return 267;
    }
  }

  return result;
}

uint64_t sub_1819F1C80(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *(*a1 + 40);
  result = sub_1819F39A0(v5, 0);
  if (!result)
  {
    *a3 = 0;
    v7 = *(*v5 + 32);
    if ((a2 & 0x80000000) == 0)
    {
      if (v7 <= a2)
      {
        return 25;
      }

      result = 0;
      *a3 = *(v5[4] + 8 * a2);
      return result;
    }

    if (v7 >= 1)
    {
      v8 = v5[4];
      if (v7 >= 8 && (v8 + 8 * v7 > a3 ? (v9 = v8 >= (a3 + 1)) : (v9 = 1), v9))
      {
        v10 = v7 & 0x7FFFFFFC;
        v11 = (v8 + 16);
        v12 = 0uLL;
        v13 = v10;
        v14 = 0uLL;
        do
        {
          v12 = vaddq_s64(v11[-1], v12);
          v14 = vaddq_s64(*v11, v14);
          v11 += 2;
          v13 -= 4;
        }

        while (v13);
        v15 = vaddvq_s64(vaddq_s64(v14, v12));
        *a3 = v15;
        v16 = v15;
        if (v10 == v7)
        {
          return 0;
        }
      }

      else
      {
        v10 = 0;
        v16 = 0;
      }

      v17 = v7 - v10;
      v18 = (v8 + 8 * v10);
      do
      {
        v19 = *v18++;
        v16 += v19;
        *a3 = v16;
        --v17;
      }

      while (v17);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1819F1D94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  if (a2)
  {
    if (*(v6 + 128) || (v12 = a4, result = sub_1819D630C(v6), a4 = v12, !result))
    {
      v10 = *(v6 + 144);
      if (v10)
      {
        result = (*(v10 + 16))(*(v6 + 128), a4, 8, a2, a3, a5);
      }

      else
      {
        result = (*(*(v6 + 136) + 24))(*(v6 + 128), a4, 8, a2, a3, *(v6 + 168), *(v6 + 176), a5);
      }
    }
  }

  else
  {
    result = 0;
  }

  v13 = *(v5 + 24);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  return result;
}

uint64_t sub_1819F1E68(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return *(v1 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1819F1E80(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (*(v2 + 28) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(*(v2 + 32) + 8 * a2) + 24);
  }
}

uint64_t sub_1819F1EAC(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 80) & 8) == 0 || (result = sub_1819F3B18(a1), !result))
  {
    result = 0;
    *a2 = *(a1 + 172);
  }

  return result;
}

uint64_t sub_1819F1EF0(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if ((*(a1 + 80) & 8) == 0 || (result = sub_1819F3B18(a1), !result))
  {
    if (a2 < 0 || *(a1 + 172) <= a2)
    {
      return 25;
    }

    else
    {
      result = 0;
      v11 = (*(a1 + 176) + 4 * (3 * a2));
      *a3 = *v11;
      *a4 = v11[1];
      *a5 = v11[2];
    }
  }

  return result;
}

sqlite3_int64 sub_1819F1F84(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    return *(v1 + 8);
  }

  if (*(a1 + 32) < 5)
  {
    return *(*(*(a1 + 64) + 16) + 24);
  }

  return sqlite3_column_int64(*(a1 + 56), 0);
}

uint64_t sub_1819F1FBC(sqlite3_stmt **a1, int a2, uint64_t *a3, _DWORD *a4)
{
  if (a2 < 0)
  {
    return 25;
  }

  v4 = *a1;
  v5 = *(*a1 + 3);
  if (*(v5 + 32) <= a2)
  {
    return 25;
  }

  if (*(v5 + 72) == 1)
  {
    result = 0;
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    result = sub_1819F1838(a1, 0);
    if (!result)
    {
      result = sub_1819F1A64(*(v4 + 3), a1[7], a2, a3, a4);
      v11 = *(v4 + 3);
      *(v11 + 168) = 0;
      *(v11 + 176) = 0;
    }
  }

  return result;
}

uint64_t sub_1819F2064(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v6 = *a1;
  v7 = *(*a1 + 24);
  if ((*(a1 + 80) & 4) != 0)
  {
    if (*(v7 + 104))
    {
      v10 = *(a1 + 72);
      if (v10)
      {
        v11 = *(v10 + 8);
      }

      else if (*(a1 + 32) < 5)
      {
        v11 = *(*(*(a1 + 64) + 16) + 24);
      }

      else
      {
        v11 = sqlite3_column_int64(*(a1 + 56), 0);
      }

      result = sub_1819F48B8(*(v6 + 40), v11, *(a1 + 16));
    }

    else
    {
      if (*(v7 + 88) && *(v7 + 72) != 3)
      {
        result = sub_1819F1838(a1, 0);
        if (result)
        {
          goto LABEL_38;
        }

        v15 = 0;
        while (v15 < *(v7 + 32))
        {
          if (*(*(v7 + 48) + v15))
          {
            ++v15;
          }

          else
          {
            v25 = 0;
            v24 = 0;
            *(*(a1 + 16) + 4 * v15) = 0;
            result = sub_1819F1A64(v7, *(a1 + 56), v15, &v25, &v24);
            if (!result)
            {
              v16 = v25;
              if (v25)
              {
                v17 = v24;
                v18 = *(a1 + 16);
                if (*(v7 + 128) || (result = sub_1819D630C(v7), !result))
                {
                  v19 = v18 + 4 * v15;
                  v20 = *(v7 + 144);
                  if (v20)
                  {
                    result = (*(v20 + 16))(*(v7 + 128), v19, 8, v16, v17, sub_1819F4A68);
                  }

                  else
                  {
                    result = (*(*(v7 + 136) + 24))(*(v7 + 128), v19, 8, v16, v17, *(v7 + 168), *(v7 + 176), sub_1819F4A68);
                  }
                }
              }

              else
              {
                result = 0;
              }
            }

            *(v7 + 168) = 0;
            *(v7 + 176) = 0;
            ++v15;
            if (result)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else
      {
        v12 = *(v7 + 32);
        if (v12 >= 1)
        {
          v13 = 0;
          v14 = *(v7 + 48);
          do
          {
            if (!*(v14 + v13))
            {
              *(*(a1 + 16) + 4 * v13) = -1;
              v12 = *(v7 + 32);
            }

            ++v13;
          }

          while (v13 < v12);
        }
      }

      result = 0;
    }

LABEL_38:
    *(a1 + 80) &= ~4u;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_39;
  }

  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v7 + 32) <= a2)
    {
      v9 = 0;
      result = 25;
    }

    else
    {
      v9 = *(*(a1 + 16) + 4 * a2);
    }

    *a3 = v9;
    return result;
  }

LABEL_39:
  *a3 = 0;
  if (*(v7 + 32) >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = *(a1 + 16);
    do
    {
      v21 += *(v23 + 4 * v22);
      *a3 = v21;
      ++v22;
    }

    while (v22 < *(v7 + 32));
  }

  return result;
}

uint64_t sub_1819F22F8(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = *(*a1 + 24);
  result = sub_1819D9FD4(*a1);
  if (!result)
  {
    v11 = *(v9 + 32);
    if (sqlite3_initialize())
    {
      return 7;
    }

    v12 = 4 * v11;
    v13 = sub_181902484(4 * v11 + 184, 0x10B004012A18D67);
    if (!v13)
    {
      return 7;
    }

    v14 = v13;
    v15 = *(v8 + 48);
    bzero(v13, v12 + 184);
    v16 = *(v15 + 88);
    *(v15 + 88) = v14;
    v17 = *(v15 + 56) + 1;
    *(v15 + 56) = v17;
    *(v14 + 16) = v14 + 184;
    *(v14 + 24) = v17;
    *(v14 + 32) = 1;
    *(v14 + 40) = xmmword_181A201F0;
    *v14 = v8;
    *(v14 + 8) = v16;
    v18 = a1[8];
    v56 = 0;
    v57 = 0;
    v19 = 25;
    v58 = 0;
    if ((a2 & 0x80000000) != 0 || !v18 || *(v18 + 28) <= a2)
    {
      goto LABEL_10;
    }

    v20 = *(*(v18 + 32) + 8 * a2);
    if (sqlite3_initialize() || (v29 = sub_181902484(40, 1913357809)) == 0)
    {
      v19 = 7;
      goto LABEL_10;
    }

    v30 = v29;
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    if (sqlite3_initialize() || (v36 = sub_181902484(8, 1913357809)) == 0)
    {
      v31 = (v30 + 32);
    }

    else
    {
      *v36 = 0;
      *(v30 + 32) = v36;
      if (sqlite3_initialize() || (v37 = sub_181902484(56, 1913357809)) == 0)
      {
        v31 = (v30 + 16);
      }

      else
      {
        *(v37 + 48) = 0;
        *(v37 + 16) = 0u;
        *(v37 + 32) = 0u;
        *v37 = 0u;
        *(v30 + 16) = v37;
        if (!sqlite3_initialize())
        {
          v38 = sub_181902484(40, 1913357809);
          if (v38)
          {
            v54 = v18;
            *(v38 + 32) = 0;
            *v38 = 0u;
            *(v38 + 16) = 0u;
            *(*(v30 + 16) + 32) = v38;
            if (v20)
            {
              v39 = *(*(*v20 + 32) + 8);
              if (v39)
              {
                v40 = v20;
                v41 = *v39;
                if (sqlite3_initialize() || (v42 = 8 * ((v41 + 2) / 2), (v43 = sub_181902484(v42, 1913357809)) == 0))
                {
                  *(*(*(v30 + 16) + 32) + 8) = 0;
                  if ((v41 & 0x80000000) == 0)
                  {
                    v32 = 7;
                    goto LABEL_30;
                  }
                }

                else
                {
                  v44 = v43;
                  bzero(v43, v42);
                  memcpy(v44, v39, v42);
                  *(*(*(v30 + 16) + 32) + 8) = v44;
                  v20 = v40;
                }
              }
            }

            v55 = v20;
            if (v20[6])
            {
              v45 = 0;
              v57 = *(v54 + 8);
              while (v45 < v55[6])
              {
                v46 = &v55[10 * v45 + 8];
                v47 = sub_1819E21D0(&v56, 0, *(v46 + 8), *(v46 + 20));
                for (i = *(v46 + 32); i && v47 == 0; i = *(i + 32))
                {
                  v47 = sub_1819E21D0(&v56, 1, *(i + 8), *(i + 20));
                }

                v32 = v47;
                if (!v47)
                {
                  *(v56 + 40 * v45 + 32) = *v46;
                }

                ++v45;
                if (v47)
                {
                  goto LABEL_30;
                }
              }

              v32 = 0;
              v50 = v56;
            }

            else if (sqlite3_initialize())
            {
              v50 = 0;
              v32 = 7;
              v56 = 0;
            }

            else
            {
              v50 = sub_181902484(72, 1913357809);
              if (v50)
              {
                v32 = 0;
                *(v50 + 64) = 0;
                *(v50 + 32) = 0u;
                *(v50 + 48) = 0u;
                *v50 = 0u;
                *(v50 + 16) = 0u;
              }

              else
              {
                v32 = 7;
              }

              v56 = v50;
            }

            if (!v32 && v50)
            {
              *v30 = *v54;
              *(v30 + 28) = 1;
              **(v30 + 32) = v50;
              *(*(*(v30 + 16) + 32) + 24) = v50;
              v51 = *(v30 + 16);
              *(*(v51 + 32) + 16) = 1;
              *v50 = v51;
              if (v55[6] != 1 || *(v55 + 8) || (v52 = sub_1819DE2C4, *(v55 + 33)))
              {
                v52 = sub_1819DE478;
                v53 = 9;
              }

              else
              {
                v53 = 4;
              }

              *v51 = v53;
              *(v51 + 16) = v52;
              *(v14 + 64) = v30;
LABEL_11:
              v21 = sub_1819DCAE0(v8, v14, 0);
              if (!v21)
              {
                while (1)
                {
                  if (*(v14 + 80))
                  {
                    v21 = 0;
                    goto LABEL_12;
                  }

                  LODWORD(v21) = a4(&unk_1EEF90788, v14, a3);
                  if (v21)
                  {
                    break;
                  }

                  v21 = sub_1819D0768(v14);
                  if (v21)
                  {
                    goto LABEL_12;
                  }
                }

                if (v21 == 101)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v21;
                }
              }

LABEL_12:
              v22 = v21;
              v23 = *v14;
              v24.n128_f64[0] = sub_1819DA320(v14);
              v25 = (*(v23 + 48) + 88);
              do
              {
                v26 = v25;
                v27 = *v25;
                v25 = (*v25 + 8);
              }

              while (v27 != v14);
              *v26 = *(v14 + 8);
              v28 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
                --qword_1ED456A90;
                off_1ED452EB0(v14);
                v14 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  return v22;
                }

                v28 = &xmmword_1ED452F28;
              }

              (*v28)(v14, v24);
              return v22;
            }

LABEL_30:
            v19 = v32;
            sub_1819DA880(*(v30 + 16));
            v33 = *(v30 + 32);
            if (v33)
            {
              v34 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v33);
                --qword_1ED456A90;
                off_1ED452EB0(v33);
                v33 = xmmword_1ED456AF0;
                if (!xmmword_1ED456AF0)
                {
                  goto LABEL_37;
                }

                v34 = &xmmword_1ED452F28;
              }

              (*v34)(v33);
            }

LABEL_37:
            v35 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
LABEL_42:
              (*v35)(v30);
              goto LABEL_10;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v30);
            --qword_1ED456A90;
            off_1ED452EB0(v30);
            v30 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v35 = &xmmword_1ED452F28;
              goto LABEL_42;
            }

LABEL_10:
            sub_1819DAAEC(v56);
            v21 = v19;
            *(v14 + 64) = 0;
            if (v19)
            {
              goto LABEL_12;
            }

            goto LABEL_11;
          }
        }

        v31 = (*(v30 + 16) + 32);
      }
    }

    *v31 = 0;
    v32 = 7;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1819F2958(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *(a1 + 152);
  if (v6)
  {
    while (*v6 != *(a1 + 144))
    {
      v6 = v6[3];
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v8 = v6[2];
    if (v8)
    {
      v8(v6[1]);
    }

    goto LABEL_12;
  }

LABEL_4:
  if (!sqlite3_initialize())
  {
    v9 = sub_181902484(32, 1913357809);
    if (v9)
    {
      v6 = v9;
      *v9 = 0u;
      *(v9 + 16) = 0u;
      v10 = *(a1 + 152);
      *v9 = *(a1 + 144);
      *(v9 + 24) = v10;
      *(a1 + 152) = v9;
LABEL_12:
      result = 0;
      v6[1] = a2;
      v6[2] = a3;
      return result;
    }
  }

  if (a3)
  {
    a3(a2);
  }

  return 7;
}

uint64_t sub_1819F2A10(uint64_t a1, int a2)
{
  v2 = *(a1 + 152);
  if (!v2)
  {
    return 0;
  }

  while (*v2 != *(a1 + 144))
  {
    v2 = v2[3];
    if (!v2)
    {
      return 0;
    }
  }

  v5 = v2[1];
  v4 = v2 + 1;
  result = v5;
  if (a2)
  {
    *v4 = 0;
    v4[1] = 0;
  }

  return result;
}

uint64_t sub_1819F2A48(uint64_t a1, int a2, char **a3, _DWORD *a4, int *a5)
{
  v12 = 0;
  result = sub_1819F3DE4(a1, a2, a3, &v12);
  if (!result)
  {
    if (*a3)
    {
      v10 = &(*a3)[v12];
    }

    else
    {
      v10 = 0;
    }

    a3[1] = v10;
    *a4 = 0;
    *a5 = 0;
    v11 = result;
    sub_1819F2AD8(a1, a3, a4, a5);
    return v11;
  }

  return result;
}

uint64_t sub_1819F2AD8(uint64_t result, char **a2, _DWORD *a3, int *a4)
{
  v4 = *a2;
  if (*a2 >= a2[1])
  {
    v7 = -1;
    *a3 = -1;
  }

  else
  {
    v5 = *v4;
    if (*v4 < 0)
    {
      v8 = v4[1];
      if (v4[1] < 0)
      {
        v9 = v4[2];
        if (v9 < 0)
        {
          v31 = 0;
          v10 = a2;
          v11 = result;
          v12 = a4;
          v13 = a3;
          v14 = sub_1819DFFB0(v4, &v31);
          a3 = v13;
          a2 = v10;
          a4 = v12;
          LODWORD(v6) = v14;
          result = v11;
          v5 = v31 & 0x7FFFFFFF;
          v6 = v6;
        }

        else
        {
          v5 = ((v5 & 0x7F) << 14) | ((v8 & 0x7F) << 7) | v9;
          v6 = 3;
        }
      }

      else
      {
        v5 = ((v5 & 0x7F) << 7) | v8;
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }

    v15 = &v4[v6];
    *a2 = v15;
    if (v5 == 1)
    {
      v16 = *(*(*result + 24) + 32);
      v17 = *v15;
      if (*v15 < 0)
      {
        v20 = v15[1];
        if (v15[1] < 0)
        {
          v21 = v15[2];
          if (v21 < 0)
          {
            v31 = 0;
            v22 = a2;
            v23 = a4;
            v24 = a3;
            result = sub_1819DFFB0(v15, &v31);
            a3 = v24;
            a2 = v22;
            a4 = v23;
            v17 = v31 & 0x7FFFFFFF;
            v18 = result;
          }

          else
          {
            v17 = ((v17 & 0x7F) << 14) | ((v20 & 0x7F) << 7) | v21;
            v18 = 3;
          }
        }

        else
        {
          v17 = ((v17 & 0x7F) << 7) | v20;
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }

      v25 = &v15[v18];
      *a2 = v25;
      if (v17 >= v16)
      {
        v17 = v16 - 1;
      }

      *a3 = v17;
      *a4 = 0;
      v5 = *v25;
      if (*v25 < 0)
      {
        v27 = v25[1];
        if (v25[1] < 0)
        {
          v28 = v25[2];
          if (v28 < 0)
          {
            v31 = 0;
            v29 = a2;
            v30 = a4;
            result = sub_1819DFFB0(v25, &v31);
            a2 = v29;
            a4 = v30;
            v5 = v31 & 0x7FFFFFFF;
            v26 = result;
          }

          else
          {
            v5 = ((v5 & 0x7F) << 14) | ((v27 & 0x7F) << 7) | v28;
            v26 = 3;
          }
        }

        else
        {
          v5 = ((v5 & 0x7F) << 7) | v27;
          v26 = 2;
        }
      }

      else
      {
        v26 = 1;
      }

      v19 = 0;
      *a2 = &v25[v26];
    }

    else
    {
      v19 = *a4;
    }

    v7 = v5 + v19 - 2;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1819F2D00(uint64_t a1, int a2, uint64_t *a3, int *a4)
{
  if (*(*(*a1 + 24) + 116) == 2)
  {
    v4 = *(a1 + 72);
    LODWORD(v34) = 0;
    if (v4)
    {
      v5 = v4 + 4 * a2;
      if (a2)
      {
        v6 = *(v5 + 24);
      }

      else
      {
        v6 = 0;
      }

      v25 = *(v5 + 28) - v6;
      v24 = *(v4 + 16) + v6;
      *a3 = v24;
    }

    else
    {
      v17 = *(a1 + 64);
      v18 = *(*(v17 + 32) + 8 * a2);
      if (*(*v18 + 4) || (v19 = *(*v18 + 24), v19 != *(*(v17 + 16) + 24)) || *(v18 + 16) < 1)
      {
        v25 = 0;
        v24 = 0;
        *a3 = 0;
      }

      else
      {
        v20 = *(v18 + 64);
        if (v20)
        {
          v21 = a1;
          v22 = a4;
          v23 = a3;
          result = sub_1819E1AA4(v18 + 32, v19, v20 + 40, a3, &v34);
          if (result)
          {
            return result;
          }

          a3 = v23;
          v24 = *v23;
          v25 = v34;
          a4 = v22;
          a1 = v21;
        }

        else
        {
          v24 = *(*(v18 + 56) + 8);
          *a3 = v24;
          v25 = *(*(v18 + 56) + 16);
        }
      }
    }

    v26 = v24 + v25;
    if (v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    a3[1] = v27;
    *a4 = 0;
    sub_1819F2F3C(a1, a3, a4);
    return 0;
  }

  else
  {
    v7 = a4;
    v33 = 0;
    v8 = a3;
    result = sub_1819F3DE4(a1, a2, a3, &v33);
    if (!result)
    {
      v10 = *v8;
      v11 = v33;
      v12 = *v8 + v33;
      if (!*v8)
      {
        v12 = 0;
      }

      v8[1] = v12;
      if (v11 <= 0)
      {
        *v7 = -1;
      }

      else
      {
        v13 = v7;
        if (*v10 == 1)
        {
          v14 = v8;
          v15 = v10[1];
          if (v10[1] < 0)
          {
            v28 = v10[2];
            if (v10[2] < 0)
            {
              v29 = v10[3];
              if (v29 < 0)
              {
                v34 = 0;
                v30 = result;
                v31 = v13;
                v32 = sub_1819DFFB0(v10 + 1, &v34);
                v14 = v8;
                LODWORD(v16) = v32;
                result = v30;
                *v31 = v34 & 0x7FFFFFFF;
                v16 = v16;
              }

              else
              {
                *v7 = ((v15 & 0x7F) << 14) | ((v28 & 0x7F) << 7) | v29;
                v16 = 3;
              }
            }

            else
            {
              *v7 = ((v15 & 0x7F) << 7) | v28;
              v16 = 2;
            }
          }

          else
          {
            *v7 = v15;
            v16 = 1;
          }

          *v14 = &v10[v16 + 1];
        }

        else
        {
          *v7 = 0;
        }
      }
    }
  }

  return result;
}

char *sub_1819F2F3C(char *result, char **a2, int *a3)
{
  if (*(*(*result + 24) + 116) != 2)
  {
    v6 = *a2;
    v7 = a2[1];
    while (v6 < v7)
    {
      v9 = *v6;
      if (v9 == 1)
      {
        result = v6 + 1;
        v12 = v6[1];
        if (v6[1] < 0)
        {
          v15 = v6[2];
          if (v6[2] < 0)
          {
            v17 = v6[3];
            if (v17 < 0)
            {
              v22 = 0;
              v20 = a2;
              v21 = a3;
              result = sub_1819DFFB0(result, &v22);
              a2 = v20;
              *v21 = v22 & 0x7FFFFFFF;
              v13 = result;
            }

            else
            {
              *a3 = ((v12 & 0x7F) << 14) | ((v15 & 0x7F) << 7) | v17;
              v13 = 3;
            }
          }

          else
          {
            *a3 = ((v12 & 0x7F) << 7) | v15;
            v13 = 2;
          }
        }

        else
        {
          *a3 = v12;
          v13 = 1;
        }

        *a2 = &v6[v13 + 1];
        return result;
      }

      if (v9 < 0)
      {
        if (v6[1] < 0)
        {
          if (v6[2] < 0)
          {
            v10 = a2;
            v11 = a3;
            result = sub_1819DFFB0(v6, &v22);
            a3 = v11;
            a2 = v10;
            v8 = result;
          }

          else
          {
            v8 = 3;
          }
        }

        else
        {
          v8 = 2;
        }
      }

      else
      {
        v8 = 1;
      }

      v6 += v8;
      *a2 = v6;
    }

    goto LABEL_16;
  }

  v3 = *a2;
  if (*a2 >= a2[1])
  {
LABEL_16:
    *a3 = -1;
    return result;
  }

  v4 = *v3;
  if (*v3 < 0)
  {
    v14 = v3[1];
    if (v3[1] < 0)
    {
      v16 = v3[2];
      if (v16 < 0)
      {
        v22 = 0;
        v18 = a2;
        v19 = a3;
        result = sub_1819DFFB0(v3, &v22);
        a3 = v19;
        a2 = v18;
        v4 = v22 & 0x7FFFFFFF;
        v5 = result;
      }

      else
      {
        v4 = ((v4 & 0x7F) << 14) | ((v14 & 0x7F) << 7) | v16;
        v5 = 3;
      }
    }

    else
    {
      v4 = ((v4 & 0x7F) << 7) | v14;
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  *a2 = &v3[v5];
  *a3 = v4 + *a3 - 2;
  return result;
}

uint64_t sub_1819F3128(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, _DWORD *a5)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 25;
  }

  v5 = *(a1 + 64);
  if (*(v5 + 28) <= a2)
  {
    return 25;
  }

  if ((a3 & 0x80000000) != 0)
  {
    return 25;
  }

  v6 = *(*(v5 + 32) + 8 * a2);
  if (*(v6 + 24) <= a3)
  {
    return 25;
  }

  result = 0;
  v8 = v6 + 40 * a3;
  *a4 = *(v8 + 40);
  *a5 = *(v8 + 52);
  return result;
}

uint64_t sub_1819F317C(uint64_t a1, int a2, unsigned int a3, void *a4, int *a5)
{
  if ((*(a1 + 80) & 8) != 0)
  {
    v10 = sub_1819F3B18(a1);
    if (v10)
    {
      return v10;
    }
  }

  if (a2 < 0 || *(a1 + 172) <= a2)
  {
    return 25;
  }

  v11 = (*(a1 + 176) + 4 * (3 * a2));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = *(a1 + 72);
  if (!v15)
  {
    if (*(a1 + 32) >= 5)
    {
      v16 = sqlite3_column_int64(*(a1 + 56), 0);
      if ((v12 & 0x80000000) != 0)
      {
        return 25;
      }

      goto LABEL_12;
    }

    v16 = *(*(*(a1 + 64) + 16) + 24);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    return 25;
  }

  v16 = *(v15 + 8);
  if ((v12 & 0x80000000) != 0)
  {
    return 25;
  }

LABEL_12:
  v17 = *(a1 + 64);
  if (*(v17 + 28) <= v12)
  {
    return 25;
  }

  if ((a3 & 0x80000000) != 0)
  {
    return 25;
  }

  v18 = *(*(v17 + 32) + 8 * v12);
  if (*(v18 + 24) <= a3)
  {
    return 25;
  }

  v19 = v18 + 40 * a3;
  if (!*(*(v17 + 8) + 108) && !*(v19 + 32))
  {
    *a4 = *(v19 + 40);
    v31 = *(v19 + 52);
    goto LABEL_38;
  }

  v20 = *(v19 + 56);
  v21 = *(v20 + 24);
  if (v21)
  {
    goto LABEL_18;
  }

  v32 = 0;
  __src = *(v19 + 40);
  v33 = *(v19 + 48);
  v34 = *(v20 + 32);
  v54[0] = 0;
  v54[1] = 0;
  v53 = v16;
  if (v33 != -1)
  {
    v35 = 64;
    do
    {
      v36 = v35;
      v35 *= 2;
    }

    while (v36 < (v33 + 1));
    v37 = sqlite3_initialize();
    v16 = v53;
    if (v37 || (v32 = sub_181902484(v36, 2663054284), v16 = v53, !v32))
    {
      v32 = 0;
      *(v34 + 60) = 7;
    }
  }

  v52 = v34;
  if (*(v34 + 60))
  {
    goto LABEL_43;
  }

  if (sqlite3_initialize() || (v39 = sub_181902484(160, 1913357809)) == 0)
  {
    v16 = v53;
    *(v34 + 60) = 7;
LABEL_43:
    v54[0] = 0;
    goto LABEL_44;
  }

  v40 = v39;
  v39[8] = 0u;
  v39[9] = 0u;
  v39[6] = 0u;
  v39[7] = 0u;
  v39[4] = 0u;
  v39[5] = 0u;
  v39[2] = 0u;
  v39[3] = 0u;
  *v39 = 0u;
  v39[1] = 0u;
  v41 = *(v52 + 60);
  v54[0] = v39;
  if (v41)
  {
    goto LABEL_55;
  }

  *v32 = 48;
  memcpy(v32 + 1, __src, v33);
  sub_1819EFDD0(v52, 0, v32, v33 + 1, 1, sub_1819F080C, v54);
  sub_1819F0580(v52, v54[0]);
  v40 = v54[0];
  if (*(v52 + 60))
  {
    if (v54[0])
    {
LABEL_55:
      if (*(v40 + 32) >= 1)
      {
        v42 = 0;
        do
        {
          sub_1819DB2CC(*(v40 + 56 + 8 * v42++));
        }

        while (v42 < *(v40 + 32));
      }

      v43 = *(v40 + 16);
      if (v43)
      {
        v44 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
LABEL_64:
          (*v44)(v43);
          goto LABEL_65;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v43);
        --qword_1ED456A90;
        off_1ED452EB0(v43);
        v43 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v44 = &xmmword_1ED452F28;
          goto LABEL_64;
        }
      }

LABEL_65:
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      v45 = *(v40 + 40);
      if (!v45)
      {
        goto LABEL_72;
      }

      v46 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v45);
        --qword_1ED456A90;
        off_1ED452EB0(v45);
        v45 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
LABEL_72:
          v47 = *(v40 + 8);
          if (!v47)
          {
            goto LABEL_79;
          }

          v48 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v47);
            --qword_1ED456A90;
            off_1ED452EB0(v47);
            v47 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
LABEL_79:
              v49 = &off_1ED452EB0;
              if (dword_1ED452E80)
              {
                if (xmmword_1ED456AF0)
                {
                  xmmword_1ED452F18(xmmword_1ED456AF0);
                }

                qword_1ED456A48[0] -= xmmword_1ED452EC0(v40);
                --qword_1ED456A90;
                off_1ED452EB0(v40);
                v40 = xmmword_1ED456AF0;
                v16 = v53;
                if (!xmmword_1ED456AF0)
                {
LABEL_44:
                  if (!v32)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_45;
                }

                v49 = &xmmword_1ED452F28;
              }

              (*v49)(v40);
              v16 = v53;
              goto LABEL_44;
            }

            v48 = &xmmword_1ED452F28;
          }

          (*v48)(v47);
          goto LABEL_79;
        }

        v46 = &xmmword_1ED452F28;
      }

      (*v46)(v45);
      goto LABEL_72;
    }
  }

  else
  {
    *(v20 + 24) = v54[0];
  }

LABEL_45:
  v38 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v32);
    --qword_1ED456A90;
    off_1ED452EB0(v32);
    v32 = xmmword_1ED456AF0;
    v16 = v53;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_51;
    }

    v38 = &xmmword_1ED452F28;
  }

  (*v38)(v32);
  v16 = v53;
LABEL_51:
  v10 = *(v52 + 60);
  *(v52 + 60) = 0;
  if (v10)
  {
    return v10;
  }

  v21 = *(v20 + 24);
LABEL_18:
  v22 = *(v21 + 4);
  if (v22 < 1)
  {
    return 0;
  }

  v23 = 0;
  v24 = v14 + a3 + (v13 << 32);
  v25 = *(v21 + 8);
  while (1)
  {
    v27 = (v23 + v22) >> 1;
    v28 = v25 + 24 * v27;
    if (*v28 >= v16)
    {
      break;
    }

LABEL_23:
    v23 = v27 + 1;
    v27 = v22;
LABEL_24:
    v10 = 0;
    v22 = v27;
    if (v27 <= v23)
    {
      return v10;
    }
  }

  if (*v28 > v16)
  {
    goto LABEL_24;
  }

  v29 = *(v28 + 8);
  if (v29 < v24)
  {
    if (v29 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v29 > v24)
  {
    goto LABEL_24;
  }

LABEL_29:
  if (*(v20 + 72))
  {
    v30 = *(v21 + 16);
    v31 = *(v28 + 20);
    *a4 = v30 + *(v28 + 16);
  }

  else
  {
    v50 = *(v21 + 8 * *(v25 + 24 * v27 + 16) + 56);
    v31 = *(v50 + 208) - 1;
    *a4 = *(v50 + 200) + 1;
  }

LABEL_38:
  v10 = 0;
  *a5 = v31;
  return v10;
}