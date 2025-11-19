uint64_t sub_27744ABC0(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v45 = a3;
  v46 = result;
  v47 = *(a2 + 8);
  v99 = *(v47 + 520);
  v48 = *(v47 + 416);
  v49 = *(v47 + 424);
  v50 = *a3;
  v100 = v47;
  if (*a3 < *(v47 + 524))
  {
    v50 &= 0xFFFFFFF0;
    *a3 = v50;
  }

  v51 = *(result + 120);
  if (v51 < v50)
  {
    vars8_4 = (v99 - 1) & 0xFFFFFFC0;
    v101 = v49;
    v105 = 16 * v48;
    v102 = 16 * v49;
    v98 = v45;
    do
    {
      v52 = *(v100 + 531);
      v53 = *(v100 + 400) + ((*(v100 + 416) * v51) << v52);
      v54 = *(v100 + 408) + ((*(v100 + 424) * v51) << v52);
      v55 = v50 - v51;
      if (v55 >= 64)
      {
        v56 = 64;
      }

      else
      {
        v56 = v55;
      }

      v57 = v56 >> 3;
      v108 = (v56 >> 3);
      v58 = 0;
      if (vars8_4 >= 1)
      {
        do
        {
          v109 = v54;
          v106 = v58;
          (*(v46 + 48))(a2);
          v59 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v46 + 72))(v53 + i, v48, &STACK[0x780] + v59, &STACK[0x780] + i - 784, v56);
            v59 += 8;
          }

          v61 = *(v46 + 120);
          if (v57 > (v61 == 0))
          {
            v62 = v61 == 0;
            v63 = v108 - v62;
            v64 = &a29 + 2 * v62;
            v65 = &STACK[0x7C0] + v62;
            v66 = v53 + v105 * v62;
            do
            {
              (*(v46 + 80))(v66, v48, v65, v64, 64);
              v64 += 2;
              ++v65;
              v66 += v105;
              --v63;
            }

            while (v63);
          }

          v67 = 0;
          v49 = v101;
          do
          {
            v68 = v67 + 32;
            result = (*(v46 + 88))(v67 + 32 + v109, v101, &a45 + v67, v56);
            v67 = v68;
          }

          while (v68 != 128);
          v69 = *(v46 + 120);
          if (v108 > (v69 == 0))
          {
            v70 = v69 == 0;
            v71 = v108 - v70;
            v72 = &STACK[0x680] + 4 * v70;
            v73 = v109 + v102 * v70;
            do
            {
              result = (*(v46 + 96))(v73, v101, v72, 32);
              v72 += 4;
              v73 += v102;
              --v71;
            }

            while (v71);
          }

          v53 += 128;
          v57 = v56 >> 3;
          v54 = v109 + 128;
          v58 = v106 + 64;
        }

        while (v106 + 64 < vars8_4);
        v51 = *(v46 + 120);
      }

      v74 = v99 - v58;
      if (v99 != v58)
      {
        v110 = v54;
        result = (*(v46 + 48))(a2);
        v107 = v74;
        if (v74 >> 3 >= 2)
        {
          v75 = ((v74 >> 3) - 1);
          v76 = v53 + 16;
          v77 = &a13;
          v78 = &STACK[0x780];
          do
          {
            result = (*(v46 + 72))(v76, v48, v78, v77, v56);
            v77 += 16;
            ++v78;
            v76 += 16;
            --v75;
          }

          while (v75);
        }

        v79 = *(v46 + 120);
        v80 = v107;
        if (v108 > (v79 == 0))
        {
          v81 = v79 == 0;
          v82 = v108 - v81;
          v83 = &a29 + 2 * v81;
          v84 = &STACK[0x7C0] + v81;
          v85 = v53 + v105 * v81;
          do
          {
            v86 = v80;
            result = (*(v46 + 80))(v85, v48, v84, v83, v80);
            v80 = v86;
            v83 += 2;
            ++v84;
            v85 += v105;
            --v82;
          }

          while (v82);
        }

        v87 = (v80 + 8) >> 4;
        v88 = &a45;
        v89 = v80;
        if (v87 >= 2)
        {
          v90 = (v87 - 1);
          v91 = v110 + 32;
          do
          {
            result = (*(v46 + 88))(v91, v49, v88, v56);
            v88 += 4;
            v91 += 32;
            --v90;
          }

          while (v90);
        }

        v51 = *(v46 + 120);
        if (v108 > (v51 == 0))
        {
          v92 = v51 == 0;
          v93 = (v89 >> 1);
          v94 = v108 - v92;
          v95 = &STACK[0x680] + 4 * v92;
          v96 = v110 + v102 * v92;
          do
          {
            result = (*(v46 + 96))(v96, v49, v95, v93);
            v95 += 4;
            v96 += v102;
            --v94;
          }

          while (v94);
          v51 = *(v46 + 120);
        }
      }

      v51 += v56;
      *(v46 + 120) = v51;
      v45 = v98;
      v50 = *v98;
    }

    while (v51 < *v98);
  }

  v97 = *(v100 + 524);
  if (v97 >= v51)
  {
    v97 = v51;
  }

  *v45 = v97;
  if (*(v46 + 120) < *(v100 + 524))
  {
    if (v97 <= 4)
    {
      v97 = 4;
    }

    *v45 = v97 - 4;
  }

  return result;
}

void *sub_27744B068(void *result, uint64_t a2)
{
  v2 = sub_27744B2EC;
  v3 = sub_27744BE30;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_27744B2EC;
    v3 = sub_27744BE30;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_27744B9E0;
      v3 = sub_27744C3FC;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_27744B12C;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_277449264;
  result[7] = sub_277449264;
  return result;
}

uint64_t sub_27744B12C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = (v7 - v10);
  }

  else
  {
    v12 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v13 = (v8 - v11);
  }

  else
  {
    v13 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v12, v13, v30);
  v15 = *(v6 + 416);
  v29 = *(v6 + 400);
  v16 = (v15 * v11 + v10) << *(v6 + 531);
  v17 = (v12 >> 3);
  if (v17 > (v10 == 0))
  {
    v18 = v10 == 0;
    v19 = v17 - v18;
    v20 = &v30[10 * v18];
    v21 = &v30[5 * v18 + 296];
    v22 = v29 + v16 + 8 * v18 - 8 * v15;
    do
    {
      result = (*(a1 + 72))(v22, v15, v21, v20, (v13 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 8;
      --v19;
    }

    while (v19);
  }

  v23 = (v13 >> 3);
  if (v23 > (v11 == 0))
  {
    v24 = v11 == 0;
    v25 = v23 - v24;
    v26 = &v30[10 * v24 + 80];
    v27 = &v30[5 * v24 + 336];
    v28 = v16 + 8 * v15 * v24 + v29 - 8;
    do
    {
      result = (*(a1 + 80))(v28, v15, v27, v26, (v12 + 8));
      v26 += 10;
      v27 += 5;
      v28 += 8 * v15;
      --v25;
    }

    while (v25);
  }

  return result;
}

int *sub_27744B2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = MEMORY[0x28223BE20](a1);
  v69 = v66;
  v70 = result;
  STACK[0x94D8] = *MEMORY[0x277D85DE8];
  v71 = *(v66 + 8);
  v72 = *(v66 + 16);
  v73 = *(v71 + 520);
  v74 = *(v71 + 524);
  v75 = *(v71 + 416);
  v76 = *(v71 + 424);
  v144 = v71;
  v77 = *(v72 + 2117);
  v78 = *(v72 + 2113);
  v79 = v67 << v78;
  v80 = v68 << v78;
  v81 = (v68 << v78) - 16;
  v132 = v73;
  if (*(v72 + 2120) - 1 == v67)
  {
    v82 = v80 < 16;
    if (v80 >= 16)
    {
      v83 = 0;
    }

    else
    {
      v83 = v81;
    }

    v84 = v83 + v77;
    if (v82)
    {
      v85 = 0;
    }

    else
    {
      v85 = v81;
    }

    v86 = (v79 - 1) & 0xFFFFFFC0;
    if (v79 <= 63)
    {
      v86 = 0;
    }

    v133 = v86;
    v135 = v73 - v86;
    v87 = v84 + v85 - 8;
    if (v84 + v85 < 8)
    {
      v87 = 0;
    }

    result[30] = v87;
    if (*(*(v66 + 16) + 2124) - 1 == v68)
    {
      v84 = v74 - v85;
      result[30] = v74;
    }
  }

  else
  {
    if (!v67 || (v79 & 0x3F) != 0)
    {
      return result;
    }

    v88 = v80 < 16;
    if (v80 >= 16)
    {
      v89 = 0;
    }

    else
    {
      v89 = v81;
    }

    v84 = v89 + v77;
    if (v88)
    {
      v85 = 0;
    }

    else
    {
      v85 = v81;
    }

    if (v79 >= 64)
    {
      v90 = v79 - 64;
    }

    else
    {
      v90 = 0;
    }

    v133 = v90;
    if (v79 >= 64)
    {
      v79 = 64;
    }

    v135 = v79;
    v91 = v74 - v85;
    if (*(v72 + 2124) - 1 == v68)
    {
      v84 = v91;
    }
  }

  if (v84 >= 1)
  {
    v92 = 0;
    vars8 = &STACK[0x420];
    v124 = v85;
    vars0 = &a65;
    v134 = 8 * v75;
    v93 = 8 * v76;
    v123 = v84;
    v143 = v66;
    v125 = v84;
    do
    {
      if (v84 - v92 >= 64)
      {
        v94 = 64;
      }

      else
      {
        v94 = (v84 - v92);
      }

      v126 = v92;
      v149 = v92 + v124;
      v95 = v92 + v124 - 8;
      if (!(v92 + v124))
      {
        v95 = 0;
      }

      v148 = v95;
      v96 = v94 + 8;
      if (!(v92 + v124))
      {
        v96 = v94;
      }

      v147 = v96;
      if (v135 >= 1)
      {
        v97 = 0;
        v98 = v149 == 0;
        v145 = (v94 >> 3);
        v146 = v149 == 0;
        v130 = v93 * v98;
        v131 = v134 * v98;
        v129 = &STACK[0x320] + 4 * v98;
        do
        {
          if (v135 - v97 >= 64)
          {
            v99 = 64;
          }

          else
          {
            v99 = (v135 - v97);
          }

          v100 = v97 + v133;
          v101 = v99 + v133 + v97;
          v140 = *(v144 + 416);
          v142 = v97;
          v136 = *(v144 + 400);
          v102 = *(v144 + 531);
          (*(v70 + 6))(v69, v100, v149, v99, v94, &a33);
          v139 = v101 < v132;
          if (v101 >= v132)
          {
            v103 = v99;
          }

          else
          {
            v103 = v99 + 8;
          }

          v104 = (v100 + v140 * v149) << v102;
          v105 = v99 >> 3;
          if (v101 >= v132)
          {
            v106 = v105;
          }

          else
          {
            v106 = v105 + 1;
          }

          v141 = v100;
          v138 = v103;
          sub_27744B808(&STACK[0x4B0], v69, v100, v148, v103, v147, 0);
          if (v106 >= 2)
          {
            v107 = v106 - 1;
            v108 = v136 + v104 + 8;
            v109 = &a33;
            v110 = &STACK[0x420];
            do
            {
              (*(v70 + 9))(v108, v75, v110, v109, v94);
              v109 += 16;
              ++v110;
              v108 += 8;
              --v107;
            }

            while (v107);
          }

          sub_27744B8B8(&STACK[0x4B0]);
          if (v145 > v146)
          {
            v111 = &STACK[0x460] + (v149 == 0);
            v112 = v136 + v131 + v104;
            v113 = &a49 + 2 * (v149 == 0);
            v114 = (__PAIR128__(v145, v149) - 1) >> 64;
            do
            {
              (*(v70 + 10))(v112, v75, v111, v113, v99);
              v113 += 2;
              ++v111;
              v112 += v134;
              --v114;
            }

            while (v114);
          }

          sub_27744B8B8(&STACK[0x4B0]);
          v137 = *(v144 + 408);
          v115 = ((v141 & 0xFFFFFFFFFFFFFFFELL) + *(v144 + 424) * v149) << *(v144 + 531);
          sub_27744B808(&STACK[0x4B0], v143, v141, v148, v138, v147, 1u);
          v116 = (v139 + ((v99 + 8) >> 4));
          v93 = 8 * v76;
          if (v116 >= 2)
          {
            v117 = v116 - 1;
            v118 = v137 + v115 + 16;
            v119 = &a65;
            do
            {
              (*(v70 + 11))(v118, v76, v119, v94);
              v119 += 4;
              v118 += 16;
              --v117;
            }

            while (v117);
          }

          sub_27744B8B8(&STACK[0x4B0]);
          if (v145 > v146)
          {
            v120 = v129;
            v121 = v137 + v130 + v115;
            v122 = (__PAIR128__(v145, v149) - 1) >> 64;
            do
            {
              (*(v70 + 12))(v121, v76, v120, (v99 >> 1));
              v120 += 4;
              v121 += 8 * v76;
              --v122;
            }

            while (v122);
          }

          result = sub_27744B8B8(&STACK[0x4B0]);
          v69 = v143;
          v97 = v142 + 64;
        }

        while (v142 + 64 < v135);
      }

      v92 = v126 + 64;
      v84 = v125;
    }

    while (v126 + 64 < v123);
  }

  return result;
}

void *sub_27744B808(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  __dst[4608] = a2;
  *(__dst + 9218) = a3;
  *(__dst + 9219) = a4;
  *(__dst + 9220) = a5;
  *(__dst + 9221) = a6;
  *(__dst + 9222) = a7;
  if (a6 >= 1)
  {
    v7 = __dst;
    v8 = *(a2 + 8);
    v9 = v8 + 8 * a7;
    v10 = *(v9 + 416);
    v11 = (*(v9 + 400) + ((v10 * a4 + (a3 >> (a7 != 0) << a7)) << *(v8 + 531)));
    v12 = a5;
    v13 = a6;
    do
    {
      __dst = memcpy(v7, v11, v12);
      v11 += v10;
      v7 += v12;
      --v13;
    }

    while (v13);
  }

  return __dst;
}

int *sub_27744B8B8(int *result)
{
  v1 = result + 9216;
  v2 = result[9221];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[9222];
    v5 = *(*v1 + 8);
    v6 = v5 + 8 * v4;
    v7 = *(v6 + 416);
    v8 = *(*(*v1 + 32) + 19);
    v9 = *(*(*v1 + 16) + 283);
    v10 = result[9220];
    v11 = v10;
    v12 = (*(v6 + 400) + ((v7 * result[9219] + (result[9218] >> (v4 != 0) << v4)) << *(v5 + 531)));
    v13 = 8 * v10;
    do
    {
      if (v10 >= 1)
      {
        v14 = 0;
        v15 = v12;
        v16 = result;
        do
        {
          v17 = (v1[2] + v14) >> 3;
          v18 = *(*(*v1 + 8) + 776) + 2 * *(*(*v1 + 8) + 768) * ((v1[3] + v3) >> 3);
          if (v8 && (*(v18 + 2 * v17) & 0x100) != 0 || v9 && (*(v18 + 2 * v17) & 0xC) != 0)
          {
            v19 = v15;
            v20 = v16;
            v21 = 8;
            do
            {
              *v19 = *v20;
              v20 = (v20 + v11);
              v19 = (v19 + v7);
              --v21;
            }

            while (v21);
            v10 = v1[4];
          }

          v14 += 8;
          v16 += 2;
          ++v15;
        }

        while (v14 < v10);
        v2 = v1[5];
      }

      v12 += v7;
      result = (result + v13);
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t sub_27744B9E0(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = result;
  v66 = *(a2 + 8);
  v67 = *(a2 + 16);
  v68 = *(v66 + 520);
  v69 = *(v66 + 524);
  v70 = *(v66 + 416);
  v71 = *(v66 + 424);
  v138 = v66;
  v72 = *(v67 + 2117);
  v73 = *(v67 + 2113);
  v74 = a3 << v73;
  v75 = a4 << v73;
  v76 = (a4 << v73) - 16;
  if (*(v67 + 2120) - 1 == a3)
  {
    v77 = v75 < 16;
    if (v75 >= 16)
    {
      v78 = 0;
    }

    else
    {
      v78 = v76;
    }

    v79 = v78 + v72;
    if (v77)
    {
      v80 = 0;
    }

    else
    {
      v80 = v76;
    }

    v81 = (v74 - 1) & 0xFFFFFFC0;
    if (v74 <= 63)
    {
      v81 = 0;
    }

    v128 = v81;
    v131 = v68 - v81;
    v82 = v79 + v80 - 8;
    if (v79 + v80 < 8)
    {
      v82 = 0;
    }

    *(result + 120) = v82;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v79 = v69 - v80;
      *(result + 120) = v69;
    }
  }

  else
  {
    if (!a3 || (v74 & 0x3F) != 0)
    {
      return result;
    }

    v83 = v75 < 16;
    if (v75 >= 16)
    {
      v84 = 0;
    }

    else
    {
      v84 = v76;
    }

    v79 = v84 + v72;
    if (v83)
    {
      v80 = 0;
    }

    else
    {
      v80 = v76;
    }

    if (v74 >= 64)
    {
      v85 = v74 - 64;
    }

    else
    {
      v85 = 0;
    }

    v128 = v85;
    if (v74 >= 64)
    {
      v74 = 64;
    }

    v131 = v74;
    v86 = v69 - v80;
    if (*(v67 + 2124) - 1 == a4)
    {
      v79 = v86;
    }
  }

  if (v79 >= 1)
  {
    v87 = 0;
    v116 = v80;
    vars8 = &a65;
    v130 = 8 * v70;
    v88 = 8 * v71;
    v117 = v79;
    v127 = a2;
    v126 = v68;
    v118 = v79;
    do
    {
      vars0 = v87;
      if (v79 - v87 >= 64)
      {
        v89 = 64;
      }

      else
      {
        v89 = (v79 - v87);
      }

      if (v131 >= 1)
      {
        v90 = 0;
        v141 = v87 + v116;
        v91 = v87 + v116 == 0;
        v139 = (v89 >> 3);
        v140 = v87 + v116 == 0;
        v129 = (__PAIR128__(v139, v87 + v116) - 1) >> 64;
        v124 = &STACK[0x900] + v91;
        v125 = &a49 + 2 * v91;
        v122 = v88 * v91;
        v123 = v130 * v91;
        v121 = &STACK[0x7C0] + 4 * v91;
        do
        {
          if (v131 - v90 >= 64)
          {
            v92 = 64;
          }

          else
          {
            v92 = (v131 - v90);
          }

          v93 = v90 + v128;
          v137 = v90;
          v94 = v92 + v128 + v90;
          v132 = *(v138 + 416);
          v133 = *(v138 + 400);
          v95 = *(v138 + 531);
          result = (*(v65 + 48))(a2, v93, v141, v92, v89, &a33);
          v134 = v94 < v68;
          v135 = v93;
          v96 = (v93 + v132 * v141) << v95;
          LODWORD(v97) = v92 >> 3;
          if (v94 >= v68)
          {
            v97 = v97;
          }

          else
          {
            v97 = (v97 + 1);
          }

          if (v97 >= 2)
          {
            v98 = v97 - 1;
            v99 = v133 + v96 + 8;
            v100 = &a33;
            v101 = &STACK[0x8C0];
            do
            {
              result = (*(v65 + 72))(v99, v70, v101, v100, v89);
              v100 += 16;
              ++v101;
              v99 += 8;
              --v98;
            }

            while (v98);
          }

          if (v139 > v140)
          {
            v102 = v124;
            v103 = v133 + v123 + v96;
            v104 = v125;
            v105 = v129;
            do
            {
              result = (*(v65 + 80))(v103, v70, v102, v104, v92);
              v104 += 2;
              ++v102;
              v103 += v130;
              --v105;
            }

            while (v105);
          }

          v106 = (v135 & 0xFFFFFFFFFFFFFFFELL) + *(v138 + 424) * v141;
          v136 = *(v138 + 408);
          v107 = v106 << *(v138 + 531);
          v108 = (v134 + ((v92 + 8) >> 4));
          v88 = 8 * v71;
          if (v108 >= 2)
          {
            v109 = v108 - 1;
            v110 = v136 + v107 + 16;
            v111 = &a65;
            do
            {
              result = (*(v65 + 88))(v110, v71, v111, v89);
              v111 += 4;
              v110 += 16;
              --v109;
            }

            while (v109);
          }

          if (v139 > v140)
          {
            v112 = (v92 >> 1);
            v113 = v121;
            v114 = v136 + v122 + v107;
            v115 = v129;
            do
            {
              result = (*(v65 + 96))(v114, v71, v113, v112);
              v113 += 4;
              v114 += 8 * v71;
              --v115;
            }

            while (v115);
          }

          v90 = v137 + 64;
          a2 = v127;
          v68 = v126;
        }

        while (v137 + 64 < v131);
      }

      v87 = vars0 + 64;
      v79 = v118;
    }

    while (vars0 + 64 < v117);
  }

  return result;
}

int *sub_27744BE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  result = MEMORY[0x28223BE20](a1);
  v51 = v50;
  v52 = result;
  STACK[0x9458] = *MEMORY[0x277D85DE8];
  v116 = v53;
  v54 = *(v53 + 8);
  v108 = *(v54 + 520);
  v55 = *(v54 + 416);
  v56 = *(v54 + 424);
  v57 = *v50;
  v109 = v54;
  if (*v50 < *(v54 + 524))
  {
    v57 &= 0xFFFFFFF0;
    *v50 = v57;
  }

  v58 = result[30];
  if (v58 < v57)
  {
    v112 = (v108 - 1) & 0xFFFFFFC0;
    vars0 = &a49;
    vars8 = 8 * v56;
    v107 = v51;
    v113 = 8 * v55;
    do
    {
      v59 = *(v109 + 531);
      v60 = *(v109 + 400) + ((*(v109 + 416) * v58) << v59);
      v61 = *(v109 + 408) + ((*(v109 + 424) * v58) << v59);
      v62 = v57 - v58;
      if (v62 >= 64)
      {
        v63 = 64;
      }

      else
      {
        v63 = v62;
      }

      if (v58)
      {
        v64 = v58 - 8;
      }

      else
      {
        v64 = 0;
      }

      v65 = v63 + 8;
      if (!v58)
      {
        v65 = v63;
      }

      v117 = v65;
      v118 = v64;
      v66 = v63 >> 3;
      v121 = (v63 >> 3);
      v67 = 0;
      if (v112 >= 1)
      {
        do
        {
          v114 = v61;
          v68 = &a17;
          (*(v52 + 6))(v116, v67, v52[30], 64, v63, &a17);
          v119 = v67;
          sub_27744B808(&STACK[0x430], v116, v67, v118, 72, v117, 0);
          v69 = 0;
          do
          {
            v70 = v69 + 8;
            (*(v52 + 9))(v69 + 8 + v60, v55, &STACK[0x3A0] + v69, v68, v63);
            v68 += 16;
            v69 = v70;
          }

          while (v70 != 64);
          sub_27744B8B8(&STACK[0x430]);
          v71 = v52[30];
          if (v66 > (v71 == 0))
          {
            v72 = v71 == 0;
            v73 = v121 - v72;
            v74 = &a33 + 2 * v72;
            v75 = &STACK[0x3E0] + v72;
            v76 = v60 + v113 * v72;
            do
            {
              (*(v52 + 10))(v76, v55, v75, v74, 64);
              v74 += 2;
              ++v75;
              v76 += v113;
              --v73;
            }

            while (v73);
          }

          sub_27744B8B8(&STACK[0x430]);
          sub_27744B808(&STACK[0x430], v116, v119, v118, 72, v117, 1u);
          v77 = &a49;
          for (i = 16; i != 80; i += 16)
          {
            (*(v52 + 11))(v114 + i, v56, v77, v63);
            v77 += 4;
          }

          sub_27744B8B8(&STACK[0x430]);
          v79 = v52[30];
          if (v121 > (v79 == 0))
          {
            v80 = v79 == 0;
            v81 = v121 - v80;
            v82 = &STACK[0x2A0] + 4 * v80;
            v83 = v114 + vars8 * v80;
            do
            {
              (*(v52 + 12))(v83, v56, v82, 32);
              v82 += 4;
              v83 += vars8;
              --v81;
            }

            while (v81);
          }

          result = sub_27744B8B8(&STACK[0x430]);
          v60 += 64;
          v61 = v114 + 64;
          v67 = (v119 + 64);
          v66 = v63 >> 3;
        }

        while (v67 < v112);
        v58 = v52[30];
      }

      v84 = v108 - v67;
      if (v108 == v67)
      {
        v51 = v107;
      }

      else
      {
        v115 = v61;
        (*(v52 + 6))(v116, v67, v58, (v108 - v67), v63, &a17);
        v120 = v67;
        sub_27744B808(&STACK[0x430], v116, v67, v118, v84, v117, 0);
        v85 = (v108 - v67);
        if (v84 >> 3 >= 2)
        {
          v86 = ((v84 >> 3) - 1);
          v87 = v60 + 8;
          v88 = &a17;
          v89 = &STACK[0x3A0];
          do
          {
            (*(v52 + 9))(v87, v55, v89, v88, v63);
            v88 += 16;
            ++v89;
            v87 += 8;
            --v86;
          }

          while (v86);
        }

        sub_27744B8B8(&STACK[0x430]);
        v90 = v52[30];
        if (v121 > (v90 == 0))
        {
          v91 = v90 == 0;
          v92 = v121 - v91;
          v93 = &a33 + 2 * v91;
          v94 = &STACK[0x3E0] + v91;
          v95 = v60 + v113 * v91;
          do
          {
            (*(v52 + 10))(v95, v55, v94, v93, v85);
            v93 += 2;
            ++v94;
            v95 += v113;
            --v92;
          }

          while (v92);
        }

        sub_27744B8B8(&STACK[0x430]);
        sub_27744B808(&STACK[0x430], v116, v120, v118, v85, v117, 1u);
        v96 = (v85 + 8) >> 4;
        if (v96 >= 2)
        {
          v97 = (v96 - 1);
          v98 = v115 + 16;
          v99 = &a49;
          do
          {
            (*(v52 + 11))(v98, v56, v99, v63);
            v99 += 4;
            v98 += 16;
            --v97;
          }

          while (v97);
        }

        sub_27744B8B8(&STACK[0x430]);
        v100 = v52[30];
        if (v121 > (v100 == 0))
        {
          v101 = v100 == 0;
          v102 = (v85 >> 1);
          v103 = v121 - v101;
          v104 = &STACK[0x2A0] + 4 * v101;
          v105 = v115 + vars8 * v101;
          do
          {
            (*(v52 + 12))(v105, v56, v104, v102);
            v104 += 4;
            v105 += vars8;
            --v103;
          }

          while (v103);
        }

        result = sub_27744B8B8(&STACK[0x430]);
        LODWORD(v58) = v52[30];
        v51 = v107;
      }

      v58 = (v58 + v63);
      v52[30] = v58;
      v57 = *v51;
    }

    while (v58 < *v51);
  }

  v106 = *(v109 + 524);
  if (v106 >= v58)
  {
    v106 = v58;
  }

  *v51 = v106;
  if (v52[30] < *(v109 + 524))
  {
    if (v106 <= 4)
    {
      v106 = 4;
    }

    *v51 = v106 - 4;
  }

  return result;
}

uint64_t sub_27744C3FC(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v45 = a3;
  v46 = result;
  v47 = *(a2 + 8);
  v100 = *(v47 + 520);
  v48 = *(v47 + 416);
  v49 = *(v47 + 424);
  v50 = *a3;
  v101 = v47;
  if (*a3 < *(v47 + 524))
  {
    v50 &= 0xFFFFFFF0;
    *a3 = v50;
  }

  v51 = *(result + 120);
  if (v51 < v50)
  {
    vars8_4 = (v100 - 1) & 0xFFFFFFC0;
    v106 = 8 * v48;
    v52 = 8 * v49;
    vars0 = &STACK[0x780];
    v99 = v45;
    v102 = 8 * v49;
    do
    {
      v53 = *(v101 + 531);
      v54 = *(v101 + 400) + ((*(v101 + 416) * v51) << v53);
      v109 = *(v101 + 408) + ((*(v101 + 424) * v51) << v53);
      v55 = v50 - v51;
      if (v55 >= 64)
      {
        v56 = 64;
      }

      else
      {
        v56 = v55;
      }

      v57 = v56 >> 3;
      v110 = (v56 >> 3);
      v58 = 0;
      if (vars8_4 >= 1)
      {
        do
        {
          v59 = &a13;
          v107 = v58;
          (*(v46 + 48))(a2);
          v60 = 0;
          do
          {
            v61 = v60 + 8;
            (*(v46 + 72))(v60 + 8 + v54, v48, &STACK[0x780] + v60, v59, v56);
            v59 += 16;
            v60 = v61;
          }

          while (v61 != 64);
          v62 = *(v46 + 120);
          if (v57 > (v62 == 0))
          {
            v63 = v62 == 0;
            v64 = v110 - v63;
            v65 = &a29 + 2 * v63;
            v66 = &STACK[0x7C0] + v63;
            v67 = v54 + v106 * v63;
            do
            {
              (*(v46 + 80))(v67, v48, v66, v65, 64);
              v65 += 2;
              ++v66;
              v67 += v106;
              --v64;
            }

            while (v64);
          }

          v68 = &a45;
          for (i = 16; i != 80; i += 16)
          {
            result = (*(v46 + 88))(v109 + i, v49, v68, v56);
            v68 += 4;
          }

          v70 = *(v46 + 120);
          v52 = 8 * v49;
          if (v110 > (v70 == 0))
          {
            v71 = v70 == 0;
            v72 = v110 - v71;
            v73 = &STACK[0x680] + 4 * v71;
            v74 = v109 + v102 * v71;
            do
            {
              result = (*(v46 + 96))(v74, v49, v73, 32);
              v73 += 4;
              v74 += v102;
              --v72;
            }

            while (v72);
          }

          v54 += 64;
          v109 += 64;
          v58 = v107 + 64;
          v57 = v56 >> 3;
        }

        while (v107 + 64 < vars8_4);
        v51 = *(v46 + 120);
      }

      v75 = v100 - v58;
      if (v100 != v58)
      {
        result = (*(v46 + 48))(a2);
        v108 = v75;
        if (v75 >> 3 >= 2)
        {
          v76 = ((v75 >> 3) - 1);
          v77 = v54 + 8;
          v78 = &a13;
          v79 = &STACK[0x780];
          do
          {
            result = (*(v46 + 72))(v77, v48, v79, v78, v56);
            v78 += 16;
            ++v79;
            v77 += 8;
            --v76;
          }

          while (v76);
        }

        v80 = *(v46 + 120);
        v81 = v108;
        if (v110 > (v80 == 0))
        {
          v82 = v80 == 0;
          v83 = v110 - v82;
          v84 = &a29 + 2 * v82;
          v85 = &STACK[0x7C0] + v82;
          v86 = v54 + v106 * v82;
          do
          {
            v87 = v81;
            result = (*(v46 + 80))(v86, v48, v85, v84, v81);
            v81 = v87;
            v84 += 2;
            ++v85;
            v86 += v106;
            --v83;
          }

          while (v83);
        }

        v88 = (v81 + 8) >> 4;
        v89 = v81;
        if (v88 >= 2)
        {
          v90 = (v88 - 1);
          v91 = v109 + 16;
          v92 = &a45;
          do
          {
            result = (*(v46 + 88))(v91, v49, v92, v56);
            v92 += 4;
            v91 += 16;
            --v90;
          }

          while (v90);
        }

        v51 = *(v46 + 120);
        if (v110 > (v51 == 0))
        {
          v93 = v51 == 0;
          v94 = (v89 >> 1);
          v95 = v110 - v93;
          v96 = &STACK[0x680] + 4 * v93;
          v97 = v109 + v52 * v93;
          do
          {
            result = (*(v46 + 96))(v97, v49, v96, v94);
            v96 += 4;
            v97 += v52;
            --v95;
          }

          while (v95);
          v51 = *(v46 + 120);
        }
      }

      v51 += v56;
      *(v46 + 120) = v51;
      v45 = v99;
      v50 = *v99;
    }

    while (v51 < *v99);
  }

  v98 = *(v101 + 524);
  if (v98 >= v51)
  {
    v98 = v51;
  }

  *v45 = v98;
  if (*(v46 + 120) < *(v101 + 524))
  {
    if (v98 <= 4)
    {
      v98 = 4;
    }

    *v45 = v98 - 4;
  }

  return result;
}

void *sub_27744C8A4(void *result, uint64_t a2)
{
  v2 = sub_27744D328;
  v3 = sub_27744DD8C;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_27744D328;
    v3 = sub_27744DD8C;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_27744D8FC;
      v3 = sub_27744E340;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_27744D018;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_27744C968;
  result[7] = sub_27744C968;
  return result;
}

void sub_27744C968(uint64_t a1, int a2, int a3, int a4, int a5, char *a6)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  bzero(a6, 0x380uLL);
  v77 = v9;
  v79 = v9[96];
  v10 = *(a1 + 32);
  v82 = *(v10 + 14);
  v11 = *(v10 + 15);
  memset(v89, 0, sizeof(v89));
  memset(v88, 0, sizeof(v88));
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  v73 = a4;
  v74 = a5;
  v12 = a4 >> 3;
  memset(v84, 0, sizeof(v84));
  v78 = (a5 >> 3);
  v83 = (a4 >> 3);
  if (v78 >= 1)
  {
    for (i = 0; i != v78; ++i)
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = a3 + 8 * i;
        v16 = v9[97] + 2 * v9[96] * (v15 >> 3) + 2 * (a2 >> 3);
        do
        {
          v17 = (**a1)(a1, ((a2 + 8 + 8 * v14) >> *(*(a1 + 16) + 2113)), (v15 >> *(*(a1 + 16) + 2113)));
          v12 = v83;
          v18 = v14 + 1;
          v19 = (*(v16 + 2 * v14) >> 9) + (*(v16 + 2 * (v14 + 1)) >> 9) + 1;
          *(v89 + 8 * v14 + i) = *(v17 + 661) + (v19 >> 1) - 2;
          v20 = *(v17 + 660) + (v19 >> 1);
          if (v20 >= 51)
          {
            v20 = 51;
          }

          if (v20 <= 15)
          {
            v20 = 15;
          }

          a6[8 * v14 + 768 + i] = byte_27753C6D3[v20 - 15];
          if (v14)
          {
            v21 = 0;
            v22 = *(v17 + 661);
            v23 = 1;
            v24 = v82;
            do
            {
              v25 = v23;
              v26 = (v19 + 2 * v24) >> 1;
              if (v26 >= 30)
              {
                if (v26 < 0x3A)
                {
                  LOBYTE(v26) = byte_27753C740[v26 - 30];
                }

                else
                {
                  LOBYTE(v26) = v26 - 6;
                }
              }

              v23 = 0;
              *(&v87[4 * v21] + 8 * (v14 >> 1) + i) = v26 + v22 + 2;
              v24 = v11;
              v21 = 1;
            }

            while ((v25 & 1) != 0);
          }

          ++v14;
        }

        while (v18 != v83);
      }
    }
  }

  v27 = a3;
  v28 = a3 == 0;
  if (v78 > v28)
  {
    v29 = a3 == 0;
    do
    {
      if (v12 >= 1)
      {
        v30 = 0;
        v81 = a3 + 8 * v29;
        v31 = v9[97] + 2 * v9[96] * (v81 >> 3) + 2 * (a2 >> 3);
        do
        {
          v32 = (**a1)(a1, ((a2 + 8 * v30) >> *(*(a1 + 16) + 2113)), (v81 >> *(*(a1 + 16) + 2113)));
          v12 = v83;
          v33 = (*(v31 + 2 * (v30 - v79)) >> 9) + (*(v31 + 2 * v30) >> 9) + 1;
          *(v86 + 8 * v29 + v30) = *(v32 + 661) + (v33 >> 1) - 2;
          v34 = *(v32 + 660) + (v33 >> 1);
          if (v34 >= 51)
          {
            v34 = 51;
          }

          if (v34 <= 15)
          {
            v34 = 15;
          }

          a6[8 * v29 + 832 + v30] = byte_27753C6D3[v34 - 15];
          if ((v29 & 1) == 0)
          {
            v35 = 0;
            v36 = *(v32 + 661);
            v37 = 1;
            v38 = v82;
            do
            {
              v39 = v37;
              v40 = (v33 + 2 * v38) >> 1;
              if (v40 >= 30)
              {
                if (v40 < 0x3A)
                {
                  LOBYTE(v40) = byte_27753C740[v40 - 30];
                }

                else
                {
                  LOBYTE(v40) = v40 - 6;
                }
              }

              v37 = 0;
              *(&v84[4 * v35] + 8 * (v29 >> 1) + v30) = v40 + v36 + 2;
              v38 = v11;
              v35 = 1;
            }

            while ((v39 & 1) != 0);
          }

          ++v30;
        }

        while (v30 != v83);
      }

      ++v29;
    }

    while (v29 != v78);
    v27 = a3;
    v28 = a3 == 0;
  }

  if (v12 >= 1)
  {
    v41 = 0;
    v42 = (v74 >> 2);
    v43 = a6;
    do
    {
      if (v42 >= 1)
      {
        v44 = 0;
        v45 = &a6[32 * (v41 >> 1) + 257];
        v46 = v77[121] + v77[117] * ((a2 + 8 + 8 * v41) >> 3) + (v27 >> 2);
        do
        {
          if (*(v46 + v44))
          {
            v47 = *(v89 + 8 * v41 + (v44 >> 1)) + 2 * *(v46 + v44);
            if (v47 >= 53)
            {
              v47 = 53;
            }

            if (v47 <= 17)
            {
              v47 = 17;
            }

            v43[v44] = byte_27753C704[v47 - 17];
          }

          ++v44;
        }

        while (v42 != v44);
        if (v41)
        {
          v48 = 0;
          v49 = v41 >> 1;
          v50 = v87 + 8 * v49;
          v51 = v88 + 8 * v49;
          do
          {
            if (*(v46 + v48) >= 2u)
            {
              v52 = v48 >> 1;
              v53 = v50[v52];
              if (v53 >= 53)
              {
                v53 = 53;
              }

              if (v53 <= 17)
              {
                v53 = 17;
              }

              v54 = byte_27753C704[v53 - 17];
              v55 = v51[v52];
              if (v55 >= 53)
              {
                v55 = 53;
              }

              if (v55 <= 17)
              {
                v55 = 17;
              }

              v56 = byte_27753C704[v55 - 17];
              *(v45 - 1) = v54;
              *v45 = v56;
            }

            ++v48;
            v45 += 2;
          }

          while (v42 != v48);
        }
      }

      ++v41;
      v43 += 16;
    }

    while (v41 != v12);
  }

  if (v78 > v28)
  {
    v57 = v27 == 0;
    v58 = (v73 >> 2);
    v59 = &a6[16 * v57 + 128];
    do
    {
      if (v58 >= 1)
      {
        v60 = 0;
        v61 = v57 >> 1;
        v62 = &a6[32 * v61 + 513];
        v63 = v77[118] + v77[116] * ((v27 + 8 * v57) >> 3) + (a2 >> 2);
        do
        {
          if (*(v63 + v60))
          {
            v64 = *(v86 + 8 * v57 + (v60 >> 1)) + 2 * *(v63 + v60);
            if (v64 >= 53)
            {
              v64 = 53;
            }

            if (v64 <= 17)
            {
              v64 = 17;
            }

            v59[v60] = byte_27753C704[v64 - 17];
          }

          ++v60;
        }

        while (v58 != v60);
        if ((v57 & 1) == 0)
        {
          v65 = 0;
          v66 = v84 + 8 * v61;
          v67 = v85 + 8 * v61;
          do
          {
            if (*(v63 + v65) >= 2u)
            {
              v68 = v65 >> 1;
              v69 = v66[v68];
              if (v69 >= 53)
              {
                v69 = 53;
              }

              if (v69 <= 17)
              {
                v69 = 17;
              }

              v70 = byte_27753C704[v69 - 17];
              v71 = v67[v68];
              if (v71 >= 53)
              {
                v71 = 53;
              }

              if (v71 <= 17)
              {
                v71 = 17;
              }

              v72 = byte_27753C704[v71 - 17];
              *(v62 - 1) = v70;
              *v62 = v72;
            }

            ++v65;
            v62 += 2;
          }

          while (v58 != v65);
        }
      }

      ++v57;
      v59 += 16;
    }

    while (v57 != v78);
  }
}

uint64_t sub_27744D018(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = ((v7 - v10) >> 1) + 2;
  }

  else
  {
    v12 = v9 >> 1;
  }

  if ((v10 + v9) >= v7)
  {
    v13 = (v7 - v10);
  }

  else
  {
    v13 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v14 = (((v8 - v11) >> 1) + 2);
  }

  else
  {
    v14 = v9 >> 1;
  }

  if ((v11 + v9) >= v8)
  {
    v15 = (v8 - v11);
  }

  else
  {
    v15 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v13, v15, v52);
  v17 = *(v6 + 416);
  v48 = v6;
  v44 = (v17 * v11 + v10) << *(v6 + 531);
  v45 = *(v6 + 400);
  v51 = v10;
  v46 = v13;
  v47 = v10 == 0;
  v18 = (v13 >> 3);
  if (v18 > v47)
  {
    v19 = v18 - (v10 == 0);
    v20 = &v52[10 * (v10 == 0)];
    v21 = &v52[5 * (v51 == 0) + 296];
    v22 = v45 + v44 + 16 * (v51 == 0) - 16 * v17;
    do
    {
      result = (*(a1 + 72))(v22, v17, v21, v20, (v15 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 16;
      --v19;
    }

    while (v19);
  }

  v50 = v12;
  v23 = v11 == 0;
  v24 = (v15 >> 3);
  v49 = v11;
  if (v24 <= v23)
  {
    LODWORD(v26) = v46 + 8;
  }

  else
  {
    v25 = v11 == 0;
    v26 = (v46 + 8);
    v27 = v24 - v25;
    v28 = &v52[10 * v25 + 80];
    v29 = &v52[5 * v25 + 336];
    v30 = v44 + 16 * v17 * v25 + v45 - 16;
    do
    {
      result = (*(a1 + 80))(v30, v17, v29, v28, v26);
      v28 += 10;
      v29 += 5;
      v30 += 16 * v17;
      --v27;
    }

    while (v27);
    LODWORD(v11) = v49;
  }

  v31 = *(v48 + 424);
  v32 = *(v48 + 408);
  v33 = (v31 * (v11 >> 1) + (v51 & 0xFFFFFFFE)) << *(v48 + 531);
  v34 = (v26 >> 4);
  if (v34 > v47)
  {
    v35 = v51 == 0;
    v36 = v34 - v35;
    v37 = &v52[17 * v35 + 160];
    v38 = v32 + v33 + 32 * v35 - 4 * v31;
    do
    {
      result = (*(a1 + 88))(v38, v31, v37, v14);
      v37 += 17;
      v38 += 32;
      --v36;
    }

    while (v36);
  }

  v39 = ((v15 + 8) >> 4);
  if (v39 > v23)
  {
    v40 = v49 == 0;
    v41 = v39 - v40;
    v42 = &v52[17 * v40 + 228];
    v43 = v33 + 16 * v31 * v40 + v32 - 8;
    do
    {
      result = (*(a1 + 96))(v43, v31, v42, v50);
      v42 += 17;
      v43 += 16 * v31;
      --v41;
    }

    while (v41);
  }

  return result;
}

int *sub_27744D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = MEMORY[0x28223BE20](a1);
  v73 = v70;
  v74 = result;
  v75 = *(v70 + 8);
  v76 = *(v70 + 16);
  v77 = *(v75 + 520);
  v78 = *(v75 + 524);
  v79 = *(v75 + 416);
  v80 = *(v75 + 424);
  v149 = v75;
  v81 = *(v76 + 2117);
  v82 = *(v76 + 2113);
  v83 = v71 << v82;
  v84 = v72 << v82;
  v85 = (v72 << v82) - 16;
  v134 = v77;
  if (*(v76 + 2120) - 1 == v71)
  {
    v86 = v84 < 16;
    if (v84 >= 16)
    {
      v87 = 0;
    }

    else
    {
      v87 = v85;
    }

    v88 = v87 + v81;
    if (v86)
    {
      v89 = 0;
    }

    else
    {
      v89 = v85;
    }

    v90 = (v83 - 1) & 0xFFFFFFC0;
    if (v83 <= 63)
    {
      v90 = 0;
    }

    v135 = v90;
    v138 = v77 - v90;
    v91 = v88 + v89 - 8;
    if (v88 + v89 < 8)
    {
      v91 = 0;
    }

    result[30] = v91;
    if (*(*(v70 + 16) + 2124) - 1 == v72)
    {
      v88 = v78 - v89;
      result[30] = v78;
    }
  }

  else
  {
    if (!v71 || (v83 & 0x3F) != 0)
    {
      return result;
    }

    v92 = v84 < 16;
    if (v84 >= 16)
    {
      v93 = 0;
    }

    else
    {
      v93 = v85;
    }

    v88 = v93 + v81;
    if (v92)
    {
      v89 = 0;
    }

    else
    {
      v89 = v85;
    }

    if (v83 >= 64)
    {
      v94 = v83 - 64;
    }

    else
    {
      v94 = 0;
    }

    v135 = v94;
    if (v83 >= 64)
    {
      v83 = 64;
    }

    v138 = v83;
    v95 = v78 - v89;
    if (*(v76 + 2124) - 1 == v72)
    {
      v88 = v95;
    }
  }

  if (v88 >= 1)
  {
    v96 = 0;
    vars0 = &STACK[0x440];
    v127 = v89;
    v137 = 16 * v79;
    v97 = 16 * v80;
    v126 = v88;
    v148 = v70;
    v128 = v88;
    do
    {
      if (v88 - v96 >= 64)
      {
        v98 = 64;
      }

      else
      {
        v98 = (v88 - v96);
      }

      v129 = v96;
      v139 = v96 + v127;
      v99 = v96 + v127 - 8;
      if (!(v96 + v127))
      {
        v99 = 0;
      }

      v152 = v99;
      if (v96 + v127)
      {
        v100 = v98 + 8;
      }

      else
      {
        v100 = v98;
      }

      v151 = v100;
      if (v138 >= 1)
      {
        v101 = 0;
        v102 = v139 == 0;
        v133 = v137 * v102;
        v136 = ((v98 + 8) >> 4);
        v132 = v97 * v102;
        v150 = v139 == 0;
        vars8 = &STACK[0x340] + 4 * v102;
        do
        {
          if (v138 - v101 >= 64)
          {
            v103 = 64;
          }

          else
          {
            v103 = (v138 - v101);
          }

          v104 = v101 + v135;
          v105 = v103 + v135 + v101;
          v145 = *(v149 + 416);
          v147 = v101;
          v141 = *(v149 + 400);
          v106 = *(v149 + 531);
          (*(v74 + 6))(v73, v104, v139, v103, v98, &a37);
          v144 = v105 < v134;
          if (v105 >= v134)
          {
            v107 = v103;
          }

          else
          {
            v107 = v103 + 8;
          }

          v108 = (v104 + v145 * v139) << v106;
          v109 = v103 >> 3;
          if (v105 >= v134)
          {
            v110 = v109;
          }

          else
          {
            v110 = v109 + 1;
          }

          v146 = v104;
          v143 = v107;
          sub_27744D844(&STACK[0x4C0], v73, v104, v152, v107, v151, 0);
          if (v110 >= 2)
          {
            v111 = v110 - 1;
            v112 = v141 + v108 + 16;
            v113 = &a37;
            v114 = &STACK[0x440];
            do
            {
              (*(v74 + 9))(v112, v79, v114, v113, v98);
              v113 += 16;
              ++v114;
              v112 += 16;
              --v111;
            }

            while (v111);
          }

          sub_277450E9C(&STACK[0x4C0]);
          if (v98 >> 3 > v150)
          {
            v115 = v141 + v133 + v108;
            v116 = &STACK[0x480] + (v139 == 0);
            v117 = &a53 + 2 * (v139 == 0);
            v118 = (__PAIR128__((v98 >> 3), v139) - 1) >> 64;
            do
            {
              (*(v74 + 10))(v115, v79, v116, v117, v103);
              v117 += 2;
              ++v116;
              v115 += v137;
              --v118;
            }

            while (v118);
          }

          sub_277450E9C(&STACK[0x4C0]);
          v140 = ((v146 & 0xFFFFFFFFFFFFFFFELL) + *(v149 + 424) * (v139 >> 1)) << *(v149 + 531);
          v142 = *(v149 + 408);
          sub_27744D844(&STACK[0x4C0], v148, v146, v152, v143, v151, 1u);
          v119 = (v144 + ((v103 + 8) >> 4));
          v97 = 16 * v80;
          if (v119 >= 2)
          {
            v120 = v119 - 1;
            v121 = v142 + v140 + 32;
            v122 = &a69;
            do
            {
              (*(v74 + 11))(v121, v80, v122, (v98 >> 1));
              v122 += 4;
              v121 += 32;
              --v120;
            }

            while (v120);
          }

          sub_277450E9C(&STACK[0x4C0]);
          if (v136 > v150)
          {
            v123 = v142 + v132 + v140;
            v124 = vars8;
            v125 = (__PAIR128__(v136, v139) - 1) >> 64;
            do
            {
              (*(v74 + 12))(v123, v80, v124, (v103 >> 1));
              v124 += 4;
              v123 += 16 * v80;
              --v125;
            }

            while (v125);
          }

          result = sub_277450E9C(&STACK[0x4C0]);
          v73 = v148;
          v101 = v147 + 64;
        }

        while (v147 + 64 < v138);
      }

      v96 = v129 + 64;
      v88 = v128;
    }

    while (v129 + 64 < v126);
  }

  return result;
}

void *sub_27744D844(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  __dst[9216] = a2;
  *(__dst + 18434) = a3;
  *(__dst + 18435) = a4;
  *(__dst + 18436) = a5;
  *(__dst + 18437) = a6;
  *(__dst + 18438) = a7;
  v7 = (a6 >> (a7 != 0));
  if (v7 >= 1)
  {
    v8 = __dst;
    v9 = *(a2 + 8);
    v10 = v9 + 8 * a7;
    v11 = *(v10 + 416);
    v12 = (*(v10 + 400) + ((v11 * (a4 >> (a7 != 0)) + (a3 >> (a7 != 0) << a7)) << *(v9 + 531)));
    v13 = 2 * a5;
    v14 = 2 * v11;
    do
    {
      __dst = memcpy(v8, v12, v13);
      v12 += v14;
      v8 += v13;
      --v7;
    }

    while (v7);
  }

  return __dst;
}

uint64_t sub_27744D8FC(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = result;
  v70 = *(a2 + 8);
  v71 = *(a2 + 16);
  v72 = *(v70 + 520);
  v73 = *(v70 + 524);
  v74 = *(v70 + 416);
  v75 = *(v70 + 424);
  v141 = v70;
  v76 = *(v71 + 2117);
  v77 = *(v71 + 2113);
  v78 = a3 << v77;
  v79 = a4 << v77;
  v80 = (a4 << v77) - 16;
  if (*(v71 + 2120) - 1 == a3)
  {
    v81 = v79 < 16;
    if (v79 >= 16)
    {
      v82 = 0;
    }

    else
    {
      v82 = v80;
    }

    v83 = v82 + v76;
    if (v81)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    v85 = (v78 - 1) & 0xFFFFFFC0;
    if (v78 <= 63)
    {
      v85 = 0;
    }

    v129 = v85;
    v133 = v72 - v85;
    v86 = v83 + v84 - 8;
    if (v83 + v84 < 8)
    {
      v86 = 0;
    }

    *(result + 120) = v86;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v83 = v73 - v84;
      *(result + 120) = v73;
    }
  }

  else
  {
    if (!a3 || (v78 & 0x3F) != 0)
    {
      return result;
    }

    v87 = v79 < 16;
    if (v79 >= 16)
    {
      v88 = 0;
    }

    else
    {
      v88 = v80;
    }

    v83 = v88 + v76;
    if (v87)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    if (v78 >= 64)
    {
      v89 = v78 - 64;
    }

    else
    {
      v89 = 0;
    }

    v129 = v89;
    if (v78 >= 64)
    {
      v78 = 64;
    }

    v133 = v78;
    v90 = v73 - v84;
    if (*(v71 + 2124) - 1 == a4)
    {
      v83 = v90;
    }
  }

  if (v83 >= 1)
  {
    v91 = 0;
    v119 = v84;
    vars8 = &a69;
    v132 = 16 * v74;
    v92 = 16 * v75;
    v120 = v83;
    v128 = a2;
    v127 = v72;
    v121 = v83;
    do
    {
      vars0 = v91;
      if (v83 - v91 >= 64)
      {
        v93 = 64;
      }

      else
      {
        v93 = (v83 - v91);
      }

      if (v133 >= 1)
      {
        v94 = 0;
        v131 = v91 + v119;
        v95 = v91 + v119 == 0;
        v126 = v132 * v95;
        v130 = ((v93 + 8) >> 4);
        v125 = v92 * v95;
        v142 = vars0 + v119 == 0;
        v124 = &STACK[0x800] + 4 * v95;
        do
        {
          if (v133 - v94 >= 64)
          {
            v96 = 64;
          }

          else
          {
            v96 = (v133 - v94);
          }

          v97 = v94 + v129;
          v140 = v94;
          v98 = v96 + v129 + v94;
          v134 = *(v141 + 416);
          v135 = *(v141 + 400);
          v99 = *(v141 + 531);
          result = (*(v69 + 48))(a2, v97, v131, v96, v93, &a37);
          v137 = v98 < v72;
          v138 = v97;
          v100 = (v97 + v134 * v131) << v99;
          LODWORD(v101) = v96 >> 3;
          if (v98 >= v72)
          {
            v101 = v101;
          }

          else
          {
            v101 = (v101 + 1);
          }

          if (v101 >= 2)
          {
            v102 = v101 - 1;
            v103 = v135 + v100 + 16;
            v104 = &a37;
            v105 = &STACK[0x900];
            do
            {
              result = (*(v69 + 72))(v103, v74, v105, v104, v93);
              v104 += 16;
              ++v105;
              v103 += 16;
              --v102;
            }

            while (v102);
          }

          if (v93 >> 3 > v142)
          {
            v106 = (__PAIR128__((v93 >> 3), vars0 + v119) - 1) >> 64;
            v107 = v135 + v126 + v100;
            v108 = &STACK[0x940] + (vars0 + v119 == 0);
            v109 = &a53 + 2 * (vars0 + v119 == 0);
            do
            {
              result = (*(v69 + 80))(v107, v74, v108, v109, v96);
              v109 += 2;
              ++v108;
              v107 += v132;
              --v106;
            }

            while (v106);
          }

          v110 = (v138 & 0xFFFFFFFFFFFFFFFELL) + *(v141 + 424) * ((vars0 + v119) >> 1);
          v139 = *(v141 + 408);
          v136 = v110 << *(v141 + 531);
          v111 = (v137 + ((v96 + 8) >> 4));
          v92 = 16 * v75;
          if (v111 >= 2)
          {
            v112 = v111 - 1;
            v113 = v139 + v136 + 32;
            v114 = &a69;
            do
            {
              result = (*(v69 + 88))(v113, v75, v114, (v93 >> 1));
              v114 += 4;
              v113 += 32;
              --v112;
            }

            while (v112);
          }

          if (v130 > v142)
          {
            v115 = (v96 >> 1);
            v116 = v139 + v125 + v136;
            v117 = v124;
            v118 = (__PAIR128__(v130, vars0 + v119) - 1) >> 64;
            do
            {
              result = (*(v69 + 96))(v116, v75, v117, v115);
              v117 += 4;
              v116 += 16 * v75;
              --v118;
            }

            while (v118);
          }

          v94 = v140 + 64;
          a2 = v128;
          v72 = v127;
        }

        while (v140 + 64 < v133);
      }

      v91 = vars0 + 64;
      v83 = v121;
    }

    while (vars0 + 64 < v120);
  }

  return result;
}

int *sub_27744DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  result = MEMORY[0x28223BE20](a1);
  v52 = v51;
  v53 = v50;
  v54 = result;
  v55 = *(v50 + 8);
  v109 = *(v55 + 520);
  v56 = *(v55 + 416);
  v57 = *(v55 + 424);
  v58 = *v51;
  v110 = v55;
  if (*v51 < *(v55 + 524))
  {
    v58 &= 0xFFFFFFF0;
    *v51 = v58;
  }

  v59 = result[30];
  if (v59 < v58)
  {
    v116 = (v109 - 1) & 0xFFFFFFC0;
    v112 = v57;
    vars0 = &a49;
    vars8 = 16 * v57;
    v115 = 16 * v56;
    v120 = v50;
    v108 = v52;
    do
    {
      v60 = *(v110 + 531);
      v61 = *(v110 + 400) + ((*(v110 + 416) * v59) << v60);
      v62 = *(v110 + 408) + ((*(v110 + 424) * (v59 >> 1)) << v60);
      v63 = v58 - v59;
      if (v63 >= 64)
      {
        v64 = 64;
      }

      else
      {
        v64 = v63;
      }

      if (v59)
      {
        v65 = v59 - 8;
      }

      else
      {
        v65 = 0;
      }

      if (v59)
      {
        v66 = v64 + 8;
      }

      else
      {
        v66 = v64;
      }

      v121 = v66;
      v122 = v65;
      v67 = v64 >> 3;
      v118 = (v64 >> 3);
      v119 = ((v64 + 8) >> 4);
      v117 = v64;
      v68 = 0;
      if (v116 >= 1)
      {
        v69 = (v64 >> 1);
        do
        {
          v125 = v62;
          (*(v54 + 6))(v53, v68, v54[30], 64, v64, &a17);
          v123 = v68;
          sub_27744D844(&STACK[0x420], v53, v68, v122, 72, v121, 0);
          v70 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v54 + 9))(v61 + i, v56, &STACK[0x3A0] + v70, &STACK[0x3A0] + i - 784, v64);
            v70 += 8;
          }

          sub_277450E9C(&STACK[0x420]);
          v72 = v54[30];
          if (v67 > (v72 == 0))
          {
            v73 = v72 == 0;
            v74 = v118 - v73;
            v75 = &a33 + 2 * v73;
            v76 = &STACK[0x3E0] + v73;
            v77 = v61 + v115 * v73;
            do
            {
              (*(v54 + 10))(v77, v56, v76, v75, 64);
              v75 += 2;
              ++v76;
              v77 += v115;
              --v74;
            }

            while (v74);
          }

          sub_277450E9C(&STACK[0x420]);
          sub_27744D844(&STACK[0x420], v120, v123, v122, 72, v121, 1u);
          v78 = 0;
          v57 = v112;
          do
          {
            v79 = v78 + 32;
            (*(v54 + 11))(v78 + 32 + v125, v112, &a49 + v78, v69);
            v78 = v79;
          }

          while (v79 != 128);
          sub_277450E9C(&STACK[0x420]);
          v80 = v54[30];
          if (v119 > (v80 == 0))
          {
            v81 = v80 == 0;
            v82 = v119 - v81;
            v83 = &STACK[0x2A0] + 4 * v81;
            v84 = v125 + vars8 * v81;
            do
            {
              (*(v54 + 12))(v84, v112, v83, 32);
              v83 += 4;
              v84 += vars8;
              --v82;
            }

            while (v82);
          }

          result = sub_277450E9C(&STACK[0x420]);
          v61 += 128;
          v62 = v125 + 128;
          v68 = (v123 + 64);
          v64 = v117;
          v53 = v120;
          v67 = v118;
        }

        while (v68 < v116);
        v59 = v54[30];
      }

      v85 = v109 - v68;
      if (v109 == v68)
      {
        v52 = v108;
      }

      else
      {
        v126 = v62;
        (*(v54 + 6))(v53, v68, v59, (v109 - v68), v64, &a17);
        v124 = v68;
        sub_27744D844(&STACK[0x420], v53, v68, v122, v85, v121, 0);
        v111 = v109 - v68;
        v86 = v85 >> 3;
        if (v85 >> 3 >= 2)
        {
          v87 = v64;
          v88 = (v86 - 1);
          v89 = v61 + 16;
          v90 = &a17;
          v91 = &STACK[0x3A0];
          do
          {
            (*(v54 + 9))(v89, v56, v91, v90, v87);
            v90 += 16;
            ++v91;
            v89 += 16;
            --v88;
          }

          while (v88);
        }

        sub_277450E9C(&STACK[0x420]);
        v92 = v54[30];
        if (v118 > (v92 == 0))
        {
          v93 = v92 == 0;
          v94 = v118 - v93;
          v95 = &a33 + 2 * v93;
          v96 = &STACK[0x3E0] + v93;
          v97 = v61 + v115 * v93;
          do
          {
            (*(v54 + 10))(v97, v56, v96, v95, v111);
            v95 += 2;
            ++v96;
            v97 += v115;
            --v94;
          }

          while (v94);
        }

        sub_277450E9C(&STACK[0x420]);
        sub_27744D844(&STACK[0x420], v120, v124, v122, v111, v121, 1u);
        v98 = (v111 + 8) >> 4;
        LODWORD(v64) = v117;
        if (v98 >= 2)
        {
          v99 = (v98 - 1);
          v100 = v126 + 32;
          v101 = &a49;
          do
          {
            (*(v54 + 11))(v100, v57, v101, (v117 >> 1));
            v101 += 4;
            v100 += 32;
            --v99;
          }

          while (v99);
        }

        sub_277450E9C(&STACK[0x420]);
        v102 = v54[30];
        if (v119 > (v102 == 0))
        {
          v103 = v102 == 0;
          v104 = v119 - v103;
          v105 = &STACK[0x2A0] + 4 * v103;
          v106 = v126 + vars8 * v103;
          do
          {
            (*(v54 + 12))(v106, v57, v105, (v111 >> 1));
            v105 += 4;
            v106 += vars8;
            --v104;
          }

          while (v104);
        }

        result = sub_277450E9C(&STACK[0x420]);
        LODWORD(v59) = v54[30];
        v52 = v108;
        v53 = v120;
      }

      v59 = (v59 + v64);
      v54[30] = v59;
      v58 = *v52;
    }

    while (v59 < *v52);
  }

  v107 = *(v110 + 524);
  if (v107 >= v59)
  {
    v107 = v59;
  }

  *v52 = v107;
  if (v54[30] < *(v110 + 524))
  {
    if (v107 <= 4)
    {
      v107 = 4;
    }

    *v52 = v107 - 4;
  }

  return result;
}

uint64_t sub_27744E340(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v49 = a3;
  v50 = result;
  v51 = *(a2 + 8);
  v101 = *(v51 + 520);
  v52 = *(v51 + 416);
  v53 = *(v51 + 424);
  v54 = *a3;
  v102 = v51;
  if (*a3 < *(v51 + 524))
  {
    v54 &= 0xFFFFFFF0;
    *a3 = v54;
  }

  v55 = *(result + 120);
  if (v55 < v54)
  {
    v107 = (v101 - 1) & 0xFFFFFFC0;
    vars0 = v53;
    vars8 = &a49;
    v109 = 16 * v52;
    v105 = 16 * v53;
    v100 = v49;
    do
    {
      v56 = *(v102 + 531);
      v57 = *(v102 + 400) + ((*(v102 + 416) * v55) << v56);
      v58 = *(v102 + 408) + ((*(v102 + 424) * (v55 >> 1)) << v56);
      v59 = v54 - v55;
      if (v59 >= 64)
      {
        v60 = 64;
      }

      else
      {
        v60 = v59;
      }

      v61 = v60 >> 3;
      v110 = (v60 >> 3);
      v111 = ((v60 + 8) >> 4);
      v108 = v60;
      v62 = 0;
      if (v107 >= 1)
      {
        v63 = (v60 >> 1);
        do
        {
          v114 = v58;
          v112 = v62;
          (*(v50 + 48))(a2);
          v64 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v50 + 72))(v57 + i, v52, &STACK[0x7C0] + v64, &STACK[0x7C0] + i - 784, v60);
            v64 += 8;
          }

          v66 = *(v50 + 120);
          if (v61 > (v66 == 0))
          {
            v67 = v66 == 0;
            v68 = v110 - v67;
            v69 = &a33 + 2 * v67;
            v70 = &STACK[0x800] + v67;
            v71 = v57 + v109 * v67;
            do
            {
              (*(v50 + 80))(v71, v52, v70, v69, 64);
              v69 += 2;
              ++v70;
              v71 += v109;
              --v68;
            }

            while (v68);
          }

          v72 = 0;
          v53 = vars0;
          do
          {
            v73 = v72 + 32;
            result = (*(v50 + 88))(v72 + 32 + v114, vars0, &a49 + v72, v63);
            v72 = v73;
          }

          while (v73 != 128);
          v74 = *(v50 + 120);
          if (v111 > (v74 == 0))
          {
            v75 = v74 == 0;
            v76 = v111 - v75;
            v77 = &STACK[0x6C0] + 4 * v75;
            v78 = v114 + v105 * v75;
            do
            {
              result = (*(v50 + 96))(v78, vars0, v77, 32);
              v77 += 4;
              v78 += v105;
              --v76;
            }

            while (v76);
          }

          v57 += 128;
          v58 = v114 + 128;
          v62 = v112 + 64;
          v60 = v108;
          v61 = v110;
        }

        while (v112 + 64 < v107);
        v55 = *(v50 + 120);
      }

      v79 = v101 - v62;
      if (v101 != v62)
      {
        v115 = v58;
        result = (*(v50 + 48))(a2);
        v113 = v79;
        if (v79 >> 3 >= 2)
        {
          v80 = v60;
          v81 = ((v79 >> 3) - 1);
          v82 = v57 + 16;
          v83 = &a17;
          v84 = &STACK[0x7C0];
          do
          {
            result = (*(v50 + 72))(v82, v52, v84, v83, v80);
            v83 += 16;
            ++v84;
            v82 += 16;
            --v81;
          }

          while (v81);
        }

        v85 = *(v50 + 120);
        if (v110 > (v85 == 0))
        {
          v86 = v85 == 0;
          v87 = v110 - v86;
          v88 = &a33 + 2 * v86;
          v89 = &STACK[0x800] + v86;
          v90 = v57 + v109 * v86;
          do
          {
            result = (*(v50 + 80))(v90, v52, v89, v88, v113);
            v88 += 2;
            ++v89;
            v90 += v109;
            --v87;
          }

          while (v87);
        }

        v91 = (v113 + 8) >> 4;
        if (v91 >= 2)
        {
          v92 = (v91 - 1);
          v93 = v115 + 32;
          v94 = &a49;
          do
          {
            result = (*(v50 + 88))(v93, v53, v94, (v108 >> 1));
            v94 += 4;
            v93 += 32;
            --v92;
          }

          while (v92);
        }

        v55 = *(v50 + 120);
        LODWORD(v60) = v108;
        if (v111 > (v55 == 0))
        {
          v95 = v55 == 0;
          v96 = v111 - v95;
          v97 = &STACK[0x6C0] + 4 * v95;
          v98 = v115 + v105 * v95;
          do
          {
            result = (*(v50 + 96))(v98, v53, v97, (v113 >> 1));
            v97 += 4;
            v98 += v105;
            --v96;
          }

          while (v96);
          v55 = *(v50 + 120);
        }
      }

      v55 += v60;
      *(v50 + 120) = v55;
      v49 = v100;
      v54 = *v100;
    }

    while (v55 < *v100);
  }

  v99 = *(v102 + 524);
  if (v99 >= v55)
  {
    v99 = v55;
  }

  *v49 = v99;
  if (*(v50 + 120) < *(v102 + 524))
  {
    if (v99 <= 4)
    {
      v99 = 4;
    }

    *v49 = v99 - 4;
  }

  return result;
}

void *sub_27744E7FC(void *result, uint64_t a2)
{
  v2 = sub_27744EBD0;
  v3 = sub_27744F664;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_27744EBD0;
    v3 = sub_27744F664;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_27744F1D4;
      v3 = sub_27744FC60;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_27744E8C0;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_27744C968;
  result[7] = sub_27744C968;
  return result;
}

uint64_t sub_27744E8C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = ((v7 - v10) >> 1) + 2;
  }

  else
  {
    v12 = v9 >> 1;
  }

  if ((v10 + v9) >= v7)
  {
    v13 = (v7 - v10);
  }

  else
  {
    v13 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v14 = (((v8 - v11) >> 1) + 2);
  }

  else
  {
    v14 = v9 >> 1;
  }

  if ((v11 + v9) >= v8)
  {
    v15 = (v8 - v11);
  }

  else
  {
    v15 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v13, v15, v51);
  v17 = *(v6 + 416);
  v47 = v6;
  v43 = (v17 * v11 + v10) << *(v6 + 531);
  v44 = *(v6 + 400);
  v50 = v10;
  v45 = v13;
  v46 = v10 == 0;
  v18 = (v13 >> 3);
  if (v18 > v46)
  {
    v19 = v18 - (v10 == 0);
    v20 = &v51[10 * (v10 == 0)];
    v21 = &v51[5 * (v50 == 0) + 296];
    v22 = v44 + v43 + 8 * (v50 == 0) - 8 * v17;
    do
    {
      result = (*(a1 + 72))(v22, v17, v21, v20, (v15 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 8;
      --v19;
    }

    while (v19);
  }

  v49 = v12;
  v23 = v11 == 0;
  v24 = (v15 >> 3);
  v48 = v11;
  if (v24 <= v23)
  {
    LODWORD(v26) = v45 + 8;
  }

  else
  {
    v25 = v11 == 0;
    v26 = (v45 + 8);
    v27 = v24 - v25;
    v28 = &v51[10 * v25 + 80];
    v29 = &v51[5 * v25 + 336];
    v30 = v43 + 8 * v17 * v25 + v44 - 8;
    do
    {
      result = (*(a1 + 80))(v30, v17, v29, v28, v26);
      v28 += 10;
      v29 += 5;
      v30 += 8 * v17;
      --v27;
    }

    while (v27);
    LODWORD(v11) = v48;
  }

  v31 = *(v47 + 424);
  v32 = *(v47 + 408);
  v33 = (v31 * (v11 >> 1) + (v50 & 0xFFFFFFFE)) << *(v47 + 531);
  v34 = (v26 >> 4);
  if (v34 > v46)
  {
    v35 = v34 - (v50 == 0);
    v36 = &v51[17 * (v50 == 0) + 160];
    v37 = v32 + v33 + 16 * (v50 == 0) - 2 * v31;
    do
    {
      result = (*(a1 + 88))(v37, v31, v36, v14);
      v36 += 17;
      v37 += 16;
      --v35;
    }

    while (v35);
  }

  v38 = ((v15 + 8) >> 4);
  if (v38 > v23)
  {
    v39 = v48 == 0;
    v40 = v38 - v39;
    v41 = &v51[17 * v39 + 228];
    v42 = v33 + 8 * v31 * v39 + v32 - 4;
    do
    {
      result = (*(a1 + 96))(v42, v31, v41, v49);
      v41 += 17;
      v42 += 8 * v31;
      --v40;
    }

    while (v40);
  }

  return result;
}

int *sub_27744EBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = MEMORY[0x28223BE20](a1);
  v73 = v70;
  v74 = result;
  STACK[0x94F8] = *MEMORY[0x277D85DE8];
  v75 = *(v70 + 8);
  v76 = *(v70 + 16);
  v77 = *(v75 + 520);
  v78 = *(v75 + 524);
  v79 = *(v75 + 416);
  v80 = *(v75 + 424);
  v149 = v75;
  v81 = *(v76 + 2117);
  v82 = *(v76 + 2113);
  v83 = v71 << v82;
  v84 = v72 << v82;
  v85 = (v72 << v82) - 16;
  v134 = v77;
  if (*(v76 + 2120) - 1 == v71)
  {
    v86 = v84 < 16;
    if (v84 >= 16)
    {
      v87 = 0;
    }

    else
    {
      v87 = v85;
    }

    v88 = v87 + v81;
    if (v86)
    {
      v89 = 0;
    }

    else
    {
      v89 = v85;
    }

    v90 = (v83 - 1) & 0xFFFFFFC0;
    if (v83 <= 63)
    {
      v90 = 0;
    }

    v135 = v90;
    v138 = v77 - v90;
    v91 = v88 + v89 - 8;
    if (v88 + v89 < 8)
    {
      v91 = 0;
    }

    result[30] = v91;
    if (*(*(v70 + 16) + 2124) - 1 == v72)
    {
      v88 = v78 - v89;
      result[30] = v78;
    }
  }

  else
  {
    if (!v71 || (v83 & 0x3F) != 0)
    {
      return result;
    }

    v92 = v84 < 16;
    if (v84 >= 16)
    {
      v93 = 0;
    }

    else
    {
      v93 = v85;
    }

    v88 = v93 + v81;
    if (v92)
    {
      v89 = 0;
    }

    else
    {
      v89 = v85;
    }

    if (v83 >= 64)
    {
      v94 = v83 - 64;
    }

    else
    {
      v94 = 0;
    }

    v135 = v94;
    if (v83 >= 64)
    {
      v83 = 64;
    }

    v138 = v83;
    v95 = v78 - v89;
    if (*(v76 + 2124) - 1 == v72)
    {
      v88 = v95;
    }
  }

  if (v88 >= 1)
  {
    v96 = 0;
    vars0 = &STACK[0x440];
    v127 = v89;
    v137 = 8 * v79;
    v97 = 8 * v80;
    v126 = v88;
    v148 = v70;
    v128 = v88;
    do
    {
      if (v88 - v96 >= 64)
      {
        v98 = 64;
      }

      else
      {
        v98 = (v88 - v96);
      }

      v129 = v96;
      v139 = v96 + v127;
      v99 = v96 + v127 - 8;
      if (!(v96 + v127))
      {
        v99 = 0;
      }

      v152 = v99;
      if (v96 + v127)
      {
        v100 = v98 + 8;
      }

      else
      {
        v100 = v98;
      }

      v151 = v100;
      if (v138 >= 1)
      {
        v101 = 0;
        v102 = v139 == 0;
        v133 = v137 * v102;
        v136 = ((v98 + 8) >> 4);
        v132 = v97 * v102;
        v150 = v139 == 0;
        vars8 = &STACK[0x340] + 4 * v102;
        do
        {
          if (v138 - v101 >= 64)
          {
            v103 = 64;
          }

          else
          {
            v103 = (v138 - v101);
          }

          v104 = v101 + v135;
          v105 = v103 + v135 + v101;
          v145 = *(v149 + 416);
          v147 = v101;
          v141 = *(v149 + 400);
          v106 = *(v149 + 531);
          (*(v74 + 6))(v73, v104, v139, v103, v98, &a37);
          v144 = v105 < v134;
          if (v105 >= v134)
          {
            v107 = v103;
          }

          else
          {
            v107 = v103 + 8;
          }

          v108 = (v104 + v145 * v139) << v106;
          v109 = v103 >> 3;
          if (v105 >= v134)
          {
            v110 = v109;
          }

          else
          {
            v110 = v109 + 1;
          }

          v146 = v104;
          v143 = v107;
          sub_27744F124(&STACK[0x4D0], v73, v104, v152, v107, v151, 0);
          if (v110 >= 2)
          {
            v111 = v110 - 1;
            v112 = v141 + v108 + 8;
            v113 = &a37;
            v114 = &STACK[0x440];
            do
            {
              (*(v74 + 9))(v112, v79, v114, v113, v98);
              v113 += 16;
              ++v114;
              v112 += 8;
              --v111;
            }

            while (v111);
          }

          sub_2774520D0(&STACK[0x4D0]);
          if (v98 >> 3 > v150)
          {
            v115 = v141 + v133 + v108;
            v116 = &STACK[0x480] + (v139 == 0);
            v117 = &a53 + 2 * (v139 == 0);
            v118 = (__PAIR128__((v98 >> 3), v139) - 1) >> 64;
            do
            {
              (*(v74 + 10))(v115, v79, v116, v117, v103);
              v117 += 2;
              ++v116;
              v115 += v137;
              --v118;
            }

            while (v118);
          }

          sub_2774520D0(&STACK[0x4D0]);
          v140 = ((v146 & 0xFFFFFFFFFFFFFFFELL) + *(v149 + 424) * (v139 >> 1)) << *(v149 + 531);
          v142 = *(v149 + 408);
          sub_27744F124(&STACK[0x4D0], v148, v146, v152, v143, v151, 1u);
          v119 = (v144 + ((v103 + 8) >> 4));
          v97 = 8 * v80;
          if (v119 >= 2)
          {
            v120 = v119 - 1;
            v121 = v142 + v140 + 16;
            v122 = &a69;
            do
            {
              (*(v74 + 11))(v121, v80, v122, (v98 >> 1));
              v122 += 4;
              v121 += 16;
              --v120;
            }

            while (v120);
          }

          sub_2774520D0(&STACK[0x4D0]);
          if (v136 > v150)
          {
            v123 = v142 + v132 + v140;
            v124 = vars8;
            v125 = (__PAIR128__(v136, v139) - 1) >> 64;
            do
            {
              (*(v74 + 12))(v123, v80, v124, (v103 >> 1));
              v124 += 4;
              v123 += 8 * v80;
              --v125;
            }

            while (v125);
          }

          result = sub_2774520D0(&STACK[0x4D0]);
          v73 = v148;
          v101 = v147 + 64;
        }

        while (v147 + 64 < v138);
      }

      v96 = v129 + 64;
      v88 = v128;
    }

    while (v129 + 64 < v126);
  }

  return result;
}

void *sub_27744F124(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6, unsigned int a7)
{
  __dst[4608] = a2;
  *(__dst + 9218) = a3;
  *(__dst + 9219) = a4;
  *(__dst + 9220) = a5;
  *(__dst + 9221) = a6;
  *(__dst + 9222) = a7;
  v7 = (a6 >> (a7 != 0));
  if (v7 >= 1)
  {
    v8 = __dst;
    v9 = *(a2 + 8);
    v10 = v9 + 8 * a7;
    v11 = *(v10 + 416);
    v12 = (*(v10 + 400) + ((v11 * (a4 >> (a7 != 0)) + (a3 >> (a7 != 0) << a7)) << *(v9 + 531)));
    v13 = a5;
    do
    {
      __dst = memcpy(v8, v12, v13);
      v12 += v11;
      v8 += v13;
      --v7;
    }

    while (v7);
  }

  return __dst;
}

uint64_t sub_27744F1D4(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = result;
  v70 = *(a2 + 8);
  v71 = *(a2 + 16);
  v72 = *(v70 + 520);
  v73 = *(v70 + 524);
  v74 = *(v70 + 416);
  v75 = *(v70 + 424);
  v141 = v70;
  v76 = *(v71 + 2117);
  v77 = *(v71 + 2113);
  v78 = a3 << v77;
  v79 = a4 << v77;
  v80 = (a4 << v77) - 16;
  if (*(v71 + 2120) - 1 == a3)
  {
    v81 = v79 < 16;
    if (v79 >= 16)
    {
      v82 = 0;
    }

    else
    {
      v82 = v80;
    }

    v83 = v82 + v76;
    if (v81)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    v85 = (v78 - 1) & 0xFFFFFFC0;
    if (v78 <= 63)
    {
      v85 = 0;
    }

    v129 = v85;
    v133 = v72 - v85;
    v86 = v83 + v84 - 8;
    if (v83 + v84 < 8)
    {
      v86 = 0;
    }

    *(result + 120) = v86;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v83 = v73 - v84;
      *(result + 120) = v73;
    }
  }

  else
  {
    if (!a3 || (v78 & 0x3F) != 0)
    {
      return result;
    }

    v87 = v79 < 16;
    if (v79 >= 16)
    {
      v88 = 0;
    }

    else
    {
      v88 = v80;
    }

    v83 = v88 + v76;
    if (v87)
    {
      v84 = 0;
    }

    else
    {
      v84 = v80;
    }

    if (v78 >= 64)
    {
      v89 = v78 - 64;
    }

    else
    {
      v89 = 0;
    }

    v129 = v89;
    if (v78 >= 64)
    {
      v78 = 64;
    }

    v133 = v78;
    v90 = v73 - v84;
    if (*(v71 + 2124) - 1 == a4)
    {
      v83 = v90;
    }
  }

  if (v83 >= 1)
  {
    v91 = 0;
    v119 = v84;
    vars8 = &a69;
    v132 = 8 * v74;
    v92 = 8 * v75;
    v120 = v83;
    v128 = a2;
    v127 = v72;
    v121 = v83;
    do
    {
      vars0 = v91;
      if (v83 - v91 >= 64)
      {
        v93 = 64;
      }

      else
      {
        v93 = (v83 - v91);
      }

      if (v133 >= 1)
      {
        v94 = 0;
        v131 = v91 + v119;
        v95 = v91 + v119 == 0;
        v126 = v132 * v95;
        v130 = ((v93 + 8) >> 4);
        v125 = v92 * v95;
        v142 = vars0 + v119 == 0;
        v124 = &STACK[0x800] + 4 * v95;
        do
        {
          if (v133 - v94 >= 64)
          {
            v96 = 64;
          }

          else
          {
            v96 = (v133 - v94);
          }

          v97 = v94 + v129;
          v140 = v94;
          v98 = v96 + v129 + v94;
          v134 = *(v141 + 416);
          v135 = *(v141 + 400);
          v99 = *(v141 + 531);
          result = (*(v69 + 48))(a2, v97, v131, v96, v93, &a37);
          v137 = v98 < v72;
          v138 = v97;
          v100 = (v97 + v134 * v131) << v99;
          LODWORD(v101) = v96 >> 3;
          if (v98 >= v72)
          {
            v101 = v101;
          }

          else
          {
            v101 = (v101 + 1);
          }

          if (v101 >= 2)
          {
            v102 = v101 - 1;
            v103 = v135 + v100 + 8;
            v104 = &a37;
            v105 = &STACK[0x900];
            do
            {
              result = (*(v69 + 72))(v103, v74, v105, v104, v93);
              v104 += 16;
              ++v105;
              v103 += 8;
              --v102;
            }

            while (v102);
          }

          if (v93 >> 3 > v142)
          {
            v106 = (__PAIR128__((v93 >> 3), vars0 + v119) - 1) >> 64;
            v107 = v135 + v126 + v100;
            v108 = &STACK[0x940] + (vars0 + v119 == 0);
            v109 = &a53 + 2 * (vars0 + v119 == 0);
            do
            {
              result = (*(v69 + 80))(v107, v74, v108, v109, v96);
              v109 += 2;
              ++v108;
              v107 += v132;
              --v106;
            }

            while (v106);
          }

          v110 = (v138 & 0xFFFFFFFFFFFFFFFELL) + *(v141 + 424) * ((vars0 + v119) >> 1);
          v139 = *(v141 + 408);
          v136 = v110 << *(v141 + 531);
          v111 = (v137 + ((v96 + 8) >> 4));
          v92 = 8 * v75;
          if (v111 >= 2)
          {
            v112 = v111 - 1;
            v113 = v139 + v136 + 16;
            v114 = &a69;
            do
            {
              result = (*(v69 + 88))(v113, v75, v114, (v93 >> 1));
              v114 += 4;
              v113 += 16;
              --v112;
            }

            while (v112);
          }

          if (v130 > v142)
          {
            v115 = (v96 >> 1);
            v116 = v139 + v125 + v136;
            v117 = v124;
            v118 = (__PAIR128__(v130, vars0 + v119) - 1) >> 64;
            do
            {
              result = (*(v69 + 96))(v116, v75, v117, v115);
              v117 += 4;
              v116 += 8 * v75;
              --v118;
            }

            while (v118);
          }

          v94 = v140 + 64;
          a2 = v128;
          v72 = v127;
        }

        while (v140 + 64 < v133);
      }

      v91 = vars0 + 64;
      v83 = v121;
    }

    while (vars0 + 64 < v120);
  }

  return result;
}

int *sub_27744F664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  result = MEMORY[0x28223BE20](a1);
  v51 = v50;
  v52 = result;
  STACK[0x9458] = *MEMORY[0x277D85DE8];
  v120 = v53;
  v54 = *(v53 + 8);
  v110 = *(v54 + 520);
  v55 = *(v54 + 416);
  v56 = *(v54 + 424);
  v57 = *v50;
  v111 = v54;
  if (*v50 < *(v54 + 524))
  {
    v57 &= 0xFFFFFFF0;
    *v50 = v57;
  }

  v58 = result[30];
  if (v58 < v57)
  {
    v116 = (v110 - 1) & 0xFFFFFFC0;
    vars0 = &a49;
    v59 = 8 * v56;
    vars8 = 8 * v55;
    v109 = v51;
    v113 = 8 * v56;
    do
    {
      v60 = *(v111 + 531);
      v61 = *(v111 + 400) + ((*(v111 + 416) * v58) << v60);
      v125 = *(v111 + 408) + ((*(v111 + 424) * (v58 >> 1)) << v60);
      v62 = v57 - v58;
      if (v62 >= 64)
      {
        v63 = 64;
      }

      else
      {
        v63 = v62;
      }

      if (v58)
      {
        v64 = v58 - 8;
      }

      else
      {
        v64 = 0;
      }

      if (v58)
      {
        v65 = v63 + 8;
      }

      else
      {
        v65 = v63;
      }

      v121 = v65;
      v122 = v64;
      v118 = (v63 >> 3);
      v119 = ((v63 + 8) >> 4);
      v117 = v63;
      v66 = 0;
      if (v116 >= 1)
      {
        v67 = (v63 >> 1);
        do
        {
          v68 = &a17;
          v69 = v66;
          (*(v52 + 6))(v120, v66, v52[30], 64, v63, &a17);
          v123 = v69;
          sub_27744F124(&STACK[0x430], v120, v69, v122, 72, v121, 0);
          v70 = 0;
          do
          {
            v71 = v70 + 8;
            (*(v52 + 9))(v70 + 8 + v61, v55, &STACK[0x3A0] + v70, v68, v63);
            v68 += 16;
            v70 = v71;
          }

          while (v71 != 64);
          sub_2774520D0(&STACK[0x430]);
          v72 = v52[30];
          if (v118 > (v72 == 0))
          {
            v73 = v72 == 0;
            v74 = v118 - v73;
            v75 = &a33 + 2 * v73;
            v76 = &STACK[0x3E0] + v73;
            v77 = v61 + vars8 * v73;
            do
            {
              (*(v52 + 10))(v77, v55, v76, v75, 64);
              v75 += 2;
              ++v76;
              v77 += vars8;
              --v74;
            }

            while (v74);
          }

          sub_2774520D0(&STACK[0x430]);
          sub_27744F124(&STACK[0x430], v120, v69, v122, 72, v121, 1u);
          v78 = &a49;
          for (i = 16; i != 80; i += 16)
          {
            (*(v52 + 11))(v125 + i, v56, v78, v67);
            v78 += 4;
          }

          sub_2774520D0(&STACK[0x430]);
          v80 = v52[30];
          v59 = 8 * v56;
          v63 = v117;
          if (v119 > (v80 == 0))
          {
            v81 = v80 == 0;
            v82 = v119 - v81;
            v83 = &STACK[0x2A0] + 4 * v81;
            v84 = v125 + v113 * v81;
            do
            {
              (*(v52 + 12))(v84, v56, v83, 32);
              v83 += 4;
              v84 += v113;
              --v82;
            }

            while (v82);
          }

          result = sub_2774520D0(&STACK[0x430]);
          v61 += 64;
          v125 += 64;
          v66 = (v123 + 64);
        }

        while (v66 < v116);
        v58 = v52[30];
      }

      v85 = v110 - v66;
      if (v110 == v66)
      {
        v51 = v109;
      }

      else
      {
        v86 = v66;
        (*(v52 + 6))(v120, v66, v58, (v110 - v66), v63, &a17);
        v124 = v86;
        sub_27744F124(&STACK[0x430], v120, v86, v122, v85, v121, 0);
        v112 = v85;
        v87 = v85 >> 3;
        if (v85 >> 3 >= 2)
        {
          v88 = v63;
          v89 = (v87 - 1);
          v90 = v61 + 8;
          v91 = &a17;
          v92 = &STACK[0x3A0];
          do
          {
            (*(v52 + 9))(v90, v55, v92, v91, v88);
            v91 += 16;
            ++v92;
            v90 += 8;
            --v89;
          }

          while (v89);
        }

        sub_2774520D0(&STACK[0x430]);
        v93 = v52[30];
        if (v118 > (v93 == 0))
        {
          v94 = v93 == 0;
          v95 = v118 - v94;
          v96 = &a33 + 2 * v94;
          v97 = &STACK[0x3E0] + v94;
          v98 = v61 + vars8 * v94;
          do
          {
            (*(v52 + 10))(v98, v55, v97, v96, v112);
            v96 += 2;
            ++v97;
            v98 += vars8;
            --v95;
          }

          while (v95);
        }

        sub_2774520D0(&STACK[0x430]);
        sub_27744F124(&STACK[0x430], v120, v124, v122, v112, v121, 1u);
        v99 = (v112 + 8) >> 4;
        if (v99 >= 2)
        {
          v100 = (v99 - 1);
          v101 = v125 + 16;
          v102 = &a49;
          do
          {
            (*(v52 + 11))(v101, v56, v102, (v117 >> 1));
            v102 += 4;
            v101 += 16;
            --v100;
          }

          while (v100);
        }

        sub_2774520D0(&STACK[0x430]);
        v103 = v52[30];
        if (v119 > (v103 == 0))
        {
          v104 = v103 == 0;
          v105 = v119 - v104;
          v106 = &STACK[0x2A0] + 4 * v104;
          v107 = v125 + v59 * v104;
          do
          {
            (*(v52 + 12))(v107, v56, v106, (v112 >> 1));
            v106 += 4;
            v107 += v59;
            --v105;
          }

          while (v105);
        }

        result = sub_2774520D0(&STACK[0x430]);
        LODWORD(v58) = v52[30];
        v51 = v109;
        LODWORD(v63) = v117;
      }

      v58 = (v58 + v63);
      v52[30] = v58;
      v57 = *v51;
    }

    while (v58 < *v51);
  }

  v108 = *(v111 + 524);
  if (v108 >= v58)
  {
    v108 = v58;
  }

  *v51 = v108;
  if (v52[30] < *(v111 + 524))
  {
    if (v108 <= 4)
    {
      v108 = 4;
    }

    *v51 = v108 - 4;
  }

  return result;
}

uint64_t sub_27744FC60(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v49 = a3;
  v50 = result;
  v51 = *(a2 + 8);
  v102 = *(v51 + 520);
  v52 = *(v51 + 416);
  v53 = *(v51 + 424);
  v54 = *a3;
  v103 = v51;
  if (*a3 < *(v51 + 524))
  {
    v54 &= 0xFFFFFFF0;
    *a3 = v54;
  }

  v55 = *(result + 120);
  if (v55 < v54)
  {
    v107 = (v102 - 1) & 0xFFFFFFC0;
    vars8 = &a49;
    v109 = 8 * v52;
    v56 = 8 * v53;
    v101 = v49;
    vars0 = 8 * v53;
    do
    {
      v57 = *(v103 + 531);
      v58 = *(v103 + 400) + ((*(v103 + 416) * v55) << v57);
      v59 = *(v103 + 408) + ((*(v103 + 424) * (v55 >> 1)) << v57);
      v60 = v54 - v55;
      if (v60 >= 64)
      {
        v61 = 64;
      }

      else
      {
        v61 = v60;
      }

      v110 = (v61 >> 3);
      v111 = ((v61 + 8) >> 4);
      v108 = v61;
      v62 = 0;
      if (v107 >= 1)
      {
        v63 = (v61 >> 1);
        do
        {
          v114 = v59;
          v64 = &a17;
          v112 = v62;
          (*(v50 + 48))(a2);
          v65 = 0;
          do
          {
            v66 = v65 + 8;
            (*(v50 + 72))(v65 + 8 + v58, v52, &STACK[0x7C0] + v65, v64, v61);
            v64 += 16;
            v65 = v66;
          }

          while (v66 != 64);
          v67 = *(v50 + 120);
          if (v110 > (v67 == 0))
          {
            v68 = v67 == 0;
            v69 = v110 - v68;
            v70 = &a33 + 2 * v68;
            v71 = &STACK[0x800] + v68;
            v72 = v58 + v109 * v68;
            do
            {
              (*(v50 + 80))(v72, v52, v71, v70, 64);
              v70 += 2;
              ++v71;
              v72 += v109;
              --v69;
            }

            while (v69);
          }

          v73 = &a49;
          for (i = 16; i != 80; i += 16)
          {
            result = (*(v50 + 88))(v114 + i, v53, v73, v63);
            v73 += 4;
          }

          v75 = *(v50 + 120);
          v56 = 8 * v53;
          v61 = v108;
          if (v111 > (v75 == 0))
          {
            v76 = v75 == 0;
            v77 = v111 - v76;
            v78 = &STACK[0x6C0] + 4 * v76;
            v79 = v114 + vars0 * v76;
            do
            {
              result = (*(v50 + 96))(v79, v53, v78, 32);
              v78 += 4;
              v79 += vars0;
              --v77;
            }

            while (v77);
          }

          v58 += 64;
          v59 = v114 + 64;
          v62 = v112 + 64;
        }

        while (v112 + 64 < v107);
        v55 = *(v50 + 120);
      }

      v80 = v102 - v62;
      if (v102 != v62)
      {
        v115 = v59;
        result = (*(v50 + 48))(a2);
        v113 = v80;
        if (v80 >> 3 >= 2)
        {
          v81 = v61;
          v82 = ((v80 >> 3) - 1);
          v83 = v58 + 8;
          v84 = &a17;
          v85 = &STACK[0x7C0];
          do
          {
            result = (*(v50 + 72))(v83, v52, v85, v84, v81);
            v84 += 16;
            ++v85;
            v83 += 8;
            --v82;
          }

          while (v82);
        }

        v86 = *(v50 + 120);
        if (v110 > (v86 == 0))
        {
          v87 = v86 == 0;
          v88 = v110 - v87;
          v89 = &a33 + 2 * v87;
          v90 = &STACK[0x800] + v87;
          v91 = v58 + v109 * v87;
          do
          {
            result = (*(v50 + 80))(v91, v52, v90, v89, v113);
            v89 += 2;
            ++v90;
            v91 += v109;
            --v88;
          }

          while (v88);
        }

        v92 = (v113 + 8) >> 4;
        if (v92 >= 2)
        {
          v93 = (v92 - 1);
          v94 = v115 + 16;
          v95 = &a49;
          do
          {
            result = (*(v50 + 88))(v94, v53, v95, (v108 >> 1));
            v95 += 4;
            v94 += 16;
            --v93;
          }

          while (v93);
        }

        v55 = *(v50 + 120);
        LODWORD(v61) = v108;
        if (v111 > (v55 == 0))
        {
          v96 = v55 == 0;
          v97 = v111 - v96;
          v98 = &STACK[0x6C0] + 4 * v96;
          v99 = v115 + v56 * v96;
          do
          {
            result = (*(v50 + 96))(v99, v53, v98, (v113 >> 1));
            v98 += 4;
            v99 += v56;
            --v97;
          }

          while (v97);
          v55 = *(v50 + 120);
        }
      }

      v55 += v61;
      *(v50 + 120) = v55;
      v49 = v101;
      v54 = *v101;
    }

    while (v55 < *v101);
  }

  v100 = *(v103 + 524);
  if (v100 >= v55)
  {
    v100 = v55;
  }

  *v49 = v100;
  if (*(v50 + 120) < *(v103 + 524))
  {
    if (v100 <= 4)
    {
      v100 = 4;
    }

    *v49 = v100 - 4;
  }

  return result;
}

void *sub_277450124(void *result, uint64_t a2)
{
  v2 = sub_277450A58;
  v3 = sub_277451314;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_277450A58;
    v3 = sub_277451314;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_277450FE4;
      v3 = sub_2774516CC;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_277450898;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_2774501E8;
  result[7] = sub_2774501E8;
  return result;
}

void sub_2774501E8(uint64_t a1, int a2, int a3, int a4, int a5, char *a6)
{
  v90 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  bzero(a6, 0x380uLL);
  v77 = v9;
  v79 = v9[96];
  v10 = *(a1 + 32);
  v82 = *(v10 + 14);
  v11 = *(v10 + 15);
  memset(v89, 0, sizeof(v89));
  memset(v88, 0, sizeof(v88));
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  v73 = a4;
  v74 = a5;
  v12 = a4 >> 3;
  memset(v84, 0, sizeof(v84));
  v78 = (a5 >> 3);
  v83 = (a4 >> 3);
  if (v78 >= 1)
  {
    for (i = 0; i != v78; ++i)
    {
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = a3 + 8 * i;
        v16 = v9[97] + 2 * v9[96] * (v15 >> 3) + 2 * (a2 >> 3);
        do
        {
          v17 = (**a1)(a1, ((a2 + 8 + 8 * v14) >> *(*(a1 + 16) + 2113)), (v15 >> *(*(a1 + 16) + 2113)));
          v12 = v83;
          v18 = v14 + 1;
          v19 = (*(v16 + 2 * v14) >> 9) + (*(v16 + 2 * (v14 + 1)) >> 9) + 1;
          *(v89 + 8 * v14 + i) = *(v17 + 661) + (v19 >> 1) - 2;
          v20 = *(v17 + 660) + (v19 >> 1);
          if (v20 >= 51)
          {
            v20 = 51;
          }

          if (v20 <= 15)
          {
            v20 = 15;
          }

          a6[8 * v14 + 768 + i] = byte_27753C6D3[v20 - 15];
          if (v14)
          {
            v21 = 0;
            v22 = *(v17 + 661);
            v23 = 1;
            v24 = v82;
            do
            {
              v25 = v23;
              v26 = (v19 + 2 * v24) >> 1;
              if (v26 >= 30)
              {
                if (v26 < 0x3A)
                {
                  LOBYTE(v26) = byte_27753C740[v26 - 30];
                }

                else
                {
                  LOBYTE(v26) = v26 - 6;
                }
              }

              v23 = 0;
              *(&v87[4 * v21] + 8 * (v14 >> 1) + i) = v26 + v22 + 2;
              v24 = v11;
              v21 = 1;
            }

            while ((v25 & 1) != 0);
          }

          ++v14;
        }

        while (v18 != v83);
      }
    }
  }

  v27 = a3;
  v28 = a3 == 0;
  if (v78 > v28)
  {
    v29 = a3 == 0;
    do
    {
      if (v12 >= 1)
      {
        v30 = 0;
        v81 = a3 + 8 * v29;
        v31 = v9[97] + 2 * v9[96] * (v81 >> 3) + 2 * (a2 >> 3);
        do
        {
          v32 = (**a1)(a1, ((a2 + 8 * v30) >> *(*(a1 + 16) + 2113)), (v81 >> *(*(a1 + 16) + 2113)));
          v12 = v83;
          v33 = (*(v31 + 2 * (v30 - v79)) >> 9) + (*(v31 + 2 * v30) >> 9) + 1;
          *(v86 + 8 * v29 + v30) = *(v32 + 661) + (v33 >> 1) - 2;
          v34 = *(v32 + 660) + (v33 >> 1);
          if (v34 >= 51)
          {
            v34 = 51;
          }

          if (v34 <= 15)
          {
            v34 = 15;
          }

          a6[8 * v29 + 832 + v30] = byte_27753C6D3[v34 - 15];
          if ((v29 & 1) == 0)
          {
            v35 = 0;
            v36 = *(v32 + 661);
            v37 = 1;
            v38 = v82;
            do
            {
              v39 = v37;
              v40 = (v33 + 2 * v38) >> 1;
              if (v40 >= 30)
              {
                if (v40 < 0x3A)
                {
                  LOBYTE(v40) = byte_27753C740[v40 - 30];
                }

                else
                {
                  LOBYTE(v40) = v40 - 6;
                }
              }

              v37 = 0;
              *(&v84[4 * v35] + 8 * (v29 >> 1) + v30) = v40 + v36 + 2;
              v38 = v11;
              v35 = 1;
            }

            while ((v39 & 1) != 0);
          }

          ++v30;
        }

        while (v30 != v83);
      }

      ++v29;
    }

    while (v29 != v78);
    v27 = a3;
    v28 = a3 == 0;
  }

  if (v12 >= 1)
  {
    v41 = 0;
    v42 = (v74 >> 2);
    v43 = a6;
    do
    {
      if (v42 >= 1)
      {
        v44 = 0;
        v45 = &a6[32 * (v41 >> 1) + 257];
        v46 = v77[121] + v77[117] * ((a2 + 8 + 8 * v41) >> 3) + (v27 >> 2);
        do
        {
          if (*(v46 + v44))
          {
            v47 = *(v89 + 8 * v41 + (v44 >> 1)) + 2 * *(v46 + v44);
            if (v47 >= 53)
            {
              v47 = 53;
            }

            if (v47 <= 17)
            {
              v47 = 17;
            }

            v43[v44] = byte_27753C704[v47 - 17];
          }

          ++v44;
        }

        while (v42 != v44);
        if (v41)
        {
          v48 = 0;
          v49 = v41 >> 1;
          v50 = v87 + 8 * v49;
          v51 = v88 + 8 * v49;
          do
          {
            if (*(v46 + v48) >= 2u)
            {
              v52 = v48 >> 1;
              v53 = v50[v52];
              if (v53 >= 53)
              {
                v53 = 53;
              }

              if (v53 <= 17)
              {
                v53 = 17;
              }

              v54 = byte_27753C704[v53 - 17];
              v55 = v51[v52];
              if (v55 >= 53)
              {
                v55 = 53;
              }

              if (v55 <= 17)
              {
                v55 = 17;
              }

              v56 = byte_27753C704[v55 - 17];
              *(v45 - 1) = v54;
              *v45 = v56;
            }

            ++v48;
            v45 += 2;
          }

          while (v42 != v48);
        }
      }

      ++v41;
      v43 += 16;
    }

    while (v41 != v12);
  }

  if (v78 > v28)
  {
    v57 = v27 == 0;
    v58 = (v73 >> 2);
    v59 = &a6[16 * v57 + 128];
    do
    {
      if (v58 >= 1)
      {
        v60 = 0;
        v61 = v57 >> 1;
        v62 = &a6[32 * v61 + 513];
        v63 = v77[118] + v77[116] * ((v27 + 8 * v57) >> 3) + (a2 >> 2);
        do
        {
          if (*(v63 + v60))
          {
            v64 = *(v86 + 8 * v57 + (v60 >> 1)) + 2 * *(v63 + v60);
            if (v64 >= 53)
            {
              v64 = 53;
            }

            if (v64 <= 17)
            {
              v64 = 17;
            }

            v59[v60] = byte_27753C704[v64 - 17];
          }

          ++v60;
        }

        while (v58 != v60);
        if ((v57 & 1) == 0)
        {
          v65 = 0;
          v66 = v84 + 8 * v61;
          v67 = v85 + 8 * v61;
          do
          {
            if (*(v63 + v65) >= 2u)
            {
              v68 = v65 >> 1;
              v69 = v66[v68];
              if (v69 >= 53)
              {
                v69 = 53;
              }

              if (v69 <= 17)
              {
                v69 = 17;
              }

              v70 = byte_27753C704[v69 - 17];
              v71 = v67[v68];
              if (v71 >= 53)
              {
                v71 = 53;
              }

              if (v71 <= 17)
              {
                v71 = 17;
              }

              v72 = byte_27753C704[v71 - 17];
              *(v62 - 1) = v70;
              *v62 = v72;
            }

            ++v65;
            v62 += 2;
          }

          while (v58 != v65);
        }
      }

      ++v57;
      v59 += 16;
    }

    while (v57 != v78);
  }
}

uint64_t sub_277450898(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = (v7 - v10);
  }

  else
  {
    v12 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v13 = (v8 - v11);
  }

  else
  {
    v13 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v12, v13, v30);
  v15 = *(v6 + 416);
  v29 = *(v6 + 400);
  v16 = (v15 * v11 + v10) << *(v6 + 531);
  v17 = (v12 >> 3);
  if (v17 > (v10 == 0))
  {
    v18 = v10 == 0;
    v19 = v17 - v18;
    v20 = &v30[10 * v18];
    v21 = &v30[5 * v18 + 296];
    v22 = v29 + v16 + 16 * v18 - 16 * v15;
    do
    {
      result = (*(a1 + 72))(v22, v15, v21, v20, (v13 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 16;
      --v19;
    }

    while (v19);
  }

  v23 = (v13 >> 3);
  if (v23 > (v11 == 0))
  {
    v24 = v11 == 0;
    v25 = v23 - v24;
    v26 = &v30[10 * v24 + 80];
    v27 = &v30[5 * v24 + 336];
    v28 = v16 + 16 * v15 * v24 + v29 - 16;
    do
    {
      result = (*(a1 + 80))(v28, v15, v27, v26, (v12 + 8));
      v26 += 10;
      v27 += 5;
      v28 += 16 * v15;
      --v25;
    }

    while (v25);
  }

  return result;
}

int *sub_277450A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  result = MEMORY[0x28223BE20](a1);
  v45 = result;
  v46 = *(v42 + 8);
  v47 = *(v42 + 16);
  v48 = *(v46 + 520);
  v49 = *(v46 + 524);
  v92 = v46;
  v93 = v42;
  v50 = *(v46 + 416);
  v51 = *(v47 + 2117);
  v52 = *(v47 + 2113);
  v53 = v43 << v52;
  v54 = v44 << v52;
  v55 = (v44 << v52) - 16;
  v91 = v48;
  if (*(v47 + 2120) - 1 == v43)
  {
    v56 = v54 < 16;
    if (v54 >= 16)
    {
      v57 = 0;
    }

    else
    {
      v57 = v55;
    }

    v58 = v57 + v51;
    if (v56)
    {
      v59 = 0;
    }

    else
    {
      v59 = v55;
    }

    if (v53 <= 63)
    {
      v60 = 0;
    }

    else
    {
      v60 = (v53 - 1) & 0xFFFFFFC0;
    }

    v94 = v60;
    v98 = v48 - v60;
    v61 = v58 + v59 - 8;
    if (v58 + v59 < 8)
    {
      v61 = 0;
    }

    result[30] = v61;
    if (*(*(v42 + 16) + 2124) - 1 == v44)
    {
      v58 = v49 - v59;
      result[30] = v49;
    }
  }

  else
  {
    if (!v43 || (v53 & 0x3F) != 0)
    {
      return result;
    }

    v62 = v54 < 16;
    if (v54 >= 16)
    {
      v63 = 0;
    }

    else
    {
      v63 = v55;
    }

    v58 = v63 + v51;
    if (v62)
    {
      v59 = 0;
    }

    else
    {
      v59 = v55;
    }

    if (v53 >= 64)
    {
      v64 = v53 - 64;
    }

    else
    {
      v64 = 0;
    }

    v94 = v64;
    if (v53 >= 64)
    {
      v53 = 64;
    }

    v98 = v53;
    v65 = v49 - v59;
    if (*(v47 + 2124) - 1 == v44)
    {
      v58 = v65;
    }
  }

  if (v58 >= 1)
  {
    v66 = 0;
    v67 = 16 * v50;
    v87 = v58;
    v88 = v59;
    v89 = v58;
    do
    {
      if (v58 - v66 >= 64)
      {
        v68 = 64;
      }

      else
      {
        v68 = (v58 - v66);
      }

      v90 = v66;
      v99 = v66 + v88;
      if (v66 + v88)
      {
        v69 = v66 + v88 - 8;
      }

      else
      {
        v69 = 0;
      }

      v70 = v68 + 8;
      if (!(v66 + v88))
      {
        v70 = v68;
      }

      v96 = v70;
      v97 = v69;
      if (v98 >= 1)
      {
        v71 = 0;
        v95 = (v68 >> 3);
        do
        {
          if (v98 - v71 >= 64)
          {
            v72 = 64;
          }

          else
          {
            v72 = (v98 - v71);
          }

          v73 = v71 + v94;
          v101 = v72 + v94 + v71;
          v100 = *(v92 + 416);
          v103 = *(v92 + 400);
          v74 = *(v92 + 531);
          (*(v45 + 6))(v93, v73, v99, v72, v68, &a25);
          v75 = v101 < v91;
          if (v101 >= v91)
          {
            v76 = v72;
          }

          else
          {
            v76 = v72 + 8;
          }

          v102 = (v73 + v100 * v99) << v74;
          v77 = v72 >> 3;
          if (v75)
          {
            v78 = v77 + 1;
          }

          else
          {
            v78 = v77;
          }

          sub_277450DF8(&STACK[0x460], v93, v73, v97, v76, v96);
          if (v78 >= 2)
          {
            v79 = v78 - 1;
            v80 = v103 + v102 + 16;
            v81 = &a25;
            v82 = &STACK[0x3E0];
            do
            {
              (*(v45 + 9))(v80, v50, v82, v81, v68);
              v81 += 16;
              ++v82;
              v80 += 16;
              --v79;
            }

            while (v79);
          }

          sub_277450E9C(&STACK[0x460]);
          if (v95 > (v99 == 0))
          {
            v83 = &STACK[0x420] + (v99 == 0);
            v84 = v103 + v67 * (v99 == 0) + v102;
            v86 = &a41 + 2 * (v99 == 0);
            v85 = (__PAIR128__(v95, v99) - 1) >> 64;
            do
            {
              (*(v45 + 10))(v84, v50, v83, v86, v72);
              v86 += 2;
              ++v83;
              v84 += v67;
              --v85;
            }

            while (v85);
          }

          result = sub_277450E9C(&STACK[0x460]);
          v71 += 64;
        }

        while (v71 < v98);
      }

      v66 = v90 + 64;
      v58 = v89;
    }

    while (v90 + 64 < v87);
  }

  return result;
}

void *sub_277450DF8(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6)
{
  __dst[9216] = a2;
  *(__dst + 18434) = a3;
  *(__dst + 18435) = a4;
  *(__dst + 18436) = a5;
  *(__dst + 18437) = a6;
  *(__dst + 18438) = 0;
  if (a6 >= 1)
  {
    v6 = __dst;
    v7 = *(a2 + 8);
    v8 = *(v7 + 416);
    v9 = (*(v7 + 400) + ((v8 * a4 + a3) << *(v7 + 531)));
    v10 = 2 * a5;
    v11 = a6;
    v12 = 2 * v8;
    do
    {
      __dst = memcpy(v6, v9, v10);
      v9 += v12;
      v6 += v10;
      --v11;
    }

    while (v11);
  }

  return __dst;
}

int *sub_277450E9C(int *result)
{
  v1 = result + 18432;
  v2 = result[18437];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[18438];
    v5 = *(*v1 + 8);
    v6 = v5 + 8 * v4;
    v7 = *(v6 + 416);
    v8 = *(*(*v1 + 32) + 19);
    v9 = *(*(*v1 + 16) + 283);
    v10 = v4 != 0;
    v11 = result[18436];
    v12 = (*(v6 + 400) + ((v7 * (result[18435] >> v10) + (result[18434] >> v10 << v4)) << *(v5 + 531)));
    v13 = 8u >> v10;
    v14 = 2 * v11 * v13;
    v15 = 2 * v11;
    v16 = 2 * v7 * v13;
    v17 = 2 * v7;
    do
    {
      if (v11 >= 1)
      {
        v18 = 0;
        v19 = v12;
        v20 = result;
        do
        {
          v21 = (v1[2] + v18) >> 3;
          v22 = *(*(*v1 + 8) + 776) + 2 * *(*(*v1 + 8) + 768) * ((v1[3] + v3) >> 3);
          if (v8 && (*(v22 + 2 * v21) & 0x100) != 0 || v9 && (*(v22 + 2 * v21) & 0xC) != 0)
          {
            v23 = v19;
            v24 = v20;
            v25 = v13;
            do
            {
              *v23 = *v24;
              v24 = (v24 + v15);
              v23 = (v23 + v17);
              --v25;
            }

            while (v25);
            LODWORD(v11) = v1[4];
          }

          v18 += 8;
          v20 += 4;
          ++v19;
        }

        while (v18 < v11);
        v2 = v1[5];
      }

      v3 += 8;
      result = (result + v14);
      v12 = (v12 + v16);
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t sub_277450FE4(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v37 = result;
  v38 = *(a2 + 8);
  v39 = *(a2 + 16);
  v40 = *(v38 + 520);
  v41 = *(v38 + 524);
  v84 = v38;
  v42 = *(v38 + 416);
  v43 = *(v39 + 2117);
  v44 = *(v39 + 2113);
  v45 = a3 << v44;
  v46 = a4 << v44;
  v47 = (a4 << v44) - 16;
  v83 = v40;
  if (*(v39 + 2120) - 1 == a3)
  {
    v48 = v46 < 16;
    if (v46 >= 16)
    {
      v49 = 0;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 + v43;
    if (v48)
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

    if (v45 <= 63)
    {
      v52 = 0;
    }

    else
    {
      v52 = (v45 - 1) & 0xFFFFFFC0;
    }

    v85 = v52;
    v89 = v40 - v52;
    v53 = v50 + v51 - 8;
    if (v50 + v51 < 8)
    {
      v53 = 0;
    }

    *(result + 120) = v53;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v50 = v41 - v51;
      *(result + 120) = v41;
    }
  }

  else
  {
    if (!a3 || (v45 & 0x3F) != 0)
    {
      return result;
    }

    v54 = v46 < 16;
    if (v46 >= 16)
    {
      v55 = 0;
    }

    else
    {
      v55 = v47;
    }

    v50 = v55 + v43;
    if (v54)
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

    if (v45 >= 64)
    {
      v56 = v45 - 64;
    }

    else
    {
      v56 = 0;
    }

    v85 = v56;
    if (v45 >= 64)
    {
      v45 = 64;
    }

    v89 = v45;
    v57 = v41 - v51;
    if (*(v39 + 2124) - 1 == a4)
    {
      v50 = v57;
    }
  }

  if (v50 >= 1)
  {
    v58 = 0;
    v74 = v51;
    v59 = 16 * v42;
    v75 = v50;
    v82 = a2;
    v76 = v50;
    do
    {
      v77 = v58;
      if (v50 - v58 >= 64)
      {
        v60 = 64;
      }

      else
      {
        v60 = (v50 - v58);
      }

      if (v89 >= 1)
      {
        v61 = 0;
        v88 = v58 + v74;
        v86 = (v60 >> 3);
        v87 = v58 + v74 == 0;
        vars8 = (__PAIR128__(v86, v58 + v74) - 1) >> 64;
        v79 = &STACK[0x840] + (v58 + v74 == 0);
        vars0 = &a37 + 2 * (v58 + v74 == 0);
        v78 = v59 * (v58 + v74 == 0);
        do
        {
          if (v89 - v61 >= 64)
          {
            v62 = 64;
          }

          else
          {
            v62 = (v89 - v61);
          }

          v63 = *(v84 + 416);
          v91 = *(v84 + 400);
          v64 = *(v84 + 531);
          result = (*(v37 + 48))(a2, v61 + v85, v88, v62, v60, &a21);
          v90 = (v61 + v85 + v63 * v88) << v64;
          LODWORD(v65) = v62 >> 3;
          if (v62 + v85 + v61 >= v83)
          {
            v65 = v65;
          }

          else
          {
            v65 = (v65 + 1);
          }

          if (v65 >= 2)
          {
            v66 = v65 - 1;
            v67 = v91 + v90 + 16;
            v68 = &a21;
            v69 = &STACK[0x800];
            do
            {
              result = (*(v37 + 72))(v67, v42, v69, v68, v60);
              v68 += 16;
              ++v69;
              v67 += 16;
              --v66;
            }

            while (v66);
          }

          if (v86 > v87)
          {
            v70 = v79;
            v71 = v91 + v78 + v90;
            v73 = vars0;
            v72 = vars8;
            do
            {
              result = (*(v37 + 80))(v71, v42, v70, v73, v62);
              v73 += 2;
              ++v70;
              v71 += v59;
              --v72;
            }

            while (v72);
          }

          v61 += 64;
          a2 = v82;
        }

        while (v61 < v89);
      }

      v58 = v77 + 64;
      v50 = v76;
    }

    while (v77 + 64 < v75);
  }

  return result;
}

int *sub_277451314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  result = MEMORY[0x28223BE20](a1);
  v27 = v26;
  v28 = result;
  v64 = v29;
  v30 = *(v29 + 8);
  v62 = *(v30 + 520);
  v31 = *(v30 + 416);
  v32 = *v26;
  v63 = v30;
  if (*v26 < *(v30 + 524))
  {
    v32 &= 0xFFFFFFF0;
    *v26 = v32;
  }

  v33 = result[30];
  if (v33 < v32)
  {
    v65 = (v62 - 1) & 0xFFFFFFC0;
    v61 = v27;
    v68 = 16 * v31;
    do
    {
      v34 = *(v63 + 400) + ((*(v63 + 416) * v33) << *(v63 + 531));
      v35 = v32 - v33;
      if (v35 >= 64)
      {
        v36 = 64;
      }

      else
      {
        v36 = v35;
      }

      if (v33)
      {
        v37 = v33 - 8;
      }

      else
      {
        v37 = 0;
      }

      v38 = v36 + 8;
      if (!v33)
      {
        v38 = v36;
      }

      v66 = v38;
      v67 = v37;
      v39 = (v36 >> 3);
      if (v65 < 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = 0;
        do
        {
          (*(v28 + 6))(v64, v40, v28[30], 64, v36, &a9);
          vars8_4 = v40;
          sub_277450DF8(&STACK[0x3E0], v64, v40, v67, 72, v66);
          v41 = 0;
          for (i = 16; i != 144; i += 16)
          {
            (*(v28 + 9))(v34 + i, v31, &STACK[0x360] + v41, &STACK[0x360] + i - 784, v36);
            v41 += 8;
          }

          sub_277450E9C(&STACK[0x3E0]);
          v43 = v28[30];
          if (v39 > (v43 == 0))
          {
            v44 = v43 == 0;
            v45 = (v36 >> 3) - v44;
            v46 = &a25 + 2 * v44;
            v47 = &STACK[0x3A0] + v44;
            v48 = v34 + v68 * v44;
            do
            {
              (*(v28 + 10))(v48, v31, v47, v46, 64);
              v46 += 2;
              ++v47;
              v48 += v68;
              --v45;
            }

            while (v45);
          }

          result = sub_277450E9C(&STACK[0x3E0]);
          v34 += 128;
          v40 = (vars8_4 + 64);
          v39 = (v36 >> 3);
        }

        while (v40 < v65);
        v33 = v28[30];
      }

      v49 = v62 - v40;
      if (v62 != v40)
      {
        (*(v28 + 6))(v64, v40, v33, (v62 - v40), v36, &a9);
        sub_277450DF8(&STACK[0x3E0], v64, v40, v67, v49, v66);
        vars8_4a = v62 - v40;
        if (v49 >> 3 >= 2)
        {
          v50 = ((v49 >> 3) - 1);
          v51 = v34 + 16;
          v52 = &a9;
          v53 = &STACK[0x360];
          do
          {
            (*(v28 + 9))(v51, v31, v53, v52, v36);
            v52 += 16;
            ++v53;
            v51 += 16;
            --v50;
          }

          while (v50);
        }

        sub_277450E9C(&STACK[0x3E0]);
        v54 = v28[30];
        if (__SPAIR64__(v39, v54) >= 1 && v39 != (v54 == 0))
        {
          v55 = v54 == 0;
          v56 = v39 - v55;
          v57 = &a25 + 2 * v55;
          v58 = &STACK[0x3A0] + v55;
          v59 = v34 + v68 * v55;
          do
          {
            (*(v28 + 10))(v59, v31, v58, v57, vars8_4a);
            v57 += 2;
            ++v58;
            v59 += v68;
            --v56;
          }

          while (v56);
        }

        result = sub_277450E9C(&STACK[0x3E0]);
        LODWORD(v33) = v28[30];
      }

      v27 = v61;
      v33 = (v33 + v36);
      v28[30] = v33;
      v32 = *v61;
    }

    while (v33 < *v61);
  }

  v60 = *(v63 + 524);
  if (v60 >= v33)
  {
    v60 = v33;
  }

  *v27 = v60;
  if (v28[30] < *(v63 + 524))
  {
    if (v60 <= 4)
    {
      v60 = 4;
    }

    *v27 = v60 - 4;
  }

  return result;
}

uint64_t sub_2774516CC(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v25 = a3;
  v26 = result;
  v27 = *(a2 + 8);
  v57 = *(v27 + 520);
  v28 = *(v27 + 416);
  v29 = *a3;
  v58 = v27;
  if (*a3 < *(v27 + 524))
  {
    v29 &= 0xFFFFFFF0;
    *a3 = v29;
  }

  v30 = *(result + 120);
  if (v30 < v29)
  {
    v60 = (v57 - 1) & 0xFFFFFFC0;
    v31 = 16 * v28;
    v56 = v25;
    do
    {
      v32 = *(v58 + 400) + ((*(v58 + 416) * v30) << *(v58 + 531));
      v33 = v29 - v30;
      if (v33 >= 64)
      {
        v34 = 64;
      }

      else
      {
        v34 = v33;
      }

      v35 = v34 >> 3;
      vars0 = (v34 >> 3);
      v36 = 0;
      if (v60 >= 1)
      {
        do
        {
          vars8_4 = v36;
          (*(v26 + 48))(a2);
          v37 = 0;
          for (i = 16; i != 144; i += 16)
          {
            result = (*(v26 + 72))(v32 + i, v28, &STACK[0x740] + v37, &STACK[0x740] + i - 784, v34);
            v37 += 8;
          }

          v39 = *(v26 + 120);
          if (v35 > (v39 == 0))
          {
            v40 = v39 == 0;
            v41 = vars0 - v40;
            v42 = &a25 + 2 * v40;
            v43 = &STACK[0x780] + v40;
            v44 = v32 + v31 * v40;
            do
            {
              result = (*(v26 + 80))(v44, v28, v43, v42, 64);
              v42 += 2;
              ++v43;
              v44 += v31;
              --v41;
            }

            while (v41);
          }

          v32 += 128;
          v36 = vars8_4 + 64;
          v35 = v34 >> 3;
        }

        while (vars8_4 + 64 < v60);
        v30 = *(v26 + 120);
      }

      v45 = v57 - v36;
      if (v57 != v36)
      {
        result = (*(v26 + 48))(a2);
        vars8_4a = v45;
        if (v45 >> 3 >= 2)
        {
          v46 = ((v45 >> 3) - 1);
          v47 = v32 + 16;
          v48 = &a9;
          v49 = &STACK[0x740];
          do
          {
            result = (*(v26 + 72))(v47, v28, v49, v48, v34);
            v48 += 16;
            ++v49;
            v47 += 16;
            --v46;
          }

          while (v46);
        }

        v30 = *(v26 + 120);
        if (vars0 > (v30 == 0))
        {
          v50 = v30 == 0;
          v51 = vars0 - v50;
          v52 = &a25 + 2 * v50;
          v53 = &STACK[0x780] + v50;
          v54 = v32 + v31 * v50;
          do
          {
            result = (*(v26 + 80))(v54, v28, v53, v52, vars8_4a);
            v52 += 2;
            ++v53;
            v54 += v31;
            --v51;
          }

          while (v51);
          v30 = *(v26 + 120);
        }
      }

      v30 += v34;
      *(v26 + 120) = v30;
      v25 = v56;
      v29 = *v56;
    }

    while (v30 < *v56);
  }

  v55 = *(v58 + 524);
  if (v55 >= v30)
  {
    v55 = v30;
  }

  *v25 = v55;
  if (*(v26 + 120) < *(v58 + 524))
  {
    if (v55 <= 4)
    {
      v55 = 4;
    }

    *v25 = v55 - 4;
  }

  return result;
}

void *sub_2774519D8(void *result, uint64_t a2)
{
  v2 = sub_277451C5C;
  v3 = sub_277452540;
  if ((*(*(a2 + 32) + 19) & 1) == 0)
  {
    v2 = sub_277451C5C;
    v3 = sub_277452540;
    if ((*(*(a2 + 16) + 283) & 1) == 0)
    {
      v2 = sub_277452210;
      v3 = sub_277452924;
    }
  }

  *result = v3;
  result[1] = 0;
  result[2] = v2;
  result[3] = 0;
  result[4] = sub_277451A9C;
  result[5] = 0;
  result[8] = sub_277445A14;
  result[6] = sub_2774501E8;
  result[7] = sub_2774501E8;
  return result;
}

uint64_t sub_277451A9C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(v6 + 520);
  v8 = *(v6 + 524);
  v9 = *(v5 + 2117);
  LOBYTE(v5) = *(v5 + 2113);
  v10 = (a3 << v5);
  v11 = (a4 << v5);
  if ((v10 + v9) >= v7)
  {
    v12 = (v7 - v10);
  }

  else
  {
    v12 = v9;
  }

  if ((v11 + v9) >= v8)
  {
    v13 = (v8 - v11);
  }

  else
  {
    v13 = v9;
  }

  result = (*(a1 + 64))(a2, v10, v11, v12, v13, v30);
  v15 = *(v6 + 416);
  v29 = *(v6 + 400);
  v16 = (v15 * v11 + v10) << *(v6 + 531);
  v17 = (v12 >> 3);
  if (v17 > (v10 == 0))
  {
    v18 = v10 == 0;
    v19 = v17 - v18;
    v20 = &v30[10 * v18];
    v21 = &v30[5 * v18 + 296];
    v22 = v29 + v16 + 8 * v18 - 8 * v15;
    do
    {
      result = (*(a1 + 72))(v22, v15, v21, v20, (v13 + 8));
      v20 += 10;
      v21 += 5;
      v22 += 8;
      --v19;
    }

    while (v19);
  }

  v23 = (v13 >> 3);
  if (v23 > (v11 == 0))
  {
    v24 = v11 == 0;
    v25 = v23 - v24;
    v26 = &v30[10 * v24 + 80];
    v27 = &v30[5 * v24 + 336];
    v28 = v16 + 8 * v15 * v24 + v29 - 8;
    do
    {
      result = (*(a1 + 80))(v28, v15, v27, v26, (v12 + 8));
      v26 += 10;
      v27 += 5;
      v28 += 8 * v15;
      --v25;
    }

    while (v25);
  }

  return result;
}

int *sub_277451C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  result = MEMORY[0x28223BE20](a1);
  v45 = result;
  STACK[0x9498] = *MEMORY[0x277D85DE8];
  v46 = *(v42 + 8);
  v47 = *(v42 + 16);
  v48 = *(v46 + 520);
  v49 = *(v46 + 524);
  v92 = v46;
  v93 = v42;
  v50 = *(v46 + 416);
  v51 = *(v47 + 2117);
  v52 = *(v47 + 2113);
  v53 = v43 << v52;
  v54 = v44 << v52;
  v55 = (v44 << v52) - 16;
  v91 = v48;
  if (*(v47 + 2120) - 1 == v43)
  {
    v56 = v54 < 16;
    if (v54 >= 16)
    {
      v57 = 0;
    }

    else
    {
      v57 = v55;
    }

    v58 = v57 + v51;
    if (v56)
    {
      v59 = 0;
    }

    else
    {
      v59 = v55;
    }

    if (v53 <= 63)
    {
      v60 = 0;
    }

    else
    {
      v60 = (v53 - 1) & 0xFFFFFFC0;
    }

    v94 = v60;
    v98 = v48 - v60;
    v61 = v58 + v59 - 8;
    if (v58 + v59 < 8)
    {
      v61 = 0;
    }

    result[30] = v61;
    if (*(*(v42 + 16) + 2124) - 1 == v44)
    {
      v58 = v49 - v59;
      result[30] = v49;
    }
  }

  else
  {
    if (!v43 || (v53 & 0x3F) != 0)
    {
      return result;
    }

    v62 = v54 < 16;
    if (v54 >= 16)
    {
      v63 = 0;
    }

    else
    {
      v63 = v55;
    }

    v58 = v63 + v51;
    if (v62)
    {
      v59 = 0;
    }

    else
    {
      v59 = v55;
    }

    if (v53 >= 64)
    {
      v64 = v53 - 64;
    }

    else
    {
      v64 = 0;
    }

    v94 = v64;
    if (v53 >= 64)
    {
      v53 = 64;
    }

    v98 = v53;
    v65 = v49 - v59;
    if (*(v47 + 2124) - 1 == v44)
    {
      v58 = v65;
    }
  }

  if (v58 >= 1)
  {
    v66 = 0;
    v67 = 8 * v50;
    v87 = v58;
    v88 = v59;
    v89 = v58;
    do
    {
      if (v58 - v66 >= 64)
      {
        v68 = 64;
      }

      else
      {
        v68 = (v58 - v66);
      }

      v90 = v66;
      v99 = v66 + v88;
      if (v66 + v88)
      {
        v69 = v66 + v88 - 8;
      }

      else
      {
        v69 = 0;
      }

      v70 = v68 + 8;
      if (!(v66 + v88))
      {
        v70 = v68;
      }

      v96 = v70;
      v97 = v69;
      if (v98 >= 1)
      {
        v71 = 0;
        v95 = (v68 >> 3);
        do
        {
          if (v98 - v71 >= 64)
          {
            v72 = 64;
          }

          else
          {
            v72 = (v98 - v71);
          }

          v73 = v71 + v94;
          v101 = v72 + v94 + v71;
          v100 = *(v92 + 416);
          v103 = *(v92 + 400);
          v74 = *(v92 + 531);
          (*(v45 + 6))(v93, v73, v99, v72, v68, &a25);
          v75 = v101 < v91;
          if (v101 >= v91)
          {
            v76 = v72;
          }

          else
          {
            v76 = v72 + 8;
          }

          v102 = (v73 + v100 * v99) << v74;
          v77 = v72 >> 3;
          if (v75)
          {
            v78 = v77 + 1;
          }

          else
          {
            v78 = v77;
          }

          sub_277452034(&STACK[0x470], v93, v73, v97, v76, v96);
          if (v78 >= 2)
          {
            v79 = v78 - 1;
            v80 = v103 + v102 + 8;
            v81 = &a25;
            v82 = &STACK[0x3E0];
            do
            {
              (*(v45 + 9))(v80, v50, v82, v81, v68);
              v81 += 16;
              ++v82;
              v80 += 8;
              --v79;
            }

            while (v79);
          }

          sub_2774520D0(&STACK[0x470]);
          if (v95 > (v99 == 0))
          {
            v83 = &STACK[0x420] + (v99 == 0);
            v84 = v103 + v67 * (v99 == 0) + v102;
            v86 = &a41 + 2 * (v99 == 0);
            v85 = (__PAIR128__(v95, v99) - 1) >> 64;
            do
            {
              (*(v45 + 10))(v84, v50, v83, v86, v72);
              v86 += 2;
              ++v83;
              v84 += v67;
              --v85;
            }

            while (v85);
          }

          result = sub_2774520D0(&STACK[0x470]);
          v71 += 64;
        }

        while (v71 < v98);
      }

      v66 = v90 + 64;
      v58 = v89;
    }

    while (v90 + 64 < v87);
  }

  return result;
}

void *sub_277452034(void *__dst, uint64_t a2, int a3, int a4, int a5, int a6)
{
  __dst[4608] = a2;
  *(__dst + 9218) = a3;
  *(__dst + 9219) = a4;
  *(__dst + 9220) = a5;
  *(__dst + 9221) = a6;
  *(__dst + 9222) = 0;
  if (a6 >= 1)
  {
    v6 = __dst;
    v7 = *(a2 + 8);
    v8 = *(v7 + 416);
    v9 = (*(v7 + 400) + ((v8 * a4 + a3) << *(v7 + 531)));
    v10 = a5;
    v11 = a6;
    do
    {
      __dst = memcpy(v6, v9, v10);
      v9 += v8;
      v6 += v10;
      --v11;
    }

    while (v11);
  }

  return __dst;
}

int *sub_2774520D0(int *result)
{
  v1 = result + 9216;
  v2 = result[9221];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result[9222];
    v5 = *(*v1 + 8);
    v6 = v5 + 8 * v4;
    v7 = *(v6 + 416);
    v8 = *(*(*v1 + 32) + 19);
    v9 = *(*(*v1 + 16) + 283);
    v10 = v4 != 0;
    v11 = result[9220];
    v12 = (*(v6 + 400) + ((v7 * (result[9219] >> v10) + (result[9218] >> v10 << v4)) << *(v5 + 531)));
    v13 = 8u >> v10;
    v14 = v11 * v13;
    v15 = v11;
    do
    {
      if (v11 >= 1)
      {
        v16 = 0;
        v17 = v12;
        v18 = result;
        do
        {
          v19 = (v1[2] + v16) >> 3;
          v20 = *(*(*v1 + 8) + 776) + 2 * *(*(*v1 + 8) + 768) * ((v1[3] + v3) >> 3);
          if (v8 && (*(v20 + 2 * v19) & 0x100) != 0 || v9 && (*(v20 + 2 * v19) & 0xC) != 0)
          {
            v21 = v17;
            v22 = v18;
            v23 = v13;
            do
            {
              *v21 = *v22;
              v22 = (v22 + v15);
              v21 = (v21 + v7);
              --v23;
            }

            while (v23);
            v11 = v1[4];
          }

          v16 += 8;
          v18 += 2;
          ++v17;
        }

        while (v16 < v11);
        v2 = v1[5];
      }

      v12 = (v12 + v7 * v13);
      result = (result + v14);
      v3 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t sub_277452210(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v37 = result;
  v38 = *(a2 + 8);
  v39 = *(a2 + 16);
  v40 = *(v38 + 520);
  v41 = *(v38 + 524);
  v84 = v38;
  v42 = *(v38 + 416);
  v43 = *(v39 + 2117);
  v44 = *(v39 + 2113);
  v45 = a3 << v44;
  v46 = a4 << v44;
  v47 = (a4 << v44) - 16;
  v83 = v40;
  if (*(v39 + 2120) - 1 == a3)
  {
    v48 = v46 < 16;
    if (v46 >= 16)
    {
      v49 = 0;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 + v43;
    if (v48)
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

    if (v45 <= 63)
    {
      v52 = 0;
    }

    else
    {
      v52 = (v45 - 1) & 0xFFFFFFC0;
    }

    v85 = v52;
    v89 = v40 - v52;
    v53 = v50 + v51 - 8;
    if (v50 + v51 < 8)
    {
      v53 = 0;
    }

    *(result + 120) = v53;
    if (*(*(a2 + 16) + 2124) - 1 == a4)
    {
      v50 = v41 - v51;
      *(result + 120) = v41;
    }
  }

  else
  {
    if (!a3 || (v45 & 0x3F) != 0)
    {
      return result;
    }

    v54 = v46 < 16;
    if (v46 >= 16)
    {
      v55 = 0;
    }

    else
    {
      v55 = v47;
    }

    v50 = v55 + v43;
    if (v54)
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

    if (v45 >= 64)
    {
      v56 = v45 - 64;
    }

    else
    {
      v56 = 0;
    }

    v85 = v56;
    if (v45 >= 64)
    {
      v45 = 64;
    }

    v89 = v45;
    v57 = v41 - v51;
    if (*(v39 + 2124) - 1 == a4)
    {
      v50 = v57;
    }
  }

  if (v50 >= 1)
  {
    v58 = 0;
    v74 = v51;
    v59 = 8 * v42;
    v75 = v50;
    v82 = a2;
    v76 = v50;
    do
    {
      v77 = v58;
      if (v50 - v58 >= 64)
      {
        v60 = 64;
      }

      else
      {
        v60 = (v50 - v58);
      }

      if (v89 >= 1)
      {
        v61 = 0;
        v88 = v58 + v74;
        v86 = (v60 >> 3);
        v87 = v58 + v74 == 0;
        vars8 = (__PAIR128__(v86, v58 + v74) - 1) >> 64;
        v79 = &STACK[0x840] + (v58 + v74 == 0);
        vars0 = &a37 + 2 * (v58 + v74 == 0);
        v78 = v59 * (v58 + v74 == 0);
        do
        {
          if (v89 - v61 >= 64)
          {
            v62 = 64;
          }

          else
          {
            v62 = (v89 - v61);
          }

          v63 = *(v84 + 416);
          v91 = *(v84 + 400);
          v64 = *(v84 + 531);
          result = (*(v37 + 48))(a2, v61 + v85, v88, v62, v60, &a21);
          v90 = (v61 + v85 + v63 * v88) << v64;
          LODWORD(v65) = v62 >> 3;
          if (v62 + v85 + v61 >= v83)
          {
            v65 = v65;
          }

          else
          {
            v65 = (v65 + 1);
          }

          if (v65 >= 2)
          {
            v66 = v65 - 1;
            v67 = v91 + v90 + 8;
            v68 = &a21;
            v69 = &STACK[0x800];
            do
            {
              result = (*(v37 + 72))(v67, v42, v69, v68, v60);
              v68 += 16;
              ++v69;
              v67 += 8;
              --v66;
            }

            while (v66);
          }

          if (v86 > v87)
          {
            v70 = v79;
            v71 = v91 + v78 + v90;
            v73 = vars0;
            v72 = vars8;
            do
            {
              result = (*(v37 + 80))(v71, v42, v70, v73, v62);
              v73 += 2;
              ++v70;
              v71 += v59;
              --v72;
            }

            while (v72);
          }

          v61 += 64;
          a2 = v82;
        }

        while (v61 < v89);
      }

      v58 = v77 + 64;
      v50 = v76;
    }

    while (v77 + 64 < v75);
  }

  return result;
}

int *sub_277452540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  result = MEMORY[0x28223BE20](a1);
  v27 = v26;
  v28 = result;
  STACK[0x9418] = *MEMORY[0x277D85DE8];
  v66 = v29;
  v30 = *(v29 + 8);
  v64 = *(v30 + 520);
  v31 = *(v30 + 416);
  v32 = *v26;
  v65 = v30;
  if (*v26 < *(v30 + 524))
  {
    v32 &= 0xFFFFFFF0;
    *v26 = v32;
  }

  v33 = result[30];
  if (v33 < v32)
  {
    v67 = (v64 - 1) & 0xFFFFFFC0;
    v63 = v27;
    v70 = 8 * v31;
    do
    {
      v34 = *(v65 + 400) + ((*(v65 + 416) * v33) << *(v65 + 531));
      v35 = v32 - v33;
      if (v35 >= 64)
      {
        v36 = 64;
      }

      else
      {
        v36 = v35;
      }

      if (v33)
      {
        v37 = v33 - 8;
      }

      else
      {
        v37 = 0;
      }

      v38 = v36 + 8;
      if (!v33)
      {
        v38 = v36;
      }

      v68 = v38;
      v69 = v37;
      v39 = v36 >> 3;
      vars0 = (v36 >> 3);
      v40 = 0;
      if (v67 >= 1)
      {
        do
        {
          v41 = &a9;
          (*(v28 + 6))(v66, v40, v28[30], 64, v36, &a9);
          vars8_4 = v40;
          sub_277452034(&STACK[0x3F0], v66, v40, v69, 72, v68);
          v42 = 0;
          do
          {
            v43 = v42 + 8;
            (*(v28 + 9))(v42 + 8 + v34, v31, &STACK[0x360] + v42, v41, v36);
            v41 += 16;
            v42 = v43;
          }

          while (v43 != 64);
          sub_2774520D0(&STACK[0x3F0]);
          v44 = v28[30];
          if (v39 > (v44 == 0))
          {
            v45 = v44 == 0;
            v46 = vars0 - v45;
            v47 = &a25 + 2 * v45;
            v48 = &STACK[0x3A0] + v45;
            v49 = v34 + v70 * v45;
            do
            {
              (*(v28 + 10))(v49, v31, v48, v47, 64);
              v47 += 2;
              ++v48;
              v49 += v70;
              --v46;
            }

            while (v46);
          }

          result = sub_2774520D0(&STACK[0x3F0]);
          v34 += 64;
          v40 = (v40 + 64);
          v39 = v36 >> 3;
        }

        while (v40 < v67);
        v33 = v28[30];
      }

      v50 = v64 - v40;
      if (v64 != v40)
      {
        (*(v28 + 6))(v66, v40, v33, (v64 - v40), v36, &a9);
        sub_277452034(&STACK[0x3F0], v66, v40, v69, v50, v68);
        v51 = (v64 - v40);
        if (v50 >> 3 >= 2)
        {
          v52 = ((v50 >> 3) - 1);
          v53 = v34 + 8;
          v54 = &a9;
          v55 = &STACK[0x360];
          do
          {
            (*(v28 + 9))(v53, v31, v55, v54, v36);
            v54 += 16;
            ++v55;
            v53 += 8;
            --v52;
          }

          while (v52);
        }

        sub_2774520D0(&STACK[0x3F0]);
        v56 = v28[30];
        if (vars0 > (v56 == 0))
        {
          v57 = v56 == 0;
          v58 = vars0 - v57;
          v59 = &a25 + 2 * v57;
          v60 = &STACK[0x3A0] + v57;
          v61 = v34 + v70 * v57;
          do
          {
            (*(v28 + 10))(v61, v31, v60, v59, v51);
            v59 += 2;
            ++v60;
            v61 += v70;
            --v58;
          }

          while (v58);
        }

        result = sub_2774520D0(&STACK[0x3F0]);
        LODWORD(v33) = v28[30];
      }

      v27 = v63;
      v33 = (v33 + v36);
      v28[30] = v33;
      v32 = *v63;
    }

    while (v33 < *v63);
  }

  v62 = *(v65 + 524);
  if (v62 >= v33)
  {
    v62 = v33;
  }

  *v27 = v62;
  if (v28[30] < *(v65 + 524))
  {
    if (v62 <= 4)
    {
      v62 = 4;
    }

    *v27 = v62 - 4;
  }

  return result;
}

uint64_t sub_277452924(uint64_t result, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v25 = a3;
  v26 = result;
  v27 = *(a2 + 8);
  v58 = *(v27 + 520);
  v28 = *(v27 + 416);
  v29 = *a3;
  v59 = v27;
  if (*a3 < *(v27 + 524))
  {
    v29 &= 0xFFFFFFF0;
    *a3 = v29;
  }

  v30 = *(result + 120);
  if (v30 < v29)
  {
    v61 = (v58 - 1) & 0xFFFFFFC0;
    v31 = 8 * v28;
    v57 = v25;
    do
    {
      v32 = *(v59 + 400) + ((*(v59 + 416) * v30) << *(v59 + 531));
      v33 = v29 - v30;
      if (v33 >= 64)
      {
        v34 = 64;
      }

      else
      {
        v34 = v33;
      }

      v35 = v34 >> 3;
      vars0 = (v34 >> 3);
      v36 = 0;
      if (v61 >= 1)
      {
        do
        {
          v37 = &a9;
          vars8_4 = v36;
          (*(v26 + 48))(a2);
          v38 = 0;
          do
          {
            v39 = v38 + 8;
            result = (*(v26 + 72))(v38 + 8 + v32, v28, &STACK[0x740] + v38, v37, v34);
            v37 += 16;
            v38 = v39;
          }

          while (v39 != 64);
          v40 = *(v26 + 120);
          if (v35 > (v40 == 0))
          {
            v41 = v40 == 0;
            v42 = vars0 - v41;
            v43 = &a25 + 2 * v41;
            v44 = &STACK[0x780] + v41;
            v45 = v32 + v31 * v41;
            do
            {
              result = (*(v26 + 80))(v45, v28, v44, v43, 64);
              v43 += 2;
              ++v44;
              v45 += v31;
              --v42;
            }

            while (v42);
          }

          v32 += 64;
          v36 = vars8_4 + 64;
          v35 = v34 >> 3;
        }

        while (vars8_4 + 64 < v61);
        v30 = *(v26 + 120);
      }

      v46 = v58 - v36;
      if (v58 != v36)
      {
        result = (*(v26 + 48))(a2);
        vars8_4a = v46;
        if (v46 >> 3 >= 2)
        {
          v47 = ((v46 >> 3) - 1);
          v48 = v32 + 8;
          v49 = &a9;
          v50 = &STACK[0x740];
          do
          {
            result = (*(v26 + 72))(v48, v28, v50, v49, v34);
            v49 += 16;
            ++v50;
            v48 += 8;
            --v47;
          }

          while (v47);
        }

        v30 = *(v26 + 120);
        if (vars0 > (v30 == 0))
        {
          v51 = v30 == 0;
          v52 = vars0 - v51;
          v53 = &a25 + 2 * v51;
          v54 = &STACK[0x780] + v51;
          v55 = v32 + v31 * v51;
          do
          {
            result = (*(v26 + 80))(v55, v28, v54, v53, vars8_4a);
            v53 += 2;
            ++v54;
            v55 += v31;
            --v52;
          }

          while (v52);
          v30 = *(v26 + 120);
        }
      }

      v30 += v34;
      *(v26 + 120) = v30;
      v25 = v57;
      v29 = *v57;
    }

    while (v30 < *v57);
  }

  v56 = *(v59 + 524);
  if (v56 >= v30)
  {
    v56 = v30;
  }

  *v25 = v56;
  if (*(v26 + 120) < *(v59 + 524))
  {
    if (v56 <= 4)
    {
      v56 = 4;
    }

    *v25 = v56 - 4;
  }

  return result;
}

void sub_277452C30(uint64_t a1, uint64_t a2, char a3, int *a4)
{
  if (*(a2 + 531))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("unsupported sample type\n", 0x18uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "unsupported sample type\n");
    }
  }

  else
  {
    v5 = (*(a2 + 520) >> 1);
    v6 = *(a2 + 524);
    v7 = v6 >> 1;
    v8 = *(a2 + 424);
    v9 = *a4;
    if (v6 >> 1 >= *a4 >> 1)
    {
      v7 = *a4 >> 1;
    }

    v10 = 2 * (v7 & 0xFFFFFFF8);
    if (v10 <= 4)
    {
      v10 = 4;
    }

    v11 = v10 - 4;
    v12 = v9 < v6;
    if (v9 < v6)
    {
      v13 = v11;
    }

    else
    {
      v13 = 2 * v7;
    }

    if (v12)
    {
      v14 = v7 & 0xFFFFFFF8;
    }

    else
    {
      v14 = v7;
    }

    *a4 = v13;
    v28 = *(a1 + 124);
    LODWORD(v15) = a3 - 15;
    if (v15 >= 0x24)
    {
      v15 = 36;
    }

    else
    {
      v15 = v15;
    }

    if (a3 <= 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v17 = byte_27753C6D3[v16];
    v18 = byte_27753C704[v16];
    v19 = *(a2 + 408);
    *(a1 + 124) = v14;
    if (v18)
    {
      v20 = v5 < 1;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = 0;
      v22 = v14 - v28;
      v29 = v19 + v8 * v28;
      v23 = v19 + v8 * (v28 + 4);
      v27 = v5;
      do
      {
        if ((v21 | 4) < v5)
        {
          (*(a1 + 104))(v29 + 2 * (v21 | 4), v8, v17, v18, v22);
        }

        v24 = v21 + 8;
        if (v21 + 8 < v5)
        {
          (*(a1 + 104))(v29 + 2 * v24, v8, v17, v18, v22);
        }

        if (v28)
        {
          (*(a1 + 112))(v29 + 2 * v21, v8, v17, v18, 8);
        }

        if (v22 >= 5)
        {
          v25 = 4;
          v26 = v23;
          do
          {
            (*(a1 + 112))(v26, v8, v17, v18, 8);
            v25 += 4;
            v26 += 4 * v8;
          }

          while (v22 > v25);
        }

        v23 += 16;
        v21 = v24;
        v5 = v27;
      }

      while (v24 < v27);
    }
  }
}

uint64_t sub_277452E58(unsigned int a1, _OWORD *a2, uint64_t a3, double *a4)
{
  v126 = *MEMORY[0x277D85DE8];
  v6 = byte_27750DFFA[a1];
  v7 = v6;
  v125 = 0;
  if (a1 >= 0x12)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v15 = a2 + 8;
      v8 = 15;
      v9 = 14;
      v10 = 13;
      v11 = 12;
      v12 = 11;
      v13 = 10;
      v14 = 9;
      goto LABEL_6;
    }

    v29 = word_27750E120[a1 - 11];
    v30 = 2 * v6;
    v31 = ((2 * v6) | 1) * v29 + 128;
    do
    {
      v116[v30++] = *(a2 + (v31 >> 8) - 1);
      v31 += v29;
    }

    while (v30 != -1);
    HIBYTE(v115) = *(a2 - 1);
    v117 = v112;
    v118 = v113;
    v119 = v114;
    v120 = v115;
    v25 = a2[8];
    v26 = a2[9];
    v27 = a2[10];
    v28 = a2[11];
  }

  else
  {
    if ((v6 & 0x80000000) == 0)
    {
      v8 = 7;
      v9 = 6;
      v10 = 5;
      v11 = 4;
      v12 = 3;
      v13 = 2;
      v14 = 1;
      v15 = a2;
LABEL_6:
      v16 = a2[v12];
      v17 = a2[v13];
      v18 = a2[v14];
      v117 = *v15;
      v118 = v18;
      v119 = v17;
      v120 = v16;
      v19 = a2[v10];
      v20 = a2[v9];
      v21 = a2[v8];
      v121 = a2[v11];
      v122 = v19;
      v123 = v20;
      v124 = v21;
      *&v112 = 8 * a3;
      *(&v112 + 1) = 8;
      goto LABEL_15;
    }

    v22 = word_27750E120[a1 - 11];
    v23 = 2 * v6;
    v24 = ((2 * v6) | 1) * v22 + 128;
    do
    {
      v116[v23++] = *(a2 + (v24 >> 8) + 127);
      v24 += v22;
    }

    while (v23 != -1);
    HIBYTE(v115) = *(a2 - 1);
    v117 = v112;
    v118 = v113;
    v119 = v114;
    v120 = v115;
    v25 = *a2;
    v26 = a2[1];
    v27 = a2[2];
    v28 = a2[3];
  }

  v121 = v25;
  v122 = v26;
  v123 = v27;
  v124 = v28;
  *&v112 = 8 * a3;
  *(&v112 + 1) = 8;
  if ((v6 & 0x80) != 0)
  {
    v86 = *(&v112 + (a1 > 0x11));
    v111 = 8 * v6;
    v87 = *(&v112 + (a1 < 0x12)) - 7 * v86;
    v88 = 8;
    v89 = v6;
    while (1)
    {
      v91 = &v120 + (v89 >> 8) + 1;
      v93 = v91[8];
      v92 = v91[9];
      v94 = v89 | 0xFFFFFF00;
      v96 = v91[6];
      v95 = v91[7];
      v98 = v91[4];
      v97 = v91[5];
      v100 = v91[2];
      v99 = v91[3];
      v101 = v91[1];
      if (v94 <= 0xFFFFFFBF)
      {
        v102 = *v91;
        if (v94 > 0xFFFFFF7F)
        {
          v103 = v89 | 0xFFFFFF00;
        }

        else
        {
          v92 = vext_s8(v93, v92, 4uLL);
          v93 = vext_s8(v95, v93, 4uLL);
          v95 = vext_s8(v96, v95, 4uLL);
          v96 = vext_s8(v97, v96, 4uLL);
          v97 = vext_s8(v98, v97, 4uLL);
          v98 = vext_s8(v99, v98, 4uLL);
          v99 = vext_s8(v100, v99, 4uLL);
          v100 = vext_s8(v101, v100, 4uLL);
          v103 = v94 + 128;
          v101 = vext_s8(v102, v101, 4uLL);
          if (v94 > 0xFFFFFF3F)
          {
            v94 = (v94 + 128);
            goto LABEL_58;
          }

          v102 = vshld_n_s64(v102, 0x20uLL);
        }

        v92 = vext_s8(v93, v92, 6uLL);
        v93 = vext_s8(v95, v93, 6uLL);
        v95 = vext_s8(v96, v95, 6uLL);
        v96 = vext_s8(v97, v96, 6uLL);
        v97 = vext_s8(v98, v97, 6uLL);
        v98 = vext_s8(v99, v98, 6uLL);
        v99 = vext_s8(v100, v99, 6uLL);
        v100 = vext_s8(v101, v100, 6uLL);
        v94 = v103 + 64;
        v101 = vext_s8(v102, v101, 6uLL);
      }

LABEL_58:
      sub_27745351C(v94, v7, a1 < 0x12, a3, a4, v101, v100);
      v104 = (a4 + v86);
      sub_27745351C(v94, v7, a1 < 0x12, a3, v104, v100, v99);
      v105 = (v104 + v86);
      sub_27745351C(v94, v7, a1 < 0x12, a3, v105, v99, v98);
      v106 = (v105 + v86);
      sub_27745351C(v94, v7, a1 < 0x12, a3, v106, v98, v97);
      v107 = (v106 + v86);
      sub_27745351C(v94, v7, a1 < 0x12, a3, v107, v97, v96);
      v108 = (v107 + v86);
      sub_27745351C(v94, v7, a1 < 0x12, a3, v108, v96, v95);
      v109 = (v108 + v86);
      sub_27745351C(v94, v7, a1 < 0x12, a3, v109, v95, v93);
      v110 = (v109 + v86);
      result = sub_27745351C(v94, v7, a1 < 0x12, a3, v110, v93, v92);
      v89 += v111;
      a4 = (v110 + v87);
      if (!--v88)
      {
        return result;
      }
    }
  }

  v6 = v6;
LABEL_15:
  v32 = *(&v112 + (a1 > 0x11));
  v33 = *(&v112 + (a1 < 0x12)) - 7 * v32;
  v34 = 8;
  v35 = v6;
  do
  {
    v37 = &v117 + 8 * (v35 >> 8);
    v38 = *v37;
    v39 = *(v37 + 1);
    v40 = COERCE_DOUBLE(vext_s8(*v37, *&v39, 4uLL));
    v41 = *(v37 + 2);
    v42 = *(v37 + 3);
    v43 = COERCE_DOUBLE(vext_s8(*&v39, *&v41, 4uLL));
    v44 = *(v37 + 4);
    v45 = *(v37 + 5);
    v46 = *(v37 + 6);
    v47 = *(v37 + 7);
    v48 = COERCE_DOUBLE(vext_s8(*&v41, *&v42, 4uLL));
    v49 = COERCE_DOUBLE(vext_s8(*&v42, *&v44, 4uLL));
    v50 = COERCE_DOUBLE(vext_s8(*&v44, *&v45, 4uLL));
    v51 = COERCE_DOUBLE(vext_s8(*&v45, *&v46, 4uLL));
    v52 = COERCE_DOUBLE(vext_s8(*&v46, *&v47, 4uLL));
    v53 = *(v37 + 8);
    v54 = *(v37 + 9);
    v55 = COERCE_DOUBLE(vext_s8(*&v47, *&v53, 4uLL));
    v56 = COERCE_DOUBLE(vext_s8(*&v53, v54, 4uLL));
    v57 = COERCE_DOUBLE(vshrd_n_u64(v54, 0x20uLL));
    v58 = v35;
    if (v35 < 0x80u)
    {
      v59 = v54;
    }

    else
    {
      v53 = v56;
      v47 = v55;
      v46 = v52;
      v45 = v51;
      v44 = v50;
      v42 = v49;
      v41 = v48;
      v39 = v43;
      v38 = v40;
      *&v59 = v57;
    }

    if (v35 >= 0x80u)
    {
      v58 = v35 - 128;
    }

    v60 = COERCE_DOUBLE(vext_s8(*&v38, *&v39, 2uLL));
    v61 = COERCE_DOUBLE(vext_s8(*&v39, *&v41, 2uLL));
    v62 = COERCE_DOUBLE(vext_s8(*&v41, *&v42, 2uLL));
    v63 = COERCE_DOUBLE(vext_s8(*&v42, *&v44, 2uLL));
    v64 = COERCE_DOUBLE(vext_s8(*&v44, *&v45, 2uLL));
    v65 = COERCE_DOUBLE(vext_s8(*&v45, *&v46, 2uLL));
    v66 = COERCE_DOUBLE(vext_s8(*&v46, *&v47, 2uLL));
    v67 = COERCE_DOUBLE(vext_s8(*&v47, *&v53, 2uLL));
    v68 = COERCE_DOUBLE(vext_s8(*&v53, v59, 2uLL));
    if (v58 >= 0x40)
    {
      *&v69 = v68;
    }

    else
    {
      *&v69 = v53;
    }

    if (v58 >= 0x40)
    {
      *&v70 = v67;
    }

    else
    {
      *&v70 = v47;
    }

    if (v58 >= 0x40)
    {
      *&v71 = v66;
    }

    else
    {
      *&v71 = v46;
    }

    if (v58 >= 0x40)
    {
      *&v72 = v65;
    }

    else
    {
      *&v72 = v45;
    }

    if (v58 >= 0x40)
    {
      *&v73 = v64;
    }

    else
    {
      *&v73 = v44;
    }

    if (v58 >= 0x40)
    {
      *&v74 = v63;
    }

    else
    {
      *&v74 = v42;
    }

    if (v58 >= 0x40)
    {
      *&v75 = v62;
    }

    else
    {
      *&v75 = v41;
    }

    if (v58 >= 0x40)
    {
      *&v76 = v61;
    }

    else
    {
      *&v76 = v39;
    }

    if (v58 < 0x40)
    {
      v77 = v58;
    }

    else
    {
      v38 = v60;
      v77 = v58 - 64;
    }

    sub_2774537F8(v77, v6, a1 < 0x12, a3, a4, *&v38, v76);
    v78 = (a4 + v32);
    sub_2774537F8(v77, v6, a1 < 0x12, a3, v78, v76, v75);
    v79 = (v78 + v32);
    sub_2774537F8(v77, v6, a1 < 0x12, a3, v79, v75, v74);
    v80 = (v79 + v32);
    sub_2774537F8(v77, v6, a1 < 0x12, a3, v80, v74, v73);
    v81 = (v80 + v32);
    sub_2774537F8(v77, v6, a1 < 0x12, a3, v81, v73, v72);
    v82 = (v81 + v32);
    sub_2774537F8(v77, v6, a1 < 0x12, a3, v82, v72, v71);
    v83 = (v82 + v32);
    sub_2774537F8(v77, v6, a1 < 0x12, a3, v83, v71, v70);
    v84 = (v83 + v32);
    result = sub_2774537F8(v77, v6, a1 < 0x12, a3, v84, v70, v69);
    v35 += 8 * v6;
    a4 = (v84 + v33);
    --v34;
  }

  while (v34);
  return result;
}

uint64_t sub_27745351C(uint64_t result, int a2, int a3, uint64_t a4, double *a5, int8x8_t a6, int8x8_t a7)
{
  v59[9] = *MEMORY[0x277D85DE8];
  v59[0] = a7;
  v59[1] = vext_s8(a6, a7, 7uLL);
  v59[2] = vext_s8(a6, a7, 6uLL);
  v59[3] = vext_s8(a6, a7, 5uLL);
  v59[4] = vext_s8(a6, a7, 4uLL);
  v59[5] = vext_s8(a6, a7, 3uLL);
  v59[6] = vext_s8(a6, a7, 2uLL);
  v59[7] = vext_s8(a6, a7, 1uLL);
  v59[8] = a6;
  if (result >> 5 >= 0)
  {
    v7 = result >> 5;
  }

  else
  {
    v7 = -(result >> 5);
  }

  v8 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v7 - 1], vdup_n_s8(result & 0x1F)), v59[v7], vdup_n_s8(32 - (result & 0x1F))), 5uLL));
  v9 = a2 + result;
  v10 = (a2 + result) >> 5;
  if (v10 < 0)
  {
    v10 = -v10;
  }

  v11 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v10 - 1], vdup_n_s8(v9 & 0x1F)), v59[v10], vdup_n_s8(32 - (v9 & 0x1Fu))), 5uLL));
  v12 = v9 + a2;
  v13 = v12 >> 5;
  if (v12 >> 5 < 0)
  {
    v13 = -v13;
  }

  v14 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v13 - 1], vdup_n_s8(v12 & 0x1F)), v59[v13], vdup_n_s8(32 - (v12 & 0x1Fu))), 5uLL));
  v15 = v12 + a2;
  v16 = v15 >> 5;
  if (v15 >> 5 < 0)
  {
    v16 = -v16;
  }

  v17 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v16 - 1], vdup_n_s8(v15 & 0x1F)), v59[v16], vdup_n_s8(32 - (v15 & 0x1Fu))), 5uLL));
  v18 = v15 + a2;
  v19 = v18 >> 5;
  if (v18 >> 5 < 0)
  {
    v19 = -v19;
  }

  v20 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v19 - 1], vdup_n_s8(v18 & 0x1F)), v59[v19], vdup_n_s8(32 - (v18 & 0x1Fu))), 5uLL));
  v21 = v18 + a2;
  v22 = v21 >> 5;
  if (v21 >> 5 < 0)
  {
    v22 = -v22;
  }

  v23 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v22 - 1], vdup_n_s8(v21 & 0x1F)), v59[v22], vdup_n_s8(32 - (v21 & 0x1Fu))), 5uLL));
  v24 = v21 + a2;
  v25 = v24 >> 5;
  if (v24 >> 5 < 0)
  {
    v25 = -v25;
  }

  v26 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v25 - 1], vdup_n_s8(v24 & 0x1F)), v59[v25], vdup_n_s8(32 - (v24 & 0x1Fu))), 5uLL));
  v27 = v24 + a2;
  v28 = v27 >> 5;
  if (v27 >> 5 < 0)
  {
    v28 = -v28;
  }

  v29 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v59[v28 - 1], vdup_n_s8(v27 & 0x1F)), v59[v28], vdup_n_s8(32 - (v27 & 0x1Fu))), 5uLL));
  v30 = vtrn1_s8(*&v8, *&v11);
  v31 = vtrn2_s8(*&v8, *&v11);
  v32 = vtrn1_s8(*&v14, *&v17);
  v33 = vtrn2_s8(*&v14, *&v17);
  v34 = vtrn1_s8(*&v20, *&v23);
  v35 = vtrn2_s8(*&v20, *&v23);
  v36 = vtrn1_s8(*&v26, *&v29);
  v37 = vtrn2_s8(*&v26, *&v29);
  v38 = vtrn1_s16(v30, v32);
  v39 = vtrn2_s16(v30, v32);
  v40 = vtrn1_s16(v31, v33);
  v41 = vtrn2_s16(v31, v33);
  v42 = vtrn1_s16(v34, v36);
  v43 = vtrn2_s16(v34, v36);
  v44 = vtrn1_s16(v35, v37);
  v45 = vtrn2_s16(v35, v37);
  v46 = COERCE_DOUBLE(vzip1_s32(v38, v42));
  v47 = COERCE_DOUBLE(vzip2_s32(v38, v42));
  v48 = COERCE_DOUBLE(vzip1_s32(v40, v44));
  v49 = COERCE_DOUBLE(vzip2_s32(v40, v44));
  v50 = COERCE_DOUBLE(vzip1_s32(v39, v43));
  v51 = COERCE_DOUBLE(vzip2_s32(v39, v43));
  v52 = COERCE_DOUBLE(vzip1_s32(v41, v45));
  v53 = COERCE_DOUBLE(vzip2_s32(v41, v45));
  if (a3)
  {
    v29 = v53;
    v26 = v51;
    v23 = v49;
    v20 = v47;
    v17 = v52;
    v14 = v50;
    v11 = v48;
    v8 = v46;
  }

  *a5 = v8;
  *(a5 + a4) = v11;
  v54 = (a5 + a4 + a4);
  *v54 = v14;
  v55 = (v54 + a4);
  *v55 = v17;
  v56 = (v55 + a4);
  *v56 = v20;
  v57 = (v56 + a4);
  *v57 = v23;
  v58 = (v57 + a4);
  *v58 = v26;
  *(v58 + a4) = v29;
  return result;
}

uint64_t sub_2774537F8(uint64_t result, int a2, int a3, uint64_t a4, double *a5, int8x8_t a6, int8x8_t a7)
{
  v68[9] = *MEMORY[0x277D85DE8];
  v68[0] = a6;
  v68[1] = vext_s8(a6, a7, 1uLL);
  v68[2] = vext_s8(a6, a7, 2uLL);
  v68[3] = vext_s8(a6, a7, 3uLL);
  v68[4] = vext_s8(a6, a7, 4uLL);
  v68[5] = vext_s8(a6, a7, 5uLL);
  v68[6] = vext_s8(a6, a7, 6uLL);
  v68[7] = vext_s8(a6, a7, 7uLL);
  v68[8] = a7;
  v7 = &v68[result >> 5];
  v8 = vmull_u8(*v7, vdup_n_s8(32 - (result & 0x1F)));
  if ((result & 0x1F) != 0)
  {
    v8 = vmlal_u8(v8, v7[1], vdup_n_s8(result & 0x1F));
  }

  v9 = a2 + result;
  v10 = &v68[(a2 + result) >> 5];
  v11 = (a2 + result) & 0x1F;
  v12 = vmull_u8(*v10, vdup_n_s8(32 - v11));
  if (v11)
  {
    v12 = vmlal_u8(v12, v10[1], vdup_n_s8(v11));
  }

  v13 = &v68[(v9 + a2) >> 5];
  v14 = (v9 + a2) & 0x1F;
  v15 = vmull_u8(*v13, vdup_n_s8(32 - v14));
  if (v14)
  {
    v15 = vmlal_u8(v15, v13[1], vdup_n_s8(v14));
  }

  v16 = v9 + a2 + a2;
  v17 = &v68[v16 >> 5];
  v18 = vmull_u8(*v17, vdup_n_s8(32 - (v16 & 0x1F)));
  if ((v16 & 0x1F) != 0)
  {
    v18 = vmlal_u8(v18, v17[1], vdup_n_s8(v16 & 0x1F));
  }

  v19 = v16 + a2;
  v20 = &v68[v19 >> 5];
  v21 = vmull_u8(*v20, vdup_n_s8(32 - (v19 & 0x1F)));
  if ((v19 & 0x1F) != 0)
  {
    v21 = vmlal_u8(v21, v20[1], vdup_n_s8(v19 & 0x1F));
  }

  v22 = v19 + a2;
  v23 = &v68[v22 >> 5];
  v24 = vmull_u8(*v23, vdup_n_s8(32 - (v22 & 0x1F)));
  if ((v22 & 0x1F) != 0)
  {
    v24 = vmlal_u8(v24, v23[1], vdup_n_s8(v22 & 0x1F));
  }

  v25 = v22 + a2;
  v26 = &v68[v25 >> 5];
  v27 = vmull_u8(*v26, vdup_n_s8(32 - (v25 & 0x1F)));
  if ((v25 & 0x1F) != 0)
  {
    v27 = vmlal_u8(v27, v26[1], vdup_n_s8(v25 & 0x1F));
  }

  v28 = COERCE_DOUBLE(vrshrn_n_s16(v8, 5uLL));
  v29 = COERCE_DOUBLE(vrshrn_n_s16(v12, 5uLL));
  v30 = COERCE_DOUBLE(vrshrn_n_s16(v15, 5uLL));
  v31 = COERCE_DOUBLE(vrshrn_n_s16(v18, 5uLL));
  v32 = COERCE_DOUBLE(vrshrn_n_s16(v21, 5uLL));
  v33 = COERCE_DOUBLE(vrshrn_n_s16(v24, 5uLL));
  v34 = COERCE_DOUBLE(vrshrn_n_s16(v27, 5uLL));
  v35 = v25 + a2;
  v36 = &v68[(v25 + a2) >> 5];
  v37 = vmull_u8(*v36, vdup_n_s8(32 - (v35 & 0x1Fu)));
  if ((v35 & 0x1F) != 0)
  {
    v37 = vmlal_u8(v37, v36[1], vdup_n_s8(v35 & 0x1F));
  }

  v38 = COERCE_DOUBLE(vrshrn_n_s16(v37, 5uLL));
  v39 = vtrn1_s8(*&v28, *&v29);
  v40 = vtrn2_s8(*&v28, *&v29);
  v41 = vtrn1_s8(*&v30, *&v31);
  v42 = vtrn2_s8(*&v30, *&v31);
  v43 = vtrn1_s8(*&v32, *&v33);
  v44 = vtrn2_s8(*&v32, *&v33);
  v45 = vtrn1_s8(*&v34, *&v38);
  v46 = vtrn2_s8(*&v34, *&v38);
  v47 = vtrn1_s16(v39, v41);
  v48 = vtrn2_s16(v39, v41);
  v49 = vtrn1_s16(v40, v42);
  v50 = vtrn2_s16(v40, v42);
  v51 = vtrn1_s16(v43, v45);
  v52 = vtrn2_s16(v43, v45);
  v53 = vtrn1_s16(v44, v46);
  v54 = vtrn2_s16(v44, v46);
  v55 = COERCE_DOUBLE(vzip1_s32(v47, v51));
  v56 = COERCE_DOUBLE(vzip2_s32(v47, v51));
  v57 = COERCE_DOUBLE(vzip1_s32(v49, v53));
  v58 = COERCE_DOUBLE(vzip2_s32(v49, v53));
  v59 = COERCE_DOUBLE(vzip1_s32(v48, v52));
  v60 = COERCE_DOUBLE(vzip2_s32(v48, v52));
  v61 = COERCE_DOUBLE(vzip1_s32(v50, v54));
  v62 = COERCE_DOUBLE(vzip2_s32(v50, v54));
  if (a3)
  {
    v38 = v62;
    v34 = v60;
    v33 = v58;
    v32 = v56;
    v31 = v61;
    v30 = v59;
    v29 = v57;
    v28 = v55;
  }

  *a5 = v28;
  *(a5 + a4) = v29;
  v63 = (a5 + a4 + a4);
  *v63 = v30;
  v64 = (v63 + a4);
  *v64 = v31;
  v65 = (v64 + a4);
  *v65 = v32;
  v66 = (v65 + a4);
  *v66 = v33;
  v67 = (v66 + a4);
  *v67 = v34;
  *(v67 + a4) = v38;
  return result;
}

uint64_t sub_277453AEC(unsigned int a1, _OWORD *a2, uint64_t a3, double *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = byte_27750DFFA[a1];
  v73 = 0;
  if (a1 < 0x12)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v7 = 3;
      v8 = 2;
      v9 = 1;
      v10 = a2;
      goto LABEL_6;
    }

    v43 = &qword_27750E020[4 * (18 - a1)];
    v75 = *(a2 + 2);
    v44 = vqtbl2q_s8(v75, v43[1]);
    v69 = vqtbl2q_s8(v75, *v43);
    v45 = vextq_s8(v44, v44, 8uLL);
    v45.i8[7] = *(a2 - 1);
    *&v70 = v44.i64[0];
    *(&v70 + 1) = v45.i64[0];
    v46 = 1;
    v47 = a2;
    goto LABEL_29;
  }

  if ((v6 & 0x80) != 0)
  {
    v48 = &qword_27750E020[4 * a1 - 72];
    v49 = vqtbl2q_s8(*a2, v48[1]);
    v69 = vqtbl2q_s8(*a2, *v48);
    v50 = vextq_s8(v49, v49, 8uLL);
    v50.i8[7] = *(a2 - 1);
    *&v70 = v49.i64[0];
    *(&v70 + 1) = v50.i64[0];
    v47 = a2 + 4;
    v46 = 5;
LABEL_29:
    v51 = a2[v46];
    v71 = *v47;
    v72 = v51;
    v67 = 8 * a3;
    v68 = 8;
    v52 = *(&v67 + (a1 > 0x11));
    v65 = *(&v67 + (a1 < 0x12));
    v53 = 4;
    v54 = v6;
    while (1)
    {
      v56 = v54 | 0xFFFFFF00;
      v57 = &v70 + (v54 >> 8) + 1;
      v59 = v57[4];
      v58 = v57[5];
      v61 = v57[2];
      v60 = v57[3];
      v62 = v57[1];
      if (v56 <= 0xFFFFFFBF)
      {
        v63 = *v57;
        if (v56 > 0xFFFFFF7F)
        {
          v64 = v54 | 0xFFFFFF00;
        }

        else
        {
          v58 = vext_s8(v59, v58, 4uLL);
          v59 = vext_s8(v60, v59, 4uLL);
          v60 = vext_s8(v61, v60, 4uLL);
          v61 = vext_s8(v62, v61, 4uLL);
          v64 = v56 + 128;
          v62 = vext_s8(v63, v62, 4uLL);
          if (v56 > 0xFFFFFF3F)
          {
            v56 = (v56 + 128);
            goto LABEL_37;
          }

          v63 = vshld_n_s64(v63, 0x20uLL);
        }

        v58 = vext_s8(v59, v58, 6uLL);
        v59 = vext_s8(v60, v59, 6uLL);
        v60 = vext_s8(v61, v60, 6uLL);
        v61 = vext_s8(v62, v61, 6uLL);
        v56 = v64 + 64;
        v62 = vext_s8(v63, v62, 6uLL);
      }

LABEL_37:
      sub_27745351C(v56, v6, a1 < 0x12, a3, a4, v62, v61);
      sub_27745351C(v56, v6, a1 < 0x12, a3, (a4 + v52), v61, v60);
      sub_27745351C(v56, v6, a1 < 0x12, a3, (a4 + 2 * v52), v60, v59);
      result = sub_27745351C(v56, v6, a1 < 0x12, a3, (a4 + 3 * v52), v59, v58);
      a4 = (a4 + v65);
      v54 += 8 * v6;
      if (!--v53)
      {
        return result;
      }
    }
  }

  v10 = (a2 + 4);
  v7 = 7;
  v8 = 6;
  v9 = 5;
LABEL_6:
  v11 = a2[v7];
  v12 = a2[v8];
  v13 = a2[v9];
  v69 = *v10;
  v70 = v13;
  v67 = 8 * a3;
  v68 = 8;
  v14 = *(&v67 + (a1 > 0x11));
  v66 = *(&v67 + (a1 < 0x12));
  v71 = v12;
  v72 = v11;
  v15 = 4;
  v16 = v6;
  do
  {
    v18 = &v69.i8[8 * (v16 >> 8)];
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    v22 = *(v18 + 3);
    v23 = *(v18 + 4);
    v24 = *(v18 + 5);
    v25 = COERCE_DOUBLE(vext_s8(*v18, *&v20, 4uLL));
    v26 = COERCE_DOUBLE(vext_s8(*&v20, *&v21, 4uLL));
    v27 = COERCE_DOUBLE(vext_s8(*&v21, *&v22, 4uLL));
    v28 = COERCE_DOUBLE(vext_s8(*&v22, *&v23, 4uLL));
    v29 = COERCE_DOUBLE(vext_s8(*&v23, v24, 4uLL));
    v30 = COERCE_DOUBLE(vshrd_n_u64(v24, 0x20uLL));
    v31 = v16 - 128;
    if (v16 < 0x80u)
    {
      v31 = v16;
    }

    else
    {
      v23 = v29;
      v22 = v28;
      v21 = v27;
      v20 = v26;
      v19 = v25;
      *&v24 = v30;
    }

    v32 = COERCE_DOUBLE(vext_s8(*&v19, *&v20, 2uLL));
    v33 = COERCE_DOUBLE(vext_s8(*&v20, *&v21, 2uLL));
    v34 = COERCE_DOUBLE(vext_s8(*&v21, *&v22, 2uLL));
    v35 = COERCE_DOUBLE(vext_s8(*&v22, *&v23, 2uLL));
    v36 = COERCE_DOUBLE(vext_s8(*&v23, v24, 2uLL));
    if (v31 >= 0x40)
    {
      *&v37 = v36;
    }

    else
    {
      *&v37 = v23;
    }

    if (v31 >= 0x40)
    {
      *&v38 = v35;
    }

    else
    {
      *&v38 = v22;
    }

    if (v31 >= 0x40)
    {
      *&v39 = v34;
    }

    else
    {
      *&v39 = v21;
    }

    if (v31 >= 0x40)
    {
      *&v40 = v33;
    }

    else
    {
      *&v40 = v20;
    }

    if (v31 < 0x40)
    {
      v41 = v31;
    }

    else
    {
      v19 = v32;
      v41 = v31 - 64;
    }

    sub_2774537F8(v41, v6, a1 < 0x12, a3, a4, *&v19, v40);
    sub_2774537F8(v41, v6, a1 < 0x12, a3, (a4 + v14), v40, v39);
    sub_2774537F8(v41, v6, a1 < 0x12, a3, (a4 + 2 * v14), v39, v38);
    result = sub_2774537F8(v41, v6, a1 < 0x12, a3, (a4 + 3 * v14), v38, v37);
    a4 = (a4 + v66);
    v16 += 8 * v6;
    --v15;
  }

  while (v15);
  return result;
}

uint64_t sub_277453F4C(unsigned int a1, int8x16_t *a2, uint64_t a3, double *a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = byte_27750DFFA[a1];
  v57 = 0;
  if (a1 >= 0x12)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v9 = a2 + 2;
      v8 = 3;
      goto LABEL_6;
    }

    v36 = vqtbl1q_s8(*a2, *qword_27750E020[4 * a1 - 70].i8);
    v35 = vextq_s8(v36, v36, 8uLL);
    v35.i8[7] = a2[-1].i8[15];
    v55.i64[0] = v36.i64[0];
    v55.i64[1] = v35.i64[0];
    a2 += 2;
  }

  else
  {
    if ((v7 & 0x80000000) == 0)
    {
      v8 = 1;
      v9 = a2;
LABEL_6:
      v10 = *v9;
      v11 = a1 > 0x11;
      v12 = a1 < 0x12;
      v49 = vextq_s8(v10, v10, 8uLL).u64[0];
      v51 = a2[v8];
      v55 = *v9;
      v56 = v51;
      v53 = 8 * a3;
      v54 = 8;
      sub_2774537F8(v7, v7, v12, a3, a4, *v10.i8, v49);
      v13 = *(&v53 + v11);
      sub_2774537F8(v7, v7, a1 < 0x12, a3, (a4 + v13), v49, *v51.i8);
      v14 = (a4 + *(&v53 + v12));
      v15 = (9 * v7);
      v16 = &v55.i8[((9 * v7) >> 5) & 0x78];
      v17 = *v16;
      v18 = *(v16 + 1);
      v19 = *(v16 + 2);
      v20 = *(v16 + 3);
      v21 = COERCE_DOUBLE(vext_s8(*v16, *&v18, 4uLL));
      v22 = COERCE_DOUBLE(vext_s8(*&v18, *&v19, 4uLL));
      v23 = COERCE_DOUBLE(vext_s8(*&v19, v20, 4uLL));
      v24 = COERCE_DOUBLE(vshrd_n_u64(v20, 0x20uLL));
      v25 = v15 - 128;
      if (v15 < 0x80)
      {
        v25 = (9 * v7);
      }

      else
      {
        v19 = v23;
        v18 = v22;
        v17 = v21;
        *&v20 = v24;
      }

      v26 = COERCE_DOUBLE(vext_s8(*&v17, *&v18, 2uLL));
      v27 = COERCE_DOUBLE(vext_s8(*&v18, *&v19, 2uLL));
      v28 = COERCE_DOUBLE(vext_s8(*&v19, v20, 2uLL));
      if (v25 >= 0x40)
      {
        *&v29 = v28;
      }

      else
      {
        *&v29 = v19;
      }

      if (v25 >= 0x40)
      {
        *&v30 = v27;
      }

      else
      {
        *&v30 = v18;
      }

      if (v25 < 0x40)
      {
        v31 = v25;
      }

      else
      {
        v17 = v26;
        v31 = v25 - 64;
      }

      v32 = a1 < 0x12;
      sub_2774537F8(v31, v7, v32, a3, v14, *&v17, v30);

      return sub_2774537F8(v31, v7, v32, a3, (v14 + v13), v30, v29);
    }

    v34 = vqtbl1q_s8(a2[2], *qword_27750E020[4 * (18 - a1) + 2].i8);
    v35 = vextq_s8(v34, v34, 8uLL);
    v35.i8[7] = a2[-1].i8[15];
    v55.i64[0] = v34.i64[0];
    v55.i64[1] = v35.i64[0];
  }

  v37 = a1 > 0x11;
  v38 = a1 < 0x12;
  v56 = *a2;
  v50 = *v56.i8;
  v52 = vextq_s8(v56, v56, 8uLL).u64[0];
  v53 = 8 * a3;
  v54 = 8;
  v39 = &v55.i64[(9 * v7) >> 8];
  sub_27745351C(v7, v7, v38, a3, a4, *v35.i8, *v56.i8);
  v40 = *(&v53 + v37);
  sub_27745351C(v7, v7, a1 < 0x12, a3, (a4 + v40), v50, v52);
  v41 = (a4 + *(&v53 + v38));
  v42 = (9 * v7) | 0xFFFFFF00;
  v44 = v39[3];
  v43 = v39[4];
  v45 = v39[2];
  if (v42 <= 0xFFFFFFBF)
  {
    v46 = v39[1];
    if (v42 > 0xFFFFFF7F)
    {
      v47 = (9 * v7) | 0xFFFFFF00;
    }

    else
    {
      v43 = vext_s8(v44, v43, 4uLL);
      v44 = vext_s8(v45, v44, 4uLL);
      v45 = vext_s8(v46, v45, 4uLL);
      v47 = v42 + 128;
      if (v42 > 0xFFFFFF3F)
      {
        v42 = (v42 + 128);
        goto LABEL_30;
      }

      v46 = vshld_n_s64(v46, 0x20uLL);
    }

    v43 = vext_s8(v44, v43, 6uLL);
    v44 = vext_s8(v45, v44, 6uLL);
    v45 = vext_s8(v46, v45, 6uLL);
    v42 = v47 + 64;
  }

LABEL_30:
  v48 = a1 < 0x12;
  sub_27745351C(v42, v7, v48, a3, v41, v45, v44);

  return sub_27745351C(v42, v7, v48, a3, (v41 + v40), v44, v43);
}

uint64_t sub_277454300(unsigned int a1, int8x8_t *a2, uint64_t a3, double *a4, int8x16_t a5)
{
  v6 = byte_27750DFFA[a1];
  if (a1 < 0x12)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return sub_2774537F8(v6, v6, a1 < 0x12, a3, a4, *a2, *&vextq_s8(*a2->i8, *a2->i8, 8uLL));
    }

    *a5.i8 = a2[2];
    *a5.i8 = vqtbl1_s8(a5, qword_27750E020[4 * (18 - a1) + 3]);
    a5.i8[7] = a2[-1].i8[7];
  }

  else
  {
    if ((v6 & 0x80000000) == 0)
    {
      a2 += 2;
      return sub_2774537F8(v6, v6, a1 < 0x12, a3, a4, *a2, *&vextq_s8(*a2->i8, *a2->i8, 8uLL));
    }

    *a5.i8 = *a2;
    *a5.i8 = vqtbl1_s8(a5, qword_27750E020[4 * a1 - 69]);
    a5.i8[7] = a2[-1].i8[7];
    a2 += 2;
  }

  return sub_27745351C(v6, v6, a1 < 0x12, a3, a4, *a5.i8, *a2);
}

uint64_t sub_2774543AC(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, double a5, int8x16_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = byte_27750DFFA[result];
  v7 = byte_27750DFFA[result];
  v8 = result - 18;
  if (result < 0x12)
  {
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v23 = a2 + 1;
    v8 = 18 - result;
    v9 = a2;
LABEL_16:
    a6.i64[0] = *v23;
    v24 = vext_s8(vqtbl1_s8(a6, qword_27750E020[4 * v8 + 3]), *v9, 4uLL);
    v25 = vshrd_n_u64(v24, 0x20uLL);
    BYTE3(v24) = *(a2 - 1);
    v35 = v25;
    v36 = vshrd_n_u64(v24, 0x18uLL);
    v37 = vshrd_n_u64(v24, 0x10uLL);
    v38 = vshrd_n_u64(v24, 8uLL);
    v39 = v24;
    v26 = (&v35 + -(v6 >> 5));
    v20 = vrshrn_n_s16(vmlal_u8(vmull_u8(v26[-1], vdup_n_s8(v7 & 0x1F)), *v26, vdup_n_s8(32 - (v7 & 0x1F))), 5uLL).u32[0];
    v27 = (&v35 + -(v6 >> 4));
    v21 = vrshrn_n_s16(vmlal_u8(vmull_u8(v27[-1], vdup_n_s8(2 * (v7 & 0xF))), *v27, vdup_n_s8(32 - 2 * (v7 & 0xF))), 5uLL).u32[0];
    v28 = (&v35 + -((3 * v6) >> 5));
    v22 = vrshrn_n_s16(vmlal_u8(vmull_u8(v28[-1], vdup_n_s8((3 * v6) & 0x1F)), *v28, vdup_n_s8(32 - ((3 * v6) & 0x1Fu))), 5uLL).u32[0];
    v29 = (&v35 + -(v6 >> 3));
    v19 = vmlal_u8(vmull_u8(v29[-1], vdup_n_s8(4 * (v7 & 7))), *v29, vdup_n_s8(32 - 4 * (v7 & 7)));
    goto LABEL_17;
  }

  v9 = (a2 + 1);
  if (v6 < 0)
  {
    v23 = a2;
    goto LABEL_16;
  }

  ++a2;
LABEL_5:
  v10 = vshrd_n_u64(*a2, 8uLL);
  v35 = *a2;
  v36 = v10;
  v37 = vshrd_n_u64(v35, 0x10uLL);
  v38 = vshrd_n_u64(v35, 0x18uLL);
  v39 = vshrd_n_u64(v35, 0x20uLL);
  v11 = vmull_u8(*(&v35 + ((v7 >> 2) & 0x38)), vdup_n_s8(32 - (v6 & 0x1Fu)));
  if ((v6 & 0x1F) != 0)
  {
    v11 = vmlal_u8(v11, *(&v35 + ((v7 >> 2) & 0x38) + 8), vdup_n_s8(v6 & 0x1F));
  }

  v12 = 2 * (v6 & 0xF);
  v13 = (&v35 + ((v7 >> 1) & 0x78));
  v14 = vmull_u8(*v13, vdup_n_s8(32 - v12));
  if (v12)
  {
    v14 = vmlal_u8(v14, v13[1], vdup_n_s8(v12));
  }

  v15 = (3 * v7) & 0x1F;
  v16 = vmull_u8(*(&v35 + (((3 * v7) >> 2) & 0xF8)), vdup_n_s8(32 - v15));
  if (v15)
  {
    v16 = vmlal_u8(v16, *(&v35 + (((3 * v7) >> 2) & 0xF8) + 8), vdup_n_s8(v15));
  }

  v17 = 4 * (v6 & 7);
  v18 = (&v35 + (v7 & 0xF8));
  v19 = vmull_u8(*v18, vdup_n_s8(32 - v17));
  if (v17)
  {
    v19 = vmlal_u8(v19, v18[1], vdup_n_s8(v17));
  }

  v20 = vrshrn_n_s16(v11, 5uLL).u32[0];
  v21 = vrshrn_n_s16(v14, 5uLL).u32[0];
  v22 = vrshrn_n_s16(v16, 5uLL).u32[0];
LABEL_17:
  v30 = vrshrn_n_s16(v19, 5uLL).u32[0];
  if (result > 0x11)
  {
    *a4 = v20;
    *(a4 + a3) = v21;
    v34 = (a4 + a3 + a3);
    *v34 = v22;
    *(v34 + a3) = v30;
  }

  else
  {
    *a4 = v20;
    *(a4 + 1) = v21;
    *(a4 + 2) = v22;
    *(a4 + 3) = v30;
    v31 = (a4 + a3);
    *v31 = BYTE1(v20);
    v31[1] = BYTE1(v21);
    v31[2] = BYTE1(v22);
    v31[3] = BYTE1(v30);
    v32 = &v31[a3];
    *v32 = BYTE2(v20);
    v32[1] = BYTE2(v21);
    v32[2] = BYTE2(v22);
    v32[3] = BYTE2(v30);
    v33 = &v32[a3];
    *v33 = HIBYTE(v20);
    v33[1] = HIBYTE(v21);
    v33[2] = HIBYTE(v22);
    v33[3] = HIBYTE(v30);
  }

  return result;
}

void sub_277454660(uint64_t a1, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*a2), *a2), *(a2 + 16)), *(a2 + 16)), *(a2 + 32)), *(a2 + 32)), *(a2 + 48)), *(a2 + 48)), *(a2 + 128)), *(a2 + 128)), *(a2 + 144)), *(a2 + 144)), *(a2 + 160)), *(a2 + 160)), *(a2 + 176)), *(a2 + 176));
  v4.i64[0] = vpaddq_s16(v4, v4).u64[0];
  *v4.i8 = vpadd_s16(*v4.i8, *v4.i8);
  *v5.i8 = vpadd_s16(*v4.i8, *v4.i8);
  v5.i64[1] = v5.i64[0];
  v6 = vqrshrn_high_n_u16(vqrshrn_n_u16(v5, 7uLL), v5, 7uLL);
  v7 = a4 + 2;
  v8 = 64;
  do
  {
    v7[-2] = v6;
    v7[-1] = v6;
    *v7 = v6;
    v7[1] = v6;
    v7 = (v7 + a3);
    --v8;
  }

  while (v8);
}

void sub_2774546E8(uint64_t a1, uint64_t a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*a2), *a2), *(a2 + 16)), *(a2 + 16)), *(a2 + 64)), *(a2 + 64)), *(a2 + 80)), *(a2 + 80));
  v4.i64[0] = vpaddq_s16(v4, v4).u64[0];
  *v4.i8 = vpadd_s16(*v4.i8, *v4.i8);
  *v5.i8 = vpadd_s16(*v4.i8, *v4.i8);
  v5.i64[1] = v5.i64[0];
  v6 = vqrshrn_high_n_u16(vqrshrn_n_u16(v5, 6uLL), v5, 6uLL);
  v7 = a4 + 1;
  v8 = 32;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + a3);
    --v8;
  }

  while (v8);
}

void sub_277454744(uint64_t a1, uint8x16_t *a2, uint64_t a3, int8x16_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v5 = vmovl_high_u8(*a2);
  v6 = vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*a2->i8), *a2), v4), *v4.i8);
  v6.i64[0] = vpaddq_s16(v6, v6).u64[0];
  *v6.i8 = vpadd_s16(*v6.i8, *v6.i8);
  *v6.i8 = vpadd_s16(*v6.i8, *v6.i8);
  v6.i64[1] = v6.i64[0];
  v7 = vqrshrn_n_u16(v6, 5uLL);
  v8 = vmull_u8(v7, 0x303030303030302);
  v9 = vdupq_lane_s16(*v8.i8, 1);
  v10 = vrshrn_n_s16(vaddw_u8(v8, *a2->i8), 2uLL);
  v11 = vrshrn_n_s16(vmlal_u8(vaddl_u8(a2->u8[0], *v4.i8), v7, 0x303030303030302), 2uLL);
  v20 = vext_s8(vshld_n_s64(v10, 0x30uLL), v7, 7uLL);
  v21 = vext_s8(vshld_n_s64(v10, 0x28uLL), v7, 7uLL);
  v22 = vext_s8(vshld_n_s64(v10, 0x20uLL), v7, 7uLL);
  v23 = vext_s8(vshld_n_s64(v10, 0x18uLL), v7, 7uLL);
  v24 = vext_s8(vshld_n_s64(v10, 0x10uLL), v7, 7uLL);
  v25 = vext_s8(vshld_n_s64(v10, 8uLL), v7, 7uLL);
  v26 = vext_s8(v10, v7, 7uLL);
  *a4 = vrshrn_high_n_s16(v11, vaddw_high_u8(v9, v4), 2uLL);
  v12 = &a4->i8[a3];
  for (i = 8; i != 64; i += 8)
  {
    *&v14 = *(&v19 + i);
    *(&v14 + 1) = v7;
    *v12 = v14;
    v12 += a3;
  }

  v15 = 0;
  v16 = 0;
  v17 = vrshrn_n_s16(vaddq_s16(v9, v5), 2uLL);
  v19 = vext_s8(vshld_n_s64(v17, 0x38uLL), v7, 7uLL);
  v20 = vext_s8(vshld_n_s64(v17, 0x30uLL), v7, 7uLL);
  v21 = vext_s8(vshld_n_s64(v17, 0x28uLL), v7, 7uLL);
  v22 = vext_s8(vshld_n_s64(v17, 0x20uLL), v7, 7uLL);
  v23 = vext_s8(vshld_n_s64(v17, 0x18uLL), v7, 7uLL);
  v24 = vext_s8(vshld_n_s64(v17, 0x10uLL), v7, 7uLL);
  v25 = vext_s8(vshld_n_s64(v17, 8uLL), v7, 7uLL);
  v26 = vext_s8(v17, v7, 7uLL);
  do
  {
    *&v18 = *(&v19 + v16);
    *(&v18 + 1) = v7;
    *&v12[v15] = v18;
    v16 += 8;
    v15 += a3;
  }

  while (v16 != 64);
}

int8x8_t sub_2774548DC(uint64_t a1, uint8x8_t *a2, uint64_t a3, int8x8_t *a4)
{
  v4 = a2[2];
  v5 = vpadd_s16(vpaddl_u8(v4), vpaddl_u8(*a2));
  v6 = vpadd_s16(v5, v5);
  *v7.i8 = vpadd_s16(v6, v6);
  v7.i64[1] = v7.i64[0];
  *v7.i8 = vqrshrn_n_u16(v7, 4uLL);
  v8 = vrshrn_n_s16(vaddw_u8(vmull_u8(*v7.i8, 0x303030303030302), *a2), 2uLL);
  result = vrshrn_n_s16(vmlal_u8(vaddl_u8(a2->u8[0], v4), *v7.i8, 0x303030303030302), 2uLL);
  *a4 = result;
  *(a4 + a3) = vext_s8(vshld_n_s64(v8, 0x30uLL), *v7.i8, 7uLL);
  v10 = (a4 + a3 + a3);
  *v10 = vext_s8(vshld_n_s64(v8, 0x28uLL), *v7.i8, 7uLL);
  v11 = (v10 + a3);
  *v11 = vext_s8(vshld_n_s64(v8, 0x20uLL), *v7.i8, 7uLL);
  v12 = (v11 + a3);
  *v12 = vext_s8(vshld_n_s64(v8, 0x18uLL), *v7.i8, 7uLL);
  v13 = (v12 + a3);
  *v13 = vext_s8(vshld_n_s64(v8, 0x10uLL), *v7.i8, 7uLL);
  v14 = (v13 + a3);
  *v14 = vext_s8(vshld_n_s64(v8, 8uLL), *v7.i8, 7uLL);
  *(v14 + a3) = vext_s8(v8, *v7.i8, 7uLL);
  return result;
}

int16x8_t sub_277454998(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  v4 = a2[1];
  v5 = vpaddl_u8(vext_s8(vshld_n_s64(*a2, 0x20uLL), v4, 4uLL));
  v6 = vpadd_s16(v5, v5);
  *v7.i8 = vpadd_s16(v6, v6);
  v7.i64[1] = v7.i64[0];
  v8 = vqrshrn_n_u16(v7, 3uLL);
  result = vaddw_u8(vmull_u8(v8, 0x303030303030302), *a2);
  *v7.i8 = vrshrn_n_s16(result, 2uLL);
  *a4 = vrshrn_n_s16(vmlal_u8(vaddl_u8(*a2, v4), v8, 0x303030303030302), 2uLL).u32[0];
  v10 = a4 + a3;
  *v10 = v7.i8[1];
  v10[1] = v8.i8[1];
  v10[2] = v8.i8[1];
  v10[3] = v8.i8[1];
  v11 = a4 + a3 + a3;
  *v11 = v7.i8[2];
  v11[1] = v8.i8[2];
  v11[2] = v8.i8[2];
  v11[3] = v8.i8[2];
  v12 = &v11[a3];
  *v12 = v7.i8[3];
  v12[1] = v8.i8[3];
  v12[2] = v8.i8[3];
  v12[3] = v8.i8[3];
  return result;
}

int8x16_t sub_277454A00(uint64_t a1, _OWORD *a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 0;
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v24[0] = *a2;
  v24[1] = v5;
  v24[2] = v6;
  v24[3] = v7;
  do
  {
    v8 = *(v24 + v4);
    v9 = vdupq_lane_s8(v8, 0);
    v10 = vdupq_lane_s8(v8, 1);
    v11 = vdupq_lane_s8(v8, 2);
    v12 = vdupq_lane_s8(v8, 3);
    v13 = vdupq_lane_s8(v8, 4);
    v14 = vdupq_lane_s8(v8, 5);
    v15 = vdupq_lane_s8(v8, 6);
    result = vdupq_lane_s8(v8, 7);
    *a4 = v9;
    a4[1] = v9;
    a4[2] = v9;
    a4[3] = v9;
    v17 = (a4 + a3);
    *v17 = v10;
    v17[1] = v10;
    v17[2] = v10;
    v17[3] = v10;
    v18 = (a4 + a3 + a3);
    *v18 = v11;
    v18[1] = v11;
    v18[2] = v11;
    v18[3] = v11;
    v19 = (v18 + a3);
    *v19 = v12;
    v19[1] = v12;
    v19[2] = v12;
    v19[3] = v12;
    v20 = (v19 + a3);
    *v20 = v13;
    v20[1] = v13;
    v20[2] = v13;
    v20[3] = v13;
    v21 = (v20 + a3);
    *v21 = v14;
    v21[1] = v14;
    v21[2] = v14;
    v21[3] = v14;
    v22 = (v21 + a3);
    *v22 = v15;
    v22[1] = v15;
    v22[2] = v15;
    v22[3] = v15;
    v23 = (v22 + a3);
    *v23 = result;
    v23[1] = result;
    v23[2] = result;
    v23[3] = result;
    a4 = (v23 + a3);
    v4 += 8;
  }

  while (v4 != 64);
  return result;
}

int8x16_t sub_277454AF8(uint64_t a1, _OWORD *a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v22[0] = *a2;
  v22[1] = v5;
  do
  {
    v6 = *(v22 + v4);
    v7 = vdupq_lane_s8(v6, 0);
    v8 = vdupq_lane_s8(v6, 1);
    v9 = vdupq_lane_s8(v6, 2);
    v10 = vdupq_lane_s8(v6, 3);
    v11 = vdupq_lane_s8(v6, 4);
    v12 = vdupq_lane_s8(v6, 5);
    v13 = vdupq_lane_s8(v6, 6);
    result = vdupq_lane_s8(v6, 7);
    *a4 = v7;
    a4[1] = v7;
    v15 = (a4 + a3);
    *v15 = v8;
    v15[1] = v8;
    v16 = (a4 + a3 + a3);
    *v16 = v9;
    v16[1] = v9;
    v17 = (v16 + a3);
    *v17 = v10;
    v17[1] = v10;
    v18 = (v17 + a3);
    *v18 = v11;
    v18[1] = v11;
    v19 = (v18 + a3);
    *v19 = v12;
    v19[1] = v12;
    v20 = (v19 + a3);
    *v20 = v13;
    v20[1] = v13;
    v21 = (v20 + a3);
    *v21 = result;
    v21[1] = result;
    a4 = (v21 + a3);
    v4 += 8;
  }

  while (v4 != 32);
  return result;
}

int8x16_t sub_277454BC4(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = *a2;
  v5 = vmovl_u8(vdup_lane_s8(*a2, 0));
  *a4 = vqmovun_high_s16(vqmovun_s16(vsraq_n_s16(v5, vsubl_u8(*(a2 + 32), vdup_n_s8(*(a2 - 1))), 1uLL)), vsraq_n_s16(v5, vsubl_high_u8(*(a2 + 32), vdupq_n_s8(*(a2 - 1))), 1uLL));
  *(a4 + a3) = vdupq_lane_s8(*v4.i8, 1);
  v6 = (a4 + a3 + a3);
  *v6 = vdupq_lane_s8(*v4.i8, 2);
  v7 = (v6 + a3);
  *v7 = vdupq_lane_s8(*v4.i8, 3);
  v8 = (v7 + a3);
  *v8 = vdupq_lane_s8(*v4.i8, 4);
  v9 = (v8 + a3);
  *v9 = vdupq_lane_s8(*v4.i8, 5);
  v10 = (v9 + a3);
  *v10 = vdupq_lane_s8(*v4.i8, 6);
  v11 = (v10 + a3);
  *v11 = vdupq_lane_s8(*v4.i8, 7);
  result = vdupq_laneq_s8(v4, 8);
  v13 = (v11 + a3);
  *v13 = result;
  v14 = (v13 + a3);
  *v14 = vdupq_laneq_s8(v4, 9);
  v15 = (v14 + a3);
  *v15 = vdupq_laneq_s8(v4, 10);
  v16 = (v15 + a3);
  *v16 = vdupq_laneq_s8(v4, 11);
  v17 = (v16 + a3);
  *v17 = vdupq_laneq_s8(v4, 12);
  v18 = (v17 + a3);
  *v18 = vdupq_laneq_s8(v4, 13);
  v19 = (v18 + a3);
  *v19 = vdupq_laneq_s8(v4, 14);
  *(v19 + a3) = vdupq_laneq_s8(v4, 15);
  return result;
}

int8x8_t sub_277454CB4(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v4 = *a2;
  v5 = (a2 - 1);
  v6 = vld1_dup_s8(v5);
  *a4 = vqmovun_s16(vsraq_n_s16(vmovl_u8(vdup_lane_s8(*a2, 0)), vsubl_u8(*(a2 + 16), v6), 1uLL));
  v7 = vdup_lane_s8(v4, 1);
  v8 = vdup_lane_s8(v4, 2);
  v9 = vdup_lane_s8(v4, 3);
  v10 = vdup_lane_s8(v4, 4);
  v11 = vdup_lane_s8(v4, 5);
  v12 = vdup_lane_s8(v4, 6);
  result = vdup_lane_s8(v4, 7);
  *(a4 + a3) = v7;
  v14 = (a4 + a3 + a3);
  *v14 = v8;
  v15 = (v14 + a3);
  *v15 = v9;
  v16 = (v15 + a3);
  *v16 = v10;
  v17 = (v16 + a3);
  *v17 = v11;
  v18 = (v17 + a3);
  *v18 = v12;
  *(v18 + a3) = result;
  return result;
}

int8x8_t sub_277454D30(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *a2;
  *a4 = vqmovun_s16(vsraq_n_s16(vmovl_u8(vdup_lane_s8(*a2, 0)), vsubq_s16(vmovl_u8(*(a2 + 8)), vdupq_n_s16(*(a2 - 1))), 1uLL)).u32[0];
  *(a4 + a3) = vdup_lane_s8(v4, 1).u32[0];
  v5 = (a4 + a3 + a3);
  *v5 = vdup_lane_s8(v4, 2).u32[0];
  result = vdup_lane_s8(v4, 3);
  *(v5 + a3) = result.i32[0];
  return result;
}

void sub_277454D7C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[8];
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[11];
  v8 = (a4 + 32);
  v9 = 64;
  do
  {
    *(v8 - 2) = v4;
    *(v8 - 1) = v5;
    *v8 = v6;
    v8[1] = v7;
    v8 = (v8 + a3);
    --v9;
  }

  while (v9);
}

void sub_277454DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = (a4 + 16);
  v7 = 32;
  do
  {
    *(v6 - 1) = v4;
    *v6 = v5;
    v6 = (v6 + a3);
    --v7;
  }

  while (v7);
}

void sub_277454DC4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a2 - 1);
  v6 = *(a2 + 32);
  v7 = vextq_s8(v6, v6, 8uLL).u64[0];
  v8 = vmovl_u8(vdup_lane_s8(*v6.i8, 0));
  v9 = vshrd_n_u64(v6.u64[0], 8uLL);
  v10 = vqmovun_s16(vsraq_n_s16(v8, vsubl_u8(*a2, vdup_n_s8(v5)), 1uLL));
  v11 = vshrq_n_s16(vsubl_high_u8(*a2, vdupq_n_s8(v5)), 1uLL);
  v16 = vext_s8(vshld_n_s64(v10, 0x38uLL), v9, 7uLL);
  v17 = vext_s8(vshld_n_s64(v10, 0x30uLL), v9, 7uLL);
  v18 = vext_s8(vshld_n_s64(v10, 0x28uLL), v9, 7uLL);
  v19 = vext_s8(vshld_n_s64(v10, 0x20uLL), v9, 7uLL);
  v20 = vext_s8(vshld_n_s64(v10, 0x18uLL), v9, 7uLL);
  v21 = vext_s8(vshld_n_s64(v10, 0x10uLL), v9, 7uLL);
  v22 = vext_s8(vshld_n_s64(v10, 8uLL), v9, 7uLL);
  v23 = vext_s8(v10, v9, 7uLL);
  do
  {
    *&v12 = *(&v16 + v4);
    *(&v12 + 1) = v7;
    *a4 = v12;
    a4 = (a4 + a3);
    v4 += 8;
  }

  while (v4 != 64);
  v13 = 0;
  v14 = vqmovun_s16(vaddq_s16(v11, v8));
  v16 = vext_s8(vshld_n_s64(v14, 0x38uLL), v9, 7uLL);
  v17 = vext_s8(vshld_n_s64(v14, 0x30uLL), v9, 7uLL);
  v18 = vext_s8(vshld_n_s64(v14, 0x28uLL), v9, 7uLL);
  v19 = vext_s8(vshld_n_s64(v14, 0x20uLL), v9, 7uLL);
  v20 = vext_s8(vshld_n_s64(v14, 0x18uLL), v9, 7uLL);
  v21 = vext_s8(vshld_n_s64(v14, 0x10uLL), v9, 7uLL);
  v22 = vext_s8(vshld_n_s64(v14, 8uLL), v9, 7uLL);
  v23 = vext_s8(v14, v9, 7uLL);
  do
  {
    *&v15 = *(&v16 + v13);
    *(&v15 + 1) = v7;
    *a4 = v15;
    a4 = (a4 + a3);
    v13 += 8;
  }

  while (v13 != 64);
}

double sub_277454F30(uint64_t a1, uint8x8_t *a2, uint64_t a3, double *a4)
{
  v4 = 0;
  v12[8] = *MEMORY[0x277D85DE8];
  v5 = &a2[-1] + 7;
  v6 = vld1_dup_s8(v5);
  v7 = a2[2];
  v8 = vmovl_u8(vdup_lane_s8(v7, 0));
  v9 = vshrd_n_u64(v7, 8uLL);
  v10 = vqmovun_s16(vsraq_n_s16(v8, vsubl_u8(*a2, v6), 1uLL));
  v12[0] = vext_s8(vshld_n_s64(v10, 0x38uLL), v9, 7uLL);
  v12[1] = vext_s8(vshld_n_s64(v10, 0x30uLL), v9, 7uLL);
  v12[2] = vext_s8(vshld_n_s64(v10, 0x28uLL), v9, 7uLL);
  v12[3] = vext_s8(vshld_n_s64(v10, 0x20uLL), v9, 7uLL);
  v12[4] = vext_s8(vshld_n_s64(v10, 0x18uLL), v9, 7uLL);
  v12[5] = vext_s8(vshld_n_s64(v10, 0x10uLL), v9, 7uLL);
  v12[6] = vext_s8(vshld_n_s64(v10, 8uLL), v9, 7uLL);
  v12[7] = vext_s8(v10, v9, 7uLL);
  do
  {
    result = *&v12[v4];
    *a4 = result;
    a4 = (a4 + a3);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

int16x4_t sub_27745500C(uint64_t a1, uint8x8_t *a2, uint64_t a3, _BYTE *a4)
{
  v4 = a2[1];
  result = vsub_s16(*&vmovl_u8(*a2), vdup_n_s16(a2[-1].u8[7]));
  *v6.i8 = vsra_n_s16((*&vdup_n_s16(v4.u8[0]) & 0xFF00FF00FF00FFLL), result, 1uLL);
  v6.i64[1] = v6.i64[0];
  v7 = vqmovun_s16(v6).u32[0];
  v8 = vdup_lane_s8(v4, 1).u32[0];
  v9 = vdup_lane_s8(v4, 2).u32[0];
  v10 = vdup_lane_s8(v4, 3).u32[0];
  *a4 = v7;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = v10;
  v11 = &a4[a3];
  *v11 = BYTE1(v7);
  v11[1] = BYTE1(v8);
  v11[2] = BYTE1(v9);
  v11[3] = BYTE1(v10);
  v12 = &v11[a3];
  *v12 = BYTE2(v7);
  v12[1] = BYTE2(v8);
  v12[2] = BYTE2(v9);
  v12[3] = BYTE2(v10);
  v13 = &v12[a3];
  *v13 = HIBYTE(v7);
  v13[1] = HIBYTE(v8);
  v13[2] = HIBYTE(v9);
  v13[3] = HIBYTE(v10);
  return result;
}

_OWORD *sub_277455058(uint64_t a1, uint8x16_t *a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 0;
  v75 = *MEMORY[0x277D85DE8];
  v74[0] = xmmword_27750D3A0;
  v74[1] = xmmword_27750D3B0;
  v74[2] = xmmword_27750D3C0;
  v74[3] = xmmword_27750D3D0;
  v74[4] = xmmword_27750D3E0;
  v74[5] = xmmword_27750D3F0;
  v74[6] = xmmword_27750D400;
  v74[7] = xmmword_27750D410;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v73[0] = *a2;
  v73[1] = v5;
  v73[2] = v6;
  v73[3] = v7;
  v62 = vmovl_high_u8(v8);
  v63 = vmovl_u8(*v8.i8);
  v70 = vmovl_high_u8(v9);
  v71 = vmovl_u8(*v9.i8);
  v60 = vmovl_high_u8(v10);
  v61 = vmovl_u8(*v10.i8);
  i8 = a2[12].i8;
  v13 = vld1_dup_s8(i8);
  v14 = a2[4].i8;
  *v5.i8 = vld1_dup_s8(v14);
  v59 = vmull_u8(0x807060504030201, v13);
  v58 = vmull_u8(0x100F0E0D0C0B0A09, v13);
  v69 = vmull_u8(0x1817161514131211, v13);
  v68 = vmull_u8(0x201F1E1D1C1B1A19, v13);
  v67 = vmull_u8(0x2827262524232221, v13);
  v57 = vmull_u8(0x302F2E2D2C2B2A29, v13);
  v66 = vmull_u8(0x3837363534333231, v13);
  v65 = vmull_u8(0x403F3E3D3C3B3A39, v13);
  v72[0] = vmull_u8(0x807060504030201, *v5.i8);
  v72[1] = vmull_u8(0x100F0E0D0C0B0A09, *v5.i8);
  v72[2] = vmull_u8(0x1817161514131211, *v5.i8);
  v72[3] = vmull_u8(0x201F1E1D1C1B1A19, *v5.i8);
  v72[4] = vmull_u8(0x2827262524232221, *v5.i8);
  v72[5] = vmull_u8(0x302F2E2D2C2B2A29, *v5.i8);
  v15 = 4 * a3;
  v16 = a3 + 48;
  v17 = 2 * a3 + 48;
  v72[6] = vmull_u8(0x3837363534333231, *v5.i8);
  v72[7] = vmull_u8(0x403F3E3D3C3B3A39, *v5.i8);
  v18 = v17 + a3;
  v19 = 5 * a3;
  v20 = 6 * a3;
  v21 = 7 * a3;
  qmemcpy(v64, "/.-,+*)(76543210?>=<;:98", sizeof(v64));
  result = v72;
  v24 = vmovl_high_u8(v11);
  v23 = vmovl_u8(*v11.i8);
  do
  {
    v25 = v72[v4];
    v26 = vdupq_lane_s16(*v25.i8, 0);
    v27 = vdupq_lane_s16(*v25.i8, 1);
    v28 = vdupq_lane_s16(*v25.i8, 2);
    v29 = *(v73 + 8 * v4);
    v30 = vdupq_lane_s16(*v25.i8, 3);
    v31 = v74[v4];
    v32 = vdup_lane_s8(v29, 0);
    v33 = vmovl_u8(v32);
    v34 = vdup_lane_s8(v29, 1);
    v35 = vmovl_u8(v34);
    v36 = vdup_lane_s8(v29, 2);
    v37 = vmovl_u8(v36);
    v38 = vdup_lane_s8(v29, 3);
    v39 = vmovl_u8(v38);
    *a4 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v26, v59), v32, v64[2]), v63, *v31.i8, 0), 7uLL), vmlaq_lane_s16(vmlal_u8(vaddq_s16(v26, v58), v32, v64[1]), v62, *v31.i8, 0), 7uLL);
    v40 = (a4 + v16);
    v40[-3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v27, v59), v34, v64[2]), v63, *v31.i8, 1), 7uLL), vmlaq_lane_s16(vmlal_u8(vaddq_s16(v27, v58), v34, v64[1]), v62, *v31.i8, 1), 7uLL);
    v41 = (a4 + v17);
    v41[-3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v28, v59), v36, v64[2]), v63, *v31.i8, 2), 7uLL), vmlaq_lane_s16(vmlal_u8(vaddq_s16(v28, v58), v36, v64[1]), v62, *v31.i8, 2), 7uLL);
    v42 = (a4 + v18);
    v42[-3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v30, v59), v38, v64[2]), v63, *v31.i8, 3), 7uLL), vmlaq_lane_s16(vmlal_u8(vaddq_s16(v30, v58), v38, v64[1]), v62, *v31.i8, 3), 7uLL);
    a4[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v26, v69), v32, v64[0]), v71, *v31.i8, 0), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v26, v68), v70, *v31.i8, 0), xmmword_27750D3D0, v33), 7uLL);
    v40[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v27, v69), v34, v64[0]), v71, *v31.i8, 1), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v27, v68), v70, *v31.i8, 1), xmmword_27750D3D0, v35), 7uLL);
    v41[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v28, v69), v36, v64[0]), v71, *v31.i8, 2), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v28, v68), v70, *v31.i8, 2), xmmword_27750D3D0, v37), 7uLL);
    v42[-2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v30, v69), v38, v64[0]), v71, *v31.i8, 3), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v30, v68), v70, *v31.i8, 3), xmmword_27750D3D0, v39), 7uLL);
    a4[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v26, v67), v32, 0x18191A1B1C1D1E1FLL), v61, *v31.i8, 0), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v26, v57), v60, *v31.i8, 0), xmmword_27750D3F0, v33), 7uLL);
    v40[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v27, v67), v34, 0x18191A1B1C1D1E1FLL), v61, *v31.i8, 1), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v27, v57), v60, *v31.i8, 1), xmmword_27750D3F0, v35), 7uLL);
    v41[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v28, v67), v36, 0x18191A1B1C1D1E1FLL), v61, *v31.i8, 2), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v28, v57), v60, *v31.i8, 2), xmmword_27750D3F0, v37), 7uLL);
    v42[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v30, v67), v38, 0x18191A1B1C1D1E1FLL), v61, *v31.i8, 3), 7uLL), vmlaq_s16(vmlaq_lane_s16(vaddq_s16(v30, v57), v60, *v31.i8, 3), xmmword_27750D3F0, v39), 7uLL);
    a4[3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v26, v66), v32, 0x8090A0B0C0D0E0FLL), v23, *v31.i8, 0), 7uLL), vmlal_u8(vmlaq_lane_s16(vaddq_s16(v26, v65), v24, *v31.i8, 0), v32, 0x1020304050607), 7uLL);
    *v40 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v27, v66), v34, 0x8090A0B0C0D0E0FLL), v23, *v31.i8, 1), 7uLL), vmlal_u8(vmlaq_lane_s16(vaddq_s16(v27, v65), v24, *v31.i8, 1), v34, 0x1020304050607), 7uLL);
    *v41 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v28, v66), v36, 0x8090A0B0C0D0E0FLL), v23, *v31.i8, 2), 7uLL), vmlal_u8(vmlaq_lane_s16(vaddq_s16(v28, v65), v24, *v31.i8, 2), v36, 0x1020304050607), 7uLL);
    *v42 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vmlal_u8(vaddq_s16(v30, v66), v38, 0x8090A0B0C0D0E0FLL), v23, *v31.i8, 3), 7uLL), vmlal_u8(vmlaq_lane_s16(vaddq_s16(v30, v65), v24, *v31.i8, 3), v38, 0x1020304050607), 7uLL);
    v43 = (a4 + v15);
    v44 = vdupq_laneq_s16(v25, 4);
    v45 = vdupq_laneq_s16(v25, 5);
    v46 = vdupq_laneq_s16(v25, 6);
    v47 = vdupq_laneq_s16(v25, 7);
    *v26.i8 = vdup_lane_s8(v29, 4);
    v48 = vmovl_u8(*v26.i8);
    v49 = vdup_lane_s8(v29, 5);
    v50 = vmovl_u8(v49);
    *v28.i8 = vdup_lane_s8(v29, 6);
    v51 = vmovl_u8(*v28.i8);
    v52 = vdup_lane_s8(v29, 7);
    v53 = vmovl_u8(v52);
    *v43 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v44, v59), *v26.i8, v64[2]), v63, v31, 4), 7uLL), vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v44, v58), *v26.i8, v64[1]), v62, v31, 4), 7uLL);
    v54 = (a4 + v19);
    *v54 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v45, v59), v49, v64[2]), v63, v31, 5), 7uLL), vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v45, v58), v49, v64[1]), v62, v31, 5), 7uLL);
    v55 = (a4 + v20);
    *v55 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v46, v59), *v28.i8, v64[2]), v63, v31, 6), 7uLL), vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v46, v58), *v28.i8, v64[1]), v62, v31, 6), 7uLL);
    v56 = (a4 + v21);
    *v56 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v47, v59), v52, v64[2]), v63, v31, 7), 7uLL), vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v47, v58), v52, v64[1]), v62, v31, 7), 7uLL);
    v43[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v44, v69), *v26.i8, v64[0]), v71, v31, 4), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v44, v68), v70, v31, 4), xmmword_27750D3D0, v48), 7uLL);
    v54[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v45, v69), v49, v64[0]), v71, v31, 5), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v45, v68), v70, v31, 5), xmmword_27750D3D0, v50), 7uLL);
    v55[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v46, v69), *v28.i8, v64[0]), v71, v31, 6), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v46, v68), v70, v31, 6), xmmword_27750D3D0, v51), 7uLL);
    v56[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v47, v69), v52, v64[0]), v71, v31, 7), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v47, v68), v70, v31, 7), xmmword_27750D3D0, v53), 7uLL);
    v43[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v44, v67), *v26.i8, 0x18191A1B1C1D1E1FLL), v61, v31, 4), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v44, v57), v60, v31, 4), xmmword_27750D3F0, v48), 7uLL);
    v54[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v45, v67), v49, 0x18191A1B1C1D1E1FLL), v61, v31, 5), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v45, v57), v60, v31, 5), xmmword_27750D3F0, v50), 7uLL);
    v55[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v46, v67), *v28.i8, 0x18191A1B1C1D1E1FLL), v61, v31, 6), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v46, v57), v60, v31, 6), xmmword_27750D3F0, v51), 7uLL);
    v56[2] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v47, v67), v52, 0x18191A1B1C1D1E1FLL), v61, v31, 7), 7uLL), vmlaq_s16(vmlaq_laneq_s16(vaddq_s16(v47, v57), v60, v31, 7), xmmword_27750D3F0, v53), 7uLL);
    v43[3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v44, v66), *v26.i8, 0x8090A0B0C0D0E0FLL), v23, v31, 4), 7uLL), vmlal_u8(vmlaq_laneq_s16(vaddq_s16(v44, v65), v24, v31, 4), *v26.i8, 0x1020304050607), 7uLL);
    v54[3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v45, v66), v49, 0x8090A0B0C0D0E0FLL), v23, v31, 5), 7uLL), vmlal_u8(vmlaq_laneq_s16(vaddq_s16(v45, v65), v24, v31, 5), v49, 0x1020304050607), 7uLL);
    v55[3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v46, v66), *v28.i8, 0x8090A0B0C0D0E0FLL), v23, v31, 6), 7uLL), vmlal_u8(vmlaq_laneq_s16(vaddq_s16(v46, v65), v24, v31, 6), *v28.i8, 0x1020304050607), 7uLL);
    v56[3] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vmlal_u8(vaddq_s16(v47, v66), v52, 0x8090A0B0C0D0E0FLL), v23, v31, 7), 7uLL), vmlal_u8(vmlaq_laneq_s16(vaddq_s16(v47, v65), v24, v31, 7), v52, 0x1020304050607), 7uLL);
    ++v4;
    a4 = (a4 + v15 + v15);
  }

  while (v4 != 8);
  return result;
}

_OWORD *sub_277455860(uint64_t a1, uint8x16_t *a2, uint64_t a3, int8x16_t *a4)
{
  v4 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v49[0] = xmmword_27750D3E0;
  v49[1] = xmmword_27750D3F0;
  v49[2] = xmmword_27750D400;
  v49[3] = xmmword_27750D410;
  v5 = a2[1];
  v6 = a2[4];
  v7 = a2[5];
  v8 = vmovl_high_u8(*a2);
  v48[0] = vmovl_u8(*a2->i8);
  v48[1] = v8;
  v48[2] = vmovl_u8(*v5.i8);
  v48[3] = vmovl_high_u8(v5);
  v9 = vmovl_u8(*v6.i8);
  v10 = vmovl_high_u8(v6);
  v11 = vmovl_u8(*v7.i8);
  v12 = vmovl_high_u8(v7);
  i8 = a2[6].i8;
  v14 = vld1_dup_s8(i8);
  v15 = a2[2].i8;
  v16 = vld1_dup_s8(v15);
  v17 = vmull_u8(0x807060504030201, v14);
  v18 = vmull_u8(0x100F0E0D0C0B0A09, v14);
  v19 = vmull_u8(0x1817161514131211, v14);
  v20 = vmull_u8(0x201F1E1D1C1B1A19, v14);
  v47[0] = vmull_u8(0x807060504030201, v16);
  v47[1] = vmull_u8(0x100F0E0D0C0B0A09, v16);
  v21 = 4 * a3;
  v22 = 7 * a3;
  v23 = 6 * a3;
  v24 = 5 * a3;
  v25 = 3 * a3 + 16;
  v26 = 2 * a3 + 16;
  v47[2] = vmull_u8(0x1817161514131211, v16);
  v47[3] = vmull_u8(0x201F1E1D1C1B1A19, v16);
  v27 = a3 + 16;
  result = v47;
  do
  {
    v29 = v47[v4];
    v30 = vdupq_lane_s16(*v29.i8, 0);
    v31 = vdupq_lane_s16(*v29.i8, 1);
    v32 = vdupq_lane_s16(*v29.i8, 2);
    v33 = vdupq_lane_s16(*v29.i8, 3);
    v34 = v48[v4];
    v35 = v49[v4];
    *a4 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v17, xmmword_27750D3E0, *v34.i8, 0), v30), v9, *v35.i8, 0), 6uLL), vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v18, xmmword_27750D3F0, *v34.i8, 0), v30), v10, *v35.i8, 0), 6uLL);
    v36 = (a4 + v27);
    v36[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v17, xmmword_27750D3E0, *v34.i8, 1), v31), v9, *v35.i8, 1), 6uLL), vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v18, xmmword_27750D3F0, *v34.i8, 1), v31), v10, *v35.i8, 1), 6uLL);
    v37 = (a4 + v26);
    v37[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v17, xmmword_27750D3E0, *v34.i8, 2), v32), v9, *v35.i8, 2), 6uLL), vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v18, xmmword_27750D3F0, *v34.i8, 2), v32), v10, *v35.i8, 2), 6uLL);
    v38 = (a4 + v25);
    v38[-1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v17, xmmword_27750D3E0, *v34.i8, 3), v33), v9, *v35.i8, 3), 6uLL), vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v18, xmmword_27750D3F0, *v34.i8, 3), v33), v10, *v35.i8, 3), 6uLL);
    a4[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v19, xmmword_27750D400, *v34.i8, 0), v30), v11, *v35.i8, 0), 6uLL), vmlaq_lane_s16(vmlaq_lane_s16(vaddq_s16(v30, v20), v12, *v35.i8, 0), xmmword_27750D410, *v34.i8, 0), 6uLL);
    *v36 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v19, xmmword_27750D400, *v34.i8, 1), v31), v11, *v35.i8, 1), 6uLL), vmlaq_lane_s16(vmlaq_lane_s16(vaddq_s16(v31, v20), v12, *v35.i8, 1), xmmword_27750D410, *v34.i8, 1), 6uLL);
    *v37 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v19, xmmword_27750D400, *v34.i8, 2), v32), v11, *v35.i8, 2), 6uLL), vmlaq_lane_s16(vmlaq_lane_s16(vaddq_s16(v32, v20), v12, *v35.i8, 2), xmmword_27750D410, *v34.i8, 2), 6uLL);
    *v38 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_lane_s16(vaddq_s16(vmlaq_lane_s16(v19, xmmword_27750D400, *v34.i8, 3), v33), v11, *v35.i8, 3), 6uLL), vmlaq_lane_s16(vmlaq_lane_s16(vaddq_s16(v33, v20), v12, *v35.i8, 3), xmmword_27750D410, *v34.i8, 3), 6uLL);
    v39 = (a4 + v21);
    v40 = vdupq_laneq_s16(v29, 4);
    v41 = vdupq_laneq_s16(v29, 5);
    v42 = vdupq_laneq_s16(v29, 6);
    v43 = vdupq_laneq_s16(v29, 7);
    *v39 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v17, xmmword_27750D3E0, v34, 4), v40), v9, v35, 4), 6uLL), vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v18, xmmword_27750D3F0, v34, 4), v40), v10, v35, 4), 6uLL);
    v44 = (a4 + v24);
    *v44 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v17, xmmword_27750D3E0, v34, 5), v41), v9, v35, 5), 6uLL), vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v18, xmmword_27750D3F0, v34, 5), v41), v10, v35, 5), 6uLL);
    v45 = (a4 + v23);
    *v45 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v17, xmmword_27750D3E0, v34, 6), v42), v9, v35, 6), 6uLL), vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v18, xmmword_27750D3F0, v34, 6), v42), v10, v35, 6), 6uLL);
    v46 = (a4 + v22);
    *v46 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v17, xmmword_27750D3E0, v34, 7), v43), v9, v35, 7), 6uLL), vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v18, xmmword_27750D3F0, v34, 7), v43), v10, v35, 7), 6uLL);
    v39[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v19, xmmword_27750D400, v34, 4), v40), v11, v35, 4), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vaddq_s16(v40, v20), v12, v35, 4), xmmword_27750D410, v34, 4), 6uLL);
    v44[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v19, xmmword_27750D400, v34, 5), v41), v11, v35, 5), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vaddq_s16(v41, v20), v12, v35, 5), xmmword_27750D410, v34, 5), 6uLL);
    v45[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v19, xmmword_27750D400, v34, 6), v42), v11, v35, 6), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vaddq_s16(v42, v20), v12, v35, 6), xmmword_27750D410, v34, 6), 6uLL);
    v46[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_laneq_s16(vaddq_s16(vmlaq_laneq_s16(v19, xmmword_27750D400, v34, 7), v43), v11, v35, 7), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vaddq_s16(v43, v20), v12, v35, 7), xmmword_27750D410, v34, 7), 6uLL);
    a4 = (a4 + v21 + v21);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

int8x16_t sub_277455CA0(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  v4 = (a2 + 48);
  v5 = vld1_dup_s8(v4);
  v6 = (a2 + 16);
  v7 = vld1_dup_s8(v6);
  v8 = vmull_u8(0x807060504030201, v7);
  v9 = vmull_u8(0x100F0E0D0C0B0A09, v7);
  v10 = vdupq_lane_s16(*v8.i8, 0);
  v11 = vdupq_lane_s16(*v8.i8, 1);
  v12 = vdupq_lane_s16(*v8.i8, 2);
  v13 = vdupq_lane_s16(*v8.i8, 3);
  v14 = *a2;
  v15 = vdup_lane_s8(*a2, 0);
  v16 = vmull_u8(v15, 0x8090A0B0C0D0E0FLL);
  v17 = vdup_lane_s8(*a2, 1);
  v18 = vmull_u8(v15, 0x1020304050607);
  v19 = vdup_lane_s8(*a2, 2);
  v20 = vmull_u8(v19, 0x8090A0B0C0D0E0FLL);
  v21 = vmull_u8(v19, 0x1020304050607);
  v22 = vdup_lane_s8(*a2, 3);
  v23 = vmull_u8(v22, 0x8090A0B0C0D0E0FLL);
  v24 = vmull_u8(v22, 0x1020304050607);
  v25.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v25.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v26 = *(a2 + 32);
  v27 = vaddq_s16(vmlal_u8(vmlal_u8(v16, 0x807060504030201, v5), *v26.i8, 0xF0F0F0F0F0F0F0FLL), v10);
  v28 = vaddq_s16(vmlal_u8(vmlal_high_u8(v18, v26, v25), 0x100F0E0D0C0B0A09, v5), v10);
  v18.i64[0] = 0xE0E0E0E0E0E0E0ELL;
  v18.i64[1] = 0xE0E0E0E0E0E0E0ELL;
  v29 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(v17, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0xE0E0E0E0E0E0E0ELL), v11);
  v30 = vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(v17, 0x1020304050607), v26, v18), 0x100F0E0D0C0B0A09, v5), v11);
  v31.i64[0] = 0xD0D0D0D0D0D0D0DLL;
  v31.i64[1] = 0xD0D0D0D0D0D0D0DLL;
  v32 = vaddq_s16(vmlal_u8(vmlal_u8(v20, 0x807060504030201, v5), *v26.i8, 0xD0D0D0D0D0D0D0DLL), v12);
  v33 = vaddq_s16(vmlal_u8(vmlal_high_u8(v21, v26, v31), 0x100F0E0D0C0B0A09, v5), v12);
  v31.i64[0] = 0xC0C0C0C0C0C0C0CLL;
  v31.i64[1] = 0xC0C0C0C0C0C0C0CLL;
  *a4 = vrshrn_high_n_s16(vrshrn_n_s16(v27, 5uLL), v28, 5uLL);
  *(a4 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(v29, 5uLL), v30, 5uLL);
  v34 = (a4 + a3 + a3);
  *v34 = vrshrn_high_n_s16(vrshrn_n_s16(v32, 5uLL), v33, 5uLL);
  *(v34 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vmlal_u8(vmlal_u8(v23, 0x807060504030201, v5), *v26.i8, 0xC0C0C0C0C0C0C0CLL), v13), 5uLL), vaddq_s16(vmlal_u8(vmlal_high_u8(v24, v26, v31), 0x100F0E0D0C0B0A09, v5), v13), 5uLL);
  v35 = (a4 + 4 * a3);
  v36 = vdupq_laneq_s16(v8, 4);
  v37 = vdupq_laneq_s16(v8, 5);
  v38 = vdupq_laneq_s16(v8, 6);
  v39 = vdupq_laneq_s16(v8, 7);
  *v8.i8 = vdup_lane_s8(*v14.i8, 4);
  *v31.i8 = vdup_lane_s8(*v14.i8, 5);
  *v29.i8 = vdup_lane_s8(*v14.i8, 6);
  *v21.i8 = vdup_lane_s8(*v14.i8, 7);
  v24.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v24.i64[1] = 0xB0B0B0B0B0B0B0BLL;
  v40 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v8.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0xB0B0B0B0B0B0B0BLL), v36);
  v41 = vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v8.i8, 0x1020304050607), v26, v24), 0x100F0E0D0C0B0A09, v5), v36);
  v8.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v8.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  v42 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v31.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0xA0A0A0A0A0A0A0ALL), v37);
  v43 = vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v31.i8, 0x1020304050607), v26, v8), 0x100F0E0D0C0B0A09, v5), v37);
  v8.i64[0] = 0x909090909090909;
  v8.i64[1] = 0x909090909090909;
  v44 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v29.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0x909090909090909), v38);
  v45 = vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v29.i8, 0x1020304050607), v26, v8), 0x100F0E0D0C0B0A09, v5), v38);
  v8.i64[0] = 0x303030303030303;
  v8.i64[1] = 0x303030303030303;
  *v35 = vrshrn_high_n_s16(vrshrn_n_s16(v40, 5uLL), v41, 5uLL);
  *(v35 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(v42, 5uLL), v43, 5uLL);
  v46 = (v35 + a3 + a3);
  *v46 = vrshrn_high_n_s16(vrshrn_n_s16(v44, 5uLL), v45, 5uLL);
  *(v46 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddq_s16(vmlal_u8(vmull_u8(*v21.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), vshll_n_u8(*v26.i8, 3uLL)), v39), 5uLL), vaddq_s16(vmlal_u8(vmlal_u8(vshll_high_n_u8(v26, 3uLL), *v21.i8, 0x1020304050607), 0x100F0E0D0C0B0A09, v5), v39), 5uLL);
  v47 = vdupq_lane_s16(*v9.i8, 0);
  v48 = vdupq_lane_s16(*v9.i8, 1);
  v49 = vdupq_lane_s16(*v9.i8, 2);
  v50 = (v35 + 4 * a3);
  v51 = vdupq_lane_s16(*v9.i8, 3);
  *v44.i8 = vdup_laneq_s8(v14, 8);
  *v29.i8 = vdup_laneq_s8(v14, 9);
  *v21.i8 = vdup_laneq_s8(v14, 10);
  *v41.i8 = vdup_laneq_s8(v14, 11);
  v52.i64[0] = 0x707070707070707;
  v52.i64[1] = 0x707070707070707;
  v53 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v44.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0x707070707070707), v47);
  v54 = vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v44.i8, 0x1020304050607), v26, v52), 0x100F0E0D0C0B0A09, v5), v47);
  v44.i64[0] = 0x606060606060606;
  v44.i64[1] = 0x606060606060606;
  v55 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v29.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0x606060606060606), v48);
  v56 = vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v29.i8, 0x1020304050607), v26, v44), 0x100F0E0D0C0B0A09, v5), v48);
  v44.i64[0] = 0x505050505050505;
  v44.i64[1] = 0x505050505050505;
  *v50 = vrshrn_high_n_s16(vrshrn_n_s16(v53, 5uLL), v54, 5uLL);
  *(v50 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(v55, 5uLL), v56, 5uLL);
  v57 = (v50 + a3 + a3);
  *v57 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v21.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0x505050505050505), v49), 5uLL), vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v21.i8, 0x1020304050607), v26, v44), 0x100F0E0D0C0B0A09, v5), v49), 5uLL);
  *(v57 + a3) = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddq_s16(vmlal_u8(vmull_u8(*v41.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), vshll_n_u8(*v26.i8, 2uLL)), v51), 5uLL), vaddq_s16(vmlal_u8(vmlal_u8(vshll_high_n_u8(v26, 2uLL), *v41.i8, 0x1020304050607), 0x100F0E0D0C0B0A09, v5), v51), 5uLL);
  v58 = (v50 + 4 * a3);
  v59 = vdupq_laneq_s16(v9, 4);
  v60 = vdupq_laneq_s16(v9, 5);
  v61 = vdupq_laneq_s16(v9, 6);
  v62 = vdupq_laneq_s16(v9, 7);
  *v51.i8 = vdup_laneq_s8(v14, 12);
  *v53.i8 = vdup_laneq_s8(v14, 13);
  *v55.i8 = vdup_laneq_s8(v14, 14);
  *v14.i8 = vdup_laneq_s8(v14, 15);
  *v58 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(*v51.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), *v26.i8, 0x303030303030303), v59), 5uLL), vaddq_s16(vmlal_u8(vmlal_high_u8(vmull_u8(*v51.i8, 0x1020304050607), v26, v8), 0x100F0E0D0C0B0A09, v5), v59), 5uLL);
  v63 = (v58 + a3);
  *v63 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vaddq_s16(vmlal_u8(vmull_u8(*v53.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), vshll_n_u8(*v26.i8, 1uLL)), v60), 5uLL), vaddq_s16(vmlal_u8(vmlal_u8(vshll_high_n_u8(v26, 1uLL), *v53.i8, 0x1020304050607), 0x100F0E0D0C0B0A09, v5), v60), 5uLL);
  v64 = (v63 + a3);
  *v64 = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vmlal_u8(vaddw_u8(vmull_u8(0x807060504030201, v5), *v26.i8), *v55.i8, 0x8090A0B0C0D0E0FLL), v61), 5uLL), vaddq_s16(vmlal_u8(vaddw_high_u8(vmull_u8(*v55.i8, 0x1020304050607), v26), 0x100F0E0D0C0B0A09, v5), v61), 5uLL);
  result = vrshrn_high_n_s16(vrshrn_n_s16(vaddq_s16(vmlal_u8(vmull_u8(*v14.i8, 0x8090A0B0C0D0E0FLL), 0x807060504030201, v5), v62), 5uLL), vaddq_s16(vmlal_u8(vmull_u8(0x100F0E0D0C0B0A09, v5), *v14.i8, 0x1020304050607), v62), 5uLL);
  *(v64 + a3) = result;
  return result;
}

int8x8_t sub_2774560B4(uint64_t a1, int8x8_t *a2, uint64_t a3, int8x8_t *a4)
{
  v4 = a2[2];
  v5 = &a2[3];
  v6 = vld1_dup_s8(v5);
  v7 = &a2[1];
  v8 = vld1_dup_s8(v7);
  v9 = vmull_u8(0x807060504030201, v8);
  v10 = vdupq_lane_s16(*v9.i8, 1);
  v11 = vdupq_lane_s16(*v9.i8, 2);
  v12 = vdupq_lane_s16(*v9.i8, 3);
  v13 = vdupq_laneq_s16(v9, 4);
  v14 = vdupq_laneq_s16(v9, 5);
  v15 = vdupq_laneq_s16(v9, 6);
  v16 = vmull_u8(0x807060504030201, v6);
  v17 = vaddq_s16(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 7), 0x1020304050607), 0x807060504030201, v6), vdupq_laneq_s16(v9, 7));
  v18 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 0), 0x1020304050607), 0x807060504030201, v6), v4, 0x707070707070707), vdupq_lane_s16(*v9.i8, 0));
  v19 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 1), 0x1020304050607), 0x807060504030201, v6), v4, 0x606060606060606), v10);
  v20 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 2), 0x1020304050607), 0x807060504030201, v6), v4, 0x505050505050505), v11);
  v21 = vaddq_s16(vaddq_s16(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 3), 0x1020304050607), 0x807060504030201, v6), vshll_n_u8(v4, 2uLL)), v12);
  v22 = vaddq_s16(vmlal_u8(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 4), 0x1020304050607), 0x807060504030201, v6), v4, 0x303030303030303), v13);
  v23 = vaddq_s16(vaddq_s16(vmlal_u8(vmull_u8(vdup_lane_s8(*a2, 5), 0x1020304050607), 0x807060504030201, v6), vshll_n_u8(v4, 1uLL)), v14);
  result = vrshrn_n_s16(vaddq_s16(vmlal_u8(vaddw_u8(v16, v4), vdup_lane_s8(*a2, 6), 0x1020304050607), v15), 4uLL);
  *a4 = vrshrn_n_s16(v18, 4uLL);
  *(a4 + a3) = vrshrn_n_s16(v19, 4uLL);
  v25 = (a4 + a3 + a3);
  *v25 = vrshrn_n_s16(v20, 4uLL);
  v26 = (v25 + a3);
  *v26 = vrshrn_n_s16(v21, 4uLL);
  v27 = (v26 + a3);
  *v27 = vrshrn_n_s16(v22, 4uLL);
  v28 = (v27 + a3);
  *v28 = vrshrn_n_s16(v23, 4uLL);
  v29 = (v28 + a3);
  *v29 = result;
  *(v29 + a3) = vrshrn_n_s16(v17, 4uLL);
  return result;
}

int8x8_t sub_277456210(uint64_t a1, int8x8_t *a2, uint64_t a3, _DWORD *a4)
{
  v5 = a2[1];
  v6 = vdup_lane_s8(v5, 4);
  v7 = vmull_u8(0x807060504030201, vdup_lane_s8(*a2, 4)).u64[0];
  v8 = vmovl_u8(*a2).u64[0];
  *v9.i8 = vdup_lane_s16(v7, 0);
  *v10.i8 = vdup_lane_s16(v7, 2);
  v11.i64[0] = vmovl_u8(v5).u64[0];
  *v4.i8 = vmul_lane_s16(0x100020003, v8, 2);
  *v12.i8 = vmul_s16(*v11.i8, 0x3000300030003);
  v13.i64[0] = vmlal_u8(v4, 0x807060504030201, v6).u64[0];
  v9.u64[1] = vdup_lane_s16(v7, 1);
  v12.u64[1] = vadd_s16(*v11.i8, *v11.i8);
  v11.i64[1] = vmull_u8(0x807060504030201, v6).u64[0];
  v13.u64[1] = vmul_lane_s16(0x100020003, v8, 3);
  v10.u64[1] = vdup_lane_s16(v7, 3);
  v14 = vrshrn_n_s16(vaddq_s16(vaddq_s16(vmlal_u8(vdupq_lane_s64(v11.i64[1], 0), vuzp1_s8(vdup_lane_s16(v8, 0), vdup_lane_s16(v8, 1)), 0x1020300010203), v12), v9), 3uLL);
  *a4 = v14.i32[0];
  *(a4 + a3) = v14.i32[1];
  result = vrshrn_n_s16(vaddq_s16(vaddq_s16(v13, v11), v10), 3uLL);
  v16 = (a4 + a3 + a3);
  *v16 = result.i32[0];
  *(v16 + a3) = result.i32[1];
  return result;
}

uint8x16_t sub_2774562CC(int8x16_t *a1, uint8x16_t *a2)
{
  v2 = a1[-1].u8[15];
  v3 = vdup_n_s8(v2);
  a2[-1].i8[15] = (a1->u8[0] + 2 * v2 + a1[4].u8[0] + 2) >> 2;
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  *v8.i8 = vext_s8(v3, *a1->i8, 7uLL);
  v9.i64[0] = vextq_s8(v4, v4, 1uLL).u64[0];
  v10.i64[0] = vextq_s8(*a1, v5, 0xFuLL).u64[0];
  v11.i64[0] = vextq_s8(v5, v5, 1uLL).u64[0];
  v12.i64[0] = vextq_s8(v5, v7, 0xFuLL).u64[0];
  v13.i64[0] = vextq_s8(v7, v7, 1uLL).u64[0];
  v14.i64[0] = vextq_s8(v7, v6, 0xFuLL).u64[0];
  v15.i64[0] = vextq_s8(v6, v6, 1uLL).u64[0];
  v8.i64[1] = vextq_s8(v4, v4, 7uLL).u64[0];
  v9.i64[1] = vextq_s8(*a1, v5, 9uLL).u64[0];
  v11.i64[1] = vextq_s8(v5, v7, 9uLL).u64[0];
  v10.i64[1] = vextq_s8(v5, v5, 7uLL).u64[0];
  v13.i64[1] = vextq_s8(v7, v6, 9uLL).u64[0];
  v12.i64[1] = vextq_s8(v7, v7, 7uLL).u64[0];
  *a2 = vrhaddq_u8(vhaddq_u8(v8, v9), *a1);
  a2[1] = vrhaddq_u8(vhaddq_u8(v10, v11), v5);
  v14.i64[1] = vextq_s8(v6, v6, 7uLL).u64[0];
  v15.i64[1] = vextq_s8(v6, vextq_s8(v6, v6, 8uLL), 9uLL).u64[0];
  a2[2] = vrhaddq_u8(vhaddq_u8(v12, v13), v7);
  a2[3] = vrhaddq_u8(vhaddq_u8(v14, v15), v6);
  a2[3].i8[15] = v6.i8[15];
  v17 = a1[4];
  v16 = a1[5];
  v19 = a1[6];
  v18 = a1[7];
  *v20.i8 = vext_s8(v3, *v17.i8, 7uLL);
  v8.i64[0] = vextq_s8(v17, v17, 1uLL).u64[0];
  v21.i64[0] = vextq_s8(v17, v16, 0xFuLL).u64[0];
  v10.i64[0] = vextq_s8(v16, v16, 1uLL).u64[0];
  v22.i64[0] = vextq_s8(v16, v19, 0xFuLL).u64[0];
  v12.i64[0] = vextq_s8(v19, v19, 1uLL).u64[0];
  v23.i64[0] = vextq_s8(v19, v18, 0xFuLL).u64[0];
  v14.i64[0] = vextq_s8(v18, v18, 1uLL).u64[0];
  v20.i64[1] = vextq_s8(v17, v17, 7uLL).u64[0];
  v8.i64[1] = vextq_s8(v17, v16, 9uLL).u64[0];
  v10.i64[1] = vextq_s8(v16, v19, 9uLL).u64[0];
  v21.i64[1] = vextq_s8(v16, v16, 7uLL).u64[0];
  a2[4] = vrhaddq_u8(vhaddq_u8(v20, v8), v17);
  a2[5] = vrhaddq_u8(vhaddq_u8(v21, v10), v16);
  v12.i64[1] = vextq_s8(v19, v18, 9uLL).u64[0];
  v22.i64[1] = vextq_s8(v19, v19, 7uLL).u64[0];
  result = vrhaddq_u8(vhaddq_u8(v22, v12), v19);
  v23.i64[1] = vextq_s8(v18, v18, 7uLL).u64[0];
  v14.i64[1] = vextq_s8(v18, vextq_s8(v18, v18, 8uLL), 9uLL).u64[0];
  a2[6] = result;
  a2[7] = vrhaddq_u8(vhaddq_u8(v23, v14), v18);
  a2[7].i8[15] = v18.i8[15];
  return result;
}

void sub_27745642C(int8x16_t *a1, uint8x16_t *a2)
{
  v2 = a1[-1].u8[15];
  v3 = a1[3].u8[15];
  v4 = v3 + v2 - 2 * a1[1].u8[15];
  if (v4 < 0)
  {
    v4 = 2 * a1[1].u8[15] - (v3 + v2);
  }

  if (v4 > 7)
  {
    goto LABEL_7;
  }

  v5 = a1[7].u8[15];
  v6 = v5 + v2 - 2 * a1[5].u8[15];
  if (v6 < 0)
  {
    v6 = 2 * a1[5].u8[15] - (v5 + v2);
  }

  if (v6 < 8)
  {
    v7 = 0;
    v8 = vdup_n_s8(v2);
    a2[-1].i8[15] = v2;
    v9 = vmovl_u8(v8);
    v10 = vsubl_u8(vdup_n_s8(v5), v8);
    v11 = vsubl_u8(vdup_n_s8(v3), v8);
    v12 = vmulq_s16(v10, xmmword_27750D420);
    v13 = vmulq_s16(v11, xmmword_27750D420);
    v14 = vshlq_n_s16(v10, 3uLL);
    v15 = vshlq_n_s16(v11, 3uLL);
    do
    {
      v16 = &a2->i8[v7];
      v16[8] = vqmovun_s16(vrsraq_n_s16(v9, v12, 6uLL));
      *v16 = vqmovun_s16(vrsraq_n_s16(v9, v13, 6uLL));
      v12 = vaddq_s16(v12, v14);
      v13 = vaddq_s16(v13, v15);
      v17 = v7 >= 0x38;
      v7 += 8;
    }

    while (!v17);
  }

  else
  {
LABEL_7:
    sub_2774562CC(a1, a2);
  }
}

uint8x16_t sub_2774564EC(int8x16_t *a1, uint8x16_t *a2)
{
  v2 = a1[-1].u8[15];
  v3 = vdup_n_s8(v2);
  a2[-1].i8[15] = (a1->u8[0] + 2 * v2 + a1[2].u8[0] + 2) >> 2;
  v4 = *a1;
  v5 = a1[1];
  *v6.i8 = vext_s8(v3, *a1->i8, 7uLL);
  v7.i64[0] = vextq_s8(v4, v4, 1uLL).u64[0];
  v8.i64[0] = vextq_s8(*a1, v5, 0xFuLL).u64[0];
  v9.i64[0] = vextq_s8(v5, v5, 1uLL).u64[0];
  v6.i64[1] = vextq_s8(v4, v4, 7uLL).u64[0];
  v7.i64[1] = vextq_s8(*a1, v5, 9uLL).u64[0];
  v8.i64[1] = vextq_s8(v5, v5, 7uLL).u64[0];
  v9.i64[1] = vextq_s8(v5, vextq_s8(v5, v5, 8uLL), 9uLL).u64[0];
  *a2 = vrhaddq_u8(vhaddq_u8(v6, v7), *a1);
  a2[1] = vrhaddq_u8(vhaddq_u8(v8, v9), v5);
  a2[1].i8[15] = v5.i8[15];
  v10 = a1[2];
  v11 = a1[3];
  *v12.i8 = vext_s8(v3, *v10.i8, 7uLL);
  v6.i64[0] = vextq_s8(v10, v10, 1uLL).u64[0];
  v13.i64[0] = vextq_s8(v10, v11, 0xFuLL).u64[0];
  v8.i64[0] = vextq_s8(v11, v11, 1uLL).u64[0];
  v12.i64[1] = vextq_s8(v10, v10, 7uLL).u64[0];
  v6.i64[1] = vextq_s8(v10, v11, 9uLL).u64[0];
  result = vrhaddq_u8(vhaddq_u8(v12, v6), v10);
  v13.i64[1] = vextq_s8(v11, v11, 7uLL).u64[0];
  v8.i64[1] = vextq_s8(v11, vextq_s8(v11, v11, 8uLL), 9uLL).u64[0];
  a2[2] = result;
  a2[3] = vrhaddq_u8(vhaddq_u8(v13, v8), v11);
  a2[3].i8[15] = v11.i8[15];
  return result;
}

uint8x16_t sub_2774565BC(int8x8_t *a1, uint8x16_t *a2)
{
  v2 = a1[-1].u8[7];
  v3 = vdup_n_s8(v2);
  a2[-1].i8[15] = (a1->u8[0] + 2 * v2 + a1[2].u8[0] + 2) >> 2;
  v4 = *a1->i8;
  *v5.i8 = vext_s8(v3, *a1, 7uLL);
  v6.i64[0] = vextq_s8(v4, v4, 1uLL).u64[0];
  v5.i64[1] = vextq_s8(v4, v4, 7uLL).u64[0];
  v6.i64[1] = vextq_s8(*a1->i8, vextq_s8(v4, v4, 8uLL), 9uLL).u64[0];
  *a2 = vrhaddq_u8(vhaddq_u8(v5, v6), *a1->i8);
  a2->i8[15] = v4.i8[15];
  v7 = *a1[2].i8;
  *v8.i8 = vext_s8(v3, *v7.i8, 7uLL);
  v5.i64[0] = vextq_s8(v7, v7, 1uLL).u64[0];
  v8.i64[1] = vextq_s8(v7, v7, 7uLL).u64[0];
  v5.i64[1] = vextq_s8(v7, vextq_s8(v7, v7, 8uLL), 9uLL).u64[0];
  result = vrhaddq_u8(vhaddq_u8(v8, v5), v7);
  a2[1] = result;
  a2[1].i8[15] = v7.i8[15];
  return result;
}

uint64_t sub_27745664C(unsigned int a1, __n128 *a2, uint64_t a3, double *a4, __n128 a5, __n128 a6, __n128 a7)
{
  v94 = *MEMORY[0x277D85DE8];
  v9 = byte_27750DFFA[a1];
  if (a1 >= 0x12)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v17 = a2 + 8;
      v10 = 15;
      v11 = 14;
      v12 = 13;
      v13 = 12;
      v14 = 11;
      v15 = 10;
      v16 = 9;
      goto LABEL_6;
    }

    if (v9 != -1)
    {
      v27 = word_27750E120[a1 - 11];
      v28 = v9 + 32;
      v29 = v27 * (v9 + 1) + 128;
      do
      {
        v82.n128_u16[v28++] = a2[-1].n128_u16[(v29 >> 8) + 7];
        v29 += v27;
      }

      while (v28 != 31);
      a7 = v82;
      a6 = v83;
      a5 = v84;
    }

    v85.n128_u16[7] = a2[-1].n128_u16[7];
    v86 = a7;
    v87 = a6;
    v88 = a5;
    v89 = v85;
    v30 = a2[8];
    v31 = a2[9];
    v32 = a2[10];
    v33 = a2[11];
  }

  else
  {
    if ((v9 & 0x80000000) == 0)
    {
      v10 = 7;
      v11 = 6;
      v12 = 5;
      v13 = 4;
      v14 = 3;
      v15 = 2;
      v16 = 1;
      v17 = a2;
LABEL_6:
      v18 = a2[v14];
      v19 = a2[v15];
      v20 = a2[v16];
      v86 = *v17;
      v87 = v20;
      v88 = v19;
      v89 = v18;
      v21 = a2[v12];
      v22 = a2[v11];
      v23 = a2[v10];
      v90 = a2[v13];
      v91 = v21;
      v92 = v22;
      v93 = v23;
      v82.n128_u64[0] = 4 * a3;
      v82.n128_u64[1] = 8;
      goto LABEL_18;
    }

    if (v9 != -1)
    {
      v24 = word_27750E120[a1 - 11];
      v25 = v9 + 32;
      v26 = v24 * (v9 + 1) + 128;
      do
      {
        v82.n128_u16[v25++] = a2[7].n128_u16[(v26 >> 8) + 7];
        v26 += v24;
      }

      while (v25 != 31);
      a7 = v82;
      a6 = v83;
      a5 = v84;
    }

    v85.n128_u16[7] = a2[-1].n128_u16[7];
    v86 = a7;
    v87 = a6;
    v88 = a5;
    v89 = v85;
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[3];
  }

  v90 = v30;
  v91 = v31;
  v92 = v32;
  v93 = v33;
  v82.n128_u64[0] = 4 * a3;
  v82.n128_u64[1] = 8;
  if ((v9 & 0x80000000) == 0)
  {
LABEL_18:
    v34 = v82.n128_u64[a1 > 0x11];
    v35 = v82.n128_u64[a1 < 0x12] - 7 * v34;
    v36 = 8;
    v37 = v9;
    do
    {
      v38 = v37 & 0x7F;
      v39 = &v86.n128_u64[v37 >> 7];
      v40 = *v39;
      v41 = v39[1];
      v43 = v39[2];
      v42 = v39[3];
      v45 = v39[4];
      v44 = v39[5];
      v47 = v39[6];
      v46 = v39[7];
      v48 = v39[8];
      if (v38 >= 0x40)
      {
        v40 = vext_s8(v40, v41, 4uLL);
        v41 = vext_s8(v41, v43, 4uLL);
        v43 = vext_s8(v43, v42, 4uLL);
        v42 = vext_s8(v42, v45, 4uLL);
        v45 = vext_s8(v45, v44, 4uLL);
        v44 = vext_s8(v44, v47, 4uLL);
        v47 = vext_s8(v47, v46, 4uLL);
        v46 = vext_s8(v46, v48, 4uLL);
        v48 = vext_s8(v48, v39[9], 4uLL);
        v38 = (v38 - 64);
      }

      if (v38 >= 0x20)
      {
        v40 = vext_s8(v40, v41, 2uLL);
        v41 = vext_s8(v41, v43, 2uLL);
        v43 = vext_s8(v43, v42, 2uLL);
        v42 = vext_s8(v42, v45, 2uLL);
        v45 = vext_s8(v45, v44, 2uLL);
        v44 = vext_s8(v44, v47, 2uLL);
        v47 = vext_s8(v47, v46, 2uLL);
        v46 = vext_s8(v46, v48, 2uLL);
        v48 = vext_s8(v48, v39[9], 2uLL);
        v38 = (v38 - 32);
      }

      v49 = a1 < 0x12;
      sub_277456E3C(v38, v9, v49, a3, a4, v40, v41);
      v50 = (a4 + v34);
      sub_277456E3C(v38, v9, v49, a3, v50, v41, v43);
      v51 = (v50 + v34);
      sub_277456E3C(v38, v9, v49, a3, v51, v43, v42);
      v52 = (v51 + v34);
      sub_277456E3C(v38, v9, v49, a3, v52, v42, v45);
      v53 = (v52 + v34);
      sub_277456E3C(v38, v9, v49, a3, v53, v45, v44);
      v54 = (v53 + v34);
      sub_277456E3C(v38, v9, v49, a3, v54, v44, v47);
      v55 = (v54 + v34);
      sub_277456E3C(v38, v9, v49, a3, v55, v47, v46);
      v56 = (v55 + v34);
      result = sub_277456E3C(v38, v9, v49, a3, v56, v46, v48);
      v37 += 4 * v9;
      a4 = (v56 + v35);
      --v36;
    }

    while (v36);
    return result;
  }

  v58 = v82.n128_u64[a1 > 0x11];
  v59 = v82.n128_u64[a1 < 0x12] - 7 * v58;
  v60 = 8;
  v61 = v9;
  do
  {
    v62 = &v89.n128_i8[8 * (v61 >> 7) + 8];
    v64 = v62[8];
    v63 = v62[9];
    v65 = v61 | 0xFFFFFF80;
    v67 = v62[6];
    v66 = v62[7];
    v69 = v62[4];
    v68 = v62[5];
    v71 = v62[2];
    v70 = v62[3];
    v72 = v62[1];
    if (v65 <= 0xFFFFFFBF)
    {
      v63 = vext_s8(v64, v63, 4uLL);
      v64 = vext_s8(v66, v64, 4uLL);
      v66 = vext_s8(v67, v66, 4uLL);
      v67 = vext_s8(v68, v67, 4uLL);
      v68 = vext_s8(v69, v68, 4uLL);
      v69 = vext_s8(v70, v69, 4uLL);
      v70 = vext_s8(v71, v70, 4uLL);
      v71 = vext_s8(v72, v71, 4uLL);
      v72 = vext_s8(*v62, v72, 4uLL);
      v65 = (v65 + 64);
    }

    if (v65 <= 0xFFFFFFDF)
    {
      v63 = vext_s8(v64, v63, 6uLL);
      v64 = vext_s8(v66, v64, 6uLL);
      v66 = vext_s8(v67, v66, 6uLL);
      v67 = vext_s8(v68, v67, 6uLL);
      v68 = vext_s8(v69, v68, 6uLL);
      v69 = vext_s8(v70, v69, 6uLL);
      v70 = vext_s8(v71, v70, 6uLL);
      v71 = vext_s8(v72, v71, 6uLL);
      v72 = vext_s8(*v62, v72, 6uLL);
      v65 = (v65 + 32);
    }

    v73 = a1 < 0x12;
    sub_277456CBC(v65, v9, v73, a3, a4, v72, v71);
    v74 = (a4 + v58);
    sub_277456CBC(v65, v9, v73, a3, v74, v71, v70);
    v75 = (v74 + v58);
    sub_277456CBC(v65, v9, v73, a3, v75, v70, v69);
    v76 = (v75 + v58);
    sub_277456CBC(v65, v9, v73, a3, v76, v69, v68);
    v77 = (v76 + v58);
    sub_277456CBC(v65, v9, v73, a3, v77, v68, v67);
    v78 = (v77 + v58);
    sub_277456CBC(v65, v9, v73, a3, v78, v67, v66);
    v79 = (v78 + v58);
    sub_277456CBC(v65, v9, v73, a3, v79, v66, v64);
    v80 = (v79 + v58);
    result = sub_277456CBC(v65, v9, v73, a3, v80, v64, v63);
    v61 += 4 * v9;
    a4 = (v80 + v59);
    --v60;
  }

  while (v60);
  return result;
}

uint64_t sub_277456CBC(uint64_t result, int a2, int a3, uint64_t a4, double *a5, int8x8_t a6, int8x8_t a7)
{
  v27[5] = *MEMORY[0x277D85DE8];
  v27[0] = a7;
  v27[1] = vext_s8(a6, a7, 6uLL);
  v27[2] = vext_s8(a6, a7, 4uLL);
  v27[3] = vext_s8(a6, a7, 2uLL);
  v27[4] = a6;
  v7 = result >> 5;
  if (result >> 5 < 0)
  {
    v7 = -v7;
  }

  v8 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v27[v7 - 1], vdup_n_s8(result & 0x1F)), v27[v7], vdup_n_s8(32 - (result & 0x1F))), 5uLL));
  v9 = a2 + result;
  v10 = (a2 + result) >> 5;
  if (v10 < 0)
  {
    v10 = -v10;
  }

  v11 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v27[v10 - 1], vdup_n_s8(v9 & 0x1F)), v27[v10], vdup_n_s8(32 - (v9 & 0x1Fu))), 5uLL));
  v12 = v9 + a2;
  v13 = v12 >> 5;
  if (v12 >> 5 < 0)
  {
    v13 = -v13;
  }

  v14 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v27[v13 - 1], vdup_n_s8(v12 & 0x1F)), v27[v13], vdup_n_s8(32 - (v12 & 0x1Fu))), 5uLL));
  v15 = v12 + a2;
  v16 = v15 >> 5;
  if (v15 >> 5 < 0)
  {
    v16 = -v16;
  }

  v17 = COERCE_DOUBLE(vrshrn_n_s16(vmlal_u8(vmull_u8(v27[v16 - 1], vdup_n_s8(v15 & 0x1F)), v27[v16], vdup_n_s8(32 - (v15 & 0x1Fu))), 5uLL));
  v18 = vtrn1_s16(*&v8, *&v11);
  v19 = vtrn2_s16(*&v8, *&v11);
  v20 = vtrn1_s16(*&v14, *&v17);
  v21 = vtrn2_s16(*&v14, *&v17);
  v22 = COERCE_DOUBLE(vzip1_s32(v18, v20));
  v23 = COERCE_DOUBLE(vzip2_s32(v18, v20));
  v24 = COERCE_DOUBLE(vzip1_s32(v19, v21));
  v25 = COERCE_DOUBLE(vzip2_s32(v19, v21));
  if (a3)
  {
    v17 = v25;
    v14 = v23;
    v11 = v24;
    v8 = v22;
  }

  *a5 = v8;
  *(a5 + a4) = v11;
  v26 = (a5 + a4 + a4);
  *v26 = v14;
  *(v26 + a4) = v17;
  return result;
}

uint64_t sub_277456E3C(uint64_t result, int a2, int a3, uint64_t a4, double *a5, int8x8_t a6, int8x8_t a7)
{
  v33[5] = *MEMORY[0x277D85DE8];
  v33[0] = a6;
  v33[1] = vext_s8(a6, a7, 2uLL);
  v33[2] = vext_s8(a6, a7, 4uLL);
  v33[3] = vext_s8(a6, a7, 6uLL);
  v33[4] = a7;
  v7 = &v33[result >> 5];
  v8 = vmull_u8(*v7, vdup_n_s8(32 - (result & 0x1F)));
  if ((result & 0x1F) != 0)
  {
    v8 = vmlal_u8(v8, v7[1], vdup_n_s8(result & 0x1F));
  }

  v9 = a2 + result;
  v10 = &v33[(a2 + result) >> 5];
  v11 = (a2 + result) & 0x1F;
  v12 = vmull_u8(*v10, vdup_n_s8(32 - v11));
  if (v11)
  {
    v12 = vmlal_u8(v12, v10[1], vdup_n_s8(v11));
  }

  v13 = v9 + a2;
  v14 = &v33[(v9 + a2) >> 5];
  v15 = (v9 + a2) & 0x1F;
  v16 = vmull_u8(*v14, vdup_n_s8(32 - v15));
  if (v15)
  {
    v16 = vmlal_u8(v16, v14[1], vdup_n_s8(v15));
  }

  v17 = COERCE_DOUBLE(vrshrn_n_s16(v8, 5uLL));
  v18 = COERCE_DOUBLE(vrshrn_n_s16(v12, 5uLL));
  v19 = COERCE_DOUBLE(vrshrn_n_s16(v16, 5uLL));
  v20 = v13 + a2;
  v21 = &v33[(v13 + a2) >> 5];
  v22 = vmull_u8(*v21, vdup_n_s8(32 - (v20 & 0x1Fu)));
  if ((v20 & 0x1F) != 0)
  {
    v22 = vmlal_u8(v22, v21[1], vdup_n_s8(v20 & 0x1F));
  }

  v23 = COERCE_DOUBLE(vrshrn_n_s16(v22, 5uLL));
  v24 = vtrn1_s16(*&v17, *&v18);
  v25 = vtrn2_s16(*&v17, *&v18);
  v26 = vtrn1_s16(*&v19, *&v23);
  v27 = vtrn2_s16(*&v19, *&v23);
  v28 = COERCE_DOUBLE(vzip1_s32(v24, v26));
  v29 = COERCE_DOUBLE(vzip2_s32(v24, v26));
  v30 = COERCE_DOUBLE(vzip1_s32(v25, v27));
  v31 = COERCE_DOUBLE(vzip2_s32(v25, v27));
  if (a3)
  {
    v23 = v31;
    v19 = v29;
    v18 = v30;
    v17 = v28;
  }

  *a5 = v17;
  *(a5 + a4) = v18;
  v32 = (a5 + a4 + a4);
  *v32 = v19;
  *(v32 + a4) = v23;
  return result;
}

uint64_t sub_277456FC4(unsigned int a1, int8x16x2_t *a2, uint64_t a3, double *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = byte_27750DFFA[a1];
  v7 = v6;
  if (a1 >= 0x12)
  {
    if ((v6 & 0x80) == 0)
    {
      val = a2[2].val;
      v8 = 7;
      v9 = 3;
      v10 = 5;
LABEL_6:
      v12 = a2->val[v8];
      v13 = a2[v9].val[0];
      v14 = a2->val[v10];
      v52 = *val;
      v53 = v14;
      v50 = 4 * a3;
      v51 = 8;
      v15 = *(&v50 + (a1 > 0x11));
      v16 = *(&v50 + (a1 < 0x12));
      v54 = v13;
      v55 = v12;
      v17 = 4;
      v18 = v6;
      do
      {
        v19 = v18 & 0x7F;
        v20 = &v52 + (v18 >> 7);
        v21 = *v20;
        v22 = v20[1];
        v24 = v20[2];
        v23 = v20[3];
        v25 = v20[4];
        if (v19 >= 0x40)
        {
          v21 = vext_s8(v21, v22, 4uLL);
          v22 = vext_s8(v22, v24, 4uLL);
          v24 = vext_s8(v24, v23, 4uLL);
          v23 = vext_s8(v23, v25, 4uLL);
          v25 = vext_s8(v25, v20[5], 4uLL);
          v19 = (v19 - 64);
        }

        v26 = a1 < 0x12;
        sub_277456E3C(v19, v6, v26, a3, a4, v21, v22);
        sub_277456E3C(v19, v6, v26, a3, (a4 + v15), v22, v24);
        sub_277456E3C(v19, v6, v26, a3, (a4 + 2 * v15), v24, v23);
        result = sub_277456E3C(v19, v6, v26, a3, (a4 + 3 * v15), v23, v25);
        a4 = (a4 + v16);
        v18 += 4 * v6;
        --v17;
      }

      while (v17);
      return result;
    }

    v33 = (&unk_27750E140 + 32 * a1 - 576);
    v34 = vqtbl2q_s8(*a2, v33[1]);
    v52 = vqtbl2q_s8(*a2, *v33);
    v35 = vextq_s8(v34, v34, 8uLL);
    v35.i16[3] = a2[-1].val[1].i16[7];
    v53.i64[0] = v34.i64[0];
    v53.i64[1] = v35.i64[0];
    v32 = a2 + 2;
    v31 = 5;
  }

  else
  {
    if ((v6 & 0x80000000) == 0)
    {
      v8 = 3;
      v9 = 1;
      v10 = 1;
      val = a2;
      goto LABEL_6;
    }

    v28 = (&unk_27750E140 + 32 * (18 - a1));
    v57 = a2[2];
    v29 = vqtbl2q_s8(v57, v28[1]);
    v52 = vqtbl2q_s8(v57, *v28);
    v30 = vextq_s8(v29, v29, 8uLL);
    v30.i16[3] = a2[-1].val[1].i16[7];
    v53.i64[0] = v29.i64[0];
    v53.i64[1] = v30.i64[0];
    v31 = 1;
    v32 = a2;
  }

  v36 = a2->val[v31];
  v54 = v32->val[0];
  v55 = v36;
  v50 = 4 * a3;
  v51 = 8;
  v37 = *(&v50 + (a1 > 0x11));
  v38 = *(&v50 + (a1 < 0x12));
  v39 = 4;
  v40 = v7;
  do
  {
    v41 = v40 | 0xFFFFFF80;
    v42 = &v53.u64[(v40 >> 7) + 1];
    v44 = v42[4];
    v43 = v42[5];
    v46 = v42[2];
    v45 = v42[3];
    v47 = v42[1];
    if (v41 <= 0xFFFFFFBF)
    {
      v43 = vext_s8(v44, v43, 4uLL);
      v44 = vext_s8(v45, v44, 4uLL);
      v45 = vext_s8(v46, v45, 4uLL);
      v46 = vext_s8(v47, v46, 4uLL);
      v47 = vext_s8(*v42, v47, 4uLL);
      v41 = (v41 + 64);
    }

    v48 = a1 < 0x12;
    sub_277456CBC(v41, v7, v48, a3, a4, v47, v46);
    sub_277456CBC(v41, v7, v48, a3, (a4 + v37), v46, v45);
    sub_277456CBC(v41, v7, v48, a3, (a4 + 2 * v37), v45, v44);
    result = sub_277456CBC(v41, v7, v48, a3, (a4 + 3 * v37), v44, v43);
    a4 = (a4 + v38);
    v40 += 4 * v7;
    --v39;
  }

  while (v39);
  return result;
}

uint64_t sub_277457384(unsigned int a1, int8x16_t *a2, uint64_t a3, double *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = byte_27750DFFA[a1];
  if (a1 >= 0x12)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v9 = a2 + 2;
      v8 = 3;
      goto LABEL_6;
    }

    v24 = vqtbl1q_s8(*a2, xmmword_27750E140[2 * a1 - 35]);
    v23 = vextq_s8(v24, v24, 8uLL);
    v23.i16[3] = a2[-1].i16[7];
    v41.i64[0] = v24.i64[0];
    v41.i64[1] = v23.i64[0];
    a2 += 2;
  }

  else
  {
    if ((v7 & 0x80000000) == 0)
    {
      v8 = 1;
      v9 = a2;
LABEL_6:
      v10 = *v9;
      v11 = a1 > 0x11;
      v12 = a1 < 0x12;
      v35 = vextq_s8(v10, v10, 8uLL).u64[0];
      v37 = a2[v8];
      v41 = *v9;
      v42 = v37;
      v39 = 4 * a3;
      v40 = 8;
      sub_277456E3C(v7, v7, v12, a3, a4, *v10.i8, v35);
      v13 = *(&v39 + v11);
      sub_277456E3C(v7, v7, a1 < 0x12, a3, (a4 + v13), v35, *v37.i8);
      v14 = (a4 + *(&v39 + v12));
      v15 = (5 * v7) & 0x7F;
      v16 = &v41.i8[((5 * v7) >> 4) & 0x78];
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      if (v15 >= 0x40)
      {
        v17 = vext_s8(v17, v18, 4uLL);
        v18 = vext_s8(v18, v19, 4uLL);
        v19 = vext_s8(v19, v16[3], 4uLL);
        v15 = (v15 - 64);
      }

      v20 = a1 < 0x12;
      sub_277456E3C(v15, v7, v20, a3, v14, v17, v18);

      return sub_277456E3C(v15, v7, v20, a3, (v14 + v13), v18, v19);
    }

    v22 = vqtbl1q_s8(a2[2], xmmword_27750E140[2 * (18 - a1) + 1]);
    v23 = vextq_s8(v22, v22, 8uLL);
    v23.i16[3] = a2[-1].i16[7];
    v41.i64[0] = v22.i64[0];
    v41.i64[1] = v23.i64[0];
  }

  v25 = a1 > 0x11;
  v26 = a1 < 0x12;
  v42 = *a2;
  v36 = *v42.i8;
  v38 = vextq_s8(v42, v42, 8uLL).u64[0];
  v39 = 4 * a3;
  v40 = 8;
  v27 = &v41 + ((5 * v7) >> 7);
  sub_277456CBC(v7, v7, v26, a3, a4, *v23.i8, *v42.i8);
  v28 = *(&v39 + v25);
  sub_277456CBC(v7, v7, a1 < 0x12, a3, (a4 + v28), v36, v38);
  v29 = (a4 + *(&v39 + v26));
  v30 = (5 * v7) | 0xFFFFFF80;
  v32 = v27[3];
  v31 = v27[4];
  v33 = v27[2];
  if (v30 <= 0xFFFFFFBF)
  {
    v31 = vext_s8(v32, v31, 4uLL);
    v32 = vext_s8(v33, v32, 4uLL);
    v33 = vext_s8(v27[1], v33, 4uLL);
    v30 = (v30 + 64);
  }

  v34 = a1 < 0x12;
  sub_277456CBC(v30, v7, v34, a3, v29, v33, v32);

  return sub_277456CBC(v30, v7, v34, a3, (v29 + v28), v32, v31);
}

uint64_t sub_2774576D4(unsigned int a1, int8x8_t *a2, uint64_t a3, double *a4, int8x16_t a5)
{
  v6 = byte_27750DFFA[a1];
  if (a1 >= 0x12)
  {
    if ((v6 & 0x80000000) != 0)
    {
      *a5.i8 = *a2;
      *a5.i8 = vqtbl1_s8(a5, *(&xmmword_27750E140[2 * a1 - 34] - 8));
      a5.i16[3] = a2[-1].i16[3];
      a2 += 2;
      return sub_277456CBC(v6, v6, a1 < 0x12, a3, a4, *a5.i8, *a2);
    }

    a2 += 2;
    return sub_277456E3C(v6, v6, a1 < 0x12, a3, a4, *a2, *&vextq_s8(*a2->i8, *a2->i8, 8uLL));
  }

  if ((v6 & 0x80000000) == 0)
  {
    return sub_277456E3C(v6, v6, a1 < 0x12, a3, a4, *a2, *&vextq_s8(*a2->i8, *a2->i8, 8uLL));
  }

  *a5.i8 = a2[2];
  *a5.i8 = vqtbl1_s8(a5, xmmword_27750E140[2 * (18 - a1) + 1].u64[1]);
  a5.i16[3] = a2[-1].i16[3];
  return sub_277456CBC(v6, v6, a1 < 0x12, a3, a4, *a5.i8, *a2);
}

void sub_27745777C(uint64_t a1, const char *a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = a2;
  v11 = vld2q_s8(v4);
  v4 += 32;
  v12 = vld2q_s8(v4);
  v5 = a2 + 128;
  v13 = vld2q_s8(v5);
  v6 = a2 + 160;
  v14 = vld2q_s8(v6);
  v7 = vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*v11.val[0].i8), v11.val[0]), v12.val[0]), *v12.val[0].i8), v13.val[0]), *v13.val[0].i8), v14.val[0]), *v14.val[0].i8);
  v11.val[0] = vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*v11.val[1].i8), v11.val[1]), v12.val[1]), *v12.val[1].i8), v13.val[1]), *v13.val[1].i8), v14.val[1]), *v14.val[1].i8);
  *v11.val[0].i8 = vpadd_s16(vadd_s16(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), vadd_s16(*v11.val[0].i8, *&vextq_s8(v11.val[0], v11.val[0], 8uLL)));
  *v11.val[1].i8 = vpadd_s16(*v11.val[0].i8, *v11.val[0].i8);
  v11.val[1].i64[1] = v11.val[1].i64[0];
  v8 = vqrshrn_high_n_u16(vqrshrn_n_u16(v11.val[1], 6uLL), v11.val[1], 6uLL);
  v9 = a4 + 2;
  v10 = 32;
  do
  {
    v9[-2] = v8;
    v9[-1] = v8;
    *v9 = v8;
    v9[1] = v8;
    v9 = (v9 + a3);
    --v10;
  }

  while (v10);
}

void sub_27745781C(uint64_t a1, const char *a2, uint64_t a3, uint8x16_t *a4)
{
  v4 = a2 + 64;
  v9 = vld2q_s8(a2);
  v10 = vld2q_s8(v4);
  v5 = vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*v9.val[0].i8), v9.val[0]), v10.val[0]), *v10.val[0].i8);
  v9.val[0] = vaddw_u8(vaddw_high_u8(vaddw_high_u8(vmovl_u8(*v9.val[1].i8), v9.val[1]), v10.val[1]), *v10.val[1].i8);
  *v9.val[0].i8 = vpadd_s16(vadd_s16(*v5.i8, *&vextq_s8(v5, v5, 8uLL)), vadd_s16(*v9.val[0].i8, *&vextq_s8(v9.val[0], v9.val[0], 8uLL)));
  *v9.val[1].i8 = vpadd_s16(*v9.val[0].i8, *v9.val[0].i8);
  v9.val[1].i64[1] = v9.val[1].i64[0];
  v6 = vqrshrn_high_n_u16(vqrshrn_n_u16(v9.val[1], 5uLL), v9.val[1], 5uLL);
  v7 = a4 + 1;
  v8 = 16;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 = (v7 + a3);
    --v8;
  }

  while (v8);
}

void sub_277457888(uint64_t a1, const char *a2, uint64_t a3, uint8x16_t *a4)
{
  v8 = vld2_s8(a2);
  v4 = a2 + 32;
  v9 = vld2_s8(v4);
  v8.val[0] = vpadd_s16(vpadal_u8(vpaddl_u8(v9.val[0]), v8.val[0]), vpadal_u8(vpaddl_u8(v9.val[1]), v8.val[1]));
  v8.val[1] = vpadd_s16(v8.val[0], v8.val[0]);
  v5 = v8.val[1];
  v6 = vqrshrn_high_n_u16(vqrshrn_n_u16(*(&v8 + 8), 4uLL), *(&v8 + 8), 4uLL);
  v7 = 8;
  do
  {
    *a4 = v6;
    a4 = (a4 + a3);
    --v7;
  }

  while (v7);
}