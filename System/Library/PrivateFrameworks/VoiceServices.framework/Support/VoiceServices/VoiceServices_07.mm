uint64_t sub_10004CC5C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 5488);
  v9 = *(a1 + 5496);
  if (v9 < 1)
  {
    v10 = -1;
    v16 = v8 - 64;
    if (*(v8 - 64))
    {
LABEL_10:
      sub_1000A1774(*(v16 + 16));
      *(v16 + 16) = 0;
      sub_1000CF5EC(*(v16 + 8));
      *(v16 + 8) = 0;
      sub_1000B1BAC(*(v16 + 24));
      *(v16 + 24) = 0;
      sub_1000BFEC4(*(v16 + 40));
      *(v16 + 40) = 0;
      sub_1000BFEC4(*(v16 + 56));
      *(v16 + 56) = 0;
      *(v16 + 32) = 0xFFFFFFFFLL;
      *(v16 + 48) = 0;
      *v16 = &_mh_execute_header;
    }
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 32);
    v12 = -1;
    v13 = -1;
    while (1)
    {
      v15 = *v11;
      v11 += 16;
      v14 = v15;
      if (v15 == -1)
      {
        break;
      }

      if (v14 < v13)
      {
        v13 = v14;
        v12 = v10;
      }

      if (v9 == ++v10)
      {
        v10 = v12;
        v16 = v8 + (v12 << 6);
        if (*v16)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v17 = sub_100036BEC(*(a1 + 5512));
  v18 = v8 + (v10 << 6);
  *(v18 + 8) = v17;
  if (!v17)
  {
    goto LABEL_22;
  }

  *(v18 + 16) = 0;
  v19 = sub_1000B1700(*(a1 + 256));
  *(v18 + 24) = v19;
  if (!v19)
  {
    goto LABEL_22;
  }

  *(v18 + 32) = a2;
  *(v18 + 36) = a3;
  v20 = sub_1000C0034(4 * a3 + 4);
  *(v18 + 40) = v20;
  if (!v20)
  {
    goto LABEL_22;
  }

  if (a3 >= 1)
  {
    v21 = 0;
    do
    {
      *(*(v18 + 40) + v21) = *(a4 + v21);
      v21 += 4;
    }

    while (4 * a3 != v21);
  }

  v22 = *(a1 + 776);
  *(v18 + 48) = v22;
  result = sub_1000C0034(4 * v22 + 4);
  *(v18 + 56) = result;
  if (result)
  {
    v24 = 1;
    if (v22 >= 1)
    {
      v25 = 0;
      do
      {
        *(*(v18 + 56) + v25) = *(*(a1 + 768) + v25);
        v25 += 4;
      }

      while (4 * v22 != v25);
    }
  }

  else
  {
LABEL_22:
    *v18 = 1;
    sub_1000A1774(*(v18 + 16));
    *(v18 + 16) = 0;
    sub_1000CF5EC(*(v18 + 8));
    *(v18 + 8) = 0;
    sub_1000B1BAC(*(v18 + 24));
    *(v18 + 24) = 0;
    sub_1000BFEC4(*(v18 + 40));
    *(v18 + 40) = 0;
    result = sub_1000BFEC4(*(v18 + 56));
    *(v18 + 56) = 0;
    *(v18 + 32) = 0xFFFFFFFFLL;
    *(v18 + 48) = 0;
    v24 = &_mh_execute_header;
  }

  *v18 = v24;
  return result;
}

uint64_t sub_10004CE6C(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(result + 1296);
  if (v3 < 1)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 1304);
  v7 = *v6;
  v8 = 0;
  v9 = v3 == 1 || v7 == -1;
  if (v9)
  {
LABEL_11:
    v13 = v8;
    v6[v8] = a3;
    v14 = *(result + 1312);
    v15 = (v14 + (v8 << 7));
    if (!*(result + 776))
    {
LABEL_14:
      v16 = -1;
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 1;
    v11 = *(result + 1296);
    while (1)
    {
      v12 = v6[v10];
      if (v12 == -1)
      {
        break;
      }

      if (v12 < v7)
      {
        v8 = v10;
        v11 = *(result + 1296);
        v7 = v6[v10];
      }

      if (++v10 >= v11)
      {
        goto LABEL_11;
      }
    }

    v13 = v10;
    v6[v10] = a3;
    v14 = *(result + 1312);
    v15 = (v14 + (v10 << 7));
    if (!*(result + 776))
    {
      goto LABEL_14;
    }
  }

  v16 = **(result + 768);
LABEL_15:
  v15[1] = v16;
  v17 = *(a2 + 4);
  if (v17 >= 10)
  {
    v18 = 10;
  }

  else
  {
    v18 = v17;
  }

  *v15 = v18;
  if (v17 < 1)
  {
LABEL_32:
    v28 = (v17 + 1);
    v29 = 11 - v28;
    v30 = v13 << 7;
    if ((11 - v28) <= 7)
    {
      goto LABEL_33;
    }

    v33 = 10 - v28;
    if (-2 - v17 < v33)
    {
      goto LABEL_33;
    }

    if (HIDWORD(v33))
    {
      goto LABEL_33;
    }

    v34 = (v30 + 4 * v17 + v14 + 64);
    *&v35 = -1;
    *(&v35 + 1) = -1;
    *&v36 = 0x4000000040000000;
    *(&v36 + 1) = 0x4000000040000000;
    v37 = v29 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      *(v34 + 24) = v35;
      *(v34 + 40) = v35;
      *(v34 - 1) = v36;
      *v34 = v36;
      *(v34 - 56) = v36;
      *(v34 - 40) = v36;
      v34 += 2;
      v37 -= 8;
    }

    while (v37);
    v17 += v29 & 0xFFFFFFFFFFFFFFF8;
    if (v29 != (v29 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_33:
      v31 = v17 + 1;
      v32 = (v30 + 4 * v17 + v14 + 48);
      do
      {
        v32[10] = -1;
        *v32 = 0x40000000;
        *(v32 - 10) = 0x40000000;
        ++v32;
        v9 = v31++ == 10;
      }

      while (!v9);
    }

    goto LABEL_36;
  }

  v38 = v14;
  v39 = a3;
  v19 = 0;
  v20 = v15 + 22;
  v21 = v15 + 12;
  v22 = v15 + 2;
  do
  {
    while (1)
    {
      v23 = *(a2 + 40);
      if (v19)
      {
        break;
      }

      if (v23)
      {
        goto LABEL_30;
      }

LABEL_20:
      v20[v19] = -1;
      v21[v19] = 0x40000000;
      v22[v19++] = 0x40000000;
      if (v19 == v18)
      {
        goto LABEL_31;
      }
    }

    v24 = &v23[*(a2 + 32)];
    v25 = v19;
    do
    {
      v26 = v23;
      while (1)
      {
        v27 = *v26++;
        if (v27 == -1)
        {
          break;
        }

        v23 = v26;
        if (v26 >= v24)
        {
          goto LABEL_20;
        }
      }

      ++v23;
      --v25;
    }

    while (v25);
LABEL_30:
    v20[v19] = *v23;
    result = sub_100036A30(*(v5 + 5512));
    v21[v19] = *(*(a2 + 8) + 4 * v19) - result;
    v22[v19] = *(*(a2 + 8) + 4 * v19);
    ++v19;
  }

  while (v19 != v18);
LABEL_31:
  a3 = v39;
  v14 = v38;
  if (v17 <= 9)
  {
    goto LABEL_32;
  }

LABEL_36:
  if (*(v5 + 1300) < a3)
  {
    *(v5 + 1300) = a3;
  }

  return result;
}

uint64_t sub_10004D124(unint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, uint64_t a6, int a7, int *a8, const void *a9, int *a10, int *a11, const void *a12, const void *a13, int a14)
{
  v21 = *(a2 + 4);
  if (v21 >= a3)
  {
    v22 = a3;
  }

  else
  {
    v22 = v21;
  }

  if (v21 <= a3)
  {
    v23 = v22;
    if (v22 >= v21)
    {
      v26 = *(a2 + 4);
    }

    else
    {
      v26 = v22;
    }

    if (v26 >= 1)
    {
LABEL_13:
      v27 = 0;
      v29 = *(a2 + 48);
      v28 = *(a2 + 56);
      v30 = *(a2 + 40);
      v31 = -1;
      while (1)
      {
        if (v27)
        {
          v32 = 0;
          v33 = *(a2 + 40);
          v34 = v27;
          do
          {
            ++v32;
            v35 = v33;
            while (1)
            {
              v36 = *v35++;
              if (v36 == -1)
              {
                break;
              }

              ++v32;
              v33 = v35;
              if (v35 >= v30 + 4 * *(a2 + 32))
              {
                v33 = 0;
                goto LABEL_25;
              }
            }

            ++v33;
            --v34;
          }

          while (v34);
          v31 = v32;
        }

        else
        {
          v31 = 0;
          v33 = *(a2 + 40);
        }

LABEL_25:
        v37 = a7 + 1;
        v38 = v33;
        do
        {
          v39 = *v38++;
          --v37;
        }

        while (v39 != -1);
        v40 = 4 * v31;
        v41 = (v28 + v40);
        if (!v28)
        {
          v41 = 0;
        }

        v42 = (v29 + v40);
        if (!v29)
        {
          v42 = 0;
        }

        if (!v37)
        {
          v43 = a8;
          v44 = a7;
          if (a7 < 1)
          {
            return 0xFFFFFFFFLL;
          }

          do
          {
            v46 = *v33++;
            v45 = v46;
            v47 = *v43++;
            if (v45 != v47)
            {
              goto LABEL_15;
            }

            --v44;
          }

          while (v44);
          v48 = 0;
          if (v42)
          {
            v49 = a10;
            v50 = a7 - 1;
            do
            {
              v52 = *v42++;
              v51 = v52;
              v53 = *v49++;
              v54 = v51 == v53;
              v55 = v51 < v53;
              if (v51 != v53)
              {
                v48 = 1;
              }

              if (v55)
              {
                v48 = -1;
              }
            }

            while (v54 && v50-- != 0);
          }

          if (v41)
          {
            v57 = a11;
            v58 = a7 - 1;
            do
            {
              v60 = *v41++;
              v59 = v60;
              v61 = *v57++;
              v62 = v59 == v61;
              v63 = v59 < v61;
              if (v59 != v61)
              {
                v48 = 1;
              }

              if (v63)
              {
                v48 = -1;
              }
            }

            while (v62 && v58-- != 0);
          }

          if (!v48)
          {
            return 0xFFFFFFFFLL;
          }
        }

LABEL_15:
        if (++v27 == v26)
        {
          goto LABEL_65;
        }
      }
    }
  }

  else
  {
    v23 = a3;
    v24 = (*(a2 + 8) + 4 * a3);
    while (1)
    {
      v25 = *v24++;
      if (v25 >= a4)
      {
        break;
      }

      v23 = (v23 + 1);
      if (v21 == v23)
      {
        v23 = *(a2 + 4);
        break;
      }
    }

    if (v23 >= v21)
    {
      v26 = *(a2 + 4);
    }

    else
    {
      v26 = v23;
    }

    if (v26 >= 1)
    {
      goto LABEL_13;
    }
  }

  v31 = -1;
LABEL_65:
  v131 = a4;
  if (v23 >= v21)
  {
    goto LABEL_114;
  }

  v66 = *(a2 + 48);
  v65 = *(a2 + 56);
  v67 = v23;
  while (1)
  {
    if (v67)
    {
      v68 = 0;
      v69 = *(a2 + 40);
      v70 = v67;
      do
      {
        ++v68;
        v71 = v69;
        while (1)
        {
          v72 = *v71++;
          if (v72 == -1)
          {
            break;
          }

          ++v68;
          v69 = v71;
          if (v71 >= *(a2 + 40) + 4 * *(a2 + 32))
          {
            v69 = 0;
            goto LABEL_78;
          }
        }

        ++v69;
        --v70;
      }

      while (v70);
      v31 = v68;
    }

    else
    {
      v31 = 0;
      v69 = *(a2 + 40);
    }

LABEL_78:
    v73 = a7 + 1;
    v74 = v69;
    do
    {
      v75 = *v74++;
      --v73;
    }

    while (v75 != -1);
    v76 = 4 * v31;
    v77 = (v65 + v76);
    if (!v65)
    {
      v77 = 0;
    }

    v78 = (v66 + v76);
    if (!v66)
    {
      v78 = 0;
    }

    if (v73)
    {
      goto LABEL_68;
    }

    v79 = a8;
    v80 = a7;
    if (a7 < 1)
    {
      break;
    }

    while (1)
    {
      v82 = *v69++;
      v81 = v82;
      v83 = *v79++;
      if (v81 != v83)
      {
        break;
      }

      if (!--v80)
      {
        v84 = 0;
        if (v78)
        {
          v85 = a10;
          v86 = a7 - 1;
          do
          {
            v88 = *v78++;
            v87 = v88;
            v89 = *v85++;
            v90 = v87 == v89;
            v91 = v87 < v89;
            if (v87 != v89)
            {
              v84 = 1;
            }

            if (v91)
            {
              v84 = -1;
            }
          }

          while (v90 && v86-- != 0);
        }

        if (v77)
        {
          v93 = a11;
          v94 = a7 - 1;
          do
          {
            v96 = *v77++;
            v95 = v96;
            v97 = *v93++;
            v98 = v95 == v97;
            v99 = v95 < v97;
            if (v95 != v97)
            {
              v84 = 1;
            }

            if (v99)
            {
              v84 = -1;
            }
          }

          while (v98 && v94-- != 0);
        }

        if (!v84)
        {
          goto LABEL_113;
        }

        break;
      }
    }

LABEL_68:
    if (++v67 == v21)
    {
      goto LABEL_114;
    }
  }

LABEL_113:
  sub_10004A180(a1, a2, v67, a14);
  v21 = *(a2 + 4);
LABEL_114:
  if (v21 > v23)
  {
    do
    {
      v101 = *(a2 + 40);
      v102 = *(a2 + 32);
      v103 = v21 - 1;
      if (v21 == 1)
      {
        v104 = *(a2 + 40);
      }

      else
      {
        v104 = *(a2 + 40);
        v105 = v21 - 1;
        do
        {
          v106 = v104;
          while (1)
          {
            v107 = *v106++;
            if (v107 == -1)
            {
              break;
            }

            v104 = v106;
            if (v106 >= v101 + 4 * v102)
            {
              v104 = 0;
              goto LABEL_127;
            }
          }

          ++v104;
          --v105;
        }

        while (v105);
      }

LABEL_127:
      v108 = a7 + 1 + ((v104 - v101) >> 2);
      do
      {
        v109 = *v104++;
        ++v108;
      }

      while (v109 != -1);
      if (v108 > v102 || v21 >= *a2)
      {
        sub_10004A180(a1, a2, v21 - 1, a14);
      }

      v21 = v103;
    }

    while (v103 > v23);
  }

  v110 = v23 - 1;
  if (v23 < 1)
  {
    v116 = *(a2 + 32);
    if (a7 < v116)
    {
      goto LABEL_141;
    }

    return 0xFFFFFFFFLL;
  }

  v111 = *(a2 + 40);
  if (v23 == 1)
  {
    v116 = *(a2 + 32);
    if (a7 < v116)
    {
      goto LABEL_141;
    }

    return 0xFFFFFFFFLL;
  }

  v112 = *(a2 + 40);
  do
  {
    v113 = v112;
    while (1)
    {
      v114 = *v113++;
      if (v114 == -1)
      {
        break;
      }

      v112 = v113;
      if (v113 >= v111 + 4 * *(a2 + 32))
      {
        v112 = 0;
        goto LABEL_140;
      }
    }

    ++v112;
    --v110;
  }

  while (v110);
LABEL_140:
  v115 = ((v112 - v111) >> 2) + a7;
  v116 = *(a2 + 32);
  if (v115 >= v116)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_141:
  v117 = *(a2 + 40);
  v130 = a6;
  v129 = a5;
  if (v23)
  {
    v118 = *(a2 + 40);
    v119 = v23;
    do
    {
      v120 = v118;
      while (1)
      {
        v121 = *v120++;
        if (v121 == -1)
        {
          break;
        }

        v118 = v120;
        if (v120 >= v117 + 4 * v116)
        {
          v118 = 0;
          goto LABEL_154;
        }
      }

      ++v118;
      --v119;
    }

    while (v119);
  }

  else
  {
    v118 = *(a2 + 40);
  }

LABEL_154:
  v122 = v118 - v117;
  v123 = (v122 >> 2);
  v124 = 4 * v123;
  v128 = 4 * (a7 + 1);
  v125 = (v122 >> 2) + a7;
  j__memmove((v117 + 4 * v123 + v128), (v117 + 4 * v123), 4 * (v116 + ~v125));
  j__memmove((*(a2 + 40) + 4 * v123), a8, 4 * a7);
  *(*(a2 + 40) + 4 * v125) = -1;
  j__memmove((*(a2 + 80) + v123 + a7 + 1), (*(a2 + 80) + v123), *(a2 + 32) + ~v125);
  j__memmove((*(a2 + 80) + v123), a9, a7);
  *(*(a2 + 80) + v125) = 0;
  j__memmove((*(a2 + 48) + v124 + v128), (*(a2 + 48) + v124), 4 * (*(a2 + 32) + ~v125));
  j__memmove((*(a2 + 48) + 4 * v123), a10, 4 * a7);
  *(*(a2 + 48) + 4 * v125) = -1;
  j__memmove((*(a2 + 56) + v124 + v128), (*(a2 + 56) + v124), 4 * (*(a2 + 32) + ~v125));
  j__memmove((*(a2 + 56) + 4 * v123), a11, 4 * a7);
  *(*(a2 + 56) + 4 * v125) = -1;
  j__memmove((*(a2 + 64) + v123 + a7 + 1), (*(a2 + 64) + v123), *(a2 + 32) + ~v125);
  j__memmove((*(a2 + 64) + v123), a12, a7);
  *(*(a2 + 64) + v125) = 0;
  j__memmove((*(a2 + 72) + 2 * v123 + 2 * (a7 + 1)), (*(a2 + 72) + 2 * v123), 2 * (*(a2 + 32) + ~v125));
  j__memmove((*(a2 + 72) + 2 * v123), a13, 2 * a7);
  *(*(a2 + 72) + 2 * v125) = -1;
  v126 = v23 + 1;
  j__memmove((*(a2 + 8) + 4 * v126), (*(a2 + 8) + 4 * v23), 4 * (*a2 + ~v23));
  *(*(a2 + 8) + 4 * v23) = v131;
  j__memmove((*(a2 + 16) + 2 * v126), (*(a2 + 16) + 2 * v23), 2 * (*a2 + ~v23));
  *(*(a2 + 16) + 2 * v23) = v129;
  j__memmove((*(a2 + 24) + 8 * v126), (*(a2 + 24) + 8 * v23), 8 * (*a2 + ~v23));
  *(*(a2 + 24) + 8 * v23) = v130;
  ++*(a2 + 4);
  return v23;
}

uint64_t sub_10004D8D8(uint64_t a1)
{
  if (sub_1000C76E4())
  {
    v2 = sub_10003C9A4();
    __sprintf_chk(v4, 0, 0x80uLL, "%d %s", a1, v2);
    sub_1000C76F8();
  }

  return a1;
}

uint64_t sub_10004D968(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    LODWORD(result) = sub_1000B1350(result);
    if ((result - 1) >= 4)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

double sub_10004D998(uint64_t a1)
{
  if (*(a1 + 6384))
  {
    sub_1000BFEC4(*(a1 + 6376));
  }

  result = 0.0;
  *(a1 + 6360) = 0u;
  *(a1 + 6376) = 0u;
  *(a1 + 6392) = 0;
  *(a1 + 6344) = 0u;
  *(a1 + 6368) = 0;
  *(a1 + 6388) = 0;
  *(a1 + 6396) = -1;
  return result;
}

uint64_t sub_10004D9F0(uint64_t a1)
{
  result = sub_1000BFEC4(*(a1 + 5520));
  *(a1 + 5520) = 0;
  *(a1 + 5528) = 0;
  return result;
}

uint64_t sub_10004DA20(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a2 == -1)
  {
    return 4;
  }

  if (!sub_1000B252C(*(a1 + 8), a2))
  {
    return 4;
  }

  v6 = sub_1000B2844(*(a1 + 8), a2);
  if (v6 == 0xFFFFFF)
  {
    return 4;
  }

  v8 = v6;
  v9 = sub_1000B2A30(*(a1 + 8), a2);
  if (a3)
  {
    *a3 = v9 != 0xFFFF;
  }

  if (v9 != 0xFFFF)
  {
    return 0;
  }

  v10 = sub_1000B8258(*(a1 + 8), v8);
  if (v10 != 0xFFFF)
  {
    v11 = v10;
    v12 = *(a1 + 104);
    if (v12 && !sub_100036C44(*(a1 + 104)))
    {
LABEL_32:
      if (sub_1000B8384(*(a1 + 8), v11))
      {
        goto LABEL_33;
      }

LABEL_36:
      result = 1;
      v22 = *(a1 + 5520);
      if (!v22)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v13 = *(a1 + 112);
    if (v13)
    {
      v14 = sub_100036C44(v13) != 0;
      v15 = v14;
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }

    v16 = *(a1 + 136);
    if (v16)
    {
      v17 = sub_100036C44(v16) != 0;
      v18 = v17;
    }

    else
    {
      v18 = 0;
      v17 = 1;
    }

    v19 = *(a1 + 144);
    if (v19)
    {
      v20 = sub_100036C44(v19) != 0;
      v21 = v20;
    }

    else
    {
      v21 = 0;
      v20 = 1;
    }

    if (v14 && v17 && v20)
    {
      result = 0;
      v22 = *(a1 + 5520);
      if (!v22)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v12)
    {
      v23 = sub_100036C6C(*(a1 + 104)) & 1;
      if (v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v23 = 1;
      if (v15)
      {
LABEL_28:
        v23 &= sub_100036C6C(*(a1 + 112));
        if (!v18)
        {
          goto LABEL_29;
        }

        goto LABEL_40;
      }
    }

    if (!v18)
    {
LABEL_29:
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_40:
    v23 &= sub_100036C6C(*(a1 + 136));
    if (!v21)
    {
LABEL_31:
      if (!v23)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

LABEL_30:
    v23 &= sub_100036C6C(*(a1 + 144));
    goto LABEL_31;
  }

LABEL_33:
  result = 15;
  v22 = *(a1 + 5520);
  if (v22)
  {
LABEL_34:
    *v22 = 0;
  }

LABEL_35:
  *(a1 + 5532) = 0;
  return result;
}

uint64_t sub_10004DC44(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (!a2)
  {
    return 4;
  }

  v15 = 0;
  *a4 = -1;
  v8 = sub_1000B2174(*(a1 + 8), a2);
  v14 = v8;
  if (v8 != -1)
  {
    result = sub_10004DA20(a1, v8, 0);
    if (result)
    {
LABEL_5:
      v10 = *(a1 + 5520);
      if (v10)
      {
        *v10 = 0;
      }

      *(a1 + 5532) = 0;
      return result;
    }

LABEL_4:
    *a4 = v14;
    goto LABEL_5;
  }

  v11 = sub_1000B83DC(*(a1 + 8), a2, a3, 0, &v14, &v15);
  v12 = v11;
  if (v11 == 1)
  {
    v13 = 16;
  }

  else
  {
    v13 = 1;
  }

  if (v11 == 2)
  {
    result = 15;
  }

  else
  {
    result = v13;
  }

  if (!v12)
  {
    result = sub_10004DA20(a1, v14, 0);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10004DD48(unint64_t a1, _WORD *a2, uint64_t a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = 1;
  v8 = 4;
  if (a2 && a5)
  {
    v9 = a6;
    v25 = 0;
    *a5 = 0;
    v14 = a3;
    v16 = sub_1000C9FC0(a3, a2, a3, a4, a5, a6, a7, a8);
    v17 = sub_1000B90F8(*(a1 + 8), a2, v9, a3, a4, &v25, v16);
    if (v17)
    {
      if (v17 == 1)
      {
        v21 = 16;
      }

      else
      {
        v21 = 1;
      }

      if (v17 == 2)
      {
        v8 = 15;
      }

      else
      {
        v8 = v21;
      }

      sub_1000CA03C(v16, v14);
    }

    else
    {
      v8 = sub_10004DE74(a1, v25, a4, v16, &v24, v18, v19, v20);
      sub_1000CA03C(v16, v14);
      if (v8)
      {
        v25 = 0;
      }

      if (!v24)
      {
        v25 = 0;
        v8 = 1;
      }

      v22 = *(a1 + 5520);
      if (v22)
      {
        *v22 = 0;
      }

      *(a1 + 5532) = 0;
      *a5 = v25;
    }
  }

  return v8;
}

uint64_t sub_10004DE74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v13 = 4 * a2;
  v14 = sub_1000C9F54(v13, a2, a3, a4, a5, a6, a7, a8);
  v15 = v14;
  if (v11 < 1)
  {
    v17 = 0;
    v26 = 1;
  }

  else
  {
    v38 = v13;
    v39 = v8;
    v16 = v11;
    bzero(v14, 4 * v11);
    v17 = 0;
    v18 = 1;
    v19 = v16;
    v20 = v10;
    v21 = v15;
    do
    {
      v23 = *v20++;
      v22 = v23;
      if (v23 == -1)
      {
        v26 = 1;
        goto LABEL_15;
      }

      v24 = sub_10004DA20(a1, v22, v21);
      if (v17)
      {
        v25 = v17;
      }

      else
      {
        v25 = v24;
      }

      if (v24)
      {
        v18 = 0;
        v17 = v25;
      }

      else
      {
        v17 = v17;
      }

      ++v21;
      --v19;
    }

    while (v19);
    v26 = 1;
    if (v18)
    {
      v13 = v38;
      v8 = v39;
      goto LABEL_29;
    }

LABEL_15:
    v13 = v38;
    do
    {
      if (*v9 && sub_1000B252C(*(a1 + 8), *v10))
      {
        v27 = sub_1000B2A30(*(a1 + 8), *v10);
        if (v27 != 0xFFFF)
        {
          v28 = v27;
          if (!sub_10004E460(a1, *v10) || !sub_1000B8384(*(a1 + 8), v28))
          {
            goto LABEL_16;
          }
        }

        if (*v9)
        {
          v40 = 0;
          v29 = sub_1000BA66C(*(a1 + 8), *v10, &v40);
          if (v40)
          {
            v30 = sub_1000BA7EC(*(a1 + 8));
            sub_10001972C(*(a1 + 16), v30, v31, v32, v33, v34, v35, v36);
          }

          if (!v29)
          {
LABEL_16:
            v26 = 0;
          }
        }
      }

      ++v10;
      ++v9;
      --v16;
    }

    while (v16);
    v8 = v39;
  }

LABEL_29:
  sub_1000CA03C(v15, v13);
  *v8 = v26;
  return v17;
}

uint64_t sub_10004E038(unint64_t a1, unint64_t a2, _WORD *a3, int a4, uint64_t a5, int *a6)
{
  v121 = 1;
  *a6 = 0;
  v9 = sub_1000CB75C(a2);
  v10 = 4 * v9;
  v18 = sub_1000C9F54(v10, v11, v12, v13, v14, v15, v16, v17);
  v26 = sub_1000C9F54(v10, v19, v20, v21, v22, v23, v24, v25);
  v34 = sub_1000C9F54(v10, v27, v28, v29, v30, v31, v32, v33);
  v42 = sub_1000C9F54(v10, v35, v36, v37, v38, v39, v40, v41);
  v50 = sub_1000C9F54(v10, v43, v44, v45, v46, v47, v48, v49);
  v117 = v42;
  v118 = v34;
  v119 = v26;
  v120 = v18;
  v115 = a2;
  v116 = a3;
  v51 = sub_1000B2D30(*(a1 + 8), a2, a3, 1, 1, v9, v50, v18, v26, v34, v42);
  if (v51 < 1)
  {
    v69 = 0;
    v97 = 1;
    goto LABEL_50;
  }

  v113 = 4 * v9;
  v109 = v51;
  v59 = v51;
  v67 = sub_1000C9FC0(v51, v52, v53, v54, v55, v56, v57, v58);
  v68 = 0;
  v114 = v59;
  while (1)
  {
    if (*(v50 + v68) != -1)
    {
      goto LABEL_6;
    }

    v70 = *(v119 + v68) + 1;
    v71 = *(v117 + v68) + 1;
    v72 = 2 * v70;
    v73 = sub_1000C9F54(2 * v70, v60, v61, v62, v63, v64, v65, v66);
    v81 = sub_1000C9F54(2 * v71, v74, v75, v76, v77, v78, v79, v80);
    sub_1000CB778(v73, (v115 + 2 * *(v120 + v68)), v70);
    sub_1000CB778(v81, &v116[*(v118 + v68)], v71);
    if (!v73)
    {
      v69 = 4;
      goto LABEL_4;
    }

    v123 = 0;
    *(v50 + v68) = -1;
    v82 = sub_1000B2174(*(a1 + 8), v73);
    v122 = v82;
    if (v82 != -1)
    {
      v69 = sub_10004DA20(a1, v82, 0);
      if (!v69)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    v84 = sub_1000B83DC(*(a1 + 8), v73, v81, 0, &v122, &v123);
    if (v84 == 1)
    {
      v85 = 16;
    }

    else
    {
      v85 = 1;
    }

    if (v84 == 2)
    {
      v69 = 15;
    }

    else
    {
      v69 = v85;
    }

    if (!v84)
    {
      v69 = sub_10004DA20(a1, v122, 0);
      if (!v69)
      {
LABEL_22:
        *(v50 + v68) = v122;
        v83 = *(a1 + 5520);
        if (!v83)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v83 = 0;
LABEL_13:
        *(a1 + 5532) = 0;
        goto LABEL_4;
      }

LABEL_11:
      v83 = *(a1 + 5520);
      if (v83)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_4:
    sub_1000CA03C(v81, 2 * v71);
    sub_1000CA03C(v73, v72);
    if (v69)
    {
      break;
    }

    *(v67 + v68) = 1;
    v59 = v114;
LABEL_6:
    if (v59 == ++v68)
    {
      v69 = sub_10004DE74(a1, v109, v50, v67, &v121, v64, v65, v66);
      v10 = v113;
      if (!v69)
      {
        if (v109 >= a4)
        {
          v86 = a4;
        }

        else
        {
          v86 = v109;
        }

        if (a4 >= 1)
        {
          v87 = 0;
          v88 = v86 <= 1 ? 1 : v86;
          if (v86 < 8)
          {
            goto LABEL_37;
          }

          if ((a5 - v50) < 0x20)
          {
            goto LABEL_37;
          }

          v87 = v88 & 0x7FFFFFF8;
          v89 = (v50 + 2);
          v90 = (a5 + 16);
          v91 = v87;
          do
          {
            v92 = *v89;
            *(v90 - 1) = *(v89 - 1);
            *v90 = v92;
            v89 += 2;
            v90 += 2;
            v91 -= 8;
          }

          while (v91);
          if (v87 != v88)
          {
LABEL_37:
            v93 = (a5 + 4 * v87);
            v94 = v50 + v87;
            v95 = v88 - v87;
            do
            {
              v96 = *v94++;
              *v93++ = v96;
              --v95;
            }

            while (v95);
          }
        }

        v69 = 0;
        *a6 = v86;
      }

      goto LABEL_49;
    }
  }

  if (v68)
  {
    v98 = v68 - 1;
    v99 = 1;
    do
    {
      if (*(v67 + v98))
      {
        v123 = 0;
        v99 = sub_1000BA66C(*(a1 + 8), *(v50 + v98), &v123);
        if (v123)
        {
          v101 = sub_1000BA7EC(*(a1 + 8));
          sub_10001972C(*(a1 + 16), v101, v102, v103, v104, v105, v106, v107);
          v69 = 0;
        }
      }

      v100 = v98-- + 1;
    }

    while (v100 > 1);
  }

  else
  {
    v99 = 1;
  }

  v121 = v99;
  v10 = v113;
  v59 = v114;
LABEL_49:
  sub_1000CA03C(v67, v59);
  v97 = v121 != 0;
LABEL_50:
  sub_1000CA03C(v50, v10);
  sub_1000CA03C(v117, v10);
  sub_1000CA03C(v118, v10);
  sub_1000CA03C(v119, v10);
  sub_1000CA03C(v120, v10);
  if (v69 == 0 || v97)
  {
    return v69;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10004E460(unint64_t a1, unsigned int a2)
{
  if (*(a1 + 5500))
  {
    sub_10004C8D8(a1, a2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    result = sub_100036C6C(v3);
    if (!result)
    {
      goto LABEL_13;
    }

    v5 = *(a1 + 112);
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_8:
    result = sub_100036C6C(v5);
    if (!result)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  result = 1;
  v5 = *(a1 + 112);
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!*(a1 + 136) || (result = sub_100036C6C(*(a1 + 136)), result))
  {
    if (*(a1 + 144))
    {
      result = sub_100036C6C(*(a1 + 144));
    }
  }

LABEL_13:
  v6 = *(a1 + 5520);
  if (v6)
  {
    *v6 = 0;
  }

  *(a1 + 5532) = 0;
  return result;
}

uint64_t sub_10004E510(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (a1)
  {
    v8 = sub_1000BFB80(*(a1 + 6480));
    v7 = sub_1000C9EBC(*(a1 + 6488));
    v4 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v5 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v6);
    nullsub_1(v5);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v3 = sub_1000BDA90();
    if (!setjmp(v3))
    {
      if (sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
      {
        v9 = 4;
      }

      else
      {
        v9 = *(a1 + 8160) != 0;
      }

      sub_1000BDAF4();
      goto LABEL_9;
    }

    *(a1 + 8160) = 1;
  }

  else
  {
    v8 = sub_1000BFB80(0);
    v7 = sub_1000C9EBC(0);
    v4 = sub_1000BDB58();
    sub_1000010B8(0, 0);
    v5 = sub_1000CED78(0, 0, &v6);
    nullsub_1(v5);
  }

  v9 = 1;
LABEL_9:
  sub_10004D8D8(v9);
  sub_1000CED78(v5, v6, 0);
  sub_1000BDB44(v4);
  sub_1000C9EBC(v7);
  sub_1000BFB80(v8);
  return v9;
}

uint64_t sub_10004E6AC(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (a1)
  {
    v36 = sub_1000BFB80(*(a1 + 6480));
    v35 = sub_1000C9EBC(*(a1 + 6488));
    v32 = sub_1000BDB58();
    sub_1000010B8(*(a1 + 6496), *(a1 + 6504));
    v33 = sub_1000CED78(*(a1 + 6520), *(a1 + 6528), &v34);
    nullsub_1(v33);
    if (*(a1 + 8160))
    {
      return 1;
    }

    sub_1000BDB44((a1 + 6648));
    v9 = sub_1000BDA90();
    if (setjmp(v9))
    {
      *(a1 + 8160) = 1;
      goto LABEL_8;
    }

    if (!sub_1000C7A1C(*(a1 + 8168), "Elvis Magic"))
    {
      if (*(a1 + 8160))
      {
        v10 = 1;
        goto LABEL_14;
      }

      if (a3 >= 1 && a4 && sub_1000B252C(*(a1 + 8), a2))
      {
        v11 = *(a1 + 8);
        v12 = sub_1000B210C(v11);
        v13 = sub_1000B214C(v11);
        v14 = 2 * v12;
        v22 = sub_1000C9F54(v14 + 2, v15, v16, v17, v18, v19, v20, v21);
        v23 = 2 * v13;
        v31 = sub_1000C9F54(v23 + 2, v24, v25, v26, v27, v28, v29, v30);
        sub_1000B22CC(*(a1 + 8), a2, v22, v31);
        if (!sub_1000CB778(a4, v22, a3))
        {
          v37 = 10;
        }

        sub_1000CA03C(v31, v23 + 2);
        sub_1000CA03C(v22, v14 + 2);
        v10 = v37;
        goto LABEL_14;
      }
    }

    v10 = 4;
LABEL_14:
    v37 = v10;
    sub_1000BDAF4();
    goto LABEL_9;
  }

  v36 = sub_1000BFB80(0);
  v35 = sub_1000C9EBC(0);
  v32 = sub_1000BDB58();
  sub_1000010B8(0, 0);
  v33 = sub_1000CED78(0, 0, &v34);
  nullsub_1(v33);
LABEL_8:
  v37 = 1;
LABEL_9:
  sub_10004D8D8(v37);
  sub_1000CED78(v33, v34, 0);
  sub_1000BDB44(v32);
  sub_1000C9EBC(v35);
  sub_1000BFB80(v36);
  return v37;
}

uint64_t sub_10004E900(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return dword_1000F0E24[a1 - 1];
  }
}

uint64_t sub_10004E924(int a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = sub_1000C0034(48);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  *v6 = a3;
  *(v6 + 16) = sub_100002508(a3);
  *(v7 + 8) = sub_1000C0E9C(a2, (a2 + (a2 >> 31)) >> 1, 2, v8, v9, v10, v11, v12);
  v13 = sub_1000C0034(4 * a1);
  *(v7 + 24) = v13;
  if (v13)
  {
    v14 = sub_1000C0034(8 * a1);
    *(v7 + 32) = v14;
    if (v14)
    {
      *(v7 + 40) = a1;
      *(v7 + 44) = 0;
      return v7;
    }
  }

  sub_1000C0F40(*(v7 + 8));
  sub_1000BFEC4(*(v7 + 32));
  sub_1000BFEC4(v7);
  return 0;
}

uint64_t sub_10004EA04(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000C0F40(*(result + 8));
    sub_1000BFEC4(*(v1 + 32));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10004EA54(uint64_t result)
{
  if (result)
  {
    *(result + 44) = 0;
    return sub_1000C124C(*(result + 8), 0);
  }

  return result;
}

uint64_t sub_10004EA6C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      if (*(v1 + 16) >= 1)
      {
        v3 = 0;
        do
        {
          sub_1000BFEC4(*(*(v1 + 8) + 8 * v3++));
        }

        while (v3 < *(v1 + 16));
        v2 = *(v1 + 8);
      }

      sub_1000BFEC4(v2);
    }

    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 24) = 0;
    *(v1 + 16) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10004EAF0(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = *a1;
  *a3 = *(a1 + 20);
  *a4 = *(a1 + 24);
  return *(a1 + 16);
}

uint64_t sub_10004EB10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "ber0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(32);
  v11 = v10;
  if (!v10)
  {
    sub_1000BBBC4(v9);
    return v11;
  }

  if (!sub_1000BBD54(v9, (v10 + 16)) || !sub_1000BBD54(v9, (v11 + 20)) || !sub_1000BBD54(v9, (v11 + 24)))
  {
    goto LABEL_14;
  }

  v12 = *(v11 + 16);
  *(v11 + 8) = 0;
  if (!v12)
  {
    v17 = 0;
    *v11 = 0;
    goto LABEL_15;
  }

  v13 = sub_1000C0034(8 * v12);
  *(v11 + 8) = v13;
  if (v13)
  {
    v14 = *(v11 + 16);
    *v11 = v13;
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v22 = 0;
        if (!sub_1000BBF0C(v9, 4, (*(v11 + 8) + v15), &v22) || v22 > *(v11 + 24) + 1)
        {
          break;
        }

        v17 = 0;
        ++v16;
        v15 += 8;
        if (v16 >= *(v11 + 16))
        {
          goto LABEL_15;
        }
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_14:
    v17 = 1;
  }

LABEL_15:
  v18 = sub_1000BBC1C(v9);
  sub_1000BBBC4(v9);
  if ((v17 & 1) != 0 || !v18)
  {
    v19 = *(v11 + 8);
    if (v19)
    {
      if (*(v11 + 16) >= 1)
      {
        v20 = 0;
        do
        {
          sub_1000BFEC4(*(*(v11 + 8) + 8 * v20++));
        }

        while (v20 < *(v11 + 16));
        v19 = *(v11 + 8);
      }

      sub_1000BFEC4(v19);
    }

    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 24) = 0;
    *(v11 + 16) = 0;
    sub_1000BFEC4(v11);
    return 0;
  }

  return v11;
}

unsigned int *sub_10004ECB8(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2 >= 1)
    {
      v3 = v2 - 1;
      do
      {
        v5 = *(*(v1 + 8) + 8 * v3);
        if (v5)
        {
          sub_1000BFEC4(v5[11]);
          sub_100078CEC(v5[7]);
          sub_100079240(v5[5]);
          sub_1000BFEC4(v5[1]);
          sub_1000BFEC4(v5[3]);
          sub_1000BFEC4(v5);
        }

        v4 = v3-- + 1;
      }

      while (v4 > 1);
    }

    sub_1000BFEC4(*(v1 + 8));
    *(v1 + 8) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_10004ED6C(unsigned int *a1)
{
  v2 = sub_1000BD6C8(*a1, 4, 0xFFFFFFFF);
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 1) + 8 * v3);
      v5 = sub_1000BD6C8(*(v4 + 64), 1, 0xFFFFFFFF);
      v6 = sub_1000BD6C8(*(v4 + 68), 4, v5);
      v7 = sub_1000BD6C8(*(v4 + 72), 4, v6);
      v8 = sub_1000BD6C8(*(v4 + 76), 4, v7);
      v9 = sub_1000BD520(*v4, v8);
      v10 = sub_1000BD520(*(v4 + 16), v9);
      v11 = sub_1000793FC(*(v4 + 32));
      v12 = sub_100078D9C(*(v4 + 48));
      v13 = *(v4 + 76);
      if (v13 >= 1)
      {
        v14 = v12;
        v15 = sub_1000BD7F4(*(v4 + 80), 4, v13, 0xFFFFFFFFLL);
        v2 = sub_1000BD6C8(v11 + v10 + v14 + v15, 4, v2);
      }

      ++v3;
    }

    while (v3 < *a1);
  }

  return v2;
}

uint64_t sub_10004EE98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bep0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v23 = 0;
  if (!sub_1000BBD54(v8, &v23))
  {
    goto LABEL_29;
  }

  v10 = v23;
  if (!v23)
  {
LABEL_31:
    v12 = 0;
    goto LABEL_32;
  }

  v11 = sub_1000C0034(16);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = v11;
  *v11 = v10;
  v13 = sub_1000C0034(8 * v10);
  *(v12 + 8) = v13;
  if (!v13)
  {
    sub_1000BFEC4(v12);
LABEL_29:
    v12 = 0;
LABEL_30:
    sub_10004ECB8(v12);
    goto LABEL_31;
  }

  if (v10 >= 1)
  {
    v14 = 0;
    v15 = 8 * v10;
    while (1)
    {
      *(*(v12 + 8) + v14) = sub_1000C0034(96);
      if (!*(*(v12 + 8) + v14))
      {
        break;
      }

      v14 += 8;
      if (v15 == v14)
      {
        goto LABEL_10;
      }
    }

    sub_10004ECB8(v12);
    goto LABEL_29;
  }

LABEL_10:
  if (v23 >= 1)
  {
    for (i = 0; i < v23; *(*(v12 + 8) + 8 * i++) = v17)
    {
      v17 = *(*(v12 + 8) + 8 * i);
      if (!sub_1000BBDA4(v9, (v17 + 64)))
      {
        goto LABEL_30;
      }

      if (!sub_1000BBD54(v9, (v17 + 68)))
      {
        goto LABEL_30;
      }

      if (!sub_1000BBD54(v9, (v17 + 72)))
      {
        goto LABEL_30;
      }

      if (!sub_1000BBD54(v9, (v17 + 76)))
      {
        goto LABEL_30;
      }

      if (!sub_1000BBFD8(v9, (v17 + 8)))
      {
        goto LABEL_30;
      }

      *v17 = *(v17 + 8);
      if (!sub_1000BBFD8(v9, (v17 + 24)))
      {
        goto LABEL_30;
      }

      *(v17 + 16) = *(v17 + 24);
      v18 = sub_1000794EC(v9);
      *(v17 + 40) = v18;
      if (!v18)
      {
        goto LABEL_30;
      }

      *(v17 + 32) = v18;
      v19 = sub_100078E20(v9);
      *(v17 + 56) = v19;
      if (!v19)
      {
        goto LABEL_30;
      }

      *(v17 + 48) = v19;
      v22 = 0;
      if (!sub_1000BBF0C(v9, 4, (v17 + 88), &v22))
      {
        goto LABEL_30;
      }

      v20 = *(v17 + 88);
      if (v20)
      {
        if (v22 != *(v17 + 76))
        {
          goto LABEL_30;
        }

        *(v17 + 80) = v20;
      }
    }
  }

LABEL_32:
  sub_1000BBBC4(v9);
  return v12;
}

uint64_t sub_10004F0A4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  sub_100001138(a2);
  if (sub_100001140(a2) > 2)
  {
    return 0;
  }

  v9 = sub_1000C0034(1072);
  v10 = v9;
  if (v9)
  {
    memcpy(v9, &off_1000FD208, 0x208uLL);
    *(v10 + 376) = a1;
    *(v10 + 384) = a2;
    *(v10 + 432) = a3;
    *(v10 + 368) = 1;
    if (!qword_1001065A8 || !*(qword_1001065A8 + 1776))
    {
      if (a4)
      {
        *(v10 + 608) = a4;
        if (sub_10004F1D8(v10, a3))
        {
          return v10;
        }
      }

      else
      {
        *(v10 + 656) = sub_100001100();
        *(v10 + 608) = 0;
        if (sub_10004F1D8(v10, a3))
        {
          return v10;
        }
      }

LABEL_12:
      sub_10004F5D8(v10);
      return 0;
    }

    v11 = sub_10005D9A0();
    *(v10 + 656) = v11;
    sub_10005D9C8(v11, a1, a2);
    *(v10 + 608) = a4;
    if (!sub_10004F1D8(v10, a3))
    {
      goto LABEL_12;
    }
  }

  return v10;
}

uint64_t sub_10004F1D8(uint64_t a1, int a2)
{
  *(a1 + 532) = 0;
  *(a1 + 544) = 0x4000;
  *(a1 + 568) = 0;
  v4 = sub_100001140(*(a1 + 384));
  *(a1 + 528) = v4;
  *(a1 + 456) = 0xFFFFFFFFLL;
  if (v4 > 2)
  {
    return 0;
  }

  *(a1 + 920) = sub_1000547FC;
  *(a1 + 968) = sub_100054CE4;
  *(a1 + 944) = sub_1000515FC;
  *(a1 + 952) = sub_100051694;
  *(a1 + 928) = sub_10005169C;
  *(a1 + 976) = sub_1000516C0;
  *(a1 + 936) = sub_1000518F4;
  *(a1 + 960) = sub_10005429C;
  v6 = qword_1001065A8;
  if (qword_1001065A8)
  {
    *(a1 + 596) = *(qword_1001065A8 + 3728);
    LOWORD(v6) = *(v6 + 3296);
  }

  else
  {
    *(a1 + 596) = 0;
  }

  *(a1 + 806) = v6;
  *(a1 + 572) = 0;
  *(a1 + 576) = 0;
  *(a1 + 736) = sub_10005B6A4();
  v7 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v8 = *(qword_1001065A8 + 3520);
    *(a1 + 812) = v8;
    *(a1 + 554) = *(v7 + 3240);
    result = sub_1000C0034(4 * v8);
    *(a1 + 816) = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 812) = 0;
    *(a1 + 554) = 0;
    result = sub_1000C0034(0);
    *(a1 + 816) = result;
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 824) = 0;
  if (qword_1001065A8)
  {
    v9 = *(qword_1001065A8 + 4144);
    if (v9)
    {
      v10 = *(qword_1001065A8 + 4136);
      if (v10)
      {
        v11 = *(qword_1001065A8 + 4720) && *(qword_1001065A8 + 4128) >= 1 && *(qword_1001065A8 + 5340) == 0;
        *(a1 + 472) = sub_1000CF474(0, *(a1 + 376), a2, v10, v9, 0, v11, 0);
      }
    }
  }

  *(a1 + 804) = sub_10000119C(*(a1 + 384));
  v12 = sub_100001108(*(a1 + 384));
  result = sub_1000C0034(v12);
  *(a1 + 616) = result;
  if (!result)
  {
    return result;
  }

  if (qword_1001065A8)
  {
    v13 = *(qword_1001065A8 + 584);
    if (v13 >= 1)
    {
      result = sub_1000C0034(8 * v13);
      *(a1 + 640) = result;
      if (!result)
      {
        return result;
      }

      v14 = qword_1001065A8 ? *(qword_1001065A8 + 584) : 0;
      v15 = sub_100001108(*(a1 + 384));
      result = sub_1000C0034(v14 * v15);
      *(a1 + 624) = result;
      if (!result)
      {
        return result;
      }

      v16 = qword_1001065A8;
      if (qword_1001065A8)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          if (*(v16 + 584) <= v17)
          {
            break;
          }

          *(*(a1 + 640) + 8 * v17) = *(a1 + 624) + v18;
          v18 += sub_100001108(*(a1 + 384));
          ++v17;
          v16 = qword_1001065A8;
        }

        while (qword_1001065A8);
      }
    }
  }

  sub_100038200(a1);
  if (!*(a1 + 408))
  {
    return 0;
  }

  if (!qword_1001065A8)
  {
    sub_1000361DC(a1, 1, 0);
    if (*(a1 + 376))
    {
      goto LABEL_34;
    }

    return 1;
  }

  sub_1000361DC(a1, 1, *(qword_1001065A8 + 5368));
  if (!*(a1 + 376))
  {
    return 1;
  }

LABEL_34:
  v19 = *(a1 + 656);
  if (v19)
  {
    sub_1000608E8(v19, *(a1 + 528));
  }

  v20 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v21 = *(qword_1001065A8 + 3160);
    *(a1 + 744) = v21;
    if (v21 > 65533)
    {
      return 0;
    }

    LODWORD(v20) = *(v20 + 3144);
  }

  else
  {
    *(a1 + 744) = 0;
  }

  *(a1 + 700) = v20;
  result = sub_1000C0034(2 * v20);
  *(a1 + 688) = result;
  if (result)
  {
    *(a1 + 696) = 0;
    if (sub_1000BABBC(*(a1 + 376)) < 1 || (result = sub_1000506E8(a1), result))
    {
      if ((*(a1 + 728) = 0, (v22 = *(a1 + 656)) == 0) || !sub_10006097C(v22) || (!qword_1001065A8 ? (v23 = 0, v24 = 0) : (v23 = *(qword_1001065A8 + 4508), v24 = *(qword_1001065A8 + 4512)), result = sub_10009977C(1, v23, v24, 0, 1, *(a1 + 376), *(a1 + 384)), (*(a1 + 728) = result) != 0))
      {
        v25 = qword_1001065A8;
        if (qword_1001065A8)
        {
          *(a1 + 916) = *(qword_1001065A8 + 3064);
          v26 = v25[762];
          v27 = v25[774];
          v28 = v25[808];
          v29 = v25[737];
          LODWORD(v25) = v25[796];
        }

        else
        {
          v29 = 0;
          v27 = 0;
          v26 = 0;
          v28 = 0;
          *(a1 + 916) = 0;
        }

        *(a1 + 896) = v26;
        *(a1 + 900) = v27;
        *(a1 + 904) = v28;
        *(a1 + 908) = v29;
        result = 1;
        *(a1 + 912) = v25;
      }
    }
  }

  return result;
}

uint64_t sub_10004F5D8(uint64_t *a1)
{
  sub_1000BFEC4(a1[107]);
  sub_1000BFEC4(a1[104]);
  sub_1000BFEC4(a1[102]);
  v2 = a1[59];
  if (v2)
  {
    sub_1000CF5EC(v2);
  }

  v3 = a1[92];
  if (v3)
  {
    sub_10005B718(v3);
  }

  sub_1000BFEC4(a1[77]);
  v4 = a1[82];
  if (v4)
  {
    sub_10005D9D0(v4);
  }

  sub_1000BFEC4(a1[86]);
  sub_1000BFEC4(a1[78]);
  sub_1000BFEC4(a1[80]);
  sub_1000BFEC4(a1[128]);
  sub_1000BFEC4(a1[130]);
  v5 = a1[91];
  if (v5)
  {
    sub_1000999F8(v5);
  }

  sub_100003974(a1[51]);

  return sub_1000BFEC4(a1);
}

uint64_t sub_10004F68C(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8, int a9)
{
  v9 = *a2;
  if (!v9)
  {
    return result;
  }

  v11 = a3;
  v12 = a2;
  v13 = result;
  v14 = a9;
  v85 = 0;
  if (!a9)
  {
    v83 = 0;
    v84 = 0;
    v16 = v9;
    v17 = a3;
    goto LABEL_30;
  }

  if (v9 < 1)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    v15 = 0;
    LODWORD(v16) = 0;
LABEL_11:
    v22 = v9 - v15;
    v23 = (a3 + (v15 << 7) + 4);
    do
    {
      v24 = *v23;
      v23 += 32;
      v16 = ((1 << (v24 - 1)) + v16);
      --v22;
    }

    while (v22);
    goto LABEL_13;
  }

  v18 = 0;
  v19 = 0;
  v15 = v9 & 0x7FFFFFFE;
  v20 = (a3 + 132);
  v21 = v15;
  do
  {
    v18 += 1 << (*(v20 - 32) - 1);
    v19 += 1 << (*v20 - 1);
    v20 += 64;
    v21 -= 2;
  }

  while (v21);
  v16 = (v19 + v18);
  if (v15 != v9)
  {
    goto LABEL_11;
  }

LABEL_13:
  result = sub_1000C0034(v16 << 7);
  if (!result)
  {
    return result;
  }

  v17 = result;
  v84 = sub_1000C0034(4 * v16);
  if (!v84)
  {
    v37 = v17;
LABEL_55:

    return sub_1000BFEC4(v37);
  }

  v83 = sub_1000C0034(4 * v16);
  if (!v83)
  {
    sub_1000BFEC4(v17);
    v37 = v84;
    goto LABEL_55;
  }

  if (v9 >= 1)
  {
    v74 = a4;
    v75 = v12;
    __nel = v13;
    v77 = v11;
    v25 = 0;
    v26 = 0;
    for (i = v9; i != v25; v9 = i)
    {
      v27 = &v11[32 * v25];
      v28 = 1 << (*(v27 + 4) - 1);
      if (v27[1] != 32)
      {
        v29 = 0;
        v30 = v26;
        if (v28 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = 1 << (*(v27 + 4) - 1);
        }

        do
        {
          v32 = v27[1];
          v33 = v17 + (v30 << 7);
          *(v33 + 4) = v32;
          j__memmove((v33 + 16), v27 + 4, 2 * v32);
          v34 = v27[1];
          if (v34 >= 1)
          {
            v35 = (v33 + 88);
            v36 = v29;
            do
            {
              *v35++ = v36 & 1;
              v36 >>= 1;
              --v34;
            }

            while (v34);
          }

          *(v84 + 4 * v30) = v25;
          *(v83 + 4 * v30++) = v29++;
        }

        while (v29 != v31);
      }

      v26 += v28;
      ++v25;
      v11 = v77;
    }

    v12 = v75;
    v13 = __nel;
    v14 = a9;
    a4 = v74;
  }

LABEL_30:
  v38 = sub_10009977C(1, 0, 0, 1, 0, *(v13 + 376), *(v13 + 384));
  if (!sub_100099BA4(v38, 4 * v9 * v11[1], (v9 * v11[1]) << 6))
  {
    sub_100036B4C(v13);
    result = sub_1000999F8(v38);
    if (!v14)
    {
      return result;
    }

    goto LABEL_54;
  }

  *(v13 + 656) = sub_10005F074(*(v13 + 384), v16, v17, v38);
  sub_1000999F8(v38);
  if (!*(v13 + 656))
  {
    result = sub_100036B4C(v13);
    if (!v14)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (!sub_10004FC5C(v13, 0, 0, 0, 0, 1, v39, v40, v73, 1u))
  {
    sub_100036B4C(v13);
    result = sub_10005DA94(*(v13 + 656));
    *(v13 + 656) = 0;
    if (!v14)
    {
      return result;
    }

LABEL_54:
    sub_1000BFEC4(v17);
    sub_1000BFEC4(v84);
    v37 = v83;
    goto LABEL_55;
  }

  v41 = v11;
  v42 = sub_10009C034(a4);
  v43 = v42 - 1;
  if (v42 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = sub_1000B1C1C(a4, v44, &v85);
      if (!v45)
      {
        break;
      }

      sub_10004FF3C(v13, v45, v85);
      if (sub_100036B28(v13))
      {
        break;
      }
    }

    while (v43 != v44++);
  }

  (*(v13 + 928))(v13, a4);
  v53 = *(v13 + 524);
  if (v53 != 5)
  {
    if (v53 == 1)
    {
      *(v13 + 524) = 0;
    }

    if (sub_100036634(v13, *(v13 + 428), v47, v48, v49, v50, v51, v52))
    {
      sub_100036B4C(v13);
    }
  }

  if (v9 < 1)
  {
    goto LABEL_62;
  }

  if (v9 == 1)
  {
    v54 = 0;
  }

  else
  {
    v54 = v9 & 0x7FFFFFFE;
    v55 = v41 + 35;
    v56 = v54;
    do
    {
      *(v55 - 32) = 0x40000000;
      *v55 = 0x40000000;
      v55 += 64;
      v56 -= 2;
    }

    while (v56);
    if (v54 == v9)
    {
      goto LABEL_62;
    }
  }

  v57 = &v41[32 * v54 + 3];
  v58 = v9 - v54;
  do
  {
    *v57 = 0x40000000;
    v57 += 32;
    --v58;
  }

  while (v58);
LABEL_62:
  if (*(v13 + 808) >= 1)
  {
    for (j = 0; j < *(v13 + 808); ++j)
    {
      v60 = *(v13 + 816);
      v61 = *(v60 + 4 * j);
      if (v14)
      {
        v62 = &v41[32 * *(v84 + 4 * v61)];
      }

      else
      {
        v62 = (v17 + (v61 << 7));
      }

      v63 = *(v60 + 4 * j + 2);
      v64 = *(v13 + 568);
      v65 = sub_100039178(*(v13 + 376), 1, a5, a6, 0, 0, (v62 + 16), *(v62 + 1));
      v66 = *(v62 + 1);
      v67 = v63 + a7 + v64 + v65 - *(v13 + 896) + (v66 - 1) * a8;
      v14 = a9;
      if (a9)
      {
        if (v67 >= *(v62 + 3))
        {
          continue;
        }

        if (v66 >= 1)
        {
          v68 = *(v83 + 4 * *(*(v13 + 816) + 4 * j));
          v69 = v62 + 88;
          do
          {
            *v69++ = v68 & 1;
            v68 >>= 1;
            --v66;
          }

          while (v66);
        }
      }

      *(v62 + 3) = v67;
    }
  }

  qsort(v41, v9, 0x80uLL, sub_1000502A0);
  if (v14)
  {
    if (v9 < 1)
    {
      LODWORD(v70) = 0;
    }

    else
    {
      v70 = 0;
      v71 = v41 + 3;
      while (1)
      {
        v72 = *v71;
        v71 += 32;
        if (v72 == 0x40000000)
        {
          break;
        }

        if (v9 == ++v70)
        {
          LODWORD(v70) = v9;
          break;
        }
      }
    }

    *v12 = v70;
    sub_1000BFEC4(v17);
    sub_1000BFEC4(v84);
    sub_1000BFEC4(v83);
  }

  else
  {
    *v12 = *(v13 + 808);
  }

  result = sub_10005DA94(*(v13 + 656));
  *(v13 + 656) = 0;
  return result;
}

uint64_t sub_10004FC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10)
{
  v16 = *(a1 + 656);
  v17 = sub_10005429C;
  v18 = sub_1000518F4;
  v19 = sub_1000516C0;
  v20 = sub_10005169C;
  v21 = sub_100051694;
  v22 = sub_1000515FC;
  v23 = sub_100054CE4;
  v24 = sub_1000547FC;
  if (a6 != 1)
  {
    v17 = sub_100051CC8;
    v18 = sub_100051B88;
    v19 = sub_100051B78;
    v20 = nullsub_9;
    v21 = sub_100051B6C;
    v22 = sub_100051AAC;
    v23 = sub_100052724;
    v24 = sub_1000521F4;
  }

  *(a1 + 920) = v24;
  *(a1 + 968) = v23;
  *(a1 + 944) = v22;
  *(a1 + 952) = v21;
  *(a1 + 928) = v20;
  *(a1 + 976) = v19;
  *(a1 + 936) = v18;
  *(a1 + 960) = v17;
  if (a6 == 1)
  {
    sub_1000BFEC4(*(a1 + 832));
    *(a1 + 832) = 0;
    if (*(a1 + 856))
    {
      goto LABEL_26;
    }

    LODWORD(v25) = qword_1001065A8;
    if (*(a1 + 376))
    {
      if (!qword_1001065A8)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    if (qword_1001065A8)
    {
      if (!*(qword_1001065A8 + 3088))
      {
LABEL_7:
        LODWORD(v25) = *(qword_1001065A8 + 3080);
        goto LABEL_15;
      }

      v25 = *(qword_1001065A8 + 3088);
    }

LABEL_15:
    *(a1 + 880) = v25;
    if (!v25)
    {
      return 0;
    }

    v27 = sub_1000C0034(8 * v25);
    *(a1 + 856) = v27;
    if (!v27)
    {
      return 0;
    }

    v28 = v27 + 8 * *(a1 + 880);
    v29 = 864;
    goto LABEL_25;
  }

  sub_1000BFEC4(*(a1 + 856));
  *(a1 + 856) = 0;
  if (*(a1 + 832))
  {
    goto LABEL_26;
  }

  if (*(a1 + 376))
  {
    if (qword_1001065A8)
    {
LABEL_11:
      LODWORD(v26) = *(qword_1001065A8 + 2984);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!qword_1001065A8)
  {
LABEL_21:
    LODWORD(v26) = 0;
    goto LABEL_22;
  }

  v26 = *(qword_1001065A8 + 2992);
  if (!v26)
  {
    goto LABEL_11;
  }

LABEL_22:
  *(a1 + 880) = v26;
  if (!v26)
  {
    return 0;
  }

  v30 = sub_1000C0034(12 * v26);
  *(a1 + 832) = v30;
  if (!v30)
  {
    return 0;
  }

  v28 = v30 + 12 * *(a1 + 880);
  v29 = 840;
LABEL_25:
  *(a1 + v29) = v28;
LABEL_26:
  v31 = sub_100060940(v16);
  if (*(a1 + 880) < (v31 - sub_100060948(v16) + 3))
  {
    return 0;
  }

  v33 = *(a1 + 920);

  return v33(a1, a2, a3, a4, a5, a6, a10);
}

uint64_t *sub_10004FF3C(uint64_t *result, const void *a2, int *a3)
{
  v5 = result;
  v6 = *(result + 162);
  v7 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_23;
  }

  if (*(qword_1001065A8 + 584) >= 1 && v6 != 0)
  {
    v9 = 0;
    v10 = *result[80];
    while (1)
    {
      v11 = *(v7 + 584) - 1;
      v12 = result[80];
      if (v11 <= v9)
      {
        break;
      }

      v13 = v9 + 1;
      *(v12 + 8 * v9) = *(v12 + 8 * v9 + 8);
      v7 = qword_1001065A8;
      ++v9;
      if (!qword_1001065A8)
      {
        v12 = result[80];
        v9 = v13;
        break;
      }
    }

    *(v12 + 8 * v9) = v10;
    v14 = sub_100001108(result[48]);
    result = memcpy(v10, a2, v14);
    v15 = *(v5 + 163);
    v7 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 584) - 1 > v15)
      {
LABEL_12:
        *(v5 + 163) = v15 + 1;
        return result;
      }
    }

    else if (v15 < -1)
    {
      goto LABEL_12;
    }

    a2 = *v5[80];
    if (!qword_1001065A8)
    {
      goto LABEL_23;
    }
  }

  if (!*(v7 + 3224) || *(v5 + 151))
  {
    if (!*(v7 + 3272) && !*(v7 + 3276) || *(v5 + 286) < 1)
    {
      v17 = 0x4000;
      v18 = *(v7 + 3272);
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_26:
      if (*(v5 + 286) < 1)
      {
        LOBYTE(v18) = 0;
        v24 = *a3;
        if (*(v5 + 227))
        {
LABEL_29:
          if (*(v5 + 150))
          {
            v19 = v5[77];
            v20 = sub_100001108(v5[48]);
            memcpy(v19, a2, v20);
            *(v5 + 158) = *a3;
          }

          else if ((v18 & 1) == 0 && *(v7 + 2968))
          {
            v24 = *(v5 + 158);
            a2 = v5[77];
          }
        }

LABEL_38:
        result = (v5[121])(v5, a2, &v24);
        if (*(v5 + 227))
        {
          *(v5 + 150) = *(v5 + 150) == 0;
        }

        v21 = qword_1001065A8;
        if (qword_1001065A8)
        {
          if (*(qword_1001065A8 + 3224))
          {
            *(v5 + 151) = *(v5 + 151) == 0;
          }

          v22 = *(v21 + 584) >= 1 && v6 == 1;
          if (v22 && !*(v5 + 162))
          {
            v23 = 1;
            do
            {
              if (*(v21 + 584) <= v23)
              {
                break;
              }

              result = sub_10004FF3C(v5, *(v5[80] + 8 * v23++), &v24);
              v21 = qword_1001065A8;
            }

            while (qword_1001065A8);
          }
        }

        return result;
      }

      LOBYTE(v18) = 0;
      *(v5 + 150) = v17 > *(v7 + 2960);
LABEL_28:
      v24 = *a3;
      if (*(v5 + 227))
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }

    v16 = sub_100012174(v5[48], a2, v5[77]);
    v7 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v17 = v16;
      v18 = *(qword_1001065A8 + 3272);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

LABEL_23:
    LOBYTE(v18) = 1;
    v24 = *a3;
    if (*(v5 + 227))
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  *(v5 + 151) = 1;
  if (*(v7 + 3224) && *(v7 + 3024))
  {
    ++*(v5 + 286);
  }

  return result;
}

uint64_t sub_100050230(uint64_t a1)
{
  result = (*(a1 + 928))();
  v9 = *(a1 + 524);
  if (v9 != 5)
  {
    if (v9 == 1)
    {
      *(a1 + 524) = 0;
    }

    result = sub_100036634(a1, *(a1 + 428), v3, v4, v5, v6, v7, v8);
    if (result)
    {

      return sub_100036B4C(a1);
    }
  }

  return result;
}

void *sub_1000502B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (sub_100001140(a4) > 2)
  {
    return 0;
  }

  result = sub_100060D64(a1, a2, a4, a3);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (sub_100001140(a4) > 2)
  {
    return 0;
  }

  result = sub_1000C0034(1072);
  if (result)
  {
    v12 = result;
    memcpy(result, &off_1000FD208, 0x208uLL);
    *(v12 + 376) = a3;
    *(v12 + 384) = a4;
    *(v12 + 432) = a5;
    *(v12 + 656) = v11;
    if (sub_10004F1D8(v12, a5))
    {
      return v12;
    }

    sub_10004F5D8(v12);
    return 0;
  }

  return result;
}

uint64_t sub_100050394(uint64_t a1)
{
  v2 = *(a1 + 808);
  v3 = *(a1 + 384);
  v4 = *(a1 + 804);
  result = *(*(v3 + 1792) + 2 * v4);
  if (result == 0x4000)
  {
    result = sub_100012668(v3, v4);
  }

  v6 = *(a1 + 816);
  v9 = 0;
  if (v2 > 0)
  {
    v7 = (result - *(a1 + 994));
    do
    {
      while (1)
      {
        v8 = v6[1] + v7;
        if (v8 < 0x4000)
        {
          break;
        }

        result = j__memmove(v6, v6 + 2, 4 * (--v2 - v9));
        if (v9 >= v2)
        {
          return result;
        }
      }

      v6[1] = v8;
      if (v8 < *(a1 + 996))
      {
        *(a1 + 996) = v8;
        if (v8 < *(a1 + 544))
        {
          *(a1 + 544) = v8;
        }
      }

      v6 += 2;
      ++v9;
    }

    while (v9 < v2);
  }

  return result;
}

uint64_t sub_1000504B0(uint64_t result, int a2, unsigned int a3)
{
  v3 = *(result + 808);
  v4 = v3;
  if (*(result + 996) > a2)
  {
    *(result + 996) = a2;
    if (*(result + 544) > a2)
    {
      *(result + 544) = a2;
    }
  }

  v5 = *(result + 816);
  if (v3 >= *(result + 812))
  {
    if (v3 < 1)
    {
      v9 = 0;
      v13 = -1;
      if (a2 >= 0)
      {
LABEL_19:
        if (v9 != a2 || *(v5 + 4 * v13) <= a3)
        {
          return result;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = (v5 + 2);
      v11 = -1;
      do
      {
        v12 = *v10;
        if (*(v10 - 1) == a3)
        {
          if (v12 > a2)
          {
            *v10 = a2;
          }

          return result;
        }

        if (v12 > v9)
        {
          v9 = *v10;
          v11 = v8;
        }

        ++v8;
        v10 += 2;
      }

      while (v3 != v8);
      v13 = v11;
      if (a2 >= v9)
      {
        goto LABEL_19;
      }
    }

    v14 = (v5 + 4 * v13);
    v14[1] = a2;
    *v14 = a3;
    return result;
  }

  if (v3 < 1)
  {
LABEL_9:
    v7 = (v5 + 4 * v4);
    *v7 = a3;
    v7[1] = a2;
    ++*(result + 808);
  }

  else
  {
    v6 = (v5 + 2);
    while (*(v6 - 1) != a3)
    {
      v6 += 2;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    if (*v6 > a2)
    {
      *v6 = a2;
    }
  }

  return result;
}

uint64_t sub_1000505E0(uint64_t a1)
{
  v2 = *(a1 + 656);
  v3 = sub_100060940(v2);
  v4 = sub_100060948(v2);
  if (sub_1000BABBC(*(a1 + 376)) <= 0 && *(a1 + 696) < 1)
  {
    return 1;
  }

  if (v4)
  {
    v5 = *(a1 + 696);
    if (v5 < 1)
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 688);
    v7 = *(a1 + 744);
    if (*(a1 + 708))
    {
      result = sub_10005F598(v2, v6, v5, v7, 0);
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    result = sub_10005FBA4(v2, v6, v5, v7, 0);
    if (result)
    {
LABEL_11:
      *(a1 + 696) = 0;
      if (*(a1 + 744))
      {
        v9 = *(a1 + 744);
      }

      else
      {
        v9 = 65533;
      }

      *(a1 + 704) = sub_10005F384(*(a1 + 656), v9);
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 5360))
        {
          sub_1000603D4(v2, (v3 - 1), *(a1 + 528));
        }
      }

      return 1;
    }
  }

  else
  {
    result = sub_1000506E8(a1);
    ++v3;
    if (result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1000506E8(uint64_t a1)
{
  v2 = *(a1 + 656);
  v3 = sub_100060940(v2);
  v4 = sub_1000BABBC(*(a1 + 376));
  result = sub_1000C0034(2 * v4);
  if (result)
  {
    v6 = result;
    v9 = 0;
    sub_1000BABC4(*(a1 + 376), result, v4);
    sub_10005DB2C(*(a1 + 376), *(a1 + 384), v6, v4, 0, 0, 0);
    v7 = sub_10005DEA4(*(a1 + 656), *(a1 + 376), *(a1 + 384), v4, v6, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF, 0, *(a1 + 744), &_mh_execute_header, &_mh_execute_header >> 32, &v9, 0);
    sub_1000BFEC4(v6);
    if (v7)
    {
      if (*(a1 + 744))
      {
        v8 = *(a1 + 744);
      }

      else
      {
        v8 = 65533;
      }

      *(a1 + 704) = sub_10005F384(v2, v8);
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 5360))
        {
          sub_1000603D4(v2, v3, *(a1 + 528));
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100050834(uint64_t a1)
{
  v2 = *(a1 + 656);
  result = sub_100060940(v2);
  if (*(a1 + 376))
  {
    v4 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v5 = result;
      if (*(qword_1001065A8 + 3284))
      {
        *(a1 + 580) = -1;
        *(a1 + 584) = 0;
      }

      if (*(v4 + 5264))
      {
        v6 = *(a1 + 584);
        if (v6)
        {
          if (result >= 1)
          {
            v7 = 0;
            v8 = *(a1 + 2 * v6 + 578);
            do
            {
              result = sub_1000604CC(*(a1 + 376), v2, v7++, *(a1 + 528), v8);
            }

            while (v5 != v7);
          }
        }

        else
        {
          v9 = *(a1 + 528);

          return sub_10006016C(v2, v9);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100050914(uint64_t a1, int a2)
{
  LOWORD(v3) = *(a1 + 994);
  if ((v3 + *(a1 + 548)) >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = (v3 + *(a1 + 548));
  }

  v5 = *(a1 + 752);
  if (v5 <= 0x3FFFFFFF)
  {
    v6 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v6 = *(qword_1001065A8 + 5224);
    }

    v4 -= (*(a1 + 568) + *(a1 + 544) - (v5 + v6)) & ~((*(a1 + 568) + *(a1 + 544) - (v5 + v6)) >> 31);
    *(a1 + 752) = 0x40000000;
  }

  v3 = v3;
  v7 = v3 & ~(v3 >> 31);
  if (v7 > v4)
  {
    return v4;
  }

  v9 = sub_10005B794(*(a1 + 736), *(a1 + 536), v3 & ~(v3 >> 31), v4);
  if (qword_1001065A8)
  {
    v10 = *(qword_1001065A8 + 3200);
    v11 = v10 + v7;
    v12 = v7 + v10;
    if (v11 <= v9)
    {
      LOWORD(v4) = v9;
    }

    else
    {
      LOWORD(v4) = v12;
    }

    v13 = *(a1 + 996);
    v14 = *(a1 + 996);
    if (*(qword_1001065A8 + 3248) >= *(a1 + 548))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v7 <= v9)
    {
      LOWORD(v4) = v9;
    }

    else
    {
      LOWORD(v4) = v7;
    }

    v13 = *(a1 + 996);
    v14 = *(a1 + 996);
    if (*(a1 + 548) <= 0)
    {
      goto LABEL_26;
    }
  }

  if (v14 != 0x4000)
  {
    v15 = *(a1 + 994);
    if (qword_1001065A8)
    {
      v16 = *(qword_1001065A8 + 3248) + v15;
      v17 = *(qword_1001065A8 + 3264);
    }

    else
    {
      v17 = 0.0;
      LOWORD(v16) = *(a1 + 994);
    }

    v18 = v17 * (v13 - v15);
    if ((v18 + v16) < v4)
    {
      LOWORD(v4) = v18 + v16;
    }
  }

LABEL_26:
  if (!qword_1001065A8 || *(a1 + 562) + v14 > *(a1 + 546) || *(qword_1001065A8 + 3256) < 1 || !sub_10000348C(*(a1 + 384)))
  {
    return v4;
  }

  v19 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v19 = *(qword_1001065A8 + 3256);
  }

  v20 = (v4 - v19);
  if (v20 <= *(a1 + 994))
  {
    return *(a1 + 994);
  }

  else
  {
    return v20;
  }
}

BOOL sub_100050AC8(_DWORD *a1)
{
  if (sub_1000B1580(a1 + 189))
  {
    return 1;
  }

  if (a1[226] && a1[130] == 1 && a1[148])
  {
    return 1;
  }

  return sub_100036B28(a1);
}

uint64_t sub_100050B40(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = *(result + 568) + *(result + 544);
  v4 = *(result + 996);
  if (v4 == 0x4000)
  {
    *a3 = 0x40000000;
    v5 = *(result + 712);
    if (v5 != 0x4000)
    {
LABEL_3:
      *a4 = *(result + 568) + v5;
      return result;
    }
  }

  else
  {
    *a3 = *(result + 568) + v4;
    v5 = *(result + 712);
    if (v5 != 0x4000)
    {
      goto LABEL_3;
    }
  }

  *a4 = 0x40000000;
  return result;
}

uint64_t sub_100050BA4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 656);
  result = sub_1000505E0(a1);
  if (result)
  {

    return sub_100060AF0(v5, a2, a3);
  }

  return result;
}

void *sub_100050C08(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 656);
  v10 = sub_100060D0C(v9, a2, a3, a4, a5, a6, a7, a8);
  if (sub_100060948(v9) >= 1)
  {
    if (*(a1 + 744))
    {
      v11 = *(a1 + 744);
    }

    else
    {
      v11 = 65533;
    }

    *(a1 + 704) = sub_10005F384(v9, v11);
  }

  return v10;
}

uint64_t sub_100050C84(unsigned int *a1, int a2)
{
  result = a1[131];
  if (result == 1)
  {
    v4 = sub_1000B162C(a1 + 189, a2, 0);
    result = 1;
    if (v4 == 2)
    {
      if (a1[202])
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100050CE4(uint64_t a1)
{
  if ((*(a1 + 524) - 3) >= 2)
  {
    return (*(a1 + 936))();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100050D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5 < 1)
  {
    LOWORD(v12) = 0;
  }

  else
  {
    v8 = a7;
    v9 = a6;
    v10 = a5;
    v12 = sub_100036C94(a1, a2, a3, a4, a5, a6, a7, a8) + *(a1 + 896) + (a5 - 1) * *(a1 + 562);
    if (*(a1 + 520) == 1)
    {
      LOWORD(v12) = *(a1 + 806) + v12;
    }

    v13 = *(a1 + 564);
    if (v13)
    {
      v14 = *(a1 + 376);
      v31 = 2 * sub_1000B2164(v14);
      v22 = sub_1000C9F54(v31 + 2, v15, v16, v17, v18, v19, v20, v21);
      v23 = 0;
      v24 = v10;
      do
      {
        v25 = *v9++;
        v26 = sub_1000BA830(v14, v25);
        v23 += sub_1000B811C(v14, v26, v22);
        --v24;
      }

      while (v24);
      sub_1000CA03C(v22, v31 + 2);
      LOWORD(v12) = v12 + v13 * v23;
    }

    if (v8 && v10 != 1)
    {
      if (v10 <= 2)
      {
        v27 = 2;
      }

      else
      {
        v27 = v10;
      }

      v28 = (v27 - 1);
      do
      {
        if (*v8++)
        {
          LOWORD(v12) = *(a1 + 560) + v12;
        }

        --v28;
      }

      while (v28);
    }
  }

  return v12;
}

double sub_100050E80(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 1)
  {
    v2 = 1;
  }

  v3 = qword_1001065A8;
  if (qword_1001065A8)
  {
    a1[225] = *(qword_1001065A8 + 3096) + *(qword_1001065A8 + 3104) * v2;
    a1[224] = *(v3 + 3048) + *(v3 + 3056) * v2;
    a1[229] = *(v3 + 3064) + *(v3 + 3072) * v2;
  }

  else
  {
    result = 0.0;
    *(a1 + 112) = 0;
    a1[229] = 0;
  }

  return result;
}

uint64_t sub_100050EEC(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 608))
  {
    return 1;
  }

  if (!*(a1 + 700))
  {
    return 0;
  }

  v5 = *(a1 + 656);
  if (sub_100060948(v5))
  {
    if (*(a1 + 744))
    {
      v6 = *(a1 + 744);
    }

    else
    {
      v6 = 65533;
    }

    v7 = sub_1000B2C18(*(a1 + 376), a2);
    if (v7 > *(a1 + 700))
    {
      return 0;
    }

    v8 = v7;
    result = sub_1000C0034(2 * v7);
    if (result)
    {
      v9 = result;
      sub_1000B28E4(*(a1 + 376), a2, result, v8);
      v10 = *(a1 + 696);
      if (!*(a1 + 708))
      {
        if (v10 >= 1)
        {
          result = sub_10005FBA4(v5, *(a1 + 688), v10, *(a1 + 744), 0);
          if (!result)
          {
            return result;
          }

          *(a1 + 704) = sub_10005F384(v5, v6);
        }

        v10 = 0;
        *(a1 + 696) = 0;
        *(a1 + 708) = 1;
      }

      if (v10 + v8 <= *(a1 + 700))
      {
        goto LABEL_23;
      }

      result = sub_10005F598(v5, *(a1 + 688), v10, *(a1 + 744), 0);
      if (result)
      {
        *(a1 + 696) = 0;
        *(a1 + 704) = sub_10005F384(v5, v6);
LABEL_23:
        v24 = 0;
        if (v8 < 1)
        {
          v15 = *(a1 + 704);
          v16 = v15;
          if (v15 < 0)
          {
LABEL_27:
            v17 = *(a1 + 696);
            if (v17 >= 1)
            {
              v18 = sub_10005F598(v5, *(a1 + 688), v17, *(a1 + 744), 0);
              v15 = sub_10005F384(v5, v6);
              *(a1 + 704) = v15;
              if (!v18)
              {
                return 0;
              }
            }

            if (v8 < 1)
            {
              v19 = 0;
            }

            else
            {
              v19 = 0;
              v20 = v8;
              v21 = v9;
              do
              {
                v22 = *v21++;
                sub_10005F398(v5, v22, *(a1 + 744), &v24);
                v19 += v24;
                --v20;
              }

              while (v20);
              v15 = *(a1 + 704);
            }

            if (v19 > v15)
            {
              *(a1 + 696) = 0;
              v23 = 0;
              *(a1 + 704) = sub_10005F384(v5, v6);
LABEL_40:
              sub_1000BFEC4(v9);
              return v23;
            }

            memcpy(*(a1 + 688), v9, 2 * v8);
            *(a1 + 696) = v8;
            *(a1 + 704) -= v19;
LABEL_39:
            v23 = 1;
            goto LABEL_40;
          }
        }

        else
        {
          v11 = 0;
          v12 = v8;
          v13 = v9;
          do
          {
            v14 = *v13++;
            sub_10005F398(v5, v14, *(a1 + 744), &v24);
            v11 += v24;
            --v12;
          }

          while (v12);
          v15 = *(a1 + 704);
          v16 = v15 - v11;
          if (v15 < v11)
          {
            goto LABEL_27;
          }
        }

        *(a1 + 704) = v16;
        memcpy((*(a1 + 688) + 2 * *(a1 + 696)), v9, 2 * v8);
        *(a1 + 696) += v8;
        goto LABEL_39;
      }
    }
  }

  else
  {

    return sub_1000506E8(a1);
  }

  return result;
}

uint64_t sub_1000511C4(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 608))
  {
    return 1;
  }

  if (!*(a1 + 700))
  {
    return 0;
  }

  v5 = *(a1 + 656);
  if (sub_100060948(v5))
  {
    v6 = *(a1 + 744);
    if (v6)
    {
      v7 = *(a1 + 744);
    }

    else
    {
      v7 = 65533;
    }

    v8 = *(a1 + 696);
    if (*(a1 + 708))
    {
      v9 = a2;
      if (v8 < *(a1 + 700))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v8 >= 1)
      {
        result = sub_10005FBA4(v5, *(a1 + 688), v8, *(a1 + 744), 0);
        if (!result)
        {
          return result;
        }

        *(a1 + 704) = sub_10005F384(v5, v7);
        v6 = *(a1 + 744);
      }

      v8 = 0;
      *(a1 + 696) = 0;
      *(a1 + 708) = 1;
      v9 = a2;
      if (*(a1 + 700) > 0)
      {
        goto LABEL_21;
      }
    }

    result = sub_10005F598(v5, *(a1 + 688), v8, v6, 0);
    if (!result)
    {
      return result;
    }

    *(a1 + 696) = 0;
    *(a1 + 704) = sub_10005F384(v5, v7);
    v6 = *(a1 + 744);
    v9 = a2;
LABEL_21:
    v12 = 0;
    sub_10005F398(v5, v9, v6, &v12);
    if (*(a1 + 704) >= v12)
    {
      *(*(a1 + 688) + 2 * (*(a1 + 696))++) = a2;
      *(a1 + 704) -= v12;
      return 1;
    }

    v10 = *(a1 + 696);
    if (v10 < 1 || (v11 = sub_10005F598(v5, *(a1 + 688), v10, *(a1 + 744), 0), *(a1 + 704) = sub_10005F384(v5, v7), v11))
    {
      result = sub_10005F398(v5, a2, *(a1 + 744), &v12);
      if (result)
      {
        **(a1 + 688) = a2;
        *(a1 + 696) = 1;
        *(a1 + 704) -= v12;
      }

      else
      {
        *(a1 + 696) = 0;
      }

      return result;
    }

    return 0;
  }

  return sub_1000506E8(a1);
}

uint64_t sub_100051418(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 608))
  {
    return 1;
  }

  LODWORD(v5) = sub_1000B2C18(*(a1 + 376), a2);
  result = sub_1000C0034(2 * v5);
  if (result)
  {
    v6 = result;
    sub_1000B28E4(*(a1 + 376), a2, result, v5);
    if (v5 < 1)
    {
LABEL_8:
      v9 = 1;
    }

    else
    {
      v5 = v5;
      v7 = v6;
      while (1)
      {
        v8 = *v7++;
        if (!sub_1000514C8(a1, v8))
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_8;
        }
      }

      v9 = 0;
    }

    sub_1000BFEC4(v6);
    return v9;
  }

  return result;
}

uint64_t sub_1000514C8(uint64_t a1, __int16 a2)
{
  if (*(a1 + 608))
  {
    return 1;
  }

  v3 = *(a1 + 744);
  if (v3)
  {
    v4 = *(a1 + 744);
  }

  else
  {
    v4 = 65533;
  }

  v5 = *(a1 + 700);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 656);
  v7 = *(a1 + 696);
  if (*(a1 + 708))
  {
    if (v7 >= 1)
    {
      v8 = a2;
      v9 = a1;
      result = sub_10005F598(*(a1 + 656), *(a1 + 688), v7, v3, 0);
      if (!result)
      {
        return result;
      }

      v10 = sub_10005F384(v6, v4);
      a1 = v9;
      *(v9 + 704) = v10;
      v5 = *(v9 + 700);
      a2 = v8;
    }

    v7 = 0;
    *(a1 + 696) = 0;
    *(a1 + 708) = 0;
  }

  if (v7 >= v5)
  {
    v11 = a2;
    v12 = a1;
    result = sub_10005FBA4(v6, *(a1 + 688), v7, *(a1 + 744), 0);
    if (!result)
    {
      return result;
    }

    *(v12 + 696) = 0;
    v13 = sub_10005F384(v6, v4);
    a1 = v12;
    *(v12 + 704) = v13;
    v7 = *(v12 + 696);
    a2 = v11;
  }

  *(*(a1 + 688) + 2 * v7) = a2;
  ++*(a1 + 696);
  *(a1 + 524) = 4;
  return 1;
}

BOOL sub_1000515FC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = sub_1000B1590((a1 + 756));
  if (result)
  {
    v6 = *(a1 + 808);
    if (v6)
    {
      if (v6 < 1)
      {
        v9 = -1;
      }

      else
      {
        v7 = *(a1 + 816);
        v8 = 0x4000;
        v9 = -1;
        do
        {
          if (v7[1] < v8)
          {
            v9 = *v7;
            v8 = v7[1];
          }

          --v6;
        }

        while (v6);
      }

      *a3 = sub_1000BA7FC(*(a1 + 376), v9);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000516C0(uint64_t a1, int a2, _WORD *a3, uint64_t a4, _DWORD *a5)
{
  v6 = *(a1 + 824);
  v7 = *(a1 + 816);
  v8 = *(a1 + 808);
  if (v6)
  {
    goto LABEL_30;
  }

  v9 = a2;
  v10 = a5;
  v11 = a3;
  qsort(v7, v8, 4uLL, sub_100051C84);
  v12 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    v7 = *(a1 + 816);
    v18 = v7[1];
    LODWORD(v19) = 1;
    a3 = v11;
    a5 = v10;
    a2 = v9;
    goto LABEL_22;
  }

  if (!*(qword_1001065A8 + 3228) || !*(a1 + 376))
  {
    goto LABEL_19;
  }

  if (*(a1 + 808) < 1)
  {
    *(a1 + 808) = 0;
LABEL_19:
    v7 = *(a1 + 816);
    v18 = v7[1];
    a3 = v11;
    a5 = v10;
    a2 = v9;
    goto LABEL_20;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = sub_1000BA7F4(*(a1 + 376), *(*(a1 + 816) + 4 * v13), 0);
    if (v14 < 1)
    {
LABEL_13:
      if (v13 != v14)
      {
        *(*(a1 + 816) + 4 * v14) = *(*(a1 + 816) + 4 * v13);
      }

      ++v14;
    }

    else
    {
      v16 = v15;
      v17 = 0;
      while (v16 != sub_1000BA7F4(*(a1 + 376), *(*(a1 + 816) + v17), 0))
      {
        v17 += 4;
        if (4 * v14 == v17)
        {
          goto LABEL_13;
        }
      }
    }

    ++v13;
  }

  while (v13 < *(a1 + 808));
  v12 = qword_1001065A8;
  *(a1 + 808) = v14;
  v7 = *(a1 + 816);
  v18 = v7[1];
  a3 = v11;
  a5 = v10;
  a2 = v9;
  if (!v12)
  {
    LODWORD(v19) = 1;
    goto LABEL_22;
  }

LABEL_20:
  v19 = *(v12 + 1144);
  v20 = v19 < 2;
  LODWORD(v19) = v19;
  if (v20)
  {
    LODWORD(v19) = 1;
  }

LABEL_22:
  v21 = v19 + v18;
  if (v21 >= 0x4000)
  {
    v22 = 0x4000;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a1 + 808);
  v24 = 4 * v23 - 2;
  v25 = *(a1 + 808);
  while (1)
  {
    v26 = __OFSUB__(v25--, 1);
    if (v25 < 0 != v26)
    {
      break;
    }

    v27 = *(v7 + v24);
    v24 -= 4;
    if (v22 > v27)
    {
      LODWORD(v23) = v25 + 1;
      *(a1 + 808) = v25 + 1;
      break;
    }
  }

  *(a1 + 824) = 1;
  v8 = v23;
LABEL_30:
  v28 = 0;
  *a5 = 0x40000000;
  if ((a2 & 0x80000000) == 0 && v8 > a2)
  {
    v29 = &v7[2 * a2];
    *a5 = *(a1 + 568) + v29[1];
    *a3 = *v29;
    return 1;
  }

  return v28;
}

uint64_t sub_1000518F4(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, signed int a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v17 = *(a1 + 376);
  if (a7)
  {
    bzero(a7, a5);
  }

  v18 = 4 * a5;
  if (a8)
  {
    bzero(a8, v18);
  }

  if (a9)
  {
    bzero(a9, v18);
  }

  if (a10)
  {
    bzero(a10, a5);
  }

  if (a2 < 1)
  {
    return 0;
  }

  v26 = 0;
  v19 = 2 * a2;
  v20 = a2;
  if (v17)
  {
    v21 = 0;
    v22 = 0;
    v23 = (a6 + 4);
    while (sub_1000516C0(a1, v22, &v26, a4, a3) && (v21 + 2) < a5)
    {
      ++v22;
      *(v23 - 1) = sub_1000BA7FC(v17, v26);
      *v23 = -1;
      ++a3;
      v21 += 2;
      v23 += 2;
      if (v20 == v22)
      {
        v17 = v20;
        v21 = v19;
        goto LABEL_23;
      }
    }

    v17 = v22;
  }

  else
  {
    v21 = 0;
    v24 = (a6 + 4);
    while (sub_1000516C0(a1, v17, &v26, a4, a3) && (v21 + 2) < a5)
    {
      ++v17;
      *(v24 - 1) = v26;
      *v24 = -1;
      ++a3;
      v21 += 2;
      v24 += 2;
      if (a2 == v17)
      {
        v17 = a2;
        v21 = 2 * a2;
        break;
      }
    }
  }

LABEL_23:
  if (a11 && v21)
  {
    memset(a11, 255, 2 * v21);
  }

  return v17;
}

uint64_t sub_100051AAC(uint64_t a1, int a2, char *a3)
{
  v6 = *(a1 + 848);
  if ((*(sub_100060958(*(a1 + 656), *(a1 + 672)) + 4 * *v6) & 0x7FFF) != 0 && (v7 = *(a1 + 528), v7 >= 2))
  {
    v8 = 0;
    v9 = v6[1];
    v10 = (v6 + 2);
    for (i = 1; i != v7; ++i)
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 < v9)
      {
        v8 = i;
        v9 = v12;
      }
    }

    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 472);
  v16 = v6[v14 + 3];

  return sub_1000D05B0(v15, v16, a2, a3);
}

uint64_t sub_100051B88(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (qword_1001065A8)
  {
    result = sub_1000C0034(*(qword_1001065A8 + 4008) << 7);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_1000C0034(0);
    if (!result)
    {
      return result;
    }
  }

  v18 = result;
  if (qword_1001065A8)
  {
    v19 = *(qword_1001065A8 + 4008);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1000D06D8(*(a1 + 472), result, v19, 0xFFFFu, 0, 0);
  if (v20)
  {
    sub_100020474(v18, *(a1 + 376), &v20, a2, a3, a5, a6, a7, a11);
  }

  *(a1 + 824) = 1;
  sub_1000BFEC4(v18);
  return v20;
}

uint64_t sub_100051C84(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1[1] < a2[1])
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = a1[1] != a2[1];
  }

  if (v2)
  {
    return v2;
  }

  v4 = *a1;
  v5 = *a2;
  v6 = v4 >= v5;
  LODWORD(v7) = v4 != v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100051CC8(uint64_t a1)
{
  v2 = sub_100035FB0(a1);
  v3 = sub_1000BD5C4(*(a1 + 520), v2);
  v4 = sub_1000BD5C4(*(a1 + 524), v3);
  v5 = sub_1000BD5C4(*(a1 + 528), v4);
  v6 = sub_1000BD5C4(*(a1 + 532), v5);
  v7 = sub_1000BD5C4(*(a1 + 536), v6);
  v8 = sub_1000BD5C4(*(a1 + 540), v7);
  v9 = sub_1000BD598(*(a1 + 544), v8);
  v10 = sub_1000BD598(*(a1 + 546), v9);
  v11 = sub_1000BD598(*(a1 + 548), v10);
  v12 = sub_1000BD598(*(a1 + 550), v11);
  v13 = sub_1000BD598(*(a1 + 552), v12);
  v14 = sub_1000BD598(*(a1 + 554), v13);
  v15 = sub_1000BD598(*(a1 + 556), v14);
  v16 = sub_1000BD598(*(a1 + 558), v15);
  v17 = sub_1000BD598(*(a1 + 560), v16);
  v18 = sub_1000BD598(*(a1 + 562), v17);
  v19 = sub_1000BD598(*(a1 + 564), v18);
  v20 = sub_1000BD5C4(*(a1 + 568), v19);
  v21 = sub_1000BD598(*(a1 + 572), v20);
  if (qword_1001065A8 && *(qword_1001065A8 + 1068))
  {
    v21 = sub_1000BD5C4(*(a1 + 576), v21);
  }

  v22 = sub_1000BD7F4((a1 + 580), 2, *(a1 + 584), v21);
  v23 = sub_1000BD5C4(*(a1 + 584), v22);
  v24 = sub_1000BD5C4(*(a1 + 588), v23);
  v25 = sub_1000BD5C4(*(a1 + 592), v24);
  v26 = sub_1000BD5C4(*(a1 + 596), v25);
  v27 = sub_1000BD5C4(*(a1 + 600), v26);
  v28 = sub_1000BD5C4(*(a1 + 604), v27);
  v29 = sub_1000BD5C4(*(a1 + 608), v28);
  v30 = *(a1 + 616);
  v31 = sub_100001108(*(a1 + 384));
  v32 = sub_1000BD7F4(v30, 1, v31, v29);
  v33 = *(a1 + 624);
  if (v33)
  {
    if (qword_1001065A8)
    {
      v34 = *(qword_1001065A8 + 584);
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_100001108(*(a1 + 384));
    LODWORD(v32) = sub_1000BD7F4(v33, 1, v35 * v34, v32);
  }

  v36 = sub_1000BD598(*(a1 + 632), v32);
  v37 = sub_1000BD598(*(a1 + 634), v36);
  v38 = sub_1000BD5C4(*(a1 + 648), v37);
  v39 = sub_1000BD5C4(*(a1 + 652), v38);
  v40 = sub_10005FF28(*(a1 + 656));
  v41 = sub_1000BD5C4(v40, v39);
  v42 = sub_1000BD5C4(*(a1 + 668), v41);
  v43 = sub_1000BD5C4(*(a1 + 672), v42);
  v44 = sub_1000BD7F4(*(a1 + 688), 2, *(a1 + 696), v43);
  v45 = sub_1000BD5C4(*(a1 + 696), v44);
  v46 = sub_1000BD5C4(*(a1 + 700), v45);
  v47 = sub_1000BD5C4(*(a1 + 704), v46);
  v48 = sub_1000BD5C4(*(a1 + 708), v47);
  v49 = sub_1000BD598(*(a1 + 712), v48);
  v50 = sub_1000BD598(*(a1 + 714), v49);
  v51 = sub_1000BD598(*(a1 + 716), v50);
  v52 = sub_1000BD598(*(a1 + 718), v51);
  v53 = sub_1000BD598(*(a1 + 720), v52);
  v54 = sub_1000BD598(*(a1 + 722), v53);
  v55 = *(a1 + 728);
  if (v55)
  {
    v56 = sub_10009A8C8(v55);
    v54 = sub_1000BD5C4(v56, v54);
  }

  v57 = sub_10005B808(*(a1 + 736));
  v58 = sub_1000BD5C4(v57, v54);
  v59 = sub_1000BD5C4(*(a1 + 748), v58);
  v60 = sub_1000BD5C4(*(a1 + 756), v59);
  v61 = sub_1000BD5C4(*(a1 + 760), v60);
  v62 = sub_1000BD5C4(*(a1 + 764), v61);
  v63 = sub_1000BD5C4(*(a1 + 800), v62);
  v64 = sub_1000BD598(*(a1 + 804), v63);
  v65 = sub_1000BD598(*(a1 + 806), v64);
  v66 = *(a1 + 832);
  v67 = *(a1 + 532);
  v68 = sub_100060958(*(a1 + 656), 0);
  if (*(a1 + 532) >= 1)
  {
    v69 = v68;
    v70 = 0;
    v71 = 0;
    v72 = (v66 + 12 * v67);
    v73 = v72 - 5;
    v74 = v72;
    while (1)
    {
      v76 = *(v74 - 6);
      v74 -= 6;
      v77 = sub_1000BD598(v76, v65);
      if ((*(v69 + 4 * *v74) & 0x7FFF) == 0)
      {
        break;
      }

      v78 = *(a1 + 528);
      if (v78 >= 1)
      {
        goto LABEL_21;
      }

LABEL_13:
      v75 = sub_1000BD57C(*(v72 - 2), v77);
      v65 = sub_1000BD57C(*(v72 - 1), v75);
      if (*(v72 - 6))
      {
        ++v71;
        v73 -= 6;
        v72 = v74;
        if (v71 >= *(a1 + 532))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v69 = sub_100060958(*(a1 + 656), ++v70);
        ++v71;
        v73 -= 6;
        v72 = v74;
        if (v71 >= *(a1 + 532))
        {
          goto LABEL_25;
        }
      }
    }

    v78 = 1;
LABEL_21:
    v79 = v73;
    do
    {
      v77 = sub_1000BD598(*v79, v77);
      if (*v79 != 0x4000)
      {
        v77 = sub_1000BD598(v79[2], v77);
      }

      ++v79;
      --v78;
    }

    while (v78);
    goto LABEL_13;
  }

LABEL_25:
  v80 = sub_1000BD5C4(*(a1 + 880), v65);
  v81 = sub_1000BD5C4(-1431655765 * ((*(a1 + 848) - *(a1 + 832)) >> 2), v80);
  if (qword_1001065A8 && *(qword_1001065A8 + 1068))
  {
    v82 = sub_1000BD598(*(a1 + 992), v81);
    v83 = sub_1000BD598(*(a1 + 994), v82);
    v81 = sub_1000BD598(*(a1 + 996), v83);
  }

  v84 = sub_1000CF6EC(*(a1 + 472));

  return sub_1000BD5C4(v84, v81);
}

unsigned __int16 *sub_1000521F4(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5, unsigned int a6, int a7)
{
  result = 0;
  v9 = 4;
  if (a6 > 5 || ((1 << a6) & 0x26) == 0)
  {
    goto LABEL_29;
  }

  v15 = *(a1 + 376);
  *(a1 + 520) = a6;
  *(a1 + 544) = 0;
  *(a1 + 808) = 0;
  *(a1 + 572) = -65536;
  *(a1 + 1064) = 0;
  *(a1 + 848) = 0;
  *(a1 + 592) = 0;
  *(a1 + 648) = 1;
  *(a1 + 752) = 0x40000000;
  if (qword_1001065A8)
  {
    v16 = *(qword_1001065A8 + 3192);
    v17 = *(qword_1001065A8 + 1440);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_1000B1390(a1 + 756, *(a1 + 432), v16, *(a1 + 912), v17, 0);
  v18 = *(a1 + 728);
  v19 = qword_1001065A8;
  if (!v18)
  {
LABEL_14:
    if (v19)
    {
      goto LABEL_15;
    }

LABEL_27:
    result = 0;
    v9 = 4;
    v24 = 564;
LABEL_28:
    *(a1 + v24) = 0;
    goto LABEL_29;
  }

  if (qword_1001065A8)
  {
    result = sub_100099BA4(v18, *(qword_1001065A8 + 4488), *(qword_1001065A8 + 4496));
    if (!result)
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = sub_100099BA4(v18, 0, 0);
    if (!result)
    {
LABEL_26:
      v9 = 4;
LABEL_29:
      *(a1 + 524) = v9;
      return result;
    }
  }

  v19 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_27;
  }

  if (*(qword_1001065A8 + 4464))
  {
    sub_1000998FC(*(a1 + 728));
    v19 = qword_1001065A8;
    goto LABEL_14;
  }

LABEL_15:
  *(a1 + 564) = *(v19 + 3208);
  if (!*(v19 + 4144) || !*(v19 + 4136) || (v20 = *(v19 + 3288), v20 >= *(v19 + 3000)) || (*(a1 + 562) = v20, (v21 = *(v19 + 2976)) == 0))
  {
    result = 0;
    goto LABEL_26;
  }

  *(a1 + 536) = v21;
  *(a1 + 548) = *(v19 + 3000);
  v22 = *(v19 + 3016);
  *(a1 + 552) = v22;
  *(a1 + 550) = *(v19 + 3008);
  *(a1 + 824) = 0;
  if (*(v19 + 3240) == 5000)
  {
    *(a1 + 554) = v22;
  }

  *(a1 + 600) = 0x100000001;
  if (a3 < 1)
  {
    *(a1 + 584) = 0;
    v25 = -1;
  }

  else
  {
    if (a3 != 1 && *(v19 + 3280))
    {
      *(a1 + 584) = 2;
      v23 = a2 + 2 * a3;
      *(a1 + 580) = *(v23 - 4);
      *(a1 + 582) = *(v23 - 2);
      goto LABEL_34;
    }

    *(a1 + 584) = 1;
    v25 = *(a2 + 2 * a3 - 2);
  }

  *(a1 + 580) = v25;
LABEL_34:
  sub_100050834(a1);
  if (!qword_1001065A8)
  {
    goto LABEL_71;
  }

  if (!*(qword_1001065A8 + 1776))
  {
    goto LABEL_42;
  }

  v51 = a2;
  v52 = a7;
  v53 = v15;
  if (a5 < 1)
  {
    v27 = -1;
  }

  else
  {
    v26 = a5;
    v27 = -1;
    v28 = a4;
    do
    {
      v29 = *v28++;
      v30 = sub_100023A50(v29);
      v27 = sub_1000BD6C8(v30, 4, v27);
      --v26;
    }

    while (v26);
  }

  v15 = v53;
  if (v27 == *(a1 + 828))
  {
    goto LABEL_42;
  }

  v32 = sub_100022D0C(a4, a5, 0);
  v33 = v32;
  if (v32 <= *(a1 + 1032))
  {
    v34 = *(a1 + 1024);
  }

  else
  {
    result = sub_1000C0034(2 * v32);
    if (!result)
    {
      return result;
    }

    v34 = result;
    sub_1000BFEC4(*(a1 + 1024));
    *(a1 + 1024) = v34;
    *(a1 + 1032) = v33;
  }

  v35 = sub_100022D0C(a4, a5, v34);
  v36 = 3 * v35 / 2;
  if (*(a1 + 1048) < v36)
  {
    result = sub_1000C0034(2 * v36);
    if (!result)
    {
      return result;
    }

    v37 = result;
    sub_1000BFEC4(*(a1 + 1040));
    *(a1 + 1040) = v37;
    *(a1 + 1048) = v36;
  }

  v38 = sub_1000B2074(v53);
  if (v35 < 1)
  {
    v41 = 0;
LABEL_64:
    v15 = v53;
    result = sub_10005EC84(*(a1 + 656), *(a1 + 1040), v41, v53, *(a1 + 384), 0, 0, 1, 0, *(a1 + 728));
    if (result)
    {
      *(a1 + 828) = v27;
      if (*(a1 + 744))
      {
        v46 = *(a1 + 744);
      }

      else
      {
        v46 = 65533;
      }

      *(a1 + 704) = sub_10005F384(*(a1 + 656), v46);
      a7 = v52;
      a2 = v51;
      if (!qword_1001065A8)
      {
        goto LABEL_71;
      }

      if (*(qword_1001065A8 + 5360))
      {
        sub_10006016C(*(a1 + 656), *(a1 + 528));
      }

LABEL_42:
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 1776))
        {
          v31 = 1;
        }

        else
        {
          v31 = v15 == 0;
        }

        if (v31)
        {
          goto LABEL_73;
        }

LABEL_72:
        if (!*(a1 + 608))
        {
          v47 = sub_1000505E0(a1);
          goto LABEL_75;
        }

LABEL_73:
        v47 = 1;
LABEL_75:
        *(a1 + 664) = sub_100060950(*(a1 + 656));
        v48 = sub_100060940(*(a1 + 656));
        v49 = *(a1 + 832);
        *(a1 + 532) = 0;
        if (v48 >= 1)
        {
          v50 = v49 + 11;
          do
          {
            *(v50 - 11) = 0;
            *(v50 - 5) = 0;
            *(v50 - 1) = 0;
            ++*(a1 + 532);
            v50 += 12;
            --v48;
          }

          while (v48);
        }

        *(a1 + 712) = 1073758208;
        sub_1000D02A8(*(a1 + 472), a2, a3, a7);
        *(a1 + 568) = 0;
        v9 = 1;
        v24 = 996;
        result = v47;
        goto LABEL_28;
      }

LABEL_71:
      if (!v15)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else
  {
    v39 = v38;
    v40 = 0;
    v41 = 0;
    v42 = *(a1 + 1048);
    while (1)
    {
      while (1)
      {
        v43 = sub_10001C7F8(v39, *(*(a1 + 1024) + 2 * v40), (*(a1 + 1040) + 2 * v41), v42 - v41);
        v42 = *(a1 + 1048);
        if (v43 + v41 > v42)
        {
          break;
        }

        v41 = (v43 + v41);
        if (++v40 >= v35)
        {
          goto LABEL_64;
        }
      }

      v44 = v35;
      v42 += 2 * (v35 - v40);
      result = sub_1000C0034(2 * v42);
      if (!result)
      {
        break;
      }

      v45 = result;
      j__memmove(result, *(a1 + 1040), 2 * v41);
      sub_1000BFEC4(*(a1 + 1040));
      *(a1 + 1040) = v45;
      *(a1 + 1048) = v42;
      v35 = v44;
      if (v40 >= v44)
      {
        goto LABEL_64;
      }
    }
  }

  return result;
}

uint64_t sub_100052724(uint64_t a1, uint64_t a2, __int16 *a3)
{
  result = sub_100060940(*(a1 + 656));
  v204 = result;
  v13 = *(a1 + 572);
  if (*(a1 + 994) == 0x4000 && *(a1 + 572))
  {
    *(a1 + 568) = 0x40000000;
LABEL_54:
    *(a1 + 572) = v13 + 1;
    return result;
  }

  v14 = *(a1 + 832);
  v15 = *(a1 + 532);
  v16 = *(a1 + 384);
  *(a1 + 1000) = a2;
  sub_100003980(v16, a2, a3, *(a1 + 408), v13 - (*(a1 + 600) == 0), *(a1 + 600), v7, v8, v9, v10, v11, v12);
  v17 = qword_1001065A8;
  if (*(a1 + 520) == 1 && qword_1001065A8 && *(qword_1001065A8 + 4716))
  {
    *(a1 + 712) = 0x4000;
  }

  LOWORD(v18) = *(a1 + 712);
  v19 = v18;
  *(a1 + 714) = v18;
  if (*(a1 + 544) < v18)
  {
    v19 = *(a1 + 544);
  }

  *(a1 + 994) = v19;
  *(a1 + 712) = 0x4000;
  *(a1 + 558) = 0x4000;
  if (v17)
  {
    if (*(v17 + 724))
    {
      v20 = *(a1 + 848);
      if (v20)
      {
        v202 = v15;
        v203 = v14;
        v21 = *v20;
        v22 = *(a1 + 672);
        v23 = sub_100060958(*(a1 + 656), v22);
        v24 = (v23 + 4 * v21);
        v200 = sub_100060970(*(a1 + 656), v22);
        v25 = *v24 & 0x7FFF;
        v26 = sub_100012654(v16, v25);
        v27 = *(*(a1 + 848) + 10);
        v28 = (v26 + 2 * v27);
        v29 = *v28;
        v30 = *(*(v16 + 1792) + 2 * v29);
        if (v30 == 0x4000)
        {
          LOWORD(v30) = sub_100012668(v16, v29);
        }

        if (v25 && *(a1 + 528) - 1 > v27)
        {
          v31 = v28[1];
          v32 = *(*(v16 + 1792) + 2 * v31);
          if (v32 == 0x4000)
          {
            LOWORD(v32) = sub_100012668(v16, v31);
          }

          if ((v32 + *(v200 + v21)) < v30)
          {
            LOWORD(v30) = v32 + *(v200 + v21);
          }

          v14 = v203;
LABEL_44:
          v18 = qword_1001065A8;
          if (qword_1001065A8)
          {
            *(a1 + 558) = v30 + *(qword_1001065A8 + 3040);
            LOWORD(v18) = *(v18 + 3136);
          }

          else
          {
            *(a1 + 558) = v30;
          }

          v15 = v202;
          *(a1 + 556) = v18 + v30;
          LOWORD(v18) = *(a1 + 714);
          goto LABEL_48;
        }

        if ((*v24 & 0x80000000) == 0)
        {
          if (**(a1 + 848))
          {
            v33 = v24[1];
            v34 = v24 + 2;
            v14 = v203;
            do
            {
              v35 = *v34;
              v34 += 2;
            }

            while (v35 < 0);
            v36 = *(v34 - 1);
            if (v33 < v36)
            {
              v37 = (v23 + 4 * v33);
              v38 = v36 - v33;
              v39 = (v200 + v33);
              do
              {
                v42 = *sub_100012654(v16, *v37 & 0x7FFF);
                v43 = *(*(v16 + 1792) + 2 * v42);
                if (v43 == 0x4000)
                {
                  LOWORD(v43) = sub_100012668(v16, v42);
                }

                v40 = *v39++;
                v41 = (*(a1 + 564) + v40 + v43);
                if (v41 < v30)
                {
                  LOWORD(v30) = v41;
                }

                v37 += 2;
                --v38;
              }

              while (v38);
            }
          }

          else
          {
            v14 = v203;
          }

          goto LABEL_44;
        }

        v44 = *(a1 + 376);
        if (qword_1001065A8)
        {
          if (*(qword_1001065A8 + 5360))
          {
            v45 = *(a1 + 664);
LABEL_40:
            v47 = *sub_100012654(v16, 0);
            v48 = *(*(v16 + 1792) + 2 * v47);
            v14 = v203;
            if (v48 == 0x4000)
            {
              LOWORD(v48) = sub_100012668(v16, v47);
            }

            if ((v48 + v45) < v30)
            {
              LOWORD(v30) = v48 + v45;
            }

            goto LABEL_44;
          }

          if (*(qword_1001065A8 + 1776))
          {
            v45 = 0;
            goto LABEL_40;
          }
        }

        v46 = sub_1000BA7F4(*(a1 + 376), v24[1], 0);
        v45 = sub_1000BABCC(v44, 0, 0, v46);
        goto LABEL_40;
      }
    }
  }

LABEL_48:
  *(a1 + 848) = 0;
  LODWORD(v18) = v18;
  if (*(*(a1 + 832) + 2) < v18)
  {
    LODWORD(v18) = *(*(a1 + 832) + 2);
  }

  v49 = v18 + *(a1 + 550);
  if (v49 >= 0x4000)
  {
    LOWORD(v49) = 0x4000;
  }

  *(a1 + 992) = sub_100050914(a1, v49);
  *(a1 + 568) += *(a1 + 544);
  *(a1 + 544) = 1073758208;
  *(a1 + 996) = 0x4000;
  if (*(a1 + 994) == 0x4000)
  {
    result = sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
    *(a1 + 568) = 0x40000000;
    *(a1 + 524) = 5;
    v13 = *(a1 + 572);
    goto LABEL_54;
  }

  v201 = (a1 + 572);
  v50 = *(a1 + 840);
  v51 = v50 - 12;
  if (v204 < 1)
  {
    goto LABEL_234;
  }

  v52 = 0;
  v53 = (v14 + 12 * v15);
  v54 = v53 - 6;
LABEL_60:
  *(a1 + 1016) = sub_100060958(*(a1 + 656), v52);
  *(a1 + 1008) = sub_100060970(*(a1 + 656), v52);
  *(a1 + 680) = sub_100060964(*(a1 + 656), v52);
  *(a1 + 668) = v52;
  if (!sub_10006097C(*(a1 + 656)))
  {
    v63 = *(a1 + 992);
    v64 = *(a1 + 1016);
    for (i = v53 - 6; ; i -= 6)
    {
      v68 = &v64[2 * *i];
      if ((*v68 & 0x80000000) == 0)
      {
        *(a1 + 722) = v68[1];
        if ((*v68 & 0x7FFF) != 0)
        {
          v66 = *(a1 + 528);
          v67 = (*(a1 + 564) + i[v66]);
          if (v67 <= v63)
          {
            v69 = i[v66 + 2];
            goto LABEL_89;
          }
        }

        else
        {
          v67 = i[1];
          if (!*i)
          {
            if (v67 >= *(a1 + 714))
            {
              LOWORD(v67) = *(a1 + 714);
            }

            v67 = (v67 + *(a1 + 562) + *(a1 + 564));
            if (v67 > v63 || !*v201)
            {
              *(a1 + 720) = 0;
              v208 = i;
              v76 = 0;
              LOWORD(v77) = *v54;
              goto LABEL_186;
            }

            *(a1 + 718) = *v201;
            *(a1 + 722) = 0;
LABEL_90:
            v208 = i;
            *(a1 + 716) = v67;
            v74 = v68 + 2;
            do
            {
              v75 = *v74;
              v74 += 2;
            }

            while (v75 < 0);
            LOWORD(v76) = *(v74 - 1) - 1;
            *(a1 + 720) = v76;
            v76 = v76;
            v77 = *v54;
            if (v76 <= v77)
            {
              goto LABEL_186;
            }

LABEL_189:
            while (2)
            {
              v131 = (*(a1 + 716) + *(*(a1 + 1008) + v76));
              if (v131 > *(a1 + 992))
              {
LABEL_194:
                if (*(a1 + 722) < v76)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v51 > v54)
                {
                  v132 = v52;
                  v133 = v53;
                  v134 = v208;
                  v135 = *(a1 + 384);
                  v136 = *(*(a1 + 1016) + 4 * v76);
                  *v51 = v76;
                  *(v51 + 4) = 0x4000;
                  v137 = *sub_100012654(v135, v136 & 0x7FFF);
                  v138 = *(*(v135 + 1792) + 2 * v137);
                  if (v138 == 0x4000)
                  {
                    LOWORD(v138) = sub_100012668(v135, v137);
                  }

                  *(v51 + 2) = v138 + v131 - *(a1 + 994);
                  *(v51 + 10) = 0;
                  *(v51 + 11) = *(v134 + 11) + 1;
                  *(v51 + 6) = *(a1 + 718);
                  v51 -= 12;
                  LODWORD(v76) = *(a1 + 720);
                  v53 = v133;
                  v52 = v132;
                  goto LABEL_194;
                }

                *(a1 + 524) = 3;
                if (*(a1 + 722) < v76)
                {
LABEL_182:
                  v129 = v76 - 1;
                  goto LABEL_183;
                }
              }

              v139 = v208;
              v140 = *(a1 + 1016);
              while (1)
              {
                while (1)
                {
                  do
                  {
                    v143 = *(v139 - 6);
                    v139 -= 6;
                    v144 = (v140 + 4 * v143);
                  }

                  while (*v144 < 0);
                  *(a1 + 722) = v144[1];
                  if ((*v144 & 0x7FFF) == 0)
                  {
                    break;
                  }

                  v141 = *(a1 + 528);
                  v142 = (*(a1 + 564) + v139[v141]);
                  if (v142 <= *(a1 + 992))
                  {
                    v145 = v139[v141 + 2];
                    goto LABEL_206;
                  }
                }

                v142 = v139[1];
                if (!*v139)
                {
                  break;
                }

                if (v142 <= *(a1 + 992))
                {
                  v145 = v139[3];
LABEL_206:
                  *(a1 + 718) = v145;
                  goto LABEL_207;
                }
              }

              if (v142 >= *(a1 + 714))
              {
                LOWORD(v142) = *(a1 + 714);
              }

              v142 = (v142 + *(a1 + 562) + *(a1 + 564));
              if (v142 > *(a1 + 992) || !*v201)
              {
                *(a1 + 720) = 0;
                v208 = v139;
                goto LABEL_184;
              }

              *(a1 + 718) = *v201;
              *(a1 + 722) = 0;
LABEL_207:
              v208 = v139;
              *(a1 + 716) = v142;
              v146 = v144 + 2;
              do
              {
                v147 = *v146;
                v146 += 2;
              }

              while (v147 < 0);
              v129 = *(v146 - 1) - 1;
LABEL_183:
              *(a1 + 720) = v129;
LABEL_184:
              if (*(a1 + 524) == 3)
              {
                return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
              }

              v76 = *(a1 + 720);
              v77 = *v54;
              if (v76 > v77)
              {
                continue;
              }

              break;
            }

LABEL_186:
            while (v77)
            {
              if (v54[*(v54 + 10) + 1] <= v63)
              {
                sub_100053B1C(a1, v54, v51, &v208, v64[2 * v77]);
                v54 -= 6;
                v51 -= 12;
                goto LABEL_184;
              }

              v130 = *(v54 - 6);
              v54 -= 6;
              LOWORD(v77) = v130;
              if (v76 > v130)
              {
                goto LABEL_189;
              }
            }

            v148 = v54[1];
            if (v148 >= *(a1 + 714))
            {
              v148 = *(a1 + 714);
            }

            if (v148 <= *(a1 + 992))
            {
              v150 = *(a1 + 384);
              v151 = sub_100012654(v150, *v64 & 0x7FFF);
              *v51 = 0;
              v152 = v54[1];
              v153 = (*(a1 + 714) + **(a1 + 1008));
              v154 = v153 <= v152;
              if (v153 >= v152)
              {
                v155 = v54[1];
              }

              else
              {
                v155 = (*(a1 + 714) + **(a1 + 1008));
              }

              v156 = (a1 + 572);
              if (!v154)
              {
                v156 = (v54 + 3);
              }

              if (v155 <= *(a1 + 992))
              {
                v157 = *v156;
                v158 = *v151;
                v159 = *(*(v150 + 1792) + 2 * v158);
                if (v159 == 0x4000)
                {
                  LOWORD(v159) = sub_100012668(v150, v158);
                }

                v149 = v159 + v155 - *(a1 + 994);
                *(v51 + 6) = v157;
              }

              else
              {
                v149 = 0x4000;
              }
            }

            else
            {
              *v51 = 0;
              v149 = 0x4000;
            }

            *(v51 + 2) = v149;
            *(v51 + 10) = 0;
            v54 -= 6;
            v51 -= 12;
            v53 = v208;
            if (*(a1 + 524) == 3)
            {
              return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
            }

LABEL_59:
            v52 = (v52 + 1);
            if (v52 == v204)
            {
              v50 = *(a1 + 840);
LABEL_234:
              v160 = (v51 + 12);
              v161 = v50 - (v51 + 12);
              v162 = 0xAAAAAAAAAAAAAAABLL * (v161 >> 2);
              sub_100060940(*(a1 + 656));
              if (*(a1 + 880) <= v162)
              {
                goto LABEL_256;
              }

              v163 = v51;
              v164 = *(a1 + 840);
              v165 = *(a1 + 736);
              v166 = *(v165 + 1);
              v167 = *v165;
              bzero(v166, 2 * v167);
              v168 = sub_100060940(*(a1 + 656));
              if (v162 < 1)
              {
                v170 = 0x4000;
              }

              else
              {
                v169 = v164 + 12 * -(v162 & 0x7FFFFFFF);
                v170 = 0x4000;
                do
                {
                  v171 = *v169 == 0;
                  v172 = *(v169 + 2 * *(v169 + 10) + 2);
                  if (v167 > v172)
                  {
                    ++*(v166 + v172);
                  }

                  v168 -= v171;
                  if (v172 < v170 && *v169)
                  {
                    *(a1 + 848) = v169;
                    *(a1 + 672) = v168;
                    v170 = v172;
                  }

                  v169 += 12;
                }

                while (v169 < v164);
              }

              *(a1 + 546) = v170;
              v173 = *(v163 + 18);
              v174 = *(v163 + 14);
              v175 = *(a1 + 996);
              if (v174 < v175)
              {
                *(a1 + 996) = *(v163 + 14);
                v175 = v174;
              }

              if (v175 < v170)
              {
                *(a1 + 848) = v160;
                *(a1 + 672) = 0;
                v170 = v175;
              }

              *(a1 + 544) = v170;
              if (v170 >= *(a1 + 712))
              {
                v170 = *(a1 + 712);
              }

              if (v174 < (*(a1 + 554) + v170))
              {
                LODWORD(v208) = 0;
                v176 = *v201;
                if (qword_1001065A8 && *(qword_1001065A8 + 3224) && *(qword_1001065A8 + 3024))
                {
                  ++v176;
                }

                sub_1000CFB6C(*(a1 + 472), v173, v176, 65534, *(a1 + 568) + v174, &v208);
                if (v208)
                {
LABEL_256:
                  *(a1 + 524) = 3;
                  return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
                }
              }

              *(a1 + 532) = v162;
              if (*(a1 + 574) == -1 && *(a1 + 996) == 0x4000)
              {
                *(a1 + 574) = *(a1 + 572);
              }

              v177 = *(a1 + 544);
              if (v177 >= *(a1 + 712))
              {
                LOWORD(v177) = *(a1 + 712);
              }

              v178 = (*(a1 + 552) + v177);
              v179 = sub_10006097C(*(a1 + 656));
              v180 = *(a1 + 840);
              v181 = sub_100060958(*(a1 + 656), 0);
              v182 = sub_100060940(*(a1 + 656));
              if (v179)
              {
                for (j = 0; ; v181 = sub_100060958(*(a1 + 656), j))
                {
                  while (1)
                  {
                    v185 = *(v180 - 6);
                    v180 -= 6;
                    v184 = v185;
                    if (!v185)
                    {
                      break;
                    }

                    v186 = (v181 + 4 * v184);
                    if (*v186 < 0 && sub_10009A708(*(a1 + 728), v186[1]) == *(v180 + 11))
                    {
                      sub_10005416C(a1, v186, v180, v178);
                    }
                  }

                  if (++j == v182)
                  {
                    break;
                  }
                }
              }

              else
              {
                while (1)
                {
                  for (v180 -= 6; *v180; v180 -= 6)
                  {
                    v187 = (v181 + 4 * *v180);
                    if (*v187 < 0)
                    {
                      sub_10005416C(a1, v187, v180, v178);
                    }
                  }

                  if (++v179 == v182)
                  {
                    break;
                  }

                  v181 = sub_100060958(*(a1 + 656), v179);
                }
              }

              j__memmove(*(a1 + 832), v160, v161);
              *(a1 + 848) += 12 * (v162 - *(a1 + 880));
              if (*(a1 + 424))
              {
                sub_100036DD0(a1, v188, v189, v190, v191, v192, v193, v194);
              }

              sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
              ++*(a1 + 572);
              result = sub_1000B13FC((a1 + 756), *(a1 + 996) == *(a1 + 544));
              if (*(a1 + 524) != 3)
              {
                result = sub_100050AC8(a1);
                if (result)
                {
                  v195 = 2;
                }

                else
                {
                  v195 = 1;
                }

                *(a1 + 524) = v195;
              }

              if (qword_1001065A8 && *(qword_1001065A8 + 1064))
              {
                return sub_1000360D0(a1);
              }

              return result;
            }

            goto LABEL_60;
          }

          if (v67 <= v63)
          {
            v69 = i[3];
LABEL_89:
            *(a1 + 718) = v69;
            goto LABEL_90;
          }
        }
      }
    }
  }

  v207 = 0;
  v206 = 0;
  v56 = *(a1 + 992);
  v57 = *(a1 + 1016);
  v58 = v53 - 6;
  v199 = *(a1 + 680);
  while (1)
  {
    v61 = &v57[2 * *v58];
    if (*v61 < 0)
    {
      goto LABEL_63;
    }

    *(a1 + 722) = v61[1];
    if ((*v61 & 0x7FFF) == 0)
    {
      break;
    }

    v59 = *(a1 + 528);
    v60 = (*(a1 + 564) + v58[v59]);
    if (v60 <= v56)
    {
      v62 = v58[v59 + 2];
      goto LABEL_78;
    }

LABEL_63:
    v58 -= 6;
  }

  v60 = v58[1];
  if (*v58)
  {
    if (v60 <= v56)
    {
      v62 = v58[3];
LABEL_78:
      *(a1 + 718) = v62;
      goto LABEL_79;
    }

    goto LABEL_63;
  }

  if (v60 >= *(a1 + 714))
  {
    LOWORD(v60) = *(a1 + 714);
  }

  v60 = (v60 + *(a1 + 562) + *(a1 + 564));
  if (v60 > v56 || !*v201)
  {
    *(a1 + 720) = 0;
    v205 = v58;
    v72 = 0;
    LOWORD(v73) = *v54;
    goto LABEL_99;
  }

  *(a1 + 718) = *v201;
  *(a1 + 722) = 0;
LABEL_79:
  v205 = v58;
  *(a1 + 716) = v60;
  v70 = v61 + 2;
  do
  {
    v71 = *v70;
    v70 += 2;
  }

  while (v71 < 0);
  LOWORD(v72) = *(v70 - 1) - 1;
  *(a1 + 720) = v72;
  v72 = v72;
  v73 = *v54;
  if (v72 > v73)
  {
    goto LABEL_102;
  }

LABEL_99:
  while (2)
  {
    while (2)
    {
      if (!v73)
      {
        v118 = v54[1];
        if (v118 >= *(a1 + 714))
        {
          v118 = *(a1 + 714);
        }

        if (v118 > *(a1 + 992))
        {
          *v51 = 0;
          v55 = 0x4000;
        }

        else
        {
          v119 = *(a1 + 384);
          v120 = sub_100012654(v119, *v57 & 0x7FFF);
          *v51 = 0;
          v121 = v54[1];
          v122 = (*(a1 + 714) + **(a1 + 1008));
          v123 = v122 <= v121;
          if (v122 >= v121)
          {
            v124 = v54[1];
          }

          else
          {
            v124 = (*(a1 + 714) + **(a1 + 1008));
          }

          v125 = (a1 + 572);
          if (!v123)
          {
            v125 = (v54 + 3);
          }

          if (v124 <= *(a1 + 992))
          {
            v126 = *v125;
            v127 = *v120;
            v128 = *(*(v119 + 1792) + 2 * v127);
            if (v128 == 0x4000)
            {
              LOWORD(v128) = sub_100012668(v119, v127);
            }

            v55 = v128 + v124 - *(a1 + 994);
            *(v51 + 6) = v126;
          }

          else
          {
            v55 = 0x4000;
          }
        }

        *(v51 + 2) = v55;
        *(v51 + 10) = 0;
        v54 -= 6;
        v51 -= 12;
        v53 = v205;
        if (*(a1 + 524) == 3)
        {
          return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
        }

        goto LABEL_59;
      }

      if (v54[*(v54 + 10) + 1] > v56)
      {
        v79 = *(v54 - 6);
        v54 -= 6;
        LOWORD(v73) = v79;
        if (v72 > v79)
        {
          goto LABEL_102;
        }

        continue;
      }

      break;
    }

    v95 = &v57[2 * v73];
    if (qword_1001065A8 && *(qword_1001065A8 + 3688) > *(v54 + 11) || (*v95 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    sub_100099F24(*(a1 + 728), v95[1], 0, &v206, &v207);
    v98 = *(v54 + 11);
    v197 = v95;
    if (v207 <= v98)
    {
      if (*(v199 + 4 * *(v54 + 11)) <= *v54)
      {
LABEL_118:
        sub_100053B1C(a1, v54, v51, &v205, *v95);
        v54 -= 6;
        v51 -= 12;
        goto LABEL_97;
      }

      v198 = v206;
      v208 = v205;
      v99 = *v54;
      v107 = *(v54 + 11);
      if (*(*(a1 + 680) + 4 * v107) <= v99)
      {
        goto LABEL_140;
      }

LABEL_144:
      sub_100053FB4(a1, v54, v51, v198[v107 - 1]);
      v51 -= 12;
      v108 = v54 - 6;
      if (*(v54 - 6) != v99)
      {
LABEL_141:
        v54 = v108;
        goto LABEL_161;
      }
    }

    else
    {
      v198 = v206;
      v208 = v205;
      v99 = *v54;
      v100 = (*(a1 + 564) + v54[*(a1 + 528)]);
      if (v100 <= *(a1 + 992))
      {
        if (v51 <= v54)
        {
          *(a1 + 524) = 3;
        }

        else
        {
          v101 = v52;
          v102 = v53;
          v103 = v206[v98];
          v104 = *(a1 + 384);
          *v51 = v99;
          *(v51 + 4) = 0x4000;
          v105 = *sub_100012654(v104, v103);
          v106 = *(*(v104 + 1792) + 2 * v105);
          if (v106 == 0x4000)
          {
            LOWORD(v106) = sub_100012668(v104, v105);
          }

          *(v51 + 2) = v106 + v100 - *(a1 + 994);
          *(v51 + 10) = 0;
          *(v51 + 11) = *(v54 + 11) + 1;
          *(v51 + 6) = *(a1 + 718);
          v51 -= 12;
          v53 = v102;
          v52 = v101;
        }
      }

      v95 = v197;
      v107 = *(v54 + 11);
      if (*(*(a1 + 680) + 4 * v107) > *v54)
      {
        goto LABEL_144;
      }

LABEL_140:
      sub_100053B1C(a1, v54, v51, &v208, *v95);
      v51 -= 12;
      v108 = v54 - 6;
      if (*(v54 - 6) != v99)
      {
        goto LABEL_141;
      }
    }

    v196 = v53;
    while (2)
    {
      v111 = v54 - 6;
      if (*(v54 - 1) + 1 >= *(v54 + 11) || (v112 = (*(a1 + 564) + v54[*(a1 + 528) - 6]), v112 > *(a1 + 992)))
      {
LABEL_156:
        v117 = *(v54 - 1);
        if (*(*(a1 + 680) + 4 * v117) > *(v54 - 6))
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v51 > v111)
        {
          v113 = v198[*(v54 - 1)];
          v114 = *(a1 + 384);
          *v51 = v99;
          *(v51 + 4) = 0x4000;
          v115 = *sub_100012654(v114, v113);
          v116 = *(*(v114 + 1792) + 2 * v115);
          if (v116 == 0x4000)
          {
            LOWORD(v116) = sub_100012668(v114, v115);
          }

          *(v51 + 2) = v116 + v112 - *(a1 + 994);
          *(v51 + 10) = 0;
          *(v51 + 11) = *(v54 - 1) + 1;
          *(v51 + 6) = *(a1 + 718);
          v51 -= 12;
          v95 = v197;
          goto LABEL_156;
        }

        *(a1 + 524) = 3;
        v117 = *(v54 - 1);
        if (*(*(a1 + 680) + 4 * v117) > *(v54 - 6))
        {
LABEL_146:
          sub_100053FB4(a1, v54 - 6, v51, v198[v117 - 1]);
          goto LABEL_147;
        }
      }

      sub_100053B1C(a1, v54 - 6, v51, &v208, *v95);
LABEL_147:
      v109 = -12;
      if (*(v51 + 2 * *(v51 + 10) + 2) >= 0x4000)
      {
        v109 = 0;
      }

      v51 += v109;
      v110 = *(v54 - 12);
      v54 -= 6;
      if (v110 == v99)
      {
        continue;
      }

      break;
    }

    v54 = v111 - 6;
    v53 = v196;
LABEL_161:
    v205 = v208;
LABEL_97:
    if (*(a1 + 524) != 3)
    {
      v72 = *(a1 + 720);
      v73 = *v54;
      if (v72 <= v73)
      {
        continue;
      }

LABEL_102:
      v80 = (*(a1 + 716) + *(*(a1 + 1008) + v72));
      if (v80 > *(a1 + 992))
      {
LABEL_107:
        if (*(a1 + 722) < v72)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v51 > v54)
        {
          v81 = v52;
          v82 = v53;
          v83 = v205;
          v84 = *(a1 + 384);
          v85 = *(*(a1 + 1016) + 4 * v72);
          *v51 = v72;
          *(v51 + 4) = 0x4000;
          v86 = *sub_100012654(v84, v85 & 0x7FFF);
          v87 = *(*(v84 + 1792) + 2 * v86);
          if (v87 == 0x4000)
          {
            LOWORD(v87) = sub_100012668(v84, v86);
          }

          *(v51 + 2) = v87 + v80 - *(a1 + 994);
          *(v51 + 10) = 0;
          *(v51 + 11) = *(v83 + 11) + 1;
          *(v51 + 6) = *(a1 + 718);
          v51 -= 12;
          LODWORD(v72) = *(a1 + 720);
          v53 = v82;
          v52 = v81;
          goto LABEL_107;
        }

        *(a1 + 524) = 3;
        if (*(a1 + 722) < v72)
        {
LABEL_95:
          v78 = v72 - 1;
          goto LABEL_96;
        }
      }

      v88 = v205;
      v89 = *(a1 + 1016);
      do
      {
        while (1)
        {
          do
          {
            v92 = *(v88 - 6);
            v88 -= 6;
            v93 = (v89 + 4 * v92);
          }

          while (*v93 < 0);
          *(a1 + 722) = v93[1];
          if ((*v93 & 0x7FFF) != 0)
          {
            break;
          }

          v91 = v88[1];
          if (!*v88)
          {
            if (v91 >= *(a1 + 714))
            {
              LOWORD(v91) = *(a1 + 714);
            }

            v91 = (v91 + *(a1 + 562) + *(a1 + 564));
            if (v91 > *(a1 + 992) || !*v201)
            {
              *(a1 + 720) = 0;
              v205 = v88;
              goto LABEL_97;
            }

            *(a1 + 718) = *v201;
            *(a1 + 722) = 0;
            goto LABEL_123;
          }

          if (v91 <= *(a1 + 992))
          {
            v94 = v88[3];
            goto LABEL_122;
          }
        }

        v90 = *(a1 + 528);
        v91 = (*(a1 + 564) + v88[v90]);
      }

      while (v91 > *(a1 + 992));
      v94 = v88[v90 + 2];
LABEL_122:
      *(a1 + 718) = v94;
LABEL_123:
      v205 = v88;
      *(a1 + 716) = v91;
      v96 = v93 + 2;
      do
      {
        v97 = *v96;
        v96 += 2;
      }

      while (v97 < 0);
      v78 = *(v96 - 1) - 1;
LABEL_96:
      *(a1 + 720) = v78;
      goto LABEL_97;
    }

    return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
  }
}

uint64_t sub_100053B1C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4, __int16 a5)
{
  v8 = *(a1 + 992);
  v9 = *(a1 + 994);
  v10 = *(a1 + 384);
  if ((a5 & 0x7FFF) == 0)
  {
    result = sub_100012654(*(a1 + 384), 0);
    v24 = *a2;
    *a3 = v24;
    if (*(a1 + 720) == v24)
    {
      v25 = (*(a1 + 716) + *(*(a1 + 1008) + v24));
      v26 = a2[1];
      if (v26 >= v25)
      {
        v27 = *(a1 + 716) + *(*(a1 + 1008) + v24);
      }

      else
      {
        v27 = a2[1];
      }

      if (v26 >= v25)
      {
        v28 = (a1 + 718);
      }

      else
      {
        v28 = (a2 + 3);
      }

      v29 = *v28;
      if (*(a1 + 722) >= v24)
      {
        v46 = *a4;
        v47 = *(a1 + 1016);
        while (1)
        {
          while (1)
          {
            do
            {
              v50 = *(v46 - 6);
              v46 -= 6;
              v51 = (v47 + 4 * v50);
            }

            while (*v51 < 0);
            *(a1 + 722) = v51[1];
            if ((*v51 & 0x7FFF) == 0)
            {
              break;
            }

            v48 = *(a1 + 528);
            v49 = (*(a1 + 564) + v46[v48]);
            if (v49 <= *(a1 + 992))
            {
              v52 = v46[v48 + 2];
              goto LABEL_63;
            }
          }

          v49 = v46[1];
          if (!*v46)
          {
            break;
          }

          if (v49 <= *(a1 + 992))
          {
            v52 = v46[3];
LABEL_63:
            *(a1 + 718) = v52;
            goto LABEL_64;
          }
        }

        v60 = *(a1 + 714);
        if (v49 < v60)
        {
          LOWORD(v60) = v46[1];
        }

        v49 = (v60 + *(a1 + 562) + *(a1 + 564));
        if (v49 > *(a1 + 992) || !*(a1 + 572))
        {
          *(a1 + 720) = 0;
          *a4 = v46;
          if (v8 < v27)
          {
            goto LABEL_67;
          }

          goto LABEL_80;
        }

        *(a1 + 718) = *(a1 + 572);
        *(a1 + 722) = 0;
LABEL_64:
        *a4 = v46;
        *(a1 + 716) = v49;
        v56 = v51 + 2;
        do
        {
          v57 = *v56;
          v56 += 2;
        }

        while (v57 < 0);
        *(a1 + 720) = *(v56 - 1) - 1;
        if (v8 >= v27)
        {
          goto LABEL_80;
        }
      }

      else
      {
        *(a1 + 720) = v24 - 1;
        if (v8 >= v27)
        {
LABEL_80:
          v61 = *result;
          result = *(*(*(a1 + 384) + 1792) + 2 * v61);
          if (result == 0x4000)
          {
            result = sub_100012668(*(a1 + 384), v61);
          }

          *(a3 + 2) = v27 - v9 + result;
          v58 = 6;
          goto LABEL_83;
        }
      }
    }

    else
    {
      v27 = a2[1];
      v29 = a2[3];
      if (v8 >= v27)
      {
        goto LABEL_80;
      }
    }

LABEL_67:
    v29 = 0x4000;
    v58 = 2;
LABEL_83:
    v19 = 0;
    *(a3 + v58) = v29;
    goto LABEL_84;
  }

  result = sub_100012654(v10, a5 & 0x7FFF);
  v12 = *a2;
  *a3 = v12;
  v13 = *(*(a1 + 1008) + v12);
  v14 = (a2[1] + v13);
  v15 = a2[2];
  v16 = v15 < v14;
  if (v15 >= v14)
  {
    v17 = (a2[1] + v13);
  }

  else
  {
    v17 = a2[2];
  }

  v18 = 3;
  if (v16)
  {
    v18 = 4;
  }

  if (v17 > v8)
  {
    v19 = 0;
    v20 = 0x4000;
    *(a3 + 4) = 0x4000;
    if (*(a1 + 720) != v12)
    {
      goto LABEL_9;
    }

LABEL_27:
    v36 = a2 + 3;
    v37 = (*(a1 + 716) + v13);
    v38 = a2[1];
    if (v38 >= v37)
    {
      v21 = *(a1 + 716) + v13;
    }

    else
    {
      v21 = a2[1];
    }

    if (v38 >= v37)
    {
      v36 = (a1 + 718);
    }

    v22 = *v36;
    if (*(a1 + 722) >= v12)
    {
      v39 = *a4;
      v40 = *(a1 + 1016);
      while (1)
      {
        while (1)
        {
          do
          {
            v43 = *(v39 - 6);
            v39 -= 6;
            v44 = (v40 + 4 * v43);
          }

          while (*v44 < 0);
          *(a1 + 722) = v44[1];
          if ((*v44 & 0x7FFF) == 0)
          {
            break;
          }

          v41 = *(a1 + 528);
          v42 = (*(a1 + 564) + v39[v41]);
          if (v42 <= *(a1 + 992))
          {
            v45 = v39[v41 + 2];
            goto LABEL_52;
          }
        }

        v42 = v39[1];
        if (!*v39)
        {
          break;
        }

        if (v42 <= *(a1 + 992))
        {
          v45 = v39[3];
LABEL_52:
          *(a1 + 718) = v45;
          goto LABEL_53;
        }
      }

      v55 = *(a1 + 714);
      if (v42 < v55)
      {
        LOWORD(v55) = v39[1];
      }

      v42 = (v55 + *(a1 + 562) + *(a1 + 564));
      if (v42 > *(a1 + 992) || !*(a1 + 572))
      {
        *(a1 + 720) = 0;
        *a4 = v39;
        if (v8 < v21)
        {
          goto LABEL_56;
        }

        goto LABEL_69;
      }

      *(a1 + 718) = *(a1 + 572);
      *(a1 + 722) = 0;
LABEL_53:
      *a4 = v39;
      *(a1 + 716) = v42;
      v53 = v44 + 2;
      do
      {
        v54 = *v53;
        v53 += 2;
      }

      while (v54 < 0);
      *(a1 + 720) = *(v53 - 1) - 1;
      if (v8 >= v21)
      {
        goto LABEL_69;
      }
    }

    else
    {
      *(a1 + 720) = v12 - 1;
      if (v8 >= v21)
      {
        goto LABEL_69;
      }
    }

LABEL_56:
    *(a3 + 2) = 0x4000;
    goto LABEL_84;
  }

  v30 = a2[v18];
  v31 = *(result + 2);
  v32 = *(*(v10 + 1792) + 2 * v31);
  if (v32 == 0x4000)
  {
    v62 = v8;
    v33 = v9;
    v34 = result;
    LOWORD(v32) = sub_100012668(v10, v31);
    result = v34;
    v9 = v33;
    v8 = v62;
  }

  v35 = v32 + v17 - v9;
  *(a3 + 4) = v35;
  *(a3 + 8) = v30;
  v19 = v35 < 0x4000;
  if (v35 >= 0x4000)
  {
    v20 = 0x4000;
  }

  else
  {
    v20 = v35;
  }

  if (*(a1 + 720) == v12)
  {
    goto LABEL_27;
  }

LABEL_9:
  v21 = a2[1];
  v22 = a2[3];
  if (v8 < v21)
  {
    goto LABEL_56;
  }

LABEL_69:
  v59 = *result;
  result = *(*(*(a1 + 384) + 1792) + 2 * v59);
  if (result == 0x4000)
  {
    result = sub_100012668(*(a1 + 384), v59);
  }

  *(a3 + 2) = result + v21 - v9;
  *(a3 + 6) = v22;
  if (v20 > (result + v21 - v9))
  {
    v19 = 0;
  }

LABEL_84:
  *(a3 + 10) = v19;
  *(a3 + 11) = *(a2 + 11);
  return result;
}

uint64_t sub_100053FB4(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 992);
  v8 = *(a1 + 994);
  v9 = *(a1 + 384);
  result = sub_100012654(v9, a4);
  *a3 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = v12 < v11;
  if (v12 >= v11)
  {
    v14 = a2[1];
  }

  else
  {
    v14 = a2[2];
  }

  v15 = 3;
  if (v13)
  {
    v15 = 4;
  }

  if (v14 <= v7)
  {
    v19 = a2[v15];
    v20 = *(result + 2);
    v21 = *(*(v9 + 1792) + 2 * v20);
    if (v21 == 0x4000)
    {
      v22 = result;
      LOWORD(v21) = sub_100012668(v9, v20);
      result = v22;
    }

    v23 = v21 + v14 - v8;
    *(a3 + 4) = v23;
    *(a3 + 8) = v19;
    v16 = v23 < 0x4000;
    if (v23 >= 0x4000)
    {
      v17 = 0x4000;
    }

    else
    {
      v17 = v23;
    }

    v18 = a2 + 3;
    if (*(a2 - 6) != *a2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0x4000;
    *(a3 + 4) = 0x4000;
    v18 = a2 + 3;
    if (*(a2 - 6) != *a2)
    {
      goto LABEL_27;
    }
  }

  if (*(a2 - 1) + 1 == *(a2 + 11))
  {
    v24 = &a2[*(a1 + 528)];
    v25 = (*(a1 + 564) + *(v24 - 6));
    v26 = v24 - 4;
    v27 = a2[1];
    if (v27 >= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = a2[1];
    }

    if (v27 >= v25)
    {
      v18 = v26;
    }

    if (v7 < v28)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_27:
  v28 = a2[1];
  if (v7 < v28)
  {
LABEL_28:
    *(a3 + 2) = 0x4000;
    goto LABEL_29;
  }

LABEL_22:
  v29 = *v18;
  v30 = *result;
  result = *(*(v9 + 1792) + 2 * v30);
  if (result == 0x4000)
  {
    result = sub_100012668(v9, v30);
  }

  *(a3 + 2) = result + v28 - v8;
  *(a3 + 6) = v29;
  if (v17 > (result + v28 - v8))
  {
    v16 = 0;
  }

LABEL_29:
  *(a3 + 10) = v16;
  *(a3 + 11) = *(a2 + 11);
  return result;
}

uint64_t sub_10005416C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 2 * *(result + 528));
  if (v4 < a4)
  {
    v5 = result;
    v13 = 0;
    v6 = *(result + 376);
    v7 = *(result + 572);
    v8 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 5360))
      {
        LOWORD(v4) = v4 + *(result + 664);
        goto LABEL_7;
      }

      if (*(qword_1001065A8 + 1776))
      {
        goto LABEL_7;
      }
    }

    v9 = a2;
    v10 = a3;
    v11 = sub_1000BA7F4(*(result + 376), *(a2 + 2), 0);
    v12 = sub_1000BABCC(v6, 0, 0, v11);
    a3 = v10;
    a2 = v9;
    LOWORD(v4) = v12 + v4;
    v8 = qword_1001065A8;
    if (!qword_1001065A8)
    {
LABEL_10:
      result = sub_1000CFB6C(*(v5 + 472), *(a3 + 2 * *(v5 + 528) + 4), v7, *(a2 + 2), *(v5 + 568) + v4, &v13);
      if (v13)
      {
        *(v5 + 524) = 3;
      }

      else if (*(v5 + 712) > v4)
      {
        *(v5 + 712) = v4;
      }

      return result;
    }

LABEL_7:
    if (*(v8 + 3224) && *(v8 + 3024))
    {
      ++v7;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10005429C(uint64_t a1)
{
  v2 = sub_100035FB0(a1);
  v3 = sub_1000BD5C4(*(a1 + 520), v2);
  v4 = sub_1000BD5C4(*(a1 + 524), v3);
  v5 = sub_1000BD5C4(*(a1 + 528), v4);
  v6 = sub_1000BD5C4(*(a1 + 532), v5);
  v7 = sub_1000BD5C4(*(a1 + 536), v6);
  v8 = sub_1000BD5C4(*(a1 + 540), v7);
  v9 = sub_1000BD598(*(a1 + 544), v8);
  v10 = sub_1000BD598(*(a1 + 546), v9);
  v11 = sub_1000BD598(*(a1 + 548), v10);
  v12 = sub_1000BD598(*(a1 + 550), v11);
  v13 = sub_1000BD598(*(a1 + 552), v12);
  v14 = sub_1000BD598(*(a1 + 554), v13);
  v15 = sub_1000BD598(*(a1 + 556), v14);
  v16 = sub_1000BD598(*(a1 + 558), v15);
  v17 = sub_1000BD598(*(a1 + 560), v16);
  v18 = sub_1000BD598(*(a1 + 562), v17);
  v19 = sub_1000BD598(*(a1 + 564), v18);
  v20 = sub_1000BD5C4(*(a1 + 568), v19);
  v21 = sub_1000BD598(*(a1 + 572), v20);
  if (qword_1001065A8 && *(qword_1001065A8 + 1068))
  {
    v21 = sub_1000BD5C4(*(a1 + 576), v21);
  }

  v22 = sub_1000BD7F4((a1 + 580), 2, *(a1 + 584), v21);
  v23 = sub_1000BD5C4(*(a1 + 584), v22);
  v24 = sub_1000BD5C4(*(a1 + 588), v23);
  v25 = sub_1000BD5C4(*(a1 + 592), v24);
  v26 = sub_1000BD5C4(*(a1 + 596), v25);
  v27 = sub_1000BD5C4(*(a1 + 600), v26);
  v28 = sub_1000BD5C4(*(a1 + 604), v27);
  v29 = sub_1000BD5C4(*(a1 + 608), v28);
  v30 = *(a1 + 616);
  v31 = sub_100001108(*(a1 + 384));
  v32 = sub_1000BD7F4(v30, 1, v31, v29);
  v33 = *(a1 + 624);
  if (v33)
  {
    if (qword_1001065A8)
    {
      v34 = *(qword_1001065A8 + 584);
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_100001108(*(a1 + 384));
    LODWORD(v32) = sub_1000BD7F4(v33, 1, v35 * v34, v32);
  }

  v36 = sub_1000BD598(*(a1 + 632), v32);
  v37 = sub_1000BD598(*(a1 + 634), v36);
  v38 = sub_1000BD5C4(*(a1 + 648), v37);
  v39 = sub_1000BD5C4(*(a1 + 652), v38);
  v40 = sub_10005FF28(*(a1 + 656));
  v41 = sub_1000BD5C4(v40, v39);
  v42 = sub_1000BD5C4(*(a1 + 668), v41);
  v43 = sub_1000BD5C4(*(a1 + 672), v42);
  v44 = sub_1000BD7F4(*(a1 + 688), 2, *(a1 + 696), v43);
  v45 = sub_1000BD5C4(*(a1 + 696), v44);
  v46 = sub_1000BD5C4(*(a1 + 700), v45);
  v47 = sub_1000BD5C4(*(a1 + 704), v46);
  v48 = sub_1000BD5C4(*(a1 + 708), v47);
  v49 = sub_1000BD598(*(a1 + 712), v48);
  v50 = sub_1000BD598(*(a1 + 714), v49);
  v51 = sub_1000BD598(*(a1 + 716), v50);
  v52 = sub_1000BD598(*(a1 + 718), v51);
  v53 = sub_1000BD598(*(a1 + 720), v52);
  v54 = sub_1000BD598(*(a1 + 722), v53);
  v55 = *(a1 + 728);
  if (v55)
  {
    v56 = sub_10009A8C8(v55);
    v54 = sub_1000BD5C4(v56, v54);
  }

  v57 = sub_10005B808(*(a1 + 736));
  v58 = sub_1000BD5C4(v57, v54);
  v59 = sub_1000BD5C4(*(a1 + 748), v58);
  v60 = sub_1000BD5C4(*(a1 + 756), v59);
  v61 = sub_1000BD5C4(*(a1 + 760), v60);
  v62 = sub_1000BD5C4(*(a1 + 764), v61);
  v63 = sub_1000BD5C4(*(a1 + 800), v62);
  v64 = sub_1000BD598(*(a1 + 804), v63);
  v65 = sub_1000BD598(*(a1 + 806), v64);
  v66 = sub_1000BD5C4(*(a1 + 808), v65);
  v67 = sub_1000BD5C4(*(a1 + 812), v66);
  if (*(a1 + 808) >= 1)
  {
    v68 = 0;
    v69 = 0;
    do
    {
      v70 = sub_1000BD6C8(*(*(a1 + 816) + v68), 2, v67);
      v67 = sub_1000BD6C8(*(*(a1 + 816) + v68 + 2), 2, v70);
      ++v69;
      v68 += 4;
    }

    while (v69 < *(a1 + 808));
  }

  v71 = sub_1000BD5C4(*(a1 + 824), v67);
  v72 = *(a1 + 856);
  v73 = *(a1 + 532);
  v74 = sub_100060958(*(a1 + 656), 0);
  if (*(a1 + 532) >= 1)
  {
    v75 = v74;
    v76 = 0;
    v77 = 0;
    v78 = (v72 + 8 * v73);
    v79 = v78;
    while (1)
    {
      v80 = *(v79 - 4);
      v79 -= 4;
      v81 = sub_1000BD598(v80, v71);
      if ((*(v75 + 4 * *v79) & 0x7FFF) == 0)
      {
        break;
      }

      v82 = *(a1 + 528);
      if (v82 >= 1)
      {
        goto LABEL_21;
      }

LABEL_23:
      v84 = sub_1000BD57C(*(v78 - 2), v81);
      v71 = sub_1000BD57C(*(v78 - 1), v84);
      if (!*(v78 - 4))
      {
        v75 = sub_100060958(*(a1 + 656), ++v76);
      }

      ++v77;
      v78 = v79;
      if (v77 >= *(a1 + 532))
      {
        goto LABEL_25;
      }
    }

    v82 = 1;
LABEL_21:
    v83 = 0x7FFFFFFFFFFFFFFDLL;
    do
    {
      v81 = sub_1000BD598(v78[v83++], v81);
      --v82;
    }

    while (v82);
    goto LABEL_23;
  }

LABEL_25:
  v85 = sub_1000BD5C4(*(a1 + 880), v71);
  result = sub_1000BD5C4((*(a1 + 872) - *(a1 + 856)) >> 3, v85);
  if (qword_1001065A8 && *(qword_1001065A8 + 1068))
  {
    v87 = sub_1000BD598(*(a1 + 992), result);
    v88 = sub_1000BD598(*(a1 + 994), v87);
    v89 = *(a1 + 996);

    return sub_1000BD598(v89, v88);
  }

  return result;
}

unsigned __int16 *sub_1000547FC(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5, unsigned int a6)
{
  result = 0;
  v8 = 4;
  if (a6 > 5 || ((1 << a6) & 0x26) == 0)
  {
    goto LABEL_74;
  }

  v13 = *(a1 + 376);
  *(a1 + 520) = a6;
  *(a1 + 544) = 0;
  *(a1 + 808) = 0;
  *(a1 + 572) = -65536;
  *(a1 + 1064) = 0;
  *(a1 + 872) = 0;
  *(a1 + 592) = 0;
  *(a1 + 648) = 1;
  *(a1 + 752) = 0x40000000;
  if (qword_1001065A8)
  {
    v14 = *(qword_1001065A8 + 3192);
    v15 = *(qword_1001065A8 + 1440);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_1000B1390(a1 + 756, *(a1 + 432), v14, *(a1 + 912), v15, 0);
  v16 = *(a1 + 728);
  v17 = qword_1001065A8;
  if (!v16)
  {
LABEL_12:
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_21:
    *(a1 + 564) = 0;
    v23 = *(a1 + 896);
    if (v23 < *(a1 + 900))
    {
      result = 0;
      *(a1 + 562) = v23;
      v8 = 4;
LABEL_74:
      *(a1 + 524) = v8;
      return result;
    }

LABEL_23:
    result = 0;
    v8 = 4;
    goto LABEL_74;
  }

  if (qword_1001065A8)
  {
    result = sub_100099BA4(v16, *(qword_1001065A8 + 4488), *(qword_1001065A8 + 4496));
    if (result)
    {
      goto LABEL_9;
    }

LABEL_25:
    v8 = 4;
    goto LABEL_74;
  }

  result = sub_100099BA4(v16, 0, 0);
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_9:
  v17 = qword_1001065A8;
  if (!qword_1001065A8)
  {
    goto LABEL_21;
  }

  if (*(qword_1001065A8 + 4464))
  {
    sub_1000998FC(*(a1 + 728));
    v17 = qword_1001065A8;
    goto LABEL_12;
  }

LABEL_13:
  *(a1 + 564) = *(v17 + 3208);
  v18 = *(a1 + 896);
  v19 = *(a1 + 900);
  if (v18 >= v19)
  {
    goto LABEL_23;
  }

  *(a1 + 562) = v18;
  v20 = *(v17 + 3064);
  if (!v20)
  {
    goto LABEL_23;
  }

  *(a1 + 536) = v20;
  *(a1 + 548) = v19;
  v21 = *(v17 + 3120);
  *(a1 + 552) = v21;
  *(a1 + 550) = *(v17 + 3112);
  *(a1 + 824) = 0;
  if (*(v17 + 3240) == 5000)
  {
    *(a1 + 554) = v21;
  }

  *(a1 + 600) = 0x100000001;
  if (a3 < 1)
  {
    *(a1 + 584) = 0;
    v24 = -1;
  }

  else
  {
    if (a3 != 1 && *(v17 + 3280))
    {
      *(a1 + 584) = 2;
      v22 = a2 + 2 * a3;
      *(a1 + 580) = *(v22 - 4);
      *(a1 + 582) = *(v22 - 2);
      goto LABEL_29;
    }

    *(a1 + 584) = 1;
    v24 = *(a2 + 2 * a3 - 2);
  }

  *(a1 + 580) = v24;
LABEL_29:
  sub_100050834(a1);
  if (!qword_1001065A8)
  {
    goto LABEL_66;
  }

  if (!*(qword_1001065A8 + 1776))
  {
    goto LABEL_59;
  }

  if (a5 < 1)
  {
    v26 = -1;
    if (*(a1 + 828) == -1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v25 = a5;
    v26 = -1;
    v27 = a4;
    do
    {
      v28 = *v27++;
      v29 = sub_100023A50(v28);
      v30 = sub_1000BD6C8(v29, 4, v26);
      v26 = v30;
      --v25;
    }

    while (v25);
    if (v30 == *(a1 + 828))
    {
      goto LABEL_59;
    }
  }

  v31 = sub_100022D0C(a4, a5, 0);
  v32 = v31;
  if (v31 <= *(a1 + 1032))
  {
    v33 = *(a1 + 1024);
  }

  else
  {
    result = sub_1000C0034(2 * v31);
    if (!result)
    {
      return result;
    }

    v33 = result;
    sub_1000BFEC4(*(a1 + 1024));
    *(a1 + 1024) = v33;
    *(a1 + 1032) = v32;
  }

  v34 = sub_100022D0C(a4, a5, v33);
  v35 = 3 * v34 / 2;
  if (*(a1 + 1048) < v35)
  {
    result = sub_1000C0034(2 * v35);
    if (!result)
    {
      return result;
    }

    v36 = result;
    sub_1000BFEC4(*(a1 + 1040));
    *(a1 + 1040) = v36;
    *(a1 + 1048) = v35;
  }

  v37 = sub_1000B2074(v13);
  if (v34 < 1)
  {
    v40 = 0;
LABEL_52:
    result = sub_10005EC84(*(a1 + 656), *(a1 + 1040), v40, v13, *(a1 + 384), 0, 0, 1, 0, *(a1 + 728));
    if (result)
    {
      *(a1 + 828) = v26;
      if (*(a1 + 744))
      {
        v44 = *(a1 + 744);
      }

      else
      {
        v44 = 65533;
      }

      *(a1 + 704) = sub_10005F384(*(a1 + 656), v44);
      if (!qword_1001065A8)
      {
        goto LABEL_66;
      }

      if (*(qword_1001065A8 + 5360))
      {
        sub_10006016C(*(a1 + 656), *(a1 + 528));
      }

LABEL_59:
      if (qword_1001065A8)
      {
        if (*(qword_1001065A8 + 1776))
        {
          v45 = 1;
        }

        else
        {
          v45 = v13 == 0;
        }

        if (v45)
        {
          goto LABEL_68;
        }

LABEL_67:
        if (!*(a1 + 608))
        {
          v46 = sub_1000505E0(a1);
          goto LABEL_70;
        }

LABEL_68:
        v46 = 1;
LABEL_70:
        *(a1 + 664) = sub_100060950(*(a1 + 656));
        v47 = sub_100060940(*(a1 + 656));
        v48 = *(a1 + 856);
        *(a1 + 532) = 0;
        if (v47 >= 1)
        {
          v49 = v48 + 7;
          do
          {
            *(v49 - 7) = 0;
            *(v49 - 1) = 0;
            ++*(a1 + 532);
            v49 += 8;
            --v47;
          }

          while (v47);
        }

        *(a1 + 568) = 0;
        *(a1 + 996) = 0;
        v8 = 1;
        result = v46;
        goto LABEL_74;
      }

LABEL_66:
      if (!v13)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v38 = v37;
    v39 = 0;
    v40 = 0;
    v41 = *(a1 + 1048);
    while (1)
    {
      while (1)
      {
        v42 = sub_10001C7F8(v38, *(*(a1 + 1024) + 2 * v39), (*(a1 + 1040) + 2 * v40), v41 - v40);
        v41 = *(a1 + 1048);
        if (v42 + v40 > v41)
        {
          break;
        }

        v40 = (v42 + v40);
        if (++v39 >= v34)
        {
          goto LABEL_52;
        }
      }

      v41 += 2 * (v34 - v39);
      result = sub_1000C0034(2 * v41);
      if (!result)
      {
        break;
      }

      v43 = result;
      j__memmove(result, *(a1 + 1040), 2 * v40);
      sub_1000BFEC4(*(a1 + 1040));
      *(a1 + 1040) = v43;
      *(a1 + 1048) = v41;
      if (v39 >= v34)
      {
        goto LABEL_52;
      }
    }
  }

  return result;
}

uint64_t sub_100054CE4(uint64_t a1, uint64_t a2, __int16 *a3)
{
  result = sub_100060940(*(a1 + 656));
  v13 = result;
  if (*(a1 + 994) == 0x4000)
  {
    v14 = *(a1 + 572);
    if (v14)
    {
      *(a1 + 568) = 0x40000000;
LABEL_74:
      *(a1 + 572) = v14 + 1;
      return result;
    }
  }

  v15 = *(a1 + 856);
  v16 = *(a1 + 532);
  v17 = *(a1 + 384);
  *(a1 + 1000) = a2;
  if (qword_1001065A8 && *(qword_1001065A8 + 584) >= 1 && *(a1 + 648) >= 1)
  {
    sub_100019D2C(v17, *(a1 + 640));
  }

  sub_100003980(v17, a2, a3, *(a1 + 408), *(a1 + 572) - (*(a1 + 600) == 0), *(a1 + 600), v7, v8, v9, v10, v11, v12);
  *(a1 + 994) = *(a1 + 544);
  *(a1 + 558) = 0x4000;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 724))
    {
      v18 = *(a1 + 872);
      if (v18)
      {
        v191 = v16;
        v193 = v15;
        v19 = v13;
        v20 = *v18;
        v21 = *(a1 + 672);
        v22 = sub_100060958(*(a1 + 656), v21);
        v23 = (v22 + 4 * v20);
        v189 = sub_100060970(*(a1 + 656), v21);
        v24 = *v23 & 0x7FFF;
        v25 = sub_100012654(v17, v24);
        v26 = *(*(a1 + 872) + 6);
        v27 = (v25 + 2 * v26);
        v28 = *v27;
        v29 = *(*(v17 + 1792) + 2 * v28);
        if (v29 == 0x4000)
        {
          LOWORD(v29) = sub_100012668(v17, v28);
        }

        if (v24 && *(a1 + 528) - 1 > v26)
        {
          v30 = v27[1];
          v31 = *(*(v17 + 1792) + 2 * v30);
          if (v31 == 0x4000)
          {
            LOWORD(v31) = sub_100012668(v17, v30);
          }

          if ((v31 + *(v189 + v20)) < v29)
          {
            LOWORD(v29) = v31 + *(v189 + v20);
          }
        }

        else
        {
          if (*v23 < 0)
          {
            v44 = *(a1 + 376);
            v45 = *(a1 + 806);
            if (qword_1001065A8 && *(qword_1001065A8 + 5264))
            {
              LOWORD(v45) = v45 + *(a1 + 664);
              v13 = v19;
            }

            else
            {
              v13 = v19;
              if (v44)
              {
                v46 = sub_1000BA7F4(*(a1 + 376), v23[1], 0);
                v45 += sub_1000BABCC(v44, a1 + 580, *(a1 + 584), v46);
                if (qword_1001065A8)
                {
                  if (*(qword_1001065A8 + 5360))
                  {
                    LOWORD(v45) = v45 - sub_10006078C(v44, v46, *(a1 + 664)) + *(a1 + 664);
                  }
                }
              }
            }

            v47 = *sub_100012654(v17, 0);
            v48 = *(*(v17 + 1792) + 2 * v47);
            if (v48 == 0x4000)
            {
              LOWORD(v48) = sub_100012668(v17, v47);
            }

            if ((v48 + v45) < v29)
            {
              LOWORD(v29) = v48 + v45;
            }

            v16 = v191;
            v43 = qword_1001065A8;
            if (qword_1001065A8)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          if (**(a1 + 872))
          {
            v32 = v23[1];
            v33 = v23 + 2;
            v13 = v19;
            v16 = v191;
            do
            {
              v34 = *v33;
              v33 += 2;
            }

            while (v34 < 0);
            v35 = *(v33 - 1);
            if (v32 < v35)
            {
              v36 = (v22 + 4 * v32);
              v37 = v35 - v32;
              v38 = (v189 + v32);
              do
              {
                v41 = *sub_100012654(v17, *v36 & 0x7FFF);
                v42 = *(*(v17 + 1792) + 2 * v41);
                if (v42 == 0x4000)
                {
                  LOWORD(v42) = sub_100012668(v17, v41);
                }

                v39 = *v38++;
                v40 = (*(a1 + 564) + v39 + v42);
                if (v40 < v29)
                {
                  LOWORD(v29) = v40;
                }

                v36 += 2;
                --v37;
              }

              while (v37);
            }

LABEL_32:
            v43 = qword_1001065A8;
            if (qword_1001065A8)
            {
LABEL_33:
              *(a1 + 558) = v29 + *(v43 + 3040);
              LOWORD(v43) = *(v43 + 3136);
LABEL_47:
              v15 = v193;
              *(a1 + 556) = v43 + v29;
              goto LABEL_48;
            }

LABEL_46:
            *(a1 + 558) = v29;
            goto LABEL_47;
          }
        }

        v13 = v19;
        v16 = v191;
        goto LABEL_32;
      }
    }
  }

LABEL_48:
  *(a1 + 872) = 0;
  v49 = *(a1 + 808);
  if (v49 >= 1)
  {
    v50 = *(a1 + 816);
    if (v49 < 5)
    {
      v51 = 0;
      LOWORD(v52) = 0x4000;
      goto LABEL_65;
    }

    if (v49 >= 0x11)
    {
      if ((v49 & 0xF) != 0)
      {
        v54 = v49 & 0xF;
      }

      else
      {
        v54 = 16;
      }

      v51 = v49 - v54;
      v55 = (v50 + 34);
      v56.i64[0] = 0x4000400040004000;
      v56.i64[1] = 0x4000400040004000;
      v57 = v49 - v54;
      v58.i64[0] = 0x4000400040004000;
      v58.i64[1] = 0x4000400040004000;
      do
      {
        v59 = v55 - 16;
        v60 = vld2q_s16(v59);
        v61 = vld2q_s16(v55);
        v56 = vminq_s16(v60, v56);
        v58 = vminq_s16(v61, v58);
        v55 += 32;
        v57 -= 16;
      }

      while (v57);
      v62 = vminq_s16(v56, v58);
      v62.i16[0] = vminvq_s16(v62);
      v52 = v62.i32[0];
      if (v54 < 5)
      {
LABEL_65:
        v70 = v49 - v51;
        v71 = (v50 + 4 * v51 + 2);
        do
        {
          v73 = *v71;
          v71 += 2;
          v72 = v73;
          if (v73 < v52)
          {
            LOWORD(v52) = v72;
          }

          --v70;
        }

        while (v70);
        v53 = v52;
        goto LABEL_70;
      }
    }

    else
    {
      v51 = 0;
      v52 = 0x4000;
    }

    v63 = v49 & 3;
    if ((v49 & 3) == 0)
    {
      v63 = 4;
    }

    v64 = v50 + 4 * v51;
    v65 = v63 + v51;
    v51 = v49 - v63;
    v66 = vdup_n_s16(v52);
    v67 = (v64 + 2);
    v68 = v65 - v49;
    do
    {
      v69 = *vld2_s16(v67).val;
      v67 += 8;
      v66 = vmin_s16(v69, v66);
      v68 += 4;
    }

    while (v68);
    LOWORD(v52) = vminv_s16(v66);
    goto LABEL_65;
  }

  v53 = 0x4000;
LABEL_70:
  v74 = v53 + *(a1 + 550);
  if (v74 >= 0x4000)
  {
    LOWORD(v74) = 0x4000;
  }

  *(a1 + 992) = sub_100050914(a1, v74);
  *(a1 + 568) += *(a1 + 544);
  *(a1 + 544) = 1073758208;
  *(a1 + 996) = 0x4000;
  sub_100050394(a1);
  if (*(a1 + 994) == 0x4000)
  {
    result = sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
    *(a1 + 568) = 0x40000000;
    *(a1 + 524) = 5;
    v14 = *(a1 + 572);
    goto LABEL_74;
  }

  v75 = *(a1 + 864);
  v76 = (v75 - 8);
  if (v13 < 1)
  {
    goto LABEL_199;
  }

  v77 = 0;
  v78 = (v15 + 8 * v16);
  v79 = v78 - 4;
  v186 = v13;
  do
  {
    *(a1 + 1016) = sub_100060958(*(a1 + 656), v77);
    *(a1 + 1008) = sub_100060970(*(a1 + 656), v77);
    *(a1 + 680) = sub_100060964(*(a1 + 656), v77);
    *(a1 + 668) = v77;
    v194 = v78;
    if (!sub_10006097C(*(a1 + 656)))
    {
      v120 = *(a1 + 992);
      v199 = v76;
      v121 = v78 - 4;
      v122 = *(a1 + 1016);
      while (1)
      {
        v124 = &v122[2 * *v121];
        if ((*v124 & 0x80000000) == 0)
        {
          *(a1 + 722) = v124[1];
          if ((*v124 & 0x7FFF) != 0)
          {
            v123 = (*(a1 + 564) + v121[*(a1 + 528)]);
          }

          else
          {
            v123 = v121[1];
            if (!*v121)
            {
              v123 = (*(a1 + 562) + v123 + *(a1 + 564));
              if (v123 <= v120 && *(a1 + 572))
              {
                *(a1 + 722) = 0;
LABEL_151:
                v200 = v121;
                *(a1 + 716) = v123;
                v125 = v124 + 2;
                do
                {
                  v126 = *v125;
                  v125 += 2;
                }

                while (v126 < 0);
                v127 = v76;
                v128 = *(v125 - 1) - 1;
                *(a1 + 720) = v128;
              }

              else
              {
                v127 = v76;
                v128 = 0;
                *(a1 + 720) = 0;
                v200 = v121;
              }

              v129 = v79;
LABEL_155:
              while (1)
              {
                v130 = *v129;
                if (v130 < v128)
                {
                  break;
                }

                if (!*v129)
                {
                  v139 = v199;
                  if (v129[1] <= *(a1 + 992))
                  {
                    v144 = *(a1 + 384);
                    v145 = sub_100012654(v144, *v122 & 0x7FFF);
                    *v139 = 0;
                    v146 = v129[1];
                    if (v146 <= *(a1 + 992))
                    {
                      v149 = *v145;
                      v150 = *(*(v144 + 1792) + 2 * v149);
                      if (v150 == 0x4000)
                      {
                        LOWORD(v150) = sub_100012668(v144, v149);
                      }

                      v140 = v150 + v146 - *(a1 + 994);
                    }

                    else
                    {
                      v140 = 0x4000;
                    }
                  }

                  else
                  {
                    *v199 = 0;
                    v140 = 0x4000;
                  }

                  v139[1] = v140;
                  v139[3] = 0;
                  v79 = v129 - 4;
                  v76 = v139 - 4;
                  v78 = v200;
                  if (*(a1 + 524) == 3)
                  {
                    return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
                  }

                  goto LABEL_196;
                }

                if (v129[*(v129 + 6) + 1] <= v120)
                {
                  v138 = v199;
                  sub_100055F8C(a1, v129, v199, &v200, v122[2 * v130]);
                  v129 -= 4;
                  v199 = v138 - 4;
                  if (*(a1 + 524) == 3)
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_176;
                }

                v129 -= 4;
              }

              v131 = v200;
              sub_100055E20(a1, v129, &v199, v200, v80, v81, v82);
              LODWORD(v132) = *(a1 + 720);
              if (*(a1 + 722) < v132)
              {
                goto LABEL_173;
              }

              v133 = *(a1 + 1016);
              for (i = v131 - 4; ; i -= 4)
              {
                v136 = (v133 + 4 * *i);
                if ((*v136 & 0x80000000) == 0)
                {
                  *(a1 + 722) = v136[1];
                  if ((*v136 & 0x7FFF) != 0)
                  {
                    v135 = (*(a1 + 564) + i[*(a1 + 528)]);
                  }

                  else
                  {
                    v135 = i[1];
                    if (!*i)
                    {
                      v135 = (*(a1 + 562) + v135 + *(a1 + 564));
                      if (v135 <= *(a1 + 992) && *(a1 + 572))
                      {
                        *(a1 + 722) = 0;
LABEL_170:
                        v200 = i;
                        *(a1 + 716) = v135;
                        v132 = v136 + 2;
                        do
                        {
                          v137 = *v132;
                          v132 += 2;
                        }

                        while (v137 < 0);
                        LOWORD(v132) = *(v132 - 1);
LABEL_173:
                        *(a1 + 720) = v132 - 1;
                        if (*(a1 + 524) == 3)
                        {
LABEL_178:
                          v76 = v127;
                          v78 = v194;
                          if (*(a1 + 524) == 3)
                          {
                            return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
                          }

                          goto LABEL_196;
                        }
                      }

                      else
                      {
                        *(a1 + 720) = 0;
                        v200 = i;
                        if (*(a1 + 524) == 3)
                        {
                          goto LABEL_178;
                        }
                      }

LABEL_176:
                      v128 = *(a1 + 720);
                      goto LABEL_155;
                    }
                  }

                  if (v135 <= *(a1 + 992))
                  {
                    goto LABEL_170;
                  }
                }
              }
            }
          }

          if (v123 <= v120)
          {
            goto LABEL_151;
          }
        }

        v121 -= 4;
      }
    }

    v192 = v79;
    v198 = 0;
    v197 = 0;
    v83 = *(a1 + 992);
    v195 = v76;
    v84 = *(a1 + 1016);
    v85 = v78 - 4;
    v187 = v76;
    v188 = *(a1 + 680);
    while (1)
    {
      v87 = &v84[2 * *v85];
      if (*v87 < 0)
      {
        goto LABEL_81;
      }

      *(a1 + 722) = v87[1];
      if ((*v87 & 0x7FFF) != 0)
      {
        v86 = (*(a1 + 564) + v85[*(a1 + 528)]);
        goto LABEL_80;
      }

      v86 = v85[1];
      if (!*v85)
      {
        break;
      }

LABEL_80:
      if (v86 <= v83)
      {
        goto LABEL_88;
      }

LABEL_81:
      v85 -= 4;
    }

    v86 = (*(a1 + 562) + v86 + *(a1 + 564));
    if (v86 > v83 || !*(a1 + 572))
    {
      v90 = 0;
      *(a1 + 720) = 0;
      v196 = v85;
      v91 = v192;
      v92 = v192 - 1;
      v93 = *v192;
      goto LABEL_91;
    }

    *(a1 + 722) = 0;
LABEL_88:
    v196 = v85;
    *(a1 + 716) = v86;
    v88 = v87 + 2;
    do
    {
      v89 = *v88;
      v88 += 2;
    }

    while (v89 < 0);
    v90 = *(v88 - 1) - 1;
    *(a1 + 720) = v90;
    v91 = v192;
    v92 = v192 - 1;
    v93 = *v192;
    if (v93 >= v90)
    {
LABEL_91:
      while (2)
      {
        if (!v93)
        {
          v118 = v195;
          if (v91[1] <= *(a1 + 992))
          {
            v141 = *(a1 + 384);
            v142 = sub_100012654(v141, *v84 & 0x7FFF);
            *v118 = 0;
            v143 = v91[1];
            if (v143 <= *(a1 + 992))
            {
              v147 = *v142;
              v148 = *(*(v141 + 1792) + 2 * v147);
              if (v148 == 0x4000)
              {
                LOWORD(v148) = sub_100012668(v141, v147);
              }

              v119 = v148 + v143 - *(a1 + 994);
            }

            else
            {
              v119 = 0x4000;
            }
          }

          else
          {
            *v195 = 0;
            v119 = 0x4000;
          }

          v118[1] = v119;
          v118[3] = 0;
          v79 = v91 - 4;
          v76 = v118 - 4;
          v78 = v196;
          if (*(a1 + 524) == 3)
          {
            return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
          }

          goto LABEL_196;
        }

        if (v91[*(v91 + 6) + 1] > v83)
        {
          v92 -= 8;
          v94 = *(v91 - 4);
          v91 -= 4;
          v93 = v94;
          if (v94 >= v90)
          {
            continue;
          }

          goto LABEL_94;
        }

        break;
      }

      v102 = &v84[2 * v93];
      if (qword_1001065A8 && *(qword_1001065A8 + 3688) > *(v91 + 7) || (*v102 & 0x80000000) == 0 || (sub_100099F24(*(a1 + 728), v102[1], 0, &v197, &v198), v198 <= *(v91 + 7)) && *(v188 + 4 * *(v91 + 7)) <= *v91)
      {
        v103 = v195;
        sub_100055F8C(a1, v91, v195, &v196, *v102);
        v91 -= 4;
        v195 = v103 - 4;
        v78 = v194;
        if (*(a1 + 524) == 3)
        {
          goto LABEL_137;
        }

        goto LABEL_114;
      }

      v107 = v197;
      v199 = v196;
      v200 = v195;
      v108 = *v91;
      v109 = *(v91 + 7);
      if (v198 <= v109)
      {
        v190 = v197;
        if (*(*(a1 + 680) + 4 * v109) <= v108)
        {
          goto LABEL_120;
        }
      }

      else
      {
        sub_100056364(a1, v91, &v200, v91, v197[v109], v104, v105, v106);
        v109 = *(v91 + 7);
        v190 = v107;
        if (*(*(a1 + 680) + 4 * v109) <= *v91)
        {
LABEL_120:
          v110 = v200;
          sub_100055F8C(a1, v91, v200, &v199, *v102);
          v111 = v110 - 4;
          v200 = v111;
          v112 = *(v91 - 4);
          v91 -= 4;
          if (v112 == v108)
          {
            goto LABEL_128;
          }

          goto LABEL_136;
        }
      }

      v113 = v107[v109 - 1];
      v114 = v200;
      sub_1000564D8(a1, v91, v200, v113);
      v111 = v114 - 4;
      v200 = v111;
      v115 = *(v91 - 4);
      v91 -= 4;
      if (v115 != v108)
      {
LABEL_136:
        v195 = v111;
        v196 = v199;
        v13 = v186;
        v78 = v194;
        if (*(a1 + 524) == 3)
        {
          goto LABEL_137;
        }

        goto LABEL_114;
      }

LABEL_128:
      while (2)
      {
        v117 = *v92;
        if (v117 + 1 >= v92[8])
        {
          if (*(*(a1 + 680) + 4 * v117) > v108)
          {
            goto LABEL_133;
          }

LABEL_130:
          v111 = v200;
          sub_100055F8C(a1, (v92 - 7), v200, &v199, *v102);
          if (v111[*(v111 + 6) + 1] < 0x4000)
          {
LABEL_134:
            v111 -= 4;
            v200 = v111;
          }
        }

        else
        {
          sub_100056364(a1, v92 - 7, &v200, v92 - 7, v190[v117], v80, v81, v82);
          v117 = *v92;
          if (*(*(a1 + 680) + 4 * v117) <= *(v92 - 7))
          {
            goto LABEL_130;
          }

LABEL_133:
          v111 = v200;
          sub_1000564D8(a1, (v92 - 7), v200, v190[v117 - 1]);
          if (v111[*(v111 + 6) + 1] < 0x4000)
          {
            goto LABEL_134;
          }
        }

        v116 = *(v92 - 15);
        v92 -= 8;
        if (v116 != v108)
        {
          v91 = (v92 - 7);
          goto LABEL_136;
        }

        continue;
      }
    }

LABEL_94:
    while (1)
    {
      v95 = v196;
      sub_100055E20(a1, v91, &v195, v196, v80, v81, v82);
      LODWORD(v96) = *(a1 + 720);
      if (*(a1 + 722) >= v96)
      {
        break;
      }

LABEL_108:
      *(a1 + 720) = v96 - 1;
      if (*(a1 + 524) == 3)
      {
        goto LABEL_137;
      }

LABEL_114:
      v90 = *(a1 + 720);
      v92 = v91 - 1;
      v93 = *v91;
      if (v93 >= v90)
      {
        goto LABEL_91;
      }
    }

    v97 = *(a1 + 1016);
    v98 = v95 - 4;
    while (2)
    {
      v100 = (v97 + 4 * *v98);
      if (*v100 < 0)
      {
        goto LABEL_98;
      }

      *(a1 + 722) = v100[1];
      if ((*v100 & 0x7FFF) != 0)
      {
        v99 = (*(a1 + 564) + v98[*(a1 + 528)]);
LABEL_97:
        if (v99 <= *(a1 + 992))
        {
          goto LABEL_105;
        }

LABEL_98:
        v98 -= 4;
        continue;
      }

      break;
    }

    v99 = v98[1];
    if (*v98)
    {
      goto LABEL_97;
    }

    v99 = (*(a1 + 562) + v99 + *(a1 + 564));
    if (v99 <= *(a1 + 992) && *(a1 + 572))
    {
      *(a1 + 722) = 0;
LABEL_105:
      v196 = v98;
      *(a1 + 716) = v99;
      v96 = v100 + 2;
      do
      {
        v101 = *v96;
        v96 += 2;
      }

      while (v101 < 0);
      LOWORD(v96) = *(v96 - 1);
      goto LABEL_108;
    }

    *(a1 + 720) = 0;
    v196 = v98;
    if (*(a1 + 524) != 3)
    {
      goto LABEL_114;
    }

LABEL_137:
    v76 = v187;
    v79 = v192;
    if (*(a1 + 524) == 3)
    {
      return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
    }

LABEL_196:
    ++v77;
  }

  while (v77 != v13);
  v75 = *(a1 + 864);
LABEL_199:
  v151 = v76 + 4;
  v152 = v75 - (v76 + 4);
  v153 = v152 >> 3;
  v154 = sub_100060940(*(a1 + 656));
  if (*(a1 + 880) <= (v152 >> 3))
  {
    *(a1 + 524) = 3;
    return sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
  }

  v155 = v154;
  v156 = v76;
  v157 = *(a1 + 864);
  v158 = *(a1 + 736);
  v159 = *(v158 + 1);
  v160 = *v158;
  bzero(v159, 2 * v160);
  v161 = sub_100060940(*(a1 + 656));
  if (v153 < 1)
  {
    v163 = 0x4000;
  }

  else
  {
    v162 = v157 - (v152 & 0x3FFFFFFF8);
    v163 = 0x4000;
    do
    {
      v164 = *v162 == 0;
      v165 = *(v162 + 2 * *(v162 + 6) + 2);
      if (v160 > v165)
      {
        ++*(v159 + v165);
      }

      v161 -= v164;
      if (v165 < v163 && *v162)
      {
        *(a1 + 872) = v162;
        *(a1 + 672) = v161;
        v163 = v165;
      }

      v162 += 8;
    }

    while (v162 < v157);
  }

  *(a1 + 546) = v163;
  v166 = v156[5];
  v167 = *(a1 + 996);
  if (v166 >= v167)
  {
    if (v167 >= v163)
    {
      goto LABEL_214;
    }

LABEL_218:
    *(a1 + 872) = v151;
    *(a1 + 672) = 0;
    v163 = v167;
    *(a1 + 544) = v167;
    if (v166 == 0x4000)
    {
      goto LABEL_219;
    }

LABEL_215:
    *(a1 + 532) = v153;
    if (v167 != 0x4000)
    {
      goto LABEL_222;
    }

LABEL_220:
    if (*(a1 + 574) == 0xFFFF)
    {
      *(a1 + 574) = *(a1 + 572);
    }

    goto LABEL_222;
  }

  *(a1 + 996) = v156[5];
  v167 = v166;
  if (v166 < v163)
  {
    goto LABEL_218;
  }

LABEL_214:
  *(a1 + 544) = v163;
  if (v166 != 0x4000)
  {
    goto LABEL_215;
  }

LABEL_219:
  *(a1 + 648) = 0;
  *(a1 + 532) = v153;
  if (v167 == 0x4000)
  {
    goto LABEL_220;
  }

LABEL_222:
  v168 = (*(a1 + 552) + v163);
  v169 = sub_10006097C(*(a1 + 656));
  v170 = *(a1 + 864);
  v171 = sub_100060958(*(a1 + 656), 0);
  v172 = sub_100060940(*(a1 + 656));
  if (v169)
  {
    for (j = 0; ; v171 = sub_100060958(*(a1 + 656), j))
    {
      while (1)
      {
        v175 = *(v170 - 4);
        v170 -= 4;
        v174 = v175;
        if (!v175)
        {
          break;
        }

        v176 = (v171 + 4 * v174);
        if (*v176 < 0 && sub_10009A708(*(a1 + 728), v176[1]) == *(v170 + 7))
        {
          sub_10005665C(a1, v176, v170, v168);
        }
      }

      if (++j == v172)
      {
        break;
      }
    }
  }

  else
  {
    while (1)
    {
      for (v170 -= 4; *v170; v170 -= 4)
      {
        v177 = (v171 + 4 * *v170);
        if (*v177 < 0)
        {
          sub_10005665C(a1, v177, v170, v168);
        }
      }

      if (++v169 == v172)
      {
        break;
      }

      v171 = sub_100060958(*(a1 + 656), v169);
    }
  }

  j__memmove(*(a1 + 856), v151, 8 * v153);
  *(a1 + 872) -= 8 * (*(a1 + 880) - v153);
  if (*(a1 + 532) == v155 && *(*(a1 + 856) + 2) == 0x4000)
  {
    *(a1 + 592) = 1;
  }

  if (*(a1 + 424))
  {
    sub_100036DD0(a1, v178, v179, v180, v181, v182, v183, v184);
  }

  sub_100003B68(*(a1 + 384), (*(a1 + 572) - (*(a1 + 600) == 0)), (a1 + 436));
  ++*(a1 + 572);
  result = sub_1000B13FC((a1 + 756), *(a1 + 996) == *(a1 + 544));
  if (*(a1 + 524) != 3)
  {
    result = sub_100050AC8(a1);
    if (result)
    {
      v185 = 2;
    }

    else
    {
      v185 = 1;
    }

    *(a1 + 524) = v185;
  }

  if (qword_1001065A8 && *(qword_1001065A8 + 1064))
  {
    return sub_1000360D0(a1);
  }

  return result;
}

uint64_t sub_100055E20(uint64_t result, unint64_t a2, unint64_t *a3, _WORD *a4, double a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *(result + 720);
  v8 = (*(result + 716) + *(*(result + 1008) + v7));
  if (v8 <= *(result + 992))
  {
    v9 = *(result + 384);
    v10 = *(*(result + 1016) + 4 * v7);
    if (!qword_1001065A8 || *(qword_1001065A8 + 584) < 1 || *a4)
    {
      goto LABEL_8;
    }

    v11 = a2;
    v12 = a4;
    v13 = a3;
    v14 = result;
    v15 = sub_100019F54(*(result + 384), v10 & 0x7FFF, a5, a6, a7);
    result = v14;
    v16 = (v15 + v8 - *(v14 + 994));
    v17 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v17 = *(qword_1001065A8 + 4904);
    }

    a3 = v13;
    a4 = v12;
    a2 = v11;
    if (v17 >= v16)
    {
LABEL_8:
      v18 = *a3;
      if (*a3 <= a2)
      {
        *(result + 524) = 3;
      }

      else
      {
        v19 = result;
        v20 = a4;
        v21 = a3;
        *v18 = v7;
        *(v18 + 4) = 0x4000;
        v22 = *sub_100012654(v9, v10 & 0x7FFF);
        result = *(*(v9 + 1792) + 2 * v22);
        if (result == 0x4000)
        {
          result = sub_100012668(v9, v22);
        }

        *(v18 + 2) = result + v8 - *(v19 + 994);
        *(v18 + 6) = 0;
        *(v18 + 7) = *(v20 + 7) + 1;
        *v21 -= 8;
      }
    }
  }

  return result;
}

uint64_t sub_100055F8C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4, __int16 a5)
{
  v9 = *(a1 + 992);
  v10 = *(a1 + 994);
  v11 = *(a1 + 384);
  if ((a5 & 0x7FFF) == 0)
  {
    result = sub_100012654(v11, 0);
    v20 = *a2;
    *a3 = v20;
    if (*(a1 + 720) != v20)
    {
      v21 = a2[1];
      if (v9 < v21)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

    if (a2[1] >= (*(a1 + 716) + *(*(a1 + 1008) + v20)))
    {
      v21 = *(a1 + 716) + *(*(a1 + 1008) + v20);
    }

    else
    {
      v21 = a2[1];
    }

    if (*(a1 + 722) < v20)
    {
      *(a1 + 720) = v20 - 1;
      if (v9 < v21)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

    v37 = *a4;
    v38 = *(a1 + 1016);
    while (1)
    {
      do
      {
        v40 = *(v37 - 4);
        v37 -= 4;
        v41 = (v38 + 4 * v40);
      }

      while (*v41 < 0);
      *(a1 + 722) = v41[1];
      if ((*v41 & 0x7FFF) != 0)
      {
        v39 = (*(a1 + 564) + v37[*(a1 + 528)]);
      }

      else
      {
        v39 = v37[1];
        if (!*v37)
        {
          v39 = (*(a1 + 562) + v39 + *(a1 + 564));
          if (v39 <= *(a1 + 992) && *(a1 + 572))
          {
            *(a1 + 722) = 0;
LABEL_61:
            *a4 = v37;
            *(a1 + 716) = v39;
            v42 = v41 + 2;
            do
            {
              v43 = *v42;
              v42 += 2;
            }

            while (v43 < 0);
            *(a1 + 720) = *(v42 - 1) - 1;
            if (v9 < v21)
            {
LABEL_35:
              v19 = 0x4000;
LABEL_36:
              v16 = 0;
              goto LABEL_37;
            }
          }

          else
          {
            *(a1 + 720) = 0;
            *a4 = v37;
            if (v9 < v21)
            {
              goto LABEL_35;
            }
          }

LABEL_15:
          v22 = *result;
          result = *(*(*(a1 + 384) + 1792) + 2 * v22);
          if (result == 0x4000)
          {
            result = sub_100012668(*(a1 + 384), v22);
          }

          v19 = v21 - v10 + result;
          goto LABEL_36;
        }
      }

      if (v39 <= *(a1 + 992))
      {
        goto LABEL_61;
      }
    }
  }

  result = sub_100012654(v11, a5 & 0x7FFF);
  v13 = *a2;
  *a3 = v13;
  v14 = *(*(a1 + 1008) + v13);
  if (a2[2] >= (a2[1] + v14))
  {
    v15 = (a2[1] + v14);
  }

  else
  {
    v15 = a2[2];
  }

  if (v15 <= v9)
  {
    v23 = *(result + 2);
    v24 = *(*(v11 + 1792) + 2 * v23);
    if (v24 == 0x4000)
    {
      v44 = v9;
      v25 = a4;
      v26 = v10;
      v27 = result;
      LOWORD(v24) = sub_100012668(v11, v23);
      result = v27;
      v10 = v26;
      a4 = v25;
      v9 = v44;
    }

    v28 = v24 + v15 - v10;
    *(a3 + 4) = v28;
    v16 = v28 < 0x4000;
    if (v28 >= 0x4000)
    {
      v17 = 0x4000;
    }

    else
    {
      v17 = v28;
    }

    if (*(a1 + 720) != v13)
    {
LABEL_7:
      v18 = a2[1];
      if (v9 < v18)
      {
        goto LABEL_8;
      }

LABEL_29:
      v29 = *result;
      result = *(*(*(a1 + 384) + 1792) + 2 * v29);
      if (result == 0x4000)
      {
        result = sub_100012668(*(a1 + 384), v29);
      }

      *(a3 + 2) = result + v18 - v10;
      if (v17 > (result + v18 - v10))
      {
        v16 = 0;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0x4000;
    *(a3 + 4) = 0x4000;
    if (*(a1 + 720) != v13)
    {
      goto LABEL_7;
    }
  }

  if (a2[1] >= (*(a1 + 716) + v14))
  {
    v18 = *(a1 + 716) + v14;
  }

  else
  {
    v18 = a2[1];
  }

  if (*(a1 + 722) < v13)
  {
    *(a1 + 720) = v13 - 1;
    if (v9 < v18)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  v30 = *a4;
  v31 = *(a1 + 1016);
  while (1)
  {
    do
    {
      v33 = *(v30 - 4);
      v30 -= 4;
      v34 = (v31 + 4 * v33);
    }

    while (*v34 < 0);
    *(a1 + 722) = v34[1];
    if ((*v34 & 0x7FFF) == 0)
    {
      break;
    }

    v32 = (*(a1 + 564) + v30[*(a1 + 528)]);
LABEL_41:
    if (v32 <= *(a1 + 992))
    {
      goto LABEL_48;
    }
  }

  v32 = v30[1];
  if (*v30)
  {
    goto LABEL_41;
  }

  v32 = (*(a1 + 562) + v32 + *(a1 + 564));
  if (v32 > *(a1 + 992) || !*(a1 + 572))
  {
    *(a1 + 720) = 0;
    *a4 = v30;
    if (v9 < v18)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  *(a1 + 722) = 0;
LABEL_48:
  *a4 = v30;
  *(a1 + 716) = v32;
  v35 = v34 + 2;
  do
  {
    v36 = *v35;
    v35 += 2;
  }

  while (v36 < 0);
  *(a1 + 720) = *(v35 - 1) - 1;
  if (v9 >= v18)
  {
    goto LABEL_29;
  }

LABEL_8:
  v19 = 0x4000;
LABEL_37:
  *(a3 + 2) = v19;
LABEL_38:
  *(a3 + 6) = v16;
  *(a3 + 7) = *(a2 + 7);
  return result;
}

uint64_t sub_100056364(uint64_t result, _WORD *a2, void *a3, _WORD *a4, unsigned int a5, double a6, int32x4_t a7, int32x4_t a8)
{
  v8 = (*(result + 564) + a2[*(result + 528)]);
  if (v8 <= *(result + 992))
  {
    v9 = *(result + 384);
    if (!qword_1001065A8 || *(qword_1001065A8 + 584) < 1 || *a4)
    {
      goto LABEL_8;
    }

    v10 = a2;
    v11 = a4;
    v12 = a3;
    v13 = result;
    v14 = a5;
    v15 = sub_100019F54(*(result + 384), a5, a6, a7, a8);
    result = v13;
    v16 = (v15 + v8 - *(v13 + 994));
    v17 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v17 = *(qword_1001065A8 + 4904);
    }

    a3 = v12;
    a4 = v11;
    a5 = v14;
    a2 = v10;
    if (v17 >= v16)
    {
LABEL_8:
      v18 = *a3;
      if (*a3 <= a2)
      {
        *(result + 524) = 3;
      }

      else
      {
        v19 = result;
        v20 = a4;
        v21 = a3;
        *v18 = *a2;
        *(v18 + 4) = 0x4000;
        v22 = *sub_100012654(v9, a5);
        result = *(*(v9 + 1792) + 2 * v22);
        if (result == 0x4000)
        {
          result = sub_100012668(v9, v22);
        }

        *(v18 + 2) = result + v8 - *(v19 + 994);
        *(v18 + 6) = 0;
        *(v18 + 7) = *(v20 + 7) + 1;
        *v21 -= 8;
      }
    }
  }

  return result;
}

uint64_t sub_1000564D8(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 992);
  v8 = *(a1 + 994);
  v9 = *(a1 + 384);
  result = sub_100012654(v9, a4);
  *a3 = *a2;
  if (a2[2] >= a2[1])
  {
    v11 = a2[1];
  }

  else
  {
    v11 = a2[2];
  }

  if (v11 <= v7)
  {
    v14 = *(result + 2);
    v15 = *(*(v9 + 1792) + 2 * v14);
    if (v15 == 0x4000)
    {
      v16 = result;
      LOWORD(v15) = sub_100012668(v9, v14);
      result = v16;
    }

    v17 = v15 + v11 - v8;
    *(a3 + 4) = v17;
    v12 = v17 < 0x4000;
    if (v17 >= 0x4000)
    {
      v13 = 0x4000;
    }

    else
    {
      v13 = v17;
    }

    if (*(a2 - 4) != *a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0x4000;
    *(a3 + 4) = 0x4000;
    if (*(a2 - 4) != *a2)
    {
      goto LABEL_23;
    }
  }

  if (*(a2 - 1) + 1 == *(a2 + 7))
  {
    if (a2[1] >= (*(a1 + 564) + a2[*(a1 + 528) - 4]))
    {
      v18 = *(a1 + 564) + a2[*(a1 + 528) - 4];
    }

    else
    {
      v18 = a2[1];
    }

    if (v7 < v18)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

LABEL_23:
  v18 = a2[1];
  if (v7 < v18)
  {
LABEL_24:
    *(a3 + 2) = 0x4000;
    goto LABEL_25;
  }

LABEL_18:
  v19 = *result;
  result = *(*(v9 + 1792) + 2 * v19);
  if (result == 0x4000)
  {
    result = sub_100012668(v9, v19);
  }

  *(a3 + 2) = result + v18 - v8;
  if (v13 > (result + v18 - v8))
  {
    v12 = 0;
  }

LABEL_25:
  *(a3 + 6) = v12;
  *(a3 + 7) = *(a2 + 7);
  return result;
}

uint64_t sub_10005665C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a3 + 2 * *(result + 528));
  if (v5 >= a4)
  {
    return result;
  }

  v6 = *(a2 + 2);
  v7 = *(result + 806) + v5;
  if (*(result + 608))
  {
    goto LABEL_3;
  }

  v8 = *(result + 376);
  if (!qword_1001065A8)
  {
    if (!v8)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  if (*(qword_1001065A8 + 5264))
  {
    LOWORD(v7) = v7 + *(result + 664);
    goto LABEL_3;
  }

  if (v8 && !*(qword_1001065A8 + 1776))
  {
LABEL_11:
    v9 = result;
    v10 = *(a2 + 2);
    v11 = sub_1000BA7F4(*(result + 376), v10, 0);
    v7 += sub_1000BABCC(v8, v9 + 580, *(v9 + 584), v11);
    if (qword_1001065A8)
    {
      result = v9;
      v6 = v10;
      if (*(qword_1001065A8 + 5360))
      {
        v12 = sub_10006078C(v8, v11, *(v9 + 664));
        v6 = v10;
        v13 = v12;
        result = v9;
        LOWORD(v7) = v7 - v13 + *(v9 + 664);
      }
    }

    else
    {
      result = v9;
      v6 = v10;
    }
  }

LABEL_3:

  return sub_1000504B0(result, v7, v6);
}

uint64_t sub_100056790(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 48));
    sub_1000BFEC4(*(v1 + 16));
    sub_1000BFEC4(*(v1 + 32));

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_1000567E8(int *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = v2 / 2;
  if ((v2 + 1) >= 3)
  {
    v8 = *(a1 + 5);
    v9 = a2;
    v10 = v2 / 2;
    do
    {
      v11 = *v8++;
      v12 = &a2[v11];
      if (v9 < v12)
      {
        v13 = *v12;
        *v12 = *v9;
        v12[1] = v9[1];
        *v9 = v13;
      }

      v9 += 2;
      --v10;
    }

    while (v10);
  }

  if (v3 >= 2)
  {
    v4 = a2 + 2;
    v5 = v3 >> 1;
    if ((v5 - 1) >= 7)
    {
      v14 = 4 * (v5 & 0x7FFFFFF8);
      v4 = (v4 + v14 * 2);
      v6 = &a2[v14];
      v7 = v5 - (v5 & 0x7FFFFFF8);
      v15 = v5 & 0x7FFFFFF8;
      v16 = a2;
      do
      {
        v76 = vld4q_s16(v16);
        v77.val[1] = vrhaddq_s16(v76.val[1], v76.val[3]);
        v77.val[0] = vrhaddq_s16(v76.val[0], v76.val[2]);
        v77.val[3] = vrshrn_high_n_s32(vrshrn_n_s32(vsubl_s16(*v76.val[1].i8, *v76.val[3].i8), 1uLL), vsubl_high_s16(v76.val[1], v76.val[3]), 1uLL);
        v77.val[2] = vrshrn_high_n_s32(vrshrn_n_s32(vsubl_s16(*v76.val[0].i8, *v76.val[2].i8), 1uLL), vsubl_high_s16(v76.val[0], v76.val[2]), 1uLL);
        vst4q_s16(v16, v77);
        v16 += 32;
        v15 -= 8;
      }

      while (v15);
      if ((v5 & 0x7FFFFFF8) == v5)
      {
LABEL_14:
        if (v3 >= 4)
        {
          v23 = v3 >> 2;
          v24 = a2 + 4;
          v25 = v3 >> 2;
          do
          {
            v26 = v24[1];
            v27 = *(v24 - 3);
            v24[1] = (v27 - v26 + 1) >> 1;
            *(v24 - 3) = (v27 + v26 + 1) >> 1;
            v28 = *v24;
            v29 = *(v24 - 4);
            *v24 = (v29 - v28 + 1) >> 1;
            *(v24 - 4) = (v29 + v28 + 1) >> 1;
            v24 += 8;
            --v25;
          }

          while (v25);
          v30 = a2 + 6;
          do
          {
            v31 = *v30;
            v32 = v30[1];
            v33 = *(v30 - 3);
            v30[1] = (v33 + v31 + 1) >> 1;
            *(v30 - 3) = (v33 - v31 + 1) >> 1;
            v34 = *(v30 - 4);
            *v30 = (v34 - v32 + 1) >> 1;
            *(v30 - 4) = (v34 + v32 + 1) >> 1;
            v30 += 8;
            --v23;
          }

          while (v23);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = a2;
      v7 = v3 >> 1;
    }

    v17 = v4 + 1;
    v18 = v6 + 1;
    do
    {
      v19 = *v17;
      v20 = *v18;
      *v17 = (v20 - v19 + 1) >> 1;
      *v18 = (v20 + v19 + 1) >> 1;
      v21 = *(v17 - 1);
      v22 = *(v18 - 1);
      *(v17 - 1) = (v22 - v21 + 1) >> 1;
      *(v18 - 1) = (v22 + v21 + 1) >> 1;
      v17 += 4;
      v18 += 4;
      --v7;
    }

    while (v7);
    goto LABEL_14;
  }

LABEL_19:
  v35 = v3 & 0xFFFFFFFC;
  v36 = a1[1];
  if (v36 >= 3 && v35)
  {
    v37 = v36 - 2;
    v38 = v2 / 8;
    v39 = -(v3 & 0xFFFFFFFC);
    v40 = 4;
    do
    {
      v41 = 0;
      v42 = 4 * v40;
      if (v40 <= 1)
      {
        v43 = 1;
      }

      else
      {
        v43 = v40;
      }

      v40 *= 2;
      v44 = *(a1 + 3);
      v45 = v40;
      v46 = 2 * v42;
      v47 = a2;
      do
      {
        v48 = v39;
        v49 = v47;
        do
        {
          v50 = &v49[v45];
          v51 = v49[v40];
          v52 = v44[1];
          v53 = v49[v45 + 1];
          v54 = *v44;
          v55 = v52 * v51 + v54 * v53;
          v56 = v54 * v51 - v53 * v52;
          v57 = (*v49 << 15) + 0x8000;
          *v50 = (v57 - v56) >> 16;
          *v49 = (v57 + v56) >> 16;
          v58 = (v49[1] << 15) + 0x8000;
          v50[1] = (v58 - v55) >> 16;
          v49[1] = (v58 + v55) >> 16;
          v49 = (v49 + v46);
          v48 += v40;
        }

        while (v48);
        v44 += v38;
        ++v41;
        v47 += 2;
      }

      while (v41 != v43);
      v38 /= 2;
      v59 = __OFSUB__(v37--, 1);
    }

    while (!((v37 < 0) ^ v59 | (v37 == 0)));
  }

  v60 = &a2[v2];
  *v60 = *a2 - a2[1];
  v60[1] = 0;
  *a2 += a2[1];
  a2[1] = 0;
  v61 = 1 - (v35 >> 1);
  v62 = a2 + 3;
  v63 = (*(a1 + 1) + 6);
  v64 = v60 - 1;
  do
  {
    v65 = *v64 + *v62;
    v66 = *v63;
    v67 = *(v63 - 1);
    v68 = *(v62 - 1);
    v69 = *(v64 - 1);
    v70 = v65 * v66 - (v68 - v69) * v67;
    v71 = 0x4000 - (v65 * v67 + (v68 - v69) * v66);
    v72 = ((v69 + v68) << 14) + 0x4000;
    *(v62 - 1) = (v72 + v70) >> 15;
    *(v64 - 1) = (v72 - v70) >> 15;
    v73 = (*v62 - *v64) << 14;
    *v62 = (v73 + v71) >> 15;
    v62 += 2;
    *v64 = (v71 - v73) >> 15;
    v64 -= 2;
    v63 += 2;
  }

  while (!__CFADD__(v61++, 1));
  return a1[1];
}

uint64_t *sub_100056BF0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bfc0", a2, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000C0034(56);
    if (v10)
    {
      if (!sub_1000BBD54(v9, v10))
      {
        goto LABEL_17;
      }

      if (!sub_1000BBD54(v9, v10 + 4))
      {
        goto LABEL_17;
      }

      v17 = 0;
      if (!sub_1000BBF0C(v9, 2, v10 + 2, &v17))
      {
        goto LABEL_17;
      }

      v11 = v10[2];
      if (v11)
      {
        if (v17 != *v10)
        {
          goto LABEL_17;
        }

        v10[1] = v11;
      }

      v16 = 0;
      if (!sub_1000BBF0C(v9, 2, v10 + 4, &v16))
      {
        goto LABEL_17;
      }

      v12 = v10[4];
      if (v12)
      {
        if (v16 != *v10 / 2)
        {
          goto LABEL_17;
        }

        v10[3] = v12;
      }

      v15 = 0;
      if (!sub_1000BBF0C(v9, 2, v10 + 6, &v15))
      {
        goto LABEL_17;
      }

      v13 = v10[6];
      if (v13)
      {
        if (v15 == *v10 / 2)
        {
          v10[5] = v13;
          goto LABEL_18;
        }

LABEL_17:
        sub_1000BFEC4(v10[6]);
        sub_1000BFEC4(v10[2]);
        sub_1000BFEC4(v10[4]);
        sub_1000BFEC4(v10);
        v10 = 0;
      }
    }

LABEL_18:
    sub_1000BBBC4(v9);
    return v10;
  }

  return 0;
}

uint64_t sub_100056D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0034(32);
  if (!v4)
  {
    return v4;
  }

  v5 = sub_1000C0384(1, a2, a1);
  *v4 = v5;
  if (v5)
  {
    v6 = sub_1000C0034(4 * a2);
    *(v4 + 8) = v6;
    if (v6)
    {
      *(v4 + 20) = a2;
      *(v4 + 24) = 0;
      *(v4 + 16) = a1;
      return v4;
    }

    if (*v4)
    {
      sub_1000C02DC(*v4);
      sub_1000BFEC4(*(v4 + 8));
    }
  }

  *v4 = 0;
  *(v4 + 20) = 0;
  *(v4 + 24) = 0;
  sub_1000BFEC4(v4);
  return 0;
}

uint64_t sub_100056E04(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      sub_1000C02DC(v2);
      sub_1000BFEC4(*(a1 + 8));
    }

    *a1 = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
  }

  return sub_1000BFEC4(a1);
}